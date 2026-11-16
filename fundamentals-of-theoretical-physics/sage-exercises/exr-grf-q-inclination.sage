# Exercise exr-grf-q-inclination: plus and cross amplitudes of a circular binary seen at inclination iota.
t, a, W, mu, G, r, i = var('t a Omega mu G r iota')
x = vector([a*cos(W*t), a*sin(W*t), 0])
Idd = matrix(SR, 3, 3, lambda p, q: diff(mu*x[p]*x[q], t, 2))
n = vector([0, sin(i), cos(i)]); e1 = vector([1, 0, 0]); e2 = vector([0, cos(i), -sin(i)])
P = identity_matrix(SR, 3) - n.outer_product(n)
hTT = -2*G/r*(P*Idd*P - P*(P*Idd).trace()/2)
hp = ((e1*hTT*e1 - e2*hTT*e2)/2).simplify_full().trig_reduce()
hx = (e1*hTT*e2).simplify_full().trig_reduce()
h0 = 4*G*mu*a^2*W^2/r
print('h_+ / h_0 =', (hp/h0).simplify_full().trig_reduce())
print('h_x / h_0 =', (hx/h0).simplify_full().trig_reduce())
print('h_+ = h0 (1 + cos^2 iota)/2 cos(2 Omega t):', bool((hp - h0*(1 + cos(i)^2)/2*cos(2*W*t)).simplify_full() == 0))
print('h_x = h0 cos(iota) sin(2 Omega t):', bool((hx - h0*cos(i)*sin(2*W*t)).simplify_full() == 0))
