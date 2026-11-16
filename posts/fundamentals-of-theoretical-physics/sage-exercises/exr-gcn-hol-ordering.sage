# Exercise exr-gcn-hol-ordering: for the constant SU(2) potential A_x = c T_1, A_y = c T_2 the transporters from (0, 0)
# to (L, L) along x-then-y, along y-then-x and along the diagonal are e^{-L A_y} e^{-L A_x}, e^{-L A_x} e^{-L A_y} and
# e^{-L (A_x + A_y)}; they differ, and the loop out along x-then-y and back along the diagonal has non-trivial holonomy.
L, c = var("L c", domain="real")
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
T = [-I / 2 * sa for sa in s]
expT = lambda th, k: cos(th / 2) * identity_matrix(SR, 2) - I * sin(th / 2) * s[k]
r = sqrt(2) * c * L                                    # exp(-L c (T_1 + T_2)) = exp(r n.T) with n = -(1, 1, 0)/sqrt 2
expD = lambda sgn: cos(r / 2) * identity_matrix(SR, 2) + sgn * I * sin(r / 2) * (s[0] + s[1]) / sqrt(2)
U_xy, U_yx, U_d = expT(-c * L, 1) * expT(-c * L, 0), expT(-c * L, 0) * expT(-c * L, 1), expD(1)
simp = lambda M: M.apply_map(lambda e: e.simplify_full().trig_reduce().simplify_full())
print("[PASS] the diagonal transporter is exp(-L(A_x + A_y)):", simp(U_d - (identity_matrix(2) - L * c * (T[0] + T[1]) + (L * c)^2 / 2 * (T[0] + T[1])^2)).apply_map(lambda e: e.taylor(L, 0, 2)).is_zero())
print("[PASS] x-then-y differs from y-then-x:", not simp(U_xy - U_yx).is_zero())
Hloop = simp(expD(-1) * U_xy)                          # out along x then y, back along the diagonal
w = (Hloop.trace() / 2).simplify_full()
print("(1/2) tr of the holonomy of the triangle:", w.taylor(L, 0, 4))
print("[PASS] the triangle holonomy is 1 - (L^2/2) F_xy + O(L^3), F_xy = c^2 T_3:",
      simp(Hloop.apply_map(lambda e: e.taylor(L, 0, 2)) - identity_matrix(2) + L^2 / 2 * c^2 * T[2]).is_zero())
