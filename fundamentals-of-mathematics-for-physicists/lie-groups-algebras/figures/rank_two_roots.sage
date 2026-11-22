# The four root systems of rank two (A1xA1, A2, B2, G2) in the normal form of the classification, long roots red, short blue.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import cos, sin, pi, sqrt
def system(m, ratio):
    return [((ratio if j % 2 else 1.0) * cos(j*pi/m), (ratio if j % 2 else 1.0) * sin(j*pi/m)) for j in range(2*m)]
types = [(r"$A_1 \times A_1$", system(2, 1.0)), (r"$A_2$", system(3, 1.0)), (r"$B_2$", system(4, sqrt(2))), (r"$G_2$", system(6, sqrt(3)))]
for name, R in types:
    S = set((round(x, 9), round(y, 9)) for x, y in R)
    for ax_, ay_ in R:
        aa = ax_*ax_ + ay_*ay_
        for bx, by in R:
            n = 2*(bx*ax_ + by*ay_)/aa
            assert abs(n - round(n)) < 1e-9
            assert (round(bx - n*ax_, 9), round(by - n*ay_, 9)) in S
fig, axes = plt.subplots(1, 4, figsize=(9.6, 2.9))
for ax, (name, R) in zip(axes, types):
    L = max(x*x + y*y for x, y in R)
    for x, y in R:
        col = STATEMENT if abs(x*x + y*y - L) < 1e-9 and L > 1.0 + 1e-9 else ACCENT
        ax.annotate("", xy=(x, y), xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=col, lw=1.4))
    ax.set_xlim(-1.95, 1.95); ax.set_ylim(-1.95, 1.95); ax.set_aspect("equal"); ax.axis("off")
    ax.set_title(name, color=INK)
fig.tight_layout()
save_matplotlib(fig, "rank_two_roots")
