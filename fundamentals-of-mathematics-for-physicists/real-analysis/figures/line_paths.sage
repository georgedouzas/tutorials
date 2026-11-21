# The rotation field (-y, x) and two paths from (1, 0) to (0, 1): the quarter circle, with work pi/2, and the segment,
# with work 1. Interactive: the same picture.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

t = var("t")
F = lambda p: vector(SR, [-p[1], p[0]])
arc = vector(SR, [cos(t), sin(t)]); seg = vector(SR, [1 - t, t])
w_arc = integrate(F(arc) * diff(arc, t), t, 0, pi / 2); w_seg = integrate(F(seg) * diff(seg, t), t, 0, 1)
assert w_arc == pi / 2 and w_seg == 1

g = np.linspace(-0.25, 1.35, 9)
X, Y = np.meshgrid(g, g)
fig, ax = plt.subplots(figsize=(4.6, 4.4))
ax.quiver(X, Y, -Y, X, color=GRID, angles="xy", scale_units="xy", scale=6, width=0.005)
s = np.linspace(0, np.pi / 2, 100)
ax.plot(np.cos(s), np.sin(s), color=ACCENT, lw=2.2)
ax.plot([1, 0], [0, 1], color=STATEMENT, lw=2.2)
ax.annotate("", xy=(np.cos(0.85), np.sin(0.85)), xytext=(np.cos(0.75), np.sin(0.75)), arrowprops=dict(arrowstyle="-|>", color=ACCENT, lw=1.8))
ax.annotate("", xy=(0.45, 0.55), xytext=(0.55, 0.45), arrowprops=dict(arrowstyle="-|>", color=STATEMENT, lw=1.8))
ax.text(0.86, 0.86, r"work $\pi/2$", color=ACCENT, fontsize=11)
ax.text(0.12, 0.38, r"work $1$", color=STATEMENT, fontsize=11)
ax.plot([1, 0], [0, 1], "o", color=INK, ms=4)
ax.text(1.03, -0.1, "$(1, 0)$", fontsize=10, color=INK); ax.text(-0.22, 1.05, "$(0, 1)$", fontsize=10, color=INK)
ax.set_aspect("equal"); ax.set_xlim(-0.35, 1.45); ax.set_ylim(-0.35, 1.45)
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "line_paths")

xs, ys = [], []
for a in g:
    for b in g:
        xs += [float(a), float(a - b / 6), None]; ys += [float(b), float(b + a / 6), None]
traces = [dict(type="scatter", mode="lines", x=xs, y=ys, line=dict(color=MUTED, width=1), name="field (-y, x)", hoverinfo="skip"),
          dict(type="scatter", mode="lines", x=floats(np.cos(s)), y=floats(np.sin(s)), line=dict(color=ACCENT, width=3), name="quarter circle: work pi/2"),
          dict(type="scatter", mode="lines", x=[1, 0], y=[0, 1], line=dict(color=STATEMENT, width=3), name="segment: work 1")]
save_plotly(traces, "line_paths", dict(xaxis=dict(range=[-0.35, 1.45]), yaxis=dict(range=[-0.35, 1.45], scaleanchor="x")))
