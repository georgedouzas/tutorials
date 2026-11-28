"""Mean and 99th-percentile response time of the M/M/1 queue in units of the mean service time, 1/(1 - rho) and
log(100)/(1 - rho), against the utilisation rho, with seeded simulations of the queue at several utilisations."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402


def simulate(rho, n=200_000, seed=1):
    rng = np.random.default_rng(seed)
    a = np.cumsum(rng.exponential(1 / rho, n))
    s = rng.exponential(1.0, n)
    d = np.empty(n)
    free = 0.0
    for i in range(n):
        free = max(free, a[i]) + s[i]
        d[i] = free
    t = (d - a)[n // 10:]
    return t.mean(), np.quantile(t, 0.99)


rho = np.linspace(0.0, 0.95, 200)
fig, ax = plt.subplots(figsize=(5.2, 3.9))
ax.plot(rho, 1 / (1 - rho), color=ACCENT, lw=1.8, label="mean, $1/(1-\\rho)$")
ax.plot(rho, np.log(100) / (1 - rho), color=STATEMENT, lw=1.8, label="p99, $\\log 100/(1-\\rho)$")
for r in (0.2, 0.4, 0.6, 0.7, 0.8, 0.9):
    m, p = simulate(r)
    ax.plot(r, m, "o", color=ACCENT, ms=5)
    ax.plot(r, p, "o", color=STATEMENT, ms=5)
ax.plot([], [], "o", color=MUTED, ms=5, label="simulation")
ax.set_yscale("log")
ax.set_xlabel(r"utilisation $\rho = \lambda/\mu$")
ax.set_ylabel("response time / mean service time")
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="upper left")
save_figure(fig, "mm1_response")
