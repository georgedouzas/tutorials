# The oscillator x'' = -x stepped with tau = 0.1 from (x, v) = (1, 0) up to t = 20: the exact orbit, the unit circle
# (black), the Euler iterates (red), which spiral outwards, and the Euler-Cromer iterates (blue), which stay on the
# ellipse v^2 + x^2 - tau x v = 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

tau = 0.1; w = 1.0; n = int(20 / tau)
E = np.array([[1, tau], [-w**2 * tau, 1]]); C = np.array([[1 - w**2 * tau**2, tau], [-w**2 * tau, 1]])
def iterate(M):
    P = [np.array([1.0, 0.0])]
    for _ in range(n):
        P.append(M @ P[-1])
    return np.array(P)
PE, PC = iterate(E), iterate(C)
assert abs(np.linalg.norm(PE[-1])**2 - (1 + w**2 * tau**2)**n) < 1e-9          # Euler: energy factor per step
Q = PC[:, 1]**2 + w**2 * PC[:, 0]**2 - w**2 * tau * PC[:, 0] * PC[:, 1]
assert np.max(np.abs(Q - 1)) < 1e-12                                            # Euler-Cromer: Q conserved
th = np.linspace(0, 2 * math.pi, 300)
fig, ax = plt.subplots(figsize=(4.6, 4.6))
ax.plot(np.cos(th), np.sin(th), color=INK, lw=1.4, label="exact")
ax.plot(PE[:, 0], PE[:, 1], ".-", color=STATEMENT, lw=0.6, ms=2.5, label="Euler")
ax.plot(PC[:, 0], PC[:, 1], ".", color=ACCENT, ms=2.5, label="Euler-Cromer")
ax.set_aspect("equal"); ax.set_xlim(-2.9, 2.9); ax.set_ylim(-2.9, 3.6)
ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$v$")
ax.legend(frameon=False, loc="upper center", ncol=3, fontsize=FONT_SIZE - 1, handlelength=1.2, columnspacing=1.0)
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "ts_orbits")
