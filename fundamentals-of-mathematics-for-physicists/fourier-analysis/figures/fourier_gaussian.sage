# Gaussians e^{-x^2/2 sigma^2} for sigma = 1/2, 1, 2 (left) and their transforms sigma sqrt(2 pi) e^{-sigma^2 k^2/2} (right).
# Interactive: the same pairs with more widths.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, k = var("x k"); assume(k, "real")
for s in [1/2, 1, 2]:   # check the transform formula symbolically
    F = integrate(exp(-x^2/(2*s^2))*exp(-I*k*x), x, -oo, oo)
    assert bool((F - s*sqrt(2*pi)*exp(-s^2*k^2/2)).simplify_full() == 0)

X = np.linspace(-6, 6, 1201)
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.6, 3.6))
for s, c in [(0.5, ACCENT), (1.0, EXAMPLE), (2.0, STATEMENT)]:
    a1.plot(X, np.exp(-X**2/(2*s**2)), color=c, lw=1.4, label=r"$\sigma = %g$" % s)
    a2.plot(X, s*np.sqrt(2*np.pi)*np.exp(-s**2*X**2/2), color=c, lw=1.4, label=r"$\sigma = %g$" % s)
a1.set_title(r"$e^{-x^2/2\sigma^2}$", fontsize=11); a1.set_xlabel("$x$")
a2.set_title(r"$\sigma\sqrt{2\pi}\,e^{-\sigma^2k^2/2}$", fontsize=11); a2.set_xlabel("$k$")
for ax in (a1, a2):
    ax.axhline(0, color=GRID, lw=0.6); ax.set_xlim(-6, 6)
    ax.legend(loc="upper right", fontsize=9, frameon=False)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fourier_gaussian")

traces = []
for s in [0.25, 0.5, 1, 2, 4]:
    traces.append(dict(x=floats(X), y=floats(np.exp(-X**2/(2*s**2))), mode="lines", name="f, sigma = %g" % s,
                       visible=True if s in (0.5, 2) else "legendonly"))
    traces.append(dict(x=floats(X), y=floats(s*np.sqrt(2*np.pi)*np.exp(-s**2*X**2/2)), mode="lines", line=dict(dash="dash"),
                       name="transform, sigma = %g" % s, visible=True if s in (0.5, 2) else "legendonly"))
save_plotly(traces, "fourier_gaussian", dict(xaxis=dict(title="x or k")))
