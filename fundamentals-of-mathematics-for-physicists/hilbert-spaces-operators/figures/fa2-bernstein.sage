# Bernstein polynomials B_n f of f(x) = |x - 1/2| for n = 4, 16, 64 and the uniform error against n.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from math import comb


def B(n, x):
    return sum(abs(k/n - 0.5)*comb(n, k)*x**k*(1 - x)**(n - k) for k in range(n + 1))


x = np.linspace(0, 1, 2001)
ns = [4, 8, 16, 32, 64, 128, 256]
err = [np.max(np.abs(B(n, x) - abs(x - 0.5))) for n in ns]
assert abs(err[0] - abs(B(4, np.array([0.5]))[0])) < 1e-12  # the error is largest at the corner

fig, (a, b) = plt.subplots(1, 2, figsize=(9, 3.4))
a.plot(x, abs(x - 0.5), color=INK, lw=2.2, alpha=0.35, label="$f$")
for n, col in zip([4, 16, 64], SERIES):
    a.plot(x, B(n, x), color=col, lw=1.3, label=f"$B_{{{n}}}f$")
a.set_xlabel("$x$"); a.legend(fontsize=9, frameon=False, loc="upper center")
b.loglog(ns, err, "o-", color=ACCENT, label=r"$\|B_nf - f\|_\infty$")
b.loglog(ns, [1/np.sqrt(2*np.pi*n) for n in ns], "--", color=STATEMENT, label=r"$1/\sqrt{2\pi n}$")
b.set_xlabel("$n$"); b.legend(fontsize=9, frameon=False)
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-bernstein")
