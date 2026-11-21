# Wick rotation of the k^0 integral: the poles +-(E - i delta) of 1/((k^0)^2 - E^2 + i eps) lie in the second and
# fourth quadrants, and the real axis is turned counter-clockwise onto the imaginary axis k^0 = i k^4 through the first
# and third quadrants, closed by two arcs of radius R. E = 1, delta = 0.25, R = 2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

E, d, R = 1.0, 0.25, 2.0
fig, ax = plt.subplots(figsize=(4.6, 4.4))
ax.axhline(0, color=GRID, lw=0.7); ax.axvline(0, color=GRID, lw=0.7)
ax.fill([0, R, R, 0], [0, 0, R, R], color=EXAMPLE, alpha=0.08, lw=0)
ax.fill([0, -R, -R, 0], [0, 0, -R, -R], color=EXAMPLE, alpha=0.08, lw=0)
ax.plot([-R, R], [0, 0], color=ACCENT, lw=1.8)
ax.plot([0, 0], [-R, R], color=EXAMPLE, lw=1.8)
th = np.linspace(0, np.pi / 2, 100)
ax.plot(R * np.cos(th), R * np.sin(th), color=MUTED, lw=1.0, ls=(0, (4, 3)))
ax.plot(-R * np.cos(th), -R * np.sin(th), color=MUTED, lw=1.0, ls=(0, (4, 3)))
def arrow(p, q, c):
    ax.annotate("", xy=q, xytext=p, arrowprops=dict(arrowstyle="-|>", color=c, lw=1.5))
arrow((0.9, 0), (1.2, 0), ACCENT); arrow((-1.3, 0), (-1.0, 0), ACCENT)
arrow((0, -0.9), (0, -1.2), EXAMPLE); arrow((0, 1.3), (0, 1.0), EXAMPLE)
arrow((R * np.cos(0.6), R * np.sin(0.6)), (R * np.cos(0.8), R * np.sin(0.8)), MUTED)
ax.plot([E, -E], [-d, d], "x", color=STATEMENT, ms=8, mew=2)
ax.text(E + 0.05, -d - 0.3, r"$E - i\delta$", color=STATEMENT, fontsize=10)
ax.text(-E - 0.65, d + 0.15, r"$-E + i\delta$", color=STATEMENT, fontsize=10)
ax.text(1.45, 0.12, r"$k^0$", color=ACCENT)
ax.text(0.1, 1.75, r"$k^0 = ik^4$", color=EXAMPLE, fontsize=10)
ax.text(1.0, 1.25, "I", color=EXAMPLE, fontsize=11); ax.text(-1.2, -1.45, "III", color=EXAMPLE, fontsize=11)
ax.set_xlim(-2.3, 2.3); ax.set_ylim(-2.3, 2.3); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "wick_rotation")
