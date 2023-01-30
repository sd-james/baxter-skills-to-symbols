import warnings
from typing import List

import numpy as np
from sklearn.model_selection import GridSearchCV
from sklearn.svm import SVC
from sklearn.model_selection import StratifiedKFold


from s2s.estimators.estimators import PreconditionClassifier
from s2s.utils import show, is_single_sample, flatten

__author__ = 'Steve James and George Konidaris'


class SupportVectorClassifier(PreconditionClassifier):
    """
    An implementation of a probabilistic classifier that uses support vector machines with Platt scaling
    """

    def __init__(self, type_mask: List[int], index_mask: List[int], probabilistic=True):
        """
        Create a new SVM classifier for preconditions
        :param type_mask: the state variables that should be kept for classification
        :param probabilistic: whether the classifier is probabilistic
        """
        self._type_mask = type_mask
        self._index_mask = index_mask
        self._probabilistic = probabilistic
        self._classifier: SVC = None

    @property
    def type_mask(self) -> List[int]:
        """
        Get the precondition mask
        """
        return self._type_mask

    def fit(self, X, y, verbose=False, **kwargs):
        """
        Fit the data to the classifier using a grid search for the hyperparameters with cross-validation
        :param X: the data
        :param y: the labels
        :param verbose: the verbosity level
        """

        if kwargs.get('use_mask', True):
            X = flatten(X, mask=self._index_mask)

        c_range = kwargs.get('precondition_c_range', np.logspace(0.01, 0.5, 10))
        gamma_range = kwargs.get('precondition_gamma_range', np.logspace(0.1, 1, 10))

        param_grid = dict(gamma=gamma_range, C=c_range)
        cv = StratifiedKFold(n_splits=3)
        grid = GridSearchCV(SVC(class_weight='balanced'), param_grid=param_grid, cv=cv, n_jobs=-1)  # 3 fold CV
        grid.fit(X, y)

        if not self._probabilistic:
            self._classifier = grid.best_estimator_  # we're done
        else:
            # we've found the best hyperparams. Now do it again with Platt scaling turned on
            params = grid.best_params_
            show("Found best SVM hyperparams: C = {}, gamma = {}".format(params['C'], params['gamma']), verbose)
            # Now do Platt scaling with the optimal parameters
            self._classifier = SVC(probability=True, class_weight='balanced', C=params['C'], gamma=params['gamma'])
            self._classifier.fit(X, y)
            show("Classifier score: {}".format(self._classifier.score(X, y)), verbose)

    def probability(self, states: np.ndarray, **kwargs) -> float:
        """
        Compute the probability of the state given the learned classifier
        :param states: the states
        :return: the probability of the state according to the classifier
        """

        use_mask = kwargs.get('use_mask', True)

        if is_single_sample(states):
            if use_mask:
                masked_states = np.hstack(states[self.type_mask]).reshape(1, -1)
            else:
                masked_states = np.hstack(states).reshape(1, -1)
        else:
            warnings.warn("UNTESTED!")
            if use_mask:
                masked_states = states[:, self.type_mask]
            else:
                masked_states = states
            masked_states = flatten(masked_states)
        if self._probabilistic:
            return np.mean(self._classifier.predict_proba(masked_states)[0][1])
        else:
            return self._classifier.predict(masked_states)[0]
