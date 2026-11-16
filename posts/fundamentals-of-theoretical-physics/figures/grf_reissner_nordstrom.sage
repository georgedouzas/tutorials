# Figure: the Reissner-Nordstrom metric, G = 1, units of m. Left: f(r) = 1 - 2m/r + q^2/r^2 for q/m = 0, 0.6, 0.9, 1, 1.2.
# Right: the horizons r_+- = m +- sqrt(m^2 - q^2), the circular light orbit r_ph = (3m + sqrt(9m^2 - 8q^2))/2 and the
# innermost stable circular orbit of neutral particles (V' = V'' = 0 for V = f (1 + L^2/r^2)) against q/m.
# Checks: SageManifolds verifies that the metric with A = Q/(4 pi r) dt solves G = 8 pi G T and the Maxwell equations;
# r_+ r_- = q^2; at q = m the horizons, light orbit and stable orbit are m, 2m, 4m. Output: figures/grf_reissner_nordstrom.svg.
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from scipy.optimize import brentq
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "grf_reissner_nordstrom.svg")
M4 = Manifold(4, "M", structure="Lorentzian")
X = M4.chart(r"t r:(0,+oo) th:(0,pi) ph:(0,2*pi)"); t, r, th, ph = X[:]
G, Mm, Q = var("G M Q"); assume(G > 0); assume(Mm > 0)
f = 1 - 2*G*Mm/r + G*Q^2/(4*pi*r^2)
g = M4.metric("g"); g[0, 0] = f; g[1, 1] = -1/f; g[2, 2] = -r^2; g[3, 3] = -r^2*sin(th)^2
A = M4.one_form(Q/(4*pi*r), 0, 0, 0); F = A.exterior_derivative(); Fu = F.up(g)
F2 = (F["_ab"]*Fu["^ab"]).expr().simplify_full(); gi = g.inverse()
T = M4.tensor_field(0, 2)
for i in range(4):
    for j in range(4):
        T[i, j] = sum(F[i, a]*gi[a, b]*F[b, j] for a in range(4) for b in range(4)) + g[i, j]*F2/4
Gt = g.ricci() - g.ricci_scalar()*g/2
ok = all(bool((Gt[i, j] - 8*pi*G*T[i, j]).expr().simplify_full() == 0) for i in range(4) for j in range(4)) and Fu.divergence() == 0
print(("[PASS]" if ok else "[FAIL]") + " Reissner-Nordstrom solves the Einstein-Maxwell equations (SageManifolds)")
m = 1.0
fr = lambda r, q: 1 - 2*m/r + q*q/r**2
rpm = lambda q: (m + np.sqrt(m*m - q*q), m - np.sqrt(m*m - q*q))
rph = lambda q: (3*m + np.sqrt(9*m*m - 8*q*q))/2
def isco(q):
    # circular orbits have L^2 = r^3 f'/(2f - r f') from V' = 0; the innermost stable one has V'' = 0 as well
    f1 = lambda r: 2*m/r**2 - 2*q*q/r**3
    f2 = lambda r: -4*m/r**3 + 6*q*q/r**4
    def V2(r):
        L2 = r**3*f1(r)/(2*fr(r, q) - r*f1(r))
        return f2(r)*(1 + L2/r**2) - 4*f1(r)*L2/r**3 + 6*fr(r, q)*L2/r**4
    return brentq(V2, rph(q) + 1e-6, 10*m, xtol=1e-14)
rp, rm = rpm(0.6)
print(("[PASS]" if abs(rp*rm - 0.36) < 1e-12 else "[FAIL]") + " q = 0.6: r_+ = %.4f, r_- = %.4f, r_+ r_- = q^2" % (rp, rm))
vals = (rpm(1.0)[0], rph(1.0), isco(1.0), isco(0.0))
print(("[PASS]" if np.allclose(vals, (1, 2, 4, 6), atol=1e-4) else "[FAIL]") + " q = m: horizon %.4f, light orbit %.4f, ISCO %.4f; q = 0: ISCO %.4f" % vals)
fig, axes = plt.subplots(1, 2, figsize=(10, 4))
ax = axes[0]; rr = np.linspace(0.15, 6, 600)
for q, col in ((0, "black"), (0.6, "royalblue"), (0.9, "seagreen"), (1.0, "darkorange"), (1.2, "firebrick")):
    ax.plot(rr, fr(rr, q), color=col, lw=1.8, label="$q/m = %g$" % q)
ax.axhline(0, color="grey", lw=0.8); ax.set_ylim(-3, 4); ax.set_xlim(0, 6)
ax.set_xlabel("$r/m$"); ax.set_ylabel("$f(r)$"); ax.legend(fontsize=8, frameon=False, loc="lower right")
ax.set_title("$f = 1 - 2m/r + q^2/r^2$", fontsize=10)
ax = axes[1]; qq = np.linspace(0, 1, 201)
ax.plot(qq, [rpm(x)[0] for x in qq], color="black", lw=2, label="outer horizon $r_+$")
ax.plot(qq, [rpm(x)[1] for x in qq], color="black", lw=1.2, ls="--", label="inner horizon $r_-$")
ax.plot(qq, rph(qq), color="royalblue", lw=1.8, label="circular light orbit")
qi = np.linspace(0, 0.999, 60)
ax.plot(qi, [isco(x) for x in qi], color="firebrick", lw=1.8, label="innermost stable orbit")
ax.set_xlabel("$q/m$"); ax.set_ylabel("radius $/m$"); ax.set_ylim(0, 6.5)
ax.legend(fontsize=8, frameon=False, loc="lower left"); ax.set_title("radii of the solution", fontsize=10)
fig.tight_layout(); fig.savefig(OUT); print("wrote", os.path.basename(OUT))
