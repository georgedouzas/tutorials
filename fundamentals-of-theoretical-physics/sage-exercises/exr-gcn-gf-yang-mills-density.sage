# Exercise exr-gcn-gf-yang-mills-density: tr(F_{mu nu} F^{mu nu}) is unchanged by F -> g^{-1} F g for every g in SU(2),
# so the Yang-Mills Lagrangian is a function on spacetime, although the components F^a are not; with
# tr(T_a T_b) = -delta_ab / 2 it equals -(1/2) F^a F^a.
a1, a2, a3, b1, b2, b3, th, ph = var("a1 a2 a3 b1 b2 b3 th ph", domain="real")
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
T = [-I / 2 * sa for sa in s]
expT = lambda t, k: cos(t / 2) * identity_matrix(SR, 2) - I * sin(t / 2) * s[k]
F1 = a1 * T[0] + a2 * T[1] + a3 * T[2]        # one component, say F_01
F2 = b1 * T[0] + b2 * T[1] + b3 * T[2]        # another, say F_12
g = expT(th, 2) * expT(ph, 0); gi = g.inverse()
inv = lambda M, N: (M * N).trace().simplify_full().trig_reduce().simplify_full()
G1, G2 = gi * F1 * g, gi * F2 * g
print("[PASS] tr(F_01 F_01) and tr(F_01 F_12) are invariant:", bool(inv(G1, G1) == inv(F1, F1)), bool(inv(G1, G2) == inv(F1, F2)))
print("[PASS] tr(F F) = -(1/2) F^a F^a:", bool(inv(F1, F1) == -(a1^2 + a2^2 + a3^2) / 2))
comp3 = (-2 * (T[2] * G1).trace()).simplify_full().trig_reduce().simplify_full()
print("the T_3 component after the rotation:", comp3)
print("[PASS] the component F^3 itself is not invariant:", bool(comp3 != a3))
