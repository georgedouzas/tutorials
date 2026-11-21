# The Newton iterates x_{k+1} = (x_k + 2/x_k)/2 from x_1 = 2: rationals that approach sqrt(2), which is not rational.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

xs = [QQ(2)]
for k in range(5):
    xs.append((xs[-1] + 2 / xs[-1]) / 2)
fig, ax = plt.subplots(figsize=(6.4, 3.4))
s = float(sqrt(2))
ax.plot([0.6, 6.6], [s, s], color=STATEMENT, lw=1.2, ls=(0, (5, 3)))
ax.text(6.55, s + 0.06, r"$\sqrt{2} \notin \mathbb{Q}$", color=STATEMENT, ha="right", fontsize=12)
ax.plot(range(1, 7), [float(x) for x in xs], "o-", color=ACCENT, ms=6, lw=1.2)
for k, lab in ((1, "$2$"), (2, "$3/2$"), (3, "$17/12$"), (4, "$577/408$")):
    ax.text(k + 0.12, float(xs[k - 1]) + 0.035, lab, fontsize=11, color=ACCENT)
ax.set_xticks(range(1, 7)); ax.set_xticklabels(["$x_%d$" % k for k in range(1, 7)])
ax.set_yticks([1.4, 1.6, 1.8, 2.0])
ax.set_xlim(0.6, 6.7); ax.set_ylim(1.33, 2.12)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "cauchy_sqrt2")
