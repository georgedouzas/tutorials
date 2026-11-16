# Exercise exr-grf-rn-temperature: surface gravity and Hawking temperature of the outer Reissner-Nordstrom horizon, m = 1.
r, q = var('r q'); m = 1
f = 1 - 2*m/r + q^2/r^2
rp = m + sqrt(m^2 - q^2); rm = m - sqrt(m^2 - q^2)
kap = (diff(f, r)/2).subs(r=rp)
print('kappa_+ - (r_+ - r_-)/(2 r_+^2) =', (kap - (rp - rm)/(2*rp^2)).simplify_full())
for qq in (0, 1/2, 9/10, 99/100, 1):
    k = kap.subs(q=qq)
    print('q/m = %4.2f: kappa_+ = %.5f, T_H/(1/8 pi m) = %.5f, r_+ = %.4f' % (float(qq), float(k), float(k/2/pi*8*pi), float(rp.subs(q=qq))))
