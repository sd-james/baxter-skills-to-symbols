from typing import List

import pandas as pd
import numpy as np

__author__ = 'Steve James and George Konidaris'

from s2s.utils import make_2d, pd2np


class PartitionedOption:
    """
    This class holds the data representing a single partitioned option
    """

    def __init__(self, option: int, partition: int, combined_data: pd.DataFrame, effects: List[pd.DataFrame],
                 look_similar=None):
        """
        Create a new partitioned option
        :param option: the option index
        :param partition: the partition index
        :param combined_data: all the data (including probabilistic effects) concatenated
        :param effects: the individiaul effects (each effect is a stochastic transition)
        :param view: the view
        :param look_similar: a set of other partition indices that look identical to this one (but are in fact not)
        """
        if look_similar is None:
            look_similar = set()
        self._option = option
        self._partition = partition
        objects = set(combined_data['object_type'].values)
        # if len(objects) != 1:
        #     raise ValueError("Partitioned option is associated with more that one object!")
        self._objects = list(objects)

        self._states = make_2d(combined_data['state'].values)

        state_column = 'next_state'
        mask_column = 'mask'

        total_samples = sum(len(effect[state_column]) for effect in effects)
        self._effects = [
            (len(effect[state_column]) / total_samples, effect[['state', 'object_type', 'next_state',  mask_column]])
            for effect in effects]
        self._look_similar = look_similar  # other partitions that look similar but are not
        self._combined_data = combined_data

    def is_similar(self, other_partition: int):
        """
        Determines whether the given partition looks similar in agent space, but is in fact not. In this case, it should
        not be included as negative precondition samples, because they will be identical to the current partition's
        precondition samples!
        :param other_partition: the index of the other partition being compared
        """
        return other_partition in self._look_similar or other_partition == self.partition

    @property
    def option(self):
        return self._option

    @property
    def partition(self):
        return self._partition

    @property
    def objects(self):
        return self._objects

    @property
    def view(self):
        return self._view

    @property
    def states(self):
        return self.problem_states

    @property
    def problem_states(self):
        return self._states

    @property
    def object_states(self):
        return None

    def combined_mask(self):
        mask_column = 'mask'
        mask = set()
        for _, frame in self._effects:
            for delta in frame[mask_column].values:
                for m in delta:
                    mask.add(m)
        return sorted(list(mask))

    def effects(self, view=None):

        # TODO make this general

        for probability, frame in self._effects:
            yield probability, pd2np(frame['state'], make_rectangle=True),pd2np(frame[
                                            'next_state'], make_rectangle=True), pd2np(
                frame['mask']).astype(int)

    def masked_effects(self, force_spatial=False):
        for prob, states, next_states, masks in self.effects():
            yield prob, self.get_masked_data(states, masks, force_spatial), self.get_masked_data(next_states, masks, force_spatial)

    def masked_states(self, force_spatial=False):
        x = np.array([states for _, states, _ in self.masked_effects(force_spatial)])
        if len(x.shape) == 4:
            x = np.squeeze(x, axis=0)
        return x

    def get_masked_data(self, data, masks, force_spatial=False):

        if force_spatial:
            new_masks = list()
            for mask in masks:
                if 0 not in mask:
                    mask = np.array([0] + list(mask))
                new_masks.append(mask)
            return np.stack([row[sorted(mask)] for row, mask in zip(data, new_masks)])

        return np.stack([row[sorted(mask)] for row, mask in zip(data, masks)])


    def subpartition(self, verbose=False, **kwargs) -> List['PartitionedOption']:
        """
        Given the current partition, partition it again in the alternate space (that is, if it was partitioned in
        agent space initially, now partition in problem space)
        :param verbose: the verbosity level
        :return: (sub) partitioned options in the opposite space
        """
        other_view = View.PROBLEM if self._view == View.OBJECT else View.OBJECT  # swap the view around
        from s2s.core.partition import _partition_option
        return _partition_option(self.option, self._combined_data, verbose=verbose, view=other_view, **kwargs)


    def _vis_effects(self):
        x = list()
        z = list()
        o = list()

        for _, _, next_states, _ in self.effects():
            for state in next_states:
                x.append(state[0][0])
                z.append(state[0][2])
                o.append(state[0][3] / 360)

        print(x)
        print(z)
        print("*******************************")
        x = list()
        z = list()
        o = list()



        for _, _, states in self.masked_effects():
            for state in states:
                x.append(state[0][0])
                z.append(state[0][2])
                o.append(state[0][3] / 360)

        print(x)
        print(z)
        import matplotlib.pyplot as plt
        plt.xlim(-1, 1)
        plt.ylim(-1, 1)
        plt.scatter(x, z, c=o)
        plt.show()
