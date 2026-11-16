# Exercise exr-chs-db-transverse: in Fourier space the transverse delta function is the projector delta_ij - k_i k_j/k^2 onto the two polarisations.
k1, k2, k3 = var('k1 k2 k3')
k = vector([k1, k2, k3]); k2s = k*k
Ptr = identity_matrix(SR, 3) - matrix(SR, 3, 3, lambda i, j: k[i]*k[j]/k2s)
print('P^2 - P =', (Ptr*Ptr - Ptr).simplify_full().list())
print('k . P =', (k*Ptr).simplify_full())
print('trace P =', Ptr.trace().simplify_full())
print('eigenvalues of P at k = (1, 2, 2):', Ptr.subs({k1: 1, k2: 2, k3: 2}).eigenvalues())
# position space: d_i d_j (1/(4 pi r)) has trace equal to minus delta (away from the origin the trace vanishes)
x, y, z = var('x y z'); r = sqrt(x^2 + y^2 + z^2)
G = 1/(4*pi*r)
print('Laplacian of 1/(4 pi r) away from 0:', (diff(G, x, 2) + diff(G, y, 2) + diff(G, z, 2)).simplify_full())
