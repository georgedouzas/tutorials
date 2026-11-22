# The Cayley graph of S_3 with generators s = (1 2) (red) and c = (1 2 3) (blue), an arrow from g to gs for each
# generator s (products read right to left), with the three left cosets gH = {g, g(1 2)} of H = {e, (1 2)} shaded.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyArrowPatch, Circle, FancyBboxPatch
import math

G = SymmetricGroup(3)
tmul = lambda g, h: h * g            # the text's g h: first h, then g
def tex(g):
    return r"$e$" if g == G.one() else r"$(" + r"\,".join(map(str, g.cycle_tuples()[0])) + ")$"
s, c = G("(1,2)"), G("(1,2,3)")
outer = [G.one(), c, tmul(c, c)]
inner = [tmul(g, s) for g in outer]
H = [G.one(), s]
cosets = [frozenset(tmul(g, h) for h in H) for g in outer]
assert all(frozenset([o, i]) == C for o, i, C in zip(outer, inner, cosets))     # each red edge is a left coset
assert len(set(cosets)) == 3

fig, ax = plt.subplots(figsize=(4.6, 4.4))
R_out, R_in = 1.3, 0.55
ang = [math.pi / 2 + 2 * math.pi * k / 3 for k in range(3)]
po = [(R_out * math.cos(t), R_out * math.sin(t)) for t in ang]
pi_ = [(R_in * math.cos(t), R_in * math.sin(t)) for t in ang]
shade = [ACCENT, EXAMPLE, EXERCISE]
for k in range(3):
    (x1, y1), (x2, y2) = po[k], pi_[k]
    t = ang[k]
    L = math.hypot(x1 - x2, y1 - y2)
    from matplotlib.patches import Rectangle
    import matplotlib.transforms as mt
    rect = FancyBboxPatch((-0.27, -L / 2 - 0.27), 0.54, L + 0.54, boxstyle="round,pad=0,rounding_size=0.27",
                          fc=shade[k], alpha=0.16, ec=shade[k], lw=1.2)
    rect.set_transform(mt.Affine2D().rotate(t - math.pi / 2).translate((x1 + x2) / 2, (y1 + y2) / 2) + ax.transData)
    ax.add_patch(rect)
for k in range(3):
    ax.add_patch(FancyArrowPatch(po[k], po[(k + 1) % 3], arrowstyle="-|>", mutation_scale=13, color=ACCENT, lw=1.4,
                                 shrinkA=15, shrinkB=15))
    ax.add_patch(FancyArrowPatch(pi_[k], pi_[(k - 1) % 3], arrowstyle="-|>", mutation_scale=13, color=ACCENT, lw=1.4,
                                 shrinkA=15, shrinkB=15))
    ax.add_patch(FancyArrowPatch(po[k], pi_[k], arrowstyle="<|-|>", mutation_scale=11, color=STATEMENT, lw=1.6,
                                 shrinkA=15, shrinkB=15))
for g, (x, y) in list(zip(outer, po)) + list(zip(inner, pi_)):
    ax.add_patch(Circle((x, y), 0.21, fc="white", ec=INK, lw=1.1, zorder=3))
    ax.text(x, y, tex(g), ha="center", va="center", fontsize=9, zorder=4)
ax.set_xlim(-1.75, 1.75); ax.set_ylim(-1.1, 1.75); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "cosets_cayley")
