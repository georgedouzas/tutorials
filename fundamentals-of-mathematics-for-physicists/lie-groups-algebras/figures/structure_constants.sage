# The structure constants f_ab^c = eps_abc of the cross product as three 3 x 3 slices, one per value of c.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap

def eps(a, b, c):
    return Permutation([a + 1, b + 1, c + 1]).sign() if len({a, b, c}) == 3 else 0
cmap = ListedColormap([STATEMENT, "#ffffff", ACCENT])
fig, axs = plt.subplots(1, 3, figsize=(7.5, 2.8))
for c, ax in enumerate(axs):
    M = [[eps(a, b, c) for b in range(3)] for a in range(3)]
    ax.imshow(M, cmap=cmap, vmin=-1, vmax=1)
    for a in range(3):
        for b in range(3):
            v = M[a][b]
            ax.text(b, a, "+1" if v == 1 else ("-1" if v == -1 else "0"), ha="center", va="center", fontsize=12,
                    color="white" if v else MUTED)
    ax.set_xticks(range(3)); ax.set_yticks(range(3))
    ax.set_xticklabels(["1", "2", "3"]); ax.set_yticklabels(["1", "2", "3"])
    ax.set_xlabel(r"$b$"); ax.set_ylabel(r"$a$")
    ax.set_title(r"$f_{ab}{}^{%d}$" % (c + 1), color=INK)
fig.tight_layout()
save_matplotlib(fig, "structure_constants")
