# The potential x^2/2 and the Hermite functions h_n, n = 0..4, drawn at the heights n + 1/2 of their energies.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from numpy.polynomial.hermite import hermval
from math import factorial, pi, sqrt

xs = np.linspace(-4.2, 4.2, 801)
def h(n):
    c = np.zeros(n + 1); c[n] = 1
    return hermval(xs, c) * np.exp(-xs ** 2 / 2) / sqrt(2 ** n * factorial(n) * sqrt(pi))
fig, ax = plt.subplots(figsize=(6.2, 4.2))
ax.plot(xs, xs ** 2 / 2, color=MUTED, lw=1.4)
for n in range(5):
    E = n + 0.5
    ax.plot([-4.2, 4.2], [E, E], color=GRID, lw=0.8, zorder=0)
    ax.plot(xs, E + 0.4 * h(n), color=SERIES[n % 5], lw=1.6)
    ax.text(4.5, E, r"$n = %d$" % n, fontsize=9, va="center", color=SERIES[n % 5])
ax.set_xlabel(r"$x$"); ax.set_ylim(0, 5.6); ax.set_xlim(-4.2, 5.4)
ax.set_yticks([n + 0.5 for n in range(5)]); ax.set_yticklabels([r"$%s$" % (r"\frac{%d}{2}" % (2 * n + 1)) for n in range(5)])
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "unb-oscillator-levels")
