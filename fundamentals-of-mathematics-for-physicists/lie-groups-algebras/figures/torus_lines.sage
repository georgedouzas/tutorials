# Lines t -> (t, 2t) (blue) and t -> (t, sqrt(2) t), 0 <= t <= 40 (red), in the square of angles [0, 2 pi)^2 of the torus.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
fig, ax = plt.subplots(figsize=(4.0, 4.0))
def draw(slope, tmax, color, lw):
    t = np.linspace(0, tmax, 20000)
    x, y = np.mod(t, 2 * np.pi), np.mod(slope * t, 2 * np.pi)
    jump = np.concatenate([[False], (np.abs(np.diff(x)) > 1) | (np.abs(np.diff(y)) > 1)])
    x, y = x.astype(float), y.astype(float); x[jump] = np.nan; y[jump] = np.nan
    ax.plot(x, y, color=color, lw=lw)
draw(np.sqrt(2), 40, STATEMENT, 0.8)
draw(2, 2 * np.pi, ACCENT, 2.2)
ax.set_xlim(0, 2 * np.pi); ax.set_ylim(0, 2 * np.pi); ax.set_aspect("equal")
ax.set_xticks([0, np.pi, 2 * np.pi]); ax.set_xticklabels([r"$0$", r"$\pi$", r"$2\pi$"])
ax.set_yticks([0, np.pi, 2 * np.pi]); ax.set_yticklabels([r"$0$", r"$\pi$", r"$2\pi$"])
ax.set_xlabel(r"$\alpha$"); ax.set_ylabel(r"$\beta$")
fig.tight_layout()
save_matplotlib(fig, "torus_lines")
