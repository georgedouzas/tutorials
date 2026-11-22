# The homomorphism Z_6 -> Z_2, k -> k mod 2, drawn as a bipartite graph: the residues of Z_6 on the left, the residues
# of Z_2 on the right, an arrow from k to its image. The fibre over 0 is the kernel {0, 2, 4} (blue), the fibre over 1
# the other coset {1, 3, 5} (red).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

R6, R2 = Zmod(6), Zmod(2)
phi = lambda k: R2(int(k))
assert all(phi(R6(j) + R6(k)) == phi(j) + phi(k) for j in range(6) for k in range(6))
kernel = [k for k in range(6) if phi(k) == 0]
assert kernel == [0, 2, 4]
fig, ax = plt.subplots(figsize=(4.2, 3.8))
left = {k: (0.0, 5 - k) for k in range(6)}
right = {0: (2.6, 3.6), 1: (2.6, 1.4)}
for k, (x, y) in left.items():
    col = ACCENT if k in kernel else STATEMENT
    t = int(phi(k))
    X, Y = right[t]
    ax.annotate("", xy=(X - 0.22, Y), xytext=(x + 0.22, y),
                arrowprops=dict(arrowstyle="-|>", color=col, lw=1.2, shrinkA=0, shrinkB=0))
    ax.plot(x, y, "o", color=col, ms=9, zorder=3)
    ax.text(x - 0.35, y, str(k), ha="right", va="center", fontsize=12, color=INK)
for t, (X, Y) in right.items():
    col = ACCENT if t == 0 else STATEMENT
    ax.plot(X, Y, "s", color=col, ms=10, zorder=3)
    ax.text(X + 0.35, Y, str(t), ha="left", va="center", fontsize=12, color=INK)
ax.text(0.0, 6.0, r"$\mathbb{Z}_6$", ha="center", fontsize=13, color=INK)
ax.text(2.6, 6.0, r"$\mathbb{Z}_2$", ha="center", fontsize=13, color=INK)
ax.text(1.3, -1.0, r"$\ker = \{0, 2, 4\}$", ha="center", fontsize=12, color=ACCENT)
ax.text(1.3, -1.6, r"fibre over $1$: $\{1, 3, 5\}$", ha="center", fontsize=12, color=STATEMENT)
ax.set_xlim(-0.9, 3.4); ax.set_ylim(-2.0, 6.5); ax.axis("off")
save_matplotlib(fig, "homomorphism_diagram")
