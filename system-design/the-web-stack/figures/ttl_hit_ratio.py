"""Hit ratio of one object at one edge server with freshness lifetime Delta, against the mean number lambda*Delta of
requests in a lifetime: the formula lambda*Delta / (1 + lambda*Delta) and seeded simulations with requests in slots of
length delta = Delta / k, each slot holding a request with probability p = lambda*delta independently."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402


def simulated_hit_ratio(k, p, slots, rng):
    requests = np.flatnonzero(rng.random(slots) < p)
    hits, fresh_until = 0, -1
    for s in requests:
        if s <= fresh_until:
            hits += 1
        else:
            fresh_until = s + k
    return hits / len(requests)


rng = np.random.default_rng(7)
x = np.logspace(-2, 3, 200)
fig, ax = plt.subplots(figsize=(5.2, 3.8))
ax.plot(x, x / (1 + x), color=ACCENT, lw=1.8, label=r"$\lambda\Delta/(1 + \lambda\Delta)$")
k = 100
for lam_delta in (0.03, 0.1, 0.3, 1, 3, 10, 30, 100):
    p = lam_delta / k
    ax.plot(lam_delta, simulated_hit_ratio(k, p, 2_000_000, rng), "o", color=STATEMENT, ms=5)
ax.plot([], [], "o", color=STATEMENT, ms=5, label="simulation, $k = 100$ slots")
ax.set_xscale("log")
ax.set_xlabel(r"requests per freshness lifetime $\lambda\Delta$")
ax.set_ylabel(r"hit ratio $h$")
ax.set_ylim(0, 1.02)
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="upper left")
save_figure(fig, "ttl_hit_ratio")
