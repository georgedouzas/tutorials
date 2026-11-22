# Character expansion of the class function f(alpha) = alpha on SU(2): partial sums S_J f and the squared mean error.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import quad
w = lambda a: np.sin(a / 2) ** 2 / np.pi
chi = lambda n, a: np.sin(n * a / 2) / np.sin(a / 2)      # n = 2j + 1
f = lambda a: a
c = {n: quad(lambda a: f(a) * chi(n, a) * w(a), 0, 2 * np.pi, limit=200)[0] for n in range(1, 42)}
norm2 = quad(lambda a: f(a) ** 2 * w(a), 0, 2 * np.pi)[0]
a = np.linspace(1e-4, 2 * np.pi - 1e-4, 600)
fig, (ax, bx) = plt.subplots(1, 2, figsize=(7.6, 3.3))
ax.plot(a, f(a), color=INK, lw=2.4, label=r"$f(\alpha) = \alpha$")
for k, (N, lab) in enumerate([(2, r"\frac{1}{2}"), (4, r"\frac{3}{2}"), (10, r"\frac{9}{2}")]):
    S = sum(c[n] * chi(n, a) for n in range(1, N + 1))
    ax.plot(a, S, color=SERIES[k], lw=1.4, label=r"$J = %s$" % lab)
ax.set_xlim(0, 2 * np.pi)
ax.set_xticks([0, np.pi, 2 * np.pi]); ax.set_xticklabels([r"$0$", r"$\pi$", r"$2\pi$"])
ax.set_xlabel(r"class angle $\alpha$")
ax.legend(frameon=False, fontsize=9, loc="upper left")
Ns = np.arange(1, 42)
err = [norm2 - sum(c[n] ** 2 for n in range(1, N + 1)) for N in Ns]
bx.loglog((Ns - 1) / 2 + 0.5, err, "o", ms=3, color=ACCENT)
bx.set_xlabel(r"$J + \frac{1}{2}$"); bx.set_ylabel(r"$\Vert f - S_Jf\Vert^2$")
for x in (ax, bx):
    for s in ["right", "top"]:
        x.spines[s].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "peter_weyl_convergence")
