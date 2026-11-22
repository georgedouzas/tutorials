# The normalised oscillator eigenfunctions psi_0, ..., psi_3, drawn at the height of their energies n + 1/2 in the potential x^2/2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
H = [(-1)^n * exp(x^2) * diff(exp(-x^2), x, n) for n in range(4)]
H = [h.simplify_full() for h in H]
assert all(bool((H[n] - hermite(n, x)).expand() == 0) for n in range(4))
psi = [H[n] * exp(-x^2 / 2) / sqrt(2^n * factorial(n) * sqrt(pi)) for n in range(4)]
assert all(abs(numerical_integral(p^2, -12, 12)[0] - 1) < 1e-9 for p in psi)
tt = np.linspace(-4.2, 4.2, 500)
fig, ax = plt.subplots(figsize=(6.0, 3.8))
ax.plot(tt, tt**2 / 2, color=MUTED, lw=1.2)
for n, col in zip(range(4), [ACCENT, STATEMENT, EXAMPLE, EXERCISE]):
    f = fast_callable(psi[n], vars=[x], domain=RDF)
    E = n + 0.5
    ax.axhline(E, color=GRID, lw=0.8)
    ax.plot(tt, [E + 0.8 * f(t) for t in tt], color=col, lw=1.6)
    ax.text(4.3, E, "$\\psi_%d$, $E = %d/2$" % (n, 2 * n + 1), va="center", fontsize=10, color=col)
ax.set_xlim(-4.2, 6.2); ax.set_ylim(-0.2, 4.6)
ax.set_xlabel("$x$")
ax.set_yticks([]); ax.set_xticks([-4, -2, 0, 2, 4])
ax.spines[["top", "right", "left"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "hermite_functions")
