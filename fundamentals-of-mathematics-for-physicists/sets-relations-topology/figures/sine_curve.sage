# The topologist's sine curve: the graph of sin(1/x) for 0 < x <= 1 together with the segment {0} x [-1, 1].
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import sin

xs = [1 / (1 + k / 40) for k in range(0, 40 * 400)]          # dense near 0: 1/x runs up to about 400
xs.append(1.0); xs.sort()
fig, ax = plt.subplots(figsize=(6.4, 3.2))
ax.plot(xs, [sin(1 / x) for x in xs], color=ACCENT, lw=0.8, label=r"graph of $\sin(1/x)$, $0 < x \leq 1$")
ax.plot([0, 0], [-1, 1], color=STATEMENT, lw=2.4, label=r"segment $\{0\} \times [-1, 1]$")
ax.axhline(0, color=GRID, lw=0.8, zorder=0)
ax.set_xlim(-0.05, 1.02); ax.set_ylim(-1.25, 1.25)
ax.set_xticks([0, 0.5, 1]); ax.set_yticks([-1, 0, 1])
for s in ("top", "right"):
    ax.spines[s].set_visible(False)
ax.legend(loc="upper center", bbox_to_anchor=(0.5, -0.12), ncol=2, frameon=False, fontsize=10)
save_matplotlib(fig, "sine_curve")
