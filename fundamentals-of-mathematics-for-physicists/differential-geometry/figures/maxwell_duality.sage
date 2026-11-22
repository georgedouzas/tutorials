# A plane wave E = cos(z) e_x, B = cos(z) e_y at t = 0, the fields of F, and the fields -B, E of star F (a quarter turn about the z-axis).
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig = plt.figure(figsize=(10, 4.2))
zs = np.linspace(0, 4*np.pi, 33); zf = np.linspace(0, 4*np.pi, 400)
panels = [(r"$F$", [((1, 0), ACCENT, r"electric field $\mathbf{E}$"), ((0, 1), STATEMENT, r"magnetic field $\mathbf{B}$")]),
          (r"$\star F$", [((0, -1), ACCENT, r"electric field $-\mathbf{B}$"), ((1, 0), STATEMENT, r"magnetic field $\mathbf{E}$")])]
for n, (title, fields) in enumerate(panels):
    ax = fig.add_subplot(1, 2, n + 1, projection="3d")
    for (dx, dy), col, lab in fields:
        c = np.cos(zs)
        for zz, cc in zip(zs, c):
            ax.plot([0, dx*cc], [0, dy*cc], [zz, zz], color=col, lw=0.9, alpha=0.8)
        ax.plot(dx*np.cos(zf), dy*np.cos(zf), zf, color=col, lw=1.8, label=lab)
    ax.plot(0*zf, 0*zf, zf, color=INK, lw=0.8)
    ax.text(0, 0, 4*np.pi + 1.0, r"$z$", color=INK)
    ax.set_xlim(-1.2, 1.2); ax.set_ylim(-1.2, 1.2); ax.set_zlim(0, 4*np.pi)
    ax.set_axis_off(); ax.view_init(elev=15, azim=-60)
    ax.set_title(title, fontsize=12)
    ax.legend(loc="lower center", bbox_to_anchor=(0.5, -0.05), frameon=False, ncol=2, fontsize=10)
    for v, lab in [((1.3, 0, 0), r"$x$"), ((0, 1.3, 0), r"$y$")]:
        ax.plot([0, v[0]], [0, v[1]], [0, 0], color=MUTED, lw=0.6); ax.text(*v, lab, color=MUTED)
fig.tight_layout()
save_matplotlib(fig, "maxwell_duality")
