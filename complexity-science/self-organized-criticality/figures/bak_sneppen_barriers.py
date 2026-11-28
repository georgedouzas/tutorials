"""Barriers of 200 species on a Bak-Sneppen ring at the start and after 2000 updates per species, with the threshold near 2/3."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.biology.evolution import BakSneppenSystem  # noqa: E402

x = np.asarray(simulate(BakSneppenSystem(200, random_state=61), until=2000, random_state=61).get_values("species.fitness"))
fig, axes = plt.subplots(1, 2, figsize=(6.6, 3.0), sharey=True)
for ax, frame, title in ((axes[0], 0, "start"), (axes[1], -1, "stationary")):
    ax.plot(np.arange(200), x[frame], "o", ms=2.2, color=ACCENT)
    ax.axhline(0.667, color=STATEMENT, lw=0.9, ls="--")
    ax.set_title(title)
    ax.set_xlabel("species")
axes[0].set_ylabel(r"barrier $B_i$")
fig.tight_layout()
save_figure(fig, "bak_sneppen_barriers")
