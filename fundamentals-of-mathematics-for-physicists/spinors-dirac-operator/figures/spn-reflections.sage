load("../../_filters/figstyle.sage")
# Two reflections make a rotation: r_{u1} (mirror u1^perp, u1 = e1) then r_{u2} (mirror u2^perp, u2 at angle theta = 35 deg).
import matplotlib.pyplot as plt
import numpy as np

th = np.radians(35)
u1 = np.array([1.0, 0.0]); u2 = np.array([np.cos(th), np.sin(th)])
r = lambda u, v: v - 2*np.dot(u, v)*u
v = np.array([np.cos(np.radians(150)), np.sin(np.radians(150))])
v1 = r(u1, v); v2 = r(u2, v1)
fig, ax = plt.subplots(figsize=(4.8, 4.4))
for u, name, off in ((u1, r"$u_1^\perp$", (0.06, 1.12)), (u2, r"$u_2^\perp$", None)):
    d = np.array([-u[1], u[0]])
    ax.plot([-1.25*d[0], 1.25*d[0]], [-1.25*d[1], 1.25*d[1]], color=MUTED, ls="--", lw=1)
p2 = 1.22*np.array([-u2[1], u2[0]])
ax.annotate(r"$u_1^\perp$", (0.04, 1.17), fontsize=11, color=MUTED)
ax.annotate(r"$u_2^\perp$", (p2[0] - 0.28, p2[1] - 0.02), fontsize=11, color=MUTED)
for w, c, lab, dxy in ((v, ACCENT, r"$v$", (-0.2, 0.07)), (v1, EXAMPLE, r"$r_{u_1}v$", (0.06, 0.04)), (v2, STATEMENT, r"$r_{u_2}r_{u_1}v$", (-0.3, -0.2))):
    ax.annotate("", xy=w, xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=c, lw=2))
    ax.annotate(lab, (w[0] + dxy[0], w[1] + dxy[1]), fontsize=11, color=c)
a = np.linspace(np.radians(150), np.radians(220), 60)
ax.plot(0.35*np.cos(a), 0.35*np.sin(a), color=STATEMENT, lw=1)
ax.annotate(r"$2\theta$", (-0.62, -0.08), fontsize=11, color=STATEMENT)
ax.set_xlim(-1.4, 1.4); ax.set_ylim(-1.3, 1.4); ax.set_aspect("equal"); ax.axis("off")
print("angle of v, r1 v, r2 r1 v:", [round(np.degrees(np.arctan2(w[1], w[0])) % 360, 6) for w in (v, v1, v2)])
save_matplotlib(fig, "spn-reflections")
