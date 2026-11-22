# The series solution u = sum over odd n of 8/(pi n^3) exp(-n^2 t) sin(n x) of u_t = u_xx on [0, pi] with zero end values
# (coefficients of x(pi - x)), summed to n = 99, at t = 0, 0.1, 0.5, 1, 2. By t = 1 the first mode dominates.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, n = var("x n")
assume(n, "integer")
assert bool((2 / pi * integrate(x * (pi - x) * sin(n * x), x, 0, pi) - 4 * (1 - (-1)^n) / (pi * n^3)).simplify_full() == 0)
xs = np.linspace(0, np.pi, 401)
U = lambda t: sum(8 / (np.pi * k**3) * np.exp(-k**2 * t) * np.sin(k * xs) for k in range(1, 100, 2))
fig, ax = plt.subplots(figsize=(6.0, 3.4))
for t, col, lab in zip([0, 0.1, 0.5, 1, 2], [ACCENT, STATEMENT, EXAMPLE, EXERCISE, ORANGE], ["0", "0.1", "0.5", "1", "2"]):
    ax.plot(xs, U(t), color=col, lw=1.5, label="$t = %s$" % lab)
ax.set_xlim(0, np.pi); ax.set_ylim(0, 2.7)
ax.set_xticks([0, np.pi / 2, np.pi]); ax.set_xticklabels(["$0$", r"$\pi/2$", r"$\pi$"])
ax.set_xlabel("$x$"); ax.set_ylabel("$u$")
ax.legend(frameon=False, loc="upper center", bbox_to_anchor=(0.5, 1.17), ncol=5, fontsize=10)
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "sep_heat_rod")
