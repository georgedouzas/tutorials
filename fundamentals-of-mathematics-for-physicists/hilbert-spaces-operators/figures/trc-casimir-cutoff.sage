# Cutoff energy of the Dirichlet interval, L = 1, minus its bulk term: exponential cutoff (pi/2) sum n e^{-eps pi n} - 1/(2 pi eps^2)
# and Gaussian cutoff (pi/2) sum n e^{-(eps pi n)^2} - 1/(4 pi eps^2), against -pi/24.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
es = np.linspace(0.02, 0.6, 300)
ns = np.arange(1, 20000)
Ee = np.array([np.pi / 2 * np.sum(ns * np.exp(-e * np.pi * ns)) - 1 / (2 * np.pi * e**2) for e in es])
Eg = np.array([np.pi / 2 * np.sum(ns * np.exp(-(e * np.pi * ns)**2)) - 1 / (4 * np.pi * e**2) for e in es])
fig, ax = plt.subplots(figsize=(5.8, 3.6))
ax.plot(es, Ee, color=ACCENT, lw=1.8, label="exponential cutoff")
ax.plot(es, Eg, color=EXAMPLE, lw=1.8, ls="-.", label="Gaussian cutoff")
ax.axhline(-np.pi / 24, color=STATEMENT, lw=1.2, ls="--", label=r"$-\pi/24$")
ax.set_xlabel(r"$\varepsilon$"); ax.legend(frameon=False, loc="lower left")
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "trc-casimir-cutoff")
