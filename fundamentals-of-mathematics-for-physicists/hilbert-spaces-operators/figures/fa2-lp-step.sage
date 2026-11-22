# The step function on [0, 1] and continuous ramps g_n (0 up to 1/2 - 1/n, 1 from 1/2) approaching it; right panel:
# |g_n - step|_p = (n(p + 1))^(-1/p) for p = 1, 2, 4, all tending to 0, while the sup distance stays 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np


def g(n, x):
    return np.clip(n*(x - 0.5 + 1/n), 0, 1)


x = np.linspace(0, 1, 200001)
step = (x >= 0.5).astype(float)
for n in [4, 16]:
    for p in [1, 2, 4]:
        assert abs(np.trapezoid(abs(g(n, x) - step)**p, x)**(1/p) - (n*(p + 1))**(-1/p)) < 1e-3
fig, (a, b) = plt.subplots(1, 2, figsize=(9, 3.4))
a.plot([0, 0.5], [0, 0], color=INK, lw=2.2, alpha=0.35, label=r"$\Theta(x - \frac{1}{2})$")
a.plot([0.5, 1], [1, 1], color=INK, lw=2.2, alpha=0.35)
for n, col in zip([3, 6, 12], SERIES):
    a.plot(x, g(n, x), color=col, lw=1.2, label=f"$g_{{{n}}}$")
a.set_xlabel("$x$"); a.set_ylim(-0.05, 1.1); a.legend(fontsize=9, frameon=False, loc="upper left")
ns = np.array([2, 4, 8, 16, 32, 64, 128])
for p, col in zip([1, 2, 4], SERIES):
    b.loglog(ns, (ns*(p + 1.0))**(-1/p), "o-", color=col, ms=3.5, label=fr"$p = {p}$")
b.set_xlabel("$n$"); b.set_ylabel(r"$\|g_n - \Theta(\cdot - \frac{1}{2})\|_p$")
b.legend(fontsize=9, frameon=False)
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-lp-step")
