# Exercise exr-qsc-cs-gold-foil (Cini et al., Secs. 14.2 and 14.6): Rutherford cross sections and counting rates for
# 5 MeV alpha particles on a 1 micrometre gold foil, detector of 1e-3 sr; e^2/(4 pi eps0) = 1.44 MeV fm.
kappa = 2*79*1.44          # MeV fm
E = 5.0                    # MeV
nl = 5.9e28*1e-6           # atoms per m^2
rate, dOm = 1e9, 1e-3
for deg in (90, 10):
    th = deg*pi.n()/180
    ds = (kappa/(4*E))^2/sin(th/2)^4          # fm^2 per sr
    print("theta = %3d deg: dsigma/dOmega = %.4g fm^2/sr = %.4g b/sr, counts per second = %.4g" % (deg, ds, ds/100, rate*nl*ds*1e-30*dOm))
print("kappa = %.1f MeV fm; closest approach head-on kappa/E = %.1f fm" % (kappa, kappa/E))
