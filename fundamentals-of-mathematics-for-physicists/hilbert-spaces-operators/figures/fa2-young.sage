# Young's inequality st <= s^p/p + t^q/q for p = 3: the areas under and to the left of the curve t = s^(p-1) cover
# the rectangle [0, s] x [0, t].
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

p = 3.0; q = p/(p - 1)
s0, t0 = 1.2, 1.0
assert s0*t0 <= s0**p/p + t0**q/q
u = np.linspace(0, 1.45, 400)
fig, ax = plt.subplots(figsize=(4.8, 4.0))
ax.plot(u, u**(p - 1), color=INK, lw=1.4, label=r"$t = s^{p-1}$")
uu = np.linspace(0, s0, 200)
ax.fill_between(uu, 0, uu**(p - 1), color=ACCENT, alpha=0.25, label=r"area $s^p/p$")
v = np.linspace(0, t0, 200)
ax.fill_betweenx(v, 0, v**(q - 1), color=ORANGE, alpha=0.25, label=r"area $t^q/q$")
ax.plot([0, s0, s0, 0, 0], [0, 0, t0, t0, 0], color=STATEMENT, lw=1.2, ls="--", label=r"rectangle $st$")
ax.set_xlim(0, 1.5); ax.set_ylim(0, 2.1)
ax.set_xlabel("$s$"); ax.set_ylabel("$t$")
ax.legend(fontsize=9, frameon=False, loc="upper left")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-young")
