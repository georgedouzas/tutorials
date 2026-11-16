# Exercise exr-grf-q-binary: the quadrupole waveform of a circular binary seen along its orbital axis.
t, a, W, mu, G, r, Mt = var('t a Omega mu G r M'); assume(a > 0, W > 0, mu > 0, Mt > 0, G > 0)
x = vector([a*cos(W*t), a*sin(W*t), 0])
I = matrix(SR, 3, 3, lambda i, j: mu*x[i]*x[j])
Idd = I.apply_map(lambda e: diff(e, t, 2).simplify_full())
n = vector([0, 0, 1]); P = identity_matrix(3) - n.outer_product(n)
Lam = lambda S: (P*S*P - P*(P*S).trace()/2)
hTT = (-2*G/r*Lam(Idd)).apply_map(lambda e: e.simplify_full().trig_reduce())
print('h_+ = h_xx =', hTT[0, 0]); print('h_x = h_xy =', hTT[0, 1]); print('h_yy =', hTT[1, 1], '; transverse:', hTT*n)
Mc = mu^(3/5)*Mt^(2/5)
amp = 4*G*mu*a^2*W^2
check = (G*mu*a^2*W^2).subs(a=(G*Mt/W^2)^(1/3)) - (G*Mc)^(5/3)*W^(2/3)
print('G mu a^2 Omega^2 - (G M_c)^(5/3) Omega^(2/3) for a^3 = G M/Omega^2:', check.canonicalize_radical())
