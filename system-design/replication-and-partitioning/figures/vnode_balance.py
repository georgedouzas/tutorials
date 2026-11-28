"""Relative standard deviation of a node's share of the ring against the number of virtual nodes per node, for n = 20
nodes: the formula sqrt((n - 1)/(n v + 1)) and seeded simulations of random rings, with the curve 1/sqrt(v)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402

n = 20
rng = np.random.default_rng(3)


def simulate(v, trials=400):
    shares = []
    for _ in range(trials):
        p = rng.random(n * v)
        order = np.argsort(p)
        ps = p[order]
        arcs = np.diff(np.concatenate([[ps[-1] - 1], ps]))
        shares.append(np.bincount(np.arange(n * v)[order] % n, weights=arcs, minlength=n))
    return np.std(np.concatenate(shares)) * n


v = np.logspace(0, 3, 200)
fig, ax = plt.subplots(figsize=(5.2, 3.9))
ax.plot(v, np.sqrt((n - 1) / (n * v + 1)), color=ACCENT, lw=1.8, label=r"$\sqrt{(n-1)/(nv+1)}$")
ax.plot(v, 1 / np.sqrt(v), color=STATEMENT, lw=1.2, ls="--", label=r"$1/\sqrt{v}$")
pts = [1, 3, 10, 30, 100, 300, 1000]
ax.plot(pts, [simulate(x) for x in pts], "o", color=MUTED, ms=5, label="simulation")
ax.set_xscale("log"); ax.set_yscale("log")
ax.set_xlabel("virtual nodes per node $v$")
ax.set_ylabel("sd of share / mean share")
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="lower left")
save_figure(fig, "vnode_balance")
