# The 36 outcomes of two dice with the events A (sum at least 10), B (first die at least 4), C (sum 7).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

LIGHT_BLUE = "#b7c9e2"
LIGHT_ORANGE = "#f2a65a"

fig, ax = plt.subplots(figsize=(4.6, 4.6))
for i in range(1, 7):          # first die: row
    for j in range(1, 7):      # second die: column
        s = i + j
        face = "white"
        if i >= 4:
            face = LIGHT_BLUE
        if s >= 10:
            face = LIGHT_ORANGE
        ax.add_patch(Rectangle((j - 0.5, i - 0.5), 1, 1, facecolor=face, edgecolor=MUTED, lw=0.8))
        ax.text(j, i, str(s), ha="center", va="center", fontsize=10, color=INK)
        if s == 7:
            ax.add_patch(Rectangle((j - 0.46, i - 0.46), 0.92, 0.92, fill=False, edgecolor=EXAMPLE, lw=2.4))
ax.set_xlim(0.5, 6.5); ax.set_ylim(0.5, 6.5)
ax.set_xticks(range(1, 7)); ax.set_yticks(range(1, 7))
ax.set_xlabel(r"second die $j$"); ax.set_ylabel(r"first die $i$")
ax.set_aspect("equal")
for sp in ax.spines.values():
    sp.set_visible(False)
ax.tick_params(length=0)
ax.set_title(r"$B$: $i \geq 4$ (blue)    $A$: $i + j \geq 10$ (orange)    $C$: $i + j = 7$ (green)", fontsize=9.5)
save_matplotlib(fig, "two_dice_events")
