"""Event time against arrival time for a seeded stream with exponential delays, the watermark (largest event time seen minus
a delay of 20), and the late events that fall below it on arrival."""
import os
import random
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

random.seed(76)
events = sorted((e + random.expovariate(1 / 8), e) for e in (random.uniform(0, 200) for _ in range(400)))
delta, m = 20, float("-inf")
ok, late, wm = [], [], []
for a, e in events:
    (late if e < m - delta else ok).append((a, e))
    m = max(m, e)
    wm.append((a, m - delta))

fig, ax = plt.subplots(figsize=(5.6, 3.8))
ax.plot([a for a, _ in ok], [e for _, e in ok], "o", ms=2.5, color=MUTED, label="on time")
ax.plot([a for a, _ in late], [e for _, e in late], "o", ms=4, color=STATEMENT, label="late")
ax.step([a for a, _ in wm], [w for _, w in wm], where="post", color=ACCENT, lw=1.6, label="watermark")
ax.set_xlabel("arrival time")
ax.set_ylabel("event time")
ax.set_xlim(0, 230)
ax.set_ylim(-5, 205)
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="upper left")
save_figure(fig, "watermark")
