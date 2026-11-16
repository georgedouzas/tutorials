# Exercise exr-qsc-born-green (Cini et al., Sec. 14.7, eqs. (14.63)-(14.68)): e^{ikr}/r solves the Helmholtz equation
# for r > 0, and the flux of its gradient through a small sphere tends to -4 pi, so (Laplacian + k^2) e^{ikr}/r = -4 pi delta.
r, k, eps, x, y, z = var('r k epsilon x y z'); assume(r > 0, k > 0, eps > 0)
u = exp(I*k*r)/r
radial = (diff(r^2*diff(u, r), r)/r^2 + k^2*u).simplify_full()
print("radial Laplacian + k^2 of e^{ikr}/r for r > 0:", radial)
R = sqrt(x^2 + y^2 + z^2); U = exp(I*k*R)/R
cart = (diff(U, x, 2) + diff(U, y, 2) + diff(U, z, 2) + k^2*U).simplify_full()
print("the same in Cartesian coordinates:", cart)
flux = (4*pi*eps^2*diff(u, r)).subs(r=eps)
print("flux of grad(e^{ikr}/r) through the sphere r = eps:", flux.simplify_full(), "-> limit", limit(flux, epsilon=0))
