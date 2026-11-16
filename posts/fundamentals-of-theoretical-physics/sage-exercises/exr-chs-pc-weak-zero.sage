# Exercise exr-chs-pc-weak-zero: F = |x cross p|^2 - R^2|p|^2 vanishes on the surface x^2 = R^2, x.p = 0 and is a combination of the constraints.
x1, x2, x3, p1, p2, p3, R = var('x1 x2 x3 p1 p2 p3 R')
X = vector([x1, x2, x3]); P = vector([p1, p2, p3])
chi1 = X*X - R^2; chi2 = X*P
Lv = X.cross_product(P)
F = Lv*Lv - R^2*(P*P)
g1, g2 = P*P, -(X*P)
print('F - (g1*chi1 + g2*chi2) =', (F - g1*chi1 - g2*chi2).expand())
# a point on the surface: x on the sphere, p tangent
Xs = vector([R, 0, 0]); Ps = vector([0, 2, -1])
sub = dict(zip([x1, x2, x3, p1, p2, p3], list(Xs) + list(Ps)))
print('F at a point of the surface =', F.subs(sub).expand())
grad = [diff(F, v).subs(sub).expand() for v in [x1, x2, x3, p1, p2, p3]]
print('gradient of F there =', grad)
