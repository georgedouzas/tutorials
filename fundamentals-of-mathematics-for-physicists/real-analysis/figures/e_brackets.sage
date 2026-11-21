# (1 + 1/n)^n increases and (1 + 1/n)^(n+1) decreases, and both tend to e, which lies between them for every n.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

ns = list(range(1, 21))
lo = [float((1 + QQ(1) / n)^n) for n in ns]
hi = [float((1 + QQ(1) / n)^(n + 1)) for n in ns]
fig, ax = plt.subplots(figsize=(6.0, 3.6))
ax.axhline(float(e), color=INK, lw=0.9, ls=(0, (5, 3)))
ax.plot(ns, lo, "o-", color=ACCENT, ms=4, lw=0.9)
ax.plot(ns, hi, "o-", color=STATEMENT, ms=4, lw=0.9)
ax.text(21.0, float(e), "$e$", va="center", fontsize=12)
ax.text(3.3, 2.15, r"$(1 + 1/n)^n$", color=ACCENT, fontsize=11)
ax.text(3.3, 3.3, r"$(1 + 1/n)^{n+1}$", color=STATEMENT, fontsize=11)
ax.set_xlabel("$n$")
ax.set_xticks([1, 5, 10, 15, 20])
ax.set_xlim(0.5, 21.8); ax.set_ylim(1.9, 4.1)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "e_brackets")
