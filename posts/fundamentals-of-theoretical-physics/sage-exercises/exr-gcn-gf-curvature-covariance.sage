# Exercise exr-gcn-gf-curvature-covariance: for the SU(2) potential A_x = y T_3, A_y = x T_1 and the gauge transformation
# g = exp(x T_2) exp(x y T_3), the transformed potential A' = g^{-1} A g + g^{-1} dg has F' = g^{-1} F g, while the
# components of F themselves change.
x, y = var("x y", domain="real")
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
T = [-I / 2 * sa for sa in s]
expT = lambda th, k: cos(th / 2) * identity_matrix(SR, 2) - I * sin(th / 2) * s[k]
simp = lambda M: M.apply_map(lambda e: e.simplify_full().trig_reduce().simplify_full())
d = lambda M, v: M.apply_map(lambda e: diff(e, v))
def Fxy(Ax, Ay):
    return d(Ay, x) - d(Ax, y) + Ax * Ay - Ay * Ax
Ax, Ay = y * T[2], x * T[0]
g = expT(x, 1) * expT(x * y, 2); gi = g.inverse()
Axp, Ayp = gi * Ax * g + gi * d(g, x), gi * Ay * g + gi * d(g, y)
F, Fp = simp(Fxy(Ax, Ay)), simp(Fxy(Axp, Ayp))
comp = lambda M: [(-2 * (T[a] * M).trace()).simplify_full() for a in range(3)]
print("components of F_xy along T_1, T_2, T_3:", comp(F))
print("[PASS] F_xy = T_1 + x y T_2 - T_3:", (F - T[0] - x * y * T[1] + T[2]).is_zero())
print("[PASS] F' = g^{-1} F g:", simp(Fp - gi * F * g).is_zero())
print("[PASS] the components of F' differ from those of F (F is covariant, not invariant):", not simp(Fp - F).is_zero())
print("[PASS] tr F'^2 = tr F^2:", bool((Fp * Fp).trace().simplify_full() - (F * F).trace().simplify_full() == 0) or
      bool(((Fp * Fp).trace() - (F * F).trace()).simplify_full().trig_reduce().simplify_full() == 0))
