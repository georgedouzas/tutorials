"""Spiral wave of the FitzHugh-Nagumo medium and its phase field with the phase singularity (Datseris Fig. 11.6)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from matplotlib.colors import LinearSegmentedColormap  # noqa: E402
from skcomplex.core.analysis import defects  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.biology.physiology import FitzhughNagumoSystem  # noqa: E402

run = simulate(FitzhughNagumoSystem((100, 100)), until=300, dt=300)
u = np.asarray(run.get_values("medium.u"))[-1].reshape(100, 100)
v = np.asarray(run.get_values("medium.v"))[-1].reshape(100, 100)
alpha = np.arctan2((v - v.mean()) / v.std(), (u - u.mean()) / u.std())
(ci, cj), = defects(alpha, period=2 * np.pi, periodic=False).positions[0]
fig, (left, right) = plt.subplots(1, 2, figsize=(8.4, 4.0))
left.imshow(u, cmap=LinearSegmentedColormap.from_list("ex", ["#ffffff", ACCENT]), interpolation="nearest")
right.imshow(alpha, cmap="twilight", interpolation="nearest")
for ax in (left, right):
    ax.plot([cj], [ci], "o", color=STATEMENT, ms=6, mfc="none", mew=1.6)
    ax.set_xticks([])
    ax.set_yticks([])
fig.tight_layout()
save_figure(fig, "fhn_spiral")
