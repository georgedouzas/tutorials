# Exercise exr-gqn-gi-change: for theta'_i = B_ij theta_j, theta'_1 theta'_2 = det(B) theta_1 theta_2, so the measure transforms with the inverse Jacobian.
R = PolynomialRing(QQ, ["b11", "b12", "b21", "b22"])
B = matrix(R, 2, 2, R.gens())
E = ExteriorAlgebra(R, ["t1", "t2"])
t1, t2 = E.gens()
tp = [B[i, 0] * t1 + B[i, 1] * t2 for i in range(2)]
print("theta'_1 theta'_2 =", tp[0] * tp[1])
print("equals det(B) theta_1 theta_2:", tp[0] * tp[1] == B.det() * t1 * t2)
