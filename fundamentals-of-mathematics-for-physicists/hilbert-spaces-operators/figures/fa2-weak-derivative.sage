# |x| on [-1, 1] with the C^1 approximants sqrt(x^2 + eps^2), eps = 0.3, 0.1, 0.03 (left), and their derivatives
# x/sqrt(x^2 + eps^2) together with the weak derivative sgn x (right).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = np.linspace(-1, 1, 4001)
eps = (0.3, 0.1, 0.03)
# the L^2 error of the derivatives is at most 2 eps (2 - pi/2) (example in the text)
for e in eps:
    err = np.trapezoid((xs / np.sqrt(xs**2 + e**2) - np.sign(xs))**2, xs)
    assert err <= 2 * e * (2 - np.pi / 2) + 1e-6
fig, (a, b) = plt.subplots(1, 2, figsize=(10, 3.6))
a.plot(xs, np.abs(xs), color=INK, lw=1.8, label=r"$|x|$")
b.plot(xs[xs < 0], -np.ones(np.sum(xs < 0)), color=INK, lw=1.8, label=r"$\mathrm{sgn}\,x$")
b.plot(xs[xs > 0], np.ones(np.sum(xs > 0)), color=INK, lw=1.8)
for e, col in zip(eps, (ACCENT, EXAMPLE, STATEMENT)):
    a.plot(xs, np.sqrt(xs**2 + e**2), color=col, lw=1.1, label=r"$\varepsilon = %g$" % e)
    b.plot(xs, xs / np.sqrt(xs**2 + e**2), color=col, lw=1.1, label=r"$\varepsilon = %g$" % e)
a.set_ylim(-0.05, 1.25); b.set_ylim(-1.3, 1.6)
a.legend(loc="upper center", ncol=2, fontsize=9, frameon=False)
b.legend(loc="upper left", ncol=2, fontsize=9, frameon=False)
for ax in (a, b):
    ax.set_xlabel("$x$")
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-weak-derivative")
