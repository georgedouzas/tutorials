# The heat kernel K(t, x) = exp(-x^2/(4 kappa t)) / sqrt(4 pi kappa t) for kappa = 1 at t = 0.05, 0.2, 1, 3.
# Each curve has unit area (checked below); the width grows like sqrt(t).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

t, x = var("t x")
assume(t > 0)
K = exp(-x^2 / (4 * t)) / sqrt(4 * pi * t)
assert bool((diff(K, t) - diff(K, x, 2)).simplify_full() == 0)
times = [0.05, 0.2, 1, 3]
for T in times:
    assert abs(numerical_integral(K.subs(t=T), -40, 40)[0] - 1) < 1e-9
xs = np.linspace(-6, 6, 801)
fig, ax = plt.subplots(figsize=(6.0, 3.4))
for T, col in zip(times, [ACCENT, STATEMENT, EXAMPLE, EXERCISE]):
    ax.plot(xs, np.exp(-xs**2 / (4 * T)) / np.sqrt(4 * np.pi * T), color=col, lw=1.5, label="$t = %s$" % {0.05: "0.05", 0.2: "0.2", 1: "1", 3: "3"}[T])
ax.set_xlim(-6, 6); ax.set_ylim(0, 1.32)
ax.set_xlabel("$x$"); ax.set_ylabel("$K(t, x)$")
ax.legend(frameon=False, loc="upper right")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "heat_kernel")
