# Exercise exr-chs-fc-sphere-matrix: the matrix of brackets of the four constraints of the particle on a sphere with a multiplier.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
x1, x2, x3, lam, p1, p2, p3, pl, m, R = var('x1 x2 x3 lam p1 p2 p3 pl m R')
qs, ps = [x1, x2, x3, lam], [p1, p2, p3, pl]
X = vector([x1, x2, x3]); P = vector([p1, p2, p3])
Phi = [pl, X*X - R^2, X*P, P*P/m - lam*(X*X)]
C = matrix(SR, 4, 4, lambda a, b: PB(Phi[a], Phi[b], qs, ps).expand())
print(C)
print('det C =', C.det().factor())
# a point of the constraint surface: |x| = R, x.p = 0, lambda = |p|^2/(m R^2)
pt = {x1: R, x2: 0, x3: 0, p1: 0, p2: 2, p3: 1, lam: 5/(m*R^2)}
print('C on the surface:'); print(C.subs(pt).simplify_full())
print('det there =', C.subs(pt).det().simplify_full(), ' (nonzero: all four constraints are second class)')
