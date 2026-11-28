"""A DLA cluster and its mass-radius plot (Charbonneau Figs. 3.2 and 3.8)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.analysis import scaling  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.physics.statistical_mechanics import DiffusionLimitedAggregationSystem  # noqa: E402

run = simulate(DiffusionLimitedAggregationSystem(800, size=81, random_state=2), until=2000, random_state=2)
agents = run.get_agents("walkers", -1)
cells = np.asarray(agents.locations)[np.asarray(agents.values["stuck"]) > 0]
order = np.argsort(np.hypot(*(cells - 40).T))
r = np.hypot(*(cells - 40).T)
radii = np.arange(1, 31)
mass = np.array([(r <= R).sum() for R in radii])

fig, (left, right) = plt.subplots(1, 2, figsize=(8.4, 3.8))
left.scatter(cells[order, 0], cells[order, 1], c=r[order], cmap="viridis", s=7, marker="s", linewidths=0)
left.set_aspect("equal")
left.set_xlim(5, 75)
left.set_ylim(5, 75)
left.axis("off")
right.loglog(radii, mass, "o", color=ACCENT, ms=4, label=r"$M(R)$")
inside = (radii >= 2) & (radii <= 16)
slope = scaling(np.column_stack([radii[inside], mass[inside]]), kind="allometric").exponent
intercept = np.mean(np.log(mass[inside]) - slope * np.log(radii[inside]))
right.loglog(radii[inside], np.exp(intercept) * radii[inside] ** slope, color=STATEMENT, lw=1.4, label=f"slope {slope:.2f}")
right.loglog(radii, 3 * radii, color=MUTED, ls="--", lw=1, label="slope 1")
right.loglog(radii, 3 * radii**2, color=MUTED, ls=":", lw=1, label="slope 2")
right.set_xlabel(r"$R$")
right.set_ylabel(r"$M(R)$")
right.legend(frameon=False, fontsize=9)
fig.tight_layout()
save_figure(fig, "dla_cluster")
