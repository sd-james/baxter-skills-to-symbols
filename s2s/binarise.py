from time import time

from numpy.random.mtrand import RandomState
from sklearn import decomposition

from s2s.utils import save
from s2s.view_images import load_data, resize_image

import cv2 as cv
import numpy as np
from matplotlib import pyplot as plt


def show(img):
    ret, th1 = cv.threshold(img, 127, 255, cv.THRESH_BINARY)
    th2 = cv.adaptiveThreshold(img, 255, cv.ADAPTIVE_THRESH_MEAN_C, cv.THRESH_BINARY, 11, 2)
    th3 = cv.adaptiveThreshold(img, 255, cv.ADAPTIVE_THRESH_GAUSSIAN_C, cv.THRESH_BINARY, 11, 2)
    titles = ['Original Image', 'Global Thresholding (v = 127)',
              'Adaptive Mean Thresholding', 'Adaptive Gaussian Thresholding']
    images = [img, th1, th2, th3]
    for i in range(4):
        plt.subplot(2, 2, i + 1), plt.imshow(images[i], 'gray')
        plt.title(titles[i])
        plt.xticks([]), plt.yticks([])
    plt.show()


def reshape(img, resize=-1, grey=False):
    if resize != -1:
        img = resize_image(img, resize)
    if grey:
        img = np.uint8(np.dot(img[..., :3], [0.299, 0.587, 0.114]))
    return img


def load_data(path, grey=False):
    A = np.load(path)
    data = list()
    for ii in range(A.shape[-1]):
        img = reshape(A[:, :, :, ii], resize=8, grey=grey)
        img = cv.adaptiveThreshold(img, 255, cv.ADAPTIVE_THRESH_GAUSSIAN_C, cv.THRESH_BINARY, 11, 2)
        th3 = np.reshape(img, (img.shape[0] * img.shape[1]))
        data.append(th3)
    return np.array(data)


grey = True
n_components = 4
image_shape = (135, 240)
rng = RandomState(0)
# A = load_data('./old_baxter_images_webcam_plates/images_pre_webcam_rgb.npy', grey=grey)
# B = load_data('./old_baxter_images_webcam_plates/images_post_webcam_rgb.npy', grey=grey)
#
# for x, y in zip(A, B):
#     show(x)
#     show(y)
#     print(x-y)
# exit(0)


full_data = load_data('../data/input/old_baxter_images_webcam_plates/images_pre_webcam_rgb.npy', grey=grey)
full_data = np.vstack((full_data, load_data('../data/input/old_baxter_images_webcam_plates/images_post_webcam_rgb.npy', grey=grey)))
n_samples, n_features = full_data.shape

print("Dataset consists of %d images" % n_samples)


def print_masks(name, estimator):
    A = "./old_baxter_images_webcam_plates/images_pre_webcam_rgb.npy"
    B = "./old_baxter_images_webcam_plates/images_post_webcam_rgb.npy"
    A = load_data(A, grey=grey)
    B = load_data(B, grey=grey)

    for a, b in zip(A, B):
        code = estimator.transform(a.reshape(1, -1))[0]
        code2 = estimator.transform(b.reshape(1, -1))[0]
        mask = [i for i in range(len(code)) if code[i] != code2[i]]
        print(name, mask)


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
    ('sparse_4',
     decomposition.SparsePCA(n_components=n_components, alpha=1,  n_jobs=20,
                             max_iter=100, random_state=rng),
     True),
    ('sparse_5',
     decomposition.SparsePCA(n_components=5, alpha=1,  n_jobs=20,
                             max_iter=100, random_state=rng),
     True),
    ('sparse_10',
     decomposition.SparsePCA(n_components=10, alpha=1,  n_jobs=20,
                             max_iter=100, random_state=rng),
     True),
    ('sparse_2',
     decomposition.SparsePCA(n_components=2, alpha=1, n_jobs=20,
                             max_iter=100, random_state=rng),
     True),
    ('sparse_20',
     decomposition.SparsePCA(n_components=20, alpha=1, n_jobs=20,
                             max_iter=100, random_state=rng),
     True),

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

    save(estimator, 'models/binary_{}.pkl'.format(name))
    print_masks(name, estimator)

exit(0)
