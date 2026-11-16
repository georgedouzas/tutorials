# Exercise exr-chs-th-oscillator: total Hamiltonian of L = (1/2)(x ydot - y xdot) - (k/2)(x^2 + y^2); multipliers and motion.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
x, y, px, py, u1, u2, k, t = var('x y px py u1 u2 k t')
qs, ps = [x, y], [px, py]
V = k/2*(x^2 + y^2)
phi1 = px + y/2; phi2 = py - x/2
HT = V + u1*phi1 + u2*phi2
print('{phi1, phi2} =', PB(phi1, phi2, qs, ps))
sol = solve([PB(phi1, HT, qs, ps) == 0, PB(phi2, HT, qs, ps) == 0], [u1, u2], solution_dict=True)[0]
print('multipliers:', sol)
xdot = PB(x, HT, qs, ps).subs(sol); ydot = PB(y, HT, qs, ps).subs(sol)
print('xdot =', xdot, '; ydot =', ydot)
X, Y = cos(k*t), sin(k*t)                    # candidate solution from (1, 0)
print('residuals for x = cos(kt), y = sin(kt):', (diff(X, t) - xdot.subs({x: X, y: Y})).simplify_full(), (diff(Y, t) - ydot.subs({x: X, y: Y})).simplify_full())
print('x^2 + y^2 along it:', (X^2 + Y^2).simplify_full(), '; the motion is anticlockwise with angular velocity k')
