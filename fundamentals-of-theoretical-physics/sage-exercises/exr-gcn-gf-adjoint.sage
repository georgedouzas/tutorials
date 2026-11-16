# Exercise exr-gcn-gf-adjoint: for the adjoint representation Ad(g) Phi = g Phi g^{-1} of SU(2), the derivative at the
# identity is ad(X) Phi = [X, Phi], and D_mu Phi = d_mu Phi + [A_mu, Phi] transforms as Phi' = g^{-1} Phi g does.
t, x = var("t x", domain="real")
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
T = [-I / 2 * sa for sa in s]
expT = lambda th, k: cos(th / 2) * identity_matrix(SR, 2) - I * sin(th / 2) * s[k]
simp = lambda M: M.apply_map(lambda e: e.simplify_full().trig_reduce().simplify_full())
d = lambda M: M.apply_map(lambda e: diff(e, x))
X, Phi0 = T[0], T[1] + 2 * T[2]
Ad = expT(t, 0) * Phi0 * expT(-t, 0)
print("[PASS] d/dt Ad(exp(t T_1)) Phi at t = 0 is [T_1, Phi]:", simp(Ad.apply_map(lambda e: diff(e, t)).subs(t=0) - (X * Phi0 - Phi0 * X)).is_zero())
A = x * T[2] + T[0]                                   # a potential along one direction x
Phi = x^2 * T[0] + sin(x) * T[1]                      # an adjoint field
g = expT(x^2, 1) * expT(x, 2); gi = g.inverse()
Ap, Phip = gi * A * g + gi * d(g), gi * Phi * g
DPhi, DPhip = d(Phi) + A * Phi - Phi * A, d(Phip) + Ap * Phip - Phip * Ap
print("[PASS] D' Phi' = g^{-1} (D Phi) g:", simp(DPhip - gi * DPhi * g).is_zero())
print("[PASS] the plain derivative is not covariant:", not simp(d(Phip) - gi * d(Phi) * g).is_zero())
