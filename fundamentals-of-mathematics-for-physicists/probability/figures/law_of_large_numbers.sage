# Left: running averages of five seeded runs of fair coin flips, with 1/2 +- 1/(2 sqrt n) and 1/2 +- 1/sqrt n.
# Right: exact distribution of the standardised sum of n dice, scaled by sigma sqrt n, against the Gaussian density.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

rng = np.random.default_rng(int(2024))
N = 2000
n = np.arange(1, N + 1)
fig, (axl, axr) = plt.subplots(1, 2, figsize=(10.5, 4.2))
traces = []
for r, col in enumerate([ACCENT, EXAMPLE, ORANGE, EXERCISE, "#1f7a8c"]):
    flips = rng.integers(0, 2, N)
    avg = np.cumsum(flips) / n
    axl.plot(n, avg, color=col, lw=1.1)
    traces.append({"x": floats(n), "y": floats(avg), "mode": "lines", "name": "run %d" % (r + 1),
                   "line": {"color": col, "width": 1}})
band1 , band2 = 0.5 / np.sqrt(n), 1.0 / np.sqrt(n)
for s in (1, -1):
    axl.plot(n, 0.5 + s * band1, color=INK, ls="--", lw=1)
    axl.plot(n, 0.5 + s * band2, color=MUTED, ls=":", lw=1)
axl.axhline(0.5, color=STATEMENT, lw=1.2)
axl.set_xscale("log"); axl.set_ylim(0, 1); axl.set_xlim(1, N)
axl.set_xlabel(r"$n$"); axl.set_ylabel(r"$\bar X_n$")
axl.grid(color=GRID, lw=0.5)
traces.append({"x": floats(n), "y": floats(0.5 + band1), "mode": "lines", "name": "1/2 + 1/(2 sqrt n)",
               "line": {"color": INK, "dash": "dash"}})
traces.append({"x": floats(n), "y": floats(0.5 - band1), "mode": "lines", "name": "1/2 - 1/(2 sqrt n)",
               "line": {"color": INK, "dash": "dash"}})
traces.append({"x": [1, N], "y": [0.5, 0.5], "mode": "lines", "name": "1/2", "line": {"color": STATEMENT}})

# exact distributions of sums of n dice by convolution
die = np.ones(6) / 6
sigma = np.sqrt(35 / 12)
dist = np.array([1.0])
cols = {1: ACCENT, 2: EXAMPLE, 5: ORANGE, 20: EXERCISE}
for m in range(1, 21):
    dist = np.convolve(dist, die)
    if m in cols:
        s = np.arange(m, 6 * m + 1)
        z = (s - 3.5 * m) / (sigma * np.sqrt(m))
        axr.plot(z, dist * sigma * np.sqrt(m), "o-", color=cols[m], ms=3, lw=1.1, label=r"$n = %d$" % m)
zz = np.linspace(-4.2, 4.2, 400)
axr.plot(zz, np.exp(-zz**2 / 2) / np.sqrt(2 * np.pi), color=STATEMENT, lw=2.2, label=r"$\mathcal{N}(0, 1)$", zorder=0)
axr.set_xlim(-4.2, 4.2); axr.set_ylim(0, 0.43)
axr.set_xlabel(r"$z$"); axr.set_ylabel(r"$\sigma\sqrt{n}\,\mathbb{P}(S_n = s)$")
axr.legend(frameon=False, loc="upper right", fontsize=9)
axr.grid(color=GRID, lw=0.5)
fig.tight_layout()
save_matplotlib(fig, "law_of_large_numbers")
save_plotly(traces, "law_of_large_numbers", {"xaxis": {"title": "n", "type": "log"}, "yaxis": {"title": "running average", "range": [0, 1]}})
