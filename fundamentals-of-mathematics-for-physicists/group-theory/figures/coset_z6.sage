# The two cosets of H = {0, 2, 4} in Z_6, drawn on the hexagon of rotations by multiples of 60 degrees: residue k sits at
# angle 60k degrees, the coset H is the blue triangle and 1 + H the red one.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Polygon, Circle
import math

R = Zmod(6)
H = sorted(int(h) for h in {R(0), R(2), R(4)})
cosets = [H, sorted(int(R(1) + R(h)) for h in H)]
assert cosets == [[0, 2, 4], [1, 3, 5]]
P = {k: (math.cos(math.pi * k / 3), math.sin(math.pi * k / 3)) for k in range(6)}
fig, ax = plt.subplots(figsize=(4.0, 4.3))
ax.add_patch(Circle((0, 0), 1, fill=False, ls="--", ec=MUTED, lw=1))
for c, col in zip(cosets, (ACCENT, STATEMENT)):
    ax.add_patch(Polygon([P[k] for k in c], closed=True, fc=col, alpha=0.22, ec=col, lw=1.4))
for k, (x, y) in P.items():
    col = ACCENT if k in cosets[0] else STATEMENT
    ax.plot(x, y, "o", color=col, ms=8, zorder=3)
    ax.text(1.18 * x, 1.18 * y, str(k), ha="center", va="center", fontsize=13, color=INK)
ax.text(0, -1.45, r"$H = \{0, 2, 4\}$", color=ACCENT, ha="center", fontsize=12)
ax.text(0, -1.68, r"$1 + H = \{1, 3, 5\}$", color=STATEMENT, ha="center", fontsize=12)
ax.set_xlim(-1.35, 1.35); ax.set_ylim(-1.85, 1.3); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "coset_z6")
