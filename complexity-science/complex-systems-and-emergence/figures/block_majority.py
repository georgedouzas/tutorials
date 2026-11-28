"""Ising configurations below and above T_c and two rounds of 3x3 block majority."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from matplotlib.colors import ListedColormap  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.physics.statistical_mechanics import IsingSystem  # noqa: E402


def block_majority(s):  # scikit-complexity #30: block-spin coarse-graining is not in 0.9.0
    L = s.shape[0] // 3
    return np.sign(s[:3 * L, :3 * L].reshape(L, 3, L, 3).sum(axis=(1, 3)))


cmap = ListedColormap(["#eef1f5", ACCENT])
fig, axes = plt.subplots(2, 3, figsize=(7.5, 5.2))
for row, T in enumerate((1.8, 3.5)):
    s = simulate(IsingSystem(162, temperature=T), until=300, random_state=11).get_lattice("spins.spin")[-1]
    for col in range(3):
        ax = axes[row, col]
        ax.imshow(s, cmap=cmap, vmin=-1, vmax=1, interpolation="nearest")
        ax.set_xticks([]); ax.set_yticks([])
        for side in ax.spines.values():
            side.set_color(GRID)
        if row == 0:
            ax.set_title(["lattice $162^2$", "one round, $54^2$", "two rounds, $18^2$"][col], fontsize=10)
        if col == 0:
            ax.set_ylabel(f"$T = {T}$")
        s = block_majority(s)
fig.tight_layout()
save_figure(fig, "block_majority")
