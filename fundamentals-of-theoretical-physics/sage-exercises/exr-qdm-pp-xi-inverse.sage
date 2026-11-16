# Exercise exr-qdm-pp-xi-inverse: the kinetic operator of L_xi in momentum space, K_{mu rho} = -k^2 g_{mu rho} + (1 - 1/xi) k_mu k_rho,
# times the propagator numerator -[g^{rho nu} - (1 - xi) k^rho k^nu/k^2]/k^2 gives delta_mu^nu.
k0, k1, k2, k3, xi = var("k0 k1 k2 k3 xi")
g = diagonal_matrix(SR, [1, -1, -1, -1])
ku = vector(SR, [k0, k1, k2, k3]); kl = g * ku; ksq = ku * kl
K = -ksq * g + (1 - 1 / xi) * kl.column() * kl.row()
D = -(g - (1 - xi) * ku.column() * ku.row() / ksq) / ksq
print("K D = 1:", (K * D - identity_matrix(SR, 4)).simplify_full() == 0)
