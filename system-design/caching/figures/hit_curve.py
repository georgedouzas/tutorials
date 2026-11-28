"""Hit ratio against cache size on a seeded Zipf trace (s = 0.9, 5000 keys, 30000 requests): LRU and LFU replayed, and
the popularity of the C most popular keys, the bound of the independent reference model."""
import os
import sys
from collections import Counter, OrderedDict

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402

K, s, n = 5000, 0.9, 30_000
p = 1.0 / np.arange(1, K + 1) ** s
p /= p.sum()
trace = np.random.default_rng(1).choice(K, n, p=p)


def lru(C):
    c, h = OrderedDict(), 0
    for k in trace:
        if k in c:
            h += 1
            c.move_to_end(k)
        else:
            c[k] = None
            if len(c) > C:
                c.popitem(last=False)
    return h / n


def lfu(C):
    cnt, cache, h = Counter(), set(), 0
    for k in trace:
        cnt[k] += 1
        if k in cache:
            h += 1
        else:
            cache.add(k)
            if len(cache) > C:
                cache.remove(min(cache, key=lambda x: cnt[x]))
    return h / n


sizes = [25, 50, 100, 200, 400, 800]
Cs = np.arange(1, 1001)
fig, ax = plt.subplots(figsize=(5.2, 3.9))
ax.plot(Cs, np.cumsum(p)[:1000], color=ACCENT, lw=1.8, label="bound: top-$C$ popularity")
ax.plot(sizes, [lfu(C) for C in sizes], "o", color=STATEMENT, ms=5, label="LFU")
ax.plot(sizes, [lru(C) for C in sizes], "s", color=MUTED, ms=5, label="LRU")
ax.set_xscale("log")
ax.set_xlabel("cache size $C$ (keys)")
ax.set_ylabel("hit ratio")
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="upper left")
save_figure(fig, "hit_curve")
