# The rarefaction fan of Burgers' equation for u0 = 0 (x < 0), 1 (x > 0): left, the characteristics x = xi (xi < 0),
# x = xi + t (xi > 0) and the fan x = c t, 0 <= c <= 1, from the origin; right, the profile u = 0, x/t, 1 at t = 0.5, 1, 2
# (thm-burgers-shocks, exm-bur-rarefaction).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

T = 2.0
t, x = var("t x")
assert bool(diff(x / t, t) + (x / t) * diff(x / t, x) == 0)   # x/t solves Burgers' equation
fig, (a1, a2) = plt.subplots(1, 2, figsize=(8.0, 3.2))
for xi in np.arange(-2.0, -0.01, 0.25):
    a1.plot([xi, xi], [0, T], color=ACCENT, lw=0.9)
for xi in np.arange(0.25, 2.01, 0.25):
    a1.plot([xi, xi + T], [0, T], color=ACCENT, lw=0.9)
for c in np.linspace(0, 1, 9):
    a1.plot([0, c * T], [0, T], color=STATEMENT, lw=0.9)
a1.set_xlim(-2, 3); a1.set_ylim(0, T); a1.set_xlabel("$x$"); a1.set_ylabel("$t$")
xs = np.linspace(-1, 3, 801)
for T1, col in [(0.5, SERIES[0]), (1.0, SERIES[1]), (2.0, SERIES[2])]:
    a2.plot(xs, np.clip(xs / T1, 0, 1), color=col, lw=1.5, label="$t = %g$" % T1)
a2.set_xlim(-1, 3); a2.set_ylim(-0.05, 1.15); a2.set_xlabel("$x$"); a2.set_ylabel("$u(t, x)$")
a2.legend(frameon=False, loc="lower right")
for ax in (a1, a2):
    ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "rarefaction_fan")
