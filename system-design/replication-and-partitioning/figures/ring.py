"""A consistent-hashing ring with four nodes at three seeded random positions each: arcs coloured by the owning node
(the arc ends at the owning position), position markers, and a few keys with arrows to their owners."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402

rng = np.random.default_rng(4)
nodes = ["A", "B", "C", "D"]
pos = sorted((rng.random(), n) for n in nodes for _ in range(3))
colour = dict(zip(nodes, SERIES))
fig, ax = plt.subplots(figsize=(4.6, 4.6))
ang = lambda x: np.pi / 2 - 2 * np.pi * x
for i, (p, n) in enumerate(pos):
    prev = pos[i - 1][0] - (1 if i == 0 else 0)
    t = np.linspace(ang(prev), ang(p), 60)
    ax.plot(np.cos(t), np.sin(t), color=colour[n], lw=6, solid_capstyle="butt")
    ax.plot(np.cos(ang(p)), np.sin(ang(p)), "o", color=colour[n], ms=9, mec="white", mew=1.2)
    ax.text(1.17 * np.cos(ang(p)), 1.17 * np.sin(ang(p)), f"{n}{sum(1 for q in pos[:i] if q[1] == n)}",
            ha="center", va="center", color=colour[n], fontsize=10)
for k in rng.random(5):
    owner = next((n for p, n in pos if p >= k), pos[0][1])
    ax.plot(0.78 * np.cos(ang(k)), 0.78 * np.sin(ang(k)), "s", color=INK, ms=4)
for n in nodes:
    ax.plot([], [], color=colour[n], lw=6, label=f"node {n}")
ax.plot([], [], "s", color=INK, ms=4, label="key")
ax.legend(frameon=False, loc="center", fontsize=9)
ax.set_xlim(-1.35, 1.35); ax.set_ylim(-1.35, 1.35); ax.set_aspect("equal"); ax.axis("off")
save_figure(fig, "ring")
