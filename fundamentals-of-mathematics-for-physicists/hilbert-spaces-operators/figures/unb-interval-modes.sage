# The three lowest eigenfunctions on [0, 1] for Dirichlet (sin n pi x), Neumann (1, cos pi x, cos 2 pi x) and
# periodic (1, cos 2 pi x, sin 2 pi x) conditions.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = np.linspace(0, 1, 401)
panels = [("Dirichlet", [np.sin(np.pi * xs), np.sin(2 * np.pi * xs), np.sin(3 * np.pi * xs)], [r"$\sin\pi x$", r"$\sin 2\pi x$", r"$\sin 3\pi x$"]),
          ("Neumann", [np.ones_like(xs), np.cos(np.pi * xs), np.cos(2 * np.pi * xs)], [r"$1$", r"$\cos\pi x$", r"$\cos 2\pi x$"]),
          ("periodic", [np.ones_like(xs), np.cos(2 * np.pi * xs), np.sin(2 * np.pi * xs)], [r"$1$", r"$\cos 2\pi x$", r"$\sin 2\pi x$"])]
fig, axs = plt.subplots(1, 3, figsize=(9.6, 3.0), sharey=True)
for ax, (title, ys, labels) in zip(axs, panels):
    for y, lab, col in zip(ys, labels, [ACCENT, STATEMENT, EXAMPLE]):
        ax.plot(xs, y, color=col, lw=1.6, label=lab)
    ax.axhline(0, color=GRID, lw=0.8, zorder=0)
    ax.set_title(title, fontsize=11); ax.set_xlabel(r"$x$"); ax.set_ylim(-1.15, 1.6)
    ax.legend(loc="upper center", fontsize=8, frameon=False, ncol=3, handlelength=1.2, columnspacing=0.8)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "unb-interval-modes")
