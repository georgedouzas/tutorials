# Exercise exr-rgb-it-triangle: a uniform triangular lamina has the inertia tensor of three masses M/3 at the midpoints of its sides (an equimomental system).
x2, y2, x3, y3, M, s, t = var('x2 y2 x3 y3 M s t')
P = lambda s, t: vector([s*x2 + t*x3, s*y2 + t*y3, 0])     # the triangle with vertices 0, B = (x2, y2), C = (x3, y3)
def tensor_of(points_masses):
    I = matrix(SR, 3, 3)
    for X, m in points_masses:
        I += m*((X*X)*identity_matrix(3) - X.column()*X.row())
    return I
# lamina: dm = (M/area) |det| ds dt = 2M ds dt
X = P(s, t)
lam = matrix(SR, 3, 3, lambda i, j: integrate(integrate(2*M*((X*X if i == j else 0) - X[i]*X[j]), t, 0, 1 - s), s, 0, 1))
mid = tensor_of([(P(1/2, 0), M/3), (P(1/2, 1/2), M/3), (P(0, 1/2), M/3)])
print('lamina - midpoints =', (lam - mid).simplify_full())
# the vertices with M/3 each are not equimomental
ver = tensor_of([(P(0, 0), M/3), (P(1, 0), M/3), (P(0, 1), M/3)])
print('lamina - vertices, [0,0] entry =', (lam - ver)[0, 0].factor())
