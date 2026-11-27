load("../../_filters/figstyle.sage")
# Hodge diamonds of K3 and of the quintic threefold, h^{p,q} at position (q - p, p + q).
import matplotlib.pyplot as plt
K3 = {(0, 0): 1, (1, 0): 0, (0, 1): 0, (2, 0): 1, (1, 1): 20, (0, 2): 1, (2, 1): 0, (1, 2): 0, (2, 2): 1}
Q = {}
for p in range(4):
    for q in range(4):
        Q[(p, q)] = 1 if (p, q) in ((0, 0), (3, 3), (3, 0), (0, 3)) else (1 if p == q else (101 if p + q == 3 else 0))
fig, axs = plt.subplots(1, 2, figsize=(9.0, 3.6))
for ax, (name, H, chi) in zip(axs, (("K3 surface", K3, 24), ("quintic threefold", Q, -200))):
    for (p, q), h in H.items():
        ax.text(q - p, -(p + q), str(h), ha="center", va="center", fontsize=10, color=ACCENT if (p + q) % 2 == 0 else STATEMENT)
    n = max(p for p, q in H)
    ax.set_xlim(-n - 0.6, n + 0.6); ax.set_ylim(-2*n - 0.6, 0.6); ax.axis("off")
    ax.set_title(name + r": $\chi = %d$" % chi, fontsize=10)
fig.tight_layout()
print("chi:", sum((-1)^(p + q)*h for (p, q), h in K3.items()), sum((-1)^(p + q)*h for (p, q), h in Q.items()))
save_matplotlib(fig, "sd-hodge-diamonds")
