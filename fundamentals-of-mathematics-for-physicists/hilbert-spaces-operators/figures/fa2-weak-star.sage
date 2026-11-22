# Left: the bumps n 1_[0, 1/n] for n = 2, 4, 8, which converge weak-* to delta_0 on C[0, 1].
# Right: fraction of the time 0 <= t <= 200 that x(t) = cos t spends in each of 40 bins of [-1, 1], divided by the
# bin width, against the arcsine density 1 / (pi sqrt(1 - x^2)).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

T = 200.0
edges = np.linspace(-1, 1, 41)
# exact time spent in [u, v] during [0, T]: measure of {t : u <= cos t <= v}; sample finely instead and check
ts = np.linspace(0, T, 4000001)
hist, _ = np.histogram(np.cos(ts), bins=edges)
dens = hist / len(ts) / (edges[1] - edges[0])
mid = (edges[:-1] + edges[1:]) / 2
# check against the exact bin probabilities of the arcsine law (arccos differences / pi)
exact = (np.arccos(edges[:-1]) - np.arccos(edges[1:])) / np.pi / (edges[1] - edges[0])
assert np.max(np.abs(dens - exact)) < 0.12, np.max(np.abs(dens - exact))

fig, (a, b) = plt.subplots(1, 2, figsize=(9.5, 3.6))
for n, col in zip((2, 4, 8), (ACCENT, EXAMPLE, STATEMENT)):
    a.step([0, 0, 1 / n, 1 / n, 1], [0, n, n, 0, 0], where="post", color=col, lw=1.3, label=r"$n = %d$" % n)
a.set_xlim(-0.03, 1); a.set_ylim(0, 9)
a.legend(loc="upper right", fontsize=9, frameon=False)
b.bar(mid, dens, width=edges[1] - edges[0], color=ACCENT, alpha=0.35, edgecolor=ACCENT, lw=0.5, label=r"time fraction, $T = 200$")
xx = np.linspace(-0.995, 0.995, 600)
b.plot(xx, 1 / (np.pi * np.sqrt(1 - xx**2)), color=STATEMENT, lw=1.3, label=r"$1/(\pi\sqrt{1 - x^2})$")
b.set_ylim(0, 3.2); b.set_xlim(-1.05, 1.05)
b.legend(loc="upper center", fontsize=9, frameon=False)
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-weak-star")
