# Three sequences and their epsilon-bands (epsilon = 0.3): 1/n and (-1)^n/n tend to 0, (2n + 1)/(n + 3) tends to 2.
# The first index N from which every term stays in the band is marked for each limit.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

eps = 0.3
ns = list(range(1, 31))
seqs = [(lambda n: 1 / n, r"$1/n$", ACCENT, 0),
        (lambda n: (-1)^n / n, r"$(-1)^n/n$", EXAMPLE, 0),
        (lambda n: (2 * n + 1) / (n + 3), r"$(2n+1)/(n+3)$", STATEMENT, 2)]


def first_index(f, L):
    return next(N for N in ns if all(abs(f(QQ(m)) - L) < eps for m in range(N, 200)))


fig, ax = plt.subplots(figsize=(6.6, 3.8))
for L, col in ((0, ACCENT), (2, STATEMENT)):
    ax.axhspan(L - eps, L + eps, color=col, alpha=0.10, lw=0)
    ax.axhline(L, color=col, lw=0.8, ls=(0, (4, 3)))
for f, lab, col, L in seqs:
    ax.plot(ns, [float(f(QQ(n))) for n in ns], "o", ms=3.6, color=col, label=lab)
N0 = first_index(seqs[0][0], 0)
N1 = first_index(seqs[1][0], 0)
N2 = first_index(seqs[2][0], 2)
assert (N0, N1, N2) == (4, 4, 14), (N0, N1, N2)
ax.axvline(N0, color=ACCENT, lw=0.8, ls=":")
ax.axvline(N2, color=STATEMENT, lw=0.8, ls=":")
ax.text(N0 + 0.3, 1.05, "$N = 4$", color=ACCENT, fontsize=10)
ax.text(N2 + 0.3, 1.05, "$N = 14$", color=STATEMENT, fontsize=10)
ax.set_xlabel("$n$")
ax.set_xlim(0, 31); ax.set_ylim(-0.65, 2.45)
ax.legend(loc="center right", frameon=False, fontsize=10, bbox_to_anchor=(1.0, 0.55))
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "sequence_limits")

traces = []
for f, lab, col, L in seqs:
    traces.append({"x": floats(ns), "y": [float(f(QQ(n))) for n in ns], "mode": "markers", "name": lab.strip("$"),
                   "marker": {"color": col, "size": 6}})
for L, col in ((0, ACCENT), (2, STATEMENT)):
    for s in (-1, 1):
        traces.append({"x": [0, 31], "y": [L + s * eps] * 2, "mode": "lines", "showlegend": False,
                       "line": {"color": col, "dash": "dot", "width": 1}})
save_plotly(traces, "sequence_limits", {"xaxis": {"title": "n"}})
