# The differential of the height Z on the sphere: level sets in the stereographic chart and in a meridian plane.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9, 4.4))
t = np.linspace(0, 2*np.pi, 300)
for Z in [-0.9, -0.6, -0.3, 0.0, 0.3, 0.6]:
    rho = np.sqrt((1 + Z)/(1 - Z))
    a1.plot(rho*np.cos(t), rho*np.sin(t), color=INK if Z == 0 else ACCENT, lw=1.8 if Z == 0 else 0.9)
for ang in [0, 2*np.pi/3, 4*np.pi/3]:
    r0 = 1.0
    a1.annotate("", xy=(1.55*np.cos(ang), 1.55*np.sin(ang)), xytext=(r0*np.cos(ang), r0*np.sin(ang)),
                arrowprops=dict(arrowstyle="-|>", color=STATEMENT, lw=1.8))
a1.text(0.05, -1.25, r"$Z = 0$", color=INK, fontsize=10)
a1.set_title(r"level sets of $Z$ in the $(u, v)$ chart", fontsize=11, color=INK)
a1.set_aspect("equal"); a1.set_xlim(-2.6, 2.6); a1.set_ylim(-2.6, 2.6); a1.set_xlabel(r"$u$"); a1.set_ylabel(r"$v$")
a2.plot(np.cos(t), np.sin(t), color=INK, lw=1.2)
for Z in [-np.sqrt(3)/2, -0.5, 0, 0.5, np.sqrt(3)/2]:
    w = np.sqrt(1 - Z**2)
    a2.plot([-w, w], [Z, Z], color=ACCENT, lw=1.2)
lab = {np.sqrt(3)/2: r"$\frac{\sqrt{3}}{2}$", 0.5: r"$\frac{1}{2}$", 0: r"$0$", -0.5: r"$-\frac{1}{2}$", -np.sqrt(3)/2: r"$-\frac{\sqrt{3}}{2}$"}
for Z, s in lab.items():
    a2.text(-np.sqrt(1 - Z**2) - 0.08, Z, r"$Z=$" + s, ha="right", va="center", fontsize=9, color=ACCENT)
th0 = np.pi/3; p = np.array([np.sin(th0), np.cos(th0)]); d = np.array([np.cos(th0), -np.sin(th0)])
a2.plot(*p, "o", color=INK, ms=4)
a2.annotate("", xy=p + 0.45*d, xytext=p, arrowprops=dict(arrowstyle="-|>", color=EXAMPLE, lw=2))
a2.text(p[0] + 0.5*d[0] + 0.05, p[1] + 0.5*d[1], r"$\partial_\theta$, $dZ(\partial_\theta) = -\sin\theta$", color=EXAMPLE, fontsize=9, va="top")
a2.set_title("a meridian plane of the sphere", fontsize=11, color=INK)
a2.set_aspect("equal"); a2.set_xlim(-2.0, 2.0); a2.set_ylim(-1.3, 1.3); a2.axis("off")
save_matplotlib(fig, "height_levels")
