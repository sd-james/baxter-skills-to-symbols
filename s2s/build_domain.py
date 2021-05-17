import itertools
from typing import List

import cv2
import numpy as np

from s2s.baxter_env import BaxterEnv, BaxterEnvVec
from s2s.build_domain_vae import show_syms, write_clashes, join
from s2s.core.build_model import build_model
from s2s.image import Image
from s2s.pddl.domain_description import PDDLDomain
from s2s.planner.mgpt_planner import mGPT
from s2s.utils import make_path, load, save, make_dir
import matplotlib.pyplot as plt

# def make_video(domain: PDDLDomain, path: List[str], directory='.') -> None:
#     """
#     Create a video of the agent solving the task
#     :param domain: the PDDL domain
#     :param path: the list of PDDL operators to execute
#     :param directory: the directory where the video should be written to
#     """
#     plan = list()
#     for option in path:
#         operator_idx = int(option[option.rindex('-') + 1:])
#         operator = domain.operators[operator_idx]
#
#         # check to make sure something weird didn't happen!
#         name = '{}-partition-{}-{}'.format(env.describe_option(operator.option), operator.partition, operator_idx)
#         if name != option:
#             raise ValueError("Expected {} but got {}".format(option, name))
#
#         plan.append(operator)
#
#     # make video!!
#     frames = TreasureGame.animate([operator.option for operator in plan])
#     height, width, layers = np.array(frames[0]).shape
#     print("Writing to video {}.mp4".format(env.name))
#     file = make_path(directory, "{}.mp4".format(env.name))
#     video = cv2.VideoWriter(file, -1, 75, (width, height))
#     for frame in frames:
#         video.write(cv2.cvtColor(np.array(frame), cv2.COLOR_RGB2BGR))
#     video.release()
from s2s.view_images import reshape


def show_images(path, env):
    data = np.load(path)
    for i in range(data.shape[-1]):
        state = data[:, :, :, i]
        a = np.reshape(reshape(state, resize=8, grey=True), (135, 240))
        state = env.compress(state)
        b = env._render_state(state)
        plt.subplot(1, 2, 1)
        plt.imshow(a)
        plt.subplot(1, 2, 2)
        plt.imshow(b)
        plt.show()


def produce_combination(env, syms):
    syms = [x for x in syms if x is not None]
    data, mask = join(syms)
    samples = np.full((100, env.observation_space.shape[0]), np.nan)
    samples[:, mask] = data
    im = Image.merge([env.render_state(state, agent_alpha=0.5) for state in samples])
    return syms, im


def save_all(save_dir, env, vocab):
    dir = make_path(save_dir, 'all_combinations')
    make_dir(dir, clean=True)
    factors = dict()
    for prop in vocab:
        if prop.name == 'notfailed':
            continue
        factor = tuple(prop.mask)
        if factor not in factors:
            factors[factor] = [None]
        factors[factor].append(prop)
    all_factors = list()
    for _, symbols in factors.items():
        all_factors.append(symbols)
    for syms in list(itertools.product(*all_factors)):
        if all(x is None for x in syms):
            continue
        syms, image = produce_combination(env, syms)
        name = '_'.join(x.name for x in syms)
        Image.save(image, '{}/{}.png'.format(dir, name))

if __name__ == '__main__':

    small = True
    n_components = 5
    # type = 'vec'
    type = 'FastICA_{}'.format(n_components)
    if small:
        type = '{}_small'.format(type)
    save_dir = '../data/output/baxter_data_{}'.format(type.lower(), small)


    env = BaxterEnv(type, n_components, blue=False, small=small)
    env.load("../data/input/baxter_images_webcam_plates/action_webcam.txt",
             "../data/input/baxter_images_webcam_plates/valid_actions_webcam.txt",
             "../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy",
             "../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy")

    vocabulary = load('{}/predicates.pkl'.format(save_dir))
    save_all(save_dir, env, vocabulary)
    exit(0)
    #

    count = 0
    while True:
        line = input()
        syms = list(map(int, line.split(' ')))
        show_syms(env, vocabulary, syms, count=count)
        count += 1
    #

    # domain = load(make_path(save_dir, 'domain.pkl'))
    # save(domain.to_simple(), make_path(save_dir, 'domain.txt'), binary=False)
    # print(domain.to_simple())
    # exit(0)

    # Build the PDDL model
    domain, problem = build_model(env,
                                  save_dir=save_dir,
                                  n_jobs=8,
                                  seed=0,
                                  # effect_bandwidth_range=np.linspace(0.0001, 0.1, 100),
                                  # np.arange(0.001, 0.1, 0.001))
                                  brute_force_features=True,
                                  precondition_c_range=np.linspace(2, 20, 20),
                                  precondition_gamma_range=np.linspace(4, 24, 20),
                                  max_precondition_samples=10000,
                                  init_min_samples=np.inf,
                                  effect_min_samples=np.inf,  # options already subgoal!
                                  specify_rewards=False,
                                  visualise=True,
                                  verbose=True)
