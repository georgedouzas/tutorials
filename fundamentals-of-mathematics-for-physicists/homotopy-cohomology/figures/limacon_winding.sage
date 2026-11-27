# The limacon gamma(s) = (1/2 + cos 2 pi s) e^{2 pi i s} and its winding numbers around a = 0.25 (inner loop, n = 2),
# a = 1 (between the loops, n = 1) and a = -0.6 + 0.6i (outside, n = 0); the numbers are recomputed and printed.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

s = np.linspace(0, 1, 2000)
g = (0.5 + np.cos(2 * np.pi * s)) * np.exp(2j * np.pi * s)

def wind(a):
    d = np.angle((g[1:] - a) / (g[:-1] - a))
    return int(round(d.sum() / (2 * np.pi)))

pts = [(complex(0.25, 0), (0.25, 0.04)), (complex(1.0, 0), (1.0, 0.12)), (complex(-0.6, 0.6), (-0.6, 0.72))]
fig, ax = plt.subplots(figsize=(4.8, 3.9))
ax.plot(g.real, g.imag, color=ACCENT, lw=2)
for a, (lx, ly) in pts:
    n = wind(a)
    print("winding number around", a, "=", n)
    ax.plot([a.real], [a.imag - (0.05 if a == complex(0.25, 0) else 0)], "o", color=STATEMENT, ms=4)
    ax.text(lx, ly, r"$n = %d$" % n, color=STATEMENT, ha="center", fontsize=9 if n == 2 else 11)
k = 300
ax.annotate("", xy=(g[k + 5].real, g[k + 5].imag), xytext=(g[k].real, g[k].imag),
            arrowprops=dict(arrowstyle="-|>", color=ACCENT, lw=1.5))
ax.set_aspect("equal"); ax.axis("off")
ax.set_xlim(-1.0, 1.7); ax.set_ylim(-1.2, 1.2)
fig.tight_layout()
save_matplotlib(fig, "limacon_winding")
