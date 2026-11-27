load("../../_filters/figstyle.sage")
# The four spin structures of the torus T^2 = R^2 / 2 pi Z^2: on the fundamental square a spinor field returns to
# itself (+) or to its negative (-) across each pair of identified sides; shown is Re psi for the lowest mode
# psi = exp(i (k_1 y_1 + k_2 y_2)) with k_i in Z (P) or Z + 1/2 (A).
import matplotlib.pyplot as plt
import numpy as np

y = np.linspace(0, 2*np.pi, 160)
Y1, Y2 = np.meshgrid(y, y)
fig, axs = plt.subplots(1, 4, figsize=(9.6, 2.9))
for ax, (lab, k1, k2) in zip(axs, [("(P, P)", 0, 0), ("(P, A)", 0, 0.5), ("(A, P)", 0.5, 0), ("(A, A)", 0.5, 0.5)]):
    Z = np.cos(k1*Y1 + k2*Y2)
    ax.contourf(Y1, Y2, Z, levels=np.linspace(-1, 1, 11), cmap="RdBu_r", vmin=-1.3, vmax=1.3)
    ax.set_aspect("equal"); ax.set_xticks([0, 2*np.pi]); ax.set_yticks([0, 2*np.pi])
    ax.set_xticklabels([r"$0$", r"$2\pi$"]); ax.set_yticklabels([r"$0$", r"$2\pi$"])
    s1 = "+" if k1 == 0 else "-"; s2 = "+" if k2 == 0 else "-"
    ax.set_title(lab + "\n" + r"signs $" + s1 + "$, $" + s2 + "$", fontsize=10)
    ax.set_xlabel(r"$y_1$", labelpad=-4); ax.set_ylabel(r"$y_2$", labelpad=-8)
fig.tight_layout()
print("signs (y_1, y_2):", [("+" if a == 0 else "-", "+" if b == 0 else "-") for a, b in [(0, 0), (0, .5), (.5, 0), (.5, .5)]])
save_matplotlib(fig, "sps-torus-structures")
