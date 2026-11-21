# Partial sums (1/2 pi) sum_{|n| <= N} e^{inx} = D_N(x)/(2 pi) for N = 4 and N = 16 on [-3 pi, 3 pi]: they peak at the
# multiples of 2 pi, the points of the Dirac comb.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np


def P(N, X):
    return (1 + 2*sum(np.cos(n*X) for n in range(1, N + 1)))/(2*np.pi)


# checks: the peak height (2N + 1)/(2 pi) and the integral 1 over one period
for N in [4, 16]:
    assert abs(P(N, np.array([0.0]))[0] - (2*N + 1)/(2*np.pi)) < 1e-12
    t = np.linspace(-np.pi, np.pi, 200001)
    assert abs(np.trapezoid(P(N, t), t) - 1) < 1e-6

X = np.linspace(-3*np.pi, 3*np.pi, 6001)
fig, ax = plt.subplots(figsize=(8.4, 3.2))
ax.plot(X, P(4, X), color=ACCENT, lw=1.2, label=r"$N = 4$")
ax.plot(X, P(16, X), color=STATEMENT, lw=0.9, label=r"$N = 16$")
ax.axhline(0, color=GRID, lw=0.6)
ax.set_xlim(-3*np.pi, 3*np.pi); ax.set_ylim(-1.2, 5.9)
ax.set_xticks([-2*np.pi, 0, 2*np.pi]); ax.set_xticklabels([r"$-2\pi$", r"$0$", r"$2\pi$"])
ax.set_xlabel("$x$")
ax.legend(loc="upper right", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "dirac_comb")
