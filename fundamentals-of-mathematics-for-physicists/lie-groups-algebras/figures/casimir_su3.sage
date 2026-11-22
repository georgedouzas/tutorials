# Quadratic Casimir C2(a,b) = (a^2+ab+b^2+3a+3b)/3 of su(3) at the dominant weights 0 <= a, b <= 4.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
C2 = lambda a, b: QQ(a^2 + a*b + b^2 + 3*a + 3*b) / 3
assert C2(1, 0) == QQ(4)/3 and C2(1, 1) == 3 and C2(3, 0) == 6
fig, ax = plt.subplots(figsize=(4.8, 4.6))
for a in range(5):
    for b in range(5):
        c = C2(a, b)
        ax.scatter([a], [b], s=28, color=ACCENT, zorder=3)
        lab = "%d" % c if c in ZZ else r"$\frac{%d}{%d}$" % (c.numerator(), c.denominator())
        ax.text(a + 0.1, b + 0.13, lab, fontsize=10, color=STATEMENT, zorder=4)
ax.set_xlim(-0.3, 4.75); ax.set_ylim(-0.3, 4.75); ax.set_aspect("equal")
ax.set_xticks(range(5)); ax.set_yticks(range(5))
ax.set_xlabel(r"$a$"); ax.set_ylabel(r"$b$")
for s in ["right", "top"]:
    ax.spines[s].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "casimir_su3")
