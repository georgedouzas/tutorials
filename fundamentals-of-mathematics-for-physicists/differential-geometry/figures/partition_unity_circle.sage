# A partition of unity on the circle subordinate to three open arcs of half-width pi/2 centred at 0, 2pi/3, 4pi/3.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
def g(y):
    out = np.zeros_like(y); m = y > 0; out[m] = np.exp(-1/y[m]); return out
c0 = np.cos(5*np.pi/12)
centres = [0, 2*np.pi/3, 4*np.pi/3]
ph = np.linspace(0, 2*np.pi, 1200)
psi = [g(np.cos(ph - c) - c0) for c in centres]
S = sum(psi)
rho = [p/S for p in psi]
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.5, 4.0), gridspec_kw={"width_ratios": [1, 1.6]})
cols = [ACCENT, STATEMENT, EXAMPLE]
for j, c in enumerate(centres):
    r = 1 + 0.09*(j + 1)
    s = np.linspace(c - np.pi/2, c + np.pi/2, 200)
    a1.plot(r*np.cos(s), r*np.sin(s), color=cols[j], lw=2.2)
    a1.text(1.62*np.cos(c), 1.62*np.sin(c), r"$U_%d$" % (j + 1), color=cols[j], ha="center", va="center", fontsize=12)
t = np.linspace(0, 2*np.pi, 300)
a1.plot(np.cos(t), np.sin(t), color=INK, lw=1.2)
a1.set_aspect("equal"); a1.set_xlim(-1.9, 1.9); a1.set_ylim(-1.9, 1.9); a1.axis("off")
a1.set_title("three open arcs covering $S^1$", fontsize=11, color=INK)
for j in range(3):
    a2.plot(ph, rho[j], color=cols[j], lw=2, label=r"$\rho_%d$" % (j + 1))
a2.plot(ph, sum(rho), color=INK, lw=1.2, ls="--", label=r"$\rho_1 + \rho_2 + \rho_3$")
a2.set_xticks([0, np.pi/2, np.pi, 3*np.pi/2, 2*np.pi]); a2.set_xticklabels(["$0$", r"$\pi/2$", r"$\pi$", r"$3\pi/2$", r"$2\pi$"])
a2.set_xlabel(r"angle $\varphi$"); a2.set_ylim(-0.05, 1.25); a2.set_xlim(0, 2*np.pi)
a2.legend(loc="upper center", ncol=4, fontsize=9, frameon=False)
a2.spines["top"].set_visible(False); a2.spines["right"].set_visible(False)
print("max deviation of the sum from 1:", float(np.max(np.abs(sum(rho) - 1))))
save_matplotlib(fig, "partition_unity_circle")
