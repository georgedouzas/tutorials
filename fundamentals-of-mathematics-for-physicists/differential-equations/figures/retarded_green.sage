# Left: the retarded Green's function (1/2) Theta(t - |x|) of the wave operator (c = 1) at t = 1, 2. Right: the retarded
# Green's function Theta(t) K(t, x) of the heat operator (kappa = 1) at the same times (def-retarded-greens-function).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

t, x = var("t x")
assume(t > 0)
for T in [1, 2]:
    assert abs(numerical_integral(exp(-x^2 / (4 * T)) / sqrt(4 * pi * T), -40, 40)[0] - 1) < 1e-9
xs = np.linspace(-3.5, 3.5, 1401)
fig, (a1, a2) = plt.subplots(1, 2, figsize=(8.0, 3.0), sharey=True)
for T, col in [(1, ACCENT), (2, STATEMENT)]:
    a1.plot(xs, np.where(np.abs(xs) < T, 0.5, 0.0), color=col, lw=1.5, label="$t = %d$" % T)
    a2.plot(xs, np.exp(-xs**2 / (4 * T)) / np.sqrt(4 * np.pi * T), color=col, lw=1.5, label="$t = %d$" % T)
for ax, ttl in [(a1, "wave"), (a2, "heat")]:
    ax.set_xlim(-3.5, 3.5); ax.set_ylim(0, 0.8); ax.set_xlabel("$x$"); ax.set_title(ttl, fontsize=11)
    ax.spines[["top", "right"]].set_visible(False); ax.legend(frameon=False, loc="upper center", ncol=2)
a1.set_ylabel(r"$G_{\mathrm{ret}}(t, x)$")
fig.tight_layout()
save_matplotlib(fig, "retarded_green")
