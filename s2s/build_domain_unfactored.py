from typing import List

import cv2
import numpy as np

from s2s.aosm_env import AosmEnv, AosmEnvVec
from s2s.core.build_model import build_model
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


if __name__ == '__main__':

    n_components = 5
    type = 'PCA_SVD'
    save_dir = '../data/output/baxter_data_{}'.format(type.lower())

    env = AosmEnv(type, n_components)
    env.load("../data/input/baxter_images_webcam_plates/action_webcam.txt",
             "../data/input/baxter_images_webcam_plates/valid_actions_webcam.txt",
             "../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy",
             "../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy")


    # Build the PDDL model
    domain, problem = build_model(env,
                                  save_dir=save_dir,
                                  n_jobs=8,
                                  seed=0,
                                  # effect_bandwidth_range=np.linspace(0.0001, 0.1, 100),
                                  # np.arange(0.001, 0.1, 0.001))
                                  precondition_c_range=np.linspace(2, 20, 20),
                                  precondition_gamma_range=np.linspace(4, 24, 20),
                                  max_precondition_samples=10000,
                                  init_min_samples=np.inf,
                                  effect_min_samples=np.inf,  # options already subgoal!
                                  specify_rewards=False,
                                  visualise=True,
                                  verbose=True)
