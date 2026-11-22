# The curves theta -> phi(e^{i theta}) for the symbols z, z^2, z - 1/2, z^{-1}, 2 + z, with the origin marked and
# the winding numbers about 0 in the titles.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

th = np.linspace(0, 2 * np.pi, 801)
z = np.exp(1j * th)
cases = [(r"$z$", z, 1), (r"$z^2$", z ** 2, 2), (r"$z - 1/2$", z - 0.5, 1), (r"$z^{-1}$", 1 / z, -1), (r"$2 + z$", 2 + z, 0)]
fig, axes = plt.subplots(1, 5, figsize=(12.5, 2.9))
for ax, (lab, w, n) in zip(axes, cases):
    wn = np.sum(np.diff(np.unwrap(np.angle(w)))) / (2 * np.pi)
    assert abs(wn - n) < 1e-9
    ax.plot(w.real, w.imag, color=ACCENT, lw=1.6)
    i0 = 100
    ax.annotate("", xy=(w.real[i0 + 8], w.imag[i0 + 8]), xytext=(w.real[i0], w.imag[i0]),
                arrowprops=dict(arrowstyle="->", color=ACCENT, lw=1.6))
    ax.plot([0], [0], "o", color=STATEMENT, ms=5)
    ax.axhline(0, color=GRID, lw=0.8, zorder=0); ax.axvline(0, color=GRID, lw=0.8, zorder=0)
    ax.set_xlim(-1.7, 3.3); ax.set_ylim(-1.7, 1.7); ax.set_aspect("equal")
    ax.set_title(lab + r", wind $= %d$" % n, fontsize=10)
    ax.set_xticks([-1, 0, 1, 2, 3]); ax.set_yticks([-1, 0, 1])
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-winding-number")
