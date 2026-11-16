# Exercise exr-qdm-dp-inverse: with the Weyl matrices, (p/ - m)(p/ + m) = (p^2 - m^2) 1, so i/(p/ - m) = i(p/ + m)/(p^2 - m^2).
p0, p1, p2, p3, m = var("p0 p1 p2 p3 m")
s0 = identity_matrix(SR, 2); sx = matrix(SR, [[0, 1], [1, 0]]); sy = matrix(SR, [[0, -I], [I, 0]]); sz = matrix(SR, [[1, 0], [0, -1]])
Z2 = zero_matrix(SR, 2)
g = [block_matrix([[Z2, s], [-s if k else s, Z2]]) for k, s in enumerate((s0, sx, sy, sz))]
ps = p0 * g[0] - p1 * g[1] - p2 * g[2] - p3 * g[3]
one = identity_matrix(SR, 4)
D = ((ps - m * one) * (ps + m * one) - (p0**2 - p1**2 - p2**2 - p3**2 - m**2) * one).simplify_full()
print("(p/ - m)(p/ + m) - (p^2 - m^2) 1 = 0:", D == 0)
dd = ((ps - m * one).det() - (p0**2 - p1**2 - p2**2 - p3**2 - m**2)**2).simplify_full()
print("det(p/ - m) - (p^2 - m^2)^2 = 0:", bool(dd == 0))
