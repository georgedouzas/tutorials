# Boxes 1_[-a, a] for a = 1/2, 1, 2 (left) and their transforms 2 sin(ak)/k (right).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, k, a = var("x k a"); assume(a > 0); assume(k, "real")
assert bool((integrate(exp(-I*k*x), x, -a, a) - 2*sin(a*k)/k).simplify_full().simplify_trig() == 0)

X = np.linspace(-3, 3, 1201); K = np.linspace(-12, 12, 2401)
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.6, 3.6))
for av, c, off in [(0.5, ACCENT, 0.0), (1.0, EXAMPLE, 0.02), (2.0, STATEMENT, 0.04)]:
    a1.plot(X, np.where(np.abs(X) <= av, 1.0 + off, off), color=c, lw=1.4, label=r"$a = %g$" % av)
    a2.plot(K, 2*av*np.sinc(av*K/np.pi), color=c, lw=1.3, label=r"$a = %g$" % av)
a1.set_ylim(-0.15, 1.45); a1.set_xlabel("$x$"); a1.set_title(r"$\mathbb{1}_{[-a, a]}$", fontsize=11)
a2.set_xlabel("$k$"); a2.set_title(r"$2\sin(ak)/k$", fontsize=11)
a1.legend(loc="upper center", ncol=3, fontsize=9, frameon=False)
a2.legend(loc="upper right", fontsize=9, frameon=False)
for ax in (a1, a2):
    ax.axhline(0, color=GRID, lw=0.6)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fourier_box_sinc")
