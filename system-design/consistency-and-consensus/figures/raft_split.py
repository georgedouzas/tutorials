"""Probability that the second-earliest of five uniform election timeouts on [150, 150 + w] ms falls within 10 ms of the
earliest, against the interval width w: the approximation 1 - (1 - 10/w)^5 and seeded simulations."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402

rng = np.random.default_rng(9)
w = np.linspace(20, 400, 200)
fig, ax = plt.subplots(figsize=(5.2, 3.9))
ax.plot(w, 1 - (1 - 10 / w) ** 5, color=ACCENT, lw=1.8, label=r"$1 - (1 - \delta/w)^5$")
pts = [25, 50, 100, 150, 200, 300, 400]
sim = []
for x in pts:
    t = np.sort(rng.uniform(150, 150 + x, (100_000, 5)), axis=1)
    sim.append(np.mean(t[:, 1] - t[:, 0] < 10))
ax.plot(pts, sim, "o", color=MUTED, ms=5, label="simulation")
ax.set_xlabel("width of the timeout interval $w$ (ms)")
ax.set_ylabel("P(second timeout within 10 ms)")
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False)
save_figure(fig, "raft_split")
