# The indicator of [-1, 1] and its transform U chi = sqrt(2/pi) sin(k)/k; both have squared L^2 norm 2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

k = np.linspace(-30, 30, 60001)
Uchi = np.sqrt(2 / np.pi) * np.sinc(k / np.pi)          # np.sinc(t) = sin(pi t)/(pi t)
tail = 2 * np.sqrt(2 / np.pi)**2 / 30                   # bound on the squared mass beyond |k| = 30
assert abs(np.trapezoid(Uchi**2, k) - 2) < tail + 1e-3

fig, ax = plt.subplots(figsize=(8, 3.6))
x = np.linspace(-3, 3, 3001)
ax.plot(x, (np.abs(x) <= 1).astype(float), color=ACCENT, lw=1.6, label=r"$\chi_{[-1, 1]}(x)$")
kk = np.linspace(-15, 15, 6001)
ax.plot(kk, np.sqrt(2 / np.pi) * np.sinc(kk / np.pi), color=STATEMENT, lw=1.3, label=r"$U\chi(k) = \sqrt{2/\pi}\,\sin k/k$")
ax.axhline(0, color=GRID, lw=0.8)
ax.set_xlim(-15, 15); ax.set_ylim(-0.35, 1.25); ax.legend(loc="upper right", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-plancherel-box")
