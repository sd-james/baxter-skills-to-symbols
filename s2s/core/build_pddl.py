import itertools
import warnings
from collections import ChainMap, defaultdict
from functools import partial, cmp_to_key
from typing import List, Tuple, Dict, Union
from warnings import warn

import numpy as np
import pandas as pd
from sklearn.metrics import silhouette_score

from s2s.core.learn_operators import _learn_precondition
from s2s.estimators.estimators import StateDensityEstimator, PreconditionClassifier
from s2s.estimators.kde import KernelDensityEstimator
from s2s.core.learned_operator import LearnedOperator
from s2s.pddl.operator import Operator
from s2s.pddl.pddl_operator import PDDLOperator
from s2s.pddl.proposition import Proposition, TypedPredicate
from s2s.pddl.typed_operator import TypedPDDLOperator
from s2s.pddl.unique_list import UniquePredicateList

__author__ = 'Steve James and George Konidaris'

from s2s.utils import show, pd2np, range_without, run_parallel, flatten, save, load, get_start_state, \
    load_start_state_non_spatial, load_start_state_spatial

"""
Different similar symbol thing!
    def is_similar(self,
                   distribution_symbol,
                   threshold=500,
                   n_samples=100):

        # if ('43' in self.name and '77' in distribution_symbol.name) or ('77' in self.name and '43' in distribution_symbol.name):
        #     k=0


        if 9 in self.mask:
            threshold = 20
            return False

        kl = self.kl_divergence(distribution_symbol, n_samples)
        return kl < threshold
"""


def _old_comparator(a: StateDensityEstimator, b: StateDensityEstimator) -> bool:
    if set(a.mask) != set(b.mask):
        return False

    x = np.rint(a.sample(1)[0].astype(float))
    y = np.rint(b.sample(1)[0].astype(float))

    return (x==y).all()

    # return (np.linalg.norm(x - y) < 2)

    log_p_x = a.score_samples(x)
    log_q_x = b.score_samples(x)
    kl = log_p_x.mean() - log_q_x.mean()

    # if kl < 500:
    #     show_symbol(current_env, a)
    #     show_symbol(current_env, b)

    return kl < 150


def _overlapping_dists(x: StateDensityEstimator, y: StateDensityEstimator) -> bool:
    """
    A measure of similarity from the original paper that compares means, mins and maxes.
    :param x: the first distribution
    :param y: the second distribution
    """

    if x.is_noop and y.is_noop:
        return True

    if x.is_noop != y.is_noop:
        return False

    if set(x.mask) != set(y.mask):
        return False

    dat1 = x.sample(100)
    dat2 = y.sample(100)

    mean1 = np.mean(dat1)
    mean2 = np.mean(dat2)
    if np.linalg.norm(mean1 - mean2) > 0.1:
        return False

    ndims = len(x.mask)
    for n in range(ndims):
        if np.min(dat1[:, n]) > np.max(dat2[:, n]) or np.min(dat2[:, n]) > np.max(dat1[:, n]):
            return False
    return True


def _close_silhouette(x: KernelDensityEstimator, y: KernelDensityEstimator) -> bool:
    """
    Determine whether two effect distributions are equal. Here this is approximated by drawing samples and computing the
    silhouette score. If its absolute value is less than 0.2, the two distributions are equal.
    :param x: the first distribution
    :param y: the second distribution
    """
    if set(x.mask) != set(y.mask):
        return False
    n_samples = 100
    X = x.sample(n_samples)
    Y = y.sample(n_samples)

    data = np.concatenate((X, Y))
    labels = [0] * n_samples + [1] * n_samples
    overlap = silhouette_score(data, labels)

    threshold = 0.2
    return -threshold <= overlap <= threshold


def _generate_goal_symbols(transition_data: pd.DataFrame, factors: List[List[int]],
                           verbose=False, **kwargs) -> List[StateDensityEstimator]:
    show("Generating goal symbols...", verbose)
    column = 'next_state'
    goal_states = pd2np(transition_data.loc[transition_data['done'] == True][column])
    return _generate_symbols(goal_states, factors, verbose=verbose, **kwargs)


def _generate_start_symbols(transition_data: pd.DataFrame, factors: List[List[int]],
                            verbose=False, **kwargs) -> List[StateDensityEstimator]:
    show("Generating start state symbols...", verbose)

    # group by episode and get the first state from each
    column = 'state'
    # initial_states =  get_start_state(transition_data)

    if get_start_state(transition_data).shape[1] == 78:
        initial_states = load_start_state_spatial()
    else:
        initial_states = load_start_state_non_spatial()

    # initial_states = pd2np(transition_data.groupby('episode').nth(0)[column], make_rectangle=True)
    # initial_states = initial_states[1:2] # just take the first!
    return reversed(_generate_symbols(initial_states, factors, verbose=verbose, **kwargs))


def find_type(objects, type):
    return [object for object in objects if round(object[-1]) == round(type)]


def mask_on_object_type(data, types):
    masked = list()
    for row in data:
        candidates = [find_type(row, type) for type in types]
        for x in itertools.product(*candidates):
            masked.append(np.array(x))
            if len(masked) >= 10:
                break
    return np.array(masked), types


def _generate_symbols(states: np.ndarray, total_factors: List[List[int]], verbose=False, **kwargs) \
        -> List[StateDensityEstimator]:
    symbols = list()
    show("Fitting estimator to states", verbose)

    for factor in total_factors:
        temp, _ = mask_on_object_type(states, factor)
        temp = np.unique(temp, axis=0)
        for t in temp:
            distribution = KernelDensityEstimator(factor)
            distribution.fit(np.tile(t, (10, 1, 1)), masked=True, effect_bandwidth_range=np.arange(0.001, 0.0015, 0.001), verbose=verbose,
                             **kwargs)
            symbols.append(distribution)

    # full_mask = range_without(0, states.shape[1])  # all the state variables
    # distribution = KernelDensityEstimator(full_mask)
    # distribution.fit(states, verbose=verbose, **kwargs)
    #
    # for subset in itertools.combinations(total_factors, len(total_factors) - 1):
    #     new_dist = distribution.integrate_out(np.concatenate(subset))
    #     symbols.append(new_dist)

    # # integrate all possible combinations of factors out of the state distribution
    # factors = _extract_factors(distribution.mask, total_factors)
    # # we have a distribution over multiple factors. So extract each factor individually
    # for subset in itertools.combinations(factors, len(factors) - 1):
    #     new_dist = distribution.integrate_out(np.concatenate(subset))
    #     symbols.append(new_dist)

    return symbols


def build_pddl(env, transition_data: pd.DataFrame, operators: List[LearnedOperator],
               verbose=False, **kwargs) -> Tuple[List[List[int]], UniquePredicateList, List[PDDLOperator]]:
    """
    Given the learned preconditions and effects, generate a valid PDDL representation
    :param env: the domain
    :param transition_data: the transition data
    :param operators: the learned operators
    :param verbose: the verbosity level
    :return: the factors, predicates and PDDL operators
    """
    n_jobs = kwargs.get('n_jobs', 1)
    n_types = 45
    # n_objects = env.n_dims(kwargs.get('view', View.PROBLEM))

    vocabulary = UniquePredicateList(_old_comparator)
    # Factorise the state space: see JAIR paper for more
    show("Factorising state space...", verbose)

    factors = _factorise(operators, n_types, verbose=verbose)

    # factors = [[_] for _ in range(n_types)]

    show("Final factors:\n\n{}".format(factors), verbose)
    #
    # generate a distribution over start states
    start_symbols = list()

    start_symbols = _generate_start_symbols(transition_data, factors, verbose=verbose, **kwargs)
    for new_dist in start_symbols:

        proposition = Proposition('symbol', new_dist)
        predicate = TypedPredicate.from_proposition(proposition, *new_dist.mask)
        vocabulary.append(predicate, start_predicate=True)

    # save(vocabulary)
    # exit(0)

    # vocabulary = load()

    # for x in vocabulary:
    #     from s2s.describe import describe_symbol
    #     if len(x.mask) < 5:
    #         print(x.name)
    #         describe_symbol(x)
    #
    # exit(0)

    n_start_propositions = len(vocabulary)
    show("Start position generated {} propositions".format(n_start_propositions), verbose)

    # save(vocabulary)
    # exit(0)
    # vocabulary = load()
    # vocabulary._comparator = _old_comparator

    # TODO: leaving this out for now
    # # generate a distribution over goal states
    # goal_symbols = _generate_goal_symbols(transition_data, factors, verbose=verbose, **kwargs)
    # for new_dist in goal_symbols:
    #     vocabulary.append(new_dist, goal_predicate=True)
    # show("Goal condition generated {} propositions".format(len(vocabulary) - n_start_propositions), verbose)

    show("Running on {} CPUs".format(n_jobs), verbose)

    show("Generating propositions...", verbose)
    # get propositions directly from effects
    operator_predicates = _generate_vocabulary(vocabulary, operators, factors, verbose=verbose, n_jobs=n_jobs)
    show("Total propositions: {}".format(len(vocabulary)), verbose)

    # for x in vocabulary:
    #     from s2s.describe import describe_symbol
    #     describe_symbol(x)

    show("Generating full PDDL...", verbose)

    # exit(0)

    splits = np.array_split(operators, n_jobs)
    functions = [
        partial(_build_pddl_operators, n_types, factors, splits[i], vocabulary, operator_predicates, verbose,
                **kwargs)
        for i in range(n_jobs)]
    schemata = sum(run_parallel(functions), [])

    show("Found {} PDDL operators".format(len(schemata)), verbose)
    return factors, vocabulary, schemata


def _build_pddl_operators(n_dims: int, factors: List[List[int]], operators: List[LearnedOperator],
                          vocabulary: UniquePredicateList,
                          operator_predicates: Dict[Tuple[LearnedOperator, int], List[Proposition]],
                          verbose=False, **kwargs):
    """
    Generate the high-level PDDL operators, given the vocabulary and learned operators
    :param n_dims: the number of state space dimensions
    :param factors: the factorisation of the state space
    :param operators: the earned operators
    :param vocabulary: the vocabulary
    :param operator_predicates: a mapping from learned operator and probabilistic effect to the predicates in the vocab
    :param verbose: the verbosity level
    :return: a list of PDDL operators
    """
    schemata = list()

    cmp = lambda x, y: x.option - y.option if x.option != y.option else x.partition - y.partition
    operators = sorted(operators, key=cmp_to_key(cmp))

    for i, operator in enumerate(operators):
        show("Processing {}/{} operators: option {}, partition {}".format(i + 1, len(operators), operator.option,
                                                                          operator.partition), verbose)
        precondition = operator.precondition
        precondition_factors = _mask_to_factors(precondition.type_mask, factors)
        pddl_operators = _build_pddl_operator(n_dims, precondition_factors, operator, vocabulary,
                                              operator_predicates, verbose=verbose,
                                              **kwargs)
        schemata.extend(pddl_operators)
    return schemata


def _probability_in_precondition(estimator: Proposition, precondition: PreconditionClassifier,
                                 allow_fill_in=False, verbose=False, **kwargs) \
        -> Union[float, Tuple[float, float, float, float, float]]:
    """
    Draw samples from the estimators and feed to the precondition. Take the average result
    :param estimators: the list of estimators
    :param precondition: the precondition
    :param verbose: the verbosity level
    :return: the probability of samples drawn from the estimators being in the precondition
    """

    if kwargs.get('ignore_mask', False):
        keep_indices = list(range(len(precondition.type_mask)))
        mask = precondition.type_mask
    else:
        mask = estimator.mask
        # if we are not allowed to randomly sample, and we are missing state variables, then return 0
        if not allow_fill_in and not set(mask).issuperset(set(precondition.type_mask)):
            return 0

        keep_indices = [i for i in range(len(mask)) if mask[i] in precondition.type_mask]

    # Bail if no overlap.
    if len(keep_indices) == 0:
        return 0

    # TODO improve:
    n_samples = kwargs.get('estimator_samples', 1000)

    samples = estimator.sample(n_samples)
    samples = samples[:, keep_indices]
    samples = np.array([np.hstack(x) for x in samples])

    # samples = np.hstack([predicate.sample(n_samples) for predicate in estimators])
    # samples = samples[:, keep_indices]

    # if the estimators are a subset of the precondition, randomly add data to fill in
    add_list = [m for m in precondition.type_mask if m not in mask]
    if len(add_list) > 0:
        if not allow_fill_in:
            return 0
        show("Must randomly fill in data from {} to intersect with precondition".format(add_list), verbose)
        raise NotImplementedError

    probs = [precondition.probability(samples[pos, :], use_mask=False) for pos in range(0, n_samples)]
    return float(np.mean(probs))  # return mean over samples


def _build_pddl_operator(n_dims: int, precondition_factors: List[List[int]], operator: LearnedOperator,
                         vocabulary: UniquePredicateList,
                         operator_predicates: Dict[Tuple[LearnedOperator, int], List[TypedPredicate]],
                         verbose=False, **kwargs) -> List[PDDLOperator]:
    """
    Generate the PDDL representation for the given operator. There may be more than one due to disjunctive preconditions
    :param n_dims: the number of dimensions in the state space
    :param factors: the factors making up the precondition
    :param operators: the learned operator
    :param vocabulary: the vocabulary
    :param operator_predicates: a mapping from learned operator and probabilistic effect to the predicates in the vocab
    :param verbose: the verbosity level
    """

    pddl_operators = list()

    candidates = list()  # candidates are all possible propositions that we need to consider

    # Get all symbols whose mask matches the correct factors
    for factor in precondition_factors:
        candidates.append([predicate for predicate in vocabulary if set(predicate.types) == set(factor)])

    high_threshold = kwargs.get('high_threshold', 0.95)
    low_threshold = kwargs.get('low_threshold', 0.6)

    # when intersecting propositions with preconditions allow for the effects to be a subspace of the precondition
    # (and have the missing variables randomly sampled)
    allow_fill_in = kwargs.get('allow_fill_in', False)

    # try out all possible combinations!
    combinations = list(itertools.product(*candidates))
    show("Searching through {} candidates...".format(len(combinations)), verbose)
    found = False
    for count, candidates in enumerate(combinations):
        # show("Checking candidate {}".format(count), verbose)
        if _masks_overlap(candidates):
            # This should never happen, but putting a check to make sure
            warn("Overlapping candidates in PDDL building!")
            continue
        # get the precondition masks from the candidates. Make sure sorted to avoid bugs!
        precondition_masks = sorted(
            list(itertools.chain.from_iterable([predicate.types for predicate in candidates])))

        grounding = Proposition.conjoin(candidates)
        # probability of propositions matching classifier
        precondition_prob = _probability_in_precondition(grounding,
                                                         operator.precondition,
                                                         allow_fill_in)

        if precondition_prob > low_threshold:
            # we found a match!
            found = True
            # show("\tFound a match!", verbose)
            precondition_prob = round(precondition_prob, 3)  # make look nice
            # pddl_operator = TypedPDDLOperator(PDDLOperator(operator))
            pddl_operator = PDDLOperator(operator)

            pddl_operator.add_preconditions(list(candidates))

            remaining_probability = 1
            if precondition_prob < high_threshold:
                remaining_probability = precondition_prob
                pddl_operator.add_effect([Proposition.not_failed().negate()],
                                         1 - precondition_prob)  # add failure condition

            for i, (outcome_prob, effect, reward_estimator) in enumerate(operator.outcomes()):
                prob = outcome_prob * remaining_probability
                prob = round(prob, 3)  # make look nice
                reward = None
                if kwargs.get('compute_reward', False):
                    raise NotImplementedError
                    # reward = None if reward_estimator is None else reward_estimator.expected_reward(n_dims, effect,
                    #                                                                                 **kwargs)

                positive_effects = operator_predicates[(operator, i)]

                # Negative effects.
                # Filter: only symbols with factors that overlap the effects mask.
                negative_effects = [x for x in vocabulary if set(x.mask).issubset(set(effect.mask))]
                # Filter: remove positive effects.
                negative_effects = [x for x in negative_effects if x not in positive_effects]
                # Filter: in the precondition - only if explicitly mentioned.
                negative_effects = [x for x in negative_effects if
                                    not (set(x.mask).issubset(precondition_masks) and (x not in candidates))]
                negative_effects = [x.negate() for x in negative_effects]
                pddl_operator.add_effect(positive_effects + negative_effects, prob, reward)
            pddl_operators.append(pddl_operator)
            print(pddl_operator)
    if not found:
        warn("No PDDL operators found for Option {}, Partition {}".format(operator.option, operator.partition))
    return pddl_operators


def _masks_overlap(propositions: Tuple[TypedPredicate]):
    """
    Check if a set of propositions have overlapping masks
    :param propositions: the set of propositions
    :return: whether their masks overlap
    """
    variables = np.hstack([symbol.types for symbol in propositions])
    return np.unique(variables).size != len(variables)


def _generate_vocabulary(vocabulary: UniquePredicateList, operators: List[LearnedOperator], factors: List[List[int]],
                         verbose=False, **kwargs) -> Dict[Tuple[LearnedOperator, int], List[Proposition]]:
    """
    Generate a vocabulary for the PDDL. This includes every possible proposition that could ever be required.
    :param vocabulary: the existing vocabulary of predicates
    :param operators: the learned operators
    :param factors: the factors
    :param verbose: the verbosity level
    :return: a mapping from learned operator and probabilistic effect to the predicates in the vocabulary
    """
    # Process each option's effect sets.
    # map from (operator, probabilistic effect) -> predicates
    operator_predicates: Dict[Tuple[LearnedOperator, int], List[Proposition]] = {}

    n_jobs = kwargs.get('n_jobs', 1)
    splits = np.array_split(operators, n_jobs)

    functions = [partial(_generate_vocabulary_parallel, splits[i], factors, verbose=verbose, **kwargs)
                 for i in range(n_jobs)]
    local_operator_predicates = run_parallel(functions)
    local_operator_predicates = dict(ChainMap(*local_operator_predicates))  # reduce to single dict

    show("Merging propositions from {} processes".format(n_jobs), verbose)

    # take all the results generated in parallel, and collapse into one result.
    for (operator, effect_idx), local_propositions in local_operator_predicates.items():
        predicates = [vocabulary.append(x) for x in local_propositions]
        operator_predicates[(operator, effect_idx)] = predicates
    return operator_predicates


def _generate_vocabulary_parallel(operators: List[LearnedOperator], factors: List[List[int]],
                                  verbose=False, **kwargs) -> Dict[Tuple[LearnedOperator, int], List[Proposition]]:
    operator_predicates: Dict[Tuple[LearnedOperator, int], List[Proposition]] = dict()

    for k, operator in enumerate(operators):
        for i, (_, effect, _) in enumerate(operator.outcomes()):
            predicates = list()

            mask = effect.mask

            # if len(factor_list) <= 1:
            #     # Independent. Go with it as-is.
            #     idx = len(predicates)
            #     predicate = Proposition('symbol_{}'.format(idx), effect)
            #     predicates.append(predicate)
            # else:
            #     for subset in itertools.combinations(mask, len(mask) - 1):
            #         new_dist = effect.integrate_out(subset)
            #         idx = len(predicates)
            #         predicate = Proposition('symbol_{}'.format(idx), new_dist)
            #         predicates.append(predicate)

            factor_list = _extract_factors(mask, factors)
            if len(factor_list) <= 1:
                # Independent. Go with it as-is.
                idx = len(predicates)
                proposition = Proposition('symbol_{}'.format(idx), effect)
                predicate = TypedPredicate.from_proposition(proposition, *effect.mask)
                predicates.append(predicate)
            else:
                show('{} factors: {}'.format(len(factor_list), factor_list), verbose)

                # we have a distribution over multiple factors. So extract each factor individually
                for subset in itertools.combinations(factor_list, len(factor_list) - 1):
                    # subset is every subset of factors (but one)
                    new_dist = effect.integrate_out(np.concatenate(subset))
                    idx = len(predicates)
                    proposition = Proposition('symbol_{}'.format(idx), new_dist)
                    predicate = TypedPredicate.from_proposition(proposition, *new_dist.mask)
                    predicates.append(predicate)
            show('Operator {}, outcome {} ({},{}) generated {} predicates'.format(k, i, operator.option,
                                                                                  operator.partition,
                                                                                  len(predicates)), verbose)
            operator_predicates[(operator, i)] = predicates
    return operator_predicates


def _generate_state_distribution(states: np.ndarray, verbose=False, **kwargs) -> KernelDensityEstimator:
    """
    Generate a distribution over a set of states
    :param states: the states
    :param verbose: the verbosity level
    :return: a density estimation of the states
    """
    show("Fitting estimator to states", verbose)
    full_mask = range_without(0, states.shape[1])  # all the state variables
    effect = KernelDensityEstimator(full_mask)
    effect.fit(states, verbose=verbose, **kwargs)
    return effect


def _modifies(operators: List[LearnedOperator], n_variables: int) -> Dict[int, List[Tuple[int, int]]]:
    """
    Determine which options modify each state variable
    :param operators:
    :param n_variables:
    :return: For each state variable, a list of option-effect pairs that modify it
    """
    modifies = dict()
    for x in range(n_variables):
        new_mods = list()
        for i, operator in enumerate(operators):
            for v, (_, effect, _) in enumerate(operator.outcomes()):
                mask = effect.mask
                if x in mask:
                    new_mods.append((i, v))  # modifies[s] -> [(operator, effect number], ...]
        modifies[x] = new_mods

    return modifies


def _factorise(operators: List[LearnedOperator], n_variables: int, verbose=True) -> List[List[int]]:
    """
    Factorise the state space based on what variables are changed by the options. For more, see the JAIR 2018 paper
    :param operators: the learned operators
    :param n_variables: the number of state-space variables
    :param verbose: the verbosity level
    :return: factors: for each factor, the list of state variables
    """
    modifies = _modifies(operators, n_variables)  # check which variables are modified by each operator
    factors = list()
    options = list()

    for i in range(n_variables):
        found = False
        for x in range(len(factors)):
            f = factors[x]
            if options[x] == modifies[i]:
                f.append(i)
                found = True

        if not found:
            factors.append([i])
            options.append(modifies[i])

    show("Factors\tVariables\t\tOptions\n" + '\n'.join(
        ["F_{}\t\t{}\t{}".format(i, factors[i], options[i]) for i in range(len(factors))]), verbose)

    return factors


def _extract_factors(mask: List, factors: List) -> List[List[int]]:
    """
    Extract the factors referred to by the mask
    :param mask: the mask
    :param factors: the factors
    """
    ret = []
    mask_set = set(mask)
    for factor in factors:
        f_set = set(factor)
        if not f_set.isdisjoint(mask_set):
            part = list(f_set.intersection(mask_set))
            ret.append(sorted(part))  # masks always sorted!!
            mask_set = mask_set - f_set

            if len(mask_set) == 0:
                return ret
    warn("No overlapping factors in mask?!")
    return ret


def _mask_to_factors(mask: List[int], factors: List[List[int]]):
    """
    Convert a mask to factors
    :param mask: the mask
    :param factors: the factors
    :return: the factors referred to by the mask
    """
    # return factors containing at least one variable present in the mask
    return [factor for factor in factors if not set(mask).isdisjoint(set(factor))]
