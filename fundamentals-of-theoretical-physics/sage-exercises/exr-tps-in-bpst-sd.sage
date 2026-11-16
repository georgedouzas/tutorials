# Exercise exr-tps-in-bpst-sd: the BPST potential A_mu = (x^2/(x^2 + rho^2)) U^{-1} d_mu U with U = (x_4 + 2 x_i T_i)/|x|,
# T_i = -(i/2) sigma_i, has a self-dual field strength F = d A + A A (tilde F_{mu nu} = (1/2) eps_{mu nu rho sigma} F_{rho sigma},
# eps_1234 = 1), with F^a_{mu nu} F^a_{mu nu} = -2 Tr(F_{mu nu} F_{mu nu}) = 192 rho^4/(x^2 + rho^2)^4; with U^{-1} in place of U
# the field strength is anti-self-dual. Checked exactly at rational points.
x1, x2, x3, x4, rho = var("x1 x2 x3 x4 rho")
X = [x1, x2, x3, x4]; r2 = sum(t^2 for t in X)
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
T = [-I / 2 * m for m in s]
from itertools import permutations
def eps(*p): return Permutation([i + 1 for i in p]).sign()
def field(U):
    Ui = U.inverse()
    A = [(r2 / (r2 + rho^2)) * (Ui * diff(U, X[m])) for m in range(4)]
    return [[diff(A[n], X[m]) - diff(A[m], X[n]) + A[m] * A[n] - A[n] * A[m] for n in range(4)] for m in range(4)]
Uq = x4 * identity_matrix(SR, 2) + 2 * sum(X[i] * T[i] for i in range(3))   # |x| U
for name, U in [("U", Uq / sqrt(r2)), ("U^{-1}", Uq.conjugate_transpose() / sqrt(r2))]:
    F = field(U)
    for pt in [{x1: 1/2, x2: -1/3, x3: 2/5, x4: 1/7, rho: 1}, {x1: 2, x2: 1, x3: -1, x4: 3, rho: 3/2}]:
        Fn = [[F[m][n].subs(pt).simplify_full() for n in range(4)] for m in range(4)]
        Fd = [[sum(eps(m, n, p, q) * Fn[p][q] for p in range(4) for q in range(4) if len({m, n, p, q}) == 4) / 2 for n in range(4)] for m in range(4)]
        sd = all((Fn[m][n] - Fd[m][n]).simplify_full() == 0 for m in range(4) for n in range(4))
        asd = all((Fn[m][n] + Fd[m][n]).simplify_full() == 0 for m in range(4) for n in range(4))
        FF = (-2 * sum((Fn[m][n] * Fn[m][n]).trace() for m in range(4) for n in range(4))).simplify_full()
        pred = (192 * rho^4 / (r2 + rho^2)^4).subs(pt)
        print("%-7s at %s: self-dual %s, anti-self-dual %s, F^a F^a = %s" % (name, list(pt.values()), sd, asd, FF))
        print("  [PASS] F^a F^a = 192 rho^4/(x^2 + rho^2)^4:", bool(FF == pred))
    print("[PASS] %s gives the %s field:" % (name, "self-dual" if name == "U" else "anti-self-dual"), sd if name == "U" else asd)
