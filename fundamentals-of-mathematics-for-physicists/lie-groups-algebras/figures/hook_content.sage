# The two fillings of the Young diagram (3, 1) for su(3): the numbers N + j - i (left) and the hook lengths (right).
# Their products give the dimension 60/4 = 15 of the irreducible representation (2, 1).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
N = 3; lam = Partition([3, 1])
num = prod(N + j - i for (i, j) in lam.cells())
hooks = prod(lam.hook_lengths()[i][j] for (i, j) in lam.cells())
assert num/hooks == 15 == WeylCharacterRing("A2", style="coroots")(2, 1).degree()
fig, ax = plt.subplots(figsize=(6.0, 2.0))
s = 0.6
for x0, fill, title, col in [(0.0, lambda i, j: N + j - i, r"$N + j - i$", ACCENT),
                             (3.2, lambda i, j: lam.hook_lengths()[i][j], r"$h(i, j)$", STATEMENT)]:
    for (i, j) in lam.cells():
        ax.add_patch(plt.Rectangle((x0 + j*s, -(i + 1)*s), s, s, facecolor="none", edgecolor=col, lw=1.6))
        ax.text(x0 + j*s + s/2, -(i + 1)*s + s/2, "$%d$" % fill(i, j), ha="center", va="center", fontsize=13, color=INK)
    ax.text(x0 + 1.5*s, 0.3, title, ha="center", fontsize=12, color=col)
ax.text(2.55, -0.6, r"$\div$", ha="center", va="center", fontsize=16, color=INK)
ax.text(5.6, -0.6, r"$= \frac{60}{4} = 15$", ha="left", va="center", fontsize=13, color=INK)
ax.set_xlim(-0.2, 7.3); ax.set_ylim(-1.45, 0.65); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "hook_content")
