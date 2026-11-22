# Mercer series of the Green's operator kernel min(x,y) - xy on the diagonal: partial sums sum_{n<=N} 2 sin^2(n pi x)/(n pi)^2
# for N = 1, 2, 5 against x - x^2; the error is at most 2/(pi^2 N).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
xs = np.linspace(0, 1, 801)
fig, ax = plt.subplots(figsize=(6.0, 3.6))
ax.plot(xs, xs - xs**2, color=INK, lw=2.0, label=r"$x - x^2$")
for N, col in zip((1, 2, 5), (STATEMENT, EXAMPLE, ACCENT)):
    S = sum(2 * np.sin(n * np.pi * xs)**2 / (n * np.pi)**2 for n in range(1, N + 1))
    assert np.max(xs - xs**2 - S) <= 2 / (np.pi**2 * N) + 1e-12 and np.min(xs - xs**2 - S) >= -1e-12
    ax.plot(xs, S, color=col, lw=1.3, ls="--", label=r"$N = %d$" % N)
ax.set_xlabel(r"$x$"); ax.set_ylim(0, 0.3); ax.legend(frameon=False, loc="upper right", ncol=2)
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "trc-mercer-diagonal")
