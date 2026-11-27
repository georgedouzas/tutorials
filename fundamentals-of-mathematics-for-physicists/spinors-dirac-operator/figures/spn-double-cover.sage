load("../../_filters/figstyle.sage")
# The double cover z -> z^2 from Spin(2) (outer circle) onto SO(2) (inner circle), with a pair +-z and its image z^2.
import matplotlib.pyplot as plt
import numpy as np

R, r = 1.6, 0.9
fig, ax = plt.subplots(figsize=(4.6, 4.6))
t = np.linspace(0, np.pi, 200)
ax.plot(R*np.cos(t), R*np.sin(t), color=ACCENT, lw=2.5)
ax.plot(R*np.cos(t + np.pi), R*np.sin(t + np.pi), color=STATEMENT, lw=2.5)
s = np.linspace(0, 2*np.pi, 400); ax.plot(r*np.cos(s), r*np.sin(s), color=INK, lw=1.5)
a = np.radians(40)
z, mz, w = R*np.array([np.cos(a), np.sin(a)]), -R*np.array([np.cos(a), np.sin(a)]), r*np.array([np.cos(2*a), np.sin(2*a)])
for p in (z, mz):
    ax.annotate("", xy=w, xytext=p, arrowprops=dict(arrowstyle="-|>", color=MUTED, lw=1, connectionstyle="arc3,rad=0.25"))
ax.plot(*z, "o", color=ACCENT); ax.plot(*mz, "o", color=STATEMENT); ax.plot(*w, "o", color=INK)
ax.annotate(r"$z$", z + np.array([0.08, 0.05]), fontsize=12, color=ACCENT)
ax.annotate(r"$-z$", mz + np.array([-0.32, -0.16]), fontsize=12, color=STATEMENT)
ax.annotate(r"$z^2$", w + np.array([-0.27, 0.05]), fontsize=12, color=INK)
ax.annotate(r"$\mathrm{Spin}(2)$", (0.9, 1.45), fontsize=11, color=ACCENT)
ax.annotate(r"$SO(2)$", (0.9, -0.8), fontsize=11, color=INK)
ax.set_xlim(-1.9, 1.9); ax.set_ylim(-1.9, 1.9); ax.set_aspect("equal"); ax.axis("off")
print("z, -z, z^2 angles (deg):", 40, 220, 80, "; (-z)^2 angle:", (2*220) % 360)
save_matplotlib(fig, "spn-double-cover")
