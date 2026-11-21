# Open covers of intervals. Top: four open intervals cover [0, 1], a finite cover. Bottom: the intervals (1/n, 1),
# n = 2, ..., 12, of the cover of (0, 1) that has no finite subcover: each misses (0, 1/n].
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

fin = [(-0.1, 0.3), (0.2, 0.55), (0.45, 0.85), (0.75, 1.1)]
grid = [k / 1000 for k in range(1001)]
assert all(any(a < x < b for a, b in fin) for x in grid)                      # covers [0, 1]
ns = list(range(2, 13))
assert all(not any(1 / n < 1 / 13 for n in ns) for _ in [0])                   # 1/13 lies in none of them

fig, axs = plt.subplots(2, 1, figsize=(7.2, 4.6), gridspec_kw=dict(height_ratios=[1, 1.6]))
ax = axs[0]
ax.plot([0, 1], [0, 0], color=INK, lw=3, solid_capstyle="butt")
ax.plot([0, 1], [0, 0], "o", color=INK, ms=6)
for i, (a, b) in enumerate(fin):
    y = 0.25 + 0.17 * (i % 2)
    ax.plot([a, b], [y, y], color=SERIES[i], lw=2.4)
    ax.plot([a, b], [y, y], "o", mfc="white", mec=SERIES[i], ms=5)
ax.text(0, -0.2, "$0$", ha="center", fontsize=11); ax.text(1, -0.2, "$1$", ha="center", fontsize=11)
ax.text(1.17, 0.0, "$[0, 1]$", fontsize=12, va="center")
ax.set_xlim(-0.15, 1.35); ax.set_ylim(-0.3, 0.55); ax.axis("off")

ax = axs[1]
ax.plot([0, 1], [0, 0], color=INK, lw=3, solid_capstyle="butt")
ax.plot([0, 1], [0, 0], "o", mfc="white", mec=INK, ms=6)
for j, n in enumerate(ns):
    y = 0.12 + 0.07 * j
    ax.plot([1 / n, 1], [y, y], color=ACCENT, lw=1.8)
    ax.plot([1 / n, 1], [y, y], "o", mfc="white", mec=ACCENT, ms=4)
ax.text(1 / 2 - 0.03, 0.12, "$n = 2$", fontsize=10, va="center", ha="right", color=ACCENT)
ax.text(1 / 12 - 0.02, 0.12 + 0.07 * 10, "$n = 12$", fontsize=10, va="center", ha="right", color=ACCENT)
ax.text(0, -0.13, "$0$", ha="center", fontsize=11); ax.text(1, -0.13, "$1$", ha="center", fontsize=11)
ax.text(1.17, 0.0, "$(0, 1)$", fontsize=12, va="center")
ax.text(1.04, 0.5, r"$(1/n, 1)$", fontsize=12, color=ACCENT)
ax.set_xlim(-0.15, 1.35); ax.set_ylim(-0.2, 0.95); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "open_cover")
