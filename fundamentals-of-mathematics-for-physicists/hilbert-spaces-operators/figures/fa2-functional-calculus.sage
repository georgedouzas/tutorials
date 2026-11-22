# f(x) = e^{-x} and f(x) = sqrt(x) on [0, 4], with the spectrum {2 - sqrt 2, 2, 2 + sqrt 2} of the tridiagonal matrix
# [[2, 1, 0], [1, 2, 1], [0, 1, 2]] on the axis and the values f(lambda_j), the eigenvalues of f(A), on the graphs.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

A = np.array([[2.0, 1.0, 0.0], [1.0, 2.0, 1.0], [0.0, 1.0, 2.0]])
lam = np.sort(np.linalg.eigvalsh(A))
assert np.allclose(lam, [2 - np.sqrt(2), 2, 2 + np.sqrt(2)])
w, V = np.linalg.eigh(A)
fA_exp = V @ np.diag(np.exp(-w)) @ V.T; fA_sqrt = V @ np.diag(np.sqrt(w)) @ V.T
assert np.isclose(np.linalg.norm(fA_exp, 2), np.exp(-lam[0])) and np.isclose(np.linalg.norm(fA_sqrt, 2), np.sqrt(lam[2]))
xs = np.linspace(0, 4, 400)
fig, ax = plt.subplots(figsize=(6.0, 3.8))
ax.plot(xs, np.exp(-xs), color=ACCENT, lw=1.6, label=r"$e^{-x}$")
ax.plot(xs, np.sqrt(xs), color=STATEMENT, lw=1.6, label=r"$\sqrt{x}$")
ax.plot(lam, np.exp(-lam), "o", color=ACCENT, ms=5)
ax.plot(lam, np.sqrt(lam), "o", color=STATEMENT, ms=5)
ax.plot(lam, np.full(3, -0.12), "x", color=INK, ms=7, mew=1.5, label=r"$\sigma(\mathbf{A})$")
for l in lam:
    ax.plot([l, l], [-0.12, np.sqrt(l)], color=GRID, lw=0.8, zorder=0)
ax.set_xlim(0, 4.05); ax.set_ylim(-0.22, 2.1)
ax.axhline(0, color=MUTED, lw=0.6)
ax.set_xlabel(r"$x$")
ax.legend(frameon=False, loc="center right")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-functional-calculus")
