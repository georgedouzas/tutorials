# Exercise exr-rgb-pa-ellipsoid-blow: a solid ellipsoid fixed at its centre is struck normally at a surface point (xi, eta, zeta); direction of the instantaneous axis.
a, b, c, M, P, f, g, h = var('a b c M P xi eta zeta')
I = M/5*diagonal_matrix([b^2 + c^2, c^2 + a^2, a^2 + b^2])
n = vector([f/a^2, g/b^2, h/c^2])                     # normal direction at (xi, eta, zeta)
K = vector([f, g, h]).cross_product(-P*n)            # moment of the blow (inwards) about the centre
w = (I.inverse()*K).simplify_full()
claim = vector([a^2*(b^2 - c^2)/((b^2 + c^2)*f), b^2*(c^2 - a^2)/((c^2 + a^2)*g), c^2*(a^2 - b^2)/((a^2 + b^2)*h)])
print('omega =', w)
print('omega parallel to (a^2 (b^2 - c^2)/((b^2 + c^2) xi), ...):', [bool(e == 0) for e in w.cross_product(claim).simplify_full()])
