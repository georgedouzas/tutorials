# Left: Dirichlet kernels D_N(t) = sin((N + 1/2)t)/sin(t/2) for N = 4, 8 on [-pi, pi].
# Right: Lebesgue constants L_N = (1/2pi) int |D_N| for N = 1..64 between (4/pi^2) H_N and 1 + log(2N + 1).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import quad


def D(t, N):
    return 1 + 2 * sum(np.cos(k * t) for k in range(1, N + 1))


def L(N):
    zs = [0] + [2 * np.pi * j / (2 * N + 1) for j in range(1, N + 1)] + [np.pi]
    return sum(abs(quad(lambda t: D(t, N), a0, b0)[0]) for a0, b0 in zip(zs, zs[1:])) / np.pi


Ns = np.arange(1, 65)
LN = np.array([L(int(N)) for N in Ns])
H = np.cumsum(1.0 / Ns)
low = 4 / np.pi**2 * H
up = 1 + np.log(2 * Ns + 1)
assert np.all(low <= LN) and np.all(LN <= up)

t = np.linspace(-np.pi, np.pi, 4001)
fig, (a, b) = plt.subplots(1, 2, figsize=(9, 3.4))
a.plot(t, D(t, 4), color=EXAMPLE, lw=1.1, label="$N = 4$")
a.plot(t, D(t, 8), color=ACCENT, lw=1.1, label="$N = 8$")
a.axhline(0, color=GRID, lw=0.6)
a.set_xlabel("$t$"); a.set_ylabel("$D_N(t)$")
a.set_xticks([-np.pi, 0, np.pi]); a.set_xticklabels([r"$-\pi$", "$0$", r"$\pi$"])
a.legend(fontsize=9, frameon=False)
b.plot(Ns, up, color=MUTED, lw=1.0, ls="--", label=r"$1 + \log(2N + 1)$")
b.plot(Ns, LN, "o", color=ACCENT, ms=2.5, label="$L_N$")
b.plot(Ns, low, color=STATEMENT, lw=1.0, label=r"$\frac{4}{\pi^2}H_N$")
b.set_xscale("log"); b.set_xlabel("$N$")
b.legend(fontsize=9, frameon=False, loc="upper left")
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-lebesgue-constants")
