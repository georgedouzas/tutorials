# Exercise exr-grf-q-flux: energy flux of a gravitational wave of strain 1e-21 at 200 Hz, compared with moonlight.
G, c = 6.674e-11, 2.99792458e8
h, f = 1e-21, 200.0
t = var('t')
avg = (h*2*pi*f)^2/2                                   # <hdot^2> for h cos(2 pi f t)
num = numerical_integral(lambda s: (h*2*pi*f*sin(2*pi*f*s))^2, 0, 1/f)[0]*f
F = c^3/(16*pi*G)*avg
print('<hdot^2> = %.4e (numerical average %.4e)' % (avg, num))
print('F = c^3/(16 pi G) <hdot^2> = %.3e W/m^2;  pi c^3 f^2 h^2/(8 G) = %.3e W/m^2' % (F, pi*c^3*f^2*h^2/(8*G)))
print('c^3/G = %.3e kg/s;  full moon ~ 1e-2 W/m^2, ratio %.2f' % (c^3/G, F/1e-2))
