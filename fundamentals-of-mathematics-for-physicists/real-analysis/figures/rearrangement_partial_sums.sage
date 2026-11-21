# Partial sums of the alternating harmonic series 1 - 1/2 + 1/3 - ... (tending to log 2) and of its rearrangement
# with one positive term followed by two negative ones (tending to (1/2) log 2), for the first 60 terms.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

M = 60
orig = [QQ((-1)^(k + 1)) / k for k in range(1, M + 1)]
rear, p, q = [], 1, 2
while len(rear) < M:
    rear.append(QQ(1) / p); p += 2
    rear.append(-QQ(1) / q); q += 2
    rear.append(-QQ(1) / q); q += 2
rear = rear[:M]
s1 = [float(sum(orig[:n])) for n in range(1, M + 1)]
s2 = [float(sum(rear[:n])) for n in range(1, M + 1)]
ns = list(range(1, M + 1))
fig, ax = plt.subplots(figsize=(6.6, 3.7))
ax.hlines(float(log(2)), 0, 60, color=ACCENT, lw=0.8, ls=(0, (5, 3)))
ax.hlines(float(log(2) / 2), 0, 60, color=STATEMENT, lw=0.8, ls=(0, (5, 3)))
ax.plot(ns, s1, "o-", ms=2.8, lw=0.7, color=ACCENT)
ax.plot(ns, s2, "o-", ms=2.8, lw=0.7, color=STATEMENT)
ax.text(62, float(log(2)), r"$\log 2$", color=ACCENT, fontsize=11, va="center")
ax.text(62, float(log(2) / 2), r"$\frac{1}{2}\log 2$", color=STATEMENT, fontsize=11, va="center")
ax.text(14, 0.86, r"$1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots$", color=ACCENT, fontsize=10.5)
ax.text(14, 0.12, r"$1 - \frac{1}{2} - \frac{1}{4} + \frac{1}{3} - \frac{1}{6} - \frac{1}{8} + \cdots$", color=STATEMENT, fontsize=10.5)
ax.set_xlabel("number of terms"); ax.set_xlim(0, 72); ax.set_ylim(0, 1.05)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "rearrangement_partial_sums")
