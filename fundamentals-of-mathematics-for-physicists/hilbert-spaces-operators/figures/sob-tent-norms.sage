# Tents h_n(x) = max(0, 1 - n|x|) on [-1, 1] for n = 2, 4, 8 (left), and ||h_n||^2 = 2/(3n), ||h_n'||^2 = 2n against n
# on log-log axes (right).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = np.linspace(-1, 1, 8001)
h = lambda n: np.maximum(0, 1 - n * np.abs(xs))
for n in (2, 4, 8):
    assert abs(np.trapezoid(h(n)**2, xs) - 2 / (3 * n)) < 1e-4
ns = np.array([1, 2, 4, 8, 16, 32, 64, 128])
fig, (a, b) = plt.subplots(1, 2, figsize=(10, 3.6))
for n, col in zip((2, 4, 8), (ACCENT, EXAMPLE, STATEMENT)):
    a.plot(xs, h(n), color=col, lw=1.4, label=r"$n = %d$" % n)
a.set_xlabel("$x$"); a.set_ylim(0, 1.25); a.legend(loc="upper right", fontsize=9, frameon=False)
b.loglog(ns, 2 / (3 * ns), "o-", color=ACCENT, ms=3.5, lw=1.1, label=r"$\|h_n\|^2$")
b.loglog(ns, 2 * ns, "s-", color=STATEMENT, ms=3.5, lw=1.1, label=r"$\|h_n'\|^2$")
b.set_xlabel("$n$"); b.legend(loc="center right", fontsize=9, frameon=False)
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "sob-tent-norms")
