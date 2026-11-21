# Real part x/(x^2 + eps^2) (left) and imaginary part eps/(x^2 + eps^2) (right) of 1/(x - i eps) for eps = 1/2 and 1/8.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, e = var("x e"); assume(e > 0)
# checks: the decomposition of 1/(x - i eps) and the integral pi of the imaginary part
assert bool((1/(x - I*e) - (x/(x^2 + e^2) + I*e/(x^2 + e^2))).simplify_full() == 0)
assert bool(integrate(e/(x^2 + e^2), x, -oo, oo) == pi)

X = np.linspace(-3, 3, 3001)
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.6, 3.4))
for ee, c, lab in [(0.5, ACCENT, "1/2"), (0.125, STATEMENT, "1/8")]:
    a1.plot(X, X/(X**2 + ee**2), color=c, lw=1.4, label=r"$\varepsilon = %s$" % lab)
    a2.plot(X, ee/(X**2 + ee**2), color=c, lw=1.4, label=r"$\varepsilon = %s$" % lab)
Xp = X[np.abs(X) > 0.25]
a1.plot(X[X > 0.25], 1/X[X > 0.25], color=MUTED, lw=0.9, ls="--", label=r"$1/x$")
a1.plot(X[X < -0.25], 1/X[X < -0.25], color=MUTED, lw=0.9, ls="--")
a1.set_title(r"$x/(x^2 + \varepsilon^2)$", fontsize=11); a1.set_ylim(-4.5, 4.5)
a2.set_title(r"$\varepsilon/(x^2 + \varepsilon^2)$", fontsize=11); a2.set_ylim(-0.3, 8.5)
a1.legend(loc="upper left", fontsize=9, frameon=False)
a2.legend(loc="upper right", fontsize=9, frameon=False)
for ax in (a1, a2):
    ax.axhline(0, color=GRID, lw=0.6); ax.set_xlim(-3, 3); ax.set_xlabel("$x$")
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "sokhotski_plemelj")
