# The covering p(t) = exp(2 pi i t) of the circle by the line, drawn as the helix (cos 2 pi t, sin 2 pi t, t),
# -1.2 <= t <= 1.6, above the unit circle at height -1.8; the fibre points t = -0.85, 0.15, 1.15 project to p(0.15).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(-1.2, 1.6, 600)
hx, hy = np.cos(2 * np.pi * t), np.sin(2 * np.pi * t)
base = -1.8
ph = np.linspace(0, 2 * np.pi, 200)
fib = np.array([-0.85, 0.15, 1.15])
fx, fy = np.cos(2 * np.pi * fib), np.sin(2 * np.pi * fib)

fig = plt.figure(figsize=(4.8, 5.0))
ax = fig.add_subplot(projection="3d")
ax.plot(hx, hy, t, color=ACCENT, lw=2)
ax.plot(np.cos(ph), np.sin(ph), base + 0 * ph, color=INK, lw=2)
for k in range(3):
    ax.plot([fx[k]] * 2, [fy[k]] * 2, [fib[k], base], color=STATEMENT, lw=1, ls=(0, (3, 2)))
ax.scatter(fx, fy, fib, color=STATEMENT, s=25, depthshade=False)
ax.scatter([fx[0]], [fy[0]], [base], color=STATEMENT, s=30, depthshade=False)
ax.text(1.25, 0, 1.55, r"$\mathbb{R}$", color=ACCENT)
ax.text(1.0, -1.25, base, r"$S^1$", color=INK)
ax.text(fx[0] + 0.15, fy[0], base + 0.25, r"$p(0.15)$", color=STATEMENT, fontsize=9)
ax.set_box_aspect((1, 1, 1.4))
ax.set_axis_off()
ax.view_init(elev=14, azim=-60)
fig.tight_layout()
save_matplotlib(fig, "helix_covering")

helix = {"type": "scatter3d", "mode": "lines", "x": floats(hx), "y": floats(hy), "z": floats(t),
         "line": {"color": ACCENT, "width": 6}, "name": "helix (the line R)"}
circle = {"type": "scatter3d", "mode": "lines", "x": floats(np.cos(ph)), "y": floats(np.sin(ph)), "z": [base] * len(ph),
          "line": {"color": INK, "width": 6}, "name": "circle S^1"}
drops = [{"type": "scatter3d", "mode": "lines", "x": [float(fx[k])] * 2, "y": [float(fy[k])] * 2,
          "z": [float(fib[k]), base], "line": {"color": STATEMENT, "width": 3, "dash": "dash"}, "showlegend": False}
         for k in range(3)]
pts = {"type": "scatter3d", "mode": "markers", "x": floats(fx) + [float(fx[0])], "y": floats(fy) + [float(fy[0])],
       "z": floats(fib) + [base], "marker": {"color": STATEMENT, "size": 5}, "name": "fibre over p(0.15)"}
save_plotly([helix, circle] + drops + [pts], "helix_covering",
            {"scene": {"aspectmode": "manual", "aspectratio": {"x": 1, "y": 1, "z": 1.4},
                       "xaxis": {"visible": False}, "yaxis": {"visible": False}, "zaxis": {"visible": False}}})
