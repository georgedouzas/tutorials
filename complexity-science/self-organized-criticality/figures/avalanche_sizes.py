"""Avalanche-size distributions of the Bak-Tang-Wiesenfeld sandpile on lattices of side 16, 32 and 48."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.analysis import distribution  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.physics.criticality import SandpileSystem  # noqa: E402

fig, ax = plt.subplots(figsize=(6.2, 3.6))
for L, steps, skip, color in ((16, 20000, 4000, ACCENT), (32, 20000, 6000, STATEMENT), (48, 20000, 6000, EXAMPLE)):
    ev = simulate(SandpileSystem((L, L), random_state=3), until=steps, random_state=3).events
    s = np.array([e.size for e in ev if e.time > skip], float)
    d = distribution(s, kind="histogram", bins=30, log=True)
    centers = np.sqrt(d.edges[1:] * d.edges[:-1])
    keep = d.density > 0
    ax.loglog(centers[keep], d.density[keep], "o-", ms=3, lw=1.2, color=color, label=f"$L = {L}$")
ax.set_xlabel(r"avalanche size $s$")
ax.set_ylabel(r"density $P(s)$")
ax.legend(frameon=False)
fig.tight_layout()
save_figure(fig, "avalanche_sizes")
