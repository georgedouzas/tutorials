# The type of x u_xx + 2 u_xy + y u_yy = 0: A = x, B = 1, C = y, so B^2 - AC = 1 - xy. Elliptic where xy > 1 (shaded),
# parabolic on the hyperbola xy = 1, hyperbolic elsewhere.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, y = var("x y")
A, B, C = x, 1, y
disc = B^2 - A * C
assert bool(disc == 1 - x * y)
assert disc.subs(x=2, y=2) < 0 and disc.subs(x=0, y=0) > 0 and disc.subs(x=1, y=1) == 0

X, Y = np.meshgrid(np.linspace(-4, 4, 401), np.linspace(-4, 4, 401))
fig, ax = plt.subplots(figsize=(4.4, 4.2))
ax.contourf(X, Y, 1 - X * Y, levels=[-100, 0], colors=[ACCENT], alpha=0.25)
xs = np.linspace(0.25, 4, 200)
ax.plot(xs, 1 / xs, color=STATEMENT, lw=1.6)
ax.plot(-xs, -1 / xs, color=STATEMENT, lw=1.6)
ax.axhline(0, color=GRID, lw=0.8); ax.axvline(0, color=GRID, lw=0.8)
ax.text(2.6, 2.6, "elliptic", ha="center", color=INK, fontsize=10)
ax.text(-2.6, -2.6, "elliptic", ha="center", color=INK, fontsize=10)
ax.text(-2.3, 2.3, "hyperbolic", ha="center", color=INK, fontsize=10)
ax.text(2.3, -2.3, "hyperbolic", ha="center", color=INK, fontsize=10)
ax.text(0.55, 3.3, "$xy = 1$", color=STATEMENT, fontsize=10)
ax.set_xlim(-4, 4); ax.set_ylim(-4, 4); ax.set_aspect("equal")
ax.set_xlabel("$x$"); ax.set_ylabel("$y$")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "classification_regions")
