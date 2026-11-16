# Exercise exr-qdm-dr-yukawa-trace: sum over spins of |ubar(p1) v(p2)|^2 = tr[(p1/ + m)(p2/ - m)] = 4(p1.p2 - m^2), which in the
# rest frame of the decaying scalar of mass M is 2(M^2 - 4m^2).
a0, a1, a2, a3, b0, b1, b2, b3, m, M = var("a0 a1 a2 a3 b0 b1 b2 b3 m M")
s0 = identity_matrix(SR, 2); sx = matrix(SR, [[0, 1], [1, 0]]); sy = matrix(SR, [[0, -I], [I, 0]]); sz = matrix(SR, [[1, 0], [0, -1]])
Z2 = zero_matrix(SR, 2)
g = [block_matrix([[Z2, s], [-s if k else s, Z2]]) for k, s in enumerate((s0, sx, sy, sz))]
sl = lambda q: q[0] * g[0] - q[1] * g[1] - q[2] * g[2] - q[3] * g[3]
one = identity_matrix(SR, 4)
p1 = [a0, a1, a2, a3]; p2 = [b0, b1, b2, b3]
tr = ((sl(p1) + m * one) * (sl(p2) - m * one)).trace().simplify_full()
print("tr[(p1/ + m)(p2/ - m)] =", tr, "  = 4(p1.p2 - m^2):", bool((tr - 4 * (a0 * b0 - a1 * b1 - a2 * b2 - a3 * b3 - m**2)).simplify_full() == 0))
# rest frame: p1 = (M/2, 0, 0, p), p2 = (M/2, 0, 0, -p), p^2 = M^2/4 - m^2
p = sqrt(M**2 / 4 - m**2)
print("rest frame:", tr.subs(a0=M / 2, a1=0, a2=0, a3=p, b0=M / 2, b1=0, b2=0, b3=-p).simplify_full())
