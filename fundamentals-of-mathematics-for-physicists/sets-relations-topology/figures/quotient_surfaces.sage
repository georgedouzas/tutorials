# The torus and the Moebius band as images of the square: (u, v) -> ((2 + cos v) cos u, (2 + cos v) sin u, sin v)
# on [0, 2 pi]^2 is constant on the classes of the torus gluing; (u, s) -> ((2 + s cos(u/2)) cos u,
# (2 + s cos(u/2)) sin u, s sin(u/2)) on [0, 2 pi] x [-0.7, 0.7] identifies (0, s) with (2 pi, -s). Static figure
# and an interactive Plotly version.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

u, v, s = var("u v s")
torus = vector([(2 + cos(v)) * cos(u), (2 + cos(v)) * sin(u), sin(v)])
moeb = vector([(2 + s * cos(u / 2)) * cos(u), (2 + s * cos(u / 2)) * sin(u), s * sin(u / 2)])
# the gluings: torus edges u = 0 ~ u = 2 pi and v = 0 ~ v = 2 pi; Moebius (0, s) ~ (2 pi, -s)
assert bool((torus.subs(u=0) - torus.subs(u=2 * pi)).simplify_full() == 0)
assert bool((torus.subs(v=0) - torus.subs(v=2 * pi)).simplify_full() == 0)
assert bool((moeb.subs(u=0) - moeb.subs(u=2 * pi, s=-s)).simplify_full() == 0)

U = np.linspace(0, 2 * np.pi, 61)
V = np.linspace(0, 2 * np.pi, 31)
S = np.linspace(-0.7, 0.7, 9)
Ut, Vt = np.meshgrid(U, V)
TX, TY, TZ = (2 + np.cos(Vt)) * np.cos(Ut), (2 + np.cos(Vt)) * np.sin(Ut), np.sin(Vt)
Um, Sm = np.meshgrid(U, S)
MX, MY, MZ = (2 + Sm * np.cos(Um / 2)) * np.cos(Um), (2 + Sm * np.cos(Um / 2)) * np.sin(Um), Sm * np.sin(Um / 2)

fig = plt.figure(figsize=(9.0, 3.8))
for i, (Xs, Ys, Zs, col, name) in enumerate(((TX, TY, TZ, ACCENT, "torus $T^2$"), (MX, MY, MZ, STATEMENT, "Möbius band"))):
    ax = fig.add_subplot(1, 2, i + 1, projection="3d")
    ax.plot_surface(Xs, Ys, Zs, color=col, alpha=0.30, linewidth=0, shade=True)
    ax.plot_wireframe(Xs, Ys, Zs, color=col, alpha=0.45, linewidth=0.4, rstride=2, cstride=3)
    if i == 1:                                  # the single boundary curve s = +-0.7
        W = np.linspace(0, 4 * np.pi, 241)
        ax.plot((2 + 0.7 * np.cos(W / 2)) * np.cos(W), (2 + 0.7 * np.cos(W / 2)) * np.sin(W), 0.7 * np.sin(W / 2),
                color=INK, lw=1.4)
    ax.set_xlim(-3, 3); ax.set_ylim(-3, 3); ax.set_zlim(-1.5, 1.5)
    ax.set_box_aspect((6, 6, 3)); ax.view_init(elev=32, azim=-60 if i == 0 else -75); ax.axis("off")
    ax.set_title(name, fontsize=12, color=INK, y=0.92)
fig.subplots_adjust(left=0, right=1, bottom=0, top=1, wspace=0)
save_matplotlib(fig, "quotient_surfaces")

# Interactive version: both surfaces side by side (the Moebius band shifted by 7 along x), with the band's boundary.
W = np.linspace(0, 4 * np.pi, 241)
traces = [dict(type="surface", x=TX.tolist(), y=TY.tolist(), z=TZ.tolist(), showscale=False, opacity=0.8,
               colorscale=[[0, ACCENT], [1, ACCENT]], name="torus", hovertemplate="torus<extra></extra>"),
          dict(type="surface", x=(MX + 7).tolist(), y=MY.tolist(), z=MZ.tolist(), showscale=False, opacity=0.8,
               colorscale=[[0, STATEMENT], [1, STATEMENT]], name="Möbius band", hovertemplate="Möbius band<extra></extra>"),
          dict(type="scatter3d", mode="lines", x=((2 + 0.7 * np.cos(W / 2)) * np.cos(W) + 7).tolist(),
               y=((2 + 0.7 * np.cos(W / 2)) * np.sin(W)).tolist(), z=(0.7 * np.sin(W / 2)).tolist(),
               line=dict(color=INK, width=5), name="boundary of the Möbius band: one circle")]
save_plotly(traces, "quotient_surfaces", dict(scene=dict(aspectmode="data", xaxis=dict(visible=False),
                                                         yaxis=dict(visible=False), zaxis=dict(visible=False))))
