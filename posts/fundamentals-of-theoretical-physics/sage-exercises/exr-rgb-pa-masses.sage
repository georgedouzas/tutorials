# Exercise exr-rgb-pa-masses: principal axes of masses m, m, 2m at the vertices (0, 0), (0, 4a), (2a, 0) of a right triangle, about their centre of mass.
m, a = var('m a'); assume(m > 0, a > 0)
pts = [(vector([0, 0, 0]), m), (vector([0, 4*a, 0]), m), (vector([2*a, 0, 0]), 2*m)]
G = sum(mm*X for X, mm in pts) / sum(mm for X, mm in pts)
print('centre of mass:', G)
I = sum(mm*(((X - G)*(X - G))*identity_matrix(3) - (X - G).column()*(X - G).row()) for X, mm in pts)
print('inertia tensor / (4 m a^2):'); print(I / (4*m*a^2))
ev = I.eigenvectors_right()
for val, vecs, mult in ev:
    v = vecs[0]
    print('principal moment', val.simplify_full(), ' axis', v, ' angle with x:', (arctan(v[1]/v[0]) if v[0] != 0 else pi/2).simplify_full() if v[2] == 0 else 'z-axis')
print('tan(2 phi) = 2 I_xy/(I_xx - I_yy) =', (2*I[0, 1]/(I[0, 0] - I[1, 1])).simplify_full(), '; tan(pi/4) =', tan(pi/4))
