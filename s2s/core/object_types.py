import itertools
from collections import defaultdict
from typing import Dict, Tuple, Union, List

from sklearn.neighbors import KernelDensity

from s2s.core.learned_operator import LearnedOperator
import numpy as np

from s2s.union_find import UnionFind
from s2s.utils import show


class OptionEffectProfile:

    def __init__(self, option: int):
        """
        Structure that stores the effect of a particular option on an object
        :param option: the option
        """
        self._option = option
        self._effects: Dict[int, Tuple[float, KernelDensity]] = dict()

    def __len__(self):
        return len(self._effects)

    def set(self, partition: int, effect: KernelDensity, probability=1.0):
        """
        Add an effect the object undergoes
        :param partition: the option partition
        :param effect: the effect
        :param probability: the probability with which the effect occurs
        """
        self._effects[partition] = (probability, effect)

    def __eq__(self, other: 'OptionEffectProfile') -> bool:
        """
        Determines whether two objects are effect-equivalent under an option
        :param other: the other object's effect profile under the option
        :return: whether the two objects are similar
        """
        # if len(self._effects) != len(other._effects):
        #     return False

        x_effects = [self._effects[x] for x in self._effects.keys()]
        y_effects = [other._effects[x] for x in other._effects.keys()]
        # probably better just to sort according to mean effects and compare, but I don't think this is too expensive
        for x in itertools.permutations(x_effects):
            for y in itertools.permutations(y_effects):
                if self.__is_equal(x, y):
                    return True
        return False

    def __is_equal(self, x: Tuple[Tuple[float, KernelDensity]],
                   y: Tuple[Tuple[float, KernelDensity]]) -> bool:
        for (x_prob, x_eff), (y_prob, y_eff) in zip(x, y):
            if abs(x_prob - y_prob) > 0.1:
                return False
            samples = x_eff.sample(100)
            log_p_x = x_eff.score_samples(samples)
            try:
                log_q_x = y_eff.score_samples(samples)
            except ValueError:
                # wrong training size. Must be false!
                return False
            kl = log_p_x.mean() - log_q_x.mean()
            if kl > 10000:
                return False
        return True


class EffectProfile:

    def __init__(self):
        """
        Structure that stores the effect profile for each option on an object
        """
        self._effects: Dict[int, OptionEffectProfile] = dict()

    def set(self, option: int, partition: int, effect: KernelDensity, probability=1.0):
        """
        Add an effect the object undergoes
        :param option: the option
        :param partition: the option partition
        :param effect: the effect
        :param probability: the probability with which the effect occurs
        """
        if option not in self._effects:
            self._effects[option] = OptionEffectProfile(option)
        self._effects[option].set(partition, effect, probability)

    def equals(self, other: 'EffectProfile', return_exact=False) -> Union[List[bool], bool]:
        """
        Determines whether two effect profiles are equal
        :param other: the profile to compare against
        :param return_exact: whether the function should return the matches per option, or simply true/false
        """
        matches = list()
        for option in self._effects.keys():
            if option not in other._effects:
                if not return_exact:
                    return False
                else:
                    matches.append(False)
            else:
                match = self._effects[option] == other._effects[option]
                if not match and not return_exact:
                    return False
                matches.append(match)
        if return_exact:
            return matches
        return True

    def __str__(self):
        return '\n'.join(["Option {} with {} effects ".format(option, len(self._effects[option])) for option in
                          sorted(self._effects.keys())])


def merge_object_types(n_objects, operators: List[LearnedOperator], verbose=False) -> \
        Tuple[Dict[int, EffectProfile], UnionFind]:
    """
    Merge objects into classes
    :param n_objects: the number of objects
    :param operators: the learned operators
    :param verbose: the verbosity level
    :return: the effect profiles and class types
    """
    effect_profiles = defaultdict(EffectProfile)

    for operator in operators:
        for prob, effect, _ in operator.outcomes():
            for object, object_effect in effect.object_effects():
                effect_profiles[object].set(operator.option, operator.partition, object_effect, prob)

    uf = UnionFind(range(n_objects))
    for x, y in itertools.combinations(effect_profiles.keys(), 2):

        if x == 0 or y == 0:  # use the fact that we know we're the agent to speed things up
            continue

        if uf[x] == uf[y]:
            show("{} and {} are the same".format(x, y), verbose)
        else:
            matching_options = effect_profiles[x].equals(effect_profiles[y], return_exact=True)
            if len(set(matching_options)) == 2:
                show("{} and {} matches on {}".format(x, y, list(np.where(matching_options))), verbose)
            elif False not in matching_options:
                uf.merge(x, y)
                show("{} and {} are the same".format(x, y), verbose)
    return effect_profiles, uf
