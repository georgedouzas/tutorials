# Geodesics of the unit sphere from one point (blue) integrated from the geodesic equation, and the parallel through the point (red).
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
th0, ph0 = np.pi/3, 0.0
def rhs(t, y):
    th, ph, dth, dph = y
    return [dth, dph, np.sin(th)*np.cos(th)*dph**2, -2*np.cos(th)/np.sin(th)*dth*dph]
def E(th, ph): return np.array([np.sin(th)*np.cos(ph), np.sin(th)*np.sin(ph), np.cos(th)])
curves = []
for beta in np.linspace(0, 2*np.pi, 10, endpoint=False):
    y0 = [th0, ph0, np.cos(beta), np.sin(beta)/np.sin(th0)]
    sol = solve_ivp(rhs, (0, 2.2), y0, max_step=0.01, rtol=1e-9, atol=1e-12)
    curves.append(E(sol.y[0], sol.y[1]))
t = np.linspace(0, 2*np.pi, 300); par = E(th0 + 0*t, t)
fig = plt.figure(figsize=(5, 5)); ax = fig.add_subplot(111, projection="3d", computed_zorder=False); ax.view_init(elev=25, azim=20)
T, P = np.meshgrid(np.linspace(0, np.pi, 40), np.linspace(0, 2*np.pi, 80))
ax.plot_surface(*E(T, P), color="#c9d6e6", alpha=0.3, linewidth=0, shade=False, zorder=1)
for c in curves: ax.plot(*c, color=ACCENT, lw=1.4, zorder=4)
ax.plot(*par, color=STATEMENT, lw=1.8, zorder=5); ax.scatter(*E(th0, ph0), color=INK, s=20, zorder=6)
ax.set_box_aspect((1, 1, 1)); ax.set_axis_off()
for f in (ax.set_xlim, ax.set_ylim, ax.set_zlim): f(-0.9, 0.9)
save_matplotlib(fig, "geodesics_sphere", raster=True)
u, v = var("u v")
G = parametric_plot3d((sin(u)*cos(v), sin(u)*sin(v), cos(u)), (u, 0, pi), (v, 0, 2*pi), color="lightblue", opacity=0.5)
for c in curves: G += line3d(list(zip(*[map(float, row) for row in c])), color=ACCENT, thickness=2)
G += line3d(list(zip(*[map(float, row) for row in par])), color=STATEMENT, thickness=3)
G += point3d(tuple(map(float, E(th0, ph0))), color=INK, size=12)
save_threejs(G, "geodesics_sphere")
