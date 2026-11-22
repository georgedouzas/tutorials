# Spectra of the right shift S and the left shift L on l^2: both are the closed unit disc. For S the open disc is
# residual spectrum and the circle continuous spectrum; for L the open disc is point spectrum, the circle continuous.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

# check on truncations: (L - lam) applied to (1, lam, lam^2, ...) up to N terms has norm |lam|^N
lam = complex(0.5, 0.3); N = int(60)
a = lam ** np.arange(N + 1)
La = np.append(a[1:], 0)
assert abs(np.linalg.norm((La - lam*a)[:N]) - 0) < 1e-12
s = np.linspace(0, 2*np.pi, 400)
fig, axes = plt.subplots(1, 2, figsize=(9.5, 4.4))
for ax, title, inner, ilab in [(axes[0], r"$\sigma(S)$", EXERCISE, r"$\sigma_r(S)$: open disc"),
                               (axes[1], r"$\sigma(L)$", STATEMENT, r"$\sigma_p(L)$: open disc")]:
    ax.fill(np.cos(s), np.sin(s), color=inner, alpha=0.25, lw=0)
    ax.plot(np.cos(s), np.sin(s), color=ACCENT, lw=2.4)
    ax.text(-0.62, 0.05, ilab, color=inner, fontsize=11)
    ax.text(0.55, 1.05, "circle: continuous", color=ACCENT, fontsize=10)
    ax.axhline(0, color=GRID, lw=0.6); ax.axvline(0, color=GRID, lw=0.6)
    ax.set_aspect("equal"); ax.set_xlim(-1.4, 1.9); ax.set_ylim(-1.35, 1.35)
    ax.set_title(title, fontsize=12)
    ax.set_xlabel(r"$\mathrm{Re}\,\lambda$")
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
axes[0].set_ylabel(r"$\mathrm{Im}\,\lambda$")
fig.tight_layout()
save_matplotlib(fig, "fa2-shift-spectra")
