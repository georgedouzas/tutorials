# Partial sums of 1 - x^2 + x^4 - ... (up to x^(2N), N = 2, 5, 10, 20) and the function 1/(1 + x^2) on [-1.4, 1.4].
# The series has radius 1: outside [-1, 1] the partial sums run away although 1/(1 + x^2) is defined everywhere.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = np.linspace(-1.4, 1.4, 600)
fig, ax = plt.subplots(figsize=(6.4, 4.2))
ax.axvspan(-1, 1, color=ACCENT, alpha=0.06, lw=0)
for N, col in zip((2, 5, 10, 20), (MUTED, EXERCISE, EXAMPLE, ORANGE)):
    ax.plot(xs, sum((-1)**k * xs**(2 * k) for k in range(N + 1)), color=col, lw=1.0, label="$N = %d$" % N)
ax.plot(xs, 1 / (1 + xs**2), color=ACCENT, lw=2.0, label=r"$1/(1 + x^2)$")
ax.axvline(-1, color=INK, lw=0.7, ls=":"); ax.axvline(1, color=INK, lw=0.7, ls=":")
ax.set_xlabel("$x$"); ax.set_xlim(-1.45, 1.45); ax.set_ylim(-1.5, 2.5)
ax.legend(loc="upper center", bbox_to_anchor=(0.5, -0.17), ncol=5, frameon=False, fontsize=9.5, handlelength=1.5, columnspacing=1.0)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "radius_lorentzian")
