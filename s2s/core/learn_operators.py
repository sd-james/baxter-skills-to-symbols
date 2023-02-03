import itertools
from collections import ChainMap
from functools import partial
from typing import List, Dict, Tuple, Any

import gym
import numpy as np
import pandas as pd

from s2s.core.feature_selection import _compute_object_precondition_mask
from s2s.estimators.estimators import RewardRegressor, StateDensityEstimator, PreconditionClassifier
from s2s.estimators.kde import KernelDensityEstimator
from s2s.estimators.simple_regressor import SimpleRegressor
from s2s.estimators.svc import SupportVectorClassifier
from s2s.core.learned_operator import LearnedOperator
from s2s.core.partitioned_option import PartitionedOption

__author__ = 'Steve James and George Konidaris'

from s2s.utils import show, run_parallel, pd2np, flatten


def combine_learned_operators(env: gym.Env, partitioned_options: Dict[int, List[PartitionedOption]],
                              preconditions: Dict[Tuple[int, int], PreconditionClassifier],
                              effects: Dict[
                                  Tuple[int, int], List[Tuple[float, StateDensityEstimator, RewardRegressor]]]) \
        -> List[LearnedOperator]:
    """
    Merge all the learned partitions, preconditions and effects into a data structure
    :param env: teh domain
    :param partitioned_options: the partitioned options
    :param preconditions: the learned preconditions
    :param effects: the learned effects
    :return: the combined operators
    """
    operators = list()
    for option in range(env.action_space.n):
        for partition in partitioned_options[option]:
            key = (option, partition.partition)
            operator = LearnedOperator(partition, preconditions[key], effects[key])  # bundle them all together
            operators.append(operator)
    return operators


def learn_effects(partitioned_options: Dict[int, List[PartitionedOption]],
                  verbose=False, **kwargs) \
        -> Dict[Tuple[int, int], List[Tuple[float, StateDensityEstimator, RewardRegressor]]]:
    """
    Estimate the effects from data
    :param partitioned_options: the partitioned options (a dictionary containing a list of partitions for each option)
    :param verbose: the verbosity level
    :return: the probability, next-state estimators and reward estimators
    """
    n_jobs = kwargs.get('n_jobs', 1)
    show("Running on {} CPUs".format(n_jobs), verbose)
    partition_splits = np.array_split(_flatten(partitioned_options), n_jobs)
    functions = [partial(_learn_effects, partition_splits[i], verbose, **kwargs) for i in range(n_jobs)]
    # run in parallel
    effects: List[
        Dict[Tuple[int, int], List[Tuple[float, StateDensityEstimator, RewardRegressor]]]] = run_parallel(
        functions)
    return dict(ChainMap(*effects))  # reduce to single dict


def _learn_effects(partitioned_options: List[PartitionedOption], verbose=False, **kwargs) \
        -> Dict[Tuple[int, int], List[Tuple[float, StateDensityEstimator, RewardRegressor]]]:
    effects = dict()
    for partition in partitioned_options:

        option = partition.option
        show("Calculating effects for option {}, partition {}:".format(option, partition.partition), verbose)

        probabilistic_outcomes = list()  # a list of tuples (prob, effect estimator, reward estimator)

        for j, (prob, states, next_states) in enumerate(partition.masked_effects()):
            show("Processing probabilistic effect {}".format(j), verbose)

            # # make sure no issues with masks. They should all be the same,  else there's a problem with partitioning
            # if not (masks == masks[0]).all():
            #     raise ValueError("Masks in effect for option {}, partition {} are different!"
            #                      .format(option, partition.partition))

            show("Fitting effect estimator", verbose)

            object_types = _extract_types(next_states)

            effect = KernelDensityEstimator(object_types)  # no need for mask - is pointless
            effect.fit(next_states, verbose=verbose, masked=True, **kwargs)  # compute the effect

            probabilistic_outcomes.append((prob, effect, None))
        effects[(option, partition.partition)] = probabilistic_outcomes

    return effects


def learn_preconditions(init_data: pd.DataFrame, partitioned_options: Dict[int, List[PartitionedOption]],
                        verbose=False, **kwargs) -> Dict[Tuple[int, int], PreconditionClassifier]:
    """
    Learn all the preconditions for the partitioned options
    :param env: the domain
    :param init_data: the initiation data
    :param partitioned_options: the partitioned options (a dictionary containing a list of partitions for each option)
    :param verbose: the verbosity level
    :return: the classifiers
    """
    n_jobs = kwargs.get('n_jobs', 1)
    show("Running on {} CPUs".format(n_jobs), verbose)
    partition_splits = np.array_split(_flatten(partitioned_options), n_jobs)
    functions = [partial(_learn_preconditions, init_data, partition_splits[i], partitioned_options, verbose, **kwargs)
                 for i in range(n_jobs)]
    # run in parallel
    preconditions: List[Dict[Tuple[int, int], PreconditionClassifier]] = run_parallel(functions)
    return dict(ChainMap(*preconditions))  # reduce to single dict


def _extract_types(data):
    ret = None
    for row in data:
        types = list()
        for object in row:
            types.append(int(round(object[-1])))
        if ret is None:
            ret = types
        elif ret != types:
            raise ValueError
    return sorted(ret)


def find_type(objects, type):
    return [object for object in objects if int(round(object[-1])) == type]

def mask_on_object_type(negatives, positives):

    masked = list()
    types = _extract_types(positives)
    for row in negatives:
        candidates = [find_type(row, type) for type in types]
        for x in itertools.product(*candidates):
            masked.append(np.array(x))
    return np.array(masked), types


def _learn_preconditions(init_data: pd.DataFrame, partitioned_options: List[PartitionedOption],
                         all_partitions: Dict[int, List[PartitionedOption]],
                         verbose=False, **kwargs) -> Dict[Tuple[int, int], PreconditionClassifier]:
    state_column = 'state'
    preconditions = dict()
    prev_option = None
    negative_data = None
    for partition in partitioned_options:
        option = partition.option

        # this property gets either agent or problem-space states, whichever was used to partition in the first place

        negative_data = pd2np(init_data.loc[(init_data['option'] == option) &
                                            # (init_data['object'] == partition.object) &
                                            (init_data['can_execute'] == False)
                                            ][state_column], make_rectangle=True)
        # must do equals False because Pandas!
        # if len(negative_data) == 0:
        #     continue
        n_objects = negative_data.shape[1]

        # now we need to work out the masked data!
        positive_samples = partition.masked_states(n_objects==78)

        # compute only the masked negative stuff
        negative_data, type_mask = mask_on_object_type(negative_data, positive_samples)


        show('Learning precondition for option {}, partition {}'.format(option, partition.partition), verbose)
        if kwargs.get('augment_negative', False):
            # augment negative samples from the initiation sets of the other partitions
            additional = _augment_negative(partition.partition, all_partitions[option])
            if len(additional) == 0:
                negative_samples = negative_data
            else:
                additional, _ = mask_on_object_type(additional, positive_samples)
                negative_samples = np.vstack((negative_data, additional))
        else:
            negative_samples = negative_data



        show("Calculating mask for option {}, partition {} ...".format(partition.option, partition.partition), verbose)
        precondition = _learn_precondition(partition, positive_samples, negative_samples, type_mask=type_mask,
                                           verbose=verbose, n_objects=n_objects, **kwargs)
        preconditions[(option, partition.partition)] = precondition
        prev_option = option
    return preconditions


def _augment_negative(current_partition: int,
                      partitions: List[PartitionedOption]) -> np.ndarray:
    """
    Add data from other partitions as negative sample instances
    :param negative_data: the states currently labelled as negatives
    :param current_partition: the current partitioned option
    :param partitions: all the partitioned options for the current option
    :return: the augmented set of negative data
    """

    negatives = list()

    for partition in partitions:
        if partitions[current_partition].is_similar(partition.partition):
            continue  # ignore those partitions that look similar in agent space, since this will break the precondition
        # this property gets either agent or problem-space states, whichever was used to partition in the first place
        negatives.append(partition.states)  # add the others as negatives
    if len(negatives) == 0:
        return negatives
    return np.vstack(negatives)


def _learn_precondition(partition: PartitionedOption, positive_samples: np.ndarray, negative_samples: np.ndarray,
                        verbose=False, type_mask=None,
                        **kwargs) -> PreconditionClassifier:
    """
    Learn a single classifier for a partitioned option
    :param partition: the option partition
    :param positive_samples: the positive samples
    :param negative_samples: the negative samples
    :param verbose: the verbosity level
    :return: the classifier
    """
    if len(negative_samples) == 0 or len(positive_samples) == 0:
        raise ValueError("The number of positive and negative samples for the precondition is {} and {}".format(
            len(positive_samples), len(negative_samples)))

        # the max number of samples to use for computing the mask
    max_precondition_samples = kwargs.get('max_precondition_samples', np.inf)
    # resample if too much data
    positive_samples, negative_samples = _resample(positive_samples, negative_samples, max_precondition_samples)
    labels = np.array([1] * len(positive_samples) + [0] * len(negative_samples))

    type_mask, index_mask = _compute_object_precondition_mask(positive_samples, negative_samples, labels, partition.objects,
                                                          type_mask, verbose=verbose, **kwargs)
    svm = SupportVectorClassifier(type_mask, index_mask)

    # if kwargs.get('generate_positive_samples', False):
    #     # generate extra positive samples from a density estimator!
    #     pos_sym = KernelDensityEstimator(precondition_mask)
    #     pos_sym.fit(positive_samples, verbose=verbose, **kwargs)  # compute the effect
    #
    #     pos = flatten(pos_sym.sample(len(negative_samples)))
    #     neg = flatten(negative_samples, mask=precondition_mask)
    #     examples = np.vstack((pos, neg))
    #     labels = np.array([1] * len(pos) + [0] * len(neg))
    #     svm.fit(examples, labels, verbose=verbose, use_mask=False, **kwargs)
    # else:

    # positive_samples = flatten(positive_samples, mask=precondition_mask)
    # negative_samples = flatten(negative_samples, mask=precondition_mask)


    data = np.vstack((positive_samples, negative_samples))
    svm.fit(data, labels, verbose=verbose, **kwargs)
    return svm


def _resample(positive_samples: np.ndarray, negative_samples: np.ndarray, max_samples: int) -> Tuple[
    np.ndarray, np.ndarray]:
    """
    Resample the data so the total is less than the maximum number of samples. Maintain the ratio
    :param positive_samples: the positive samples
    :param negative_samples: the negative samples
    :param max_samples: the total number of samples required
    :return: a subset of the initial samples, with their ratios maintained
    """
    n_samples = len(negative_samples) + len(positive_samples)
    if n_samples > max_samples:

        if len(positive_samples) < 100:
            # very little data. Don't lose it!
            n_positive = len(positive_samples)
            n_negative = max_samples - n_positive
        else:
            # resample but maintain ratio
            n_negative = round(max_samples * len(negative_samples) / n_samples)
            n_positive = max_samples - n_negative
        positive_samples = positive_samples[
            np.random.choice(len(positive_samples), n_positive, replace=False)]
        negative_samples = negative_samples[
            np.random.choice(len(negative_samples), n_negative, replace=False)]

        if len(positive_samples) + len(negative_samples) != max_samples:
            raise ValueError("Resampling went wrong!")

    return positive_samples, negative_samples


def _flatten(data: Dict[Any, List[Any]]) -> List[Any]:
    """
    Flatten a dictionary of lists into a single list
    """
    return sum([value for _, value in data.items()], [])
