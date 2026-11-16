# Exercise exr-grf-rn-kretschmann: the Kretschmann scalar of the Reissner-Nordstrom metric (G = 1, f = 1 - 2m/r + q^2/r^2).
M4 = Manifold(4, 'M', structure='Lorentzian')
X.<t, r, th, ph> = M4.chart(r't r:(0,+oo) th:(0,pi) ph:(0,2*pi)')
m, q = var('m q')
f = 1 - 2*m/r + q^2/r^2
g = M4.metric('g'); g[0, 0] = f; g[1, 1] = -1/f; g[2, 2] = -r^2; g[3, 3] = -r^2*sin(th)^2
Rl = g.riemann().down(g, 0); Ru = Rl.up(g)
K = (Rl['_abcd']*Ru['^abcd']).expr().simplify_full()
print('K =', K.factor())
print('equals 8(6 m^2 r^2 - 12 m q^2 r + 7 q^4)/r^8:', bool((K - 8*(6*m^2*r^2 - 12*m*q^2*r + 7*q^4)/r^8).simplify_full() == 0))
print('q = 0:', K.subs(q=0).simplify_full())
rp = m + sqrt(m^2 - q^2)
print('at r_+ for m = 1, q = 0.6:', K.subs(m=1, q=0.6, r=rp.subs(m=1, q=0.6)).n())
