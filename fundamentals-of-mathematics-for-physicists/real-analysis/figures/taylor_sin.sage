# The Taylor polynomials T_1, T_3, T_5, T_7 of sin x at 0 on [-2 pi, 2 pi]: each adds one term and follows sin x
# on a longer interval. The remainder of T_7 is at most |x|^9/9! (checked below at x = 1, 2, 3).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

x = var("x")
T = {n: taylor(sin(x), x, 0, n) for n in (1, 3, 5, 7)}
for t in (1, 2, 3):
    assert abs(sin(t) - T[7].subs(x=t)).n() <= (t^9 / factorial(9)).n()

xs = [float(-2 * pi + k * 4 * pi / 800) for k in range(801)]
fig, ax = plt.subplots(figsize=(6.8, 3.9))
ax.axhline(0, color=GRID, lw=0.8); ax.axvline(0, color=GRID, lw=0.8)
ax.plot(xs, [float(sin(t)) for t in xs], color=INK, lw=2.0)
cols = {1: ACCENT, 3: EXAMPLE, 5: ORANGE, 7: STATEMENT}
for n, col in cols.items():
    f = fast_callable(T[n], vars=[x], domain=RDF)
    ax.plot(xs, [f(t) for t in xs], color=col, lw=1.2)
ax.text(2.25, 1.7, "$T_1$", color=ACCENT, fontsize=11)
ax.text(-2.95, 1.75, "$T_3$", color=EXAMPLE, fontsize=11)
ax.text(4.15, 1.75, "$T_5$", color=ORANGE, fontsize=11)
ax.text(4.35, -1.85, "$T_7$", color=STATEMENT, fontsize=11)
ax.text(-6.1, 1.15, r"$\sin x$", color=INK, fontsize=11)
ax.set_xlim(-2 * 3.1416, 2 * 3.1416); ax.set_ylim(-2.1, 2.1)
ax.set_xticks([-6, -4, -2, 0, 2, 4, 6]); ax.set_xlabel("$x$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "taylor_sin")

traces = [{"x": xs, "y": [float(sin(t)) for t in xs], "mode": "lines", "name": "sin x", "line": {"color": INK, "width": 2}}]
for n, col in cols.items():
    f = fast_callable(T[n], vars=[x], domain=RDF)
    traces.append({"x": xs, "y": [max(-3.0, min(3.0, f(t))) for t in xs], "mode": "lines", "name": "T_%d" % n,
                   "line": {"color": col, "width": 1.5}})
save_plotly(traces, "taylor_sin", {"xaxis": {"title": "x"}, "yaxis": {"range": [-2.1, 2.1]}})
