import copy
from typing import List

import cv2
import numpy as np

from s2s.aosm_env import AosmEnv, AosmEnvVec
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
        plt.savefig('verify/{0:03d}.png'.format(count))
        Image.save(im, 'verify/plain-{0:03d}.png'.format(count))
    else:
        plt.show()


def make_syms(env, vocab, symbols):
    syms = [find(vocab, x) for x in symbols]

    data, mask = join(syms)
    samples = np.full((100, env.observation_space.shape[0]), np.nan)
    samples[:, mask] = data
    im = Image.merge([env.render_state(state, agent_alpha=0.5) for state in samples])
    return im


def _find(state, prop):
    for x in state:
        if 'symbol_{}'.format(x) in prop.name:
            return x
    return -1


def matches(operator, state):
    for prop in operator.preconditions:
        if prop.name == 'notfailed':
            continue

        id = _find(state, prop)
        if id == -1:
            return False
        state.remove(id)
    return True


def extract(name):
    return int(name[name.rindex('_') + 1:])


def next_state(state, operator):
    s_prime = set(state)
    for prob, props, _ in operator.effects:
        if len(props) == 1 and props[0].name == 'notfailed':
            continue
        for prop in props:
            id = extract(prop.name)
            if prop.sign > 0:
                s_prime.add(id)
            else:
                s_prime.remove(id)
    return sorted(list(s_prime))


def simulate(env, domain: PDDLDomain, state):
    prev = '[Start]'
    for i in range(50):
        ops = [operator for operator in domain.operators if matches(operator, copy.copy(state))]
        valids = [env.describe_option(x.option) for x in ops]
        plt.xlabel(','.join(valids))
        show_syms(env, domain._vocabulary, state, title='Executed: {}\nNow:{}'.format(prev, str(state)), count=i)
        operator = ops[np.random.randint(0, len(ops))]
        print(env.describe_option(operator.option))
        prev = env.describe_option(operator.option)
        state = next_state(state, operator)


def simulate_save(save_dir, env, domain: PDDLDomain, state):
    visited = dict()
    for i in range(50):
        ops = [operator for operator in domain.operators if matches(operator, copy.copy(state))]
        image = make_syms(env, domain._vocabulary, state)
        s = tuple(state)
        if s not in visited:
            visited[s] = image
        operator = ops[np.random.randint(0, len(ops))]
        state = next_state(state, operator)

    for state, image in visited.items():
        path = make_path(save_dir, 'all_states/{}.png'.format(list(state)))
        Image.save(image, path)


if __name__ == '__main__':

    small = True
    n_components = 5
    # type = 'vec'
    type = 'FastICA_{}'.format(n_components)
    if small:
        type = '{}_small'.format(type)
    save_dir = '../data/output/baxter_data_{}'.format(type.lower(), small)

    env = AosmEnv(type, n_components, blue=False, small=small)
    env.load("../data/input/baxter_images_webcam_plates/action_webcam.txt",
             "../data/input/baxter_images_webcam_plates/valid_actions_webcam.txt",
             "../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy",
             "../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy")
    #
    domain = load('{}/domain.pkl'.format(save_dir))
    simulate_save(save_dir, env, domain, [0, 1, 2, 3, 4])
    # simulate(env, domain, [0, 1, 2, 3, 4])
