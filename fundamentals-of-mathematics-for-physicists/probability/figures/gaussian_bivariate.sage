# Contours of the density of N(0, Sigma), Sigma = [[1, r], [r, 1]] with r = 0.6, and the eigenvector axes.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

r = 0.6
S = np.array([[1, r], [r, 1]])
Si = np.linalg.inv(S)
x = np.linspace(-3.2, 3.2, 401)
X, Y = np.meshgrid(x, x)
Q = Si[0, 0] * X**2 + 2 * Si[0, 1] * X * Y + Si[1, 1] * Y**2
dens = np.exp(-Q / 2) / (2 * np.pi * np.sqrt(np.linalg.det(S)))
fig, ax = plt.subplots(figsize=(4.6, 5.4))
ax.contour(X, Y, dens, levels=[0.01, 0.03, 0.06, 0.1, 0.15], colors=[ACCENT], linewidths=1.4)
for sgn, lab in [(1, r"$(1, 1)/\sqrt{2}$, variance $1 + r$"), (-1, r"$(1, -1)/\sqrt{2}$, variance $1 - r$")]:
    ax.plot([-3, 3], [-3 * sgn, 3 * sgn], color=STATEMENT if sgn == 1 else EXAMPLE, lw=1.2, ls="--", label=lab)
ax.set_xlim(-3.2, 3.2); ax.set_ylim(-3.2, 3.2); ax.set_aspect("equal")
ax.set_xlabel(r"$x_1$"); ax.set_ylabel(r"$x_2$")
ax.legend(frameon=False, loc="upper center", bbox_to_anchor=(0.5, -0.14), fontsize=9, ncol=1)
ax.grid(color=GRID, lw=0.5)
fig.tight_layout()
save_matplotlib(fig, "gaussian_bivariate")
