import cv2
import numpy as np
from PIL import Image, ImageDraw, ImageOps
from gym.spaces import Discrete, Box

from disent.transform import ToStandardisedTensor
from experiment.run_baxter import encode, tensor2list
from s2s.blue_channel import get_channel
from s2s.env.s2s_env import S2SEnv
import pandas as pd

from s2s.utils import load
from s2s.view_images import reshape, resize_image, grey_reshape_absolute
import torch


class BaxterEnv(S2SEnv):

    def __init__(self, compress, dim=4, blue=False, small=False):
        self._blue = blue
        self._small = small
        self.action_space = None
        self.observation_space = Box(-1, 1, shape=(dim,))
        self.actions = list()
        self.transition_data = None
        self.init_data = None
        if compress is None:
            self.compressor = None
        else:
            self.compressor = load('models/{}/{}.pkl'.format('blue' if blue else 'grey', compress))

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

    def _get_action(self, name):
        name = name.strip()
        if name in self.actions:
            return self.actions.index(name)
        idx = len(self.actions)
        self.actions.append(name)
        return idx

    def _add(self, dataframe, *data):
        dataframe.loc[len(dataframe)] = list(data)

    def get_mask(self, s, sprime):
        def close(x, y):
            return abs(x - y) < 0.1

        return np.array([i for i in range(len(s)) if not close(s[i], sprime[i])])

    def load(self, actions, available_actions, states, next_states, max_actions=100):

        with open(actions, 'r') as file:
            for line in file:
                self._get_action(line)
        self.action_space = Discrete(len(self.actions))

        self.transition_data = pd.DataFrame(
            columns=['episode', 'state', 'option', 'reward', 'next_state', 'done', 'goal_achieved', 'mask'])
        self.init_data = pd.DataFrame(columns=['state', 'option', 'can_execute'])
        states = np.load(states)

        # bg = cv2.createBackgroundSubtractorKNN()
        # for i in range(states.shape[-1]):
        #     state = states[:,:,:,i]
        #     bg.apply(state)

        next_states = np.load(next_states)
        with open(actions, 'r') as file, open(available_actions, 'r') as file2:
            for i, (action, valid) in enumerate(zip(file, file2)):

                if i >= max_actions:
                    continue

                state = states[:, :, :, i]
                # state = bg.apply(state)

                state = self.compress(state)
                option = self._get_action(action)
                next_state = next_states[:, :, :, i]
                next_state = self.compress(next_state)

                mask = self.get_mask(np.array(state), np.array(next_state))
                # mask = np.where(np.array(state) != np.array(next_state))[0]  # check which indices are not equal!
                if len(mask) > 0:
                    self._add(self.transition_data, 0, state, option, -1, next_state, False, False, mask)
                v = set()
                for action in valid.split(' '):
                    option = self._get_action(action)
                    v.add(option)
                for i in range(self.action_space.n):
                    self._add(self.init_data, state, i, i in v)

    def get_init_data(self):
        return self.init_data

    def get_transition_data(self):
        return self.transition_data

    def get_channel(self, image):
        r, g, b = image[:, :, 0], image[:, :, 1], image[:, :, 2]
        img = b

        import cv2
        # Otsu's thresholding
        _, img = cv2.threshold(img, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
        #
        # # Otsu's thresholding after Gaussian filtering
        # blur = cv2.GaussianBlur(img, (5, 5), 0)
        # _, img = cv2.threshold(blur, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
        return img

    def compress(self, image):

        if self._blue:
            image = resize_image(image, 8)
            x = self.get_channel(image)
            image = np.reshape(x, (x.shape[0] * x.shape[1]))
        else:
            if self._small:
                image = grey_reshape_absolute(image, (240 // 2, 135 // 2))
            else:
                image = reshape(image, resize=8, grey=True)
        return self.compressor.transform(image.reshape(1, -1))[0]


class BaxterEnvSmall(BaxterEnv):

    def __init__(self):
        super().__init__(None, dim=16 * 16, blue=False)
        self.observation_space = Box(0, 255, shape=(16 * 15,))

    def get_mask(self, s, sprime):
        def close(x, y):
            return abs(x - y) < 5

        return np.array([i for i in range(len(s)) if not close(s[i], sprime[i])])

    def compress(self, image):
        image = cv2.resize(image, (8, 8), interpolation=cv2.INTER_AREA)
        image = np.uint8(np.dot(image[..., :3], [0.299, 0.587, 0.114]))
        return np.reshape(image, (image.shape[0] * image.shape[1]))

    def _render_state(self, state: np.ndarray, **kwargs) -> np.ndarray:
        # 240 135
        return np.uint8(np.reshape(state, (8, 8)))
        # return np.reshape(img, (135, 240, 3))


class BaxterEnvVAE(BaxterEnv):

    def __init__(self, beta=False, dim=4):
        self.dim = dim
        self.beta = beta
        self.action_space = None
        self.observation_space = Box(0, 1, shape=(dim,))
        self.actions = list()
        self.transition_data = None
        self.init_data = None
        if self.beta:
            from experiment.run_baxter_vae import gen_model
            self.model = gen_model(dim)
            state_dict = torch.load('/home/steve/PycharmProjects/disent/experiment/betamodule.pt')
        else:
            from experiment.run_baxter import gen_model
            self.model = gen_model(dim)
            state_dict = torch.load('/home/steve/PycharmProjects/disent/experiment/module_{}_beta_4.pt'.format(dim))
        self.model.load_state_dict(state_dict)

    def get_mask(self, s, sprime):
        def close(x, y):
            return abs(x - y) < 0.05

        return np.array([i for i in range(len(s)) if not close(s[i], sprime[i])])

    def compress(self, image):
        img = cv2.resize(image, (64, 64), interpolation=cv2.INTER_AREA)
        vec = encode(self.model, img)
        return np.array(tensor2list(vec))

    def load(self, actions, available_actions, states, next_states, max_actions=100):
        super().load(actions, available_actions, states, next_states, max_actions=max_actions)
        self.model = None  # set to none to avoid pickle issues

    def _render_state(self, state: np.ndarray, **kwargs) -> np.ndarray:
        if self.model is None:
            if self.beta:
                from experiment.run_baxter_vae import gen_model
                self.model = gen_model(self.dim)
                state_dict = torch.load('/home/steve/PycharmProjects/disent/experiment/betamodule.pt')
            else:
                from experiment.run_baxter import gen_model
                self.model = gen_model(self.dim)
                state_dict = torch.load(
                    '/home/steve/PycharmProjects/disent/experiment/module_{}_beta_4.pt'.format(self.dim))
            self.model.load_state_dict(state_dict)
        state = np.expand_dims(state, axis=0)
        tensor = self.model.decode(torch.tensor(state).float().to(self.model.device))
        x = np.swapaxes(tensor.squeeze().detach().numpy(), 0, 2)
        return np.uint8(np.swapaxes(x, 0, 1) * 255)


class BaxterEnvVec(BaxterEnv):

    def __init__(self):
        super().__init__(None)
        self.observation_space = Box(0, 1, shape=(4,))

    def get_mask(self, s, sprime):

        def close(x, y):
            return abs(x - y) < 0.01

        return np.array([i for i in range(len(s)) if not close(s[i], sprime[i])])

    def load(self, actions, available_actions, max_actions=100):

        with open(actions, 'r') as file:
            for line in file:
                if len(line.strip()) == 0:
                    continue
                line = line.split(', ')[4]
                self._get_action(line)
        self.action_space = Discrete(len(self.actions))

        self.transition_data = pd.DataFrame(
            columns=['episode', 'state', 'option', 'reward', 'next_state', 'done', 'goal_achieved', 'mask'])
        self.init_data = pd.DataFrame(columns=['state', 'option', 'can_execute'])

        with open(actions, 'r') as file:
            for i, line in enumerate(file):
                if i >= max_actions:
                    break
                temp = line.split(', ')
                state = np.array(list(map(float, temp[0:4])))
                next_state = np.array(list(map(float, temp[5:])))
                action = temp[4]
                option = self._get_action(action)
                mask = self.get_mask(state, next_state)
                # mask = np.where(np.array(state) != np.array(next_state))[0]  # check which indices are not equal!
                self._add(self.transition_data, 0, state, option, -1, next_state, False, False, mask)

        with open(available_actions, 'r') as file:
            for i, line in enumerate(file):
                if i >= max_actions:
                    break
                temp = line.split(', ')
                state = np.array(list(map(float, temp[0:4])))
                v = set()
                for j in range(4, len(temp)):
                    option = self._get_action(temp[j])
                    v.add(option)
                for j in range(self.action_space.n):
                    self._add(self.init_data, state, j, j in v)

    def render_state(self, state: np.ndarray, **kwargs) -> np.ndarray:
        """
        Return an image of the given state. Where state variables are missing, specify with np.nan
        """
        if kwargs.get('masked'):
            s = np.empty_like(self.observation_space.sample())
            s.fill(np.nan)
            s[kwargs.get('mask')] = state
            state = s
        return self._render_state(state, **kwargs)

    def get_rect(self, x, y, width, height):
        w = 20
        h = 20
        if x is None:
            x = 0
            w = width
        else:
            x = width - (x * width)
        if y is None:
            y = 0
            h = height
        else:
            y = height - ((height // 2) + int(y * height // 2))

        return [x, y, x + w, y + h]

    def _draw(self, draw, state, width, height, colour):
        if not any(np.isnan(state)):
            draw.rectangle(xy=self.get_rect(state[0], state[1], width, height), fill=colour)
        else:
            if not np.isnan(state[0]):
                draw.rectangle(xy=self.get_rect(state[0], None, width, height), fill=colour)
            elif not np.isnan(state[1]):
                draw.rectangle(xy=self.get_rect(None, state[1], width, height), fill=colour)

    def _render_state(self, state: np.ndarray, **kwargs) -> np.ndarray:

        def to_pos(x, scale):
            return scale + int(x * scale)

        # blue, green
        # img = Image.open('backg.png')
        # img = Image.new('RGBA', (600, 600), (255, 0, 0, 0))
        img = Image.new('RGB', (600, 600))
        draw = ImageDraw.Draw(img)
        # Draw on image
        width, height = img.size

        self._draw(draw, state[0:2], width, height, 'blue')
        self._draw(draw, state[2:], width, height, 'green')

        # if not any(np.isnan(state)):
        #     draw.rectangle(xy=self.get_rect(state[0], state[1], width, height), fill='blue')
        #     draw.rectangle(xy=self.get_rect(state[2], state[3], width, height), fill='green')
        # else:
        #     if not np.isnan(state[0]):
        #         draw.rectangle(xy=self.get_rect(state[0], None, width, height), fill='blue')
        #     elif not np.isnan(state[1]):
        #         draw.rectangle(xy=self.get_rect(None, state[1], width, height), fill='blue')
        #     elif not np.isnan(state[2]):
        #         draw.rectangle(xy=self.get_rect(state[2], None, width, height), fill='green')
        #     elif not np.isnan(state[3]):
        #         draw.rectangle(xy=self.get_rect(None, state[3], width, height), fill='green')

        # draw.rectangle(xy=[to_pos(state[0], width), to_pos(state[1], height), 20, 20], fill='blue')
        # draw.rectangle(xy=[to_pos(state[2], width), to_pos(state[3], height), 20, 20], fill='green')
        return np.array(ImageOps.mirror(img.rotate(-90)))


if __name__ == '__main__':
    env = BaxterEnv(None)
    env.load("old_baxter_images_webcam_plates/action_webcam.txt",
             "old_baxter_images_webcam_plates/valid_actions_webcam.txt",
             "old_baxter_images_webcam_plates/images_pre_webcam.npy",
             "old_baxter_images_webcam_plates/images_post_webcam.npy")
