"""Attempts per second at a backend accepting 1000 a second, for 1100 new requests a second, under three retry policies:
retry after one second for ever, jittered doubling backoff with at most three attempts, and the same with a 10% retry budget."""
import os
import random
import sys

import simpy

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403


def storm(policy, X=1100, C=1000, T=30, seed=1204, ratio=0.1):
    rnd, env = random.Random(seed), simpy.Environment()
    used, attempts, sent = {}, [0] * T, {"new": 0, "retries": 0}

    def accept(t):
        s = int(t); attempts[s] += 1; used[s] = used.get(s, 0) + 1
        return used[s] <= C

    def request(env):
        sent["new"] += 1
        for k in range(1, 10**9):
            if env.now >= T or accept(env.now):
                return
            if policy == "fixed":
                yield env.timeout(1.0); continue
            if k == 3:
                return
            if policy == "budget" and sent["retries"] + 1 > ratio * sent["new"]:
                return
            sent["retries"] += 1
            yield env.timeout(rnd.uniform(0, 0.5 * 2**k))

    def source(env):
        while True:
            yield env.timeout(rnd.expovariate(X)); env.process(request(env))

    env.process(source(env)); env.run(until=T)
    return attempts


fig, ax = plt.subplots(figsize=(5.6, 3.6))
labels = {"fixed": "retry every second, no limit", "backoff": "jittered backoff, 3 attempts", "budget": "backoff + 10% retry budget"}
for policy, colour in (("fixed", STATEMENT), ("backoff", ACCENT), ("budget", EXAMPLE)):
    a = storm(policy)
    ax.plot(range(1, len(a)), a[1:], color=colour, lw=1.6, label=labels[policy])
ax.axhline(1000, color=MUTED, lw=1, ls="--")
ax.text(28.5, 960, "capacity", color=MUTED, ha="right", va="top", fontsize=9)
ax.set_xlabel("time (s)")
ax.set_ylabel("attempts per second")
ax.set_xlim(1, 29)
ax.set_ylim(0, 4500)
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="upper left", fontsize=9)
save_figure(fig, "retry_storm")
