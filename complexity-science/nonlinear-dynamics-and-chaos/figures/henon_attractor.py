"""The Henon attractor at a = 1.4, b = 0.3 and a magnification (Datseris Fig. 4.4)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.mathematics.dynamical_systems import HenonMapSystem  # noqa: E402

trajectory = simulate(HenonMapSystem(x=0.0, y=0.0), until=300000)
x, y = trajectory.get_values("map.x")[100:], trajectory.get_values("map.y")[100:]
box = (0.55, 0.75, 0.15, 0.21)

fig, (left, right) = plt.subplots(1, 2, figsize=(8.4, 3.6))
left.scatter(x, y, s=0.05, color=ACCENT, linewidths=0, rasterized=True)
left.add_patch(plt.Rectangle((box[0], box[2]), box[1] - box[0], box[3] - box[2], fill=False, edgecolor=STATEMENT, lw=1.2))
left.set_xlabel(r"$x$")
left.set_ylabel(r"$y$")
inside = (x > box[0]) & (x < box[1]) & (y > box[2]) & (y < box[3])
right.scatter(x[inside], y[inside], s=0.4, color=ACCENT, linewidths=0, rasterized=True)
right.set_xlim(box[0], box[1])
right.set_ylim(box[2], box[3])
right.set_xlabel(r"$x$")
for spine in right.spines.values():
    spine.set_edgecolor(STATEMENT)
fig.tight_layout()
save_figure(fig, "henon_attractor")
