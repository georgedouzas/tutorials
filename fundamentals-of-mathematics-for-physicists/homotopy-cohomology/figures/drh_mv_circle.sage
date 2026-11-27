# Mayer-Vietoris cover of the circle: U = S^1 minus the south pole (drawn outside the circle), V = S^1 minus the north
# pole (drawn inside), and their overlap U cap V, the right arc A_+ and the left arc A_-.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(4.6, 4.6))
t = np.linspace(0, 2 * np.pi, 600)
ax.plot(np.cos(t), np.sin(t), color=GRID, lw=1.2)
gap = 0.12
tu = np.linspace(-np.pi / 2 + gap, 3 * np.pi / 2 - gap, 600)      # U misses -e_2
ax.plot(1.13 * np.cos(tu), 1.13 * np.sin(tu), color=ACCENT, lw=2.4)
tv = np.linspace(np.pi / 2 + gap, 5 * np.pi / 2 - gap, 600)       # V misses e_2
ax.plot(0.87 * np.cos(tv), 0.87 * np.sin(tv), color=STATEMENT, lw=2.4)
for a, b in [(-np.pi / 2 + gap, np.pi / 2 - gap), (np.pi / 2 + gap, 3 * np.pi / 2 - gap)]:
    s = np.linspace(a, b, 300)
    ax.plot(np.cos(s), np.sin(s), color=EXAMPLE, lw=3.2)
ax.plot([0, 0], [1, -1], "o", color=INK, ms=4)
ax.text(0, 1.2, r"$\mathbf{e}_2$", ha="center", va="bottom", fontsize=11)
ax.text(0, -1.08, r"$-\mathbf{e}_2$", ha="center", va="top", fontsize=11)
ax.text(-1.05, 0.95, r"$U$", color=ACCENT, fontsize=13)
ax.text(0.42, 0.42, r"$V$", color=STATEMENT, fontsize=13)
ax.text(1.22, 0.0, r"$A_+$", color=EXAMPLE, fontsize=12, va="center", ha="left")
ax.text(-1.22, 0.0, r"$A_-$", color=EXAMPLE, fontsize=12, va="center", ha="right")
ax.set_aspect("equal"); ax.axis("off")
ax.set_xlim(-1.6, 1.6); ax.set_ylim(-1.45, 1.45)
fig.tight_layout()
save_matplotlib(fig, "drh_mv_circle")
