# Left: p -> |a|_p for a_n = 1/n and a_n = 2^(-n) (decreasing in p). Right: p -> |f|_p on [0, 1] for f = x^(-1/4)
# (finite exactly for p < 4) and f = x (increasing in p).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from mpmath import zeta as mzeta

p1 = np.linspace(1.15, 6, 200)
harm = np.array([float(mzeta(p))**(1/p) for p in p1])
geo = np.array([(1/(2**p - 1))**(1/p) for p in p1])  # sum 2^(-np) = 1/(2^p - 1)
p2 = np.linspace(1, 3.85, 200)
sing = (4/(4 - p2))**(1/p2)                            # int_0^1 x^(-p/4) dx = 4/(4 - p)
lin = (1/(p2 + 1))**(1/p2)
assert abs(float(mzeta(2))**0.5 - np.pi/np.sqrt(6)) < 1e-12 and np.all(np.diff(harm) < 0) and np.all(np.diff(sing) > 0)

fig, (a, b) = plt.subplots(1, 2, figsize=(9, 3.4))
a.plot(p1, harm, color=ACCENT, lw=1.4, label=r"$a_n = 1/n$")
a.plot(p1, geo, color=STATEMENT, lw=1.4, label=r"$a_n = 2^{-n}$")
a.axhline(1, color=GRID, lw=0.6)
a.set_xlabel("$p$"); a.set_ylabel(r"$\|a\|_p$"); a.set_ylim(0, 3.2)
a.legend(fontsize=9, frameon=False)
b.plot(p2, sing, color=ACCENT, lw=1.4, label=r"$f(x) = x^{-1/4}$")
b.plot(p2, lin, color=STATEMENT, lw=1.4, label=r"$f(x) = x$")
b.axvline(4, color=GRID, lw=0.8, ls="--")
b.set_xlabel("$p$"); b.set_ylabel(r"$\|f\|_p$ on $[0, 1]$"); b.set_ylim(0, 3.2); b.set_xlim(1, 4.2)
b.legend(fontsize=9, frameon=False, loc="upper left")
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-lp-norms")
