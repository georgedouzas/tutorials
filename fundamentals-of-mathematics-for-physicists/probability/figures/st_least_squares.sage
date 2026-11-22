# Twelve seeded points y_i = 1 + 0.5 x_i + noise (standard deviation 0.4), the least-squares line,
# and the residuals as vertical segments.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

rng = np.random.default_rng(int(11))
x = np.linspace(0, 5.5, 12)
y = 1 + 0.5 * x + rng.normal(0, 0.4, 12)
A = np.column_stack([np.ones_like(x), x])
beta = np.linalg.solve(A.T @ A, A.T @ y)
fit = A @ beta
r = y - fit
fig, ax = plt.subplots(figsize=(6.5, 3.8))
for xi, yi, fi in zip(x, y, fit):
    ax.plot([xi, xi], [fi, yi], color=STATEMENT, lw=1.2)
xx = np.linspace(-0.2, 5.7, 50)
ax.plot(xx, 1 + 0.5 * xx, color=MUTED, ls="--", lw=1.0, label=r"true line $1 + 0.5x$")
ax.plot(xx, beta[0] + beta[1] * xx, color=ACCENT, lw=1.8, label=r"fit $%.2f + %.2fx$" % (beta[0], beta[1]))
ax.plot(x, y, "o", color=INK, ms=4)
ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")
ax.legend(frameon=False, loc="upper left", fontsize=9)
ax.grid(color=GRID, lw=0.5)
fig.tight_layout()
print("beta =", beta, "sum r =", r.sum(), "sum x r =", (x * r).sum(), "|r|^2 =", (r ** 2).sum(), "sigma2_hat =", (r ** 2).sum() / 10)
save_matplotlib(fig, "st_least_squares")
