load("../../_filters/figstyle.sage")
# Signs of the products gamma_A gamma_B = +/- gamma_C of the sixteen basis elements of Cl(1, 3), Weyl matrices.
import itertools
import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap

K.<i> = QuadraticField(-1)
I2, Z2 = identity_matrix(K, 2), zero_matrix(K, 2)
s = [matrix(K, [[0, 1], [1, 0]]), matrix(K, [[0, -i], [i, 0]]), matrix(K, [[1, 0], [0, -1]])]
g = [block_matrix([[Z2, I2], [I2, Z2]])] + [block_matrix([[Z2, x], [-x, Z2]]) for x in s]
subsets = [A for k in range(5) for A in itertools.combinations(range(4), k)]
gam = {A: prod([g[a] for a in A], identity_matrix(K, 4)) for A in subsets}


def sign(M):
    for A in subsets:
        for c in (1, -1):
            if M == c * gam[A]:
                return c
    raise ValueError("not a signed basis element")


S = [[sign(gam[A] * gam[B]) for B in subsets] for A in subsets]
names = [r"$\mathbf{I}$" if not A else r"$\gamma^{%s}$" % "".join(map(str, A)) for A in subsets]
fig, ax = plt.subplots(figsize=(6.2, 5.8))
ax.imshow([[0 if x == 1 else 1 for x in row] for row in S], cmap=ListedColormap(["#d6e6f5", STATEMENT]), interpolation="nearest")
ax.set_xticks(range(16)); ax.set_xticklabels(names, rotation=90, fontsize=9)
ax.set_yticks(range(16)); ax.set_yticklabels(names, fontsize=9)
ax.set_xlabel(r"$\gamma_B$"); ax.set_ylabel(r"$\gamma_A$")
ax.set_xticks([k - 0.5 for k in range(17)], minor=True); ax.set_yticks([k - 0.5 for k in range(17)], minor=True)
ax.grid(which="minor", color="white", lw=0.8); ax.tick_params(which="minor", length=0)
print("negative entries:", sum(row.count(-1) for row in S))
save_matplotlib(fig, "sd-clifford-table")
