# The sums s_n = sum_{k <= n} (-1)^(k+1)/k: they zigzag, each interval between consecutive sums contains all later ones,
# and its length 1/(n+1) bounds the gaps |s_m - s_n|.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

M = 24
s = [QQ(0)]
for k in range(1, M + 2):
    s.append(s[-1] + QQ((-1)^(k + 1)) / k)
fig, ax = plt.subplots(figsize=(6.4, 3.6))
for n in range(1, M + 1):
    lo, hi = sorted([float(s[n]), float(s[n + 1])])
    ax.plot([n, n], [lo, hi], color=EXAMPLE, lw=3.0, alpha=0.35, solid_capstyle="butt")
ax.plot(range(1, M + 1), [float(s[n]) for n in range(1, M + 1)], "-", color=ACCENT, lw=0.8, alpha=0.6)
ax.plot(range(1, M + 1), [float(s[n]) for n in range(1, M + 1)], "o", color=ACCENT, ms=4)
ax.text(4.6, 0.93, r"$s_n$", color=ACCENT, fontsize=12)
ax.text(9.0, 0.82, r"between $s_n$ and $s_{n+1}$: length $\frac{1}{n+1}$", color=EXAMPLE, fontsize=10)
ax.set_xlabel("$n$")
ax.set_xlim(0, M + 1); ax.set_ylim(0.45, 1.05)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "cauchy_alternating")
