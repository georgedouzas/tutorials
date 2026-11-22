# Hueckel levels of benzene: eigenvalues -2 t cos(2 pi j / 6) of -t (T + T^-1) on the ring of six sites, t = 1,
# each drawn as a level labelled by the crystal momentum j.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

N = 6
T = matrix(QQ, N, N, lambda a, b: 1 if a == (b + 1) % N else 0)
H = -(T + T.inverse())
ev = sorted(H.eigenvalues())
levels = {}
for j in range(N):
    levels.setdefault(-2 * cos(2 * pi * j / N), []).append(j)
assert sorted(sum([[E] * len(js) for E, js in levels.items()], [])) == ev
fig, ax = plt.subplots(figsize=(4.4, 3.6))
for E, js in levels.items():
    E = float(E); n = len(js)
    for k, j in enumerate(js):
        x0 = -0.5 * n + k * 1.0 + 0.1
        ax.plot([x0, x0 + 0.8], [E, E], color=ACCENT, lw=2.2)
        ax.text(x0 + 0.4, E + 0.12, "$j=%d$" % j, ha="center", va="bottom", fontsize=10, color=INK)
ax.set_xlim(-1.6, 1.6); ax.set_ylim(-2.5, 2.6)
ax.set_xticks([]); ax.set_ylabel("energy / $t$")
for side in ["top", "right", "bottom"]:
    ax.spines[side].set_visible(False)
ax.set_yticks([-2, -1, 0, 1, 2])
save_matplotlib(fig, "benzene_levels")
