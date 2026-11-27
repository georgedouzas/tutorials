# A flat connection a = c dx on the circle bundle S^1 x S^1 over the circle: slanted horizontal lines and the lift of the base loop.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt

c = 0.25
tp = 2 * np.pi
fig, ax = plt.subplots(figsize=(4.6, 4.2))
ax.plot([0, tp, tp, 0, 0], [0, 0, tp, tp, 0], color=INK, lw=1.0)
for y0 in np.linspace(0, 2 * tp, 17):                     # horizontal lines y = y0 - c x, wrapped in y
    x = np.linspace(0, tp, 200); y = np.mod(y0 - c * x, tp)
    y[np.abs(np.diff(y, prepend=y[0])) > 1] = np.nan
    ax.plot(x, y, color=GRID, lw=0.8)
x = np.linspace(0, tp, 200); y = np.mod(-c * x, tp)
y[0] = 0.0
br = np.argmax(np.diff(y) > 1) + 1
ax.plot(x[:1], y[:1], "o", color=STATEMENT, ms=5)
ax.plot(x[br:], y[br:], color=STATEMENT, lw=2.0)
ax.plot([0, x[br - 1]], [0, 0], color=STATEMENT, lw=2.0) if br == 1 else ax.plot(x[:br], y[:br], color=STATEMENT, lw=2.0)
ax.plot([tp], [np.mod(-c * tp, tp)], "o", color=STATEMENT, ms=5)
ax.text(tp + 0.15, np.mod(-c * tp, tp), r"$y = -2\pi c$", color=STATEMENT, va="center")
ax.set_xticks([0, np.pi, tp]); ax.set_xticklabels(["0", r"$\pi$", r"$2\pi$"])
ax.set_yticks([0, np.pi, tp]); ax.set_yticklabels(["0", r"$\pi$", r"$2\pi$"])
ax.set_xlabel(r"base angle $x$"); ax.set_ylabel(r"fibre angle $y$")
for s in ax.spines.values(): s.set_visible(False)
ax.set_aspect("equal"); ax.set_xlim(-0.2, tp + 1.9)
save_matplotlib(fig, "horizontal_lift")
