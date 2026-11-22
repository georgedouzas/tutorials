# Roots of B2 = so(5) and C2 = usp(4) from Sage's ambient root systems, long roots red, short blue, Weyl mirrors dashed.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
fig, axes = plt.subplots(1, 2, figsize=(7.4, 3.8))
for ax, t, name in zip(axes, ["B", "C"], [r"$B_2$", r"$C_2$"]):
    R = [tuple(float(x) for x in r.to_vector()) for r in RootSystem([t, 2]).ambient_space().roots()]
    assert len(R) == 8
    L = max(x*x + y*y for x, y in R)
    for x, y in R:
        nx, ny = -y, x; s = 2.6 / (x*x + y*y)**0.5
        ax.plot([-s*nx, s*nx], [-s*ny, s*ny], color=GRID, lw=0.8, ls="--", zorder=1)
    for x, y in R:
        col = STATEMENT if abs(x*x + y*y - L) < 1e-9 else ACCENT
        ax.annotate("", xy=(x, y), xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=col, lw=1.5), zorder=3)
    ax.set_xlim(-2.6, 2.6); ax.set_ylim(-2.6, 2.6); ax.set_aspect("equal"); ax.axis("off")
    ax.set_title(name, color=INK)
fig.tight_layout()
save_matplotlib(fig, "classical_rank_two")
