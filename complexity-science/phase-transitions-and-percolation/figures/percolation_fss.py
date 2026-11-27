"""Spanning probability of site percolation for several sizes and its finite-size scaling collapse (Charbonneau Sec. 4.6)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.analysis import clusters  # noqa: E402

rng = np.random.default_rng(3)
ps = np.linspace(0.5, 0.7, 21)
fig, (left, right) = plt.subplots(1, 2, figsize=(8.4, 3.6))
for L, colour in zip((16, 32, 64, 128), SERIES):
    curve = np.array([clusters(rng.random((200, L, L)) < p, kind="spanning").probability for p in ps])
    left.plot(ps, curve, "o-", ms=3, lw=1, color=colour, label=rf"$L = {L}$")
    right.plot((ps - 0.5927) * L**0.75, curve, "o", ms=3, color=colour, label=rf"$L = {L}$")
left.axvline(0.5927, color=MUTED, ls="--", lw=1)
left.set_xlabel(r"$p$")
left.set_ylabel(r"$\Pi_L(p)$")
right.set_xlabel(r"$(p - p_c)L^{3/4}$")
right.set_xlim(-3, 3)
left.legend(frameon=False, fontsize=9)
fig.tight_layout()
save_figure(fig, "percolation_fss")
