# Two plane vector fields: the source field (x, y), with divergence 2 and no curl (left), and the rotation field
# (-y, x), with no divergence and curl 2 (right). Interactive: both fields, one shown at a time from the legend.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, y, z = var("x y z")
src = vector(SR, [x, y, 0]); rot = vector(SR, [-y, x, 0])
assert src.div([x, y, z]) == 2 and src.curl([x, y, z]) == 0
assert rot.div([x, y, z]) == 0 and rot.curl([x, y, z]) == vector([0, 0, 2])

g = np.linspace(-1.5, 1.5, 9)
X, Y = np.meshgrid(g, g)
fig, axes = plt.subplots(1, 2, figsize=(8.4, 4.0))
for ax, (U, V), col, title in [(axes[0], (X, Y), ACCENT, r"$(x, y)$"), (axes[1], (-Y, X), STATEMENT, r"$(-y, x)$")]:
    ax.quiver(X, Y, U, V, color=col, angles="xy", scale_units="xy", scale=4.5, width=0.006)
    ax.axhline(0, color=GRID, lw=0.8, zorder=0); ax.axvline(0, color=GRID, lw=0.8, zorder=0)
    ax.set_aspect("equal"); ax.set_xlim(-1.9, 1.9); ax.set_ylim(-1.9, 1.9)
    ax.set_xticks([-1, 0, 1]); ax.set_yticks([-1, 0, 1])
    ax.spines[["top", "right"]].set_visible(False)
    ax.set_title(title, fontsize=12, color=INK)
fig.tight_layout()
save_matplotlib(fig, "vector_fields")

# Interactive: arrows drawn as line segments with a small head, one trace per field.
def arrows(F, name, col, visible):
    xs, ys = [], []
    for a in g:
        for b in g:
            u, v = F(a, b); s = 1 / 4.5
            ex, ey = a + s * u, b + s * v
            xs += [float(a), float(ex), None]; ys += [float(b), float(ey), None]
            L = float(np.hypot(u, v))
            if L > 0:
                dx, dy = s * u / (L * s) * 0.07, s * v / (L * s) * 0.07
                for sgn in (1, -1):
                    xs += [float(ex), float(ex - dx * 1.6 + sgn * dy), None]; ys += [float(ey), float(ey - dy * 1.6 - sgn * dx), None]
    return dict(type="scatter", mode="lines", x=xs, y=ys, line=dict(color=col, width=2), name=name,
                visible=(True if visible else "legendonly"), hoverinfo="skip")
traces = [arrows(lambda a, b: (a, b), "source (x, y)", ACCENT, True), arrows(lambda a, b: (-b, a), "rotation (-y, x)", STATEMENT, False)]
save_plotly(traces, "vector_fields", dict(xaxis=dict(range=[-1.9, 1.9], zeroline=True), yaxis=dict(range=[-1.9, 1.9], scaleanchor="x")))
