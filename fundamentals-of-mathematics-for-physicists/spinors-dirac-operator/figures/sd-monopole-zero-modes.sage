load("../../_filters/figstyle.sage")
# Densities |psi_k|^2 = sin^(2k)(theta/2) cos^(2(M-1-k))(theta/2) of the M = 4 zero modes on the unit sphere,
# normalised so that 2 pi int |psi_k|^2 sin(theta) dtheta = 1.
import matplotlib.pyplot as plt
import numpy as np
from math import factorial
M = 4; th = np.linspace(0, np.pi, 300)
fig, ax = plt.subplots(figsize=(5.8, 3.6))
for k in range(M):
    norm = 4*np.pi*factorial(k)*factorial(M - 1 - k)/factorial(M)
    ax.plot(th, np.sin(th/2)**(2*k)*np.cos(th/2)**(2*(M - 1 - k))/norm, color=SERIES[k], lw=1.8, label=r"$k = %d$" % k)
ax.set_xticks([0, np.pi/2, np.pi]); ax.set_xticklabels([r"$0$", r"$\pi/2$", r"$\pi$"]); ax.set_xlabel(r"$\theta$")
ax.set_ylabel(r"$|\psi_k|^2$")
for s in ("top", "right"): ax.spines[s].set_visible(False)
ax.legend(frameon=False, ncol=4, loc="upper center", bbox_to_anchor=(0.5, -0.22), fontsize=9)
fig.tight_layout()
print("norms 4 pi k!(M-1-k)!/M!:", [round(4*np.pi*factorial(k)*factorial(M - 1 - k)/factorial(M), 4) for k in range(M)])
save_matplotlib(fig, "sd-monopole-zero-modes")
