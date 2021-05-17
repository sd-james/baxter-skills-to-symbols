import numpy as np
from sklearn.decomposition import FastICA

from s2s.view_images import reshape

A = "./old_baxter_images_webcam_plates/images_pre_webcam.npy"
A = np.load(A)

data = list()
for ii in range(A.shape[-1]):
    x = reshape(A[:, :, :, ii])

    # plt.subplot(2, 1, 1)
    # plt.imshow(resize_image(A[:, :, :, ii], 4))
    # plt.subplot(2, 1, 2)
    # plt.imshow(pca.representation(x, preprocess=False))
    # plt.show()

    data.append(reshape(A[:, :, :, ii], resize=8))

transformer = FastICA(n_components=7, random_state=0, max_iter=1000)
X_transformed = transformer.fit_transform(data)
print(X_transformed.shape)