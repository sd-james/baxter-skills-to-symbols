import multiprocessing
import random
from functools import partial
from typing import List

import numpy as np
import pandas as pd
from sklearn.cluster import DBSCAN

from s2s.env.envs import make_env
from s2s.env.pca.base_pca import PCA_N
from s2s.env.s2s_env import S2SWrapper
from s2s.pddl.pddl import Proposition
from s2s.pddl.typed_operator import TypedPDDLOperator
from s2s.utils.utils import show, run_parallel, compute_mask, flatten, make_dir

__author__ = 'Steve James and George Konidaris'


def collect_data(domain_version: int, options_per_episode: int, max_timestep=np.inf, max_episode=np.inf, verbose=False,
                 seed=None, n_jobs=1, **kwargs) -> (
        pd.DataFrame, pd.DataFrame):
    """
    Collect data from the environment through uniform random exploration in parallel

    :param env: the environment
    :param max_timestep: the maximum number of timesteps in total (not to be confused with maximum time steps per episode) Default is infinity
    :param max_episode: the maximum number of episodes. Default is infinity
    :param verbose: whether to print additional information
    :param seed: the random seed. Use for reproducibility
    :param n_jobs: the number of processes to spawn to collect data in parallel. If -1, use all CPUs
    :return: data frames holding transition and initation data
    """
    if max_timestep == np.inf and max_episode == np.inf:
        raise ValueError('Must specify at least a maximum timestep or episode limit')

    if seed is not None:
        random.seed(seed)
        np.random.seed(seed)

    if n_jobs == -1:
        n_jobs = multiprocessing.cpu_count()

    # run collection in parallel
    max_timestep /= n_jobs
    max_episode /= n_jobs

    functions = [
        partial(_collect_data, domain_version, options_per_episode, np.random.randint(0, 1000000), max_timestep,
                max_episode, verbose, int(max_episode * i), **kwargs)
        for i in range(n_jobs)]

    results = run_parallel(functions)
    transition_data = pd.concat([x[0] for x in results], ignore_index=True)
    initiation_data = pd.concat([x[1] for x in results], ignore_index=True)
    return transition_data, initiation_data


def _collect_data(domain_version: int, options_per_episode: int, seed=None, max_timestep=np.inf, max_episode=np.inf,
                  verbose=False,
                  episode_offset=0, **kwargs) -> (
        pd.DataFrame, pd.DataFrame):
    """
    Collect data from the environment through uniform random exploration
    :param env: the environment
    :param seed: the random seed. Use for reproducibility
    :param max_timestep: the maximum number of timesteps in total (not to be confused with maximum time steps per episode) Default is infinity
    :param max_episode: the maximum number of episodes. Default is infinity
    :param verbose: whether to print additional information
    :return: data frames holding transition and initation data
    """

    env = make_env(domain_version)
    env = S2SWrapper(env, options_per_episode)

    if seed is not None:
        random.seed(seed)
        np.random.seed(seed)

    transition_data = pd.DataFrame(
        columns=['episode', 'state', 'object_state', 'option', 'object', 'reward', 'next_state', 'next_object_state',
                 'done', 'goal_achieved', 'mask', 'object_mask', 'next_options'])
    initiation_data = pd.DataFrame(columns=['state', 'object_state', 'option', 'object', 'can_execute'])

    n_episode = 0
    n_timesteps = 0
    while n_episode < max_episode and n_timesteps < max_timestep:
        show('Running episode {}'.format(n_episode + episode_offset), verbose)
        state, object_state = env.reset()
        done = False
        ep_timestep = 0
        while not done and n_timesteps < max_timestep:

            allowed, disallowed = env.admissable_actions(positive_only=False)
            # exploration goes here!
            action = np.random.choice(allowed)
            next_state, next_object_state, reward, done, info = env.step(action)
            failed = info.get('option_failed', False)

            can_execute = dict()
            for option in disallowed:
                can_execute[(option.id, option.object.id)] = False
            for option in allowed:
                can_execute[(option.id, option.object.id)] = True  # overwrite if necessary

            # timestep only counts if we actually executed an option
            if not failed:
                n_timesteps += 1
                # mask = np.where(np.array(state) != np.array(next_state))[0]  # check which indices are not equal!
                mask = np.where(np.array(state) != np.array(next_state))[0]
                object_mask = compute_mask(object_state, next_object_state)
                next_options = info.get('next_actions', np.array([]))
                success = info.get('goal_achieved', False)
                show("Goal achieved!", verbose and success)
                transition_data.loc[len(transition_data)] = [n_episode + episode_offset, state, object_state, action.id,
                                                             action.object.id, reward, next_state, next_object_state,
                                                             done, success, mask,
                                                             object_mask, next_options]
                ep_timestep += 1
            for (option_id, object_id), label in can_execute.items():
                initiation_data.loc[len(initiation_data)] = [state, object_state, option_id, object_id, bool(label)]

            show('\tStep: {}'.format(ep_timestep), verbose and ep_timestep > 0 and ep_timestep % 20 == 0)
            state = next_state
            object_state = next_object_state

        transition_data.to_pickle('full_data_0/_transition_{}_{}.pkl'.format(seed, n_episode), compression='gzip')
        initiation_data.to_pickle('full_data_0/_init_{}_{}.pkl'.format(seed, n_episode), compression='gzip')
        n_episode += 1

    show("Run finished!", verbose)
    return transition_data, initiation_data


def collect_data_with_existing(domain_version: int, options_per_episode: int,
                               previous_predicates, previous_operators,
                               max_timestep=np.inf, max_episode=np.inf, verbose=False,
                               seed=None, n_jobs=1, **kwargs) -> (
        pd.DataFrame, pd.DataFrame):
    """
    Collect data from the environment through non-uniform random exploration

    :param env: the environment
    :param max_timestep: the maximum number of timesteps in total (not to be confused with maximum time steps per episode) Default is infinity
    :param max_episode: the maximum number of episodes. Default is infinity
    :param verbose: whether to print additional information
    :param seed: the random seed. Use for reproducibility
    :param n_jobs: the number of processes to spawn to collect data in parallel. If -1, use all CPUs
    :return: data frames holding transition and initation data
    """
    if max_timestep == np.inf and max_episode == np.inf:
        raise ValueError('Must specify at least a maximum timestep or episode limit')

    if seed is not None:
        random.seed(seed)
        np.random.seed(seed)

    if n_jobs == -1:
        n_jobs = multiprocessing.cpu_count()

    # run collection in parallel
    max_timestep /= n_jobs
    max_episode /= n_jobs

    functions = [
        partial(_collect_data_with_existing, domain_version, options_per_episode, previous_predicates,
                previous_operators, np.random.randint(0, 1000000), max_timestep,
                max_episode, verbose, int(max_episode * i), **kwargs)
        for i in range(n_jobs)]

    results = run_parallel(functions)
    transition_data = pd.concat([x[0] for x in results], ignore_index=True)
    initiation_data = pd.concat([x[1] for x in results], ignore_index=True)
    return transition_data, initiation_data


def _collect_data_with_existing(domain_version: int, options_per_episode: int, previous_predicates, previous_operators,
                                seed=None, max_timestep=np.inf, max_episode=np.inf,
                                verbose=False,
                                episode_offset=0, **kwargs) -> (
        pd.DataFrame, pd.DataFrame):
    """
    Collect data from the environment through uniform random exploration
    :param env: the environment
    :param seed: the random seed. Use for reproducibility
    :param max_timestep: the maximum number of timesteps in total (not to be confused with maximum time steps per episode) Default is infinity
    :param max_episode: the maximum number of episodes. Default is infinity
    :param verbose: whether to print additional information
    :return: data frames holding transition and initation data
    """

    env = make_env(domain_version)
    env = S2SWrapper(env, options_per_episode)

    if seed is not None:
        random.seed(seed)
        np.random.seed(seed)

    transition_data = pd.DataFrame(
        columns=['episode', 'state', 'object_state', 'option', 'object', 'reward', 'next_state', 'next_object_state',
                 'done', 'goal_achieved', 'mask', 'object_mask', 'next_options'])
    initiation_data = pd.DataFrame(columns=['state', 'object_state', 'option', 'object', 'can_execute'])

    n_episode = 0
    n_timesteps = 0
    history = History()
    while n_episode < max_episode and n_timesteps < max_timestep:
        show('Running episode {}'.format(n_episode + episode_offset), verbose)
        try:
            state, object_state = env.reset()
        except:
            print("RESET FAILED!")
            env = make_env(domain_version)
            env = S2SWrapper(env, options_per_episode)
            continue

        done = False
        ep_timestep = 0
        while not done and n_timesteps < max_timestep:

            allowed, disallowed = env.admissable_actions(positive_only=False)
            # exploration goes here!
            action = _do_exploration(state, object_state, allowed, previous_predicates, previous_operators, history)
            next_state, next_object_state, reward, done, info = env.step(action)
            failed = info.get('option_failed', False)

            can_execute = dict()
            for option in disallowed:
                can_execute[(option.id, option.object.id)] = False
            for option in allowed:
                can_execute[(option.id, option.object.id)] = True  # overwrite if necessary

            # timestep only counts if we actually executed an option
            if not failed:
                n_timesteps += 1
                # mask = np.where(np.array(state) != np.array(next_state))[0]  # check which indices are not equal!
                mask = np.where(np.array(state) != np.array(next_state))[0]
                object_mask = compute_mask(object_state, next_object_state)
                next_options = info.get('next_actions', np.array([]))
                success = info.get('goal_achieved', False)
                show("Goal achieved!", verbose and success)
                transition_data.loc[len(transition_data)] = [n_episode + episode_offset, state, object_state, action.id,
                                                             action.object.id, reward, next_state, next_object_state,
                                                             done, success, mask,
                                                             object_mask, next_options]
                ep_timestep += 1
            for (option_id, object_id), label in can_execute.items():
                initiation_data.loc[len(initiation_data)] = [state, object_state, option_id, object_id, bool(label)]

            show('\tStep: {}'.format(ep_timestep), verbose and ep_timestep > 0 and ep_timestep % 20 == 0)
            state = next_state
            object_state = next_object_state

        transition_data.to_pickle('_transition_{}_{}.pkl'.format(seed, n_episode), compression='gzip')
        initiation_data.to_pickle('_init_{}_{}.pkl'.format(seed, n_episode), compression='gzip')
        n_episode += 1

    show("Run finished!", verbose)
    return n_timesteps
    return transition_data, initiation_data


def _do_exploration(state: np.ndarray, object_state: np.ndarray, options: List,
                    previous_predicates: List[Proposition], previous_operators: List[TypedPDDLOperator],
                    history: 'History'):
    """
    Prioritise:
    1. options with no operator
    2. options with operator but missing link
    3. random options
    """

    option = np.random.choice(options)
    return option

    for option in options:
        operators = [x for x in previous_operators if x.option == option.id and x.score(object_state) > 0.1]
        if len(operators) == 0 and history.get(state, object_state) != option.id:
            print("MISSING!")
            history.put(state, object_state, option.id)
            return option
        for operator in operators:
            has_slot = False
            for pre, eff in operator.slots():
                if np.linalg.norm(pre - state, ord=np.inf) < 1:
                    has_slot = True
                    break
            if has_slot:
                break
            operator.link(state)
            print("LINK!")
            return option

    print("RANDOM!")
    option = np.random.choice(options)
    history.put(state, object_state, option.id)
    return option


class History:

    def __init__(self):
        self._history = dict()

    def put(self, state, object_state, option):
        state = tuple(state)
        object_state = tuple(flatten([object_state]).squeeze())
        self._history[(state, object_state)] = option


    def get(self, state, object_state) -> int:
        object_state = flatten([object_state]).squeeze()
        for (s, o), option in self._history.items():
            s = list(s)
            o = list(o)
            if np.linalg.norm(state - s, ord=np.inf) >= 1:
                continue
            if np.linalg.norm(object_state[-5:] - o[-5:], ord=np.inf) >= 1:
                continue

            return option
            data = np.vstack((o, object_state))
            data = data[:, 0:PCA_N]
            labels = set(DBSCAN(eps=0.05, min_samples=1).fit_predict(data))
            if len(labels) == 1:
                return option
        return -1


if __name__ == '__main__':
    task = 1

    make_dir('full_data_{}'.format(task), clean=False)
    t, i = collect_data(task, 500, 100000, 100, True, 0, n_jobs=1)
    t.to_pickle('full_data_{}/transition.pkl'.format(task), compression='gzip')
    i.to_pickle('full_data_{}/init.pkl'.format(task), compression='gzip')
