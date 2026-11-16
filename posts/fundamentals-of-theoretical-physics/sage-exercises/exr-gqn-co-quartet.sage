# Exercise exr-gqn-co-quartet: one momentum of the free abelian theory in a toy basis (T1, T2, S, L, c, cbar): two transverse photons of norm 1,
# the null photon states S and L with <S|L> = 1, and the ghost pair with <c|cbar> = 1. Q maps S -> c and cbar -> L. Q is nilpotent and
# self-adjoint for the indefinite metric G, ker Q / im Q has dimension 2, and the metric on ker Q is positive modulo its null directions, which are im Q.
G = matrix(QQ, 6, 6, 0)
G[0, 0] = G[1, 1] = 1
G[2, 3] = G[3, 2] = 1          # <S|L> = 1, <S|S> = <L|L> = 0
G[4, 5] = G[5, 4] = 1          # <c|cbar> = 1, <c|c> = <cbar|cbar> = 0
Q = matrix(QQ, 6, 6, 0)        # columns are images of basis vectors
Q[4, 2] = 1                    # Q S = c
Q[3, 5] = 1                    # Q cbar = L
print("Q^2 = 0:", Q^2 == 0, "; self-adjoint, G Q = Q^T G:", G * Q == Q.transpose() * G)
print("signature of G (positive, negative):", (sum(1 for e in G.eigenvalues() if e > 0), sum(1 for e in G.eigenvalues() if e < 0)))
ker = Q.right_kernel(); im = Q.column_space()
print("dim ker Q =", ker.dimension(), ", dim im Q =", im.dimension(), ", dim cohomology =", ker.dimension() - im.dimension())
B = ker.basis_matrix()
Gk = B * G * B.transpose()
print("metric on ker Q in the basis", [list(v) for v in ker.basis()], ":\n", Gk)
rad = Gk.right_kernel()
print("null directions of the metric on ker Q = im Q:", (rad.basis_matrix() * B).row_space() == im)
