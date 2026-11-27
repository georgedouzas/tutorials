load("../../_filters/figstyle.sage")
# The generating function (x/2)/sinh(x/2) of the A-hat genus and its Taylor polynomials of degree 2 and 4.
import matplotlib.pyplot as plt
import numpy as np
x = var("x"); f = (x/2)/sinh(x/2)
print("series:", f.series(x, 7))
X = np.linspace(-8, 8, 400); Xs = np.where(X == 0, 1e-9, X)
fig, ax = plt.subplots(figsize=(5.8, 3.6))
ax.plot(X, (Xs/2)/np.sinh(Xs/2), color=INK, lw=2, label=r"$\frac{x/2}{\sinh(x/2)}$")
ax.plot(X, 1 - X**2/24, color=ACCENT, lw=1.5, ls="--", label=r"$1 - \frac{x^2}{24}$")
ax.plot(X, 1 - X**2/24 + 7*X**4/5760, color=STATEMENT, lw=1.5, ls="--", label=r"$1 - \frac{x^2}{24} + \frac{7x^4}{5760}$")
ax.set_ylim(-0.6, 1.4); ax.set_xlabel(r"$x$"); ax.axhline(0, color=GRID, lw=0.8)
for s in ("top", "right"): ax.spines[s].set_visible(False)
ax.legend(frameon=False, ncol=3, loc="upper center", bbox_to_anchor=(0.5, -0.22), fontsize=9)
fig.tight_layout()
save_matplotlib(fig, "sd-ahat-series")
