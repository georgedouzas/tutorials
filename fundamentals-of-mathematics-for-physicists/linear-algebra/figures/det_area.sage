# Signed area: the parallelogram spanned by u = (3, 1), v = (1, 2) has omega(u, v) = 5 > 0 (v lies counterclockwise
# from u), and the one spanned by u, w = (1, -2) has omega(u, w) = -7 < 0 (w lies clockwise from u). The arcs show
# the sense of rotation from the first vector to the second.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Polygon, FancyArrowPatch
import math

u, v, w = vector(QQ, [3, 1]), vector(QQ, [1, 2]), vector(QQ, [1, -2])
omega = lambda a, b: a[0] * b[1] - a[1] * b[0]
assert omega(u, v) == 5 and omega(u, w) == -7 and omega(v, u) == -5

fig, ax = plt.subplots(figsize=(5.0, 4.6))
for a, b, col in ((u, v, ACCENT), (u, w, STATEMENT)):
    pts = [(0, 0), tuple(map(float, a)), tuple(map(float, a + b)), tuple(map(float, b))]
    ax.add_patch(Polygon(pts, closed=True, facecolor=col, alpha=0.16, edgecolor=col, linewidth=1.0))
for vec, col, lab, off in ((u, INK, "$u$", (0.12, -0.32)), (v, ACCENT, "$v$", (-0.42, 0.05)), (w, STATEMENT, "$w$", (-0.45, -0.1))):
    ax.annotate("", xy=(float(vec[0]), float(vec[1])), xytext=(0, 0),
                arrowprops=dict(arrowstyle="-|>", color=col, linewidth=2.0, mutation_scale=14))
    ax.text(float(vec[0]) + off[0], float(vec[1]) + off[1], lab, color=col, fontsize=14)


def arc(a, b, r, col):
    t0, t1 = math.atan2(float(a[1]), float(a[0])), math.atan2(float(b[1]), float(b[0]))
    p0 = (r * math.cos(t0), r * math.sin(t0))
    p1 = (r * math.cos(t1), r * math.sin(t1))
    rad = 0.35 if t1 > t0 else -0.35
    ax.add_patch(FancyArrowPatch(p0, p1, connectionstyle="arc3,rad=%s" % rad, arrowstyle="-|>", color=col,
                                 linewidth=1.3, mutation_scale=11))


arc(u, v, 0.9, ACCENT)
arc(u, w, 0.9, STATEMENT)
ax.text(2.05, 1.72, r"$\omega_e(u, v) = 5$", color=ACCENT, fontsize=12)
ax.text(2.3, -1.15, r"$\omega_e(u, w) = -7$", color=STATEMENT, fontsize=12)
ax.axhline(0, color=GRID, linewidth=0.8, zorder=0)
ax.axvline(0, color=GRID, linewidth=0.8, zorder=0)
ax.set_xlim(-0.6, 4.8)
ax.set_ylim(-2.3, 3.4)
ax.set_aspect("equal")
ax.set_xticks([])
ax.set_yticks([])
for s in ax.spines.values():
    s.set_visible(False)
save_matplotlib(fig, "det_area")
