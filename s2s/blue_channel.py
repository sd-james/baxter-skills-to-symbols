from time import time

import cv2
from numpy.random.mtrand import RandomState
from sklearn import decomposition

from s2s.utils import save
from s2s.view_images import load_data, resize_image

import cv2 as cv
import numpy as np
from matplotlib import pyplot as plt

def get_mask(s, sprime):

    def close(x, y):
        return abs(x - y) < 0.02

    return np.array([i for i in range(len(s)) if not close(s[i], sprime[i])])

def print_masks(A, B, estimator):
    for a, b in zip(A, B):
        code = estimator.transform(a.reshape(1, -1))[0]
        code2 = estimator.transform(b.reshape(1, -1))[0]
        mask = get_mask(code, code2)
        # mask = [i for i in range(len(code)) if code[i] != code2[i]]
        print(name, mask)


def reshape(img, resize=-1, grey=False):
    if resize != -1:
        img = resize_image(img, resize)

    if grey:
        img = np.uint8(np.dot(img[..., :3], [0.299, 0.587, 0.114]))
    return img


def get_channel(image):
    image = reshape(image, resize=8, grey=False)
    r, g, b = image[:, :, 0], image[:, :, 1], image[:, :, 2]
    img = b

    # Otsu's thresholding
    _, img = cv2.threshold(img, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
    #
    # # Otsu's thresholding after Gaussian filtering
    # blur = cv2.GaussianBlur(img, (5, 5), 0)
    # _, img = cv2.threshold(blur, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
    return img


def flatten(img):
    return np.reshape(img, (img.shape[0] * img.shape[1]))


def load_data(path):
    A = np.load(path)
    data = list()

    for i in range(A.shape[-1]):
        if i >= 100:
            break
        x = A[:, :, :, i]
        x = get_channel(x)
        data.append(flatten(x))
    return np.array(data)



if __name__ == '__main__':
    A = "../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy"
    B = "../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy"
    A = load_data(A)
    B = load_data(B)
    full_data = np.vstack((A, B))
    n_components = 10
    rng = RandomState(0)

    # #############################################################################
    # List of the different estimators, whether to center and transpose the
    # problem, and whether the transformer uses the clustering API.
    estimators = [
        ('PCA_SVD',
         decomposition.PCA(n_components=n_components, svd_solver='randomized',
                           whiten=True),
         True),

        ('NMF',
         decomposition.NMF(n_components=n_components, init='nndsvda', tol=5e-3),
         False),

        ('FastICA',
         decomposition.FastICA(n_components=n_components, whiten=True),
         True),

        ('minibatch',
         decomposition.MiniBatchSparsePCA(n_components=n_components, alpha=0.8,
                                          n_iter=100, batch_size=3,
                                          random_state=rng),
         True),
        #
        # ('sparse_4',
        #  decomposition.SparsePCA(n_components=4, alpha=1,  n_jobs=20,
        #                          max_iter=100, random_state=rng),
        #  True),
        # ('sparse_5',
        #  decomposition.SparsePCA(n_components=5, alpha=1,  n_jobs=20,
        #                          max_iter=100, random_state=rng),
        #  True),
        # ('sparse_10',
        #  decomposition.SparsePCA(n_components=10, alpha=1,  n_jobs=20,
        #                          max_iter=100, random_state=rng),
        #  True),
        # ('sparse_2',
        #  decomposition.SparsePCA(n_components=2, alpha=1,  n_jobs=20,
        #                          max_iter=100, random_state=rng),
        #  True),
        # ('sparse_20',
        #  decomposition.SparsePCA(n_components=20, alpha=1,  n_jobs=20,
        #                          max_iter=100, random_state=rng),
        #  True),

    ]

    for name, estimator, center in estimators:
        print("Extracting the top %d %s..." % (n_components, name))
        t0 = time()
        data = full_data
        estimator.fit(data)
        train_time = (time() - t0)
        print("done in %0.3fs" % train_time)
        if hasattr(estimator, 'cluster_centers_'):
            components_ = estimator.cluster_centers_
        else:
            components_ = estimator.components_

        save(estimator, 'models/blue/{}_{}.pkl'.format(name, n_components))
        print_masks(A, B, estimator)

