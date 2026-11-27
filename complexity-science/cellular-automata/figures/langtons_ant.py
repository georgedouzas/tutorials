"""Langton's ant after 11000 steps on a white lattice: the disordered blob and the highway (Charbonneau Fig. 2.11)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from matplotlib.colors import ListedColormap  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.computer_science.automata import LangtonsAntSystem  # noqa: E402

L = 100
run = simulate(LangtonsAntSystem((L, L)), until=11_000, dt=11_000)
colours = np.asarray(run.get_values("cells.color"))[-1].reshape(L, L)
(i, j), = np.argwhere(np.asarray(run.get_values("cells.ant"))[-1].reshape(L, L) >= 0)
fig, ax = plt.subplots(figsize=(4.6, 4.6))
ax.imshow(colours[10:90, 10:90], cmap=ListedColormap(["#ffffff", INK]), interpolation="nearest")
ax.plot([L // 2 - 10], [L // 2 - 10], "o", color=STATEMENT, ms=6)
ax.plot([j - 10], [i - 10], "o", color=EXAMPLE, ms=6)
ax.set_xticks([])
ax.set_yticks([])
fig.tight_layout()
save_figure(fig, "langtons_ant")
