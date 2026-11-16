# Exercise exr-rgb-eu-brackets: Poisson brackets of the body and space angular momenta in Euler angles, and Euler's equations as Hamilton's equations.
th, ph, ps, pth, pph, pps = var('theta phi psi p_theta p_phi p_psi')
td, pd, sd = var('td pd sd')
I1, I2, I3 = var('I1 I2 I3')
# body angular velocity in Euler angles (Euler's kinematic equations), omega = E(q) qdot
w = vector([td*cos(ps) + pd*sin(th)*sin(ps), -td*sin(ps) + pd*sin(th)*cos(ps), sd + pd*cos(th)])
E = matrix([[diff(wi, v) for v in (td, pd, sd)] for wi in w])
Pi = (E.transpose().inverse()*vector([pth, pph, pps])).simplify_full()   # p = E^T Pi
q, p = [th, ph, ps], [pth, pph, pps]
def pb(f, g):
    return sum(diff(f, q[i])*diff(g, p[i]) - diff(f, p[i])*diff(g, q[i]) for i in range(3)).simplify_full()
print('Pi_3 =', Pi[2])
print('{Pi_1, Pi_2} + Pi_3 =', (pb(Pi[0], Pi[1]) + Pi[2]).simplify_full(), ', {Pi_2, Pi_3} + Pi_1 =', (pb(Pi[1], Pi[2]) + Pi[0]).simplify_full(),
      ', {Pi_3, Pi_1} + Pi_2 =', (pb(Pi[2], Pi[0]) + Pi[1]).simplify_full())
Rz = lambda a: matrix([[cos(a), -sin(a), 0], [sin(a), cos(a), 0], [0, 0, 1]])
Rx = lambda a: matrix([[1, 0, 0], [0, cos(a), -sin(a)], [0, sin(a), cos(a)]])
L = (Rz(ph)*Rx(th)*Rz(ps)*Pi).simplify_full()
print('L_3 =', L[2], ', {L_1, L_2} - L_3 =', (pb(L[0], L[1]) - L[2]).simplify_full(), ', {L_a, Pi_b} = 0:',
      all(pb(L[i], Pi[j]) == 0 for i in range(3) for j in range(3)))
H = Pi[0]^2/(2*I1) + Pi[1]^2/(2*I2) + Pi[2]^2/(2*I3)
om = vector([Pi[0]/I1, Pi[1]/I2, Pi[2]/I3])
print('{Pi, H} - Pi x omega =', vector([(pb(Pi[i], H) - Pi.cross_product(om)[i]).simplify_full() for i in range(3)]))
