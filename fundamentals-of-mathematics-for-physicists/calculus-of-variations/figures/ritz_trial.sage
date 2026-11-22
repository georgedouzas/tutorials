# Rayleigh-Ritz for -y'' = lambda y on [0, 1] with y(0) = y(1) = 0. Left: the exact ground state sqrt(2) sin(pi x),
# the one-term trial x(1 - x) and the two-term Ritz function from x(1 - x), x^2(1 - x)^2, all normalised to unit
# integral of y^2. Right: the differences from the exact mode.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
phis = [x*(1 - x), x^2*(1 - x)^2]
A = matrix(QQ, 2, 2, lambda i, j: integrate(diff(phis[i], x)*diff(phis[j], x), x, 0, 1))
B = matrix(QQ, 2, 2, lambda i, j: integrate(phis[i]*phis[j], x, 0, 1))
mu, vecs = min((float(m), v) for m, V, k in (B.inverse()*A).change_ring(RDF).eigenvectors_right() for v in V)
c = vector(RDF, vecs)
two = c[0]*phis[0] + c[1]*phis[1]
two = two/sqrt(numerical_integral(two^2, 0, 1)[0])
one = sqrt(30)*phis[0]
f1 = fast_callable(one, vars=[x], domain=RDF)
f2 = fast_callable(two, vars=[x], domain=RDF)
xs = np.linspace(0, 1, 400)
ex = np.sqrt(2)*np.sin(np.pi*xs)
y1 = np.array([f1(t) for t in xs]); y2 = np.array([f2(t) for t in xs])
if y2[200] < 0: y2 = -y2
fig, (a1, a2) = plt.subplots(1, 2, figsize=(7.6, 3.3))
a1.plot(xs, ex, color=ACCENT, lw=2.4, label=r"$\sqrt{2}\,\sin\pi x$")
a1.plot(xs, y1, color=EXERCISE, lw=1.3, ls=(0, (4, 2)), label=r"$\sqrt{30}\,x(1 - x)$")
a1.plot(xs, y2, color=EXAMPLE, lw=1.3, ls=(0, (1.5, 1.5)), label="two-term Ritz")
a1.set_xlabel(r"$x$"); a1.set_ylim(0, 2.35); a1.legend(loc="upper center", frameon=False, fontsize=9, ncol=1)
a2.plot(xs, y1 - ex, color=EXERCISE, lw=1.3, ls=(0, (4, 2)), label="one term")
a2.plot(xs, 10*(y2 - ex), color=EXAMPLE, lw=1.3, ls=(0, (1.5, 1.5)), label=r"two terms $\times 10$")
a2.axhline(0, color=INK, lw=0.6)
a2.set_xlabel(r"$x$"); a2.set_ylabel("difference from the mode"); a2.set_ylim(-0.06, 0.115); a2.legend(loc="upper center", ncol=2, frameon=False, fontsize=9)
for a in (a1, a2):
    a.spines["top"].set_visible(False); a.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "ritz_trial")
print("mu =", mu)
