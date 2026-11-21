# The subspace topology of the circle: the open disc U of radius r = 0.9 around (1, 0) meets the circle in the open
# arc |phi| < 2 arcsin(r/2), an open set of the circle that is not open in the plane.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import pi, cos, sin, asin

r = 0.9
a = 2 * asin(r / 2)                              # half-angle of the arc
assert abs((cos(a) - 1)**2 + sin(a)**2 - r**2) < 1e-12   # the arc ends lie on the edge of U
T = [2 * pi * k / 240 for k in range(241)]
fig, ax = plt.subplots(figsize=(5.2, 4.2))
ax.fill([1 + r * cos(t) for t in T], [r * sin(t) for t in T], color=EXAMPLE, alpha=0.13, lw=0)
ax.plot([1 + r * cos(t) for t in T], [r * sin(t) for t in T], color=EXAMPLE, lw=1.3, ls=(0, (4, 3)))
ax.plot([cos(t) for t in T], [sin(t) for t in T], color=INK, lw=1.2)
A = [-a + 2 * a * k / 100 for k in range(101)]
ax.plot([cos(t) for t in A], [sin(t) for t in A], color=STATEMENT, lw=3.4, solid_capstyle="butt")
for s in (-1, 1):
    ax.plot(cos(s * a), sin(s * a), "o", mfc="white", mec=STATEMENT, ms=7, zorder=5)
ax.text(1.55, 0.72, "$U$", color=EXAMPLE, fontsize=14)
ax.text(0.62, 0.08, r"$U \cap S^1$", color=STATEMENT, fontsize=13, ha="right")
ax.text(-0.72, 0.82, "$S^1$", color=INK, fontsize=14)
ax.set_xlim(-1.2, 2.05); ax.set_ylim(-1.2, 1.2); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "subspace_arc")
