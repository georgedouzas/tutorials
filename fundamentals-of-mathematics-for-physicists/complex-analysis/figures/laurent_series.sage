# Laurent series of f(z) = 1/((z - 1)(z - 2)). Left: the three regions |z| < 1, 1 < |z| < 2 and |z| > 2 on which f
# has three different expansions, with the poles 1 and 2 and the point z = 1.5i. Right: the error |S_N(z) - f(z)| of
# the partial sums S_N of the annulus expansion at z = 1.5i. Interactive: |f| and |S_N| on the circle |z| = 1.5.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

def f(z):
    return 1 / ((z - 1) * (z - 2))

def S(z, N):
    # annulus expansion on 1 < |z| < 2: -sum_{n>=0} z^n/2^(n+1) - sum_{n>=1} z^(-n), truncated at N terms each
    return -sum(z**n / 2**(n + 1) for n in range(N + 1)) - sum(z**(-n) for n in range(1, N + 1))

fig, (ax, bx) = plt.subplots(1, 2, figsize=(8.6, 3.8), gridspec_kw={"width_ratios": [1, 1.15]})
t = np.linspace(0, 2 * np.pi, 400)
ax.add_patch(plt.Circle((0, 0), 2.6, color=ORANGE, alpha=0.10, lw=0))
ax.add_patch(plt.Circle((0, 0), 2, color=EXAMPLE, alpha=0.16, lw=0))
ax.add_patch(plt.Circle((0, 0), 1, color="white", alpha=1, lw=0))
ax.add_patch(plt.Circle((0, 0), 1, color=ACCENT, alpha=0.16, lw=0))
ax.plot(np.cos(t), np.sin(t), color=ACCENT, lw=1.3)
ax.plot(2 * np.cos(t), 2 * np.sin(t), color=EXAMPLE, lw=1.3)
ax.plot([1, 2], [0, 0], "x", color=STATEMENT, ms=8, mew=2)
ax.text(1.1, 0.12, r"$1$", color=STATEMENT); ax.text(2.1, 0.12, r"$2$", color=STATEMENT)
ax.plot([0], [1.5], "o", color=INK, ms=4); ax.text(0.12, 1.52, r"$1.5i$", color=INK)
ax.text(-0.5, 0.05, r"$|z| < 1$", color=ACCENT, fontsize=10)
ax.text(-1.05, -1.5, r"$1 < |z| < 2$", color=EXAMPLE, fontsize=10)
ax.text(-1.0, 2.15, r"$|z| > 2$", color=ORANGE, fontsize=10)
ax.set_xlim(-2.7, 2.7); ax.set_ylim(-2.7, 2.7); ax.set_aspect("equal"); ax.axis("off")

z0 = 1.5j
Ns = np.arange(1, 25)
err = [abs(S(z0, int(N)) - f(z0)) for N in Ns]
bx.semilogy(Ns, err, "o-", color=EXAMPLE, ms=4, lw=1.2)
bx.set_xlabel(r"$N$"); bx.set_ylabel(r"$|S_N(1.5i) - f(1.5i)|$")
bx.spines["top"].set_visible(False); bx.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "laurent_series")

th = [2 * float(pi) * k / 360 for k in range(361)]
zs = [1.5 * complex(np.cos(s), np.sin(s)) for s in th]
traces = [{"x": th, "y": [float(abs(f(z))) for z in zs], "mode": "lines", "line": {"color": INK, "width": 3},
           "name": "|f(1.5 e^(i theta))|"}]
for N, c in zip((1, 2, 4, 8), SERIES):
    traces.append({"x": th, "y": [float(abs(S(z, N))) for z in zs], "mode": "lines", "line": {"color": c},
                   "name": "|S_%d|" % N})
save_plotly(traces, "laurent_series", {"xaxis": {"title": "theta"}, "yaxis": {"title": "modulus"},
                                       "legend": {"orientation": "h"}, "margin": {"l": 50, "r": 20, "t": 30, "b": 50}})
