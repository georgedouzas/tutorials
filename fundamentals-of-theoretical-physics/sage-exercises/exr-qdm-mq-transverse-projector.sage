# Exercise exr-qdm-mq-transverse-projector: P_ij = delta_ij - k_i k_j/|k|^2 is a projector of rank 2 with k in its kernel, so the
# transverse delta function delta^tr_ij(x) = int d^3k/(2 pi)^3 e^{ik.x} P_ij(k) is divergence-free and idempotent under convolution.
k1, k2, k3 = var("k1 k2 k3")
k = vector(SR, [k1, k2, k3]); kk = k * k
P = identity_matrix(SR, 3) - k.column() * k.row() / kk
print("P^2 - P = 0:", (P * P - P).simplify_full() == 0)
print("P k = 0:", (P * k).simplify_full() == 0, "  trace P =", P.trace().simplify_full())
print("rank of P at k = (1, 2, 2):", P.subs(k1=1, k2=2, k3=2).rank())
