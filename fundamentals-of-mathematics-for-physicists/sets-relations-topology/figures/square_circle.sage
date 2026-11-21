# Radial projection x -> x/|x| from the boundary of the square max(|u|, |v|) = 1 onto the unit circle: each ray
# from the origin meets the square once and the circle once.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import pi, cos, sin, hypot

fig, ax = plt.subplots(figsize=(4.4, 4.4))
ax.plot([1, -1, -1, 1, 1], [1, 1, -1, -1, 1], color=ACCENT, lw=1.6)
T = [2 * pi * k / 200 for k in range(201)]
ax.plot([cos(t) for t in T], [sin(t) for t in T], color=STATEMENT, lw=1.6)
for k in range(16):
    t = 2 * pi * (k + 0.5) / 16
    d = (cos(t), sin(t))
    s = 1 / max(abs(d[0]), abs(d[1]))           # the ray meets the square at s d
    ax.plot([0, s * d[0]], [0, s * d[1]], color=MUTED, lw=0.6)
    ax.plot(s * d[0], s * d[1], "o", color=ACCENT, ms=4)
    ax.plot(*d, "o", color=STATEMENT, ms=4)
    assert abs(hypot(*d) - 1) < 1e-12 and abs(max(abs(s * d[0]), abs(s * d[1])) - 1) < 1e-12
ax.plot(0, 0, "o", color=INK, ms=3)
ax.text(1.05, 1.05, "square", color=ACCENT, fontsize=11)
ax.text(0.83, 0.83, "$S^1$", color=STATEMENT, fontsize=12, ha="center", va="center")
ax.set_xlim(-1.25, 1.6); ax.set_ylim(-1.25, 1.3); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "square_circle")
