# Weight diagrams of the spin-j representations, j = 0, 1/2, ..., 2: the weights m = j, ..., -j, joined by the steps of
# the ladder operators; the step labels are the coefficients sqrt((j - m)(j + m + 1)) of J_+.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(6.4, 3.6))
js = [QQ(k) / 2 for k in range(5)]
for row, j in enumerate(js):
    y = -row
    ms = [j - k for k in range(2 * j + 1)]
    ax.plot([-2.4, 2.4], [y, y], color=GRID, lw=0.8, zorder=0)
    for m in ms:
        if m < j:
            c = sqrt((j - m) * (j + m + 1))
            assert c > 0
            ax.annotate("", xy=(float(m + 1) - 0.12, y), xytext=(float(m) + 0.12, y),
                        arrowprops=dict(arrowstyle="->", color=STATEMENT, lw=1.2))
    ax.scatter([float(m) for m in ms], [y] * len(ms), s=55, color=ACCENT, zorder=3)
    lab = r"$j = %s$" % (latex(j))
    ax.text(-2.75, y, lab, ha="right", va="center", fontsize=11, color=INK)
ax.set_xticks([-2, -1, 0, 1, 2]); ax.set_xlim(-3.9, 2.6); ax.set_ylim(-4.6, 0.6)
ax.set_yticks([]); ax.set_xlabel(r"weight $m$")
for s in ["left", "right", "top"]:
    ax.spines[s].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "su2_weights")
