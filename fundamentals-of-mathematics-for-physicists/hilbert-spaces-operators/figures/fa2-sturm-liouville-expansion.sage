# Partial sums with N = 1, 3, 10 terms of the expansion of f = 1 in the eigenfunctions sin(k_n x) of -u'' = lambda u,
# u(0) = 0, u'(1) + u(1) = 0, where tan k_n = -k_n.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.optimize import brentq

ks = [brentq(lambda t: np.tan(t) + t, (m - 0.5) * np.pi + 1e-9, m * np.pi - 1e-9) for m in range(1, 11)]
xs = np.linspace(0, 1, 801)
def partial(N):
    s = np.zeros_like(xs)
    for kk in ks[:N]:
        nrm2 = 0.5 * (1 + np.cos(kk) ** 2)
        c = (1 - np.cos(kk)) / kk / nrm2
        s += c * np.sin(kk * xs)
    return s
fig, ax = plt.subplots(figsize=(6.2, 3.8))
ax.plot(xs, np.ones_like(xs), color=MUTED, lw=1.2, label=r"$f = 1$")
for N, col in [(1, EXERCISE), (3, STATEMENT), (10, ACCENT)]:
    ax.plot(xs, partial(N), color=col, lw=1.5, label=r"$N = %d$" % N)
ax.set_xlabel(r"$x$"); ax.set_ylim(-0.05, 1.35)
ax.legend(loc="lower right", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-sturm-liouville-expansion")
