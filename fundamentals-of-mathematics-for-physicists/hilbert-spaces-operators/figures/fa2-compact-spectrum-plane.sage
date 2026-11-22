# The eigenvalues e^{in}/n, n = 1..60, of a compact diagonal operator in the complex plane, spiralling into 0.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 61)
lam = np.exp(1j * n) / n
fig, ax = plt.subplots(figsize=(4.6, 4.4))
ax.axhline(0, color=GRID, lw=0.8, zorder=0); ax.axvline(0, color=GRID, lw=0.8, zorder=0)
ax.plot(lam.real, lam.imag, color=GRID, lw=0.8, zorder=1)
ax.scatter(lam.real, lam.imag, s=14, color=ACCENT, zorder=2)
ax.plot([0], [0], "o", color=STATEMENT, ms=5, zorder=3)
for m in (1, 2, 3):
    ax.annotate(r"$\lambda_%d$" % m, (lam[m - 1].real, lam[m - 1].imag), textcoords="offset points", xytext=(6, 4), fontsize=9)
ax.set_aspect("equal"); ax.set_xlim(-0.7, 0.75); ax.set_ylim(-0.6, 0.95)
ax.set_xlabel(r"$\mathrm{Re}\,\lambda$"); ax.set_ylabel(r"$\mathrm{Im}\,\lambda$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-compact-spectrum-plane")
