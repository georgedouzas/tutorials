# Partial sums 1 + x + ... + x^N of the geometric power series for N = 1, 3, 7, 15 on [-1.3, 1], with its sum
# 1/(1 - x) on (-1, 1). Inside (-1, 1) the partial sums approach the sum; for x <= -1 they oscillate.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = np.linspace(-1.3, 0.95, 500)
fig, ax = plt.subplots(figsize=(6.4, 3.9))
ax.axvspan(-1, 1, color=ACCENT, alpha=0.06, lw=0)
for N, col in zip((1, 3, 7, 15), (MUTED, EXERCISE, EXAMPLE, ORANGE)):
    ax.plot(xs, sum(xs**k for k in range(N + 1)), color=col, lw=1.0, label="$N = %d$" % N)
inside = xs[xs > -0.999]
ax.plot(inside, 1 / (1 - inside), color=ACCENT, lw=2.0)
ax.text(0.45, 7.0, r"$\frac{1}{1 - x}$", color=ACCENT, fontsize=13)
ax.axvline(-1, color=INK, lw=0.7, ls=":"); ax.axvline(1, color=INK, lw=0.7, ls=":")
ax.legend(loc="upper left", frameon=False, fontsize=10)
ax.set_xlabel("$x$"); ax.set_xlim(-1.32, 1.05); ax.set_ylim(-4, 10)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "geometric_power_series")
