# Pointwise versus uniform convergence. Left: x^n on [0, 1] for n = 1, 3, 10, 50 tends to 0 for x < 1 and to 1 at x = 1;
# every x^n leaves the band |y| < 1/4 around the limit near x = 1, since sup_{[0,1)} x^n = 1. Right: sin(nx)/n on
# [0, 2 pi] for n = 1, 3, 10, tends to 0 uniformly: the graph of sin(10x)/10 stays inside the band |y| <= 1/10.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
assert all(limit(x^k, x=1, dir="-") == 1 for k in [1, 3, 10, 50])
assert max(abs(sin(10*t)/10) for t in srange(0, 2*pi, 0.01)) <= 1/10

fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.0, 3.6))
X = np.linspace(0, 1, 600)
a1.axhspan(-0.25, 0.25, color=EXAMPLE, alpha=0.12, lw=0)
a1.text(0.29, 0.185, r"band $|y| < 1/4$", color=EXAMPLE, fontsize=10)
cols = [ACCENT, EXERCISE, ORANGE, STATEMENT]
for k, c in zip([1, 3, 10, 50], cols):
    a1.plot(X, X**k, color=c, lw=1.5)
    xl = 0.62 if k > 1 else 0.5
    xl = {1: 0.42, 3: 0.72, 10: 0.86, 50: 0.955}[k]
    a1.text(xl - 0.02, xl**k + 0.05, "$x^{%d}$" % k, color=c, fontsize=10, ha="right")
a1.plot([0, 1], [0, 0], color=INK, lw=2.2)
a1.scatter([1], [1], color=INK, s=22, zorder=5)
a1.text(0.55, -0.12, "limit $0$ on $[0, 1)$, $1$ at $x = 1$", color=INK, fontsize=10, ha="center")
a1.set_xlim(0, 1.03); a1.set_ylim(-0.2, 1.08); a1.set_xlabel("$x$")
a1.spines[["top", "right"]].set_visible(False)
a1.set_title("not uniform", fontsize=11, color=INK)

X = np.linspace(0, 2*np.pi, 1200)
a2.axhspan(-0.1, 0.1, color=EXAMPLE, alpha=0.15, lw=0)
for k, c in zip([1, 3, 10], [ACCENT, EXERCISE, STATEMENT]):
    a2.plot(X, np.sin(k*X)/k, color=c, lw=1.4)
a2.text(np.pi/2, 1.04, r"$\sin x$", color=ACCENT, fontsize=10, ha="center")
a2.text(3.95, 0.55, r"$\sin(3x)/3$", color=EXERCISE, fontsize=10, ha="center")
a2.text(1.6, -0.62, r"$\sin(10x)/10$ stays in $|y| \leq 1/10$", color=STATEMENT, fontsize=10, ha="center")
a2.axhline(0, color=INK, lw=1.0)
a2.set_xlim(0, 2*np.pi); a2.set_ylim(-1.1, 1.2); a2.set_xlabel("$x$")
a2.spines[["top", "right"]].set_visible(False)
a2.set_title("uniform", fontsize=11, color=INK)
fig.tight_layout()
save_matplotlib(fig, "uniform_convergence")

Xs = [i/400 for i in range(401)]
traces = [dict(x=Xs, y=[t**k for t in Xs], mode="lines", name="x^%d" % k) for k in [1, 2, 3, 5, 10, 20, 50, 100]]
traces.append(dict(x=[0, 0.999, 1], y=[0, 0, 1], mode="lines+markers", name="pointwise limit", line=dict(color=INK, width=3)))
save_plotly(traces, "uniform_convergence", dict(xaxis=dict(title="x"), yaxis=dict(title="y")))
