"""Largest component of graphs grown by random links and by the product rule, against S = 1 - exp(-zS) (Gros Fig. 1.9)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from scipy.optimize import brentq  # noqa: E402
from skcomplex.core.analysis import clusters  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.mathematics.networks import ExplosivePercolationSystem  # noqa: E402

N = 4000
frames = np.arange(0, int(1.5 * N) + 1, 100)
z = 2 * frames / N
fig, ax = plt.subplots(figsize=(6.2, 3.6))
for candidates, color, label in ((1, ACCENT, "uniform links"), (2, STATEMENT, "product rule")):
    trajectory = simulate(ExplosivePercolationSystem(N, candidates=candidates), until=int(1.5 * N), random_state=1)
    share = [clusters(trajectory.get_network(int(f)).get_graph(), kind="sizes").sizes[0] / N for f in frames]
    ax.plot(z, share, "o", ms=3.5, color=color, label=label)
theory = [brentq(lambda s: s - 1 + np.exp(-x * s), 1e-12, 1) if x > 1 else 0.0 for x in np.linspace(0, 3, 301)]
ax.plot(np.linspace(0, 3, 301), theory, color=INK, lw=1.2, label=r"$S = 1 - e^{-zS}$")
ax.set_xlabel(r"mean degree $z$")
ax.set_ylabel("share of nodes in the largest component")
ax.legend(frameon=False)
fig.tight_layout()
save_figure(fig, "giant_component")
