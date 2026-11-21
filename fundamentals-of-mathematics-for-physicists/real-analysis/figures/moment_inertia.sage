# The moment of inertia of a uniform ball of radius a about the z-axis: the points at radius r and polar angle theta form a
# ring at distance r sin(theta) from the axis. The integral of (r sin theta)^2 r^2 sin(theta) gives I = (2/5) M a^2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

r, th, ph, a, rho = var("r theta phi a rho")
assume(a > 0)
I = integrate(integrate(integrate(rho*(r*sin(th))^2*r^2*sin(th), r, 0, a), th, 0, pi), ph, 0, 2*pi)
M = 4/3*pi*a^3*rho
assert bool(I == 2/5*M*a^2)

A, R0, T0 = 1.0, 0.7, np.pi/3.2
fig = plt.figure(figsize=(5.2, 5.0))
ax = fig.add_subplot(projection="3d")
u, v = np.meshgrid(np.linspace(0, np.pi, 25), np.linspace(0, 2*np.pi, 37))
ax.plot_wireframe(A*np.sin(u)*np.cos(v), A*np.sin(u)*np.sin(v), A*np.cos(u), color=GRID, lw=0.35, rstride=2, cstride=3)
t = np.linspace(0, 2*np.pi, 200)
rs, zs = R0*np.sin(T0), R0*np.cos(T0)
ax.plot(rs*np.cos(t), rs*np.sin(t), np.full_like(t, zs), color=STATEMENT, lw=2.0)
ax.plot([0, 0], [0, 0], [-1.35, 1.45], color=INK, lw=1.4)
ax.quiver(0, 0, 1.25, 0, 0, 0.2, color=INK, arrow_length_ratio=0.5)
p = np.array([rs, 0, zs])
ax.plot([0, p[0]], [0, 0], [0, p[2]], color=ACCENT, lw=1.3)
ax.plot([0, p[0]], [0, 0], [p[2], p[2]], color=EXAMPLE, lw=1.6, ls="--")
ax.scatter([p[0]], [0], [p[2]], color=STATEMENT, s=18)
ax.text(p[0]/2 + 0.02, 0, p[2]/2 - 0.12, "$r$", color=ACCENT, fontsize=12)
ax.text(p[0] + 0.12, 0, p[2] + 0.12, r"$r\sin\theta$", color=EXAMPLE, fontsize=12)
tt = np.linspace(0, T0, 20)
ax.plot(0.25*np.sin(tt), 0*tt, 0.25*np.cos(tt), color=MUTED, lw=1.0)
ax.text(0.05, 0, 0.1, r"$\theta$", color=MUTED, fontsize=11)
ax.text(0.05, 0, 1.5, "$z$", color=INK, fontsize=12)
ax.text(0.75, 0.55, -0.85, "$a$", color=MUTED, fontsize=12)
ax.set_xlim(-1, 1); ax.set_ylim(-1, 1); ax.set_zlim(-1, 1); ax.set_box_aspect((1, 1, 1))
ax.view_init(elev=14, azim=-72); ax.set_axis_off()
fig.tight_layout()
save_matplotlib(fig, "moment_inertia")

# Interactive: the ball, the axis and three rings at different (r, theta).
uu = np.linspace(0, np.pi, 25); vv = np.linspace(0, 2*np.pi, 37)
traces = [dict(type="surface", x=[[float(np.sin(q)*np.cos(w)) for w in vv] for q in uu],
               y=[[float(np.sin(q)*np.sin(w)) for w in vv] for q in uu], z=[[float(np.cos(q)) for w in vv] for q in uu],
               showscale=False, opacity=0.18, colorscale=[[0, ACCENT], [1, ACCENT]], name="ball of radius a", showlegend=True, hoverinfo="skip"),
          dict(type="scatter3d", mode="lines", x=[0, 0], y=[0, 0], z=[-1.4, 1.4], line=dict(color=INK, width=5), name="axis")]
for (rr, tq, col) in [(0.7, np.pi/3.2, STATEMENT), (0.95, np.pi/2, ORANGE), (0.5, 3*np.pi/4, EXERCISE)]:
    traces.append(dict(type="scatter3d", mode="lines", x=floats(rr*np.sin(tq)*np.cos(t)), y=floats(rr*np.sin(tq)*np.sin(t)),
                       z=[float(rr*np.cos(tq))]*len(t), line=dict(color=col, width=5),
                       name="ring r=%.2f, distance r sin(theta)=%.2f" % (rr, rr*np.sin(tq))))
save_plotly(traces, "moment_inertia", dict(scene=dict(aspectmode="data", xaxis_title="x", yaxis_title="y", zaxis_title="z")))
