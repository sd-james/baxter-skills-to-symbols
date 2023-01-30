import warnings

import numpy as np
from typing import List, Iterable, Generator, Tuple

from sklearn.model_selection import GridSearchCV
from sklearn.neighbors import KernelDensity

from s2s.estimators.estimators import StateDensityEstimator

__author__ = 'Steve James and George Konidaris'

from s2s.utils import show


class KernelDensityEstimator(StateDensityEstimator):
    """
    A density estimator that models a distribution over low-level states
    """

    def __init__(self, mask: List[int]):
        """
        Create a new estimator
        :param mask: the state variables we care about
        """
        self._mask = mask
        self._kdes: List[KernelDensity] = list()
        self._no_effect = False

    def fit(self, X: np.ndarray, verbose=False, **kwargs) -> None:
        """
        Fit the data to the effect estimator using a grid search for the hyperparameters with cross-validation
        :param X: the data
        :param verbose: the verbosity level
        """
        if kwargs.get('masked', False):
            data = X  # already been masked
        else:
            data = X[:, self.mask]

        if data.shape[1] == 0:
            # NO EFFECT!
            self._no_effect = True
            return

        bandwidth_range = kwargs.get('effect_bandwidth_range', np.arange(0.001, 0.1, 0.001))
        params = {'bandwidth': bandwidth_range}
        n_splits = len(data) if 0 < len(data) < 3 else 3
        if n_splits < 3:
            warnings.warn("Very little data to do KDE")
            if n_splits == 1:
                # really bad situation! let's duplicate!
                data = np.vstack((data, data))
                n_splits *= 2

        for col in range(data.shape[1]):
            x = data[:, col]
            x = np.array([sample.ravel() for sample in x])

            grid = GridSearchCV(KernelDensity(kernel='gaussian'), params, cv=n_splits)
            grid.fit(x)
            show("Best bandwidth hyperparameter for column {}: {}".format(col, grid.best_params_['bandwidth']), verbose)
            self._kdes.append(grid.best_estimator_)

    @property
    def mask(self) -> List[int]:
        """
        Get the effect mask
        """
        return self._mask

    def object_effects(self) -> Generator[Tuple[int, KernelDensity], None, None]:
        """
        Produces the effects on each object in the mask
        """
        if len(self.mask) != len(self._kdes):
            raise ValueError("Mask and KDEs have different lengths! {} != {}".format(len(self.mask), len(self._kdes)))
        for object, kde in zip(self.mask, self._kdes):
            yield object, kde

    def sample(self, n_samples=100) -> np.ndarray:
        """
        Sample data from the density estimator
        :param n_samples: the number of samples
        :return an array of size [n_samples, len(mask)]
        """
        if self._no_effect:
            return np.empty(shape=(n_samples, 0))

        # TODO probably a more efficient way
        samples = list()
        for i in range(n_samples):
            x = np.array([kde.sample().squeeze(axis=0) for kde in self._kdes], dtype=object)
            samples.append(x)
        return np.array(samples)

    def integrate_out(self,
                      variable_list: Iterable[int],
                      **kwargs) -> 'KernelDensityEstimator':
        """
        Given a distribution p(s) and a list of variables, return a new
        distribution equal to p with those variables marginalized out.
        """

        # TODO check this:
        # if empty, nothing to integrate out
        if self._no_effect:
            kde = KernelDensityEstimator(mask=list())
            kde._no_effect = True
            return kde

        variable_list = sorted(variable_list)  # make sure it's always sorted to prevent bugs!

        new_vars = list()
        new_indices = list()

        # find all the other variables in the mask except what's given
        for pos, val in enumerate(self.mask):  # TODO probably a better way of doing this in numpy
            if val not in variable_list:
                new_vars.append(val)
                new_indices.append(pos)
        n_samples = kwargs.get('estimator_samples', 100)
        new_samples = self.sample(n_samples)[:, new_indices]
        kde = KernelDensityEstimator(mask=new_vars)
        kwargs['masked'] = True  # the data has already been masked
        kde.fit(new_samples, **kwargs)
        return kde

    def integrate_out_idx(self,
                      variable_list: Iterable[int],
                      **kwargs) -> 'KernelDensityEstimator':
        """
        Given a distribution p(s) and a list of variables, return a new
        distribution equal to p with those variables marginalized out.
        """

        # TODO check this:
        # if empty, nothing to integrate out
        if self._no_effect:
            kde = KernelDensityEstimator(mask=list())
            kde._no_effect = True
            return kde

        variable_list = sorted(variable_list)  # make sure it's always sorted to prevent bugs!
        new_vars = list()
        new_indices = list()
        for i in range(self.mask.shape[-1]):
            if i not in variable_list:
                new_indices.append(i)
                # new_vars.append()




        # find all the other variables in the mask except what's given
        for pos, val in enumerate(self.mask):  # TODO probably a better way of doing this in numpy
            if val not in variable_list:
                new_vars.append(val)
                new_indices.append(pos)
        n_samples = kwargs.get('estimator_samples', 100)
        new_samples = self.sample(n_samples)[:, new_indices]
        kde = KernelDensityEstimator(mask=new_vars)
        kwargs['masked'] = True  # the data has already been masked
        kde.fit(new_samples, **kwargs)
        return kde

    @property
    def is_noop(self):
        return self._no_effect

    def conjoin(self, other: 'KernelDensityEstimator') -> None:
        if not set(self.mask).isdisjoint(set(other.mask)):
            raise ValueError("In KernelDensityEstimator::distribution_and: attempted to and distributions "
                             "with overlapping masks.")
        self._mask = self.mask + other.mask  # not sorted! Otherwise the next line will be out of sync!
        self._kdes += other._kdes

    def score_samples(self, X: np.ndarray):

        if X.shape[1] != len(self._kdes):
            raise ValueError

        scores = list()
        for i in range(X.shape[1]):
            x = X[:, i]
            x = np.array([np.hstack(i) for i in x])
            scores.append(self._kdes[i].score_samples(x))

        # for kde in self._kdes:

        return np.mean(scores, axis=0)