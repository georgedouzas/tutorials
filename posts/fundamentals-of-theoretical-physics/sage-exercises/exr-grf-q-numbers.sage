# Exercise exr-grf-q-numbers: chirp mass, strain and separation of a neutron-star binary (Blennow-Ohlsson 2.135 a-c).
G, c, Msun, pc = 6.674e-11, 2.99792458e8, 1.98892e30, 3.0857e16
m1 = m2 = 1.4*Msun; M = m1 + m2; mu = m1*m2/M; Mc = mu^(3/5)*M^(2/5)
print('mu = %.3f Msun, chirp mass = %.4f Msun' % (mu/Msun, Mc/Msun))
for P, dist, label in ((3600.0, 5e3*pc, '1 h at 5 kpc'), (0.02, 15e6*pc, '0.02 s at 15 Mpc')):
    f = 2/P
    h0 = 4*(G*Mc/c^3)^(5/3)*(pi*f)^(2/3)*c/dist
    a = (G*M*P^2/(4*pi^2))^(1/3)
    print('%-16s: f = %.3e Hz, h0 = %.3e, separation a = %.4e m' % (label, f, float(h0), a))
