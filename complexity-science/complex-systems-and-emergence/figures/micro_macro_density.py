"""Density counted in discs of growing radius, for two independent placements of 10^6 points (Charbonneau, Sec. 1.2)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402

N = 10**6
radii = np.logspace(-4, np.log10(0.5), 200)
fig, ax = plt.subplots(figsize=(6, 3.6))
for seed, colour, label in [(1, ACCENT, "first placement"), (2, STATEMENT, "second placement")]:
    points = np.random.default_rng(seed).random((N, 2))
    distances = np.sort(np.hypot(points[:, 0] - 0.5, points[:, 1] - 0.5))
    counts = np.searchsorted(distances, radii, side="right")
    ax.plot(radii, counts / (np.pi * radii**2) / N, color=colour, lw=1.6, label=label)
ax.axhline(1.0, color=MUTED, lw=1, ls="--")
ax.axvline(N ** -0.5, color=MUTED, lw=1, ls=":")
ax.text(N ** -0.5 * 1.15, 1.75, r"mean spacing $N^{-1/2}$", color=MUTED, fontsize=9)
ax.set_xscale("log")
ax.set_ylim(0, 2.0)
ax.set_xlabel(r"radius $r$")
ax.set_ylabel(r"density $\rho(r)$ in units of $N$")
ax.legend(frameon=False, loc="upper right")
save_figure(fig, "micro_macro_density")
