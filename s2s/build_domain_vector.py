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


if __name__ == '__main__':

    save_dir = '../data/output/baxter_data_vec'
    env = AosmEnvVec()
    env.load("../data/input/baxter_images_webcam_plates/action_webcam_with_april_fixed_formatting.txt",
             "../data/input/baxter_images_webcam_plates/valid_actions_webcam_with_april_fixed_formatting.txt")


    # Build the PDDL model
    domain, problem = build_model(env,
                                  save_dir=save_dir,
                                  n_jobs=8,
                                  seed=0,
                                  precondition_c_range=np.linspace(2, 20, 20),
                                  precondition_gamma_range=np.linspace(4, 24, 20),
                                  max_precondition_samples=10000,
                                  init_min_samples=np.inf,
                                  effect_min_samples=np.inf,  # options already subgoal!
                                  specify_rewards=False,
                                  visualise=True,
                                  verbose=True)
