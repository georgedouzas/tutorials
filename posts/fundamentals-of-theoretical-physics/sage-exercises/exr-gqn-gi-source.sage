# Exercise exr-gqn-gi-source: int dbar1 d1 dbar2 d2 exp(-thetabar M theta + etabar theta + thetabar eta) = det(M) exp(etabar M^{-1} eta) for a general 2x2 M.
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
M = matrix(K, 2, 2, R.gens()); Mi = M.inverse()
E = ExteriorAlgebra(K, ["t1", "t2", "tb1", "tb2", "e1", "e2", "eb1", "eb2"])
t = E.gens()[0:2]; tb = E.gens()[2:4]; e = E.gens()[4:6]; eb = E.gens()[6:8]
X = -sum(tb[i] * M[i, j] * t[j] for i in range(2) for j in range(2)) + sum(eb[i] * t[i] + tb[i] * e[i] for i in range(2))
lhs = integrate_all(gexp(X), [2, 0, 3, 1])
rhs = M.det() * gexp(sum(eb[i] * Mi[i, j] * e[j] for i in range(2) for j in range(2)))
print("difference:", lhs - rhs)
print("equal:", lhs == rhs)
