load("../../_filters/figstyle.sage")
# Eigenvalues k(k + |M|) of D_A^2 on the unit sphere with a monopole of charge M, k = 0, ..., 4, for |M| = 0, ..., 4;
# k = 0 with |M| >= 1 are the |M| zero modes.
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(5.8, 3.8))
for M in range(5):
    for k in range(5):
        if M == 0 and k == 0: continue
        ax.plot([M - 0.3, M + 0.3], [k*(k + M)]*2, color=STATEMENT if k == 0 else ACCENT, lw=2)
ax.set_xticks(range(5)); ax.set_xlabel(r"monopole charge $|M|$"); ax.set_ylabel(r"eigenvalue of $D_A^2$")
ax.annotate("zero modes", (0.75, 1.0), color=STATEMENT, fontsize=10)
for s in ("top", "right"): ax.spines[s].set_visible(False)
fig.tight_layout()
print("M = 2:", [k*(k + 2) for k in range(5)])
save_matplotlib(fig, "sd-monopole-spectrum")
