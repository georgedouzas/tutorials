# Stationary phase: the real part cos(lambda (x^3/3 - x)) of the integrand of the Airy integral at negative argument,
# for lambda = 30 on [-2.4, 2.4]. The stationary points x = -1 and x = 1 of x^3/3 - x are marked; near them the
# oscillation is slow, elsewhere the positive and negative lobes cancel.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

lam = 30
x = np.linspace(-2.4, 2.4, 4000)
fig, ax = plt.subplots(figsize=(6.4, 3.0))
ax.axhline(0, color=GRID, lw=0.7)
ax.plot(x, np.cos(lam * (x**3 / 3 - x)), color=ACCENT, lw=1.0)
for x0 in (-1, 1):
    ax.axvline(x0, color=STATEMENT, lw=0.9, ls=(0, (4, 3)))
ax.text(-0.92, -1.42, r"$x = -1$", color=STATEMENT, fontsize=10)
ax.text(1.08, -1.42, r"$x = 1$", color=STATEMENT, fontsize=10)
ax.set_xlim(-2.4, 2.4); ax.set_ylim(-1.55, 1.15)
ax.set_xlabel(r"$x$")
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "stationary_phase")
