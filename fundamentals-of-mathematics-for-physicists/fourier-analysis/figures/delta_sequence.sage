# Two delta sequences: the Gaussians g_eps(x) = e^{-x^2/eps^2}/(eps sqrt(pi)) for eps = 1, 1/2, 1/4, 1/8 (left) and the
# Fourier kernels delta_L(x) = sin(L x)/(pi x) for L = 2, 5, 15 (right). Interactive: the same curves with more parameters.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, eps, L = var("x eps L")
assume(eps > 0); assume(L > 0)
# checks: both families have unit integral, and the Gaussian pairing with cos x is e^{-eps^2/4}
assert bool(integrate(exp(-x^2/eps^2)/(eps*sqrt(pi)), x, -oo, oo) == 1)
assert bool(integrate(sin(L*x)/(pi*x), x, -oo, oo) == 1)
assert bool((integrate(exp(-x^2/eps^2)/(eps*sqrt(pi))*cos(x), x, -oo, oo) - exp(-eps^2/4)).simplify_full() == 0)


def g(e, X):
    return np.exp(-X**2/e**2)/(e*np.sqrt(np.pi))


def dL(l, X):
    return l/np.pi*np.sinc(l*X/np.pi)   # numpy sinc(u) = sin(pi u)/(pi u)


X = np.linspace(-3, 3, 3001)
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.6, 3.6))
for e, c, lab in [(1, ACCENT, "1"), (0.5, EXAMPLE, "1/2"), (0.25, ORANGE, "1/4"), (0.125, STATEMENT, "1/8")]:
    a1.plot(X, g(e, X), color=c, lw=1.3, label=r"$\varepsilon = %s$" % lab)
for l, c in [(2, ACCENT), (5, EXAMPLE), (15, ORANGE)]:
    a2.plot(X, dL(l, X), color=c, lw=1.1, label=r"$L = %d$" % l)
a1.set_title(r"$g_\varepsilon(x) = e^{-x^2/\varepsilon^2}/(\varepsilon\sqrt{\pi})$", fontsize=11)
a2.set_title(r"$\delta_L(x) = \sin(Lx)/(\pi x)$", fontsize=11)
a1.set_ylim(-0.2, 4.8); a2.set_ylim(-1.3, 5.2)
for ax in (a1, a2):
    ax.axhline(0, color=GRID, lw=0.6); ax.set_xlim(-3, 3); ax.set_xlabel("$x$")
    ax.legend(loc="upper right", fontsize=9, frameon=False)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "delta_sequence")

traces = []
for e in [1, 0.5, 0.25, 0.125, 0.0625]:
    traces.append(dict(x=floats(X), y=floats(g(e, X)), mode="lines", name="g_eps, eps = %g" % e,
                       visible=True if e in (1, 0.25) else "legendonly"))
for l in [2, 5, 15, 40]:
    traces.append(dict(x=floats(X), y=floats(dL(l, X)), mode="lines", line=dict(dash="dot"), name="delta_L, L = %d" % l,
                       visible=True if l == 5 else "legendonly"))
save_plotly(traces, "delta_sequence", dict(xaxis=dict(title="x")))
