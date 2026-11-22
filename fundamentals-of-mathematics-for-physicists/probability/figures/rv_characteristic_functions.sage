# Characteristic functions: sin t / t (uniform on [-1, 1]), (sin(t/2)/(t/2))^2 (triangle on [-1, 1]),
# and the modulus 1/sqrt(1 + t^2) of the exponential with rate 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(-20, 20, 4001)
fig, ax = plt.subplots(figsize=(7.2, 3.6))
ax.plot(t, np.sinc(t / np.pi), color=ACCENT, lw=2, label=r"uniform: $\sin t/t$")
ax.plot(t, np.sinc(t / (2 * np.pi))**2, color=STATEMENT, lw=2, label=r"triangle: $(\sin(t/2)/(t/2))^2$")
ax.plot(t, 1 / np.sqrt(1 + t**2), color=EXAMPLE, lw=2, label=r"exponential: $|\varphi| = 1/\sqrt{1 + t^2}$")
ax.axhline(0, color=MUTED, lw=0.8)
ax.set_xlim(-20, 20); ax.set_ylim(-0.3, 1.1)
ax.set_xlabel(r"$t$")
ax.legend(frameon=False, loc="upper right", fontsize=9)
ax.grid(color=GRID, lw=0.5)
fig.tight_layout()
save_matplotlib(fig, "rv_characteristic_functions")
