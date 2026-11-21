# The semicircular contour indented above a pole a on the real axis: [-R, a - eps], the small arc clockwise over a,
# [a + eps, R] and the arc C_R. A pole z_1 in the upper half-plane lies inside, the pole a outside.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

R, a, eps = 2.0, 0.6, 0.25
fig, ax = plt.subplots(figsize=(5.2, 3.0))
ax.axhline(0, color=GRID, lw=0.7)
ax.plot([-R, a - eps], [0, 0], color=ACCENT, lw=1.6)
ax.plot([a + eps, R], [0, 0], color=ACCENT, lw=1.6)
s = np.linspace(np.pi, 0, 100)
ax.plot(a + eps * np.cos(s), eps * np.sin(s), color=ACCENT, lw=1.6)
u = np.linspace(0, np.pi, 300)
ax.plot(R * np.cos(u), R * np.sin(u), color=ACCENT, lw=1.6)
def arrow(p, q):
    ax.annotate("", xy=q, xytext=p, arrowprops=dict(arrowstyle="-|>", color=ACCENT, lw=1.5))
arrow((-1.2, 0), (-0.9, 0)); arrow((1.3, 0), (1.6, 0))
arrow((R * np.cos(1.3), R * np.sin(1.3)), (R * np.cos(1.45), R * np.sin(1.45)))
ax.plot([a], [0], "x", color=STATEMENT, ms=8, mew=2); ax.text(a - 0.07, -0.3, r"$a$", color=STATEMENT)
ax.plot([-0.7], [1.0], "x", color=STATEMENT, ms=8, mew=2); ax.text(-0.6, 1.05, r"$z_1$", color=STATEMENT)
ax.text(a + 0.05, eps + 0.08, r"$S_\varepsilon$", color=ACCENT, fontsize=10)
ax.text(R * np.cos(0.6) + 0.08, R * np.sin(0.6) + 0.05, r"$C_R$", color=ACCENT)
ax.text(-R - 0.15, -0.3, r"$-R$"); ax.text(R - 0.1, -0.3, r"$R$")
ax.set_xlim(-2.5, 2.6); ax.set_ylim(-0.5, 2.3); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "indented_contour")
