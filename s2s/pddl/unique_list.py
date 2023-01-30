import copy
from typing import Callable, Optional

from s2s.estimators.estimators import StateDensityEstimator
from s2s.estimators.kde import KernelDensityEstimator

__author__ = 'Steve James and George Konidaris'

from s2s.pddl.pddl import Proposition


class UniquePredicateList:
    """
    A class that wraps a list. The user add density estimators to the list, and they are wrapped in PDDL predicates.
    The list automatically deals with duplicates
    """

    def __init__(self, comparator: Optional[Callable[[KernelDensityEstimator, KernelDensityEstimator], bool]] = None):
        """
        Create a list data structure that ensues no duplicates are added to the list
        :param comparator: a function that accepts two objects and returns whether they are equal
        """
        self._comparator = comparator if comparator is not None else lambda x, y: x is y
        self._list = list()
        self._start_predicates = list()
        self._goal_predicates = list()
        self.__idx = 0

    def __getstate__(self):
        state = self.__dict__.copy()
        state['_comparator'] = None  # pickle no likee the comparator.
        return state

    def append(self, item: Proposition, start_predicate=False, goal_predicate=False) -> Proposition:
        """
        Add an item to the list
        :param item: the item to add
        :param start_predicate: whether the proposition is part of the start distribution
        :param goal_predicate: whether the proposition is part of the goal distribution
        :return: the predicate in the list. If the item is a duplicate, the predicate will refer to the
        existing item in the list
        """

        if self._comparator is None:
            raise ValueError("Cannot add more items to structure. If this object has been unpickled, reset the "
                             "comparator and try again.")

        for x in self._list:
            if self._comparator(item.estimator, x.estimator):
                self._add(x, start_predicate, goal_predicate)
                return x
        idx = len(self._list)
        predicate = copy.deepcopy(item)
        predicate._name = 'symbol_{}'.format(idx)
        self._list.append(predicate)
        self._add(predicate, start_predicate, goal_predicate)
        return predicate

    def _add(self, x: Proposition, start_predicate=False, goal_predicate=False):
        if start_predicate:
            self._start_predicates.append(x)
        if goal_predicate:
            self._goal_predicates.append(x)

    def __iter__(self):
        self.__idx = 0
        return self

    def __next__(self) -> Proposition:
        if self.__idx < 0 or self.__idx >= len(self):
            raise StopIteration
        x = self._list[self.__idx]
        self.__idx += 1
        return x

    def __len__(self):
        return len(self._list)

    @property
    def start_predicates(self):
        return self._start_predicates

    @property
    def goal_predicates(self):
        return self._goal_predicates
