# Smoothed steps Theta * g_eps = (1 + erf(x/eps))/2 for eps = 1/2 and 1/8 with the step Theta (left), and the
# derivatives g_eps' of the Gaussians for eps = 1/2 and 1/4, which converge to delta' (right).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.special import erf

x, y, e = var("x y e"); assume(e > 0)
# checks: Theta * g_eps is (1 + erf(x/eps))/2, its derivative is g_eps, and int g_eps' x dx = -1
g = exp(-x^2/e^2)/(e*sqrt(pi))
conv = integrate(g.subs(x=x - y), y, 0, oo)
assert bool((diff(conv, x) - g).simplify_full() == 0)
assert bool((conv.subs(x=0) - 1/2).simplify_full() == 0)
assert bool(integrate(diff(g, x)*x, x, -oo, oo) == -1)

X = np.linspace(-2, 2, 2001)
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.6, 3.4))
a1.plot(X, (X > 0).astype(float), color=MUTED, lw=1.0, label=r"$\Theta$")
for ee, c, lab in [(0.5, ACCENT, "1/2"), (0.125, STATEMENT, "1/8")]:
    a1.plot(X, (1 + erf(X/ee))/2, color=c, lw=1.4, label=r"$\varepsilon = %s$" % lab)
a1.set_title(r"$\Theta * g_\varepsilon$", fontsize=11); a1.set_ylim(-0.08, 1.15)
a1.legend(loc="upper left", fontsize=9, frameon=False)
for ee, c, lab in [(0.5, ACCENT, "1/2"), (0.25, STATEMENT, "1/4")]:
    a2.plot(X, -2*X/ee**2*np.exp(-X**2/ee**2)/(ee*np.sqrt(np.pi)), color=c, lw=1.4, label=r"$\varepsilon = %s$" % lab)
a2.set_title(r"$g_\varepsilon'$", fontsize=11)
a2.legend(loc="upper right", fontsize=9, frameon=False)
for ax in (a1, a2):
    ax.axhline(0, color=GRID, lw=0.6); ax.set_xlim(-2, 2); ax.set_xlabel("$x$")
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "step_regularised")
