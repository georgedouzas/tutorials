"""The mean-field majority map R(p) = 3p^2 - 2p^3 with two iterations drawn as staircases."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402


def R(p):
    return 3 * p**2 - 2 * p**3


p = np.linspace(0, 1, 400)
fig, ax = plt.subplots(figsize=(4.6, 4.4))
ax.plot(p, p, color=MUTED, lw=1, ls="--", label="diagonal")
ax.plot(p, R(p), color=ACCENT, lw=2, label=r"$R(p) = 3p^2 - 2p^3$")
for p0, colour in ((0.45, STATEMENT), (0.55, EXAMPLE)):
    x, xs, ys = p0, [p0], [0.0]
    for _ in range(8):
        y = R(x)
        xs += [x, y]
        ys += [y, y]
        x = y
    ax.plot(xs, ys, color=colour, lw=1.2, label=rf"from $p_0 = {p0}$")
ax.plot([0, 0.5, 1], [0, 0.5, 1], "o", color=INK, ms=4)
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_aspect("equal")
ax.set_xlabel(r"share $p$")
ax.set_ylabel(r"share after one round")
ax.legend(frameon=False, loc="upper left", fontsize=9)
save_figure(fig, "majority_map")
