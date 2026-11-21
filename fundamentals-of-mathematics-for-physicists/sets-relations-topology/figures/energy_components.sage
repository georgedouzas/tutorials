# Level sets of the energy H(q, p) = p^2/2 + (q^2 - 1)^2 of a particle in a double well. Below the barrier (E = 1/2)
# the level set has two components, one in each well; above it (E = 3/2) it is one closed curve; E = 1 is dashed.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import sqrt

def branch(E, sign):
    """Upper and lower halves p = +-sqrt(2(E - V(q))) over the q-intervals where V(q) <= E."""
    V = lambda q: (q * q - 1) ** 2
    qs = [-2 + 4 * k / 4000 for k in range(4001)]
    pts = [(q, sqrt(max(0.0, 2 * (E - V(q))))) for q in qs if V(q) <= E]
    return pts

def runs(pts):
    out, cur = [], [pts[0]]
    for a, b in zip(pts, pts[1:]):
        if b[0] - a[0] > 1.5e-3:
            out.append(cur); cur = []
        cur.append(b)
    out.append(cur)
    return out

fig, ax = plt.subplots(figsize=(6.4, 3.9))
for E, col, ls, lab in ((0.5, STATEMENT, "-", "$E = 1/2$: two components"), (1.0, MUTED, (0, (4, 3)), "$E = 1$"),
                        (1.5, ACCENT, "-", "$E = 3/2$: one component")):
    rs = runs(branch(E, 1))
    if E == 0.5:
        assert len(rs) == 2
    elif E == 1.5:
        assert len(rs) == 1
    for i, r in enumerate(rs):
        qs = [a for a, b in r]; ps = [b for a, b in r]
        ax.plot(qs + qs[::-1] + qs[:1], ps + [-b for b in ps[::-1]] + ps[:1], color=col, lw=1.8, ls=ls,
                label=lab if i == 0 else None)
ax.axhline(0, color=GRID, lw=0.8, zorder=0); ax.axvline(0, color=GRID, lw=0.8, zorder=0)
ax.set_xlabel("$q$"); ax.set_ylabel("$p$")
ax.set_xlim(-1.9, 1.9); ax.set_ylim(-2.0, 2.0); ax.set_aspect("equal")
for s in ("top", "right"):
    ax.spines[s].set_visible(False)
ax.legend(loc="center left", bbox_to_anchor=(1.02, 0.5), frameon=False, fontsize=10)
save_matplotlib(fig, "energy_components")
