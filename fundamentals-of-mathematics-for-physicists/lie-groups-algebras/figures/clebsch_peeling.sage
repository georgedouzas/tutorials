# The weights of V_1 (x) V_1 with multiplicities 1, 2, 3, 2, 1, sorted into the strings of spin 2, 1, 0 (one row each).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from collections import Counter
mult = Counter(a + b for a in (1, 0, -1) for b in (1, 0, -1))
assert [mult[m] for m in (2, 1, 0, -1, -2)] == [1, 2, 3, 2, 1]
fig, ax = plt.subplots(figsize=(5.4, 3.0))
rows = [(2, ACCENT, r"spin $2$"), (1, STATEMENT, r"spin $1$"), (0, EXAMPLE, r"spin $0$")]
used = Counter()
for J, c, lab in rows:
    for m in range(-J, J + 1):
        used[m] += 1
        ax.scatter([m], [used[m]], s=90, color=c, zorder=3)
    ax.text(2.6, {2: 1, 1: 2, 0: 3}[J], lab, va="center", fontsize=11, color=c)
assert used == mult
ax.set_xticks([-2, -1, 0, 1, 2]); ax.set_yticks([1, 2, 3])
ax.set_xlim(-2.6, 3.6); ax.set_ylim(0.4, 3.6)
ax.set_xlabel(r"weight $m$"); ax.set_ylabel("multiplicity")
for s in ["right", "top"]:
    ax.spines[s].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "clebsch_peeling")
