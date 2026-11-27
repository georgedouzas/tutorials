load("../../_filters/figstyle.sage")
# Weights (h_1, ..., h_nu) of the Dirac spinor of Spin(2 nu), coloured by the chirality prod 2 h_k: Spin(4) and Spin(6).
import itertools
import matplotlib.pyplot as plt

col = {1: EXAMPLE, -1: STATEMENT}
fig, axs = plt.subplots(1, 2, figsize=(8.2, 3.9))
W4 = list(itertools.product([1/2, -1/2], repeat=2))
for w in W4:
    c = int(prod(2*x for x in w))
    axs[0].plot(w[0], w[1], "o", ms=11, color=col[c])
axs[0].plot([], [], "o", color=EXAMPLE, label=r"$\gamma_* = +1$"); axs[0].plot([], [], "o", color=STATEMENT, label=r"$\gamma_* = -1$")
axs[0].legend(loc="lower left", fontsize=9, frameon=True)
axs[0].set_xlabel(r"$h_1$"); axs[0].set_ylabel(r"$h_2$"); axs[0].set_title(r"Dirac spinor of Spin(4)", fontsize=10)
W6 = list(itertools.product([1/2, -1/2], repeat=3))
P = lambda w: (float(w[0] + 0.45*w[2]), float(w[1] + 0.3*w[2]))
for a in W6:
    for b in W6:
        if sum(1 for x, y in zip(a, b) if x != y) == 1 and a < b:
            axs[1].plot(*zip(P(a), P(b)), color=GRID, lw=0.8, zorder=0)
for w in W6:
    c = int(prod(2*x for x in w)); x, y = P(w)
    axs[1].plot(x, y, "o", ms=11, color=col[c])
    lab = "(" + ", ".join("+" if v > 0 else "-" for v in w) + ")"
    axs[1].annotate(lab, (x, y), xytext=(7, 4), textcoords="offset points", fontsize=7, color=INK)
axs[1].set_xlabel(r"$h_1 + 0.45\,h_3$"); axs[1].set_ylabel(r"$h_2 + 0.3\,h_3$"); axs[1].set_title(r"Dirac spinor of Spin(6)", fontsize=10)
for ax in axs:
    ax.set_xlim(-1, 1.1); ax.set_ylim(-1, 1); ax.axhline(0, color=GRID, lw=0.6); ax.axvline(0, color=GRID, lw=0.6)
    ax.set_aspect("equal")
print("Spin(4) weights:", [(w, prod(2*x for x in w)) for w in W4])
print("Spin(6) chirality +1:", [w for w in W6 if prod(2*x for x in w) == 1])
fig.tight_layout()
save_matplotlib(fig, "sd-weyl-weights")
