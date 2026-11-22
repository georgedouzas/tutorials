# Left-invariant fields X = a d/da (blue) and Y = a d/db (red) on the affine group, coordinates (a, b), a > 0.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
fig, ax = plt.subplots(figsize=(4.6, 4.0))
A, B = np.meshgrid(np.linspace(0.3, 2.1, 7), np.linspace(-1.2, 1.2, 7))
ax.quiver(A, B, A, 0 * A, color=ACCENT, angles="xy", scale_units="xy", scale=5, width=0.006)
ax.quiver(A, B, 0 * A, A, color=STATEMENT, angles="xy", scale_units="xy", scale=5, width=0.006)
ax.plot(1, 0, "o", color=INK, ms=5); ax.text(1.04, -0.12, r"$(1, 0)$", fontsize=10, color=INK)
ax.axvline(0, color=MUTED, lw=0.8)
ax.set_xlabel(r"$a$"); ax.set_ylabel(r"$b$"); ax.set_xlim(0, 2.6); ax.set_ylim(-1.4, 1.6)
ax.text(2.25, 1.4, r"$X$", color=ACCENT, fontsize=12); ax.text(2.45, 1.4, r"$Y$", color=STATEMENT, fontsize=12)
fig.tight_layout()
save_matplotlib(fig, "affine_group_fields")
