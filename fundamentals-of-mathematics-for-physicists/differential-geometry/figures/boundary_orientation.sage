# The annulus 1 <= r <= 2 with outward vectors N on both boundary circles and the induced orientation (outward vector first).
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(5.2, 5.2))
t = np.linspace(0, 2*np.pi, 400)
ax.fill(np.concatenate([2*np.cos(t), np.cos(t[::-1])]), np.concatenate([2*np.sin(t), np.sin(t[::-1])]), color="#c9d6e6", alpha=0.6, lw=0)
ax.plot(2*np.cos(t), 2*np.sin(t), color=INK, lw=1.4); ax.plot(np.cos(t), np.sin(t), color=INK, lw=1.4)
def arrow(p, v, col):
    ax.annotate("", xy=(p[0] + v[0], p[1] + v[1]), xytext=p, arrowprops=dict(arrowstyle="-|>", color=col, lw=1.8))
for a in np.linspace(0, 2*np.pi, 8, endpoint=False) + np.pi/8:
    u = np.array([np.cos(a), np.sin(a)]); w = np.array([-np.sin(a), np.cos(a)])
    arrow(2*u, 0.45*u, STATEMENT); arrow(2*u, 0.5*w, ACCENT)
    arrow(1*u, -0.35*u, STATEMENT); arrow(1*u, -0.4*w, ACCENT)
ax.text(0, 0, r"$D$", ha="center", va="center", fontsize=13, color=INK)
ax.text(2.55, -2.55, r"outward $N$", color=STATEMENT, fontsize=10, ha="right")
ax.text(-2.55, -2.55, r"orientation of $\partial D$", color=ACCENT, fontsize=10, ha="left")
ax.set_aspect("equal"); ax.set_xlim(-2.7, 2.7); ax.set_ylim(-2.7, 2.7); ax.axis("off")
save_matplotlib(fig, "boundary_orientation")
