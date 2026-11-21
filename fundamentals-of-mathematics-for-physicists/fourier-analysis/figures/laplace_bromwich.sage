# The Bromwich contour for sigma = 1: the segment from 1 - iR to 1 + iR closed by the left half-circle,
# enclosing the poles -1 and +-2i of 1/((s + 1)(s^2 + 4)).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

s = var("s")
poles = [complex(r) for r, m in ((s + 1)*(s^2 + 4)).roots(ring=CDF)]
sigma, R = 1.0, 3.6
assert all(abs(p - sigma) < R and p.real < sigma for p in poles)

fig, ax = plt.subplots(figsize=(4.4, 4.4))
th = np.linspace(np.pi/2, 3*np.pi/2, 300)
ax.plot(sigma + R*np.cos(th), R*np.sin(th), color=ACCENT, lw=1.6)
ax.plot([sigma, sigma], [-R, R], color=ACCENT, lw=1.6)
ax.annotate("", xy=(sigma, 0.6), xytext=(sigma, -0.4), arrowprops=dict(arrowstyle="->", color=ACCENT, lw=1.6))
ax.annotate("", xy=(sigma - R, -0.3), xytext=(sigma - R, 0.3), arrowprops=dict(arrowstyle="->", color=ACCENT, lw=1.6))
ax.axhline(0, color=GRID, lw=0.8); ax.axvline(0, color=GRID, lw=0.8)
ax.plot([p.real for p in poles], [p.imag for p in poles], "x", color=STATEMENT, ms=9, mew=2)
ax.text(-1.25, 0.3, r"$-1$", color=STATEMENT, fontsize=10)
ax.text(0.3, 2.25, r"$2i$", color=STATEMENT, fontsize=10)
ax.text(0.3, -2.55, r"$-2i$", color=STATEMENT, fontsize=10)
ax.text(sigma + 0.12, R - 0.4, r"$\sigma + iR$", color=ACCENT, fontsize=10)
ax.text(sigma + 0.12, -R + 0.15, r"$\sigma - iR$", color=ACCENT, fontsize=10)
ax.text(sigma - R*np.cos(np.pi/4) - 0.9, R*np.sin(np.pi/4) + 0.2, r"$A$", color=ACCENT, fontsize=11)
ax.set_xlim(-3.1, 2.4); ax.set_ylim(-4.0, 4.0); ax.set_aspect("equal")
ax.set_xlabel(r"$\mathrm{Re}\, s$"); ax.set_ylabel(r"$\mathrm{Im}\, s$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "laplace_bromwich")
