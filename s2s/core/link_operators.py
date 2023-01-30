"""
The functions here are responsible for taking the portable representations and augmenting with problem-specific
information to ensure they are sound for planning
"""
import warnings
from collections import defaultdict

from typing import List, Dict, Tuple

import pandas as pd

from gym_minecraft_objects.envs.multiview_env import View
from s2s.core.knowledge_base import KnowledgeBase
from s2s.core.learned_operator import LearnedOperator
from s2s.core.partitioned_option import PartitionedOption
from s2s.pddl.pddl import TypedPredicate, IdentityFluent
from s2s.pddl.typed_domain import TypedPDDLDomain
from s2s.pddl.typed_operator import TypedPDDLOperator
from s2s.portable.link import Link
from s2s.portable.problem_symbols import ProblemSymbols
from s2s.utils.utils import show, pd2np

import numpy as np


def _get_types(operators):
    types = set()
    for operator in operators:
        for predicate in operator.preconditions:
            if isinstance(predicate, TypedPredicate):
                for x in predicate.types:
                    types.add(x)
    return types


def _find_closest_match(task_id: int, kb: KnowledgeBase,
                        idx_to_schema: Dict[Tuple[int, int], List[TypedPDDLOperator]],
                        partitioned_option: PartitionedOption) -> List[TypedPDDLOperator]:
    """
    Find the PDDL operators that best model the given partitioned option, given that the original operator has been
    thrown away
        :param task_id: the task ID
    :param pddl: the PDDL domain
    :param kb: the knowledge base
    :param idx_to_schema: a mapping from each (option, partition) pair to the relevant PDDL operator(s)
    :param partitioned_option: the partitioned option
    :return: a list of PDDL operators which match the partitioned option
    """

    # let's get all the potential candidates, which are same option, but different partitions
    candidates = [x for (option, partition), x in idx_to_schema.items() if
                  partitioned_option.option == option and partitioned_option.partition != partition]

    # now lets get just the operators whose types line up
    types = {kb.get_type(task_id, x)[1] for x in partitioned_option.combined_mask()}

    matches = list()
    for candidate in candidates:
        # get the types from the candidate PDDL operators
        candidate_types = {x for operator in candidate for predicate in operator.preconditions if
                           isinstance(predicate, TypedPredicate) for x in predicate.types}
        # if they match, then they could be the ones we're looking for!
        if types == candidate_types:
            matches += candidate
    return matches


def _link_operator(task_id: int, kb: KnowledgeBase, problem_symbols: ProblemSymbols,
                   pddl_operators: List[TypedPDDLOperator],
                   partitioned_option: PartitionedOption, verbose=False, **kwargs):
    # TODO: this assumes we only ever have deterministic problem-space transitions.
    #  Will need to add more functionality to deal with stochasticity
    """
    Link the given operators with problem specific information from the partitioned option
    :param problem_symbols: the current list of problem-specific propositions. This list will be modified as more
    propositions are linked in
    :param pddl_operators: the PDDL operators to be linked
    :param partitioned_option: the partitioned option containing the problem-specific data
    :param verbose: the verbosity level
    """

    problem_partitions = partitioned_option.subpartition(verbose=verbose, **kwargs)
    show("Found {} problem clusters for option {}, partition {}".format(len(problem_partitions),
                                                                        partitioned_option.option,
                                                                        partitioned_option.partition), verbose)
    links = list()
    if len(problem_partitions) == 0:
        #  Then we need to ground the precondition only
        view = View.PROBLEM if partitioned_option.view == View.PROBLEM else View.OBJECT
        if view == View.PROBLEM:
            states = partitioned_option.problem_states
        else:
            states = partitioned_option.object_states
        links.append(Link(states, None, **kwargs))
    else:
        for subpartition in problem_partitions:
            init_states = subpartition.states  # initial states based on subpartition's view
            for prob, _, _, next_states, _ in subpartition.effects():
                links.append(Link(init_states, next_states, probability=prob, **kwargs))

    # we just linked start, end sets of states. Now add to operator
    for link in links:
        for start, end, prob in link:
            if prob < 1:
                raise NotImplemented(
                    "Have yet to implement code to handle the stochastic case when constructing the linked "
                    "PDDL operator")
            precondition_idx = problem_symbols.add(start)
            if end is None:
                effect_idx = -1
            else:
                effect_idx = problem_symbols.add(end)
            for operator in pddl_operators:
                effect = [problem_symbols[effect_idx]]
                precondition = [problem_symbols[precondition_idx]]
                mask = operator.get_grounding()
                for m in mask:
                    if kb.is_ambiguous(task_id, m):
                        # is ambiguous! Add precondition!
                        precondition.append(IdentityFluent(m))
                operator.link(precondition, effect)
            show("Added link {} -> {} for option {}, partition {}".format(precondition_idx, effect_idx,
                                                                          partitioned_option.option,
                                                                          partitioned_option.partition), verbose)


def link_pddl(task_id, domain: TypedPDDLDomain, kb: KnowledgeBase, operators: List[LearnedOperator],
              partitions: Dict[int, List[PartitionedOption]],
              verbose=False, **kwargs) -> Tuple[TypedPDDLDomain, ProblemSymbols]:
    """
    Link the PDDL operators by adding problem-specific information! The PDDL representation is modified in place, but
    also returned for convenience
    :param task_id: the task ID
    :param domain: the PDDL domain description
    :param kb: data structure that holds the type info, etc
    :param operators: the learned operators
    :param partitions: the option partition data
    :param verbose: the verbosity level
    :return: the problem-space symbols and a linked PDDL
    """
    show("Linking PDDDL...", verbose)

    # map each (option, partition) pair to the relevant PDDL operator(s)
    idx_to_schema = defaultdict(list)
    for operator in domain.operators:
        idx_to_schema[(operator.option, operator.partition)].append(operator)

    problem_symbols = ProblemSymbols()

    for option, partitioned_options in partitions.items():
        for partitioned_option in partitioned_options:
            if partitioned_option.option != option:
                raise ValueError("Partitioned option is in the wrong place! Expected {}, but got {}"
                                 .format(option, partitioned_option.option))

            # get the PDDL operators which model the given option and partition
            pddl_operators = idx_to_schema[partitioned_option.option, partitioned_option.partition]
            if len(pddl_operators) == 0:
                # none found! We must have chucked it out when we lifted the representation! Let's find the replacement
                pddl_operators = _find_closest_match(task_id, kb, idx_to_schema, partitioned_option)
                if len(pddl_operators) == 0:
                    warnings.warn("Unable to find matching PDDL operators for option {},"
                                  " partition {}".format(option,
                                                         partitioned_option.partition))

            show("Linking option {}, partition {}...".format(option, partitioned_option.partition), verbose)
            _link_operator(task_id, kb, problem_symbols, pddl_operators, partitioned_option, verbose=verbose,
                           **kwargs)

    show("Generated {} problem-specific propositions!".format(len(problem_symbols)), verbose)

    for proposition in problem_symbols:
        domain.add_predicate(proposition)

    return domain, problem_symbols


def find_closest_start_partition(problem_symbols: ProblemSymbols, transition_data: pd.DataFrame):
    initial_states = pd2np(transition_data.groupby('episode').nth(0)['state'])
    target = np.mean(initial_states, 0)

    closest = None
    distance = np.inf

    for proposition in problem_symbols:
        mean = np.mean(proposition.sample(100), axis=0)
        if np.linalg.norm(mean - target, np.inf) < distance:
            distance = np.linalg.norm(mean - target, np.inf)
            closest = proposition
    return closest
