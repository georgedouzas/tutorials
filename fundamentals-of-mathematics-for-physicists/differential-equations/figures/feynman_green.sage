# The real and imaginary parts of G_F(t) = (i/(2 omega)) exp(-i omega |t|) and the retarded Green's function
# Theta(t) sin(omega t)/omega for omega = 1 (def-feynman-propagator). Checked: the slope of G_F jumps by 1 at t = 0.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

t = var("t")
Gp, Gm = I / 2 * exp(-I * t), I / 2 * exp(I * t)
assert (diff(Gp, t) - diff(Gm, t)).subs(t=0) == 1
ts = np.linspace(-10, 10, 2001)
GF = 0.5j * np.exp(-1j * np.abs(ts))
fig, ax = plt.subplots(figsize=(6.4, 3.2))
ax.plot(ts, GF.real, color=ACCENT, lw=1.5, label=r"$\mathrm{Re}\,G_F$")
ax.plot(ts, GF.imag, color=EXAMPLE, lw=1.5, label=r"$\mathrm{Im}\,G_F$")
ax.plot(ts, np.where(ts > 0, np.sin(ts), 0.0), color=STATEMENT, lw=1.3, ls="--", label=r"$G_{\mathrm{ret}}$")
ax.axhline(0, color=GRID, lw=0.8)
ax.set_xlim(-10, 10); ax.set_ylim(-1.1, 1.5)
ax.set_xlabel("$t$")
ax.legend(frameon=False, loc="upper left", ncol=3)
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "feynman_green")
