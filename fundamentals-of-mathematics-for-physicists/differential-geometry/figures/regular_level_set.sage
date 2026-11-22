# Level sets of F(x, y) = x^3 + xy + y^3: regular levels (blue) and the two critical levels 0 and 1/27 (red).
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(4.8, 4.6))
X, Y = np.meshgrid(np.linspace(-1.6, 1.2, 600), np.linspace(-1.6, 1.2, 600))
F = X**3 + X*Y + Y**3
ax.contour(X, Y, F, levels=[-0.6, -0.2, 0.15, 0.5], colors=[ACCENT], linewidths=1.2, linestyles="solid")
ax.contour(X, Y, F, levels=[0, 1/27], colors=[STATEMENT], linewidths=2)
ax.plot([0, -1/3], [0, -1/3], "o", color=STATEMENT, ms=5)
ax.set_aspect("equal"); ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")
for s in ("top", "right"): ax.spines[s].set_visible(False)
save_matplotlib(fig, "regular_level_set")
