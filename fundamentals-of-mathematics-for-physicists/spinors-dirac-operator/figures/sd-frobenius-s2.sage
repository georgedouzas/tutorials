load("../../_filters/figstyle.sage")
# The U(1) charges m = -j..j in each representation V_j of SU(2): charge 0 (scalars, integer j) and charges +-1/2 (spinors).
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(6.0, 3.6))
for twoj in range(0, 9):
    j = twoj/2
    for k in range(twoj + 1):
        m = j - k
        col = ACCENT if m == 0 else (STATEMENT if abs(m) == 0.5 else GRID)
        ax.plot([m], [j], "o", color=col, ms=5)
ax.plot([], [], "o", color=ACCENT, label=r"charge $0$: scalars ($j$ integer)")
ax.plot([], [], "o", color=STATEMENT, label=r"charges $\pm\frac{1}{2}$: spinors ($j \geq \frac{1}{2}$)")
ax.set_xlabel(r"$U(1)$ charge $m$"); ax.set_ylabel(r"$SU(2)$ representation $j$")
for s in ("top", "right"): ax.spines[s].set_visible(False)
ax.legend(frameon=False, loc="upper left", fontsize=8)
fig.tight_layout()
print("V_j containing charge 0:", [t/2 for t in range(9) if t % 2 == 0])
save_matplotlib(fig, "sd-frobenius-s2")
