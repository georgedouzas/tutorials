# Holonomy in the constant field f = dx ^ dy: horizontal lifts of circles of radius R end at the fibre angle -pi R^2.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt

Rs, cols = (0.6, 1.0, 1.3), (ACCENT, EXAMPLE, STATEMENT)
fig, axs = plt.subplots(1, 2, figsize=(7.6, 3.4), gridspec_kw=dict(width_ratios=[1, 1.5]))
t = np.linspace(0, 2 * np.pi, 300)
ax = axs[0]
for R, col in zip(Rs[::-1], cols[::-1]):
    ax.fill(R * np.cos(t), R * np.sin(t), color=col, alpha=0.12, lw=0)
    ax.plot(R * np.cos(t), R * np.sin(t), color=col, lw=1.6)
    ax.text(1.45, 0.9 - 0.45 * Rs.index(R), r"$R = %s$" % float(R), color=col, fontsize=9)
ax.set_aspect("equal"); ax.set_xlim(-1.5, 2.6); ax.set_ylim(-1.5, 1.5); ax.axis("off")
ax.text(0, -1.5, r"loops in the base $\mathbb{R}^2$", color=MUTED, ha="center", va="top")
ax = axs[1]
ax.axhline(np.pi, color=GRID, lw=0.8); ax.axhline(-np.pi, color=GRID, lw=0.8)
for R, col in zip(Rs, cols):
    chi = np.mod(-0.5 * R**2 * t + np.pi, 2 * np.pi) - np.pi
    chi[1:][np.abs(np.diff(chi)) > 1] = np.nan
    ax.plot(t, chi, color=col, lw=1.8)
    end = np.mod(-np.pi * R**2 + np.pi, 2 * np.pi) - np.pi
    ax.plot([2 * np.pi], [end], "o", color=col, ms=4)
ax.plot([0], [0], "o", color=INK, ms=4)
ax.set_xticks([0, np.pi, 2 * np.pi]); ax.set_xticklabels(["0", r"$\pi$", r"$2\pi$"])
ax.set_yticks([-np.pi, 0, np.pi]); ax.set_yticklabels([r"$-\pi$", "0", r"$\pi$"])
ax.set_xlabel(r"loop parameter $t$"); ax.set_ylabel(r"fibre angle $\chi$")
for s in ax.spines.values(): s.set_visible(False)
save_matplotlib(fig, "fib_holonomy")
