# The Gamma function on the real line: Gamma(x) on [-4.5, 4.6] with its simple poles at 0, -1, -2, ... (dashed) and the
# values Gamma(n + 1) = n! at x = 1, 2, 3, 4; dotted, 1/Gamma(x), which is finite everywhere and vanishes at the poles.
# Interactive: the modulus |Gamma(x + iy)|, clipped at 6, over -4.5 <= x <= 4.5, -2 <= y <= 2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.special import gamma as G, rgamma

fig, ax = plt.subplots(figsize=(6.0, 3.9))
ax.axhline(0, color=GRID, lw=0.7); ax.axvline(0, color=GRID, lw=0.7)
edges = [-4.5, -4, -3, -2, -1, 0, 4.6]
for a, b in zip(edges[:-1], edges[1:]):
    x = np.linspace(a + 1e-3, b - 1e-3, 600)
    y = G(x); y[np.abs(y) > 9] = np.nan
    ax.plot(x, y, color=ACCENT, lw=1.6)
for p in range(-4, 1):
    ax.axvline(p, color=STATEMENT, lw=0.8, ls=(0, (4, 3)))
x = np.linspace(-4.5, 4.6, 900)
ax.plot(x, rgamma(x), color=EXAMPLE, lw=1.3, ls=(0, (1.5, 1.5)))
ns = np.arange(1, 5)
ax.plot(ns, [float(factorial(int(n) - 1)) for n in ns], "o", color=INK, ms=4)
ax.text(3.15, 6.6, r"$\Gamma(x)$", color=ACCENT)
ax.text(2.4, -1.6, r"$1/\Gamma(x)$", color=EXAMPLE)
ax.text(4.05, 5.2, r"$3!$", color=INK, fontsize=10)
ax.text(0.6, -4.6, r"poles at $0, -1, -2, \dots$", color=STATEMENT, fontsize=10)
ax.set_xlim(-4.6, 4.7); ax.set_ylim(-6.5, 8.5)
ax.set_xlabel(r"$x$")
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "gamma_function")

xs = [-4.5 + 9.0 * k / 180 for k in range(181)]
ys = [-2.0 + 4.0 * k / 80 for k in range(81)]
Z = [[min(6.0, float(abs(gamma(CDF(xx, yy))))) if abs(CDF(xx, yy) - round(xx)) > 1e-9 or xx > 0.5 else 6.0
      for xx in xs] for yy in ys]
traces = [{"type": "surface", "x": xs, "y": ys, "z": Z, "colorscale": "Viridis", "showscale": False,
           "name": "|Gamma(x + iy)|"}]
save_plotly(traces, "gamma_function", {"scene": {"xaxis": {"title": "x"}, "yaxis": {"title": "y"},
                                                 "zaxis": {"title": "|Gamma|", "range": [0, 6]}},
                                       "margin": {"l": 0, "r": 0, "t": 0, "b": 0}, "showlegend": False})
