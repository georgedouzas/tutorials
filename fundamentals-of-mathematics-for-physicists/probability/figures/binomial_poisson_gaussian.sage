# Bin(n, 1/2) for n = 4, 16, 64 (top) and Poisson(lambda) for lambda = 1, 4, 16 (bottom),
# each with the Gaussian density of the same mean and variance; plus an interactive version.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from math import comb, exp, factorial, sqrt, pi

def gauss(x, m, v):
    return np.exp(-(x - m)**2 / (2 * v)) / np.sqrt(2 * np.pi * v)

fig, axes = plt.subplots(2, 3, figsize=(10.5, 5.6))
traces = []
for j, n in enumerate([4, 16, 64]):
    ax = axes[0, j]
    k = np.arange(n + 1)
    pk = np.array([comb(n, int(i)) / 2**n for i in k])
    m, v = n / 2, n / 4
    lo, hi = max(0, int(m - 4.5 * sqrt(v))), min(n, int(m + 4.5 * sqrt(v)) + 1)
    ax.bar(k[lo:hi + 1], pk[lo:hi + 1], width=0.8, color=ACCENT, alpha=0.85)
    xs = np.linspace(lo - 0.5, hi + 0.5, 400)
    ax.plot(xs, gauss(xs, m, v), color=STATEMENT, lw=1.6)
    ax.set_title(r"$\mathrm{Bin}(%d, 1/2)$" % n, fontsize=11)
    ax.grid(color=GRID, lw=0.5)
    traces.append({"x": [float(i) for i in k], "y": [float(p) for p in pk], "type": "bar", "name": "Bin(%d, 1/2)" % n,
                   "visible": True if n == 16 else "legendonly"})
    traces.append({"x": [float(x) for x in xs], "y": [float(y) for y in gauss(xs, m, v)], "mode": "lines",
                   "name": "Gaussian, mean %g, variance %g" % (m, v), "line": {"color": STATEMENT},
                   "visible": True if n == 16 else "legendonly"})
for j, lam in enumerate([1, 4, 16]):
    ax = axes[1, j]
    kmax = int(lam + 5 * sqrt(lam)) + 2
    k = np.arange(kmax + 1)
    pk = np.array([exp(-lam) * lam**int(i) / factorial(int(i)) for i in k])
    ax.bar(k, pk, width=0.8, color=EXAMPLE, alpha=0.85)
    xs = np.linspace(-0.5, kmax + 0.5, 400)
    ax.plot(xs, gauss(xs, lam, lam), color=STATEMENT, lw=1.6)
    ax.set_title(r"$\mathrm{Poisson}(%d)$" % lam, fontsize=11)
    ax.set_xlabel(r"$k$")
    ax.grid(color=GRID, lw=0.5)
    traces.append({"x": [float(i) for i in k], "y": [float(p) for p in pk], "type": "bar", "name": "Poisson(%d)" % lam,
                   "visible": "legendonly"})
    traces.append({"x": [float(x) for x in xs], "y": [float(y) for y in gauss(xs, lam, lam)], "mode": "lines",
                   "name": "Gaussian, mean %d, variance %d" % (lam, lam), "line": {"color": ORANGE}, "visible": "legendonly"})
fig.tight_layout()
save_matplotlib(fig, "binomial_poisson_gaussian")
save_plotly(traces, "binomial_poisson_gaussian", {"xaxis": {"title": "k"}, "yaxis": {"title": "probability"}, "barmode": "overlay"})
