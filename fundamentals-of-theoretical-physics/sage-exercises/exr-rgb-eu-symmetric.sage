# Exercise exr-rgb-eu-symmetric: the free symmetric top: Euler's equations solved in the body, and the precession of the symmetry axis about the angular momentum in space.
I1, I3, w0, w30, t = var('I1 I3 w0 w30 t'); assume(I1 > 0, I3 > 0)
Ob = (I3 - I1)*w30/I1
w = vector([w0*cos(Ob*t), w0*sin(Ob*t), w30])          # trial solution in the body
I = diagonal_matrix([I1, I1, I3])
res = (I*diff(w, t) + w.cross_product(I*w)).simplify_full()
print('I omega_dot + omega x I omega =', res)
Pi = I*w
print('|Pi|^2 =', (Pi*Pi).simplify_full(), ';  2T =', (w*I*w).simplify_full())
# in space: Omega = L/I1 - (I3 - I1) w3 R e3 / I1, and d(R e3)/dt = Omega x R e3 = (L/I1) x R e3
Lv = vector(var('L1 L2 L3')); n = vector(var('n1 n2 n3'))
Om = Lv/I1 - (I3 - I1)*w30*n/I1
print('Omega x n - (L/I1) x n =', (Om.cross_product(n) - (Lv/I1).cross_product(n)).simplify_full())
# numbers: a coin, I3 = 2 I1, spun with w3 and a small wobble
print('coin: body precession rate / w3 =', (Ob/w30).subs(I3=2*I1), ';  space precession rate |L|/I1 for small wobble ->', (I3*w30/I1).subs(I3=2*I1))
