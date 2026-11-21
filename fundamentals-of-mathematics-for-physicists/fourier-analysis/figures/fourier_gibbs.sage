# The square wave near its jump at 0, on [0, pi/2]: the partial sums S_9, S_29, S_99 overshoot to about 1.179, while the
# Cesaro mean sigma_29 = (S_0 + ... + S_29)/30 stays below 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

gibbs = float(2 / pi * sin_integral(pi))


def S(N, X):
    return sum(4 / (np.pi * n) * np.sin(n * X) for n in range(1, N + 1, 2))


def sigma(N, X):
    # sigma_N = sum_{|n| <= N} (1 - |n|/(N+1)) c_n e^{inx}, for the square wave a sine sum over odd n
    return sum((1 - n / (N + 1)) * 4 / (np.pi * n) * np.sin(n * X) for n in range(1, N + 1, 2))


X = np.linspace(0, np.pi / 2, 3001)
# checks: the maximum of S_99 on (0, pi/2] is within 2e-3 of the Gibbs constant, and sigma_29 never exceeds 1
assert abs(S(99, X).max() - gibbs) < 2e-3
assert sigma(29, X).max() < 1

fig, ax = plt.subplots(figsize=(6.6, 3.6))
ax.plot([0, np.pi / 2], [1, 1], color=INK, lw=2.0)
ax.axhline(gibbs, color=MUTED, lw=0.8, ls=(0, (5, 3)))
ax.text(1.25, gibbs + 0.02, r"$1.179$", color=MUTED, fontsize=10)
for N, c in [(9, ACCENT), (29, EXAMPLE), (99, STATEMENT)]:
    ax.plot(X, S(N, X), color=c, lw=1.1, label=r"$S_{%d}$" % N)
ax.plot(X, sigma(29, X), color=EXERCISE, lw=1.6, ls="--", label=r"$\sigma_{29}$")
ax.set_xlim(0, np.pi / 2); ax.set_ylim(0, 1.3)
ax.set_xticks([0, np.pi / 4, np.pi / 2]); ax.set_xticklabels([r"$0$", r"$\pi/4$", r"$\pi/2$"])
ax.set_xlabel("$x$")
ax.legend(loc="lower right", fontsize=9, frameon=False, ncol=2)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fourier_gibbs")
