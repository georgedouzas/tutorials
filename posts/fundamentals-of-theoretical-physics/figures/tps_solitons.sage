# Figure: the three topological solutions of the chapter, in dimensionless variables. Left: the BPS vortex of winding
# n = 1 in the abelian Higgs model at lambda = 2 e^2, phi = v f(rho) e^{i theta}, e A_theta = a(rho)/r, rho = e v r, found
# by shooting on f ~ c rho from the first-order equations f' = n (1 - a) f/rho, a' = (rho/n)(1 - f^2); the magnetic
# field is B/(e v^2) = (n/rho) a' = 1 - f^2. Middle: the Prasad-Sommerfield monopole, Phi^a = x^a H(xi)/(g r^2),
# A^a_i = eps_aij x^j (1 - K(xi))/(g r^2), xi = g v r, K = xi/sinh xi, H = xi coth xi - 1, with the energy density
# 4 pi r^2 B^a_i B^a_i in units of v^2 (per unit xi), checked against B^a_i = D_i Phi^a. Right: the BPST instanton of
# size rho: the action density F^a F^a = 192 rho^4/(x^2 + rho^2)^4 per unit |x| (times 2 pi^2 |x|^3) and the instanton
# number Q(R) inside the ball |x| < R, which tends to 1. Beyond r = 60 the monopole energy density is 4 pi r^2 / r^4 (g = v = 1),
# added analytically.
# Output: figures/tps_solitons.svg.
import os
import numpy as np
from scipy.integrate import solve_ivp, quad
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "tps_solitons.svg")

# --- vortex: shooting on c in f ~ c rho
def shoot(c, n=1, L=12.0):
    r0 = 1e-4
    y0 = [c * r0**n, r0**2 / (2 * n)]
    rhs = lambda r, y: [n * (1 - y[1]) * y[0] / r, (r / n) * (1 - y[0]**2)]
    ev = lambda r, y: y[0] - 1.2
    ev.terminal = True
    return solve_ivp(rhs, [r0, L], y0, events=ev, rtol=1e-12, atol=1e-14, dense_output=True)
lo, hi = 0.01, 3.0
for it in range(90):
    c = (lo + hi) / 2; s = shoot(c)
    if s.status == 1 or s.y[0, -1] > 1:
        hi = c
    else:
        lo = c
sol = shoot(c)
RV = 7.0
rr = np.linspace(1e-4, RV, 600)
f, a = sol.sol(rr)
Bv = 1 - f**2
def edens(r):
    f, a = sol.sol(r); fp = (1 - a) * f / r; ap = r * (1 - f**2)
    return r * (fp**2 + (1 - a)**2 * f**2 / r**2 + 0.5 * (ap / r)**2 + 0.5 * (1 - f**2)**2)
Evort = 2 * np.pi * quad(edens, 1e-4, RV, limit=400)[0]
flux = 2 * np.pi * sol.sol(11.0)[1]         # e Phi = 2 pi n a(infinity), read at rho = 11

# --- monopole: check the BPS equation symbolically at a point, then the mass
x, y, z, g, v = var("x y z g v")
X = [x, y, z]; r = sqrt(x^2 + y^2 + z^2); xi = g * v * r
K = xi / sinh(xi); H = xi * coth(xi) - 1
eps = lambda a, b, c: (a - b) * (b - c) * (c - a) / 2
Phi = [X[i] * H / (g * r^2) for i in range(3)]
A = [[sum(eps(i, j, k) * X[k] for k in range(3)) * (1 - K) / (g * r^2) for j in range(3)] for i in range(3)]
F = [[[diff(A[i][k], X[j]) - diff(A[i][j], X[k]) + g * sum(eps(i, b, c) * A[b][j] * A[c][k] for b in range(3) for c in range(3))
       for k in range(3)] for j in range(3)] for i in range(3)]
B = [[-sum(eps(l, j, k) * F[i][j][k] for j in range(3) for k in range(3)) / 2 for l in range(3)] for i in range(3)]
DPhi = [[diff(Phi[i], X[l]) + g * sum(eps(i, b, c) * A[b][l] * Phi[c] for b in range(3) for c in range(3)) for l in range(3)] for i in range(3)]
pt = {x: 0.31, y: -0.52, z: 0.77, g: 1.3, v: 0.9}
bps_err = max(abs((B[i][l] - DPhi[i][l]).subs(pt).n()) for i in range(3) for l in range(3))
dens = sum(B[i][l]^2 for i in range(3) for l in range(3)).subs({x: 0, y: 0, g: 1, v: 1})   # B^2 on the z axis, g = v = 1
dens_f = fast_callable(dens, vars=[z], domain=RDF)
mono = lambda s: 4 * np.pi * s**2 * dens_f(s)
Mmono = quad(mono, 1e-6, 60, limit=400)[0] + 4 * np.pi / 60   # beyond r = 60, B^a B^a = 1/r^4 to 1e-20
ss = np.linspace(0.02, 8, 500)

# --- instanton
rho0 = 1.0
dsty = lambda t: 2 * np.pi**2 * t**3 * 192 * rho0**4 / (t**2 + rho0**2)**4
QR = lambda R: quad(dsty, 0, R)[0] / (32 * np.pi**2)
tt = np.linspace(0, 5, 400)

fig, axes = plt.subplots(1, 3, figsize=(13, 3.9))
ax = axes[0]
ax.plot(rr, f, color="firebrick", lw=1.8, label=r"$|\phi|/v = f$")
ax.plot(rr, a, color="royalblue", lw=1.8, label=r"$a$ ($eA_\theta = a/r$)")
ax.plot(rr, Bv, color="seagreen", lw=1.5, ls="--", label=r"$B/ev^2 = 1 - f^2$")
ax.set_xlabel(r"$\rho = evr$"); ax.set_title("BPS vortex, $n = 1$", fontsize=10); ax.legend(fontsize=8)
ax = axes[1]
xs = np.linspace(0.02, 8, 500)
ax.plot(xs, xs / np.sinh(xs), color="royalblue", lw=1.8, label=r"$K(\xi)$")
ax.plot(xs, (xs / np.tanh(xs) - 1) / xs, color="firebrick", lw=1.8, label=r"$|\Phi|/v = H/\xi$")
ax.plot(ss, [mono(s) / (4 * np.pi) for s in ss], color="seagreen", lw=1.5, ls="--", label=r"$r^2 B^aB^a$ $(g = v = 1)$")
ax.set_xlabel(r"$\xi = gvr$"); ax.set_title("Prasad-Sommerfield monopole", fontsize=10); ax.legend(fontsize=8)
ax = axes[2]
ax.plot(tt, [dsty(t) / (32 * np.pi**2) for t in tt], color="seagreen", lw=1.8, label=r"$dQ/d|x|$")
ax.plot(tt, [QR(t) for t in tt], color="firebrick", lw=1.8, label=r"$Q(R)$ inside $|x| < R$")
ax.axhline(1, color="gray", lw=0.8, ls=":")
ax.set_xlabel(r"$|x|/\rho$"); ax.set_title("BPST instanton", fontsize=10); ax.legend(fontsize=8)
fig.tight_layout(); fig.savefig(OUT, bbox_inches="tight")
print("[PASS] vortex: shooting slope f'(0) = %.4f (in units e v)" % c, abs(c - 0.8532) < 1e-3)
print("[PASS] vortex: e Phi = 2 pi a(infinity) = %.6f, 2 pi n = %.6f" % (flux, 2 * np.pi), abs(flux - 2 * np.pi) < 1e-4)
print("[PASS] vortex: energy / v^2 = %.6f, Bogomolny value 2 pi = %.6f" % (Evort, 2 * np.pi), abs(Evort - 2 * np.pi) < 1e-4)
print("[PASS] monopole: max |B^a_i - D_i Phi^a| at a point = %.1e" % bps_err, bps_err < 1e-12)
print("[PASS] monopole: mass for g = v = 1 is %.6f, Bogomolny value 4 pi v/g = %.6f" % (Mmono, 4 * np.pi), abs(Mmono - 4 * np.pi) < 1e-5)
print("[PASS] instanton: Q(infinity) = %.8f" % QR(1e4), abs(QR(1e4) - 1) < 1e-7)
print("[PASS] instanton: action 8 pi^2 Q/g^2: (1/4) int F^a F^a = %.6f, 8 pi^2 = %.6f" % (8 * np.pi**2 * QR(1e4), 8 * np.pi**2),
      abs(8 * np.pi**2 * QR(1e4) - 8 * np.pi**2) < 1e-5)
print("[PASS] instanton: Q(R) = R^4 (R^2 + 3 rho^2)/(R^2 + rho^2)^3 at R = rho:", abs(QR(1.0) - 4 / 8) < 1e-10)
print("wrote", os.path.relpath(OUT))
