# Exercise exr-gqn-gi-wick: <theta_i thetabar_j theta_k thetabar_l> = G_ij G_kl - G_il G_kj with G = M^{-1}, for a general 2x2 M and all index values.
def berezin(f, i):
    """Berezin integral int d(theta_i) f = left derivative of f with respect to generator i."""
    E = f.parent(); out = E.zero()
    for k, v in f.monomial_coefficients().items():
        idx = list(k)
        if i in idx:
            p = idx.index(i); rest = [j for j in idx if j != i]
            out += (-1)^p * v * (E.monomial(FrozenBitset(rest)) if rest else E.one())
    return out
def integrate_all(f, order):
    """int d(order[0]) d(order[1]) ... f: the rightmost differential acts first."""
    for i in reversed(order):
        f = berezin(f, i)
    return f
def gexp(x, nmax=12):
    out = x.parent().one(); term = out
    for k in range(1, nmax + 1):
        term = term * x / k
        if term == 0: break
        out += term
    return out
R = PolynomialRing(QQ, ["m11", "m12", "m21", "m22"]); K = R.fraction_field()
M = matrix(K, 2, 2, R.gens()); G = M.inverse()
E = ExteriorAlgebra(K, ["t1", "t2", "tb1", "tb2"])
t = E.gens()[:2]; tb = E.gens()[2:]
w = gexp(-sum(tb[i] * M[i, j] * t[j] for i in range(2) for j in range(2)))
ok = True
for i in range(2):
    for j in range(2):
        for k in range(2):
            for l in range(2):
                val = integrate_all(t[i] * tb[j] * t[k] * tb[l] * w, [2, 0, 3, 1]).monomial_coefficients().get(FrozenBitset(), 0) / M.det()
                ok = ok and (val == G[i, j] * G[k, l] - G[i, l] * G[k, j])
print("four-point function = G_ij G_kl - G_il G_kj for all 16 index choices:", ok)
