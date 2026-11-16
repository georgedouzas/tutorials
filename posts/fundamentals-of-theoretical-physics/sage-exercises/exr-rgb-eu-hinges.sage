# Exercise exr-rgb-eu-hinges: a box with edges a, b, c turning uniformly about its diagonal AC between two hinges; the transverse forces on the hinges.
a, b, c, m, Om = var('a b c m Omega'); assume(a > 0, b > 0, c > 0)
l = sqrt(a^2 + b^2 + c^2); n = vector([a, b, c])/l
I = m/12*diagonal_matrix([b^2 + c^2, c^2 + a^2, a^2 + b^2])
Pi = I*(Om*n)
N = (Om*n).cross_product(Pi).simplify_full()            # torque needed: omega x I omega (omega constant)
# forces -f at A = -l n/2 and f at C = l n/2 give the torque l n x f; the transverse part solves it
f_perp = (n.cross_product(N)/l).simplify_full()          # n x (l n x f) = -l f_perp, and l n x f = N
f_perp = -f_perp
print('torque omega x I omega =', N)
print('check l n x f_perp = N:', (l*n.cross_product(f_perp) - N).simplify_full(), '; f_perp . n =', (f_perp*n).simplify_full())
claim = -m*Om^2/(12*l^2)*(vector([a^3, b^3, c^3]) - (a^4 + b^4 + c^4)/l^2*vector([a, b, c]))
print('f_perp = -(m Omega^2/(12 l^2)) ((a^3, b^3, c^3) - (a^4 + b^4 + c^4)(a, b, c)/l^2):', (f_perp - claim).simplify_full())
print('cube a = b = c: f_perp =', f_perp.subs(b=a, c=a).simplify_full())
