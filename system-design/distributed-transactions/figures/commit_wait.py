"""Commit wait with a constant TrueTime uncertainty eps: the interval at the commit request, the chosen timestamp s = latest,
and the first later interval whose earliest end passes s, 2 eps after the request."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

eps = 4.0
t0 = 0.0
s = t0 + eps
fig, ax = plt.subplots(figsize=(5.8, 3.0))
for k, t in enumerate([t0, t0 + 4, t0 + 8.4]):
    color = ACCENT if k == 0 else (STATEMENT if k == 2 else MUTED)
    ax.plot([t - eps, t + eps], [k, k], color=color, lw=3)
    ax.plot([t], [k], "o", color=INK, ms=4)
ax.axvline(s, color=STATEMENT, lw=1.2, ls="--")
ax.text(s + 0.2, 2.45, r"$s = \mathit{latest}$", color=STATEMENT, fontsize=9)
ax.set_yticks([0, 1, 2])
ax.set_yticklabels(["at the request", "during the wait", "TT.after(s) true"])
ax.set_xlabel(r"absolute time (ms); dots are the true times, bars the intervals of half-width $\varepsilon = 4$")
ax.set_ylim(-0.6, 2.8)
ax.set_xlim(-6, 15)
ax.grid(True, axis="x", color=GRID, lw=0.6)
save_figure(fig, "commit_wait")
