# Exercise exr-grf-lin-riemann-gauge: the linearised Riemann tensor vanishes for a pure gauge perturbation and has the symmetries of the Riemann tensor.
X = var('t x y z'); X = list(X)
chi = [function('c%d' % i)(*X) for i in range(4)]
def riem(h):
    d = lambda F, a, b: diff(F, X[a], X[b])
    return lambda a, b, c, e: (d(h[a][e], b, c) + d(h[b][c], a, e) - d(h[b][e], a, c) - d(h[a][c], b, e))/2
hg = [[diff(chi[n], X[m]) + diff(chi[m], X[n]) for n in range(4)] for m in range(4)]
R = riem(hg)
print('pure gauge: all components vanish:', all(bool(R(a, b, c, e).simplify_full() == 0) for a in range(4) for b in range(4) for c in range(4) for e in range(4)))
H = [[function('h%d%d' % (min(m, n), max(m, n)))(*X) for n in range(4)] for m in range(4)]
R = riem(H)
idx = [(a, b, c, e) for a in range(4) for b in range(4) for c in range(4) for e in range(4)]
print('R_abcd = -R_bacd:', all(bool((R(a, b, c, e) + R(b, a, c, e)) == 0) for a, b, c, e in idx))
print('R_abcd = R_cdab:', all(bool((R(a, b, c, e) - R(c, e, a, b)).simplify_full() == 0) for a, b, c, e in idx))
print('first Bianchi R_a[bcd] = 0:', all(bool((R(a, b, c, e) + R(a, c, e, b) + R(a, e, b, c)).simplify_full() == 0) for a, b, c, e in idx))
