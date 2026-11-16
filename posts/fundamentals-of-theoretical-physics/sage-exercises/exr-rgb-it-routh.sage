# Exercise exr-rgb-it-routh: inertia tensors of a box, an elliptic lamina and a solid ellipsoid about their centres, and Routh's rule (denominators 3, 4, 5).
a, b, c, M = var('a b c M'); assume(a > 0, b > 0, c > 0)
x, y, z, r, t, u = var('x y z r t u')
def tensor(dens, coords, jac, ranges):
    X = vector(coords)
    I = matrix(SR, 3, 3)
    for i in range(3):
        for j in range(3):
            f = (X * X if i == j else 0) - X[i] * X[j]
            g = f * dens * jac
            for (v, lo, hi) in ranges:
                g = integrate(g, v, lo, hi)
            I[i, j] = g.simplify_full()
    return I
# box of sides 2a, 2b, 2c, density M/(8abc)
box = tensor(M / (8*a*b*c), [x, y, z], 1, [(x, -a, a), (y, -b, b), (z, -c, c)])
print('box:', box.diagonal(), ' off-diagonal zero:', all(box[i, j] == 0 for i in range(3) for j in range(3) if i != j))
# elliptic lamina x = a r cos t, y = b r sin t, z = 0, density M/(pi a b), Jacobian a b r
lam = tensor(M / (pi*a*b), [a*r*cos(t), b*r*sin(t), 0], a*b*r, [(r, 0, 1), (t, 0, 2*pi)])
print('elliptic lamina:', lam.diagonal())
# solid ellipsoid x = a r sin u cos t, ..., density M/(4/3 pi a b c), Jacobian a b c r^2 sin u
ell = tensor(M / (4/3*pi*a*b*c), [a*r*sin(u)*cos(t), b*r*sin(u)*sin(t), c*r*cos(u)], a*b*c*r^2*sin(u), [(r, 0, 1), (u, 0, pi), (t, 0, 2*pi)])
print('solid ellipsoid:', ell.diagonal())
print('Routh denominators (box, lamina, ellipsoid):', [(M*(b^2 + c^2)/box[0, 0]).simplify_full(), (M*b^2/lam[0, 0]).simplify_full(), (M*(b^2 + c^2)/ell[0, 0]).simplify_full()])
