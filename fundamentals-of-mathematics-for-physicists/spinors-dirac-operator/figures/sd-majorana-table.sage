load("../../_filters/figstyle.sage")
# Reality conditions in signature (p, q), d = p + q <= 11, from r = (p - q) mod 8 (thm-majorana-classification),
# cross-checked for d <= 8 against the sign of B^* B computed from the standard gamma matrices.
import functools
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

K.<i> = QuadraticField(-1)
s1 = matrix(K, [[0, 1], [1, 0]]); s2 = matrix(K, [[0, -i], [i, 0]]); s3 = matrix(K, [[1, 0], [0, -1]]); I2 = identity_matrix(K, 2)
kron = lambda ms: functools.reduce(lambda A, B: A.tensor_product(B), ms, identity_matrix(K, 1))


def gammas(p, q):
    d = p + q; n = d // 2
    G = [kron([s3] * k + [s] + [I2] * (n - k - 1)) for k in range(n) for s in (s1, s2)]
    if d % 2:
        G.append(kron([s3] * n))
    return G[:p] + [i * x for x in G[p:]]


def majorana_computed(p, q):
    G = gammas(p, q); N = G[0].nrows()
    real = [x for x in G if x.conjugate() == x]; imag = [x for x in G if x.conjugate() == -x]
    signs = []
    for B in (prod(real, identity_matrix(K, N)), prod(imag, identity_matrix(K, N))):
        for sgn in (1, -1):
            if all(x.conjugate() * B == sgn * B * x for x in G):
                signs.append((B.conjugate() * B)[0, 0])
    return 1 in signs


def kind(p, q):
    r = (p - q) % 8
    return {0: "MW", 1: "M", 2: "M", 3: "SM", 4: "SMW", 5: "SM", 6: "M", 7: "M"}[r]


def real_dim(p, q):
    N = 2^((p + q) // 2); r = (p - q) % 8
    return N // 2 if r == 0 else (2 * N if r in (3, 5) else N)


for d in range(1, 9):
    for q in range(d + 1):
        assert majorana_computed(d - q, q) == (kind(d - q, q) in ("M", "MW")), (d - q, q)

COL = {"MW": EXAMPLE, "M": "#7fa9d6", "SMW": ORANGE, "SM": "#d0d5dc"}
fig, ax = plt.subplots(figsize=(7.0, 6.2))
for d in range(1, 12):
    for q in range(d + 1):
        k = kind(d - q, q)
        ax.add_patch(Rectangle((d - 0.5, q - 0.5), 1, 1, facecolor=COL[k], edgecolor="white", lw=1.5))
        ax.text(d, q, str(real_dim(d - q, q)), ha="center", va="center", fontsize=8, color="white" if k == "MW" else INK)
ax.set_xlim(0.5, 11.5); ax.set_ylim(-0.5, 11.5); ax.set_aspect("equal")
ax.set_xticks(range(1, 12)); ax.set_yticks(range(0, 12))
ax.set_xlabel(r"$d = p + q$"); ax.set_ylabel(r"$q$ (number of minus signs)")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
handles = [Rectangle((0, 0), 1, 1, facecolor=COL[k]) for k in ("MW", "M", "SMW", "SM")]
ax.legend(handles, ["MW", "M", "SMW", "SM"], loc="upper left", frameon=False, fontsize=9)
save_matplotlib(fig, "sd-majorana-table")
