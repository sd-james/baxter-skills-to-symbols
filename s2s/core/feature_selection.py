import itertools
from typing import List, Dict, Union
from warnings import warn

import numpy as np
from sklearn.model_selection import GridSearchCV, cross_val_score
from sklearn.svm import SVC


__author__ = 'Steve James and George Konidaris'

from s2s.utils import show, flatten, range_without


def _get_index(object_views, object_id):
    """
    Get the index in the state space corresponding to the object with the given ID
    """
    if object_id == 0:  # this is the crafting table, so ignore
        return 0
    for i, object in enumerate(object_views.keys()):
        if object.id == object_id:
            return i + 1  # plus 1 because first is always agent view
    raise ValueError


def _compute_object_precondition_mask(positive_samples: np.ndarray, negative_samples: np.ndarray, labels: np.ndarray,
                                      object_ids: int, type_mask: List[int], verbose=False, **kwargs):
    """
    Compute the precondition mask using a feature selection procedure. These are the objects that matter when
    determining whether an option can be executed
    :param positive_samples: an array of positive states
    :param negative_samples: an array of negative states
    :param labels: labels corresponding to positive and negative states
    :param object_ids: the object being acted upon
    :param type_mask: the current partition mask
    :param verbose: the verbosity level
    :return: the mask
    """
    threshold = kwargs.get('mask_addition_threshold', 0.007)

    type_mask = sorted(list(set(type_mask)))
    index_mask = list(range(len(type_mask)))

    # TODO
    n_objects = kwargs.get('n_objects', 77)
    if n_objects == 77 or len(type_mask) == 1:
        # non spatial
        return type_mask, index_mask

    elif n_objects != 78:
        raise ValueError

    #TESTING just always including!
    return type_mask, index_mask


    samples = np.vstack((positive_samples, negative_samples))

    # compute the precondition mask through feature selection

    # compute the score with ALL state variables
    latest_score, params = _get_orig_score_params(samples[:, index_mask], labels, **kwargs)
    show("Score with initial variables {}: {}".format(type_mask, latest_score), verbose)

    # trying to remove agent
    # TODO: VERY HARD CODED!

    if type_mask[0] != -1:
        raise ValueError

    new_mask = [x for i, x in enumerate(index_mask) if i != 0]  # remove the first one
    n_score = _get_subset_score(samples, labels, new_mask, params)

    if latest_score - n_score < threshold:
        # it did not go down!
        show("Score not changed. Removing", verbose)
        return type_mask[1:], new_mask

    show("After removing, score was damaged by  {}. Keeping...".format(n_score - latest_score), verbose)

    return type_mask, index_mask

    # n_score = _get_subset_score(samples, labels, [0] + index_mask, params)
    # if latest_score - n_score < threshold:
    #     # improvement!
    #     index_mask = [0] + index_mask
    #     type_mask = [-1] + type_mask  # the type is always -1
    #
    # return type_mask, index_mask



    if len(type_mask) == 1:
        final_mask = type_mask
        final_index_mask = index_mask
    else:
        final_mask = []
        final_index_mask = []
        threshold = 0.01

        for m in index_mask:
            new_mask = [x for x in index_mask if x != m]
            n_score = _get_subset_score(samples, labels, new_mask, params)
            if latest_score - n_score > threshold:
                final_mask.append(type_mask[m])
                final_index_mask.append(m)

        if len(final_mask) == 0:
            final_mask = type_mask
            final_index_mask = index_mask
        final_mask.sort()  # ensure mask is always sorted to avoid bugs down the line
        final_index_mask.sort()
    show("Final precondition mask: {} with score {}".format(final_mask, latest_score), verbose)
    return final_mask, final_index_mask

    # candidates = mask
    #
    # for m in candidates:
    #     if not isinstance(m, list):
    #         new_vars = [m]
    #     else:
    #         new_vars = list(m)
    #     n_score = _get_subset_score(samples, labels, mask + new_vars, params)
    #
    #     # print("Variables {} = {}".format(new_vars, n_score - latest_score))
    #
    #     if n_score - latest_score > threshold:
    #         latest_score = n_score
    #         mask = mask + new_vars
    #         show("Variable {} improves the score to {} when added. Keeping...".format(n_score, new_vars), verbose)
    #         if n_score == 1:
    #             break  # cannot improve
    # mask.sort()  # ensure mask is always sorted to avoid bugs down the line
    # show("Final precondition mask: {} with score {}".format(mask, latest_score), verbose)
    # return mask


def _compute_precondition_mask(positive_samples: np.ndarray, negative_samples: np.ndarray, labels: List[int],
                               verbose=False, **kwargs):
    """
    Compute the precondition mask using a feature selection procedure. These are the variables that matter when
    determining whether an option can be executed
    :param positive_samples: an array of positive states
    :param negative_samples: an array of negative states
    :param labels: labels corresponding to positive and negative states
    :param verbose: the verbosity level
    :return: the mask
    """
    samples = np.vstack((positive_samples, negative_samples))

    # compute the precondition mask through feature selection
    mask = []
    n_vars = samples.shape[1]

    # compute the score with ALL state variables
    total_score, params = _get_orig_score_params(samples, labels, **kwargs)
    show("Score with all variables: {}".format(total_score), verbose)

    threshold = kwargs.get('mask_removal_threshold', 0.02)

    # try remove each state variable in turn, see what the score is
    for m in range(n_vars):
        used_vars = range_without(0, n_vars, m)
        subset_score = _get_subset_score(samples, labels, used_vars, params)

        if total_score - subset_score > threshold:
            # removing the variable damaged the score. So keep it!
            show("Variable {} causes damage when removed. Keeping...".format(m), verbose)
            mask.append(m)

    # if no mask, just find the best one so far
    if len(mask) == 0:
        mask.append(np.argmax([_get_subset_score(samples, labels, [i], params) for i in range(n_vars)]))

    threshold = kwargs.get('mask_addition_threshold', 0.001)

    latest_score = _get_subset_score(samples, labels, mask, params)
    # now try adding variables back!
    for m in range_without(0, n_vars, *mask):
        n_score = _get_subset_score(samples, labels, mask + [m], params)
        if n_score - latest_score > threshold:
            latest_score = n_score
            mask = mask + [m]
            show("Variable {} improves the score when added. Keeping...".format(m), verbose)
            if n_score == 1:
                break  # cannot improve
    mask.sort()  # ensure mask is always sorted to avoid bugs down the line
    show("Final precondition mask: {} with score {}".format(mask, latest_score), verbose)
    return mask


def _get_orig_score_params(states: np.ndarray, labels: Union[np.ndarray, List[int]], **kwargs):
    """
    Compute the classification score over the full data
    :param states: the states, positive and negative
    :param labels: the associated labels
    :return: the best score and the associated SVM hyperparameters
    """
    if len(set(labels)) == 1:
        # everything is in the same class! SVM can't handle :(
        warn("There is only one class. SVM cannot handle this case")
        return 1, {'gamma': 5, 'C': 1}
    c_range = kwargs.get('precondition_c_range', np.logspace(0.1, 0.5, 10))
    gamma_range = kwargs.get('precondition_gamma_range', np.logspace(0.1, 1, 10))
    param_grid = dict(gamma=gamma_range, C=c_range)
    grid = GridSearchCV(SVC(class_weight='balanced'), param_grid=param_grid, cv=3, n_jobs=-1, iid=True)  # 3 fold CV
    grid.fit(flatten(states), labels)
    # try:
    #     grid.fit(states, labels)
    # except ValueError:
    #     return 1, {'gamma': 5, 'C': 1}
    return grid.best_score_, grid.best_params_


def _get_subset_score(states: np.ndarray, labels: List[int], mask: List[int], best_params: Dict[str, float]):
    """
    Compute the classification score over the given masked data
    :param states: the states, positive and negative
    :param labels: the associated labels
    :param mask: the state variables to keep
    :param best_params: the hyperparameters
    :return: the average cross-validated SVM score
    """
    if len(set(labels)) == 1:
        # everything is in the same class! SVM can't handle :(
        warn("There is only one class. SVM cannot handle this case")
        return 1, {'gamma': 5, 'C': 1}

    # probably unneccessary, but going to sort!
    mask = sorted(list(set(mask)))

    states = flatten(states, mask=mask)
    if states.shape[1] == 0:
        warn("Trying to do feature selection with an empty mask!")
        return 0

    return np.mean(
        cross_val_score(
            SVC(class_weight='balanced', C=best_params['C'], gamma=best_params['gamma']),
            X=states, y=labels, cv=3))
