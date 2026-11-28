"""Throughput and mean response time of a seeded simulation of a closed system (think time Z = 10 ms, an application
server with exponential service of mean 0.5 ms, and a database visited with probability 0.3 with exponential service of
mean 2 ms) against the number of users M, with the operational bounds X <= min(M/(D + Z), 1/D_max) and
W >= max(D, M D_max - Z), D = 1.1 ms, D_max = 0.6 ms."""
import heapq
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402

Z, S_APP, S_DB, P_DB = 10.0, 0.5, 2.0, 0.3          # milliseconds


def closed(M, n=40_000, seed=5):
    rng = np.random.default_rng(seed)
    ev = [(rng.exponential(Z), u) for u in range(M)]
    heapq.heapify(ev)
    free_app = free_db = 0.0
    total, last = 0.0, 0.0
    for _ in range(n):
        t, u = heapq.heappop(ev)
        free_app = max(free_app, t) + rng.exponential(S_APP)
        done = free_app
        if rng.random() < P_DB:
            free_db = max(free_db, done) + rng.exponential(S_DB)
            done = free_db
        total += done - t
        last = max(last, done)
        heapq.heappush(ev, (done + rng.exponential(Z), u))
    return n / last, total / n


D, DMAX = S_APP + P_DB * S_DB, P_DB * S_DB
users = [1, 2, 4, 6, 8, 10, 12, 15, 18, 21, 25, 30, 40, 50, 60, 80]
sim = [closed(m) for m in users]
m_line = np.linspace(1, 80, 200)
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(9.6, 3.8))
ax1.plot(m_line, np.minimum(m_line / (D + Z), 1 / DMAX) * 1000, "--", color=MUTED, lw=1.4, label="bounds")
ax1.plot(users, [x * 1000 for x, _ in sim], "o-", color=ACCENT, lw=1.6, ms=4, label="simulation")
ax1.axvline((D + Z) / DMAX, color=STATEMENT, lw=1.0, ls=":")
ax1.set_xlabel("users $M$")
ax1.set_ylabel("throughput $X$ (requests/s)")
ax1.legend(frameon=False, loc="lower right")
ax1.grid(True, color=GRID, lw=0.6)
ax2.plot(m_line, np.maximum(D, m_line * DMAX - Z), "--", color=MUTED, lw=1.4, label="bounds")
ax2.plot(users, [w for _, w in sim], "o-", color=EXAMPLE, lw=1.6, ms=4, label="simulation")
ax2.axvline((D + Z) / DMAX, color=STATEMENT, lw=1.0, ls=":")
ax2.set_xlabel("users $M$")
ax2.set_ylabel("mean response time $W$ (ms)")
ax2.legend(frameon=False, loc="upper left")
ax2.grid(True, color=GRID, lw=0.6)
fig.tight_layout()
save_figure(fig, "closed_bounds")
