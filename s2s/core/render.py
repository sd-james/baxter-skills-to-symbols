import warnings

from typing import List, Dict, Iterable, Tuple

import numpy as np
import pandas as pd

from gym_minecraft_objects.envs.multiview_env import View
from s2s.env.envs import MultiS2SEnv
from s2s.env.s2s_env import S2SEnv
from s2s.estimators.estimators import PreconditionClassifier, StateDensityEstimator, RewardRegressor
from s2s.utils.image import Image
from s2s.core.partitioned_option import PartitionedOption
from s2s.pddl.pddl import Proposition
from s2s.portable.problem_symbols import _ProblemProposition
from s2s.utils.utils import show, make_dir, make_path, pd2np, select_rows, get_column_by_view
import matplotlib.pyplot as plt

def visualise_symbols(directory: str, env: MultiS2SEnv, symbols: Iterable[Proposition], verbose=False,
                      **kwargs) -> None:
    """
    Visualise a set symbols
    :param directory: the directory to save them to
    :param env: the domain
    :param symbols: the list of propositions
    :param verbose: the verbosity level
    """

    view = kwargs.get('view', View.PROBLEM)
    n_samples = 100
    make_dir(directory)  # make directory if not exists
    for symbol in symbols:
        show("Visualising {}".format(symbol), verbose)
        if kwargs.get('short_name', False):
            filename = '{}.bmp'.format(symbol)
        else:
            filename = '{}_{}.bmp'.format(symbol, symbol.mask)

        if view == View.PROBLEM:
            _visualise_location(directory, symbol)
        else:
            im = env.render_states(symbol.sample(n_samples), mask=symbol.mask, masked=True)
            Image.save(im, make_path(directory, filename), mode='RGB')


def _visualise_location(directory: str, symbol: _ProblemProposition):
    mean = np.mean(symbol.data, axis=0)
    data = np.zeros(shape=(41, 11))
    data[0, :] = 1
    data[-1, :] = 1
    data[:, 0] = 1
    data[:, -1] = 1
    data[-7 - 1, :] = 1
    data[-15 - 1, :] = 1
    data[-23 - 1, :] = 1
    data[-31 - 1, :] = 1
    row, col = 39 - int(mean[1]), int(10 - mean[0])
    data[row, col] = 0.5
    plt.figure(figsize=(6, 6))
    plt.pcolor(data[::-1])
    # plt.xlim(12, -1)  # decreasing time
    plt.savefig(make_path(directory, '{}-{}.png'.format(symbol.name, mean)))

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
    view = kwargs.get('view', View.PROBLEM)
    option_descriptor = kwargs.get('option_descriptor',
                                   lambda option: 'Option-{}'.format(option))  # a function that describes the operator
    make_dir(directory, clean=False)
    for option, partitions in option_partitions.items():

        show("Visualising option {} with {} partition(s)".format(option, len(partitions)), verbose)

        for partition in partitions:

            effects = list()
            for probability, states, _, next_states, mask in partition.effects(view=view):
                start = env.render_states(states)
                end = env.render_states(next_states)
                effects.append((probability, start, mask, end))
            show("Visualising option {}, partition {}".format(option, partition.partition), verbose)
            for i, (probability, start, masks, effect) in enumerate(effects):
                filename = '{}-{}-init.bmp'.format(option_descriptor(option), partition.partition)
                Image.save(start, make_path(directory, filename), mode='RGB')
                filename = '{}-{}-eff-{}-{}-{}.bmp'.format(option_descriptor(option), partition.partition, i,
                                                           round(probability * 100), list(np.unique(masks)))
                Image.save(effect, make_path(directory, filename), mode='RGB')


def visualise_effects(directory: str,
                      env: S2SEnv,
                      effects: Dict[Tuple[int, int], List[Tuple[float, StateDensityEstimator, RewardRegressor]]],
                      verbose=False,
                      **kwargs):
    """
    Visualise a set of effects and write them to file
    :param directory: the directory to save images to
    :param env: the domain
    :param effects: a dictionary listing, for each option and partition, the effect with associated probability
    :param verbose: the verbosity level
    :return: a mapping that stores for each option and partition, an image of the start and end states
    (with associated probabilities)
    """
    view = kwargs.get('view', View.PROBLEM)  # which view was used to learn the classifier
    n_samples = 100
    option_descriptor = kwargs.get('option_descriptor',
                                   lambda option: 'Option-{}'.format(option))  # a function that describes the operator
    make_dir(directory, clean=False)
    for (option, partition), effect in effects.items():

        show("Visualising effect for option {}, partition {}".format(option, partition), verbose)

        for k, (prob, distribution, _) in enumerate(effect):
            im = env.render_states(distribution.sample(n_samples), mask=distribution.mask, masked=True)
            filename = '{}-eff{}.{}-{}.bmp'.format(option_descriptor(option), partition, k + 1, list(distribution.mask))
            filename = make_path(directory, filename)
            Image.save(im, filename, mode='RGB')


def visualise_preconditions(directory: str,
                            env: S2SEnv,
                            preconditions: Dict[Tuple[int, int], PreconditionClassifier],
                            initiation_data: pd.DataFrame,
                            verbose=False,
                            **kwargs) -> None:
    """
    Visualise a set of preconditions and write them to file
    :param directory: the directory to save images to
    :param env: the domain
    :param preconditions: a dictionary listing, for each option and partition, a classifier
    :param verbose: the verbosity level
    """
    view = kwargs.get('view', View.PROBLEM)  # which view was used to learn the classifier
    render_view = kwargs.get('render_view', view)  # which view should be drawn

    positive_threshold = kwargs.get('positive_threshold', 0.7)

    option_descriptor = kwargs.get('option_descriptor',
                                   lambda option: 'Option-{}'.format(option))  # a function that describes the operator
    make_dir(directory, clean=False)
    for (option, partition), classifier in preconditions.items():

        show("Visualising precondition for option {}, partition {}".format(option, partition), verbose)

        data = initiation_data.loc[initiation_data['option'] == option].reset_index(drop=True)
        column = get_column_by_view('state', view)
        state_data = pd2np(data[column], make_rectangle=True)

        states = select_rows(data,
                             [i for i, x in enumerate(state_data) if classifier.probability(x) > positive_threshold])

        if len(states) == 0:
            warnings.warn("No states were positive for option {}, partition {}".format(option, partition))
            continue

        state_column = get_column_by_view('state', render_view)
        image = env.render_states(pd2np(states[state_column], make_rectangle=True), mask=classifier.type_mask)
        filename = '{}-{}-precondition-{}.bmp'.format(option_descriptor(option), partition, classifier.type_mask)
        Image.save(image, make_path(directory, filename), mode='RGB')
