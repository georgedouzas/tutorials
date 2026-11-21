# The polar element (left): the image of [r, r + dr] x [phi, phi + dphi] under the polar map, with sides dr and r dphi.
# The spherical element (right): the image of [r, r + dr] x [theta, theta + dtheta] x [phi, phi + dphi], with sides dr,
# r dtheta and r sin(theta) dphi, drawn on the sphere of radius r. Interactive: the spherical element in 3D.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

rr, th, ph = var("r theta phi")
Js = jacobian([rr*sin(th)*cos(ph), rr*sin(th)*sin(ph), rr*cos(th)], [rr, th, ph]).det().simplify_trig()
assert bool(Js == rr^2*sin(th))

fig = plt.figure(figsize=(9.2, 4.2))
ax = fig.add_subplot(1, 2, 1)
r0, dr, p0, dp = 2.0, 0.5, np.pi/5, np.pi/9
t = np.linspace(0, np.pi/2, 200)
for c in [0.5, 1, 1.5, 2, 2.5, 3]:
    ax.plot(c*np.cos(t), c*np.sin(t), color=GRID, lw=0.7)
for a in np.linspace(0, np.pi/2, 10):
    ax.plot([0, 3.1*np.cos(a)], [0, 3.1*np.sin(a)], color=GRID, lw=0.7)
pp = np.linspace(p0, p0 + dp, 40)
xs = np.concatenate([r0*np.cos(pp), (r0 + dr)*np.cos(pp[::-1])])
ys = np.concatenate([r0*np.sin(pp), (r0 + dr)*np.sin(pp[::-1])])
ax.fill(xs, ys, color=ACCENT, alpha=0.35, lw=1.2, ec=ACCENT)
ax.plot([0, r0*np.cos(p0)], [0, r0*np.sin(p0)], color=MUTED, lw=0.9, ls="--")
ax.text((r0 + dr/2)*np.cos(p0) + 0.05, (r0 + dr/2)*np.sin(p0) - 0.22, "$dr$", color=STATEMENT, fontsize=12, ha="center")
pm = p0 + dp/2
ax.text((r0 + dr + 0.12)*np.cos(pm), (r0 + dr + 0.12)*np.sin(pm), r"$r\,d\varphi$", color=STATEMENT, fontsize=12, va="center")
ax.annotate("", xy=(0.9*np.cos(p0 + dp), 0.9*np.sin(p0 + dp)), xytext=(0.9*np.cos(p0), 0.9*np.sin(p0)),
            arrowprops=dict(arrowstyle="-", color=MUTED, connectionstyle="arc3,rad=0.2"))
ax.text(1.0*np.cos(pm) + 0.05, 1.0*np.sin(pm), r"$d\varphi$", color=MUTED, fontsize=11)
ax.set_aspect("equal"); ax.set_xlim(-0.1, 3.4); ax.set_ylim(-0.1, 3.2); ax.axis("off")
ax.text(3.3, -0.05, "$x$", color=MUTED); ax.text(-0.05, 3.15, "$y$", color=MUTED)
ax.plot([0, 3.25], [0, 0], color=MUTED, lw=0.6); ax.plot([0, 0], [0, 3.1], color=MUTED, lw=0.6)
ax.set_title(r"area $r\,dr\,d\varphi$", fontsize=11, color=INK)

ax3 = fig.add_subplot(1, 2, 2, projection="3d")
def S(r, t, p):
    return np.array([r*np.sin(t)*np.cos(p), r*np.sin(t)*np.sin(p), r*np.cos(t)])
R0, DR, T0, DT, P0, DP = 1.7, 0.7, np.pi/3, np.pi/6, -np.pi/12, np.pi/4
u, v = np.meshgrid(np.linspace(0, np.pi, 30), np.linspace(0, 2*np.pi, 40))
ax3.plot_wireframe(R0*np.sin(u)*np.cos(v), R0*np.sin(u)*np.sin(v), R0*np.cos(u), color=GRID, lw=0.35, rstride=3, cstride=4)
faces = []
n = 8
for (a, b) in [(0, 0), (1, 1)]:
    pass
def face(fun, n=n):
    return [fun(i/n, j/n) for i in range(n + 1) for j in range(n + 1)]
corners = lambda r, t, p: S(r, t, p)
quads = []
def addface(f):
    for i in range(n):
        for j in range(n):
            quads.append([f(i/n, j/n), f((i+1)/n, j/n), f((i+1)/n, (j+1)/n), f(i/n, (j+1)/n)])
addface(lambda a, b: S(R0, T0 + a*DT, P0 + b*DP))
addface(lambda a, b: S(R0 + DR, T0 + a*DT, P0 + b*DP))
addface(lambda a, b: S(R0 + a*DR, T0, P0 + b*DP))
addface(lambda a, b: S(R0 + a*DR, T0 + DT, P0 + b*DP))
addface(lambda a, b: S(R0 + a*DR, T0 + b*DT, P0))
addface(lambda a, b: S(R0 + a*DR, T0 + b*DT, P0 + DP))
ax3.add_collection3d(Poly3DCollection(quads, facecolor=ACCENT, alpha=0.45, edgecolor="none"))
L = np.linspace(0, 1, 30)
edges = [(np.array([S(R0 + a*DR, T0 + DT, P0) for a in L]), STATEMENT, "$dr$", 0.86),
         (np.array([S(R0 + DR, T0 + a*DT, P0) for a in L]), EXAMPLE, r"$r\,d\theta$", 0.78),
         (np.array([S(R0 + DR, T0, P0 + a*DP) for a in L]), EXERCISE, r"$r\sin\theta\,d\varphi$", 0.70)]
for pts, col, lab, yy in edges:
    ax3.plot(*pts.T, color=col, lw=2.6)
    ax3.text2D(0.80, yy, lab, transform=ax3.transAxes, color=col, fontsize=12)
ax3.plot([0, 0], [0, 0], [-2.4, 2.6], color=MUTED, lw=0.8)
ax3.text(0.08, 0, 2.7, "$z$", color=MUTED)
ax3.set_xlim(-2.2, 2.2); ax3.set_ylim(-2.2, 2.2); ax3.set_zlim(-2.2, 2.2)
ax3.set_box_aspect((1, 1, 1)); ax3.view_init(elev=22, azim=-40); ax3.set_axis_off()
ax3.set_title(r"volume $r^2\sin\theta\,dr\,d\theta\,d\varphi$", fontsize=11, color=INK)
fig.tight_layout()
save_matplotlib(fig, "volume_elements")

# Interactive: the six faces of the spherical element and the sphere of radius r.
traces = []
m = 12
def grid(f):
    X = [[float(f(i/m, j/m)[0]) for j in range(m + 1)] for i in range(m + 1)]
    Y = [[float(f(i/m, j/m)[1]) for j in range(m + 1)] for i in range(m + 1)]
    Z = [[float(f(i/m, j/m)[2]) for j in range(m + 1)] for i in range(m + 1)]
    return X, Y, Z
fs = [lambda a, b: S(R0, T0 + a*DT, P0 + b*DP), lambda a, b: S(R0 + DR, T0 + a*DT, P0 + b*DP),
      lambda a, b: S(R0 + a*DR, T0, P0 + b*DP), lambda a, b: S(R0 + a*DR, T0 + DT, P0 + b*DP),
      lambda a, b: S(R0 + a*DR, T0 + b*DT, P0), lambda a, b: S(R0 + a*DR, T0 + b*DT, P0 + DP)]
for k, f in enumerate(fs):
    X, Y, Z = grid(f)
    traces.append(dict(type="surface", x=X, y=Y, z=Z, showscale=False, opacity=0.8, colorscale=[[0, ACCENT], [1, ACCENT]],
                       name="element", showlegend=(k == 0), hoverinfo="skip"))
uu = np.linspace(0, np.pi, 25); vv = np.linspace(0, 2*np.pi, 37)
traces.append(dict(type="surface", x=[[float(R0*np.sin(a)*np.cos(b)) for b in vv] for a in uu],
                   y=[[float(R0*np.sin(a)*np.sin(b)) for b in vv] for a in uu], z=[[float(R0*np.cos(a)) for b in vv] for a in uu],
                   showscale=False, opacity=0.15, colorscale=[[0, MUTED], [1, MUTED]], name="sphere of radius r", showlegend=True, hoverinfo="skip"))
traces.append(dict(type="scatter3d", mode="lines", x=[0, 0], y=[0, 0], z=[-2.6, 2.6], line=dict(color=INK, width=3), name="z-axis"))
save_plotly(traces, "volume_elements", dict(scene=dict(aspectmode="data", xaxis_title="x", yaxis_title="y", zaxis_title="z")))
