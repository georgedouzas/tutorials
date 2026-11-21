# Partial sums s_n of sum 2^-k (limit 1), sum 1/k^2 (a limit L, drawn at its value) and sum 1/k (diverges, close to log n + gamma),
# for n <= 40, with the two limits dashed and log n + gamma dotted.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

ns = list(range(1, 41))
geo = [float(1 - QQ(1) / 2^n) for n in ns]
basel = [float(sum(QQ(1) / k^2 for k in range(1, n + 1))) for n in ns]
harm = [float(sum(QQ(1) / k for k in range(1, n + 1))) for n in ns]
gam = [float(log(n) + euler_gamma) for n in ns]
assert abs(harm[-1] - gam[-1]) < 1 / 40.0          # H_n - log n - gamma lies in (0, 1/n)

fig, ax = plt.subplots(figsize=(6.6, 3.9))
ax.axhline(1, color=ACCENT, lw=0.8, ls=(0, (5, 3)))
ax.axhline(float(pi^2 / 6), color=EXAMPLE, lw=0.8, ls=(0, (5, 3)))
ax.plot(ns, gam, color=STATEMENT, lw=1.0, ls=":")
ax.plot(ns, geo, "o-", ms=3, lw=0.8, color=ACCENT)
ax.plot(ns, basel, "o-", ms=3, lw=0.8, color=EXAMPLE)
ax.plot(ns, harm, "o-", ms=3, lw=0.8, color=STATEMENT)
ax.text(41, 0.93, r"$1$", color=ACCENT, fontsize=11, va="top")
ax.text(41, float(pi^2 / 6) + 0.05, r"$L$", color=EXAMPLE, fontsize=11, va="bottom")
ax.text(25, 0.62, r"$\sum 2^{-k}$", color=ACCENT, fontsize=11)
ax.text(25, 1.83, r"$\sum 1/k^2$", color=EXAMPLE, fontsize=11)
ax.text(16, 3.75, r"$\sum 1/k$", color=STATEMENT, fontsize=11)
ax.annotate(r"$\log n + \gamma$", xy=(9, float(log(9) + euler_gamma) - 0.03), xytext=(12.5, 2.3), color=STATEMENT,
            fontsize=10, arrowprops={"arrowstyle": "->", "color": STATEMENT, "lw": 0.7})
ax.set_xlabel("$n$"); ax.set_ylabel("$s_n$")
ax.set_xlim(0, 45); ax.set_ylim(0, 4.6)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "series_partial_sums")

traces = [{"x": floats(ns), "y": ys, "mode": "markers+lines", "name": lab, "line": {"color": col, "width": 1},
           "marker": {"size": 5}} for ys, lab, col in ((geo, "sum 2^-k", ACCENT), (basel, "sum 1/k^2", EXAMPLE),
                                                       (harm, "sum 1/k", STATEMENT))]
traces.append({"x": floats(ns), "y": gam, "mode": "lines", "name": "log n + gamma",
               "line": {"color": STATEMENT, "dash": "dot", "width": 1}})
save_plotly(traces, "series_partial_sums", {"xaxis": {"title": "n"}, "yaxis": {"title": "s_n"}})
