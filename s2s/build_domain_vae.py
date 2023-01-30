from collections import defaultdict
from typing import List

import cv2
import numpy as np

from s2s.aosm_env import AosmEnv, AosmEnvVec, AosmEnvVAE
from s2s.core.build_model import build_model
from s2s.image import Image
from s2s.pddl.domain_description import PDDLDomain
from s2s.planner.mgpt_planner import mGPT
from s2s.utils import make_path, load, save
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

def find(v, y):
    for x in v:
        if 'symbol_{}'.format(y) in x.name:
            return x

def join(estimators):
    mask = list()
    for predicate in estimators:
        mask.extend(predicate.type_mask)

    samples = np.hstack([predicate.sample(100) for predicate in estimators])
    return samples, mask


def show_syms(env, vocab, symbols, title=None, count=None):

    syms = [find(vocab, x) for x in symbols]

    data, mask = join(syms)
    samples = np.full((100, env.observation_space.shape[0]), np.nan)
    samples[:, mask] = data
    im = Image.merge([env.render_state(state, agent_alpha=0.5) for state in samples])
    plt.imshow(np.uint8(im))
    if title is not None:
        plt.title(title)
    if count is not None:
        Image.save(im, '{}.png'.format(count))
        # plt.savefig('{}.png'.format(count))
    else:
        plt.show()

def write_clashes(save_dir):
    vocabulary = load('{}/predicates.pkl'.format(save_dir))
    clash = defaultdict(list)
    for v in vocabulary:
        mask = tuple(v.type_mask)
        clash[mask].append(v)
    with open(make_path(save_dir, 'clashes.txt'), 'w') as file:
        for _, syms in clash.items():
            line = ' '.join([x.name[x.name.rindex('_') + 1:] for x in syms])
            file.write(line + '\n')

if __name__ == '__main__':

    # type = 'vec'
    dim = 4
    type = 'vae'
    save_dir = '../data/output/baxter_data_{}_{}'.format(type.lower(), dim)

    env = AosmEnvVAE(dim=dim)
    env.load("../data/input/baxter_images_webcam_plates/action_webcam.txt",
             "../data/input/baxter_images_webcam_plates/valid_actions_webcam.txt",
             "../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy",
             "../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy")




    vocabulary = load('{}/predicates.pkl'.format(save_dir))
    while True:
        line = input()
        syms = list(map(int, line.split(' ')))
        show_syms(env, vocabulary, syms)

    # show(vocabulary, [5,7])
    # show(vocabulary, [5, 10])
    #
    # exit(0)


    # show_images("../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy", env)

    # domain = load(make_path(save_dir, 'domain.pkl'))
    # save(domain.to_simple(), make_path(save_dir, 'domain.txt'), binary=False)
    # print(domain.to_simple())
    # exit(0)

    # Build the PDDL model
    domain, problem = build_model(env,
                                  save_dir=save_dir,
                                  n_jobs=20,
                                  seed=0,
                                  effect_bandwidth_range=np.linspace(0.0001, 0.1, 100),
                                  # np.arange(0.001, 0.1, 0.001))
                                  precondition_c_range=np.linspace(5, 20, 20),
                                  precondition_gamma_range=np.linspace(1, 1, 20),
                                  max_precondition_samples=10000,
                                  low_threshold=0.5,
                                  brute_force_features=True,
                                  # mask_removal_threshold=0.01,
                                  # mask_addition_threshold=0.1,
                                  init_min_samples=np.inf,
                                  effect_min_samples=np.inf,  # options already subgoal!
                                  specify_rewards=False,
                                  visualise=True,
                                  verbose=True)
