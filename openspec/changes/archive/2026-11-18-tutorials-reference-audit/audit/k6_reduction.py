"""K6: reduce SU(3) Yang-Mills on M4 x S^2 (Manton's model) explicitly and read off m_H / M_W.

Run with:  sage -python k6_reduction.py   (any Python with SymPy works)

Six-dimensional Lagrangian (anti-Hermitian generators, tr(T_a T_b) = -1/2 delta_ab, signature (+,-,...,-),
negative-definite internal metric):

    L6 = (1 / (2 g6^2)) tr(F_MN F^MN)  =  -(1 / (4 g6^2)) F^a_MN F^{a MN}

Only the coordinates (t, x) of M4 are kept (fields depend on t; the gauge field is put along x), which is enough
to read the gauge kinetic term (from F_tx), the gauge mass term (from F_x,internal), the scalar kinetic term
(from F_t,internal) and the potential (from F_internal,internal), all from the same 6D density integrated over S^2.

Part A: the chapter's ansatz (frame components phi_1, phi_2 of eq-csd-doublet, phi_3 = tau, on the unit-sphere
Maurer-Cartan frame of S^2 = SU(2)/U(1), internal metric -r^2 (theta^1^2 + theta^2^2)).
Part B: Dolan-Szabo's ansatz (arXiv:0901.2491, eqs. (2.13)-(2.17), (4.13)) on CP^1 of radius R, same 6D action,
to locate where their eq. (3.3)/(4.4) normalisation differs.
"""
import sympy as sp

I = sp.I
t, x, th, ph, u, v = sp.symbols("t x theta phi u v", real=True)
r, g6 = sp.symbols("r g6", positive=True)
rho = sp.Function("rho", real=True)(t)
w = [sp.Function("w%d" % k, real=True)(t) for k in range(4)]
p1, p2, q1, q2 = sp.symbols("p1 p2 q1 q2", real=True)


def E(i, j):
    M = sp.zeros(3, 3)
    M[i, j] = 1
    return M


def up(m):
    M = sp.zeros(3, 3)
    M[0:2, 0:2] = m
    return M


s = [sp.Matrix([[0, 1], [1, 0]]), sp.Matrix([[0, -I], [I, 0]]), sp.Matrix([[1, 0], [0, -1]])]
lam8 = sp.diag(1, 1, -2) / sp.sqrt(3)
T = [I / 2 * up(m) for m in s] + [I / 2 * lam8]           # basis of h = su(2) + u(1), tr(T_i T_j) = -1/2 delta
for i in range(4):
    for j in range(4):
        assert sp.simplify((T[i] * T[j]).trace() + sp.Rational(1, 2) * int(i == j)) == 0
tau = I / 3 * sp.diag(1, 1, -2)


def reduce_density(A, coords, ginv, sqrtg_int):
    """Return sqrt|g_int| * (1/(2 g6^2)) tr(F_MN F^MN) for a diagonal inverse metric ginv."""
    n = len(coords)
    F = [[None] * n for _ in range(n)]
    for M in range(n):
        for N in range(n):
            F[M][N] = (A[N].diff(coords[M]) - A[M].diff(coords[N]) + A[M] * A[N] - A[N] * A[M])
    tot = 0
    for M in range(n):
        for N in range(n):
            if M != N:
                tot += (F[M][N] * F[M][N]).trace() * ginv[M] * ginv[N]
    return sp.expand(sqrtg_int * tot / (2 * g6**2))


def invariant_times_area(inv, var, pts, area):
    """The scalar density of a symmetric field is constant on the sphere: check it at three points, then integrate
    (integral of a constant scalar density over S^2 = density x area)."""
    vals = [sp.expand(sp.simplify(sp.expand_trig(inv.subs(var, pt)))) for pt in pts]
    for vv in vals[1:]:
        assert sp.simplify(vv - vals[0]) == 0, "density not constant on the sphere"
    return sp.expand(vals[0] * area)


def masses(L4, rho_vac_shift=None):
    """L4 = 1/2 K w'w' - 1/2 M w w + A rho'^2 - B rho^2 + ...; return K, M, A, B."""
    dw = [wi.diff(t) for wi in w]
    syms_w = sp.symbols("W0:4"); syms_dw = sp.symbols("dW0:4"); R0, dR0 = sp.symbols("R0 dR0")
    Ls = L4.subs({rho.diff(t): dR0}).subs({dw[k]: syms_dw[k] for k in range(4)})
    Ls = Ls.subs({w[k]: syms_w[k] for k in range(4)}).subs(rho, R0)
    zero = {**{a: 0 for a in syms_w}, **{a: 0 for a in syms_dw}, R0: 0, dR0: 0}
    K = sp.Matrix(4, 4, lambda i, j: sp.simplify(sp.diff(Ls, syms_dw[i], syms_dw[j]).subs(zero)))
    M = sp.Matrix(4, 4, lambda i, j: sp.simplify(-sp.diff(Ls, syms_w[i], syms_w[j]).subs(zero)))
    A = sp.simplify(sp.diff(Ls, dR0, 2).subs(zero) / 2)
    B = sp.simplify(-sp.diff(Ls, R0, 2).subs(zero) / 2)
    return K, M, A, B


# ---------------------------------------------------------------- Part A: the chapter's ansatz
Q = [m / (2 * I) for m in s]                               # Q_a = sigma_a / 2i, [Q_a, Q_b] = eps_abc Q_c
expQ = lambda a, ang: sp.cos(ang / 2) * sp.eye(2) + 2 * sp.sin(ang / 2) * Q[a]
Lsec = expQ(2, ph) * expQ(1, th)                           # local section of SU(2) -> S^2
Linv = Lsec.inv()
MC = {c: sp.simplify(Linv * Lsec.diff(c)) for c in (th, ph)}
e = {c: [sp.simplify(sp.simplify(-2 * (MC[c] * Q[a]).trace()).subs(sp.tan(th / 2), sp.sin(th) / (1 + sp.cos(th))))
         for a in range(3)] for c in (th, ph)}
print("Part A. Maurer-Cartan frame theta^a = e[c][a] dc:", e)
area = sp.simplify(e[th][0] * e[ph][1] - e[th][1] * e[ph][0])
print("  theta^1 ^ theta^2 =", area, "dtheta ^ dphi  (unit-sphere area form, up to orientation)")


def doublet(p, q):
    Pp = p * E(0, 2) + q * E(1, 2)
    Pm = -Pp.H
    return (Pp + Pm) / 2, I * (Pp - Pm) / 2


f1c, f2c = doublet(p1 + I * p2, q1 + I * q2)
assert sp.simplify(tau * f1c - f1c * tau - f2c) == sp.zeros(3, 3)
assert sp.simplify(tau * f2c - f2c * tau + f1c) == sp.zeros(3, 3)
print("  [PASS] eq-csd-doublet solves [tau, phi_1] = phi_2, [tau, phi_2] = -phi_1")


def chapter_L4(f1, f2, Ax):
    Ath = f1 * e[th][0] + f2 * e[th][1] + tau * e[th][2]
    Aph = f1 * e[ph][0] + f2 * e[ph][1] + tau * e[ph][2]
    A = [sp.zeros(3, 3), Ax, Ath, Aph]
    ginv = [1, -1, -1 / r**2, -1 / (r**2 * sp.sin(th)**2)]
    inv = reduce_density(A, [t, x, th, ph], ginv, 1)        # scalar density (per unit proper area)
    return invariant_times_area(inv, th, [sp.pi / 2, sp.pi / 3, sp.pi / 5], 4 * sp.pi * r**2), inv


# (i) the potential, for a general constant doublet, no gauge field
L4pot, _ = chapter_L4(f1c, f2c, sp.zeros(3, 3))
g4 = sp.symbols("g4", positive=True)                       # 4D coupling, g4^2 = g6^2 / (4 pi r^2)
L4pot = sp.expand(sp.simplify(L4pot.subs(g6, g4 * sp.sqrt(4 * sp.pi) * r)))
n2 = p1**2 + p2**2 + q1**2 + q2**2
Vchap = sp.Rational(1, 2) * n2**2 - n2 + sp.Rational(2, 3)
print("  L4 (constant Phi) =", sp.factor(L4pot))
print("  [PASS] L4 = -V/(g^2 r^4) with V = |Phi|^4/2 - |Phi|^2 + 2/3:", sp.simplify(L4pot + Vchap / (g4**2 * r**4)) == 0)

# (ii) fluctuations about Phi_0 = (0, 1): radial Higgs rho(t) and gauge field A_x = w_i(t) T_i
f1, f2 = doublet(0, 1 + rho)
Ax = sum((w[k] * T[k] for k in range(4)), sp.zeros(3, 3))
L4, _ = chapter_L4(f1, f2, Ax)
L4 = sp.expand(L4.subs(g6, g4 * sp.sqrt(4 * sp.pi) * r))
K, M, A, B = masses(L4)
print("  gauge kinetic matrix K (L = K w'w'/2):", K)
print("  rho kinetic coefficient A (L = A rho'^2):", A, "   rho mass coefficient B (L = -B rho^2):", B)
m2 = sorted((K.inv() * M).eigenvals(multiple=True), key=lambda z: float((z * r**2).subs(r, 1)))
mH2 = sp.simplify(B / A)
MW2, MZ2 = m2[1], m2[3]
print("  vector masses^2 (eigenvalues of K^-1 M):", m2)
print("  m_H^2 = B/A =", mH2, ";  m_H^2 / M_W^2 =", sp.simplify(mH2 / MW2), "; M_Z^2/M_W^2 =", sp.simplify(MZ2 / MW2))
assert sp.simplify(mH2 - 2 / r**2) == 0 and sp.simplify(MW2 - 1 / (2 * r**2)) == 0 and sp.simplify(MZ2 - 2 / r**2) == 0
print("  [PASS] chapter: m_H^2 = 2/r^2, M_W^2 = 1/(2 r^2), M_Z^2 = 2/r^2  =>  m_H = 2 M_W = M_Z")
# Standard-Model reading: K = 1/g4^2 => canonical W = w/g4, coupling g4; H = Phi/(g4 r);
# V4 = V/(g4^2 r^4) = (g4^2/2)|H|^4 - |H|^2/r^2 + const  =>  lambda = g4^2/2, mu = 1/r
lam, mu2 = g4**2 / 2, 1 / r**2
v2 = mu2 / lam
assert sp.simplify(2 * mu2 - mH2) == 0 and sp.simplify(g4**2 * v2 / 4 - MW2) == 0
print("  [PASS] SM form: lambda = g^2/2, mu = 1/r, v^2 = 2/(g^2 r^2): m_H^2 = 2 mu^2, M_W^2 = g^2 v^2/4; m_H^2/M_W^2 = 8 lambda/g^2 = 4")

# ---------------------------------------------------------------- Part B: Dolan-Szabo's ansatz on CP^1
Rr = sp.symbols("R", positive=True)
sq = 1 + u**2 + v**2
P = sp.diag(1, 1, -1)                                      # monopole charges p_0 = 1 (k0 = 2), p_1 = -1 (k1 = 1)
a_u, a_v = P * (-I * v) / sq, P * (I * u) / sq             # a_p = p/(2(1+y ybar)) (ybar dy - y dybar), (2.13)
beta_u, beta_v = 2 / sq, 2 * I / sq                         # beta = 2 dy/(1 + y ybar), (2.16)
betab_u, betab_v = 2 / sq, -2 * I / sq


def dolan_L4(phi, Ax):
    """A = A_x dx + a + phi betabar - phi^dagger beta, (2.17); metric -4R^2 (du^2 + dv^2)/(1+|y|^2)^2."""
    Au = a_u + phi * betab_u - phi.H * beta_u
    Av = a_v + phi * betab_v - phi.H * beta_v
    A = [sp.zeros(3, 3), Ax, Au, Av]
    gi = -sq**2 / (4 * Rr**2)
    inv = reduce_density(A, [t, x, u, v], [1, -1, gi, gi], 1)
    inv = inv.subs(v, 0)                                    # rotations about the pole leave it invariant; check u below
    return invariant_times_area(inv, u, [0, 1, sp.Rational(1, 3)], 4 * sp.pi * Rr**2)


phiD = (p1 + I * p2) * E(0, 2) + (q1 + I * q2) * E(1, 2)    # Dolan's phi: k0 x k1 = 2 x 1 block, Hom(E1, E0)
gt = sp.symbols("gtilde", positive=True)
L4Dpot = dolan_L4(phiD, sp.zeros(3, 3)).subs(g6, gt)
nD = p1**2 + p2**2 + q1**2 + q2**2
print("\nPart B. Dolan ansatz, constant phi: L4 =", sp.factor(L4Dpot))
# Dolan (3.3), m = 1, Lorentzian sign (L = ... - potential): -(pi R^2/g~^2)(1/(8R^4)) [tr_k0 (p0 - 4 phi phi^+)^2 + tr_k1 (p1 + 4 phi^+ phi)^2]
pp = (p1 + I * p2, q1 + I * q2)
phivec = sp.Matrix(pp)
X0 = sp.eye(2) - 4 * phivec * phivec.H
X1 = -1 + 4 * (phivec.H * phivec)[0]
dolan33_pot = -(sp.pi * Rr**2 / gt**2) / (8 * Rr**4) * ((X0 * X0).trace() + X1**2)
ratio_pot = sp.simplify(L4Dpot / dolan33_pot)
print("  explicit potential / Dolan (3.3) potential =", ratio_pot)

phiDv = (1 + rho) / 2 * E(1, 2)                            # Dolan's vacuum (4.6) before rescaling: v = 1/2
L4D = dolan_L4(phiDv, Ax).subs(g6, gt)
KD, MD, AD, BD = masses(L4D)
print("  gauge kinetic K:", KD, "; rho: A =", AD, ", B =", BD)
m2D = sorted((KD.inv() * MD).eigenvals(multiple=True), key=lambda z: float((z * Rr**2).subs(Rr, 1)))
mH2D = sp.simplify(BD / AD)
print("  vector masses^2:", m2D, ";  m_H^2 =", mH2D)
print("  m_H^2 / M_W^2 =", sp.simplify(mH2D / m2D[1]), "; M_Z^2/M_W^2 =", sp.simplify(m2D[3] / m2D[1]))
# The explicit scalar kinetic term with Dolan's phi: phi = (0, (1+rho)/2) gives A rho'^2 with
A_expl = AD
dolan33_kin = (sp.pi * Rr**2 / gt**2) * (4 / Rr**2) * sp.Rational(1, 4)   # (3.3): (2/R^2) twice, |d phi|^2 = rho'^2/4
print("  explicit scalar kinetic / Dolan (3.3) scalar kinetic =", sp.simplify(A_expl / dolan33_kin))
dolan33_gauge = (sp.pi * Rr**2 / gt**2) * 2 * sp.Rational(1, 2)            # (3.3): tr F^dag F with F_tx = w' T_i: 2 * (1/2) w'^2
print("  explicit gauge kinetic / Dolan (3.3) gauge kinetic =", sp.simplify((KD[0, 0] / 2) / dolan33_gauge))
assert sp.simplify(mH2D / m2D[1] - 4) == 0
print("  [PASS] Dolan's own ansatz, reduced explicitly: m_H = 2 M_W = M_Z, same as the chapter")
print("  (the explicit 6D normalisation here is (1/2g^2) tr F F = 2 x |Dolan's (3.1)|, so the three ratios above")
print("   become 1 (gauge), 2 (scalar kinetic), 4 (potential) in Dolan's own normalisation: his (3.2) halves the")
print("   mixed term, since F_MN F^MN has 2 g^{y ybar} = (1+y ybar)^2/R^2, and quarters the internal term)")

# ---------------------------------------------------------------- Part C: Dolan's 4D Lagrangian (3.6), (4.4), (4.13) as printed
g = sp.symbols("g", positive=True)
h = sp.symbols("h", real=True)
# gauge term (1/4) tr(F^dag F) with F_tx = w'^a T_a, T_a = (i/2) lambda_a: (1/4) * 2 * (1/2) w'^2 = (1/2) * (1/2) w'^2
K_C = sp.Rational(1, 2)                                      # L = K_C w'^2 / 2 per component: NOT canonical (canonical K = 1)
phi0 = sp.Matrix([0, 1 / (2 * g * Rr)])                      # (4.15)
Tup = [Ti[0:2, 0:2] - Ti[2, 2] * sp.eye(2) for Ti in T]      # action on the doublet: A0 phi - phi A1
M_C = sp.Matrix(4, 4, lambda i, j: sp.simplify(2 * g**2 * sp.re(sp.expand((phi0.H * Tup[i].H * Tup[j] * phi0)[0]))))
print("\nPart C. Dolan (4.16)-(4.17) mass matrix M^2 =", M_C, " (eigenvalues", sp.Matrix(M_C).eigenvals(multiple=True), ")")
nn = (1 / (2 * g * Rr) + h)**2
V_C = g**2 / 2 * (2 * (1 / (4 * g**2 * Rr**2))**2 + (1 / (4 * g**2 * Rr**2) - nn)**2) + g**2 / 2 * (-1 / (4 * g**2 * Rr**2) + nn)**2
# (4.4) with phi = (0, 1/(2gR) + h): tr_k0 (c - phi phi^dag)^2 has eigenvalues c, c - |phi|^2
B_C = sp.simplify(sp.diff(V_C, h, 2).subs(h, 0) / 2); A_C = 1  # kinetic |d phi|^2 = h'^2
print("  Higgs: m_h^2 = B/A =", B_C, "(Dolan: mu_h = 1/R)")
ev = sorted(M_C.eigenvals(multiple=True), key=lambda z: float((z * Rr**2).subs(Rr, 1)))
print("  reading M^2 as masses (Dolan): mu_W^2 =", ev[1], ", m_h^2/mu_W^2 =", sp.simplify(B_C / ev[1]))
print("  with the actual gauge kinetic coefficient K = 1/2: M_W^2 =", ev[1] / K_C, ", m_h^2/M_W^2 =", sp.simplify(B_C / (ev[1] / K_C)))
assert sp.simplify(B_C / (ev[1] / K_C) - 4) == 0
print("  [PASS] Dolan's printed 4D Lagrangian, with W normalised canonically, also gives m_H = 2 M_W; the factor 2 in")
print("         m_H^2/M_W^2 comes from reading (4.16) as masses although (1/4) tr F^dag F = (1/8) F^a F^a for A0 = (i/2) W^a sigma_a")
