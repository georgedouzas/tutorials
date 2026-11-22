# Young diagrams of the su(3) multiplets met in the quark model, with the Dynkin labels (a, b) = (l1 - l2, l2)
# and the dimensions (a + 1)(b + 1)(a + b + 2)/2, checked against Sage's Weyl character ring.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
A2 = WeylCharacterRing("A2", style="coroots")
diagrams = [([], r"$\mathbf{1}$"), ([1], r"$\mathbf{3}$"), ([1, 1], r"$\bar{\mathbf{3}}$"), ([2], r"$\mathbf{6}$"),
            ([2, 1], r"$\mathbf{8}$"), ([3], r"$\mathbf{10}$"), ([4, 2], r"$\mathbf{27}$")]
fig, ax = plt.subplots(figsize=(7.6, 2.5))
s = 0.42; x = 0.0
for lam, name in diagrams:
    l = lam + [0]*(3 - len(lam)); a, b = l[0] - l[1], l[1] - l[2]
    d = (a + 1)*(b + 1)*(a + b + 2)//2
    assert d == A2(a, b).degree()
    w = max(lam + [1])*s
    if not lam:
        ax.plot([x + s/2], [-s/2], "o", color=ACCENT, ms=6)
    for i, row in enumerate(lam):
        for j in range(row):
            ax.add_patch(plt.Rectangle((x + j*s, -(i + 1)*s), s, s, facecolor="none", edgecolor=ACCENT, lw=1.5))
    ax.text(x + w/2, 0.25, name, ha="center", fontsize=13, color=STATEMENT)
    ax.text(x + w/2, -1.25, r"$(%d, %d)$" % (a, b), ha="center", fontsize=11, color=INK)
    x += w + 0.55
ax.set_xlim(-0.2, x - 0.3); ax.set_ylim(-1.45, 0.6); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "young_su3")
