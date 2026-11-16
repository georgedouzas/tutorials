# Exercise exr-gqn-gi-two-point: <theta_i thetabar_j> = int theta_i thetabar_j exp(-thetabar M theta) / det M = (M^{-1})_{ij} for a general 3x3 M.
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
R = PolynomialRing(QQ, ["m%d%d" % (i, j) for i in range(1, 4) for j in range(1, 4)]); K = R.fraction_field()
M = matrix(K, 3, 3, R.gens())
E = ExteriorAlgebra(K, ["t1", "t2", "t3", "tb1", "tb2", "tb3"])
t = E.gens()[:3]; tb = E.gens()[3:]
w = gexp(-sum(tb[i] * M[i, j] * t[j] for i in range(3) for j in range(3)))
order = [3, 0, 4, 1, 5, 2]
G = matrix(K, 3, 3, lambda i, j: integrate_all(t[i] * tb[j] * w, order).monomial_coefficients().get(FrozenBitset(), 0) / M.det())
print("<theta_i thetabar_j> = M^{-1}:", G == M.inverse())
print("<thetabar_j theta_i> = -M^{-1}:", matrix(K, 3, 3, lambda i, j: integrate_all(tb[j] * t[i] * w, order).monomial_coefficients().get(FrozenBitset(), 0) / M.det()) == -M.inverse())
