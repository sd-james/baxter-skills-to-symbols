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


def grey_reshape_absolute(img, shape):
    img = np.uint8(np.dot(img[..., :3], [0.299, 0.587, 0.114]))
    img = cv2.resize(img, shape, interpolation=cv2.INTER_AREA)
    return np.reshape(img, (img.shape[0] * img.shape[1]))


def reshape(img, resize=-1, grey=False):
    if resize != -1:
        img = resize_image(img, resize)

    if grey:
        img = np.uint8(np.dot(img[..., :3], [0.299, 0.587, 0.114]))
        return np.reshape(img, (img.shape[0] * img.shape[1]))
    return np.reshape(img, (img.shape[0] * img.shape[1] * img.shape[2]))


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


def show_hsv(image):
    hsv_img = cv2.cvtColor(image, cv2.COLOR_RGB2HSV)
    h, s, v = hsv_img[:, :, 0], hsv_img[:, :, 1], hsv_img[:, :, 2]

    return h


def load_data(path, grey=False):
    A = np.load(path)
    data = list()
    for ii in range(A.shape[-1]):
        data.append(reshape(A[:, :, :, ii], resize=8, grey=grey))
    return np.array(data)


if __name__ == "__main__":

    # A = "./old_baxter_images_webcam_plates/images_pre_webcam.npy"
    # A = np.load(A)
    # for ii in range(A.shape[-1]):
    #     x = reshape(A[:, :, :, ii])
    #     plt.imshow(show_hsv(resize_image(A[:, :, :, ii], 8)))
    #     plt.show()
    # exit(0)

    # disp()

    for i in [10, 15, 20]:
        # pca = SparsePCA(30)
        # pca.load('sparse.pkl')
        # #
        A = "../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy"
        B = "../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy"
        A = np.load(A)
        B = np.load(B)
        #
        data = list()
        # #
        # pca = BatchSparsePCA(i, 2)
        # pca.load('grey_sparse_pca_{}.pkl'.format(i))
        # show(pca, A, B, '{}'.format(i))
        # # show(pca, B, 'post_left')
        # continue

        def _down(image):
            image = cv2.resize(image, (8, 8), interpolation=cv2.INTER_AREA)
            image = np.uint8(np.dot(image[..., :3], [0.299, 0.587, 0.114]))
            return image

        for ii in range(A.shape[-1]):
            x = reshape(A[:, :, :, ii])

            # plt.subplot(2, 1, 1)
            # plt.imshow(resize_image(A[:, :, :, ii], 4))
            # plt.subplot(2, 1, 2)
            # plt.imshow(pca.representation(x, preprocess=False))
            # plt.show()

            data.append(reshape(A[:, :, :, ii], resize=8, grey=True))
            data.append(reshape(B[:, :, :, ii], resize=8, grey=True))
            plt.imshow(_down(A[:, :, :, ii]))
            plt.show()
            plt.imshow(_down(B[:, :, :, ii]))
            plt.show()
            plt.imshow(_down(A[:, :, :, ii]) - _down(B[:,:,:,i]))
            plt.show()

            # plt.imshow(B[:, :, :, ii])
            # plt.show()

        # exit(0)

        pca = BatchSparsePCA(i, 2)
        # pca = PCA(i)
        pca.fit(np.array(data))
        pca.save('grey_sparse_pca_{}.pkl'.format(i))
