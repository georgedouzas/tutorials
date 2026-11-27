"""The annealed overlap map of Kauffman networks and its fixed point against the connectivity (Gros Fig. 7.5)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402

a = np.linspace(0, 1, 400)
fig, (left, right) = plt.subplots(1, 2, figsize=(9, 3.6))
for K, colour in zip((1, 3, 7), (EXAMPLE, ACCENT, STATEMENT)):
    left.plot(a, 1 - (1 - a ** K) / 2, color=colour, lw=1.5, label=rf"$K = {K}$")
left.plot(a, a, color=MUTED, lw=1, ls="--", label=r"$a(t + 1) = a(t)$")
left.set_xlabel(r"$a(t)$")
left.set_ylabel(r"$a(t + 1)$")
left.set_ylim(0.45, 1.01)
left.legend(frameon=False, fontsize=9)
for p, colour in zip((0.5, 0.3, 0.15), (ACCENT, EXERCISE, ORANGE)):
    Kc, Ks, fixed = 1 / (2 * p * (1 - p)), np.linspace(1, 10, 200), []
    for K in Ks:
        x = 0.99
        for _ in range(3000):
            x = 1 - (1 - x ** K) / Kc
        fixed.append(x)
    right.plot(Ks, fixed, color=colour, lw=1.5, label=rf"$p = {p}$, $K_c = {Kc:.2f}$")
right.set_xlabel(r"$K$")
right.set_ylabel(r"$a^*$")
right.legend(frameon=False, fontsize=9)
fig.tight_layout()
save_figure(fig, "overlap_map")
