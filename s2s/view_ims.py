import cv2
import numpy as np
import matplotlib.pyplot as plt
from tqdm import trange

import matplotlib

from s2s.pca.batch_sparse_pca import BatchSparsePCA
from s2s.pca.pca import PCA
from s2s.pca.sparse_pca import SparsePCA

matplotlib.use('TkAgg')


def resize_image(img, factor):
    size = img.shape[1] // factor, img.shape[0] // factor
    return cv2.resize(img, size, interpolation=cv2.INTER_AREA)


def reshape(img, resize=-1, grey=False):
    if resize != -1:
        img = resize_image(img, resize)

    if grey:
        img = np.uint8(np.dot(img[..., :3], [0.299, 0.587, 0.114]))
    return img


def show(pca, data, data2, file):
    for ii in trange(data.shape[-1]):
        x = reshape(data[:, :, :, ii], resize=8, grey=True)
        plt.subplot(2, 2, 1)
        plt.imshow(data[:, :, :, ii])
        plt.subplot(2, 2, 2)
        plt.imshow(pca.representation(x, preprocess=False))

        y = reshape(data2[:, :, :, ii], resize=8, grey=True)
        plt.subplot(2, 2, 3)
        plt.imshow(data2[:, :, :, ii])
        plt.subplot(2, 2, 4)
        plt.imshow(pca.representation(y, preprocess=False))

        code = pca.compress_(x, preprocess=False)
        code2 = pca.compress_(y, preprocess=False)

        mask = [i for i in range(len(code)) if code[i] != code2[i]]
        print(mask)
        # plt.title("Mask {}".format(mask))
        plt.savefig('pca_images/sparse_pca_{}_{}.png'.format(file, ii))
        plt.clf()
        # plt.show()


def disp():
    N = 15
    pca = SparsePCA(N)
    pca.load('sparse_{}.pkl'.format(N))
    A = "./compiled_040221_im_pre_left.npy"
    B = "./compiled_040221_im_post_left.npy"
    A = np.load(A)
    B = np.load(B)
    show(pca, A, B, str(N))
    exit(0)


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


def show_hsv(image):
    hsv_img = cv2.cvtColor(image, cv2.COLOR_RGB2HSV)
    h, s, v = hsv_img[:, :, 0], hsv_img[:, :, 1], hsv_img[:, :, 2]

    # h = cv2.adaptiveThreshold(h, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, 11, 2)

    return h


def load_data(path, grey=False):
    A = np.load(path)
    data = list()
    for ii in range(A.shape[-1]):
        data.append(reshape(A[:, :, :, ii], resize=8, grey=grey))
    return np.array(data)


def show_diff(x, y):
    x = reshape(x, resize=8, grey=False)
    y = reshape(y, resize=8, grey=False)

    x = get_channel(x)
    y = get_channel(y)
    # x = show_hsv(x)
    # y = show_hsv(y)

    plt.subplot(1, 3, 1)
    plt.imshow(x)
    plt.subplot(1, 3, 2)
    plt.imshow(y)
    plt.subplot(1, 3, 3)
    plt.imshow(x - y)
    plt.show()


if __name__ == "__main__":

    A = "../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy"
    B = "../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy"
    A = np.load(A)
    B = np.load(B)

    for i in range(A.shape[-1]):
        if i >= 100:
            break
        x = A[:, :, :, i]
        y = B[:, :, :, i]
        show_diff(x, y)
