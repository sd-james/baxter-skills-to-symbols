from s2s.utils import save
from s2s.view_images import load_data

print(__doc__)

# Authors: Vlad Niculae, Alexandre Gramfort
# License: BSD 3 clause

import numpy as np
import logging
from time import time

from numpy.random import RandomState
import matplotlib.pyplot as plt

from sklearn.datasets import fetch_olivetti_faces
from sklearn.cluster import MiniBatchKMeans
from sklearn import decomposition

# Display progress logs on stdout
logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s %(levelname)s %(message)s')
n_row, n_col = 4, 3
n_components = n_row * n_col
image_shape = (64, 64)
image_shape = (135, 240)
rng = RandomState(0)

n_components = 5
grey = True

# #############################################################################
# Load faces data
# faces, _ = fetch_olivetti_faces(return_X_y=True, shuffle=True,
#                                 random_state=rng)

full_data = load_data('../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy', grey=grey)
full_data = np.vstack((full_data, load_data('../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy', grey=grey)))
n_samples, n_features = full_data.shape

# global centering
# full_data = faces - faces.mean(axis=0)
#
# # local centering
# full_data -= full_data.mean(axis=1).reshape(n_samples, -1)
#
# full_data = faces

print("Dataset consists of %d faces" % n_samples)


def get_mask(s, sprime):

    def close(x, y):
        return abs(x - y) < 0.01

    return np.array([i for i in range(len(s)) if not close(s[i], sprime[i])])

def print_masks(name, estimator):
    A = "../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy"
    B = "../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy"
    A = load_data(A, grey=grey)
    B = load_data(B, grey=grey)

    for a, b in zip(A, B):
        code = estimator.transform(a.reshape(1, -1))[0]
        code2 = estimator.transform(b.reshape(1, -1))[0]
        mask = get_mask(code, code2)
        # mask = [i for i in range(len(code)) if code[i] != code2[i]]
        print(name, mask)


def plot_gallery(title, images, n_col=n_col, n_row=n_row, cmap=plt.cm.gray):
    plt.figure(figsize=(2. * n_col, 2.26 * n_row))
    plt.suptitle(title, size=16)
    for i, comp in enumerate(images):
        comp = np.uint8(comp * 255)

        plt.subplot(n_row, n_col, i + 1)
        vmax = max(comp.max(), -comp.min())
        plt.imshow(comp.reshape(image_shape), cmap=cmap,
                   interpolation='nearest',
                   vmin=-vmax, vmax=vmax)
        plt.xticks(())
        plt.yticks(())
    plt.subplots_adjust(0.01, 0.05, 0.99, 0.93, 0.04, 0.)


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

    # ('Sparse comp. - MiniBatchSparsePCA',
    #  decomposition.MiniBatchSparsePCA(n_components=n_components, alpha=0.8,
    #                                   n_iter=100, batch_size=3,
    #                                   random_state=rng),
    #  True),
    #
    # ('sparse_4',
    #  decomposition.SparsePCA(n_components=n_components, alpha=1, n_jobs=20,
    #                          max_iter=100, random_state=rng),
    #  True),
    # ('sparse_5',
    #  decomposition.SparsePCA(n_components=5, alpha=1,n_jobs=20,
    #                          max_iter=100, random_state=rng),
    #  True),
    # ('sparse_10',
    #  decomposition.SparsePCA(n_components=10, alpha=1,n_jobs=20,
    #                          max_iter=100, random_state=rng),
    #  True),
    # ('sparse_2',
    #  decomposition.SparsePCA(n_components=2, alpha=1,n_jobs=20,
    #                          max_iter=100, random_state=rng),
    #  True),
    # ('sparse_20',
    #  decomposition.SparsePCA(n_components=20, alpha=1,n_jobs=20,
    #                          max_iter=100, random_state=rng),
    #  True),

    # ('MiniBatchDictionaryLearning',
    #  decomposition.MiniBatchDictionaryLearning(n_components=n_components, alpha=0.1,
    #                                            n_iter=50, batch_size=3,
    #                                            random_state=rng),
    #  True),
    #
    # ('Cluster centers - MiniBatchKMeans',
    #  MiniBatchKMeans(n_clusters=n_components, tol=1e-3, batch_size=20,
    #                  max_iter=50, random_state=rng),
    #  True),
    #
    # ('Factor Analysis components - FA',
    #  decomposition.FactorAnalysis(n_components=n_components, max_iter=20),
    #  True),
]

# #############################################################################
# Plot a sample of the input data

# plot_gallery("First centered Olivetti faces", full_data[:n_components])

# #############################################################################
# Do the estimation and plot it

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

    # plot_gallery('%s - Train time %.1fs' % (name, train_time),
    #              components_[:n_components])

    save(estimator, 'models/grey/{}.pkl'.format(name))
    print_masks(name, estimator)

exit(0)

# plt.show()

# #############################################################################
# Various positivity constraints applied to dictionary learning.
estimators = [
    ('Dictionary learning',
     decomposition.MiniBatchDictionaryLearning(n_components=15, alpha=0.1,
                                               n_iter=50, batch_size=3,
                                               random_state=rng),
     True),
    ('Dictionary learning - positive dictionary',
     decomposition.MiniBatchDictionaryLearning(n_components=15, alpha=0.1,
                                               n_iter=50, batch_size=3,
                                               random_state=rng,
                                               positive_dict=True),
     True),
    ('Dictionary learning - positive code',
     decomposition.MiniBatchDictionaryLearning(n_components=15, alpha=0.1,
                                               n_iter=50, batch_size=3,
                                               fit_algorithm='cd',
                                               random_state=rng,
                                               positive_code=True),
     True),
    ('Dictionary learning - positive dictionary & code',
     decomposition.MiniBatchDictionaryLearning(n_components=15, alpha=0.1,
                                               n_iter=50, batch_size=3,
                                               fit_algorithm='cd',
                                               random_state=rng,
                                               positive_dict=True,
                                               positive_code=True),
     True),
]

# #############################################################################
# Plot a sample of the input data

plot_gallery("First centered Olivetti faces", full_data[:n_components],
             cmap=plt.cm.RdBu)

# #############################################################################
# Do the estimation and plot it

for name, estimator, center in estimators:
    print("Extracting the top %d %s..." % (n_components, name))
    t0 = time()
    data = full_data
    estimator.fit(data)
    train_time = (time() - t0)
    print("done in %0.3fs" % train_time)
    components_ = estimator.components_
    plot_gallery(name, components_[:n_components], cmap=plt.cm.RdBu)

    print_masks(name, estimator)

plt.show()
