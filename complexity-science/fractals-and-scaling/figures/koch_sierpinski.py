"""Generations of the Koch curve and the Sierpinski gasket drawn by the chaos game (Thurner Fig. 3.9, Dilao Fig. 5.13)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.mathematics.fractals import ChaosGameSystem, KochCurveSystem  # noqa: E402

koch = simulate(KochCurveSystem(), until=5)
points = simulate(ChaosGameSystem(n_points=30000, random_state=1), until=25, random_state=1).get_values("points.p")[-1]

fig, (left, right) = plt.subplots(1, 2, figsize=(9, 3.8), gridspec_kw={"width_ratios": [1.4, 1]})
for generation, colour in zip(range(5), SERIES):
    segments = koch.structures[generation]["koch"].get_segments()
    offset = -0.42 * generation
    for (x0, y0), (x1, y1) in segments:
        left.plot([x0, x1], [y0 + offset, y1 + offset], color=colour, lw=1.0)
    left.text(-0.06, offset, f"$k = {generation}$", ha="right", va="bottom", fontsize=9, color=INK)
left.set_xlim(-0.22, 1.02)
left.set_aspect("equal")
left.axis("off")
right.scatter(points[:, 0], points[:, 1], s=0.05, color=ACCENT, linewidths=0, rasterized=True)
right.set_aspect("equal")
right.axis("off")
fig.tight_layout()
save_figure(fig, "koch_sierpinski")
