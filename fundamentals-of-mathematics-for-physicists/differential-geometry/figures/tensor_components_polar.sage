# Polar components of T = dx (x) dx over the plane: T_rr = cos^2 phi, T_rphi = -r sin phi cos phi, T_phiphi = r^2 sin^2 phi.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
x, y = np.meshgrid(np.linspace(-2, 2, 401), np.linspace(-2, 2, 401))
r, ph = np.hypot(x, y), np.arctan2(y, x)
comps = [(np.cos(ph)**2, r"$T_{rr} = \cos^2\varphi$"), (-r*np.sin(ph)*np.cos(ph), r"$T_{r\varphi} = -r\sin\varphi\cos\varphi$"),
         (r**2*np.sin(ph)**2, r"$T_{\varphi\varphi} = r^2\sin^2\varphi$")]
fig, axs = plt.subplots(1, 3, figsize=(11, 3.8))
for ax, (C, title) in zip(axs, comps):
    m = np.abs(C).max()
    im = ax.imshow(C, extent=(-2, 2, -2, 2), origin="lower", cmap="RdBu_r", vmin=-m, vmax=m)
    ax.set_title(title, fontsize=11); ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")
    fig.colorbar(im, ax=ax, shrink=0.8)
fig.tight_layout()
save_matplotlib(fig, "tensor_components_polar")
