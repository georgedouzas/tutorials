"""Load-balancing algorithms compared. Left: the largest number of requests on one server when n requests are assigned
to n servers by round robin, at random, or to the less loaded of d random servers (d = 2, 3), the mean of 20 seeded
runs. Right: mean response time in a seeded simulation of 20 servers that serve requests one at a time in arrival
order, with exponential service times of mean 1 and random arrivals, against the offered load as a fraction of the
pool's capacity."""
import os
import sys
from collections import deque

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402


def max_load(n, d, rng):
    load = np.zeros(n, dtype=int)
    if d == 0:  # round robin
        return int(np.ceil(n / n))
    picks = rng.integers(0, n, size=(n, d))
    for row in picks:
        j = row[np.argmin(load[row])] if d > 1 else row[0]
        load[j] += 1
    return int(load.max())


def simulate(rule, load, n=20, requests=60000, seed=1):
    rng = np.random.default_rng(seed)
    gaps = rng.exponential(1 / (load * n), requests)
    work = rng.exponential(1.0, requests)
    picks = rng.integers(0, n, size=(requests, 2))
    free = [0.0] * n                          # time at which each server finishes its current backlog
    pending = [deque() for _ in range(n)]     # departure times of the requests at each server
    t, total, rr = 0.0, 0.0, 0
    for i in range(requests):
        t += gaps[i]
        for q in pending:
            while q and q[0] <= t:
                q.popleft()
        if rule == "round robin":
            j, rr = rr, (rr + 1) % n
        elif rule == "random":
            j = picks[i, 0]
        elif rule == "two choices":
            a, b = picks[i]
            j = a if len(pending[a]) <= len(pending[b]) else b
        else:  # least connections
            j = min(range(n), key=lambda k: len(pending[k]))
        start = max(t, free[j])
        free[j] = start + work[i]
        pending[j].append(free[j])
        if i >= requests // 10:
            total += free[j] - t
    return total / (requests - requests // 10)


rng = np.random.default_rng(2026)
ns = np.unique(np.logspace(1, 5, 9).astype(int))
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(9.6, 4.0))
for d, label, colour in ((1, "random", STATEMENT), (2, "two choices", ACCENT), (3, "three choices", EXAMPLE)):
    means = [np.mean([max_load(n, d, rng) for _ in range(20)]) for n in ns]
    ax1.plot(ns, means, "o-", color=colour, lw=1.6, ms=4, label=label)
ax1.plot(ns, np.ones_like(ns), "s--", color=EXERCISE, lw=1.4, ms=4, label="round robin")
ax1.set_xscale("log")
ax1.set_xlabel(r"servers $n$ (and requests $m = n$)")
ax1.set_ylabel("largest load of a server")
ax1.set_ylim(0, 9)
ax1.grid(True, color=GRID, lw=0.6)
ax1.legend(frameon=False, loc="upper left")

loads = [0.5, 0.6, 0.7, 0.8, 0.9, 0.95]
for rule, colour, style in (("random", STATEMENT, "o-"), ("round robin", EXERCISE, "s--"),
                            ("two choices", ACCENT, "o-"), ("least connections", EXAMPLE, "^-")):
    ax2.plot(loads, [simulate(rule, x) for x in loads], style, color=colour, lw=1.6, ms=4, label=rule)
ax2.set_yscale("log")
ax2.set_xlabel("offered load / capacity of the pool")
ax2.set_ylabel("mean response time (mean service times)")
ax2.grid(True, color=GRID, lw=0.6)
ax2.legend(frameon=False, loc="upper left")
fig.tight_layout()
save_figure(fig, "lb_algorithms")
