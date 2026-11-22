# Normalised Hermite functions h_0..h_3 (left), and the indicator of [-1, 1] with its projections onto h_0..h_N for
# N = 10, 40 (right); h_n from the recurrence h_{n+1} = sqrt(2/(n+1)) x h_n - sqrt(n/(n+1)) h_{n-1}.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = np.linspace(-9, 9, 36001)
def hs(n_max, x):
    h = [np.pi**-0.25 * np.exp(-x**2 / 2), np.sqrt(2) * x * np.pi**-0.25 * np.exp(-x**2 / 2)]
    for n in range(1, n_max):
        h.append(np.sqrt(2.0 / (n + 1)) * x * h[n] - np.sqrt(float(n) / (n + 1)) * h[n - 1])
    return h
H = hs(40, xs)
G = np.array([[np.trapezoid(H[m] * H[n], xs) for n in range(6)] for m in range(6)])
assert np.allclose(G, np.eye(6), atol=1e-8)
inside = np.abs(xs) <= 1
c = [np.trapezoid(np.where(inside, h, 0), xs) for h in H]
assert abs(c[0] - 1.2854) < 1e-3

fig, (a, b) = plt.subplots(1, 2, figsize=(11, 4))
for n, col in zip(range(4), SERIES):
    a.plot(xs, H[n], color=col, lw=1.3, label=r"$h_%d$" % n)
a.set_xlim(-4.5, 4.5); a.legend(loc="lower right", ncol=2, fontsize=9, frameon=False)
b.plot(xs, inside.astype(float), color=INK, lw=1.6, label=r"$\chi_{[-1, 1]}$")
for N, col in ((10, ACCENT), (40, STATEMENT)):
    b.plot(xs, sum(c[n] * H[n] for n in range(N + 1)), color=col, lw=1.1, label=r"$N = %d$" % N)
b.set_xlim(-3.5, 3.5); b.set_ylim(-0.35, 1.45); b.legend(loc="upper right", fontsize=9, frameon=False)
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-hermite-basis")
