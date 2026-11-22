# ||a^n||^(1/n) for n = 1..60: A = [[1/2, 4], [0, 1/2]] (spectral radius 1/2), B = [[0, 9, 0], [1, 0, 0], [0, 2, 2]]
# (eigenvalues 3, -3, 2) and the Volterra operator on C[0, 1] with ||V^n|| = 1/n! (spectral radius 0).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from math import lgamma, exp

A = np.array([[0.5, 4.0], [0.0, 0.5]]); B = np.array([[0.0, 9.0, 0.0], [1.0, 0.0, 0.0], [0.0, 2.0, 2.0]])
ns = np.arange(1, 61)
ga = [np.linalg.norm(np.linalg.matrix_power(A, n), 2) ** (1 / n) for n in ns]
gb = [np.linalg.norm(np.linalg.matrix_power(B, n), 2) ** (1 / n) for n in ns]
gv = [exp(-lgamma(n + 1) / n) for n in ns]
assert abs(gb[-1] - 3) < 0.05 and gv[-1] < 0.05
fig, ax = plt.subplots(figsize=(6.2, 4.0))
ax.plot(ns, gb, "-", lw=1.2, color=STATEMENT, label=r"$\mathbf{B}$, $r = 3$")
ax.plot(ns, ga, "-", lw=1.5, color=ACCENT, label=r"$\mathbf{A}$, $r = 1/2$")
ax.plot(ns, gv, "-", lw=1.5, color=EXAMPLE, label=r"$V$, $r = 0$")
ax.axhline(3.0, color=STATEMENT, lw=0.8, ls="--"); ax.axhline(0.5, color=ACCENT, lw=0.8, ls="--"); ax.axhline(0.0, color=EXAMPLE, lw=0.8, ls="--")
ax.set_xlabel(r"$n$"); ax.set_ylabel(r"$\|a^n\|^{1/n}$")
ax.set_xlim(0, 61); ax.set_ylim(-0.1, 5.3)
ax.legend(frameon=False, loc="upper right")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-spectral-radius")
