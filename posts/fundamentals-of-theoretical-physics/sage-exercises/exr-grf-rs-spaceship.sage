# Exercise exr-grf-rs-spaceship: starlight seen from a spaceship falling radially with dr/dt = -0.1 (Blennow-Ohlsson 2.123).
c = 2.99792458e8; GM = 1e20; r = 1e6; vc = -0.1; lam0 = 4000
f = 1 - 2*GM/(c^2*r)
exact = lam0*sqrt(f*(f^2 - vc^2))/(f + vc)
static = lam0*sqrt(f)
v = abs(vc)/f
doppler = sqrt((1 + v)/(1 - v))
print('f = %.6f, local speed of the ship v = %.6f' % (f, v))
print('ship (exact): %.2f A' % exact)
print('static observer at the same r: %.2f A' % static)
print('same speed in flat spacetime: %.2f A' % (lam0*sqrt((1 + abs(vc))/(1 - abs(vc)))))
print('static wavelength times Doppler factor of the local speed: %.2f A' % (static*doppler))
