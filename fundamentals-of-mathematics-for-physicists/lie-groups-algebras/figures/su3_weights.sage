# Weights of su(3) in the (lambda_3, lambda_8) plane: the triangle of the 3 and the hexagon of roots with the double zero
# weight; the interactive page adds 3bar, 8 and 10 with multiplicities, from Sage's Weyl character ring.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
plane = lambda w: (float(w[0] - w[1]), float((w[0] + w[1] - 2 * w[2]) / sqrt(3)))
A2 = WeylCharacterRing("A2", style="coroots")
def weights(rep):
    out = {}
    for w, m in rep.weight_multiplicities().items():
        v = vector(QQ, w.to_vector()); v = v - sum(v) / 3 * vector(QQ, [1, 1, 1])
        out[plane(v)] = m
    return out
w3 = weights(A2(1, 0)); w8 = weights(A2(1, 1))
assert len(w3) == 3 and w8[(0.0, 0.0)] == 2 and len(w8) == 7
roots = [p for p in w8 if p != (0.0, 0.0)]
assert all(abs(x * x + y * y - 4) < 1e-9 for x, y in roots)
fig, ax = plt.subplots(figsize=(4.4, 4.4))
for x, y in roots:
    ax.annotate("", xy=(x, y), xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=STATEMENT, lw=1.4))
import math
order = sorted(roots, key=lambda p: math.atan2(p[1], p[0]))
ax.plot([p[0] for p in order] + [order[0][0]], [p[1] for p in order] + [order[0][1]], color=STATEMENT, lw=0.6, ls=":")
ax.scatter([p[0] for p in w3], [p[1] for p in w3], marker="s", s=70, color=ACCENT, zorder=3)
tri = sorted(w3, key=lambda p: math.atan2(p[1], p[0]))
ax.plot([p[0] for p in tri] + [tri[0][0]], [p[1] for p in tri] + [tri[0][1]], color=ACCENT, lw=1.0)
ax.scatter([0], [0], s=90, color=INK, zorder=4)
ax.text(0.36, 0.16, r"$2$", fontsize=10, color=INK)
names = {(1.0, round(1 / math.sqrt(3), 6)): r"$u$", (-1.0, round(1 / math.sqrt(3), 6)): r"$d$", (0.0, round(-2 / math.sqrt(3), 6)): r"$s$"}
for x, y in w3:
    lab = names[(round(x, 6), round(y, 6))]
    ax.text(x + 0.12, y + 0.1, lab, fontsize=11, color=ACCENT)
ax.set_xlim(-2.5, 2.5); ax.set_ylim(-2.3, 2.3); ax.set_aspect("equal")
ax.set_xlabel(r"$\lambda_3$"); ax.set_ylabel(r"$\lambda_8$")
for s in ["right", "top"]:
    ax.spines[s].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "su3_weights")
traces = []
for x, y in roots:
    traces.append({"x": [0.0, x], "y": [0.0, y], "mode": "lines", "line": {"color": STATEMENT, "width": 1.0}, "opacity": 0.4,
                   "hoverinfo": "skip", "showlegend": False})
for name, rep, col, sym in [("3", A2(1, 0), ACCENT, "square"), ("3bar", A2(0, 1), EXAMPLE, "diamond"),
                            ("8", A2(1, 1), STATEMENT, "circle"), ("10", A2(3, 0), EXERCISE, "triangle-up")]:
    W = weights(rep)
    pts = sorted(W.items())
    traces.append({"x": [p[0][0] for p in pts], "y": [p[0][1] for p in pts], "mode": "markers", "name": f"{name} (dim {rep.degree()})",
                   "marker": {"color": col, "symbol": sym, "size": [10 + 6 * p[1] for p in pts], "opacity": 0.8, "line": {"color": "white", "width": 1}},
                   "text": [f"{name}: ({p[0][0]:.3f}, {p[0][1]:.3f}), multiplicity {p[1]}" for p in pts], "hoverinfo": "text"})
save_plotly(traces, "su3_weights", {"xaxis": {"title": "lambda_3", "scaleanchor": "y"}, "yaxis": {"title": "lambda_8"}})
