# ||A^n||^(1/n) for n = 1..60: the Jordan block [[9/10, 1], [0, 9/10]] (spectral radius 9/10) and the symmetric
# matrix [[1/2, 1/4], [1/4, 1/2]] (spectral radius 3/4, equal to ||B^n||^(1/n) for every n).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

A = np.array([[0.9, 1.0], [0.0, 0.9]]); B = np.array([[0.5, 0.25], [0.25, 0.5]])
ns = np.arange(1, 61)
ga = [np.linalg.norm(np.linalg.matrix_power(A, n), 2) ** (1/n) for n in ns]
gb = [np.linalg.norm(np.linalg.matrix_power(B, n), 2) ** (1/n) for n in ns]
assert np.allclose(gb, 0.75)
na = [np.linalg.norm(np.linalg.matrix_power(A, n), 2) for n in ns]
assert 3.8 < max(na) < 4.0 and int(np.argmax(na)) + 1 in (9, 10)
fig, ax = plt.subplots(figsize=(6.4, 3.8))
ax.plot(ns, ga, "o", ms=3.5, color=ACCENT, label=r"Jordan block $\mathbf{A}$")
ax.plot(ns, gb, "s", ms=3.0, color=EXAMPLE, label=r"symmetric $\mathbf{B}$")
ax.axhline(0.9, color=ACCENT, lw=0.8, ls="--"); ax.axhline(0.75, color=EXAMPLE, lw=0.8, ls="--")
ax.text(61, 0.9, r"$r(\mathbf{A}) = 0.9$", color=ACCENT, va="center", fontsize=10)
ax.text(61, 0.75, r"$r(\mathbf{B}) = 0.75$", color=EXAMPLE, va="center", fontsize=10)
ax.set_xlabel(r"$n$"); ax.set_ylabel(r"$\|\mathbf{M}^n\|^{1/n}$")
ax.set_xlim(0, 60); ax.set_ylim(0.6, 1.6)
ax.legend(frameon=False, loc="upper right")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-spectral-radius-convergence")
