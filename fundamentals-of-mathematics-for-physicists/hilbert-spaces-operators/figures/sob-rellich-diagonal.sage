# Left: diagonal entries (1 + k^2)^{-1/2} of the inclusion H^1(T^1) -> L^2(T^1) against k, and the entries 1 of the
# identity. Right: translates phi(x - m), m = 0, 3, 6, 9, of the bump phi(x) = exp(-1/(1 - x^2)) on (-1, 1).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

ks = np.arange(-15, 16)
xs = np.linspace(-2, 11, 6001)
def bump(t):
    out = np.zeros_like(t); m = np.abs(t) < 1
    out[m] = np.exp(-1 / (1 - t[m]**2)); return out
norms = [np.trapezoid(bump(xs - m)**2, xs) for m in (0, 3, 6, 9)]
assert max(norms) - min(norms) < 1e-8
fig, (a, b) = plt.subplots(1, 2, figsize=(10, 3.4))
a.plot(ks, np.ones_like(ks, dtype=float), "s", color=MUTED, ms=3.5, label="identity")
a.plot(ks, (1 + ks**2.0)**-0.5, "o", color=ACCENT, ms=4, label=r"$(1 + k^2)^{-1/2}$")
a.set_xlabel("$k$"); a.set_ylim(0, 1.6); a.legend(loc="upper right", fontsize=9, frameon=False, ncol=2)
for m, col in zip((0, 3, 6, 9), (ACCENT, EXAMPLE, ORANGE, STATEMENT)):
    b.plot(xs, bump(xs - m), color=col, lw=1.4, label=r"$m = %d$" % m)
b.set_xlabel("$x$"); b.set_ylim(0, 0.55); b.legend(loc="upper right", fontsize=9, frameon=False, ncol=4)
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "sob-rellich-diagonal")
