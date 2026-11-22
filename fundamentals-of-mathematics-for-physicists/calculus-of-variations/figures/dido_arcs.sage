# Dido's problem with a = 1: the arcs y = sqrt(r^2 - x^2) - sqrt(r^2 - 1) through (-1, 0) and (1, 0) of lengths
# l = 2.2, 2.6, 3.0, 3.1, with r the root of 2 r arcsin(1/r) = l. The enclosed areas are given in the legend.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

r = var("r")
xs = np.linspace(-1, 1, 400)
fig, ax = plt.subplots(figsize=(7.4, 3.0))
cols = [EXERCISE, EXAMPLE, ACCENT, INK]
styles = [(0, (4, 2)), (0, (1.5, 1.5)), "-", (0, (6, 2, 1, 2))]
for l, col, ls in zip([2.2, 2.6, 3.0, 3.1], cols, styles):
    rr = float(find_root(2*r*arcsin(1/r) - l, 1.0000001, 1000))
    h = np.sqrt(rr**2 - 1)
    area = rr**2*np.arcsin(1/rr) - h
    ax.plot(xs, np.sqrt(rr**2 - xs**2) - h, color=col, lw=1.6, ls=ls,
            label=r"$\ell = %.1f$, $r = %.3f$, area $%.3f$" % (l, rr, area))
ax.plot([-1, 1], [0, 0], color=INK, lw=1.0)
ax.plot([-1, 1], [0, 0], "o", color=INK, ms=4)
ax.set_aspect("equal")
ax.set_xlim(-1.15, 1.15); ax.set_ylim(-0.08, 1.1)
ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")
ax.legend(loc="center left", bbox_to_anchor=(1.02, 0.5), frameon=False, fontsize=9)
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "dido_arcs")
