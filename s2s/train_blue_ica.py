from s2s.utils import save
from s2s.view_images import resize_image

import numpy as np
from time import time

from numpy.random import RandomState

from sklearn import decomposition
import cv2


def get_channel(image):
    r, g, b = image[:, :, 0], image[:, :, 1], image[:, :, 2]
    img = b

    # Otsu's thresholding
    _, img = cv2.threshold(img, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
    #
    # # Otsu's thresholding after Gaussian filtering
    # blur = cv2.GaussianBlur(img, (5, 5), 0)
    # _, img = cv2.threshold(blur, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)

    return img


def get_mask(s, sprime):
    def close(x, y):
        return abs(x - y) < 0.01

    return np.array([i for i in range(len(s)) if not close(s[i], sprime[i])])


def reshape(img, resize=-1):
    if resize != -1:
        img = resize_image(img, resize)
    return img


def load_data(path):
    A = np.load(path)
    data = list()
    for ii in range(A.shape[-1]):
        x = reshape(A[:, :, :, ii], resize=8)
        x = get_channel(x)
        x = np.reshape(x, (x.shape[0] * x.shape[1]))
        data.append(x)
    return np.array(data)

def print_masks(name, estimator):
    A = "../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy"
    B = "../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy"
    A = load_data(A)
    B = load_data(B)

    for a, b in zip(A, B):
        code = estimator.transform(a.reshape(1, -1))[0]
        code2 = estimator.transform(b.reshape(1, -1))[0]
        mask = get_mask(code, code2)
        # mask = [i for i in range(len(code)) if code[i] != code2[i]]
        print(name, mask)


if __name__ == '__main__':
    image_shape = (135, 240)
    rng = RandomState(0)

    for n_components in range(11,21):
        full_data = load_data('../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy')
        full_data = np.vstack(
            (full_data, load_data('../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy')))

        estimators = [
            ('NMF',
             decomposition.NMF(n_components=n_components, init='nndsvda', tol=5e-3),
             False),
            ('FastICA',
             decomposition.FastICA(n_components=n_components, whiten=True),
             True),
        ]

        for name, estimator, center in estimators:
            print("Extracting the top %d %s..." % (n_components, name))
            t0 = time()
            data = full_data
            estimator.fit(data)
            train_time = (time() - t0)
            print("done in %0.3fs" % train_time)
            save(estimator, 'models/blue/{}_{}.pkl'.format(name, n_components))
            print_masks(name, estimator)
