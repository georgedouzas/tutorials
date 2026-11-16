# Exercise exr-smd-ckm-wolfenstein: expand the standard parametrisation with s12 = lam, s23 = A lam^2, s13 e^{-i delta} = A lam^3 (rho - i eta)
# to order lam^3 (Pal eq. 17.24, Exercise 17.1).
lam, A, rho, eta = var("lam A rho eta")
s12, s23 = lam, A * lam^2
z = A * lam^3 * (rho - I * eta)             # s13 e^{-i delta}
zb = A * lam^3 * (rho + I * eta)            # s13 e^{+i delta}
s13sq = z * zb
c12, c23, c13 = sqrt(1 - s12^2), sqrt(1 - s23^2), sqrt(1 - s13sq)
V = matrix(SR, [[c12 * c13, s12 * c13, z],
                [-s12 * c23 - c12 * s23 * zb, c12 * c23 - s12 * s23 * zb, s23 * c13],
                [s12 * s23 - c12 * c23 * zb, -c12 * s23 - s12 * c23 * zb, c23 * c13]])
W = V.apply_map(lambda e: e.series(lam, 4).truncate().expand())
print(W)
target = matrix(SR, [[1 - lam^2 / 2, lam, A * lam^3 * (rho - I * eta)], [-lam, 1 - lam^2 / 2, A * lam^2], [A * lam^3 * (1 - rho - I * eta), -A * lam^2, 1]])
print("[PASS] to order lam^3 the matrix is Wolfenstein's form (Pal eq. 17.24):", bool((W - target).expand() == 0))
print("[PASS] eta (the CP phase) enters only V_ub and V_td at this order:", [(i, j) for i in range(3) for j in range(3) if W[i, j].has(eta)] == [(0, 2), (2, 0)])
l, Av = 0.22650, 0.04053 / 0.22650^2
r, e = 0.00361 * cos(1.196) / (Av * l^3), 0.00361 * sin(1.196) / (Av * l^3)
print("lambda = %.4f, A = %.3f, rho = %.3f, eta = %.3f" % (l, Av, r, e))
