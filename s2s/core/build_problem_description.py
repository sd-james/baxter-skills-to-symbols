import itertools
from collections import defaultdict
from typing import List, Iterable, Tuple, Dict, Set
from warnings import warn

import pandas as pd
import numpy as np

from s2s.core.build_pddl import _mask_to_factors, _masks_overlap, _probability_in_precondition
from s2s.core.feature_selection import _compute_object_precondition_mask
from s2s.core.knowledge_base import KnowledgeBase
from s2s.core.learn_operators import _resample
from s2s.describe import describe_object
from s2s.env.s2s_env import S2SEnv
from s2s.estimators.kde import KernelDensityEstimator
from s2s.estimators.svc import SupportVectorClassifier
from s2s.pddl.pddl import Proposition, TypedPredicate, IdentityFluent
from s2s.pddl.problem_description import PDDLProblem
# from s2s.portable.problem_symbols import _ProblemProposition
from s2s.utils import flatten, show, pd2np, get_start_state, load_start_state_non_spatial, load_start_state_spatial


def find_match(state, type, predicates):

    for predicate in predicates:

        if predicate.mask != [type]:
            continue
        if np.allclose(np.rint(predicate.sample(1)[0].astype(float)), state):
            return predicate
    raise ValueError("Can't find starting predicate!")


def build_problem_description(env: S2SEnv, predicates: Iterable[Proposition],
                              factors: List[List[int]],
                              transition_data: pd.DataFrame, n_objects,
                              verbose=False, **kwargs) -> PDDLProblem:
    """
    Build a representation of the PDDL problem
    :param env: the domain
    :param predicates: the list of typed predicates
    :param n_objects: the number of objects in the domain
    :param kb: the knowledge base
    :param verbose: the verbosity level
    :return: the PDDL representation
    """
    problem_name = kwargs.get('problem_name', 'p1')
    pddl_problem = PDDLProblem(problem_name, env.name)

    # start_state = np.squeeze(get_start_state(transition_data))

    if n_objects == 77:
        start_state = np.squeeze(load_start_state_non_spatial())
    else:
        start_state = np.squeeze(load_start_state_spatial())

    object_types = [x[-1] for x in start_state]
    object_names = [describe_object(i, object_types[i]) for i in range(n_objects)]


    # Add objects to problem description
    show("Adding objects...", verbose)
    for i, object in enumerate(start_state):
        pddl_problem.add_object(i, object_names[i], object_types[i])


    # for i, (name, type) in enumerate(zip(object_names, object_types)):
    #     pddl_problem.add_object(i, name, type)
    #     # Add identities
    #     pddl_problem.add_start_proposition(IdentityFluent(object_id=i, name=name, is_parameter=False))

    # Add initial predicates
    show("Adding start predicates...", verbose)
    pddl_problem.add_start_proposition(Proposition.not_failed())

    # TODO: hack - the are independent factors, then one large one! Deal with large separately by ignoring!
    for i, object in enumerate(start_state):
        if [object[-1]] in factors:
            # a single one!
            predicate = find_match(object, object[-1], predicates.start_predicates)
            pddl_problem.add_start_proposition(predicate(object_names[i]))


    # # TODO: making assumptions: the first predicates are the initial state, since that's how the PDDL was built.
    # # TODO: Should make more general in future
    # # Add initial object states
    # temp = set(object_types)
    # for predicate in predicates:
    #
    #     if not isinstance(predicate, TypedPredicate):
    #         # a regular proposition (e.g. notfailed or problem-specific). Ignore!
    #         continue
    #
    #     if len(predicate.types) > 1:
    #         raise NotImplementedError("Haven't accounted for factors/predicates over joint objects")
    #     for type in predicate.types:
    #         if type in temp:
    #             for object in type_to_object[type]:
    #                 pddl_problem.add_start_proposition(predicate(object_names[object]))
    #             temp.remove(type)
    #     if len(temp) == 0:
    #         break
    # # Add problem-specific proposition
    # for predicate in predicates:
    #     # TODO: again, making assumption that first proposition is the start one!
    #     if isinstance(predicate, _ProblemProposition):
    #         pddl_problem.add_start_proposition(predicate)
    #         break

    show("Adding goal predicates...", verbose)
    pddl_problem.add_goal_proposition(Proposition.not_failed())

    goals = find_goal_symbols(factors, predicates, transition_data,
                                                              verbose=True,
                                                              max_precondition_samples=2000)
    for index, predicate in goals:
        pddl_problem.add_goal_proposition(predicate(object_names[index]))

    # find the predicates that describe the goal condition!
    # goal_prob, goal_symbols, goal_factors = find_goal_symbols(factors, predicates, transition_data,
    #                                                           verbose=True,
    #                                                           max_precondition_samples=2000)
    #
    # for objects, symbol in zip(goal_factors, goal_symbols):
    #     types = [kb.get_type(env.task_id, i)[1] for i in objects]
    #     names = list(np.array(object_names)[objects])
    #     predicate = TypedPredicate(symbol.name, *types)(*names)  # ground the predicate
    #     pddl_problem.add_goal_proposition(predicate)
    # # TODO: not yet implemented the problem-specific goal condition. Not necessary in this case

    return pddl_problem


def _learn_goal_precondition(mask: List[int], positive_samples: np.ndarray, negative_samples: np.ndarray, verbose=False,
                             **kwargs):
    """
    Learn a precondition for when the task succeeds
    :param mask: the mask for the transition data when the goal is reached
    :param positive_samples: positive instances of the task being solved
    :param negative_samples: states where the task is not solved
    :param verbose: the verbosity level
    :return: a goal classifier
    """
    if len(negative_samples) == 0 or len(positive_samples) == 0:
        raise ValueError("The number of positive and negative samples for the precondition is {} and {}".format(
            len(positive_samples), len(negative_samples)))

        # the max number of samples to use for computing the mask
    max_precondition_samples = kwargs.get('max_precondition_samples', np.inf)
    # resample if too much data
    positive_samples, negative_samples = _resample(positive_samples, negative_samples, max_precondition_samples)
    labels = np.array([1] * len(positive_samples) + [0] * len(negative_samples))

    precondition_mask = _compute_object_precondition_mask(positive_samples, negative_samples, labels, mask[0],
                                                          mask, verbose=verbose, **kwargs)
    svm = SupportVectorClassifier(precondition_mask)

    if kwargs.get('generate_positive_samples', True):
        # generate extra positive samples from a density estimator!
        pos_sym = KernelDensityEstimator(precondition_mask)
        pos_sym.fit(positive_samples, verbose=verbose, **kwargs)  # compute the effect

        pos = flatten(pos_sym.sample(len(negative_samples)))
        neg = flatten(negative_samples, mask=precondition_mask)
        examples = np.vstack((pos, neg))
        labels = np.array([1] * len(pos) + [0] * len(neg))
        svm.fit(examples, labels, verbose=verbose, use_mask=False, **kwargs)
    else:
        data = np.vstack((positive_samples, negative_samples))
        svm.fit(data, labels, verbose=verbose, **kwargs)
    return svm

def find_goal_symbols(factors: List[List[int]], vocabulary: Iterable[Proposition],
                      transition_data: pd.DataFrame,
                      verbose=False, **kwargs) -> Tuple[float, List[Proposition], List[List[int]]]:
    """
    Find the set of symbols that best described the goal condition. In teh data, the goal being achieved is specified
    by the done flag
    :param type_to_object: a mapping from type to object
    :param factors: the domain factorisation
    :param vocabulary: the list of symbols
    :param transition_data: the transition data
    :param verbose: the verbosity level
    :return the probability of the symbols modelling the goal, and the list of symbols themselves
    """
    show("Searching for goal symbols", verbose)
    # the goal states
    column = 'next_state'

    positive_instances = transition_data.loc[transition_data['done'] == True]
    # get the masks. If there's more than one, get the longest one!
    mask = list(max({tuple(x) for x in positive_instances['mask']}, key=len))
    positive_samples = pd2np(positive_instances[column], make_rectangle=True)
    negative_samples = pd2np(transition_data.loc[transition_data['done'] == False][column],
                             make_rectangle=True)

    # fit a classifier to the data
    goal_types = [33, 44]
    goals = list()
    for type in goal_types:
        for i, object in enumerate(positive_samples[0]):
            if object[-1] == type:
                # from describe import describe_data
                # describe_data(np.expand_dims(object, axis=0))
                predicate = find_match(object, object[-1], vocabulary)
                goals.append((i, predicate))

    return goals


    # svm = _learn_goal_precondition(mask, positive_samples, negative_samples, verbose=verbose, **kwargs)
    #
    # # Find the existing symbols that best match the goal precondition
    # show("Finding matching symbols", verbose)
    # precondition_factors = _mask_to_factors(svm.type_mask, factors)
    # candidates = list()
    # for factor in precondition_factors:
    #     candidates.append(_find_candidates(type_to_object, vocabulary, set(factor)))
    #
    # combinations = list(itertools.product(*candidates))
    # show("Searching through {} candidates...".format(len(combinations)), verbose)
    #
    # best_score = 0
    # best_candidates = None
    #
    # for count, candidates in enumerate(combinations):
    #     show("Checking candidate {}/{}".format(count, len(combinations)), verbose)
    #     if _masks_overlap(candidates):
    #         # This should never happen, but putting a check to make sure
    #         warn("Overlapping candidates in PDDL building!")
    #         continue
    #
    #     # probability of propositions matching classifier
    #     # ignore mask since all the candidates are necessarily correct. Will break if set to False
    #     precondition_prob = _probability_in_precondition(Proposition.conjoin(candidates), svm, ignore_mask=True)
    #     if precondition_prob > best_score:
    #         best_score = precondition_prob
    #         best_candidates = candidates
    #
    # if best_candidates is None:
    #     show("No goal predicates found!", verbose)
    #     return 0, [], precondition_factors
    #
    # show("Best candidates with probability {}: {}".format(best_score, ' '.join([str(x) for x in best_candidates])),
    #      verbose)
    # return best_score, list(best_candidates), precondition_factors


def _find_candidates(type_to_object: Dict[int, List[int]], predicates: Iterable[Proposition], factors: Set[int]) -> \
        List[Proposition]:
    # There's a mismatch here. The factors are over the original object indices, but the predicates are now
    # parameterised by types, and so their masks do not reflect the original objects. So find all potential matches
    # using teh typing information!
    candidates = list()
    for predicate in predicates:
        if not isinstance(predicate, TypedPredicate):
            # a regular proposition (e.g. notfailed or problem-specific). Ignore!
            continue
        type_mask = predicate.mask
        potential_objects = list()
        for type in type_mask:
            potential_objects.append(type_to_object[type])
        potential_masks = list(itertools.product(*potential_objects))
        for mask in potential_masks:
            if set(mask) == factors:
                candidates.append(predicate)
                break

    return candidates
