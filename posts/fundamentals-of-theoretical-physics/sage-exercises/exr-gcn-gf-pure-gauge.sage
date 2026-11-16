# Exercise exr-gcn-gf-pure-gauge: the SU(2) potential A = g^{-1} dg of g(x, y) = exp(x T_1) exp(y T_2), obtained from the
# trivial potential by a change of section, has A_y = T_2 and an x-independent A_x, and its field strength vanishes.
x, y = var("x y", domain="real")
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
T = [-I / 2 * sa for sa in s]
expT = lambda th, k: cos(th / 2) * identity_matrix(SR, 2) - I * sin(th / 2) * s[k]      # exp(th T_k)
simp = lambda M: M.apply_map(lambda e: e.expand().simplify_trig())
g = expT(x, 0) * expT(y, 1)
gi = expT(-y, 1) * expT(-x, 0)
Ax = simp(gi * g.apply_map(lambda e: diff(e, x)))
Ay = simp(gi * g.apply_map(lambda e: diff(e, y)))
F = simp(Ay.apply_map(lambda e: diff(e, x)) - Ax.apply_map(lambda e: diff(e, y)) + Ax * Ay - Ay * Ax)
print("A_x ="); print(Ax)
print("[PASS] A_y = T_2:", (Ay - T[1]).is_zero())
print("[PASS] A_x = exp(-y T_2) T_1 exp(y T_2) = cos(y) T_1 + sin(y) T_3:", (Ax - cos(y) * T[0] - sin(y) * T[2]).apply_map(lambda e: e.trig_reduce().simplify_full()).is_zero())
print("[PASS] A_x does not depend on x:", all(diff(e, x) == 0 for e in Ax.list()))
print("[PASS] F_xy = 0:", F.is_zero())
