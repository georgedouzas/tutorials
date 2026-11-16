# Exercise exr-rgb-lt-sleeping: the linearised Euler-Poisson equations about the sleeping top, the stability condition p_psi^2 > 4 I1 M g l, and a toy top.
I1, I3, w3, Mgl, s = var('I1 I3 w3 Mgl s'); assume(I1 > 0, I3 > 0, Mgl > 0)
# state (omega1, omega2, gamma1, gamma2) about omega = (0, 0, w3), gamma = R^T z = (0, 0, 1)
# I1 omega1' = (I1 - I3) w3 omega2 + Mgl gamma2, I1 omega2' = (I3 - I1) w3 omega1 - Mgl gamma1,
# gamma1' = gamma2 w3 - omega2, gamma2' = omega1 - gamma1 w3
A = matrix(SR, [[0, (I1 - I3)*w3/I1, 0, Mgl/I1], [(I3 - I1)*w3/I1, 0, -Mgl/I1, 0], [0, -1, 0, w3], [1, 0, -w3, 0]])
cp = (s*identity_matrix(SR, 4) - A).det().expand()
# with s = i nu the roots satisfy I1 nu^2 -+ I3 w3 nu ... ; check the factorisation into the two quadratics
nu = var('nu')
quad = (I1*nu^2 - I3*w3*nu + Mgl)       # frequencies relative to the body-fixed frame shifted by w3
roots = [r.rhs() for r in solve(quad == 0, nu)]
print('the four eigenvalues are s = +-i(nu - w3), nu the roots of I1 nu^2 - I3 w3 nu + Mgl = 0:',
      all(bool(cp.subs(s=sg*I*(r - w3)).simplify_full() == 0) for r in roots for sg in (1, -1)))
print('discriminant of I1 nu^2 - p_psi nu + Mgl:', (I3*w3)^2 - 4*I1*Mgl)
# toy top: disc of radius 3 cm on a light axle, centre of mass 4 cm above the tip
r, ll, gg = 0.03, 0.04, 9.81
i3, i1 = r^2/2, r^2/4 + ll^2                            # per unit mass
wmin = 2*sqrt(i1*gg*ll)/i3
print('per unit mass: I3 = %.3e, I1 = %.3e m^2; minimal spin %.1f rad/s = %.1f rev/s' % (i3, i1, wmin, wmin/(2*pi)))
