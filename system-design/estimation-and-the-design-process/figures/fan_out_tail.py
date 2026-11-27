"""Probability that a request fanned out to n independent servers is slow, 1 - (1 - p)^n, where each server is slow
with probability p; the marks are the two cases of Dean and Barroso (2013)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402

n = np.unique(np.logspace(0, 4, 300).astype(int))
fig, ax = plt.subplots(figsize=(5.2, 4.0))
for p, colour in ((1e-2, STATEMENT), (1e-3, ACCENT), (1e-4, EXAMPLE)):
    ax.plot(n, 1 - (1 - p) ** n, color=colour, lw=1.8, label=rf"$p = 10^{{{int(np.log10(p))}}}$")
ax.plot([100], [1 - 0.99**100], "o", color=STATEMENT, ms=6)
ax.annotate(f"{1 - 0.99**100:.2f}", (100, 1 - 0.99**100), textcoords="offset points", xytext=(-28, 4), color=INK)
ax.plot([2000], [1 - 0.9999**2000], "o", color=EXAMPLE, ms=6)
ax.annotate(f"{1 - 0.9999**2000:.2f}", (2000, 1 - 0.9999**2000), textcoords="offset points", xytext=(6, -12),
            color=INK)
ax.set_xscale("log")
ax.set_ylim(0, 1.02)
ax.set_xlabel(r"fan-out $n$ (servers per request)")
ax.set_ylabel(r"probability the request is slow")
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="upper left")
save_figure(fig, "fan_out_tail")
