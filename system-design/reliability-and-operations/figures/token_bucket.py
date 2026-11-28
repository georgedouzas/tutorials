"""Cumulative requests offered and admitted by a token bucket of capacity 20 and refill rate 5 per second, for bursts of 40
requests every 30 seconds, with the bound b + r t from the start of each burst."""
import os
import random
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

random.seed(1218)
times = sorted(t0 + random.uniform(0, 2) for t0 in range(0, 120, 30) for _ in range(40))
b, r, tokens, last = 20, 5, 20.0, 0.0
admitted = []
for t in times:
    tokens = min(b, tokens + r * (t - last)); last = t
    if tokens >= 1:
        tokens -= 1; admitted.append(t)

fig, ax = plt.subplots(figsize=(5.6, 3.6))
ax.step(times, range(1, len(times) + 1), where="post", color=MUTED, lw=1.4, label="offered")
ax.step(admitted, range(1, len(admitted) + 1), where="post", color=ACCENT, lw=1.6, label="admitted")
for t0 in range(0, 120, 30):
    before = sum(1 for a in admitted if a < t0)
    xs = [t0, t0 + 8]
    ax.plot(xs, [before + b + r * (x - t0) for x in xs], color=STATEMENT, lw=1.2, ls="--",
            label="bound $b + rt$" if t0 == 0 else None)
ax.set_xlabel("time (s)")
ax.set_ylabel("cumulative requests")
ax.set_xlim(0, 100)
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="upper left", fontsize=9)
save_figure(fig, "token_bucket")
