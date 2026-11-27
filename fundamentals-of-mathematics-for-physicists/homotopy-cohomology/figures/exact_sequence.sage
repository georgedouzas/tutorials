# The long exact sequence of a fibration F -> E -> B, written in rows of three, and below it the part of the sequence
# of the Hopf fibration S^1 -> S^3 -> S^2 that gives pi_2(S^2) = Z.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(8.0, 3.4))
ax.set_xlim(0, 10); ax.set_ylim(0, 4.4); ax.axis("off")
cols = [1.4, 4.4, 7.4]
rows = [(3.9, "n"), (2.9, "n-1"), (1.95, None)]
names = ["F", "E", "B"]
arrow = dict(arrowstyle="->", color=MUTED, lw=1.1)
for r, (y, k) in enumerate(rows[:2]):
    for c, (x, nm) in enumerate(zip(cols, names)):
        ax.text(x, y, r"$\pi_{%s}(%s)$" % (k, nm), ha="center", va="center", color=[EXAMPLE, ACCENT, STATEMENT][c], fontsize=12)
    for c, lab in enumerate([r"$i_\#$", r"$p_\#$"]):
        ax.annotate("", xy=(cols[c + 1] - 0.75, y), xytext=(cols[c] + 0.75, y), arrowprops=arrow)
        ax.text((cols[c] + cols[c + 1]) / 2, y + 0.22, lab, ha="center", color=INK, fontsize=10)
# the boundary maps, from the end of a row to the start of the next
ax.annotate("", xy=(cols[0] - 0.4, 3.9 + 0.22), xytext=(0.25, 4.3), arrowprops=arrow)
ax.text(0.15, 4.32, r"$\cdots$", ha="center", va="center", color=MUTED)
ax.annotate("", xy=(cols[0] + 0.2, 2.9 + 0.25), xytext=(cols[2] - 0.2, 3.9 - 0.25),
            arrowprops=dict(arrowstyle="->", color=MUTED, lw=1.1, connectionstyle="arc3,rad=0.08"))
ax.text(4.4, 3.36, r"$\partial$", ha="center", color=INK, fontsize=11)
ax.annotate("", xy=(cols[0] + 0.2, 1.95 + 0.2), xytext=(cols[2] - 0.2, 2.9 - 0.25),
            arrowprops=dict(arrowstyle="->", color=MUTED, lw=1.1, connectionstyle="arc3,rad=0.08"))
ax.text(4.4, 2.38, r"$\partial$", ha="center", color=INK, fontsize=11)
ax.text(cols[0], 1.95, r"$\cdots \;\to\; \pi_0(F) \;\to\; \pi_0(E) \;\to\; \pi_0(B)$", ha="left", va="center", color=INK,
        fontsize=11)
# the Hopf case
ax.plot([0.3, 9.7], [1.35, 1.35], color=GRID, lw=1)
hopf = [r"$\pi_2(S^3) = 0$", r"$\pi_2(S^2)$", r"$\pi_1(S^1) \cong \mathbb{Z}$", r"$\pi_1(S^3) = 0$"]
xs = [1.2, 3.7, 6.2, 8.8]
for x, t, c in zip(xs, hopf, [ACCENT, STATEMENT, EXAMPLE, ACCENT]):
    ax.text(x, 0.6, t, ha="center", va="center", color=c, fontsize=12)
for k, lab in enumerate([r"$p_{H\#}$", r"$\partial$", r"$i_\#$"]):
    ax.annotate("", xy=(xs[k + 1] - 0.85, 0.6), xytext=(xs[k] + 0.85, 0.6), arrowprops=arrow)
    ax.text((xs[k] + xs[k + 1]) / 2, 0.85, lab, ha="center", color=INK, fontsize=10)
fig.tight_layout()
save_matplotlib(fig, "exact_sequence")
