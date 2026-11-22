# Square wave sgn x on [-pi, pi]: projections S_N f = (4/pi) sum_{odd n <= N} sin(nx)/n for N = 1, 5, 25 (left), and the
# squared L^2 error ||f - S_N f||^2 = 2 pi - (16/pi) sum_{odd n <= N} 1/n^2 against N on log-log axes with 8/(pi N) (right).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

S = lambda x, N: 4 / np.pi * sum(np.sin(n * x) / n for n in range(1, N + 1, 2))
err = lambda N: 2 * np.pi - 16 / np.pi * sum(1.0 / n**2 for n in range(1, N + 1, 2))
xs = np.linspace(-np.pi, np.pi, 40001)
for N in (1, 5, 25):        # check the closed form of the error against a quadrature
    assert abs(np.trapezoid((np.sign(xs) - S(xs, N))**2, xs) - err(N)) < 1e-3
Ns = np.arange(1, 400, 2)
assert all(err(N) > 0 for N in Ns) and err(399) < 0.02

fig, (a, b) = plt.subplots(1, 2, figsize=(11, 4))
a.plot(xs, np.sign(xs), color=INK, lw=1.6, label=r"$\mathrm{sgn}\,x$")
for N, col in zip((1, 5, 25), (ACCENT, EXAMPLE, STATEMENT)):
    a.plot(xs, S(xs, N), color=col, lw=1.1, label=r"$N = %d$" % N)
a.set_xticks([-np.pi, 0, np.pi]); a.set_xticklabels([r"$-\pi$", "0", r"$\pi$"])
a.set_ylim(-1.5, 1.8); a.legend(loc="upper left", ncol=4, fontsize=9, frameon=False)
b.loglog(Ns, [err(N) for N in Ns], "o", color=ACCENT, ms=2.5, label=r"$\|f - S_Nf\|^2$")
b.loglog(Ns, 8 / (np.pi * Ns), color=MUTED, lw=1, ls="--", label=r"$8/(\pi N)$")
b.set_xlabel("$N$"); b.legend(loc="upper right", fontsize=9, frameon=False)
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-trig-l2")
