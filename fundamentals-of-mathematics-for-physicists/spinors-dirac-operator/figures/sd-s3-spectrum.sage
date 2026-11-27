load("../../_filters/figstyle.sage")
# Dirac spectrum of the unit S^3 = SU(2): on C^2 (x) V_j the eigenvalues 2j + 3/2 (multiplicity (2j+1)(2j+2)) and -(2j + 1/2) ((2j+1)2j).
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(6.0, 3.6))
for twoj in range(0, 7):
    j = twoj/2
    lp, mp = 2*j + 1.5, (2*j + 1)*(2*j + 2)
    ax.plot([j], [lp], "o", color=ACCENT); ax.annotate("%d" % mp, (j, lp), xytext=(6, -3), textcoords="offset points", fontsize=8, color=ACCENT)
    if j > 0:
        lm, mm = -(2*j + 0.5), (2*j + 1)*2*j
        ax.plot([j], [lm], "o", color=STATEMENT); ax.annotate("%d" % mm, (j, lm), xytext=(6, -3), textcoords="offset points", fontsize=8, color=STATEMENT)
ax.axhline(0, color=GRID, lw=0.8)
ax.set_xlabel(r"$j$"); ax.set_ylabel(r"eigenvalue $\lambda$")
for s in ("top", "right"): ax.spines[s].set_visible(False)
fig.tight_layout()
print("first eigenvalues:", [(twoj/2, twoj + 1.5) for twoj in range(4)])
save_matplotlib(fig, "sd-s3-spectrum")
