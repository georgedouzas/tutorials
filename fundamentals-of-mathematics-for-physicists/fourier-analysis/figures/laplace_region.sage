# The half-plane of convergence Re s > -1 of the transform (s + 1)/((s + 1)^2 + 4) of e^{-t} cos 2t,
# its poles -1 +- 2i on the boundary line, and a vertical line Re s = sigma inside the half-plane.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

s, t = var("s t")
F = laplace(exp(-t)*cos(2*t), t, s)
assert bool((F - (s + 1)/((s + 1)^2 + 4)).simplify_full() == 0)
poles = [complex(p) for p in solve((s + 1)^2 + 4 == 0, s, solution_dict=False) for p in [p.rhs()]]

fig, ax = plt.subplots(figsize=(4.6, 4.0))
ax.axvspan(-1, 3, color=ACCENT, alpha=0.12, lw=0)
ax.axvline(-1, color=ACCENT, lw=1.2, ls="--")
ax.axvline(1.2, color=EXAMPLE, lw=1.4)
ax.axhline(0, color=GRID, lw=0.8); ax.axvline(0, color=GRID, lw=0.8)
ax.plot([p.real for p in poles], [p.imag for p in poles], "x", color=STATEMENT, ms=9, mew=2)
ax.text(-0.85, 2.15, r"$-1 + 2i$", color=STATEMENT, fontsize=10)
ax.text(-0.85, -2.45, r"$-1 - 2i$", color=STATEMENT, fontsize=10)
ax.text(1.32, 3.1, r"$\mathrm{Re}\, s = \sigma$", color=EXAMPLE, fontsize=10)
ax.text(1.5, -1.0, r"$\mathrm{Re}\, s > -1$", color=ACCENT, fontsize=10)
ax.set_xlim(-3, 3); ax.set_ylim(-3.6, 3.6)
ax.set_xlabel(r"$\mathrm{Re}\, s$"); ax.set_ylabel(r"$\mathrm{Im}\, s$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "laplace_region")
