# Heat trace Z(t) = sum_n e^{-t n^2} of the unit circle. Left: Z(t) against sqrt(pi/t) and the constant 1 (zero mode).
# Right: Z(t) - sqrt(pi/t) on a log scale against 2 sqrt(pi/t) e^{-pi^2/t} (first image term of Poisson summation).
# Interactive: the left panel.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from mpmath import mp, mpf, exp as mexp, sqrt as msqrt, pi as mpi
mp.dps = 40

def Z(t):
    t = mpf(t)
    return sum(mexp(-t * n * n) for n in range(-200, 201))

ts = np.linspace(0.05, 5, 300)
Zs = np.array([float(Z(t)) for t in ts])
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.6, 3.6))
a1.plot(ts, Zs, color=ACCENT, lw=1.8, label=r"$Z(t)$")
a1.plot(ts, np.sqrt(np.pi / ts), color=STATEMENT, lw=1.2, ls="--", label=r"$\sqrt{\pi/t}$")
a1.axhline(1, color=EXAMPLE, lw=1.2, ls=":", label=r"$1$")
a1.set_ylim(0, 8); a1.set_xlabel(r"$t$"); a1.legend(frameon=False)
t2 = np.linspace(0.4, 5, 200)
diff = [float(Z(t) - msqrt(mpi / t)) for t in t2]
first = [float(2 * msqrt(mpi / t) * mexp(-mpi**2 / t)) for t in t2]
a2.semilogy(t2, diff, color=ACCENT, lw=1.8, label=r"$Z(t) - \sqrt{\pi/t}$")
a2.semilogy(t2, first, color=STATEMENT, lw=1.2, ls="--", label=r"$2\sqrt{\pi/t}\,e^{-\pi^2/t}$")
a2.set_xlabel(r"$t$"); a2.legend(frameon=False, loc="lower right")
for a in (a1, a2):
    a.spines["top"].set_visible(False); a.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "heat_trace_circle")
traces = [{"x": floats(ts), "y": floats(Zs), "mode": "lines", "name": "Z(t)"},
          {"x": floats(ts), "y": floats(np.sqrt(np.pi / ts)), "mode": "lines", "name": "sqrt(pi/t)", "line": {"dash": "dash"}},
          {"x": floats(ts), "y": [1.0] * len(ts), "mode": "lines", "name": "1", "line": {"dash": "dot"}}]
save_plotly(traces, "heat_trace_circle", {"xaxis": {"title": "t"}, "yaxis": {"range": [0, 8]}})
