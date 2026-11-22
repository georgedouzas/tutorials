# Left: 2000 seeded uniform points in the unit square, inside the quarter disc in blue. Right: the error of the
# estimate 4 * (fraction inside) for three seeds against the predicted standard deviation 4 sqrt(p(1 - p)/N).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

fig, (axl, axr) = plt.subplots(1, 2, figsize=(10.5, 4.6))
rng = np.random.default_rng(int(10))
u, v = rng.random(2000), rng.random(2000)
inside = u**2 + v**2 <= 1
axl.scatter(u[inside], v[inside], s=3, color=ACCENT)
axl.scatter(u[~inside], v[~inside], s=3, color=ORANGE)
t = np.linspace(0, np.pi / 2, 200)
axl.plot(np.cos(t), np.sin(t), color=INK, lw=1.5)
axl.set_aspect("equal"); axl.set_xlim(0, 1); axl.set_ylim(0, 1)
axl.set_xticks([]); axl.set_yticks([])
k = int(inside.sum())
axl.set_title(r"%d of 2000 inside: $\pi \approx 4 \cdot %d/2000 = %.4f$" % (k, k, 4 * k / 2000), fontsize=10)

Ns = 2 ** np.arange(4, 18)
p = np.pi / 4
for seed, col in zip([11, 12, 13], [ACCENT, EXAMPLE, EXERCISE]):
    r = np.random.default_rng(int(seed))
    x, y = r.random(Ns[-1]), r.random(Ns[-1])
    hits = np.cumsum(x**2 + y**2 <= 1)
    err = np.abs(4 * hits[Ns - 1] / Ns - np.pi)
    axr.plot(Ns, err, "o-", color=col, ms=3, lw=1.1, label="seed %d" % seed)
axr.plot(Ns, 4 * np.sqrt(p * (1 - p) / Ns), color=STATEMENT, lw=2.2, label=r"$4\sqrt{p(1-p)/N}$, $p = \pi/4$")
axr.set_xscale("log"); axr.set_yscale("log")
axr.set_xlabel(r"$N$"); axr.set_ylabel(r"$|\pi_N - \pi|$")
axr.legend(frameon=False, loc="lower left", fontsize=9)
axr.grid(color=GRID, lw=0.5)
fig.tight_layout()
save_matplotlib(fig, "monte_carlo_pi")
