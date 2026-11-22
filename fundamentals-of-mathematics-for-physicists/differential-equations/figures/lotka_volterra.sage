# Orbits of the Lotka-Volterra system x' = x - xy, y' = -y + xy in the positive quadrant: level curves of the
# conserved quantity E = x - log x + y - log y at E = 2.1, 2.4, 3, 4, around the equilibrium (1, 1), with arrows
# showing the anticlockwise direction of motion.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, y = var("x y")
E = x - log(x) + y - log(y)
F = vector([x - x * y, -y + x * y])
assert (diff(E, x) * F[0] + diff(E, y) * F[1]).simplify_full() == 0
g = np.linspace(0.02, 5.5, 500)
X, Y = np.meshgrid(g, g)
Z = X - np.log(X) + Y - np.log(Y)
fig, ax = plt.subplots(figsize=(4.8, 4.4))
levels = [2.1, 2.4, 3.0, 4.0]
ax.contour(X, Y, Z, levels=levels, colors=[ACCENT], linewidths=1.5)
for c in levels:          # an arrow on each orbit at its lowest point, where the motion is to the right (x' > 0 for y < 1)
    yl = float(find_root(y - log(y) - (c - 1), 0.01, 1))
    ax.annotate("", xy=(1.18, yl), xytext=(0.98, yl), arrowprops=dict(arrowstyle="-|>", color=ACCENT, lw=1.2))
ax.plot([1], [1], "o", color=STATEMENT, ms=5)
ax.set_xlim(0, 5); ax.set_ylim(0, 5); ax.set_aspect("equal")
ax.set_xlabel("$x$ (prey)"); ax.set_ylabel("$y$ (predators)")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "lotka_volterra")
