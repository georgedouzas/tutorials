# The twelfth roots of unity omega^k, omega = exp(2 pi i/12), labelled by k, with the subgroups mu_3 (k = 0, 4, 8, red
# triangle) and mu_4 (k = 0, 3, 6, 9, blue square), which meet only in 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Polygon, Circle
import math

fig, ax = plt.subplots(figsize=(4.4, 4.4))
ax.add_patch(Circle((0, 0), 1, fill=False, ec=MUTED, lw=1))
pt = lambda k: (math.cos(2 * math.pi * k / 12), math.sin(2 * math.pi * k / 12))
ax.add_patch(Polygon([pt(k) for k in (0, 4, 8)], closed=True, fill=False, ec=STATEMENT, lw=1.8))
ax.add_patch(Polygon([pt(k) for k in (0, 3, 6, 9)], closed=True, fill=False, ec=ACCENT, lw=1.8))
for k in range(12):
    x, y = pt(k)
    col = INK if k == 0 else (STATEMENT if k % 4 == 0 else (ACCENT if k % 3 == 0 else MUTED))
    ax.plot(x, y, "o", color=col, ms=6)
    ax.text(1.16 * x, 1.16 * y, str(k), ha="center", va="center", fontsize=11, color=col)
ax.text(0.0, -0.08, r"$\mu_3$", color=STATEMENT, fontsize=12, ha="center", va="center")
ax.text(0.48, 0.10, r"$\mu_4$", color=ACCENT, fontsize=12, ha="center", va="center")
ax.set_xlim(-1.3, 1.3); ax.set_ylim(-1.3, 1.3); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "roots_subgroups")
