# Singular values of the Volterra operator V and of the Green's operator G of -d^2/dx^2 (Dirichlet) on L^2(0, 1):
# exact values 2/((2k-1) pi) and 1/(k pi)^2 as lines, 200 x 200 discretisations as points, the identity for comparison.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

N = 200
h = 1.0 / N
Vd = np.tril(np.ones((N, N))) * h
xs = (np.arange(1, N + 1) - 0.5) * h
Gd = (np.minimum.outer(xs, xs) - np.outer(xs, xs)) * h
k = np.arange(1, 21)
sV = np.linalg.svd(Vd, compute_uv=False)[:20]
sG = np.linalg.svd(Gd, compute_uv=False)[:20]
fig, ax = plt.subplots(figsize=(6.0, 4.2))
ax.loglog(k, 2 / ((2 * k - 1) * np.pi), color=ACCENT, lw=1.2, ls="--", label=r"$V$: $2/((2k-1)\pi)$")
ax.loglog(k, sV, "o", color=ACCENT, ms=3.5, label=r"$V$, discretised")
ax.loglog(k, 1 / (k * np.pi) ** 2, color=STATEMENT, lw=1.2, ls="--", label=r"$G$: $1/(k\pi)^2$")
ax.loglog(k, sG, "s", color=STATEMENT, ms=3.5, label=r"$G$, discretised")
ax.loglog(k, np.ones_like(k, dtype=float), color=MUTED, lw=1.2, label="identity")
ax.set_xlabel(r"$k$"); ax.set_ylabel(r"$s_k$")
ax.legend(loc="lower left", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-compact-singular-values")
