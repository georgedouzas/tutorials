# Exercise exr-chs-gg-reparametrisation: solutions of H_T = u(tau) phi for the relativistic particle with different multipliers trace the same worldline.
tau, s = var('tau s'); assume(tau > 0); E, p1, m, t0, x0 = var('E p1 m t0 x0')
u = function('u')
# Hamilton's equations of H_T = u (|p|^2 - p_t^2 + m^2)/2 with p_t = -E: tdot = u E, xdot = u p1, momenta constant
U = integral(u(s), s, 0, tau)
t_of_tau = t0 + E*U; x_of_tau = x0 + p1*U
print('t(tau) =', t_of_tau, ';  x(tau) =', x_of_tau)
print('dx/dt = (dx/dtau)/(dt/dtau) =', (diff(x_of_tau, tau)/diff(t_of_tau, tau)).simplify_full())
T = var('T')
print('x as a function of t:', (x0 + p1*(T - t0)/E), ' -- independent of u')
for uu in [SR(1), 1 + sin(s)/2, exp(-s/3)]:
    Ui = integral(uu, s, 0, tau)
    tt = t0 + E*Ui; xx = x0 + p1*Ui
    print('u =', uu.subs(s=tau), ': x - x0 - (p1/E)(t - t0) =', (xx - x0 - p1/E*(tt - t0)).simplify_full())
