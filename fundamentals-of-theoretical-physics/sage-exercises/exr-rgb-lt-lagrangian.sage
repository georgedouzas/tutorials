# Exercise exr-rgb-lt-lagrangian: the Lagrangian of the heavy symmetric top from Euler's kinematic equations, its Euler-Lagrange equations and the conserved momenta.
t = var('t'); I1, I3, M, g, l = var('I1 I3 M g l')
th, ph, ps = [function(n)(t) for n in ('theta', 'phi', 'psi')]
w = vector([diff(th, t)*cos(ps) + diff(ph, t)*sin(th)*sin(ps), -diff(th, t)*sin(ps) + diff(ph, t)*sin(th)*cos(ps), diff(ps, t) + diff(ph, t)*cos(th)])
T = (I1*(w[0]^2 + w[1]^2) + I3*w[2]^2)/2
Re3 = vector([sin(th)*sin(ph), -sin(th)*cos(ph), cos(th)])   # the symmetry axis in space
L = (T - M*g*l*Re3[2]).simplify_full()
print('L =', L)
# Euler-Lagrange equations with formal variables
q, qd = var('q1 q2 q3'), var('qd1 qd2 qd3')
sub = {diff(th, t): qd[0], diff(ph, t): qd[1], diff(ps, t): qd[2]}
Lq = L.subs(sub).subs({th: q[0], ph: q[1], ps: q[2]})
p = [diff(Lq, v).simplify_full() for v in qd]
print('p_theta =', p[0], '\np_phi =', p[1], '\np_psi =', p[2])
print('L depends on phi, psi:', Lq.has(q[1]), Lq.has(q[2]))
back = {q[0]: th, q[1]: ph, q[2]: ps, qd[0]: diff(th, t), qd[1]: diff(ph, t), qd[2]: diff(ps, t)}
EL0 = (diff(p[0].subs(back), t) - diff(Lq, q[0]).subs(back)).simplify_full()
print('theta equation: I1 theta_dd - I1 sin cos phi_d^2 + p_psi sin phi_d - M g l sin =',
      (EL0 - (I1*diff(th, t, 2) - I1*sin(th)*cos(th)*diff(ph, t)^2 + p[2].subs(back)*sin(th)*diff(ph, t) - M*g*l*sin(th))).simplify_full())
