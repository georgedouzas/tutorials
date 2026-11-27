# The tangent plane at the north pole, the velocities L_1 e_3 and L_2 e_3, their great circles, and the
# circle traced by a tangent vector under the isotropy rotations exp(t L_3).
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt

def view(p, az=np.radians(30), el=np.radians(25)):
    x, y, z = p
    x1, y1 = np.cos(az) * x - np.sin(az) * y, np.sin(az) * x + np.cos(az) * y
    return x1, np.cos(el) * z - np.sin(el) * y1, np.sin(el) * z + np.cos(el) * y1

t = np.linspace(0, 2 * np.pi, 400)
fig, ax = plt.subplots(figsize=(4.8, 4.6))
ax.add_patch(plt.Circle((0, 0), 1, fill=False, color=GRID, lw=1.2))
def curve(P, col, lw=1.6):
    X, Y, D = view(P)
    front = D <= 0
    for mask, ls, a in ((front, "-", 1.0), (~front, ":", 0.5)):
        ax.plot(np.where(mask, X, np.nan), np.where(mask, Y, np.nan), ls, color=col, lw=lw, alpha=a)
# tangent plane z = 1 (a square patch)
s = 0.75
sq = np.array([[-s, -s, 1], [s, -s, 1], [s, s, 1], [-s, s, 1]]).T
X, Y, _ = view(sq)
ax.fill(X, Y, color=GRID, alpha=0.45, lw=0)
curve(np.array([0 * t, -np.sin(t), np.cos(t)]), STATEMENT)      # orbit of exp(t L_1) through e_3
curve(np.array([np.sin(t), 0 * t, np.cos(t)]), EXAMPLE)         # orbit of exp(t L_2) through e_3
curve(np.array([0.45 * np.cos(t), 0.45 * np.sin(t), 1 + 0 * t]), ACCENT)   # tangent vector rotated by exp(t L_3)
o = np.array([0, 0, 1.0])
for v, col, lab, off in ((np.array([0, -0.6, 0]), STATEMENT, r"$L_1\cdot\mathbf{e}_3$", (0.06, 0.02)),
                         (np.array([0.6, 0, 0]), EXAMPLE, r"$L_2\cdot\mathbf{e}_3$", (0.04, -0.12))):
    a0, b0, _ = view(o); a1, b1, _ = view(o + v)
    ax.annotate("", xy=(a1, b1), xytext=(a0, b0), arrowprops=dict(arrowstyle="-|>", color=col, lw=1.8))
    ax.text(a1 + off[0], b1 + off[1], lab, color=col)
a0, b0, _ = view(o); ax.plot([a0], [b0], "o", color=INK, ms=4)
ax.text(a0 - 0.28, b0 - 0.16, r"$\mathbf{e}_3$", color=INK)
ax.text(-1.0, 1.05, r"$e^{tL_3}$", color=ACCENT)
ax.set_aspect("equal"); ax.set_xlim(-1.2, 1.2); ax.set_ylim(-1.15, 1.35); ax.axis("off")
save_matplotlib(fig, "coset_tangent_plane")
