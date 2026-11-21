# The keyhole contour around the cut [0, oo): the segment from eps e^(i delta) to R e^(i delta), the arc of radius R
# anticlockwise to R e^(-i delta), the segment back to eps e^(-i delta), and the small arc clockwise. The pole -1 lies
# inside.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

R, eps, d = 2.0, 0.3, 0.12
fig, ax = plt.subplots(figsize=(4.4, 4.2))
ax.axhline(0, color=GRID, lw=0.7); ax.axvline(0, color=GRID, lw=0.7)
ax.plot([0, 2.5], [0, 0], color=INK, lw=2.2, ls=(0, (4, 3)))
ax.text(2.05, -0.32, "cut", color=INK, fontsize=10)
big = np.linspace(d, 2 * np.pi - d, 300)
small = np.linspace(2 * np.pi - d, d, 200)
ax.plot(R * np.cos(big), R * np.sin(big), color=ACCENT, lw=1.6)
ax.plot(eps * np.cos(small), eps * np.sin(small), color=ACCENT, lw=1.6)
ax.plot([eps * np.cos(d), R * np.cos(d)], [eps * np.sin(d), R * np.sin(d)], color=ACCENT, lw=1.6)
ax.plot([eps * np.cos(d), R * np.cos(d)], [-eps * np.sin(d), -R * np.sin(d)], color=ACCENT, lw=1.6)
def arrow(p, q):
    ax.annotate("", xy=q, xytext=p, arrowprops=dict(arrowstyle="-|>", color=ACCENT, lw=1.5))
arrow((1.0 * np.cos(d), 1.0 * np.sin(d)), (1.25 * np.cos(d), 1.25 * np.sin(d)))
arrow((1.25 * np.cos(d), -1.25 * np.sin(d)), (1.0 * np.cos(d), -1.0 * np.sin(d)))
arrow((R * np.cos(1.2), R * np.sin(1.2)), (R * np.cos(1.35), R * np.sin(1.35)))
arrow((eps * np.cos(2.3), eps * np.sin(2.3)), (eps * np.cos(2.0), eps * np.sin(2.0)))
ax.plot([-1], [0], "x", color=STATEMENT, ms=8, mew=2); ax.text(-1.12, 0.18, r"$-1$", color=STATEMENT)
ax.text(R * np.cos(0.75) + 0.08, R * np.sin(0.75) + 0.08, r"$C_R$", color=ACCENT)
ax.text(-0.42, -0.5, r"$\varepsilon$", color=ACCENT)
ax.set_xlim(-2.4, 2.7); ax.set_ylim(-2.4, 2.4); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "keyhole_contour")
