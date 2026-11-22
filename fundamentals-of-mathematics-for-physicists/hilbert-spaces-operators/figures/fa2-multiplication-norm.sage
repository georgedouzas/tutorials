# Position operator M_x on L^2[0, 1]: tents f_n of unit norm concentrated near x = 1 (n = 2, 4, 8, 16) and the ratios
# ||x f_n|| / ||f_n||, which increase to ||M_x|| = max |x| = 1 without reaching it.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
def tent(n):
    # f_n = 0 on [0, 1 - 1/n], linear from 0 to 1 on [1 - 1/n, 1], normalised in L^2
    g = n*(x - 1 + 1/QQ(n))
    nrm = sqrt(integrate(g^2, x, 1 - 1/QQ(n), 1))
    return g/nrm
ns = [2, 4, 8, 16]
ratios = []
for n in ns:
    f = tent(n)
    assert abs(integrate(f^2, x, 1 - 1/QQ(n), 1) - 1) < 1e-12
    ratios.append(float(sqrt(integrate((x*f)^2, x, 1 - 1/QQ(n), 1))))
assert all(r < 1 for r in ratios) and all(ratios[i] < ratios[i+1] for i in range(3))

fig, (a, b) = plt.subplots(1, 2, figsize=(10, 3.8))
xs = np.linspace(0, 1, 801)
a.plot(xs, xs, color=MUTED, lw=1.2, ls="--"); a.text(0.12, 0.55, r"$g(x) = x$", color=MUTED, fontsize=11)
for n, col in zip(ns, SERIES):
    nrm = float(sqrt(QQ(1)/(3*n)))
    ys = np.where(xs > 1 - 1/n, n*(xs - 1 + 1/n), 0)/nrm
    a.plot(xs, ys, color=col, lw=1.4, label=r"$f_{%d}$" % n)
a.set_xlabel(r"$x$"); a.legend(loc="upper left", frameon=False, bbox_to_anchor=(0.0, 0.92))
a.set_xlim(0, 1.02); a.set_ylim(0, 7.2)
b.plot(ns, ratios, "o-", color=ACCENT, lw=1.4)
b.axhline(1, color=STATEMENT, lw=1, ls="--"); b.text(2.1, 0.995, r"$\|M_x\| = 1$", color=STATEMENT, fontsize=11, va="top")
b.set_xscale("log", base=2); b.set_xticks(ns); b.set_xticklabels([str(n) for n in ns])
b.set_xlabel(r"$n$"); b.set_ylabel(r"$\|x f_n\|/\|f_n\|$")
b.set_ylim(0.6, 1.03)
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-multiplication-norm")
