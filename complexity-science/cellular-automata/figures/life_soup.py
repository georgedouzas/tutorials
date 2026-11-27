"""A random soup of the Game of Life and the ash it leaves (Downey Ch. 6)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from matplotlib.colors import ListedColormap  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.computer_science.automata import GameOfLifeSystem  # noqa: E402

rows = np.asarray(simulate(GameOfLifeSystem((64, 64), density=0.3, random_state=1), until=1000, dt=50, random_state=1).get_values("cells.alive")).reshape(-1, 64, 64)
fig, axes = plt.subplots(1, 3, figsize=(9, 3.3))
for ax, t in zip(axes, (0, 50, 1000)):
    ax.imshow(rows[t // 50], cmap=ListedColormap(["#ffffff", ACCENT]), interpolation="nearest")
    ax.set_title(rf"$t = {t}$", fontsize=10)
    ax.set_xticks([])
    ax.set_yticks([])
fig.tight_layout()
save_figure(fig, "life_soup")
