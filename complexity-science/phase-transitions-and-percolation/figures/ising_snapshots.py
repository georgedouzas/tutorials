"""Ising configurations below, at and above the critical temperature (Argun et al. Fig. 2.3)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from matplotlib.colors import ListedColormap  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.physics.statistical_mechanics import IsingSystem  # noqa: E402

fig, axes = plt.subplots(1, 3, figsize=(9, 3.2))
for ax, T in zip(axes, (1.5, 2.269, 3.5)):
    spins = np.asarray(simulate(IsingSystem(128, temperature=T, random_state=1), until=500, random_state=1).get_values("spins.spin"))[-1].reshape(128, 128)
    ax.imshow(spins, cmap=ListedColormap(["#ffffff", ACCENT]), interpolation="nearest")
    ax.set_title(rf"$T = {T}$", fontsize=10)
    ax.axis("off")
fig.tight_layout()
save_figure(fig, "ising_snapshots")
