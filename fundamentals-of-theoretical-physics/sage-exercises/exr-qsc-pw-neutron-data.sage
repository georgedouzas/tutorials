# Exercise exr-qsc-pw-neutron-data (Zettili, Problem 11.6): 50 MeV neutrons with measured phase shifts
# 95, 72, 60, 35, 18, 5 degrees for l = 0..5: total cross section, radius estimate, and dsigma/dOmega at 0, 90, 180 deg.
deg = pi.n()/180
d = [95*deg, 72*deg, 60*deg, 35*deg, 18*deg, 5*deg]
mc2, hbc, E = 939.57, 197.33, 50.0
k2 = 2*mc2*E/hbc^2; k = sqrt(k2)
sigma = 4*pi.n()/k2*sum((2*l + 1)*sin(d[l])^2 for l in range(6))
print("k^2 = %.3f fm^-2, sigma = %.2f fm^2 = %.3f b" % (k2, sigma, sigma/100))
print("radius estimate sqrt(6*7)/k = %.2f fm" % (sqrt(42.0)/k))
f = lambda c: sum((2*l + 1)*exp(I*d[l])*sin(d[l])*legendre_P(l, c) for l in range(6))/k
for th in (0, 90, 180):
    print("theta = %3d deg: dsigma/dOmega = %.1f fm^2/sr" % (th, abs(CDF(f(cos(th*deg))))^2))
