# The resolvent norm 1/dist(z, {0, 1, 4, 9, ...}) along z = 2 + iy, against the bound 1/|y| for self-adjoint operators.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

ys = np.linspace(0.08, 4, 500)
eig = np.array([n ** 2 for n in range(0, 20)])
exact = np.array([1 / np.min(np.abs(eig - (2 + 1j * y))) for y in ys])
fig, ax = plt.subplots(figsize=(6.2, 3.6))
ax.plot(ys, 1 / ys, color=MUTED, lw=1.2, label=r"bound $1/|y|$")
ax.plot(ys, exact, color=ACCENT, lw=2.2, label=r"$\|R_z\|$, $z = 2 + iy$")
ax.set_xlabel(r"$y = \mathrm{Im}\, z$"); ax.set_ylim(0, 3.2)
ax.legend(loc="upper right", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "unb-resolvent-norm")
