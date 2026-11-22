# The eight weights of the adjoint of su(3) in the (lambda_3, lambda_8) plane, one row per lambda_8-charge:
# charge 0 = triplet + singlet (double point at the origin), charges +-sqrt(3) = the two doublets.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
h3, h8 = [1, -1, 0], [1 / sqrt(3), 1 / sqrt(3), -2 / sqrt(3)]
W = [(h3[i] - h3[j], h8[i] - h8[j]) for i in range(3) for j in range(3) if i != j] + [(0, 0), (0, 0)]
assert len(W) == 8 and sum(1 for w in W if w == (0, 0)) == 2
fig, ax = plt.subplots(figsize=(5.0, 4.0))
colors = {0: ACCENT, 1: STATEMENT, -1: EXAMPLE}
for q in (1, 0, -1):
    y = float(q * sqrt(3))
    ax.plot([-2.6, 2.6], [y, y], color=colors[q], lw=0.8, ls=":")
    pts = [w for w in W if bool(w[1] == q * sqrt(3))]
    ax.scatter([float(w[0]) for w in pts], [y] * len(pts), s=[160 if w == (0, 0) else 70 for w in pts], color=colors[q], zorder=3)
lab = {1: r"$\mathbf{2}_{\sqrt{3}}$", 0: r"$\mathbf{3}_0 \oplus \mathbf{1}_0$", -1: r"$\mathbf{2}_{-\sqrt{3}}$"}
for q in (1, 0, -1):
    ax.text(2.75, float(q * sqrt(3)), lab[q], va="center", fontsize=11, color=colors[q])
ax.text(0.12, 0.28, r"$2$", fontsize=10, color=INK)
ax.set_xlim(-2.8, 3.9); ax.set_ylim(-2.4, 2.4)
ax.set_xlabel(r"$\lambda_3$"); ax.set_ylabel(r"$\lambda_8$")
ax.set_xticks([-2, -1, 0, 1, 2]); ax.set_yticks([float(-sqrt(3)), 0, float(sqrt(3))]); ax.set_yticklabels([r"$-\sqrt{3}$", "0", r"$\sqrt{3}$"])
ax.set_aspect("equal")
for s in ["right", "top"]:
    ax.spines[s].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "branching_su3")
