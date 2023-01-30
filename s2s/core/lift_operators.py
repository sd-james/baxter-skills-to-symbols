import warnings

from typing import Dict, Tuple, List, Callable, Iterable, Set, Union

from s2s.core.knowledge_base import KnowledgeBase
from s2s.core.object_types import EffectProfile
from s2s.pddl.domain import PDDLDomain
from s2s.pddl.pddl import TypedPredicate, Proposition
from s2s.pddl.pddl_operator import PDDLOperator
from s2s.pddl.typed_domain import TypedPDDLDomain
from s2s.pddl.typed_operator import TypedPDDLOperator
import numpy as np

from s2s.utils import show


def _distance(X: Proposition, Y: Proposition) -> float:
    X = X.estimator
    Y = Y.estimator
    if X is Y:
        return 0

    if (X is None) != (Y is None):
        return np.inf

    x = X.sample(100)
    log_p_x = X.score_samples(x)
    log_q_x = Y.score_samples(x)
    return log_p_x.mean() - log_q_x.mean()


def _find_replacer(proposition: Proposition, candidates: Dict[Proposition, TypedPredicate],
                   type_getter: Callable[[int], int]) -> TypedPredicate:
    """
    Find from the list of candidates which proposition was used to replace the given one
    """
    dist = np.inf
    closest = None
    for other, predicate in candidates.items():
        types = [type_getter(i) for i in proposition.mask]
        if np.array_equal(types, other.mask):
            d = _distance(proposition, other)
            if d < dist:
                dist = d
                closest = predicate
    return closest


def _lift_propositions(task_id: int, propositions: Iterable[Proposition], kb: KnowledgeBase, verbose=False) -> Tuple[
    List[TypedPredicate], Dict[Proposition, TypedPredicate], Set[Proposition]]:
    """
    Convert the propositions to typed predicates
    :param task_id: the task ID
    :param propositions: the original propositions
    :param kb: a knowledge base we can use to get the object types for the current task
    :param verbose: the verbosity level
    :return: the new predicates, a mapping from the propositions to predicates, and the set of dropped propositions
    """
    predicates = list()
    kept = dict()
    dropped = set()
    for proposition in propositions:
        show('Evaluating proposition {}'.format(proposition), verbose)
        temp = [kb.get_type(task_id, i, warn=True) for i in proposition.mask]  # check if objects are base types
        bases = [x[0] for x in temp]
        types = [x[1] for x in temp]
        show('Evaluating proposition {} with type(s) {}'.format(proposition, types), verbose)
        if -1 in types:
            raise ValueError("No type found for object {}".format(proposition.mask[types.index(-1)]))
        if False not in bases:  # an original predicate. Keep in list
            predicate = TypedPredicate.from_proposition(proposition, *types)
            # predicate = TypedPredicate(proposition.name, *types)
            predicates.append(predicate)
            kept[proposition] = predicate
        else:
            show("Dropping {} with mask {}".format(proposition.name, proposition.mask), verbose)
            dropped.add(proposition)
    show("Dropped {} propositions".format(len(dropped)), verbose)
    return predicates, kept, dropped


def _lift_operator(pddl_operator: PDDLOperator, kept: Dict[Proposition, TypedPredicate], dropped: Set[Proposition],
                   replaced: Dict[Proposition, TypedPredicate],
                   verbose=False) -> Union[None, TypedPDDLOperator]:
    """
    Take an operator operating over propositions, and turn it into a lifted operator parameterised by object types
    :param pddl_operator: the original PDDL operator
    :param kept: a mapping from proposition names to predicates
    :param dropped: the set of proposition names that are being discarded
    :param verbose: the verbosity level
    :return: none, if the operator is a duplicate, or the new lifted operator
    """
    operator = TypedPDDLOperator(pddl_operator)

    # If the operator has a proposition that is not a vocabulary predicate, ignore it because it'll be
    # duplicated later
    matches = list()

    for proposition in pddl_operator.preconditions:
        if proposition.name == 'notfailed':
            continue  # ignore notfailed
        if proposition in dropped:
            predicate = replaced[proposition]
            matches.append((proposition, predicate))
        else:
            matches.append((proposition, kept[proposition]))

    if len(matches) != len(pddl_operator.preconditions) - 1:
        show("\tOperator invalid", verbose)
        return None

    for proposition, predicate in matches:
        grounded = predicate(*proposition.type_mask)
        operator.add_precondition(grounded)

    show("\tValid preconditions. Processing effects...", verbose)
    # add effects
    if pddl_operator.is_probabilistic():
        warnings.warn("Probabilistic effects untested")
    # if len(rules) > 1:
    #     warnings.warn("Must fix probabilistic effects!")
    #     operator.failure_probability = rules[0].probability
    #     rules = rules[1:]

    for prob, effect, reward in pddl_operator.effects:
        lifted_effect = list()
        for proposition in effect:
            # if proposition.is_noop:
            if proposition.name == 'notfailed':
                lifted_effect.append(proposition)
            else:
                if proposition in dropped:
                    predicate = replaced[proposition]
                else:
                    predicate = kept[proposition]
                grounded = predicate(*proposition.type_mask)
                if proposition.sign < 0:
                    grounded = grounded.negate()
                lifted_effect.append(grounded)
        operator.add_effect(lifted_effect, prob, reward)

    show('Created lifted operator:\n{}'.format(operator), verbose)
    return operator


def to_lifted_operator(pddl_operator: PDDLOperator, verbose=False) -> Union[None, TypedPDDLOperator]:
    """
    Take an operator operating over propositions, and turn it into a lifted operator parameterised by object types
    :param pddl_operator: the original PDDL operator
    :param kept: a mapping from proposition names to predicates
    :param dropped: the set of proposition names that are being discarded
    :param verbose: the verbosity level
    :return: none, if the operator is a duplicate, or the new lifted operator
    """
    operator = TypedPDDLOperator(pddl_operator)

    for proposition in pddl_operator.preconditions:
        if proposition.name == 'notfailed':
            continue  # gets added elswhere
            # operator.add_precondition(proposition)
        else:
            grounded = proposition(*proposition.mask)
            operator.add_precondition(grounded)

    show("\tValid preconditions. Processing effects...", verbose)
    # add effects
    if pddl_operator.is_probabilistic():
        warnings.warn("Probabilistic effects untested")
    # if len(rules) > 1:
    #     warnings.warn("Must fix probabilistic effects!")
    #     operator.failure_probability = rules[0].probability
    #     rules = rules[1:]

    for prob, effect, reward in pddl_operator.effects:
        lifted_effect = list()
        for proposition in effect:
            # if proposition.is_noop:
            if proposition.name == 'notfailed':
                lifted_effect.append(proposition)
            else:
                grounded = proposition(*proposition.mask)
                if proposition.sign < 0:
                    pass
                    # grounded = grounded.negate()
                lifted_effect.append(grounded)
        operator.add_effect(lifted_effect, prob, reward)

    show('Created lifted operator:\n{}'.format(operator), verbose)
    return operator


def to_typed_pddl(task_id: str, pddl: PDDLDomain, verbose=False) -> TypedPDDLDomain:
    """
    Lift the representation from a propositional PPDDL to a parameterised, typed PPDDL
    :param task_id: the task ID
    :param pddl: the propositional PDDL
    :param kb: the knowledge base
    :param verbose: the verbosity level
    :return: a lifted representation
    """
    lifted_operators = list()
    show("Lifting vocabulary from propositions to predicates...", verbose)
    n_initial_operators = len(pddl.operators)
    # predicates, kept, dropped = _lift_propositions(task_id, pddl.propositions, kb, verbose=verbose)

    for pddl_operator in pddl.operators:
        show("Processing PPDDL operator\n{}...".format(pddl_operator), verbose)

        operator = to_lifted_operator(pddl_operator)
        if operator is not None:
            lifted_operators.append(operator)

    show("Total lifted operators: {}".format(len(lifted_operators)), verbose)
    show("Total dropped operators: {}".format(n_initial_operators - len(lifted_operators)), verbose)
    lifted_pddl = TypedPDDLDomain(pddl.name, pddl.propositions, lifted_operators)
    lifted_pddl.option_descriptor = pddl.option_descriptor
    return lifted_pddl

    #
    # replaced = dict()
    # for proposition in dropped:
    #     replacement = _find_replacer(proposition, kept, type)
    #     replaced[proposition.name] = replacement
    #
    # for pddl_operator in pddl.operators:
    #
    #     valid = True
    #     operator = TypedPDDLOperator(pddl_operator.name, pddl_operator.option, pddl_operator.partition)
    #     # transfer = TransferableOperator(operator)  # this operator will contain information necessary for transfer
    #
    #     # Trying this: if the operator has a proposition that is not a vocabulary predicate, ignore it because
    #     # it'll be duplicated later?
    #
    #     # add preconditions
    #     for precondition in pddl_operator.preconditions:
    #         if len(pddl_operator.preconditions) > 1:
    #             warnings.warn("Schema has more than 1 precondition! Don't know if I accounted for that!")
    #         matches = list()
    #         for proposition in precondition:
    #             if isinstance(proposition, str):
    #                 continue  # ignore notfailed
    #
    #             # TODO:  Trying this: if the operator has a proposition that is not a vocabulary predicate, ignore it because it'll be duplicated later?
    #             temp = [x for x in predicates if x.name == proposition.name]
    #             assert len(temp) < 2
    #             if len(temp) == 0:
    #                 temp = [replaced[proposition.name]]
    #                 # break
    #
    #             predicate = temp[0]
    #             matches.append((predicate, proposition))
    #
    #         if len(matches) != len(precondition) - 1:
    #             valid = False
    #             continue
    #         for predicate, proposition in matches:
    #             grounded = predicate(*proposition.mask)
    #             operator.add_precondition(grounded)
    #             transfer.add_precondition(proposition)
    #
    #     if not valid:
    #         continue
    #     # add effects
    #     rules = pddl_operator.rules
    #     if len(rules) > 1:
    #         warnings.warn("Must fix probabilistic effects!")
    #         operator.failure_probability = rules[0].probability
    #         rules = rules[1:]
    #
    #         # raise NotImplementedError("Haven't accounted for probabilistic effects here!")
    #     for rule in rules:
    #         for wrapper in rule.symbols:
    #             proposition = wrapper.symbol
    #             if isinstance(proposition, str):
    #                 continue  # TODO FIX!!!
    #
    #             # Trying this: if the operator has a proposition that is not a vocabulary predicate, ignore it because
    #             # it'll be duplicated later?
    #             temp = [x for x in predicates if x.name == proposition.name]
    #             assert len(temp) < 2
    #             if len(temp) == 0:
    #                 temp = [replaced[proposition.name]]
    #                 # continue
    #             predicate = temp[0]
    #             if wrapper.sign < 0:
    #                 predicate = predicate.negate()
    #             grounded = predicate(*proposition.mask)
    #             operator.add_effect(grounded)
    #             transfer.add_effect(wrapper)
    #
    #     typed_pddl.add_operator(operator)
    #     transferable_operators.append(transfer)
    #     kb.add_operator(transfer)
    #
    # lifted_pddl = TypedPDDLDomain(pddl.env, predicates, lifted_operators)
    #
    # return lifted_pddl
