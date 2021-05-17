import cv2
import numpy as np
import matplotlib.pyplot as plt
from tqdm import trange

import matplotlib

from s2s.image import Image
from s2s.pca.batch_sparse_pca import BatchSparsePCA
from s2s.pca.pca import PCA
from s2s.pca.sparse_pca import SparsePCA
from s2s.utils import make_dir

if __name__ == "__main__":

    A = "../data/input/baxter_images_webcam_plates/images_pre_webcam_rgb.npy"
    B = "../data/input/baxter_images_webcam_plates/images_post_webcam_rgb.npy"
    A = np.load(A)
    B = np.load(B)
    make_dir('temp', clean=True)
    for i in range(A.shape[-1]):
        x = A[:, :, :, i]
        Image.save(x, 'temp/{}.png'.format(i), mode='RGB')
