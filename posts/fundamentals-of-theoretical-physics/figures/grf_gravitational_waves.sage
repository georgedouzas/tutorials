# Figure: gravitational waves in the transverse traceless gauge, signature (+, -, -, -). Left and centre: a ring of free test
# particles transverse to a wave along z, displaced by xi -> (1 - h/2) xi with the strain matrix h of a plus wave
# h_+ = h cos(phase) and of a cross wave h_x = h cos(phase), at phases 0, pi/2, pi, 3pi/2 (h = 0.3, exaggerated). Right: h_+ and
# h_x of a circular binary from the quadrupole formula (prp-grf-quadrupole), at inclination 60 degrees, in units of the
# face-on amplitude h0. Checks: the ring keeps its area to first order (traceless strain); the quadrupole waveform computed
# from I_ij = mu x_i x_j with the TT projector has amplitudes (1 + cos^2 i)/2 and cos i. Output: figures/grf_gravitational_waves.svg.
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "grf_gravitational_waves.svg")
h = 0.3
al = np.linspace(0, 2*np.pi, 25)[:-1]
ring = np.array([np.cos(al), np.sin(al)])
def deform(H):
    return (np.eye(2) - H/2) @ ring
def area(P):
    x, y = P
    return 0.5*abs(np.dot(x, np.roll(y, -1)) - np.dot(y, np.roll(x, -1)))
hs = 1e-4
a0 = area(ring); a1 = area((np.eye(2) - np.array([[hs, 0], [0, -hs]])/2) @ ring); a2 = area((np.eye(2) - np.array([[0, hs], [hs, 0]])/2) @ ring)
print(("[PASS]" if abs(a1/a0 - 1) < 1e-7 and abs(a2/a0 - 1) < 1e-7 else "[FAIL]") + " traceless strain keeps the ring's area to first order: relative changes %.1e, %.1e for h = 1e-4" % (a1/a0 - 1, a2/a0 - 1))
# quadrupole waveform at inclination 60 degrees
inc = np.pi/3; W = 1.0; mu = a = G = r = 1.0
ts = np.linspace(0, 2*np.pi/W, 400)
n = np.array([0, np.sin(inc), np.cos(inc)]); e1 = np.array([1.0, 0, 0]); e2 = np.array([0, np.cos(inc), -np.sin(inc)])
P = np.eye(3) - np.outer(n, n)
def Idd(t):
    c2, s2 = np.cos(2*W*t), np.sin(2*W*t)
    return mu*a*a*W*W*np.array([[-2*c2, -2*s2, 0], [-2*s2, 2*c2, 0], [0, 0, 0]])
hp, hx = [], []
for t in ts:
    S = Idd(t); TT = -2*G/r*(P @ S @ P - P*np.trace(P @ S)/2)
    hp.append((e1 @ TT @ e1 - e2 @ TT @ e2)/2); hx.append(e1 @ TT @ e2)
h0 = 4*G*mu*a*a*W*W/r
hp, hx = np.array(hp)/h0, np.array(hx)/h0
ok = abs(hp.max() - (1 + np.cos(inc)**2)/2) < 1e-3 and abs(hx.max() - np.cos(inc)) < 1e-3
print(("[PASS]" if ok else "[FAIL]") + " binary at inclination 60 deg: max h_+/h0 = %.4f (expected %.4f), max h_x/h0 = %.4f (expected %.4f)" % (hp.max(), (1 + np.cos(inc)**2)/2, hx.max(), np.cos(inc)))
fig = plt.figure(figsize=(12, 4))
cols = ["black", "royalblue", "firebrick", "seagreen"]
for k, (name, Hm) in enumerate((("plus", lambda c: np.array([[c, 0], [0, -c]])), ("cross", lambda c: np.array([[0, c], [c, 0]])))):
    ax = fig.add_subplot(1, 3, k + 1)
    for j, ph in enumerate((0, np.pi/2, np.pi, 3*np.pi/2)):
        P2 = deform(Hm(h*np.cos(ph)))
        ax.plot(P2[0] + 3*j, P2[1], "o", ms=3, color=cols[j])
        ax.text(3*j, -1.6, ["$0$", r"$\pi/2$", r"$\pi$", r"$3\pi/2$"][j], ha="center", fontsize=9)
    ax.set_aspect("equal"); ax.set_xlim(-1.5, 10.5); ax.set_ylim(-1.9, 1.5); ax.axis("off")
    ax.set_title("%s polarisation, phases of the wave" % name, fontsize=10)
ax = fig.add_subplot(1, 3, 3)
ax.plot(ts*W/(2*np.pi), hp, color="royalblue", lw=1.8, label=r"$h_+/h_0$")
ax.plot(ts*W/(2*np.pi), hx, color="firebrick", lw=1.8, label=r"$h_\times/h_0$")
ax.set_xlabel("time in orbital periods"); ax.set_title(r"binary at inclination $60^\circ$", fontsize=10)
ax.legend(fontsize=8, frameon=False, loc="upper right"); ax.set_ylim(-1.1, 1.3)
fig.tight_layout(); fig.savefig(OUT); print("wrote", os.path.basename(OUT))
