# Exercise exr-chs-pc-relativistic: momenta, Hessian and primary constraint of the relativistic free particle L = -m sqrt(tdot^2 - |xdot|^2).
var('m', domain='positive'); vt, v1, v2, v3 = var('vt v1 v2 v3')
vel = [vt, v1, v2, v3]
s = vt^2 - v1^2 - v2^2 - v3^2
L = -m*sqrt(s)
p = [diff(L, v) for v in vel]
print('p_t =', p[0], ';  p_1 =', p[1])
W = matrix(SR, 4, 4, lambda i, j: diff(L, vel[i], vel[j]))
print('det W =', W.det().simplify_full())
num = {vt: 2, v1: 1/2, v2: -1/3, v3: 1/5, m: 1}
print('rank W at a timelike velocity =', W.subs(num).rank())
print('W * velocity =', (W*vector(vel)).simplify_full())
print('p_t^2 - |p|^2 =', (p[0]^2 - p[1]^2 - p[2]^2 - p[3]^2).simplify_full())
print('canonical Hamiltonian p.v - L =', (sum(pi*v for pi, v in zip(p, vel)) - L).simplify_full())
