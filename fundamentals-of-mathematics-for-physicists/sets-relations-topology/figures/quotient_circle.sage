# The circle as the quotient R/2piZ: three equivalence classes of angles phi + 2 pi k (three colours) on the line,
# each sent by the quotient map phi -> (cos phi, sin phi) to a single point of the circle.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import pi, cos, sin

reps = [(0.6, STATEMENT), (2.4, ACCENT), (4.3, EXAMPLE)]
# the classes on [-0.5, 6 pi]: every member of a class has the same image on the circle
for a, _ in reps:
    imgs = {(round(cos(a + 2 * pi * k), 12), round(sin(a + 2 * pi * k), 12)) for k in range(3)}
    assert len(imgs) == 1

fig, ax = plt.subplots(figsize=(8.4, 4.6))
y0 = 4.4                                     # height of the line
L = 6 * pi + 0.6
ax.annotate("", xy=(L, y0), xytext=(-0.6, y0), arrowprops=dict(arrowstyle="-|>", color=INK, lw=1.1))
for k in range(4):
    ax.plot([2 * pi * k] * 2, [y0 - 0.08, y0 + 0.08], color=INK, lw=1)
    ax.text(2 * pi * k, y0 + 0.22, ["$0$", r"$2\pi$", r"$4\pi$", r"$6\pi$"][k], ha="center", va="bottom", fontsize=11)
ax.text(L + 0.1, y0, r"$\mathbb{R}$", ha="left", va="center", fontsize=13)
cx, cy, r = 3 * pi, 0.0, 1.7               # the circle, centred under the line
ax.add_patch(plt.Circle((cx, cy), r, fill=False, color=INK, lw=1.4))
for a, col in reps:
    P = (cx + r * cos(a), cy + r * sin(a))
    for k in range(3):
        x = a + 2 * pi * k
        ax.plot([x, P[0]], [y0, P[1]], color=col, lw=0.8, alpha=0.55)
        ax.plot(x, y0, "o", color=col, ms=7, zorder=5)
    ax.plot(*P, "o", color=col, ms=9, zorder=6)
ax.text(cx + r + 1.1, cy - 0.4, r"$\mathbb{R}/2\pi\mathbb{Z} = S^1$", ha="left", va="center", fontsize=13)
ax.text(-0.3, y0 - 0.3, r"$\varphi$", color=STATEMENT, fontsize=12, ha="center", va="top")
ax.text(0.6 + 2 * pi + 0.25, y0 - 0.3, r"$\varphi + 2\pi$", color=STATEMENT, fontsize=11, ha="left", va="top")
ax.set_xlim(-1, L + 1.2); ax.set_ylim(cy - r - 0.3, y0 + 0.7); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "quotient_circle")
