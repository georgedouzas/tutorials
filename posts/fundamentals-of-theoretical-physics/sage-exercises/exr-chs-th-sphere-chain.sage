# Exercise exr-chs-th-sphere-chain: the Dirac-Bergmann algorithm for L = (m/2)|xdot|^2 - (lambda/2)(|x|^2 - R^2) with lambda a coordinate.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
x1, x2, x3, lam, p1, p2, p3, pl, m, R, u = var('x1 x2 x3 lam p1 p2 p3 pl m R u')
qs, ps = [x1, x2, x3, lam], [p1, p2, p3, pl]
X = vector([x1, x2, x3]); P = vector([p1, p2, p3])
H = P*P/(2*m) + lam/2*(X*X - R^2)
HT = H + u*pl
print('primary p_lambda:   d/dt p_lambda =', PB(pl, HT, qs, ps))
chi1 = X*X - R^2
print('chi1 = |x|^2 - R^2: d/dt chi1 =', PB(chi1, HT, qs, ps).factor())
chi2 = X*P
print('chi2 = x.p:         d/dt chi2 =', PB(chi2, HT, qs, ps).expand())
chi3 = P*P/m - lam*(X*X)
d3 = PB(chi3, HT, qs, ps).expand()
print('chi3 = |p|^2/m - lambda |x|^2: d/dt chi3 =', d3)
print('d/dt chi3 + u |x|^2 + (4 lambda/m) x.p =', (d3 + u*(X*X) + 4*lam/m*(X*P)).expand(), ' -> on the surface u = 0: the chain stops')
print('lambda from chi3 = 0:', solve(chi3 == 0, lam)[0])
