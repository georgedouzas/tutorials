# Three sequences of constant norm whose pairings with a fixed function tend to 0:
# left, sin(nx) on [0, 2pi] for n = 2, 8, with the test function g(x) = x / (2 pi) dashed;
# centre, the travelling bump exp(-(x - n)^2) for n = 0, 3, 6, with a fixed bump test function shaded;
# right, the spreading sequences u^(n) = n^(-1/2) (delta^(1) + ... + delta^(n)) of l^2 for n = 1, 4, 16.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

# checks: int_0^{2pi} x sin(nx) dx = -2 pi / n, and |u^(n)|_2 = 1
xs = np.linspace(0, 2 * np.pi, 20001)
for n in (2, 8):
    val = np.trapezoid(xs * np.sin(n * xs), xs)
    assert abs(val + 2 * np.pi / n) < 1e-6
for n in (1, 4, 16):
    assert abs(np.sqrt(n * (1 / np.sqrt(n))**2) - 1) < 1e-12

fig, (a, b, c) = plt.subplots(1, 3, figsize=(12, 3.6))
x = np.linspace(0, 2 * np.pi, 1200)
a.plot(x, np.sin(2 * x), color=ACCENT, lw=1.3, label=r"$\sin 2x$")
a.plot(x, np.sin(8 * x), color=STATEMENT, lw=1.0, label=r"$\sin 8x$")
a.plot(x, x / (2 * np.pi), color=INK, lw=1.0, ls="--", label=r"$g(x) = x/2\pi$")
a.set_xticks([0, np.pi, 2 * np.pi]); a.set_xticklabels(["0", r"$\pi$", r"$2\pi$"])
a.set_ylim(-1.25, 1.6)
a.legend(loc="upper center", ncol=3, fontsize=8.5, frameon=False)

t = np.linspace(-3, 9.5, 1200)
for n, col in zip((0, 3, 6), (ACCENT, EXAMPLE, STATEMENT)):
    b.plot(t, np.exp(-(t - n)**2), color=col, lw=1.3, label=r"$n = %d$" % n)
g = np.where(np.abs(t) < 1.5, np.cos(np.pi * t / 3)**2, 0)
b.fill_between(t, 0, 0.45 * g, color=MUTED, alpha=0.25, lw=0)
b.text(-2.8, 0.5, "test function", fontsize=8.5, color=MUTED)
b.set_ylim(0, 1.25)
b.legend(loc="upper right", fontsize=8.5, frameon=False)

for n, col, off in zip((1, 4, 16), (ACCENT, EXAMPLE, STATEMENT), (-0.25, 0.0, 0.25)):
    k = np.arange(1, n + 1)
    c.bar(k + off, np.full(n, 1 / np.sqrt(n)), width=0.25, color=col, label=r"$n = %d$" % n)
c.set_xlim(0, 17.5); c.set_ylim(0, 1.15)
c.set_xlabel(r"site $k$")
c.legend(loc="upper right", fontsize=8.5, frameon=False)
for ax in (a, b, c):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
a.axhline(0, color=GRID, lw=0.6)
fig.tight_layout()
save_matplotlib(fig, "fa2-weak-convergence")
