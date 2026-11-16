# Exercise exr-rgb-pa-hemisphere: a solid hemisphere rocking on a smooth horizontal plane; centre of mass, moment about G, and the frequency of small oscillations.
R, M, g, phi, phid = var('R M g phi phid'); assume(R > 0)
r, u, t = var('r u t')
rho = M / (2/3*pi*R^3)
dm = rho*r^2*sin(u)                                         # spherical coordinates, 0 <= u <= pi/2 (flat face down at z = 0, dome up)
z_G = integrate(integrate(integrate(r*cos(u)*dm, r, 0, R), u, 0, pi/2), t, 0, 2*pi) / M
I_perp_O = integrate(integrate(integrate(((r*sin(u)*sin(t))^2 + (r*cos(u))^2)*dm, r, 0, R), u, 0, pi/2), t, 0, 2*pi)
I_G = (I_perp_O - M*z_G^2).simplify_full()
print('distance of G from the centre:', z_G, '; I about a horizontal axis through G:', I_G, '=', I_G/(M*R^2), 'M R^2')
# resting on the curved face: centre O at height R, G at height R - z_G cos(phi); G moves vertically only (smooth plane)
zdot = diff(R - z_G*cos(phi), phi)*phid
L = 1/2*I_G*phid^2 + 1/2*M*zdot^2 - M*g*(R - z_G*cos(phi))
K = diff(-L, phi, 2).subs(phi=0, phid=0); Mk = diff(L, phid, 2).subs(phi=0)
print('omega^2 =', (K/Mk).simplify_full())
