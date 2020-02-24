import os
import random
import time

import numpy as np
import pygame
from gym.spaces import Discrete, Box

from domain import mine_domain_drawer
from domain.mine_domain import create_options
from domain.mine_domain import mine_domain
from domain.objects import goldcoin, key, handle, bolt
from s2s.env import S2SEnv
from s2s.utils import make_path


class TreasureGame(S2SEnv):
    def __init__(self, force_render=False, fast_render=True):

        dir = os.path.dirname(os.path.realpath(__file__))

        self._env = mine_domain(make_path(dir, 'domain.txt'), make_path(dir, 'domain-objects.txt'),
                                make_path(dir, 'domain-interactions.txt'))
        self.drawer = None

        self.option_list, self.option_names = create_options(self._env)
        self.action_space = Discrete(len(self.option_list))
        s = self._env.get_state()
        self.observation_space = Box(0, 1, shape=(len(s),))
        self.force_render = force_render
        self.fast_render = fast_render

    def reset(self):
        dir = os.path.dirname(os.path.realpath(__file__))

        self._env = mine_domain(make_path(dir, 'domain.txt'), make_path(dir, 'domain-objects.txt'),
                                make_path(dir, 'domain-interactions.txt'))
        if self.force_render:
            self.drawer = mine_domain_drawer.drawer(self._env)
        temp = None if self.fast_render else self.drawer
        self.option_list, self.option_names = create_options(self._env, temp)
        return self._env.get_state()

    @property
    def available_mask(self):
        return np.array([int(o.can_run()) for o in self.option_list])

    def step(self, action):
        option = self.option_list[action]
        r = option.run()
        state = self._env.get_state()
        done = self._env.player_got_goldcoin()
        return state, r, done, {}

    def render(self, mode='human'):

        if self.drawer is None:
            self.drawer = mine_domain_drawer.drawer(self._env)

        self.drawer.draw_domain()
        return pygame.surfarray.array3d(self.drawer.screen)

    def _render_state(self, state: np.ndarray) -> np.ndarray:
        desc = self._env.get_state_descriptors()
        self._env.playerx = int(state[desc.index("playerx")] * self._env.width)
        self._env.playery = int(state[desc.index("playery")] * self._env.height)

        handle_no = 1

        for obj in self._env.objects:
            if (obj.has_state()):
                if (isinstance(obj, goldcoin) or isinstance(obj, key)):
                    x_label = type(obj).__name__ + ".x"
                    y_label = type(obj).__name__ + ".y"
                    xval = int(state[desc.index(x_label)] * self._env.width)
                    yval = int(state[desc.index(y_label)] * self._env.height)
                    obj.move_to_xy(xval, yval)
                elif (isinstance(obj, handle)):
                    label = 'handle' + str(handle_no) + '.angle'
                    angle = state[desc.index(label)]
                    obj.set_angle(angle)
                    obj.previously_triggered = True
                    handle_no = handle_no + 1
                elif (isinstance(obj, bolt)):
                    val = (state[desc.index("bolt.locked")] > 0.5)
                    obj.set_val(val)

        for obj in self._env.objects:
            if (isinstance(obj, handle)):
                self._env.previously_triggered = False
        if self.drawer is None:
            self.drawer = mine_domain_drawer.drawer(self._env)
        return pygame.surfarray.array3d(self.drawer.draw_to_surface()).swapaxes(0, 1)  # swap because pygame


if __name__ == '__main__':

    env = TreasureGame()

    random.seed(0)
    np.random.seed(0)

    for i in range(5):
        state = env.reset()
        env.render()
        done = False
        j = 0
        while not done:
            print(j)
            action = np.random.choice(np.arange(env.action_space.n), p=env.available_mask / env.available_mask.sum())
            state, reward, done, _ = env.step(action)
            # print(state)
            # print(reward)
            # print(done)
            # print()
            env.render()
            time.sleep(0.05)
            j += 1