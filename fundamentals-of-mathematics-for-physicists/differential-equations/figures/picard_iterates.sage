# Picard iterates y_1, ..., y_4 of y' = 1 + y^2, y(0) = 0, computed exactly, against the solution tan x. The shaded
# band is the interval |x| <= 1/2 that the existence theorem gives for the box |x| <= 1/2, |y| <= 1 (M = 2).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, s = var("x s")
ys, y = [], SR(0)
for k in range(4):
    y = integrate(1 + y.subs(x=s)^2, s, 0, x)
    ys.append(y)
assert (ys[1] - x - x^3 / 3).expand() == 0
tt = np.linspace(-1.3, 1.3, 400)
fig, ax = plt.subplots(figsize=(6.0, 3.8))
ax.axvspan(-0.5, 0.5, color=ACCENT, alpha=0.08, lw=0)
cols = [EXERCISE, EXAMPLE, ORANGE, ACCENT]
for k, (yk, col) in enumerate(zip(ys, cols)):
    f = fast_callable(yk, vars=[x], domain=RDF)
    ax.plot(tt, [f(t) for t in tt], color=col, lw=1.4, label="$y_%d$" % (k + 1))
ax.plot(tt, np.tan(tt), color=STATEMENT, lw=2.0, label=r"$\tan x$")
ax.axhline(0, color=GRID, lw=0.8); ax.axvline(0, color=GRID, lw=0.8)
ax.set_xlim(-1.3, 1.3); ax.set_ylim(-3.6, 3.6)
ax.set_xlabel("$x$")
ax.legend(frameon=False, loc="upper left", fontsize=10)
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "picard_iterates")
