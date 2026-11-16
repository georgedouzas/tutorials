# Exercise exr-chs-db-sphere-angles: on the sphere the Dirac bracket of spherical angles and their momenta is canonical.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
x1, x2, x3, p1, p2, p3, R = var('x1 x2 x3 p1 p2 p3 R')
qs, ps = [x1, x2, x3], [p1, p2, p3]
X = vector(qs); P = vector(ps)
psi = [X*X - R^2, X*P]
C = matrix(SR, 2, 2, lambda i, j: PB(psi[i], psi[j], qs, ps)); Ci = C.inverse()
def D(A, B):
    return (PB(A, B, qs, ps) - sum(PB(A, psi[i], qs, ps)*Ci[i, j]*PB(psi[j], B, qs, ps) for i in range(2) for j in range(2)))
r = sqrt(X*X)
th = arccos(x3/r); ph = atan2(x2, x1)
# momenta p_theta = p . dx/dtheta, p_phi = p . dx/dphi, written in Cartesian variables
pth = (x1*x3*p1 + x2*x3*p2 - (x1^2 + x2^2)*p3)/sqrt(x1^2 + x2^2)
pph = x1*p2 - x2*p1
names = [('theta', th), ('phi', ph), ('p_theta', pth), ('p_phi', pph)]
pt = {x1: R*sin(0.7)*cos(0.4), x2: R*sin(0.7)*sin(0.4), x3: R*cos(0.7)}
# a momentum tangent to the sphere at that point
T = vector([-sin(0.4), cos(0.4), 0])*1.3 + vector([cos(0.7)*cos(0.4), cos(0.7)*sin(0.4), -sin(0.7)])*0.8
pt.update({p1: T[0], p2: T[1], p3: T[2]})
for i in range(4):
    for j in range(i + 1, 4):
        val = D(names[i][1], names[j][1]).subs(pt).subs(R=2).n()
        print('{%s, %s}_D at a point of the surface = %.12f' % (names[i][0], names[j][0], val))
