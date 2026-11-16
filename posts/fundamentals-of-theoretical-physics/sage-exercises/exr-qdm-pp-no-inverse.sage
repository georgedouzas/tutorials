# Exercise exr-qdm-pp-no-inverse: without gauge fixing the kinetic operator K_{mu nu} = -k^2 g_{mu nu} + k_mu k_nu of -F^2/4 has
# k^nu in its kernel and zero determinant, so the Maxwell field has no propagator until a gauge is fixed.
k0, k1, k2, k3 = var("k0 k1 k2 k3")
g = diagonal_matrix(SR, [1, -1, -1, -1])
ku = vector(SR, [k0, k1, k2, k3]); kl = g * ku; ksq = ku * kl
K = -ksq * g + kl.column() * kl.row()
print("K k = 0:", (K * ku).simplify_full() == 0, "  det K =", K.det().simplify_full())
print("rank of K at k = (2, 1, 0, 0):", K.subs(k0=2, k1=1, k2=0, k3=0).rank())
