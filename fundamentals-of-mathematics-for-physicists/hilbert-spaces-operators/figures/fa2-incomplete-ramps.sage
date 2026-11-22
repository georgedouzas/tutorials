# Continuous ramps f_n (0 up to 1/2 - 1/n, 1 from 1/2 on, linear between), Cauchy in the 1-norm on [0, 1] with a
# discontinuous limit; right panel: |f_n - f_2n|_1 = 1/(4n) and |f_n - f_2n|_sup = 1/2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np


def f(n, x):
    return np.clip(n*(x - 0.5 + 1/n), 0, 1)


x = np.linspace(0, 1, 40001)
for n in [2, 4, 8, 16]:
    d = abs(f(n, x) - f(2*n, x))
    assert abs(np.trapezoid(d, x) - 1/(4*n)) < 1e-6 and abs(d.max() - 0.5) < 1e-3

fig, (a, b) = plt.subplots(1, 2, figsize=(9, 3.4))
for n, col in zip([2, 4, 8, 16], SERIES):
    a.plot(x, f(n, x), color=col, lw=1.3, label=f"$f_{{{n}}}$")
a.plot([0, 0.5], [0, 0], color=INK, lw=2.2, alpha=0.35, label="step")
a.plot([0.5, 1], [1, 1], color=INK, lw=2.2, alpha=0.35)
a.set_xlabel("$x$"); a.set_ylim(-0.05, 1.1)
a.legend(fontsize=9, frameon=False, loc="upper left")
ns = np.array([2, 4, 8, 16, 32, 64])
b.semilogx(ns, 1/(4*ns), "o-", color=ACCENT, label=r"$\|f_n - f_{2n}\|_1$")
b.semilogx(ns, 0*ns + 0.5, "s-", color=STATEMENT, label=r"$\|f_n - f_{2n}\|_\infty$")
b.set_xticks(ns); b.set_xticklabels([str(n) for n in ns])
b.set_xlabel("$n$"); b.set_ylim(0, 0.6)
b.legend(fontsize=9, frameon=False, loc="center right")
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-incomplete-ramps")
