# Heat trace of the unit sphere: Z(t) - 1/t - 1/3 against t/15 for 0 < t <= 0.5, Z(t) = sum_l (2l+1) e^{-t l(l+1)}.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
ts = np.linspace(0.01, 0.5, 200)
ls = np.arange(0, 400)
Z = np.array([np.sum((2 * ls + 1) * np.exp(-t * ls * (ls + 1.0))) for t in ts])
fig, ax = plt.subplots(figsize=(5.6, 3.6))
ax.plot(ts, Z - 1 / ts - 1 / 3, color=ACCENT, lw=1.8, label=r"$Z(t) - \frac{1}{t} - \frac{1}{3}$")
ax.plot(ts, ts / 15, color=STATEMENT, lw=1.2, ls="--", label=r"$t/15$")
ax.set_xlabel(r"$t$"); ax.legend(frameon=False, loc="upper left")
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "trc-sphere-heat-trace")
