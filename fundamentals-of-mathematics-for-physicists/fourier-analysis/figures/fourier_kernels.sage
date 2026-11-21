# The Dirichlet kernel D_N(t) = sin((N + 1/2) t)/sin(t/2) (left) and the Fejer kernel
# F_N(t) = sin^2((N + 1) t/2)/((N + 1) sin^2(t/2)) (right) on [-pi, pi] for N = 4 and N = 8.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np


def D(N, t):
    return sum(np.cos(n * t) for n in range(1, N + 1)) * 2 + 1


def F(N, t):
    return sum((1 - abs(n) / (N + 1)) * np.cos(n * t) for n in range(-N, N + 1))


# checks: the closed forms agree with the sums at a sample point, D_N(0) = 2N + 1, F_N(0) = N + 1
t0 = 0.7
for N in [4, 8]:
    assert abs(D(N, t0) - np.sin((N + 0.5) * t0) / np.sin(t0 / 2)) < 1e-12
    assert abs(F(N, t0) - np.sin((N + 1) * t0 / 2) ** 2 / ((N + 1) * np.sin(t0 / 2) ** 2)) < 1e-12
    assert abs(D(N, 0.0) - (2 * N + 1)) < 1e-12 and abs(F(N, 0.0) - (N + 1)) < 1e-12

T = np.linspace(-np.pi, np.pi, 2001)
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.6, 3.6))
for N, c in [(4, ACCENT), (8, STATEMENT)]:
    a1.plot(T, D(N, T), color=c, lw=1.2, label=r"$N = %d$" % N)
    a2.plot(T, F(N, T), color=c, lw=1.2, label=r"$N = %d$" % N)
a1.set_title(r"Dirichlet kernel $D_N$", fontsize=11)
a2.set_title("Fejér kernel $F_N$", fontsize=11)
a1.set_ylim(-4.5, 18.5); a2.set_ylim(-1.0, 10.0)
for ax in (a1, a2):
    ax.axhline(0, color=MUTED, lw=0.7)
    ax.set_xlim(-np.pi, np.pi)
    ax.set_xticks([-np.pi, 0, np.pi]); ax.set_xticklabels([r"$-\pi$", r"$0$", r"$\pi$"])
    ax.set_xlabel("$t$")
    ax.legend(loc="upper right", fontsize=9, frameon=False)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fourier_kernels")
