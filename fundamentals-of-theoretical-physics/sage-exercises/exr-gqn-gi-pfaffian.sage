# Exercise exr-gqn-gi-pfaffian: for a 4x4 antisymmetric B, int d4 d3 d2 d1 exp(theta^T B theta / 2) = Pf(B) = b12 b34 - b13 b24 + b14 b23, and Pf(B)^2 = det B.
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
R = PolynomialRing(QQ, ["b12", "b13", "b14", "b23", "b24", "b34"])
b12, b13, b14, b23, b24, b34 = R.gens()
B = matrix(R, [[0, b12, b13, b14], [-b12, 0, b23, b24], [-b13, -b23, 0, b34], [-b14, -b24, -b34, 0]])
E = ExteriorAlgebra(R, ["t1", "t2", "t3", "t4"]); t = E.gens()
X = sum(t[i] * B[i, j] * t[j] for i in range(4) for j in range(4)) / 2
val = integrate_all(gexp(X), [3, 2, 1, 0])
print("integral =", val)
print("Pf(B) =", B.pfaffian(), "  equal:", val == E(B.pfaffian()))
print("Pf(B)^2 == det B:", B.pfaffian()^2 == B.det())
