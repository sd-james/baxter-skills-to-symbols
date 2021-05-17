import warnings
from typing import List, Dict, Iterable

import numpy as np

from s2s.env.s2s_env import S2SEnv
from s2s.image import Image
from s2s.core.partitioned_option import PartitionedOption
from s2s.pddl.proposition import Proposition
from s2s.utils import show, make_dir, make_path

import pandas as pd


def visualise_symbols(directory: str, env: S2SEnv, symbols: Iterable[Proposition], verbose=False, **kwargs) -> None:
    """
    Visualise a set symbols
    :param directory: the directory to save them to
    :param env: the domain
    :param symbols: the list of propositions
    :param verbose: the verbosity level
    """

    n_samples = 100
    make_dir(directory)  # make directory if not exists
    for symbol in symbols:
        show("Visualising {}".format(symbol), verbose)
        samples = np.full((n_samples, env.observation_space.shape[0]), np.nan)
        samples[:, symbol.mask] = symbol.sample(n_samples)
        if kwargs.get('render', None) is not None:
            im = kwargs.get('render')(samples)
        else:
            im = Image.merge([env.render_state(state, agent_alpha=0.5) for state in samples])
        filename = '{}_{}.bmp'.format(symbol, symbol.mask)
        Image.save(im, make_path(directory, filename), mode='L' if len(im.shape) == 2 else 'RGB')


def visualise_partitions(directory: str,
                         env: S2SEnv,
                         option_partitions: Dict[int, List[PartitionedOption]],
                         verbose=False,
                         **kwargs) -> None:
    """
    Visualise a set of partitions and write them to file
    :param directory: the directory to save images to
    :param env: the domain
    :param option_partitions: a dictionary listing, for each option, a list of partitions
    :param verbose: the verbosity level
    :return: a mapping that stores for each option and partition, an image of the start and end states
    (with associated probabilities)
    """
    option_descriptor = kwargs.get('option_descriptor',
                                   lambda option: 'Option-{}'.format(option))  # a function that describes the operator
    make_dir(directory)
    for option, partitions in option_partitions.items():

        show("Visualising option {} with {} partition(s)".format(option, len(partitions)), verbose)

        for partition in partitions:

            effects = list()
            for probability, states, _, next_states, mask, in partition.effects():
                start = env.render_states(states, alpha_object=1, alpha_player=1)
                end = env.render_states(next_states)
                effects.append((probability, start, mask, end))
            show("Visualising option {}, partition {}".format(option, partition.partition), verbose)
            for i, (probability, start, masks, effect) in enumerate(effects):
                filename = '{}-{}-init.bmp'.format(option_descriptor(option), partition.partition)

                Image.save(start, make_path(directory, filename), mode=mode(start))
                filename = '{}-{}-eff-{}-{}-{}.bmp'.format(option_descriptor(option), partition.partition, i,
                                                           round(probability * 100), list(np.unique(masks)))
                Image.save(effect, make_path(directory, filename), mode=mode(effect))


def mode(image):
    return 'L' if len(image.shape) == 2 else 'RGB'


def pd2np(data: pd.Series, make_rectangle=False):
    """
    Convert a Pandas series of arrays to a numpy 2D array
    :param data: the series
    :return: a numpy 2D array
    """
    if make_rectangle:
        return make_2d(data.values)
    return np.array([np.asfarray(x) for x in data.values])


def make_2d(data: np.ndarray):
    """
    Convert an array of arrays with only one dimension to its two dimensional representation.
    """
    return np.array([x for x in data])


def select_rows(data: pd.DataFrame, indices: Iterable, reset_index=True) -> pd.DataFrame:
    """
    Select a set of rows from a data frame
    :param data: the data frame
    :param indices: the row indices
    :param reset_index: whether the indices should be reset
    :return: the subframe
    """""
    frame = data.loc[indices]
    if reset_index:
        return frame.reset_index(drop=True)
    return frame


def visualise_preconditions(directory: str,
                            env: S2SEnv,
                            preconditions,
                            initiation_data: pd.DataFrame,
                            verbose=False,
                            **kwargs) -> None:
    """
    Visualise a set of partitions and write them to file
    :param directory: the directory to save images to
    :param env: the domain
    :param option_partitions: a dictionary listing, for each option, a list of partitions
    :param verbose: the verbosity level
    :return: a mapping that stores for each option and partition, an image of the start and end states
    (with associated probabilities)
    """

    positive_threshold = kwargs.get('positive_threshold', 0.5)

    option_descriptor = kwargs.get('option_descriptor',
                                   lambda option: 'Option-{}'.format(option))  # a function that describes the operator
    make_dir(directory, clean=False)
    for (option, partition), classifier in preconditions.items():

        show("Visualising precondition for option {}, partition {}".format(option, partition), verbose)

        data = initiation_data.loc[initiation_data['option'] == option].reset_index(drop=True)
        state_data = pd2np(data['state'], make_rectangle=True)
        states = select_rows(data,
                             [i for i, x in enumerate(state_data) if classifier.probability(x) > positive_threshold])

        if len(states) == 0:
            warnings.warn("No states were positive for option {}, partition {}".format(option, partition))
            continue

        states = pd2np(states['state'], make_rectangle=True)
        image = env.render_states(states[:, classifier.mask], alpha_object=1, alpha_player=1, mask=classifier.mask,
                                  masked=True, randomly_sample=False)


        filename = '{}-{}-precondition-{}.bmp'.format(option_descriptor(option), partition, classifier.mask)
        Image.save(image, make_path(directory, filename), mode=mode(image))


def visualise_effects(directory: str, env, effects, verbose=False,
                      **kwargs) -> None:
    option_descriptor = kwargs.get('option_descriptor',
                                   lambda option: 'Option-{}'.format(option))  # a function that describes the operator

    n_dims = env.observation_space.shape[0]

    n_samples = 100
    make_dir(directory)  # make directory if not exists
    for (option, partition), effs in effects.items():
        for i, (prob, effect, _) in enumerate(effs):

            show("Visualising effect for option {}, partition {}".format(option, partition), verbose)
            if len(effect.mask) == 0:
                continue
            image = env.render_states(effect.sample(n_samples), mask=effect.mask, masked=True, **kwargs)
            filename = '{}-eff{}.{}-{}.bmp'.format(option_descriptor(option), partition, prob, list(effect.mask))
            if len(image.shape) == 3:
                mode = 'RGB'
            else:
                mode = 'L'
            Image.save(image, make_path(directory, filename), mode=mode)
