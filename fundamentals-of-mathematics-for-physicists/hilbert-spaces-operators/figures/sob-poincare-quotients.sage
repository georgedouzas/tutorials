# Four functions in H^1_0(0, 1) normalised in L^2, labelled with their ratios ||u'||^2/||u||^2: sin(pi x) (pi^2),
# x(1 - x) (10), the tent min(x, 1 - x) (12) and x^2(1 - x) (14).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = np.linspace(0, 1, 20001)
fs = [(np.sin(np.pi * xs), np.pi * np.cos(np.pi * xs), r"$\sin\pi x$"),
      (xs * (1 - xs), 1 - 2 * xs, r"$x(1 - x)$"),
      (np.minimum(xs, 1 - xs), np.where(xs < 0.5, 1.0, -1.0), r"tent"),
      (xs**2 * (1 - xs), 2 * xs - 3 * xs**2, r"$x^2(1 - x)$")]
fig, ax = plt.subplots(figsize=(6.4, 3.8))
for (u, du, lab), col, expected in zip(fs, (ACCENT, EXAMPLE, ORANGE, STATEMENT), (np.pi**2, 10, 12, 14)):
    n2 = np.trapezoid(u**2, xs); r = np.trapezoid(du**2, xs) / n2
    assert abs(r - expected) < 1e-3
    ax.plot(xs, u / np.sqrt(n2), color=col, lw=1.5, label=lab + r": $%.2f$" % r)
ax.set_xlabel("$x$"); ax.set_ylim(0, 2.3)
ax.legend(loc="upper left", fontsize=9, frameon=False, ncol=2)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "sob-poincare-quotients")
