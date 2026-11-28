"""Store requests caused by one expiry of a key against its request rate, for a regeneration time of 50 ms: without
coalescing, the formula 1 + lambda r and seeded simulations of Poisson arrivals; with coalescing, one."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402

r = 0.05
rng = np.random.default_rng(3)
lam = np.linspace(0, 4000, 200)
fig, ax = plt.subplots(figsize=(5.2, 3.9))
ax.plot(lam, 1 + lam * r, color=ACCENT, lw=1.8, label=r"without coalescing, $1 + \lambda r$")
pts = [250, 500, 1000, 2000, 3000, 4000]
ax.plot(pts, [1 + rng.poisson(x * r, 5000).mean() for x in pts], "o", color=MUTED, ms=5, label="simulation")
ax.plot(lam, np.ones_like(lam), color=STATEMENT, lw=1.8, ls="--", label="with coalescing")
ax.set_xlabel(r"request rate for the key $\lambda$ (per second)")
ax.set_ylabel("store requests per expiry")
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="upper left")
save_figure(fig, "stampede")
