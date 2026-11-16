# Exercise exr-rgb-it-cavity: a ball of radius R with a spherical cavity of radius r touching its surface; centre of mass and principal moments (mass M of the hollow ball).
R, r, M = var('R r M'); assume(R > r, r > 0)
rho = M / (4/3*pi*(R^3 - r^3))
m_ball, m_hole = rho*4/3*pi*R^3, rho*4/3*pi*r^3
d = R - r                                   # centre of the cavity on the axis, at -d
x_G = ((m_ball*0 - m_hole*(-d)) / M).simplify_full()
print('centre of mass on the axis, opposite the cavity: x_G =', x_G, '= (R - r) r^3/(R^3 - r^3)?', bool((x_G - (R - r)*r^3/(R^3 - r^3)).simplify_full() == 0))
I3 = (2/5*m_ball*R^2 - 2/5*m_hole*r^2).simplify_full()   # about the axis of symmetry
I_O = 2/5*m_ball*R^2 - (2/5*m_hole*r^2 + m_hole*d^2)     # about a perpendicular axis through the centre O
I1 = (I_O - M*x_G^2).simplify_full()                     # shifted to G by Steiner
print('I3 =', I3.factor())
print('I1 = I2 =', I1.factor())
print('check against M/(R^3 - r^3) (2/5 (R^5 - r^5) - (R - r)^2 r^3 R^3/(R^3 - r^3)):',
      bool((I1 - M/(R^3 - r^3)*(2/5*(R^5 - r^5) - (R - r)^2*r^3*R^3/(R^3 - r^3))).simplify_full() == 0))
print('r -> 0 gives the full ball:', I3.limit(r=0), I1.limit(r=0))
