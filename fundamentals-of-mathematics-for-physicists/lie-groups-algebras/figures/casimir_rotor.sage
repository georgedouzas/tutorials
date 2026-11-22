# Levels E_j = j(j+1)/2I of a spherical rotor (units 1/I) for j = 0..5, line width proportional to the degeneracy 2j+1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(4.6, 4.2))
for j in range(6):
    E = j * (j + 1) / 2
    w = (2 * j + 1) / 11
    ax.plot([0.5 - w / 2, 0.5 + w / 2], [E, E], color=ACCENT, lw=2.2)
    ax.text(0.5 + w / 2 + 0.04, E, r"$j = %d$" % j, va="center", fontsize=10, color=INK)
    ax.text(0.5 - w / 2 - 0.04, E, r"$%d$" % (2 * j + 1), va="center", ha="right", fontsize=9, color=MUTED)
ax.set_xlim(-0.15, 1.2); ax.set_ylim(-1, 16.5)
ax.set_xticks([]); ax.set_ylabel(r"$E_j\;\;(1/\mathcal{I})$")
for s in ["right", "top", "bottom"]:
    ax.spines[s].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "casimir_rotor")
