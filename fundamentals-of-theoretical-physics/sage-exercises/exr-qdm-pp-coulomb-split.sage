# Exercise exr-qdm-pp-coulomb-split: for k = (k0, kvec) in a general direction and a conserved current (k.J = 0),
# -J.J/k^2 = J_perp^2/k^2 + J_0^2/|kvec|^2: Feynman-gauge exchange = transverse photons + instantaneous Coulomb term.
k0, k1, k2, k3, j0, j1, j2 = var("k0 k1 k2 k3 j0 j1 j2")
kv = vector(SR, [k1, k2, k3]); kk = kv * kv
# a conserved current: J^0 = j0, Jvec = (j1, j2, J3) with k0 j0 = kvec.Jvec
J3 = solve(k0 * j0 == k1 * j1 + k2 * j2 + k3 * var("J3"), var("J3"))[0].rhs()
Jv = vector(SR, [j1, j2, J3])
ksq = k0**2 - kk
lhs = -(j0**2 - Jv * Jv) / ksq
Jperp2 = Jv * Jv - (kv * Jv)**2 / kk
rhs = Jperp2 / ksq + j0**2 / kk
print("-J.J/k^2 - (J_perp^2/k^2 + J_0^2/|k|^2) =", (lhs - rhs).simplify_full())
