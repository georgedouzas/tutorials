# Direction field of the logistic equation y' = y(1 - y): short segments of slope y(1 - y), the constant solutions
# y = 0 and y = 1, and the solutions y = 1/(1 + C e^(-x)) through five points on the axis x = 0.
# Interactive: the same field as Plotly segments with the solution curves.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, C = var("x C")
sol = 1 / (1 + C * exp(-x))
assert bool((diff(sol, x) - sol * (1 - sol)).simplify_full() == 0)

xs = np.linspace(-4, 4, 17); ys = np.linspace(-0.5, 1.5, 11)
def seg(a, b, L=0.32):
    s = b * (1 - b); n = math.hypot(1, s)
    return [a - L / 2 / n, a + L / 2 / n], [b - L / 2 * s / n, b + L / 2 * s / n]
starts = [0.05, 0.25, 0.5, 0.8, 1.3]          # y(0) for the five drawn solutions
curves = []
for y0 in starts:
    c = 1 / y0 - 1                            # 1/(1 + c) = y0
    lo = -4.0 if c >= 0 else max(-4.0, math.log(-c) + 0.05)   # stay left of the pole for y0 > 1
    tt = np.linspace(lo, 4, 400)
    curves.append((tt, 1 / (1 + c * np.exp(-tt))))

fig, ax = plt.subplots(figsize=(6.4, 3.8))
for a in xs:
    for b in ys:
        u, v = seg(a, b)
        ax.plot(u, v, color=MUTED, lw=0.9)
for tt, yy in curves:
    m = (yy > -0.6) & (yy < 1.6)
    ax.plot(tt[m], yy[m], color=ACCENT, lw=1.6)
for c0 in (0, 1):
    ax.plot([-4, 4], [c0, c0], color=STATEMENT, lw=1.8)
ax.set_xlim(-4.2, 4.2); ax.set_ylim(-0.6, 1.6)
ax.set_xlabel("$x$"); ax.set_ylabel("$y$")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "direction_field_logistic")

sx, sy = [], []
for a in xs:
    for b in ys:
        u, v = seg(float(a), float(b))
        sx += u + [None]; sy += v + [None]
traces = [dict(type="scatter", mode="lines", x=sx, y=sy, line=dict(color=MUTED, width=1), name="slopes y(1 - y)", hoverinfo="skip")]
for c0 in (0, 1):
    traces.append(dict(type="scatter", mode="lines", x=[-4, 4], y=[c0, c0], line=dict(color=STATEMENT, width=2.5), name="y = %d" % c0))
for (tt, yy), y0 in zip(curves, starts):
    m = (yy > -0.6) & (yy < 1.6)
    traces.append(dict(type="scatter", mode="lines", x=floats(tt[m]), y=floats(yy[m]), line=dict(color=ACCENT, width=2), name="y(0) = %s" % y0))
save_plotly(traces, "direction_field_logistic", dict(xaxis=dict(range=[-4.2, 4.2], title="x"), yaxis=dict(range=[-0.6, 1.6], title="y")))
