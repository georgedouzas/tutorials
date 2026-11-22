# The spectrum of a = delta^(1) + (1/2) delta^(-2) in the Wiener algebra: the curve theta -> e^{i theta} + (1/2) e^{-2 i theta}
# (Wiener's lemma), with the point 0, which it surrounds but does not meet (|a^| >= 1/2).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

th = np.linspace(0, 2 * np.pi, 1200)
z = np.exp(1j * th) + 0.5 * np.exp(-2j * th)
assert np.min(np.abs(z)) >= 0.5 - 1e-9
fig, ax = plt.subplots(figsize=(4.4, 4.2))
ax.plot(z.real, z.imag, color=ACCENT, lw=1.8, label=r"$\sigma(a) = \hat a([0, 2\pi])$")
ax.plot([0], [0], "o", color=STATEMENT, ms=6, label=r"$0 \notin \sigma(a)$")
ax.axhline(0, color=GRID, lw=0.6, zorder=0); ax.axvline(0, color=GRID, lw=0.6, zorder=0)
ax.set_aspect("equal")
ax.set_xlim(-1.7, 1.7); ax.set_ylim(-1.7, 1.9)
ax.set_xlabel(r"$\mathrm{Re}\,\lambda$"); ax.set_ylabel(r"$\mathrm{Im}\,\lambda$")
ax.legend(frameon=False, loc="upper center", ncol=2, fontsize=9)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-gelfand-wiener")
