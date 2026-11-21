# Test functions: the bump e^{-1/(1 - x^2)} on (-1, 1) with a narrower translated copy (left), the smooth step
# s(t) = h(t)/(h(t) + h(1 - t)) with h(t) = e^{-1/t} (middle), and the cut-off chi(x) = s(2 - x) s(2 + x) (right).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np


def h(t):
    t = np.asarray(t, dtype=float)
    out = np.zeros_like(t)
    m = t > 0
    out[m] = np.exp(-1/t[m])
    return out


def bump(x):
    return h(1 - np.asarray(x, dtype=float)**2)


def s(t):
    return h(t)/(h(t) + h(1 - t))


def chi(x):
    return s(2 - x)*s(2 + x)


# checks: s(t) + s(1 - t) = 1, s = 0 for t <= 0 and 1 for t >= 1, chi = 1 on [-1, 1] and 0 outside (-2, 2)
T = np.linspace(-1, 2, 601)
assert np.allclose(s(T) + s(1 - T), 1)
assert np.all(s(T[T <= 0]) == 0) and np.all(s(T[T >= 1]) == 1)
Xc = np.linspace(-3, 3, 601)
assert np.all(chi(Xc[np.abs(Xc) <= 1]) == 1) and np.all(chi(Xc[np.abs(Xc) >= 2]) == 0)
assert abs(bump(np.array([0.0]))[0] - np.exp(-1)) < 1e-15

X = np.linspace(-2.5, 2.5, 2001)
fig, (a1, a2, a3) = plt.subplots(1, 3, figsize=(10.5, 3.2))
a1.plot(X, bump(X), color=ACCENT, lw=1.4, label=r"$\varphi(x)$")
a1.plot(X, bump((X - 1.2)/0.4), color=STATEMENT, lw=1.4, label=r"$\varphi((x - 1.2)/0.4)$")
a1.set_title(r"bump $\varphi(x) = e^{-1/(1 - x^2)}$", fontsize=11)
a1.set_ylim(-0.03, 0.5)
Tt = np.linspace(-0.5, 1.5, 1001)
a2.plot(Tt, s(Tt), color=EXAMPLE, lw=1.4)
a2.set_title(r"smooth step $s(t)$", fontsize=11); a2.set_xlabel("$t$")
a2.set_xlim(-0.5, 1.5); a2.set_ylim(-0.05, 1.12)
a3.plot(X, chi(X), color=EXERCISE, lw=1.4)
a3.set_title(r"cut-off $\chi(x)$", fontsize=11)
a3.set_ylim(-0.05, 1.12)
for ax in (a1, a3):
    ax.set_xlim(-2.5, 2.5); ax.set_xlabel("$x$")
a1.legend(loc="upper left", fontsize=9, frameon=False)
for ax in (a1, a2, a3):
    ax.axhline(0, color=GRID, lw=0.6)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "test_functions")
