# Exercise exr-gqn-fr-ward: contracting the kinematic part of the three-gluon vertex with k_mu (k + p + q = 0) gives
# (q^2 eta^{nu rho} - q^nu q^rho) - (p^2 eta^{nu rho} - p^nu p^rho), which vanishes against transverse polarisations of on-shell gluons p and q.
p = vector(SR, var("p0 p1 p2 p3")); q = vector(SR, var("q0 q1 q2 q3")); k = -p - q
eta = diagonal_matrix(SR, [1, -1, -1, -1])
low = lambda v: eta * v
V = lambda mu, nu, rho: eta[mu, nu] * (k - p)[rho] + eta[nu, rho] * (p - q)[mu] + eta[rho, mu] * (q - k)[nu]
lhs = matrix(SR, 4, 4, lambda nu, rho: sum(low(k)[mu] * V(mu, nu, rho) for mu in range(4)))
P = lambda v: (v * eta * v) * eta - v.column() * v.row()
print("k_mu V^{mu nu rho} = (q^2 eta - q q) - (p^2 eta - p p):", bool((lhs - P(q) + P(p)).simplify_full() == 0))
