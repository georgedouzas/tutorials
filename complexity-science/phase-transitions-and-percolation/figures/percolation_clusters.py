"""The largest percolation cluster below, at and above the threshold (Charbonneau Figs. 4.5 and 4.9)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from matplotlib.colors import ListedColormap  # noqa: E402
from skcomplex.core.analysis import clusters  # noqa: E402

rng = np.random.default_rng(2)
fig, axes = plt.subplots(1, 3, figsize=(9, 3.2))
for ax, p in zip(axes, (0.5, 0.5927, 0.7)):
    grid = rng.random((128, 128)) < p
    result = clusters(grid, kind="labels")
    picture = grid.astype(int)
    picture[result.labels == np.argmax(result.sizes) + 1] = 2
    ax.imshow(picture, cmap=ListedColormap(["#ffffff", GRID, ACCENT]), interpolation="nearest")
    ax.set_title(rf"$p = {p}$", fontsize=10)
    ax.axis("off")
fig.tight_layout()
save_figure(fig, "percolation_clusters")
