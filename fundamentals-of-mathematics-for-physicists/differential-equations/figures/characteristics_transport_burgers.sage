# Characteristics in the (x, t)-plane. Left: transport u_t + u_x = 0, the lines x = xi + t. Right: Burgers' equation with
# ramp data u0 = 1 (x <= 0), 1 - x (0 <= x <= 1), 0 (x >= 1): the lines x = xi + t u0(xi) cross at (1, 1) and end on the shock
# x = 1 + (t - 1)/2, whose speed 1/2 is the Rankine-Hugoniot speed (thm-burgers-shocks, exm-bur-ramp).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

T = 2.5
u0 = lambda xi: 1.0 if xi <= 0 else (1.0 - xi if xi <= 1 else 0.0)
shock = lambda t: 1 + (t - 1) / 2
# the Rankine-Hugoniot speed of the jump from 1 to 0 for the flux u^2/2
assert abs(((0**2 - 1**2) / 2) / (0 - 1) - 0.5) < 1e-12
fig, (a1, a2) = plt.subplots(1, 2, figsize=(8.0, 3.4), sharey=True)
for xi in np.arange(-3.0, 3.01, 0.25):
    a1.plot([xi, xi + T], [0, T], color=ACCENT, lw=0.9)
for xi in np.arange(-1.5, 3.01, 0.25):
    c = u0(xi)
    if xi <= 0:
        t_end = 1 - 2 * xi           # meets the shock where xi + t = 1/2 + t/2
    elif xi <= 1:
        t_end = 1.0                  # all lines from [0, 1] reach (1, 1)
    else:
        t_end = 2 * xi - 1           # meets the shock where xi = 1/2 + t/2
    t_end = min(t_end, T)
    a2.plot([xi, xi + c * t_end], [0, t_end], color=ACCENT, lw=0.9)
ts = np.linspace(1, T, 50)
a2.plot(shock(ts), ts, color=STATEMENT, lw=2.0, label="shock")
a2.plot([1], [1], "o", color=STATEMENT, ms=4)
for ax, ttl in [(a1, r"$u_t + u_x = 0$"), (a2, r"$u_t + uu_x = 0$")]:
    ax.set_xlim(-1.5, 3.0); ax.set_ylim(0, T); ax.set_xlabel("$x$"); ax.set_title(ttl, fontsize=11)
    ax.spines[["top", "right"]].set_visible(False)
a1.set_ylabel("$t$")
a2.legend(frameon=False, loc="upper left")
fig.tight_layout()
save_matplotlib(fig, "characteristics_transport_burgers")
