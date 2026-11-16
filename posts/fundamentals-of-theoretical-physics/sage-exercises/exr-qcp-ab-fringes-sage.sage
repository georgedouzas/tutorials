# Exercise exr-qcp-ab-fringes-sage (Guidry-Sun, Sec. 27.1, eq. (27.7)): 50 keV electrons, slit separation 10 micrometres,
# screen at 1 m: fringe spacing, shift for Phi = Phi0/4, and the field in a whisker of radius 0.5 micrometre for one fringe.
hc, mc2, Ek = 1239.84198, 510998.95, 50000.0          # eV nm, eV, eV
pc = sqrt(Ek^2 + 2*Ek*mc2)
lam = hc/pc*1e-9                                      # m
print("de Broglie wavelength: relativistic %.4f pm, non-relativistic %.4f pm" % (lam*1e12, hc/sqrt(2*Ek*mc2)*1e3))
L, d = 1.0, 10e-6
sp = L*lam/d
print("fringe spacing L lambda/d = %.4f micrometres; shift for Phi0/4: %.4f micrometres" % (sp*1e6, sp/4*1e6))
Phi0 = 4.135667696e-15
print("B for one flux quantum in radius 0.5 micrometres: %.3e T" % (Phi0/(pi.n()*(0.5e-6)^2)))
