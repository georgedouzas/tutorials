# The graph of f(x, y) = x^2 + y^2 near a = (1, 1/2) and its tangent plane z = f(a) + grad f(a) . (x - a)
# = 5/4 + 2(x - 1) + (y - 1/2); the gap between them is exactly |x - a|^2. Static view (matplotlib 3D) and an
# interactive Plotly version.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

var("x y")
f = x^2 + y^2
a = vector(QQ, [1, 1/2])
grad = vector([diff(f, x), diff(f, y)]).subs(x=a[0], y=a[1])
plane = f.subs(x=a[0], y=a[1]) + grad * (vector([x, y]) - a)
assert grad == vector([2, 1]) and bool((f - plane - ((x - 1)^2 + (y - 1/2)^2)).expand() == 0)

F = fast_callable(f, vars=[x, y], domain=RDF)
P = fast_callable(plane, vars=[x, y], domain=RDF)
xs, ys = np.linspace(-0.6, 2.0, 40), np.linspace(-1.1, 1.6, 40)
X, Y = np.meshgrid(xs, ys)
Z = np.vectorize(F)(X, Y)
xp, yp = np.linspace(0.3, 1.7, 2), np.linspace(-0.2, 1.2, 2)
XP, YP = np.meshgrid(xp, yp)
ZP = np.vectorize(P)(XP, YP)

fig = plt.figure(figsize=(6, 4.6))
ax = fig.add_subplot(projection="3d")
ax.plot_surface(X, Y, Z, color=ACCENT, alpha=0.35, linewidth=0, rstride=1, cstride=1)
ax.plot_wireframe(X, Y, Z, color=ACCENT, linewidth=0.3, rstride=4, cstride=4)
ax.plot_surface(XP, YP, ZP, color=STATEMENT, alpha=0.45, linewidth=0)
fa = float(f.subs(x=a[0], y=a[1]))
ax.scatter([1], [0.5], [fa], color=INK, s=18, depthshade=False)
ax.plot([1, 1.1], [0.5, 0.5], [fa, fa + 1.2], color=INK, lw=0.7)
ax.text(1.1, 0.5, fa + 1.3, r"$(\mathbf{a}, f(\mathbf{a}))$", color=INK, fontsize=11)
ax.set_xlabel("$x$"); ax.set_ylabel("$y$"); ax.set_zlabel("$z$")
ax.view_init(elev=22, azim=-62)
for axis in (ax.xaxis, ax.yaxis, ax.zaxis):
    axis.pane.fill = False
save_matplotlib(fig, "tangent_plane")

surf = dict(type="surface", x=floats(xs), y=floats(ys), z=[floats(row) for row in Z], name="graph of f",
            showscale=False, opacity=0.7, colorscale=[[0, ACCENT], [1, ACCENT]], hovertemplate="graph z = x^2 + y^2<extra></extra>")
xp2, yp2 = np.linspace(0.3, 1.7, 8), np.linspace(-0.2, 1.2, 8)
ZP2 = [[float(P(u, v)) for u in xp2] for v in yp2]
pl = dict(type="surface", x=floats(xp2), y=floats(yp2), z=ZP2, name="tangent plane", showscale=False, opacity=0.7,
          colorscale=[[0, STATEMENT], [1, STATEMENT]], hovertemplate="tangent plane<extra></extra>")
pt = dict(type="scatter3d", mode="markers", x=[1.0], y=[0.5], z=[fa], marker=dict(color=INK, size=4), name="(a, f(a))")
save_plotly([surf, pl, pt], "tangent_plane", dict(scene=dict(xaxis_title="x", yaxis_title="y", zaxis_title="z")))
