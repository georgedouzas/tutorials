# Left: 1/x^2 and 1/x on [1, 8]; int_1^b dx/x^2 = 1 - 1/b tends to 1, int_1^b dx/x = log b grows without bound.
# Right: 1/sqrt(x) and 1/x on (0, 1]; int_c^1 dx/sqrt(x) = 2 - 2 sqrt(c) tends to 2, int_c^1 dx/x = -log c grows.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

x, b, c = var("x b c")
assume(b > 1, c > 0, c < 1)
assert bool(integrate(x^-2, x, 1, b) == 1 - 1 / b) and bool(integrate(x^(-1 / 2), x, c, 1) == 2 - 2 * sqrt(c))
fig, (a1, a2) = plt.subplots(1, 2, figsize=(8.6, 3.4))
xs = [1 + k * 7.0 / 500 for k in range(501)]
a1.fill_between(xs, [1 / t**2 for t in xs], color=ACCENT, alpha=0.25)
a1.plot(xs, [1 / t**2 for t in xs], color=ACCENT, lw=1.8)
a1.plot(xs, [1 / t for t in xs], color=STATEMENT, lw=1.8)
a1.text(1.5, 0.15, "$1/x^2$", color=ACCENT, fontsize=12)
a1.text(4.6, 0.3, "$1/x$", color=STATEMENT, fontsize=12)
a1.set_xlim(0.8, 8.2); a1.set_ylim(0, 1.1); a1.set_xlabel("$x$")
zs = [0.004 + k * 0.996 / 500 for k in range(501)]
a2.fill_between(zs, [1 / math.sqrt(t) for t in zs], color=ACCENT, alpha=0.25)
a2.plot(zs, [1 / math.sqrt(t) for t in zs], color=ACCENT, lw=1.8)
a2.plot(zs, [1 / t for t in zs], color=STATEMENT, lw=1.8)
a2.text(0.62, 2.6, r"$1/\sqrt{x}$", color=ACCENT, fontsize=12)
a2.text(0.13, 9.0, "$1/x$", color=STATEMENT, fontsize=12)
a2.set_xlim(0, 1.02); a2.set_ylim(0, 12); a2.set_xlabel("$x$")
for ax in (a1, a2):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "improper_power")
