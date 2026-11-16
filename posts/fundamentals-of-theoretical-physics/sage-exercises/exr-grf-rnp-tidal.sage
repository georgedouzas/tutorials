# Exercise exr-grf-rnp-tidal: orthonormal-frame curvature components of the Reissner-Nordstrom metric (G = 1).
M4 = Manifold(4, 'M', structure='Lorentzian')
X.<t, r, th, ph> = M4.chart(r't r:(0,+oo) th:(0,pi) ph:(0,2*pi)')
m, q = var('m q')
f = 1 - 2*m/r + q^2/r^2
g = M4.metric('g'); g[0, 0] = f; g[1, 1] = -1/f; g[2, 2] = -r^2; g[3, 3] = -r^2*sin(th)^2
Rl = g.riemann().down(g, 0)
# orthonormal frame e_t = f^(-1/2) d/dt, e_r = f^(1/2) d/dr, e_th = (1/r) d/dth
Rtrtr = (Rl[0, 1, 0, 1]).expr()*(1/f)*f            # R_{t r t r} e_t^t e_r^r e_t^t e_r^r
print('R_(t r t r) in the frame =', Rtrtr.simplify_full().expand())
print('equals -(1/2) f\'\' :', bool((Rtrtr + diff(f, r, 2)/2).simplify_full() == 0))
print('(1/2) f\'\' =', (diff(f, r, 2)/2).expand(), ' vanishes at r =', solve(diff(f, r, 2) == 0, r))
Ric = g.ricci()
print('R_(th th) in the frame =', (Ric[2, 2].expr()/r^2).simplify_full())
