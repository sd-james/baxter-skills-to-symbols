from s2s.utils import save
from s2s.view_images import reshape, grey_reshape_absolute

print(__doc__)

import numpy as np
from time import time

from numpy.random import RandomState

from sklearn import decomposition


def get_mask(s, sprime):
    def close(x, y):
        return abs(x - y) < 0.01

    return np.array([i for i in range(len(s)) if not close(s[i], sprime[i])])


def load_data(path, grey=False, shape=None):
    A = np.load(path)
    data = list()
    for ii in range(A.shape[-1]):
        if shape is not None:
            data.append(grey_reshape_absolute(A[:, :, :, ii], shape))
        else:
            data.append(reshape(A[:, :, :, ii], resize=8, grey=grey))
    return np.array(data)


def print_masks(name, estimator):
    A = "../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy"
    B = "../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy"
    A = load_data(A, grey=grey, shape=(240 // 2, 135 // 2))
    B = load_data(B, grey=grey, shape=(240 // 2, 135 // 2))

    for a, b in zip(A, B):
        code = estimator.transform(a.reshape(1, -1))[0]
        code2 = estimator.transform(b.reshape(1, -1))[0]
        mask = get_mask(code, code2)
        # mask = [i for i in range(len(code)) if code[i] != code2[i]]
        print(name, mask)


if __name__ == '__main__':
    image_shape = (240 // 2, 135 // 2)
    rng = RandomState(0)

    for n_components in range(4, 11):
        grey = True

        full_data = load_data('../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy', grey=grey,
                              shape=image_shape)
        full_data = np.vstack(
            (full_data, load_data('../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy', grey=grey,
                                  shape=image_shape)))

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
            save(estimator, 'models/grey/{}_{}_small.pkl'.format(name, n_components))
            print_masks(name, estimator)
