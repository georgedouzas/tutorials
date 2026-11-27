# Charge vectors (lambda_3, lambda_8 eigenvalues) of the complex coset directions of SU(3)/U(1)^2.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
s = np.sqrt(3)
pos = [(2, 0), (1, s), (-1, s)]
fig, ax = plt.subplots(figsize=(4.2, 4.0))
hexa = pos + [(-x, -y) for x, y in pos]
order = [(2, 0), (1, s), (-1, s), (-2, 0), (-1, -s), (1, -s), (2, 0)]
ax.plot([p[0] for p in order], [p[1] for p in order], color=GRID, lw=1)
labels = {(2, 0): r"$\lambda_1 + i\lambda_2$", (1, s): r"$\lambda_4 + i\lambda_5$", (-1, s): r"$\lambda_6 + i\lambda_7$"}
for (x, y) in hexa:
    col = ACCENT if (x, y) in labels else STATEMENT
    ax.annotate("", xy=(x, y), xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=col, lw=1.6))
for (x, y), lab in labels.items():
    ax.text(x * 1.12 + (0.05 if x > 0 else -0.05), y * 1.12 + 0.12, lab, color=ACCENT, ha="left" if x > 0 else "right")
ax.text(-2.15, -2.25, "conjugate directions: negatives", color=STATEMENT, fontsize=9)
ax.axhline(0, color=GRID, lw=0.6); ax.axvline(0, color=GRID, lw=0.6)
ax.set_xlabel(r"charge under $\lambda_3$"); ax.set_ylabel(r"charge under $\lambda_8$")
ax.set_aspect("equal"); ax.set_xlim(-3.4, 3.4); ax.set_ylim(-2.5, 2.6)
for sp in ("top", "right"): ax.spines[sp].set_visible(False)
save_matplotlib(fig, "cos2_flag_charges")
