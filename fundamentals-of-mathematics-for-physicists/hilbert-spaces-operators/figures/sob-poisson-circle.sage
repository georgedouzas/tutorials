# The square wave f = sgn x on [-pi, pi] (left), and the mean-zero solution u = x(pi - |x|)/2 of -u'' = f with its
# derivative u' = pi/2 - |x| (right).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = np.linspace(-np.pi, np.pi, 4001)
u = xs * (np.pi - np.abs(xs)) / 2; du = np.pi / 2 - np.abs(xs)
# check against the Fourier series c_k(u) = c_k(f)/k^2: u = (4/pi) sum_{odd k} sin(kx)/k^3
us = 4 / np.pi * sum(np.sin(k * xs) / k**3 for k in range(1, 2001, 2))
assert np.max(np.abs(us - u)) < 1e-5
fig, (a, b) = plt.subplots(1, 2, figsize=(10, 3.4))
a.plot(xs[xs < 0], -np.ones(np.sum(xs < 0)), color=ACCENT, lw=1.6)
a.plot(xs[xs > 0], np.ones(np.sum(xs > 0)), color=ACCENT, lw=1.6, label=r"$f = \mathrm{sgn}\,x$")
b.plot(xs, u, color=STATEMENT, lw=1.6, label=r"$u$")
b.plot(xs, du, color=EXAMPLE, lw=1.2, ls="--", label=r"$u'$")
a.set_ylim(-1.5, 1.8); b.set_ylim(-2, 2.6)
a.legend(loc="upper left", fontsize=9, frameon=False); b.legend(loc="upper left", fontsize=9, frameon=False, ncol=2)
for ax in (a, b):
    ax.set_xticks([-np.pi, 0, np.pi]); ax.set_xticklabels([r"$-\pi$", "0", r"$\pi$"])
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "sob-poisson-circle")
