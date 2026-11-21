# The twelfth roots of unity w^k, w = e^(2 pi i/12), labelled by k; the primitive ones (gcd(k, 12) = 1) are filled.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

n = 12
K.<w> = CyclotomicField(n)
prim = [k for k in range(n) if (w ^ k).multiplicative_order() == n]
assert prim == [1, 5, 7, 11]
fig, ax = plt.subplots(figsize=(4.4, 4.4))
t = np.linspace(0, 2 * np.pi, 400)
ax.plot(np.cos(t), np.sin(t), color=GRID, lw=1.0)
pts = [(np.cos(2 * np.pi * k / n), np.sin(2 * np.pi * k / n)) for k in range(n)]
ax.plot([p[0] for p in pts] + [pts[0][0]], [p[1] for p in pts] + [pts[0][1]], color=MUTED, lw=0.7)
for k, (x, y) in enumerate(pts):
    if k in prim:
        ax.plot([x], [y], "o", color=STATEMENT, ms=8)
    else:
        ax.plot([x], [y], "o", mfc="white", mec=ACCENT, mew=1.5, ms=8)
    ax.text(1.2 * x, 1.2 * y, str(k), ha="center", va="center", fontsize=10)
ax.axhline(0, color=GRID, lw=0.6); ax.axvline(0, color=GRID, lw=0.6)
ax.set_xlim(-1.4, 1.4); ax.set_ylim(-1.4, 1.4); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "roots_of_unity")
