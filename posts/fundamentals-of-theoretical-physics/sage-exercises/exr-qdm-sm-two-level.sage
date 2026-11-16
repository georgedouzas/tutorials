# Exercise exr-qdm-sm-two-level: two levels split by Delta, coupled by a constant V for a time T. The first Dyson term gives the
# transition probability P_1 = 4|V|^2 sin^2(Delta T/2)/Delta^2; the exact (Rabi) result is
# P = 4|V|^2/(Delta^2 + 4|V|^2) sin^2(sqrt(Delta^2 + 4|V|^2) T/2). They agree to order V^2.
D, V, T = 1.0, 0.05, 7.0
H = matrix(CDF, [[0, V], [V, D]])                     # H = H0 + Hint with H0 = diag(0, Delta)
U = (-I * H * T).exp()
P_exact = abs(U[1, 0])**2
P_rabi = 4 * V**2 / (D**2 + 4 * V**2) * sin(sqrt(D**2 + 4 * V**2) * T / 2)**2
P_dyson = 4 * V**2 * sin(D * T / 2)**2 / D**2
print("exact %.6e   Rabi formula %.6e   first-order Dyson %.6e   relative difference %.2e" % (P_exact, P_rabi, P_dyson, abs(P_dyson / P_exact - 1)))
for V in (0.1, 0.02):
    H = matrix(CDF, [[0, V], [V, D]]); Pe = abs((-I * H * T).exp()[1, 0])**2
    print("V = %g: exact/first-order - 1 = %.2e" % (V, Pe / (4 * V**2 * sin(D * T / 2)**2 / D**2) - 1))
