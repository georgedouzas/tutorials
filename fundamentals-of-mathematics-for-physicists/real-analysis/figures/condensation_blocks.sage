# Terms 1/k of the harmonic series for k <= 31, grouped in the blocks 2^m <= k < 2^(m+1). On each block the terms lie
# between 1/2^(m+1) and 1/2^m (steps), so each block sum lies between 1/2 and 1: Cauchy's condensation.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

ks = list(range(1, 32))
fig, ax = plt.subplots(figsize=(6.6, 3.5))
cols = [ACCENT, EXAMPLE]
for m in range(5):
    lo, hi = 2^m, 2^(m + 1)
    block = [k for k in ks if lo <= k < hi]
    ax.bar(block, [1.0 / k for k in block], width=0.75, color=cols[m % 2], alpha=0.75, lw=0)
    ax.hlines(1.0 / lo, lo - 0.45, hi - 0.55, color=STATEMENT, lw=1.3)
    ax.hlines(1.0 / hi, lo - 0.45, hi - 0.55, color=INK, lw=1.0, ls=(0, (3, 2)))
    ax.text((lo + hi - 1) / 2 + (1.2 if m == 0 else 0), 1.0 / lo + 0.03, "$m = %d$" % m, ha="center", fontsize=9.5, color=MUTED)
ax.text(19, 0.55, r"block $2^m \leq k < 2^{m+1}$:" + "\n" + r"$2^m$ terms between $2^{-m-1}$ and $2^{-m}$",
        fontsize=10, color=INK)
ax.set_xlabel("$k$"); ax.set_ylabel("$1/k$")
ax.set_xlim(0, 32.5); ax.set_ylim(0, 1.16)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "condensation_blocks")
