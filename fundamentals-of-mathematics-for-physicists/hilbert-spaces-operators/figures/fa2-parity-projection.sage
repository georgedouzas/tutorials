# Parity projection on L^2[-1, 1]: f(x) = e^x splits into its even part Pf = cosh x and odd part (1 - P)f = sinh x,
# which are orthogonal, with ||f||^2 = ||cosh||^2 + ||sinh||^2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
assert abs(integrate(cosh(x)*sinh(x), x, -1, 1)) < 1e-14
assert abs(integrate(exp(2*x), x, -1, 1) - integrate(cosh(x)^2 + sinh(x)^2, x, -1, 1)) < 1e-12
xs = np.linspace(-1, 1, 401)
fig, ax = plt.subplots(figsize=(6.2, 3.8))
ax.plot(xs, np.exp(xs), color=ACCENT, lw=1.8)
ax.plot(xs, np.cosh(xs), color=STATEMENT, lw=1.5, ls="--")
ax.plot(xs, np.sinh(xs), color=EXAMPLE, lw=1.5, ls="-.")
ax.text(0.55, 2.25, r"$f(x) = e^x$", color=ACCENT, fontsize=11)
ax.text(-0.95, 1.75, r"$Pf = \cosh x$", color=STATEMENT, fontsize=11)
ax.text(0.35, -0.55, r"$(1 - P)f = \sinh x$", color=EXAMPLE, fontsize=11)
ax.axhline(0, color=GRID, lw=0.8)
ax.set_xlabel(r"$x$"); ax.set_xlim(-1, 1); ax.set_ylim(-1.3, 2.8)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-parity-projection")
