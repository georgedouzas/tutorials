# Continuation of Log z from z = 1 around the unit circle by a chain of eight discs D_k of radius 0.6 centred at
# e^(2 pi i k / 8); none contains 0. On D_k the continued logarithm has imaginary part near 2 pi k / 8, and after the
# full turn the value at z = 1 is Log 1 + 2 pi i.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

K, r = 8, 0.6
fig, ax = plt.subplots(figsize=(4.6, 4.4))
ax.axhline(0, color=GRID, lw=0.7); ax.axvline(0, color=GRID, lw=0.7)
t = np.linspace(0, 2 * np.pi, 400)
for k in range(K + 1):
    c = np.exp(2j * np.pi * k / K)
    col = STATEMENT if k == K else ACCENT
    ax.plot(c.real + r * np.cos(t), c.imag + r * np.sin(t), color=col, lw=1.0 if k < K else 1.4,
            ls="-" if k < K else (0, (4, 3)))
    ax.plot([c.real], [c.imag], "o", color=col, ms=3)
ax.plot(np.cos(t), np.sin(t), color=INK, lw=0.8)
ax.plot([0], [0], "x", color=STATEMENT, ms=8, mew=2)
ax.text(0.08, -0.22, r"$0$", color=STATEMENT)
ax.text(1.62, 0.1, r"$D_0$", color=ACCENT)
ax.text(1.62, -0.45, r"$D_8$", color=STATEMENT)
ax.text(-0.15, 1.7, r"$D_2$", color=ACCENT)
ax.text(-1.95, 0.1, r"$D_4$", color=ACCENT)
ax.set_xlim(-2.0, 2.0); ax.set_ylim(-1.9, 1.9); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "continuation_discs")
