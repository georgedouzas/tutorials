# Open and closed sets in the plane: in the open unit disc every point has a ball around it inside the disc, the
# radius shrinking towards the edge; in the closed unit disc a point of the edge has no such ball. Static figure and
# an interactive Plotly version.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import pi, cos, sin, hypot

p, q = (-0.25, 0.15), (0.55, 0.55)            # interior points of the open disc
ep, eq = 0.6, 1 - hypot(*q) - 0.06              # radii of balls that fit: 1 - |x| bounds them
b, eb = (cos(pi / 4), sin(pi / 4)), 0.3         # a point of the edge, and a ball around it
assert hypot(*p) + ep < 1 and hypot(*q) + eq < 1 and abs(hypot(*b) - 1) < 1e-12
assert hypot(b[0] * 1.2, b[1] * 1.2) < 1 + eb and 1.2 > 1   # the ball around b holds (1.2 b), outside the disc

T = [2 * pi * k / 200 for k in range(201)]
fig, axs = plt.subplots(1, 2, figsize=(8.4, 4.2))
for ax, closed in zip(axs, (False, True)):
    ax.fill([cos(t) for t in T], [sin(t) for t in T], color=ACCENT, alpha=0.12, lw=0)
    ax.plot([cos(t) for t in T], [sin(t) for t in T], color=ACCENT, lw=1.6, ls="-" if closed else (0, (4, 3)))
    ax.set_xlim(-1.25, 1.45); ax.set_ylim(-1.3, 1.4); ax.set_aspect("equal"); ax.axis("off")
ax = axs[0]
for c, e, lab, off in ((p, ep, r"$B_\varepsilon(p)$", (-0.05, -0.5)), (q, eq, "", (0, 0))):
    ax.plot([c[0] + e * cos(t) for t in T], [c[1] + e * sin(t) for t in T], color=EXAMPLE, lw=1.5)
    ax.plot(*c, "o", color=INK, ms=4)
    if lab:
        ax.text(c[0] + off[0], c[1] + off[1], lab, color=EXAMPLE, ha="center", fontsize=12)
ax.text(p[0] + 0.07, p[1] + 0.05, "$p$", fontsize=12)
ax.text(q[0] - 0.3, q[1] - 0.05, "$q$", fontsize=12)
ax.text(0, -1.25, r"open disc $u^2 + v^2 < 1$", color=ACCENT, ha="center", fontsize=12)
ax = axs[1]
ax.plot([b[0] + eb * cos(t) for t in T], [b[1] + eb * sin(t) for t in T], color=STATEMENT, lw=1.5)
ax.plot(*b, "o", color=INK, ms=4)
ax.text(b[0] - 0.12, b[1] - 0.2, "$b$", fontsize=12)
ax.text(b[0] + 0.05, b[1] + 0.36, "sticks out", color=STATEMENT, ha="center", fontsize=11)
ax.text(0, -1.25, r"closed disc $u^2 + v^2 \leq 1$", color=ACCENT, ha="center", fontsize=12)
save_matplotlib(fig, "open_sets")

# Interactive version: the edge of the disc, the balls around p and q (inside) and around b (sticking out).
circ = lambda c, e: dict(x=[c[0] + e * cos(t) for t in T], y=[c[1] + e * sin(t) for t in T])
traces = [dict(type="scatter", mode="lines", line=dict(color=ACCENT, width=2), fill="toself",
               fillcolor="rgba(29,91,153,0.12)", name="unit disc, edge u^2 + v^2 = 1", **circ((0, 0), 1)),
          dict(type="scatter", mode="lines", line=dict(color=EXAMPLE, width=2), name="ball around p, inside", **circ(p, ep)),
          dict(type="scatter", mode="lines", line=dict(color=EXAMPLE, width=2, dash="dot"), name="ball around q, inside", **circ(q, eq)),
          dict(type="scatter", mode="lines", line=dict(color=STATEMENT, width=2), name="ball around the edge point b", **circ(b, eb)),
          dict(type="scatter", mode="markers+text", x=[p[0], q[0], b[0]], y=[p[1], q[1], b[1]], text=["p", "q", "b"],
               textposition="top right", marker=dict(color=INK, size=7), name="points")]
save_plotly(traces, "open_sets", dict(xaxis=dict(scaleanchor="y", range=[-1.3, 1.5]), yaxis=dict(range=[-1.3, 1.4])))
