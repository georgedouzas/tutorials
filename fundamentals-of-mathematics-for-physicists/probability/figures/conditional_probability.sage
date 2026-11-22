# Left: two dice conditioned on B = {first die >= 4}, each of the 18 outcomes with probability 1/18.
# Right: Bayes' rule as a mosaic, prevalence 1/10, sensitivity 9/10, false-positive rate 1/5.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

LIGHT_BLUE = "#b7c9e2"
LIGHT_ORANGE = "#f2a65a"

fig, (ax, bx) = plt.subplots(1, 2, figsize=(9.2, 4.4), gridspec_kw={"width_ratios": [1.05, 1]})
for i in range(1, 7):
    for j in range(1, 7):
        s = i + j
        if i >= 4:
            face = LIGHT_ORANGE if s >= 10 else LIGHT_BLUE
            ax.add_patch(Rectangle((j - 0.5, i - 0.5), 1, 1, facecolor=face, edgecolor=MUTED, lw=0.8))
            ax.text(j, i, str(s), ha="center", va="center", fontsize=10, color=INK)
            if s == 7:
                ax.add_patch(Rectangle((j - 0.46, i - 0.46), 0.92, 0.92, fill=False, edgecolor=EXAMPLE, lw=2.4))
        else:
            ax.add_patch(Rectangle((j - 0.5, i - 0.5), 1, 1, facecolor="#f3f4f6", edgecolor=GRID, lw=0.6))
ax.set_xlim(0.5, 6.5); ax.set_ylim(0.5, 6.5)
ax.set_xticks(range(1, 7)); ax.set_yticks(range(1, 7))
ax.set_xlabel(r"second die $j$"); ax.set_ylabel(r"first die $i$")
ax.set_aspect("equal")
for sp in ax.spines.values():
    sp.set_visible(False)
ax.tick_params(length=0)
ax.set_title(r"given $B$: $\mathbb{P}(A \mid B) = 6/18$,  $\mathbb{P}(C \mid B) = 3/18$", fontsize=10)

# mosaic: width = prior, height = probability of a positive result
ill, sens, fpr = 0.1, 0.9, 0.2
bx.add_patch(Rectangle((0, 0), ill, 1, facecolor="#f8d7d3", edgecolor=INK, lw=0.8))
bx.add_patch(Rectangle((0, 0), ill, sens, facecolor=STATEMENT, edgecolor=INK, lw=0.8))
bx.add_patch(Rectangle((ill, 0), 1 - ill, 1, facecolor="#f3f4f6", edgecolor=INK, lw=0.8))
bx.add_patch(Rectangle((ill, 0), 1 - ill, fpr, facecolor=LIGHT_ORANGE, edgecolor=INK, lw=0.8))
bx.text(ill / 2, 1.04, "ill\n" + r"$1/10$", ha="center", va="bottom", fontsize=10)
bx.text(ill + (1 - ill) / 2, 1.04, r"healthy, $9/10$", ha="center", va="bottom", fontsize=10)
bx.text(ill + (1 - ill) / 2, 0.6, "negative", ha="center", va="center", fontsize=10, color=MUTED)
bx.text(ill + (1 - ill) / 2, fpr / 2, r"false positives $18/100$", ha="center", va="center", fontsize=10)
bx.text(ill / 2, -0.06, "true positives\n" + r"$9/100$", ha="center", va="top", fontsize=9.5, color=STATEMENT)
bx.text(0.62, -0.08, r"$\mathbb{P}(\mathrm{ill} \mid +) = \frac{9}{9 + 18} = \frac{1}{3}$", ha="center", va="top", fontsize=11)
bx.set_xlim(-0.02, 1.02); bx.set_ylim(-0.25, 1.2)
bx.axis("off")
fig.tight_layout()
save_matplotlib(fig, "conditional_probability")
