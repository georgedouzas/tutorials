# Partial Fourier sums S_N, N = 1, 3, 9, 29, of the square wave sgn x (left) and of the sawtooth x (right) on (-pi, pi),
# with the limiting height (2/pi) Si(pi) = 1.17898 of the first maximum of the square-wave sums dashed.
# Interactive: the same sums for N = 1, 3, 5, 9, 19, 29, 49, 99.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

gibbs = float(2 / pi * sin_integral(pi))
assert abs(gibbs - 1.17898) < 1e-5


def S_square(N, X):
    return sum(4 / (np.pi * n) * np.sin(n * X) for n in range(1, N + 1, 2))


def S_saw(N, X):
    return sum(2 * (-1) ** (n + 1) / n * np.sin(n * X) for n in range(1, N + 1))


# checks: S_5 of the square wave at pi/2 and S_2 of the sawtooth at pi/2 against exact sums
assert abs(S_square(5, np.pi / 2) - float(4 / pi * (1 - 1/3 + 1/5))) < 1e-12
assert abs(S_saw(2, np.pi / 2) - 2.0) < 1e-12

X = np.linspace(-np.pi, np.pi, 2001)
Ns = [1, 3, 9, 29]
cols = [ACCENT, EXAMPLE, EXERCISE, STATEMENT]
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.6, 3.8))
a1.plot([-np.pi, 0], [-1, -1], color=INK, lw=2.0)
a1.plot([0, np.pi], [1, 1], color=INK, lw=2.0)
a1.axhline(gibbs, color=MUTED, lw=0.8, ls=(0, (5, 3)))
a1.text(-3.0, gibbs + 0.07, r"$1.179$", color=MUTED, fontsize=10)
for N, c in zip(Ns, cols):
    a1.plot(X, S_square(N, X), color=c, lw=1.1, label=r"$S_{%d}$" % N)
a1.set_xlim(-np.pi, np.pi); a1.set_ylim(-1.45, 1.55)
a1.set_xticks([-np.pi, 0, np.pi]); a1.set_xticklabels([r"$-\pi$", r"$0$", r"$\pi$"])
a1.set_title(r"square wave $\operatorname{sgn} x$", fontsize=11)
a1.legend(loc="lower right", fontsize=9, frameon=False, ncol=2)

a2.plot(X, X, color=INK, lw=2.0)
for N, c in zip(Ns, cols):
    a2.plot(X, S_saw(N, X), color=c, lw=1.1)
a2.set_xlim(-np.pi, np.pi); a2.set_ylim(-4.0, 4.0)
a2.set_xticks([-np.pi, 0, np.pi]); a2.set_xticklabels([r"$-\pi$", r"$0$", r"$\pi$"])
a2.set_title(r"sawtooth $x$", fontsize=11)
for ax in (a1, a2):
    ax.axhline(0, color=GRID, lw=0.6)
    ax.set_xlabel("$x$")
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fourier_square_wave")

Xs = np.linspace(-np.pi, np.pi, 1201)
traces = [dict(x=floats(Xs), y=floats(np.sign(Xs)), mode="lines", name="sgn x", line=dict(color=INK, width=3))]
for N in [1, 3, 5, 9, 19, 29, 49, 99]:
    traces.append(dict(x=floats(Xs), y=floats(S_square(N, Xs)), mode="lines", name="S_%d" % N,
                       visible=True if N in (1, 9, 29) else "legendonly"))
save_plotly(traces, "fourier_square_wave", dict(xaxis=dict(title="x"), yaxis=dict(title="S_N(x)")))
