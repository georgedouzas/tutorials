# The Moebius band E(s, t) = ((2 + t cos(s/2)) cos s, (2 + t cos(s/2)) sin s, t sin(s/2)) and the normal E_s x E_t along the core circle, which comes back reversed after one turn.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
def E(s, t): return np.array([(2 + t*np.cos(s/2))*np.cos(s), (2 + t*np.cos(s/2))*np.sin(s), t*np.sin(s/2)])
def N(s):
    Es = np.array([-2*np.sin(s), 2*np.cos(s), 0*s]); Et = np.array([np.cos(s/2)*np.cos(s), np.cos(s/2)*np.sin(s), np.sin(s/2)])
    return np.cross(Es, Et)
fig = plt.figure(figsize=(6, 4.5)); ax = fig.add_subplot(111, projection="3d", computed_zorder=False); ax.view_init(elev=35, azim=-60)
S, T = np.meshgrid(np.linspace(0, 2*np.pi, 120), np.linspace(-1, 1, 12))
ax.plot_surface(*E(S, T), color="#c9d6e6", alpha=0.55, linewidth=0, shade=False, zorder=1)
s = np.linspace(0, 2*np.pi, 300); ax.plot(*E(s, 0*s), color=INK, lw=1.2, zorder=3)
for k in range(9):
    s0 = k*np.pi/4; p = E(s0, 0); n = 0.35*N(s0)
    ax.quiver(*p, *n, color=STATEMENT if k in (0, 8) else ACCENT, lw=1.8, arrow_length_ratio=0.25, zorder=5)
print("normal at s = 0:", N(0.0), " normal at s = 2 pi:", N(2*np.pi))
ax.set_box_aspect((1, 1, 0.45)); ax.set_axis_off()
ax.set_xlim(-2.6, 2.6); ax.set_ylim(-2.6, 2.6); ax.set_zlim(-1.1, 1.1)
save_matplotlib(fig, "mobius_band", raster=True)
# interactive version
s, t = var("s t")
G = parametric_plot3d(((2 + t*cos(s/2))*cos(s), (2 + t*cos(s/2))*sin(s), t*sin(s/2)), (s, 0, 2*pi), (t, -1, 1), color="lightblue", opacity=0.6)
G += parametric_plot3d((2*cos(s), 2*sin(s), 0), (s, 0, 2*pi), color=INK, thickness=2)
for k in range(9):
    s0 = RDF(k*pi/4); p = vector(RDF, E(float(s0), 0.0)); n = vector(RDF, N(float(s0)))
    G += arrow3d(p, p + 0.35*n, color=STATEMENT if k in (0, 8) else ACCENT, width=2)
save_threejs(G, "mobius_band")
