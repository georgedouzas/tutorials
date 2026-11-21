# The paraboloid z = 1 - x^2 - y^2 over the unit disc with unit normals n = N/|N|, N = (2x, 2y, 1), drawn at points of
# three circles. Interactive: the surface and the normals in 3D.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

r, ph = var("r phi")
P = vector(SR, [r*cos(ph), r*sin(ph), 1 - r^2])
N = diff(P, r).cross_product(diff(P, ph))
assert ((N - r*vector(SR, [2*r*cos(ph), 2*r*sin(ph), 1])).simplify_full()) == 0

R, PH = np.meshgrid(np.linspace(0, 1, 25), np.linspace(-np.pi, np.pi, 49))
Xs, Ys, Zs = R*np.cos(PH), R*np.sin(PH), 1 - R**2
pts = [(rr, a) for rr in (0.0, 0.5, 0.9) for a in (np.linspace(-np.pi, np.pi, 1 if rr == 0 else 9)[:-1] if rr > 0 else [0.0])]
fig = plt.figure(figsize=(5.2, 4.6))
ax = fig.add_subplot(projection="3d")
ax.plot_surface(Xs, Ys, Zs, color=ACCENT, alpha=0.25, lw=0)
ax.plot_wireframe(Xs, Ys, Zs, color=ACCENT, lw=0.3, rstride=6, cstride=4)
L = 0.45
for rr, a in pts:
    x0, y0, z0 = rr*np.cos(a), rr*np.sin(a), 1 - rr**2
    n = np.array([2*x0, 2*y0, 1.0]); n /= np.linalg.norm(n)
    ax.quiver(x0, y0, z0, *(L*n), color=STATEMENT, lw=1.6, arrow_length_ratio=0.25)
ax.set_box_aspect((1, 1, 0.75)); ax.view_init(elev=24, azim=-55); ax.set_axis_off()
ax.text2D(0.78, 0.86, r"$\hat{\mathbf{n}}$", transform=ax.transAxes, color=STATEMENT, fontsize=14)
fig.tight_layout()
save_matplotlib(fig, "surface_normals")

traces = [dict(type="surface", x=Xs.tolist(), y=Ys.tolist(), z=Zs.tolist(), showscale=False, opacity=0.6,
               colorscale=[[0, ACCENT], [1, ACCENT]], name="z = 1 - x^2 - y^2", showlegend=True, hoverinfo="skip")]
xs, ys, zs = [], [], []
for rr, a in pts:
    x0, y0, z0 = rr*np.cos(a), rr*np.sin(a), 1 - rr**2
    n = np.array([2*x0, 2*y0, 1.0]); n /= np.linalg.norm(n)
    xs += [float(x0), float(x0 + L*n[0]), None]; ys += [float(y0), float(y0 + L*n[1]), None]; zs += [float(z0), float(z0 + L*n[2]), None]
traces.append(dict(type="scatter3d", mode="lines", x=xs, y=ys, z=zs, line=dict(color=STATEMENT, width=5), name="unit normals"))
save_plotly(traces, "surface_normals", dict(scene=dict(aspectmode="data", xaxis_title="x", yaxis_title="y", zaxis_title="z")))
