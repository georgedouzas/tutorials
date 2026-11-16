# Exercise exr-chs-db-jacobi: the Dirac bracket of the sphere satisfies the Jacobi identity and kills the constraints.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
x1, x2, x3, p1, p2, p3, R = var('x1 x2 x3 p1 p2 p3 R')
qs, ps = [x1, x2, x3], [p1, p2, p3]
X = vector(qs); P = vector(ps)
psi = [X*X - R^2, X*P]
C = matrix(SR, 2, 2, lambda i, j: PB(psi[i], psi[j], qs, ps)); Ci = C.inverse()
def D(A, B):
    return (PB(A, B, qs, ps) - sum(PB(A, psi[i], qs, ps)*Ci[i, j]*PB(psi[j], B, qs, ps) for i in range(2) for j in range(2))).simplify_full()
set_random_seed(3)
Rr = PolynomialRing(QQ, 'x1,x2,x3,p1,p2,p3')
fs = [SR(Rr.random_element(degree=2, terms=4)) for _ in range(3)]
f, g, h = fs
print('f, g, h =', fs)
jac = (D(f, D(g, h)) + D(g, D(h, f)) + D(h, D(f, g))).simplify_full()
print('Jacobi sum =', jac)
print('Leibniz: {f, g h}_D - {f, g}_D h - g {f, h}_D =', (D(f, g*h) - D(f, g)*h - g*D(f, h)).simplify_full())
print('{psi_i, f}_D =', [D(c, f) for c in psi])
