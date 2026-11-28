"""False-positive rate of a Bloom filter against bits per key m/n, at the best integer number of hash functions: the
approximation (1 - exp(-k n/m))^k and seeded simulations of filters with n = 2000 keys queried with 2e5 non-members."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402


def f(k, r):
    return (1 - np.exp(-k / r)) ** k


def best_k(r):
    return min(range(1, 30), key=lambda k: f(k, r))


def simulate(r, n=2000, queries=200_000, seed=3):
    rng = np.random.default_rng(seed)
    m, k = int(r * n), best_k(r)
    bits = np.zeros(m, bool)
    bits[rng.integers(0, m, n * k)] = True
    return bits[rng.integers(0, m, (queries, k))].all(axis=1).mean()


r = np.linspace(1, 20, 400)
fig, ax = plt.subplots(figsize=(5.2, 3.9))
ax.plot(r, [f(best_k(x), x) for x in r], color=ACCENT, lw=1.8, label="approximation, best integer $k$")
ax.plot(r, 0.6185 ** r, color=STATEMENT, lw=1.2, ls="--", label="$0.6185^{m/n}$ (real $k$)")
pts = [2, 4, 6, 8, 10, 12, 14]
ax.plot(pts, [simulate(x) for x in pts], "o", color=MUTED, ms=5, label="simulation")
ax.set_yscale("log")
ax.set_xlabel("bits per key $m/n$")
ax.set_ylabel("false-positive rate")
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="upper right")
save_figure(fig, "bloom_fp")
