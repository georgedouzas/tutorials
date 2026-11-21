# The bound-state energies E_n = -13.6 eV / n^2 of hydrogen: the least element E_1 and the supremum 0, not attained,
# at which the levels accumulate.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(5.6, 4.0))
for n in range(1, 41):
    E = -13.6 / n^2
    ax.plot([0, 1], [E, E], color=ACCENT, lw=1.3 if n <= 6 else 0.8)
for n in range(1, 5):
    ax.text(1.05, -13.6 / n^2, "$n = %d$" % n, va="center", fontsize=10, color=ACCENT)
ax.plot([0, 1.9], [0, 0], color=STATEMENT, lw=1.2, ls=(0, (5, 3)))
ax.text(1.95, 0, r"$\sup = 0$, not attained", va="center", fontsize=10, color=STATEMENT)
ax.text(1.6, -13.6, r"$\min = \inf = E_1$", va="center", fontsize=10, color=EXAMPLE)
ax.set_xlim(-0.1, 3.6); ax.set_ylim(-14.6, 1.2)
ax.set_xticks([]); ax.set_ylabel(r"$E_n$ (eV)")
for side in ("top", "right", "bottom"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "sup_hydrogen")
