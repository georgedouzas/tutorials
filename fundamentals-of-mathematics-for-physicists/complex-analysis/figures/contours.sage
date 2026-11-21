# Two contours. Left: the circle C(0, 1) traversed anticlockwise, with 0 inside and 3 outside. Right: the closed
# semicircular contour [-R, R] followed by the arc Re^(it), 0 <= t <= pi, with i inside and -i outside (R = 2).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

def arrow(a, p, q, c):
    a.annotate("", xy=q, xytext=p, arrowprops=dict(arrowstyle="-|>", color=c, lw=1.6))

fig, (ax, bx) = plt.subplots(1, 2, figsize=(8.4, 3.4))
for a in (ax, bx):
    a.axhline(0, color=GRID, lw=0.7); a.axvline(0, color=GRID, lw=0.7)
    a.set_aspect("equal"); a.axis("off")
t = np.linspace(0, 2 * np.pi, 400)
ax.plot(np.cos(t), np.sin(t), color=ACCENT, lw=1.6)
for s in (0.75, 0.75 + np.pi):
    arrow(ax, (np.cos(s), np.sin(s)), (np.cos(s + 0.12), np.sin(s + 0.12)), ACCENT)
ax.plot([0], [0], "o", color=STATEMENT, ms=5); ax.text(0.1, -0.3, r"$0$", color=STATEMENT)
ax.plot([3], [0], "o", color=EXAMPLE, ms=5); ax.text(2.9, -0.35, r"$3$", color=EXAMPLE)
ax.text(-1.05, 1.15, r"$C(0, 1)$", color=ACCENT)
ax.set_xlim(-1.6, 3.6); ax.set_ylim(-1.5, 1.5)
R = 2.0
s = np.linspace(0, np.pi, 300)
bx.plot([-R, R], [0, 0], color=ACCENT, lw=1.6)
bx.plot(R * np.cos(s), R * np.sin(s), color=ACCENT, lw=1.6)
arrow(bx, (0.2, 0), (0.5, 0), ACCENT)
arrow(bx, (R * np.cos(1.3), R * np.sin(1.3)), (R * np.cos(1.45), R * np.sin(1.45)), ACCENT)
bx.plot([0], [1], "o", color=STATEMENT, ms=5); bx.text(0.12, 1.0, r"$i$", color=STATEMENT)
bx.plot([0], [-1], "o", color=EXAMPLE, ms=5); bx.text(0.12, -1.1, r"$-i$", color=EXAMPLE)
bx.text(R * np.cos(0.6) + 0.1, R * np.sin(0.6) + 0.1, r"$C_R$", color=ACCENT)
bx.text(-R - 0.25, -0.35, r"$-R$"); bx.text(R - 0.1, -0.35, r"$R$")
bx.set_xlim(-2.6, 2.6); bx.set_ylim(-1.5, 2.4)
fig.tight_layout()
save_matplotlib(fig, "contours")
