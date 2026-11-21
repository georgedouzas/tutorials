# The continued zeta function on the real line, -9 <= s <= 5, with the simple pole at s = 1 (dashed), the values
# zeta(0) = -1/2 and zeta(-1) = -1/12; right, -9 <= s <= -1 on a vertical scale of 0.03, the zeros at -2, -4, -6, -8.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
import mpmath

fig, (ax, bx) = plt.subplots(1, 2, figsize=(8.4, 3.6), gridspec_kw={"width_ratios": [1.1, 1]})
for a in (ax, bx):
    a.axhline(0, color=GRID, lw=0.7)
    a.spines["top"].set_visible(False); a.spines["right"].set_visible(False)
x1 = np.linspace(-3, 0.97, 400); x2 = np.linspace(1.03, 5, 300)
for xs in (x1, x2):
    ax.plot(xs, [float(mpmath.zeta(v)) for v in xs], color=ACCENT, lw=1.6)
ax.axvline(1, color=STATEMENT, lw=0.8, ls=(0, (4, 3)))
ax.plot([0, -1], [-0.5, -1 / 12], "o", color=INK, ms=4)
ax.text(-2.9, -1.0, r"$\zeta(0) = -\frac{1}{2}$", fontsize=10)
ax.text(-2.9, 0.45, r"$\zeta(-1) = -\frac{1}{12}$", fontsize=10)
ax.text(2.0, 3.0, r"$\zeta(s)$", color=ACCENT)
ax.set_ylim(-4, 4); ax.set_xlim(-3, 5); ax.set_xlabel(r"$s$")
x3 = np.linspace(-9, -1, 500)
bx.plot(x3, [float(mpmath.zeta(v)) for v in x3], color=ACCENT, lw=1.6)
bx.plot([-2, -4, -6, -8], [0, 0, 0, 0], "o", color=STATEMENT, ms=4)
bx.text(-8.6, 0.02, r"zeros at $-2, -4, -6, -8$", color=STATEMENT, fontsize=10)
bx.set_ylim(-0.03, 0.03); bx.set_xlim(-9, -1); bx.set_xlabel(r"$s$")
fig.tight_layout()
save_matplotlib(fig, "zeta_real")
