"""Clustering and mean distance of Watts-Strogatz graphs against the rewiring probability, relative to the ring lattice (Thurner Fig. 4.11)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.analysis import network_measures  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.mathematics.networks import RandomGraphEnsemblesSystem  # noqa: E402

eps = np.logspace(-4, 0, 13)
rows = []
for e in np.concatenate([[0.0], eps]):
    G = simulate(RandomGraphEnsemblesSystem(500, ensemble="watts_strogatz", mean_degree=10, rewiring=float(e), steps=1), until=1, random_state=1).get_network(-1).get_graph()
    r = network_measures(G)
    rows.append((r.clustering[0], r.path_length[0]))
C0, l0 = rows[0]
C, ell = np.array(rows[1:]).T
fig, ax = plt.subplots(figsize=(6.2, 3.6))
ax.semilogx(eps, C / C0, "o-", ms=4, color=ACCENT, label=r"clustering $C(\epsilon)/C(0)$")
ax.semilogx(eps, ell / l0, "s-", ms=4, color=STATEMENT, label=r"mean distance $\ell(\epsilon)/\ell(0)$")
ax.set_xlabel(r"rewiring probability $\epsilon$")
ax.set_ylim(0, 1.05)
ax.legend(frameon=False)
fig.tight_layout()
save_figure(fig, "small_world")
