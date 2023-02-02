import pickle

import numpy as np
import pandas as pd
from gym.spaces import Discrete

from s2s.env.s2s_env import S2SEnv


class AosmEnv(S2SEnv):

    def __init__(self):
        self.action_space = None
        self.observation_space = None
        self.actions = list()
        self.transition_data = None
        self.init_data = None
        self.action_obj_list = [
            ["PickupObject", ["Mug"]],
            ["ToggleObjectOn", ["CoffeeMachine"]],
            ["ToggleObjectOff", ["CoffeeMachine"]],
            ["PutObject", ["CoffeeMachine", "Mug"]],
            ["PutObject", ["CounterTop", "Mug"]],
        ]

        self.actions = list()
        for x, _ in self.action_obj_list:
            self.actions.append(x)

        self.action_space = Discrete(len(self.action_obj_list))
        self.objects = dict()
        self.all_objects = dict()

    def _extract_object(self, desc, new_ep=False):
        data = tuple(desc.split('_')[0].split('|'))
        if len(data) == 5:
            data = (data[-1], data[1], data[2], data[3])

        if new_ep:
            if data in self.objects:
                return self.objects[data]
            else:
                for key, val in self.objects.items():
                    if key[0] == data[0]:
                        del self.objects[key]
                        self.objects[data] = val
                        self.all_objects[data] = val
                        return val

        if data not in self.objects:
            self.all_objects[data] = len(self.objects)
            self.objects[data] = len(self.objects)
        return self.objects[data]

    def extract_all_objects(self, desc):
        data = tuple(desc.split('_')[0].split('|'))
        if len(data) == 5:
            data = (data[-1], data[1], data[2], data[3])

        if data not in self.all_objects:
            raise ValueError
        return self.all_objects[data]


    @property
    def available_mask(self) -> np.ndarray:
        pass

    def step(self, action):
        pass

    def reset(self):
        pass

    def render(self, mode='human'):
        pass

    def get_random_state(self, mask, values):
        states = self.transition_data['state'].tolist()
        states = [x for x in states if np.linalg.norm(x[mask] - values[mask]) < 0.02]
        if len(states) == 0:
            return self.observation_space.sample()
        return states[np.random.randint(0, len(states))]

    def render_state(self, state: np.ndarray, **kwargs) -> np.ndarray:
        """
        Return an image of the given state. Where state variables are missing, specify with np.nan
        """
        if kwargs.get('masked'):
            s = self.observation_space.sample()
            s[kwargs.get('mask')] = state
            state = s
        else:
            nan_mask = np.where(np.isnan(state))
            if len(nan_mask[0]) > 0:
                mask = np.where(np.isfinite(state))
                state[nan_mask] = self.get_random_state(mask, state)[nan_mask]
            else:
                state[nan_mask] = self.observation_space.sample()[nan_mask]
        return self._render_state(state, **kwargs)

    def _render_state(self, state: np.ndarray, **kwargs) -> np.ndarray:
        img = self.compressor.inverse_transform(state.reshape(1, -1))[0]
        # 240 135
        if self._small:
            return np.reshape(img, (135 // 2, 240 // 2))
        return np.reshape(img, (135, 240))
        # return np.reshape(img, (135, 240, 3))

    def describe_option(self, option: int) -> str:
        return self.actions[option]

    def compute_mask(self, x: np.ndarray, y: np.ndarray) -> np.ndarray:
        """
        The above are arrays of object features, so we must check them individually
        :param x: a state
        :param y: another state
        :return: the indices of objects that have changed
        """

        mask = list()
        for i, (a, b) in enumerate(zip(x, y)):
            if not np.array_equal(a, b):
                mask.append(i)
        return np.array(mask)

    def rearrange(self, state, object_ids):

        objects = [object_ids[0]]
        for i in range(1, len(object_ids)):
            if object_ids[i] != object_ids[i-1]:
                objects.append(object_ids[i])

        new_state = [[]] * len(state)
        for i, object_id in enumerate(objects):
            new_state[object_id] = state[i]
        return new_state

    def extend(self, state):
        inject = [0] * 104
        inject[-1] = -1
        state = state[0:4] + inject + state[4:]
        return state

    def load(self, file, max_transitions=np.inf):

        with open(file, 'rb') as f:
            data = pickle.load(f)
            episode = 0
            self.transition_data = pd.DataFrame(
                columns=['episode', 'state', 'option', 'object_type', 'next_state', 'done', 'mask'])
            self.init_data = pd.DataFrame(columns=['state', 'option', 'can_execute'])

            n_dimensions = 108

            count = 0
            for (state, action, next_state, done), description in zip(data[0], data[2]):

                if count == max_transitions:
                    break

                if len(state) % n_dimensions != 0:
                    state = self.extend(state)
                    next_state = self.extend(next_state)

                state = np.reshape(state, (-1, n_dimensions))
                next_state = np.reshape(next_state, (-1, n_dimensions))

                # sort the objects in ascending object type order
                state = state[state[:, -1].argsort()]
                next_state = next_state[next_state[:, -1].argsort()]

                mask = self.compute_mask(state, next_state)
                object_type = tuple(state[mask][:, -1].astype(int))  # we have the object type, so let's use it!
                self.transition_data.loc[len(self.transition_data)] = [episode, state, action, object_type,
                                                                       next_state,
                                                                       done, mask]
                if done:
                    episode += 1
                count += 1

            seen_states = set()
            for (state, option, can_execute), desc in zip(data[1], data[2]):

                # PROCESS ONLY N UNIQUE STATES!
                temp = hash(tuple(state))
                if len(seen_states) < max_transitions:
                    seen_states.add(temp)
                if len(seen_states) >= max_transitions:
                    if temp not in seen_states:
                        continue

                if len(state) % n_dimensions != 0:
                    state = self.extend(state)

                state = np.reshape(state, (-1, n_dimensions))
                state = state[state[:, -1].argsort()]
                self.init_data.loc[len(self.init_data)] = [state, option, bool(can_execute)]

    # def load(self, file):
    #
    #     with open(file, 'rb') as f:
    #         data = pickle.load(f)
    #         episode = 0
    #         self.transition_data = pd.DataFrame(
    #             columns=['episode', 'state', 'option', 'object', 'next_state', 'done', 'mask'])
    #         self.init_data = pd.DataFrame(columns=['state', 'option', 'can_execute'])
    #
    #         n_dimensions = 108
    #
    #         for (state, action, next_state, done), description in zip(data[0], data[2]):
    #             object_ids = [self._extract_object(d, episode > 0) for d in description]
    #
    #             # print("Unique object IDs: {}".format(len(self.objects)))
    #             prev_obj = object_ids[0]
    #             temp = list()
    #             next_temp = list()
    #             grouped_state = list()
    #             grouped_next_state = list()
    #             for i in range(len(state)):
    #                 id = object_ids[i]
    #                 if id != prev_obj and i != 0:
    #                     grouped_state.append(np.array(temp))
    #                     grouped_next_state.append(np.array(next_temp))
    #                     prev_obj = id
    #                     temp.clear()
    #                     next_temp.clear()
    #                 temp.append(state[i])
    #                 next_temp.append(next_state[i])
    #             if len(temp) != len(next_temp) and len(temp) != n_dimensions:
    #                 raise ValueError
    #             grouped_state.append(np.array(temp))
    #             grouped_next_state.append(np.array(next_temp))
    #
    #
    #
    #             #A objects move each transition, so rearrange to be consistent
    #             grouped_state = self.rearrange(grouped_state, object_ids)
    #             grouped_next_state = self.rearrange(grouped_next_state, object_ids)
    #
    #             grouped_state = np.array(grouped_state)
    #             grouped_next_state = np.array(grouped_next_state)
    #             mask = self.compute_mask(grouped_state, grouped_next_state)
    #             # if len(mask) == 0:
    #             #     print('.')
    #
    #             object = 0
    #             #TODO  slight hack for now
    #             object = tuple(grouped_state[mask][:, -1])
    #
    #             # object = mask ## WHAT ABOUT THIS??
    #
    #             self.transition_data.loc[len(self.transition_data)] = [episode, grouped_state, action, object,
    #                                                                    grouped_next_state,
    #                                                                    done, mask]
    #             if done:
    #                 episode += 1
    #
    #         for (state, option, can_execute), desc in zip(data[1], data[2]):
    #             object_ids = [self.extract_all_objects(d) for d in desc]
    #             prev_obj = object_ids[0]
    #             temp = list()
    #             grouped_state = list()
    #             for i in range(len(state)):
    #                 id = object_ids[i]
    #                 if id != prev_obj:
    #                     grouped_state.append(np.array(temp))
    #                     prev_obj = id
    #                     temp.clear()
    #                 temp.append(state[i])
    #             grouped_state.append(np.array(temp))
    #
    #             #A objects move each transition, so rearrange to be consistent
    #             grouped_state = self.rearrange(grouped_state, object_ids)
    #             grouped_state = np.array(grouped_state)
    #             self.init_data.loc[len(self.init_data)] = [grouped_state, option, bool(can_execute)]


    def get_init_data(self):
            return self.init_data

    def get_transition_data(self):
        return self.transition_data


if __name__ == '__main__':
    env = AosmEnv()
    env.load("data/agent_centric_transitions_1000")
