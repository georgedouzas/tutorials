# Exercise exr-grf-rn-no-force: a particle with e/mu = Q/M stays at rest in the extreme Reissner-Nordstrom field.
r, m, G = var('r m G'); assume(r > m, m > 0, G > 0)
M = m/G; Q = sqrt(4*pi/G)*m          # extreme: G Q^2/4pi = m^2
f = 1 - 2*m/r + G*Q^2/(4*pi*r^2)
print('f =', f.factor())
mu = var('mu'); e = mu*Q/M            # charge-to-mass ratio of the hole
calE = mu
rdot2 = (calE/mu - e*Q/(4*pi*mu*r))^2 - f
print('rdot^2 =', rdot2.simplify_full())
print('rddot = (1/2) d(rdot^2)/dr =', (diff(rdot2, r)/2).simplify_full())
print('e/mu =', (e/mu).simplify_full(), ';  (e/mu)^2 =', ((e/mu)^2).simplify_full(), ' = 4 pi G:', bool(((e/mu)^2 - 4*pi*G).simplify_full() == 0))
