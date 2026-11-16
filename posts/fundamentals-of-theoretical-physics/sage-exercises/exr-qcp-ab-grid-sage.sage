# Exercise exr-qcp-ab-grid-sage (Guidry-Sun, Secs. 26.5 and 27.1): a ring of N = 40 sites with Peierls phases
# e^{-i theta}, theta = 2 pi (Phi/Phi0)/N, units hbar = m = R = 1; lowest eigenvalues against (n - Phi/Phi0)^2/2.
N = 40; hh = 2*pi.n()/N
def spectrum(f):
    th = 2*pi.n()*f/N
    M = matrix(CDF, N, N)
    for j in range(N):
        M[j, j] = 2/(2*hh^2)
        M[j, (j + 1) % N] = -exp(-I*th)/(2*hh^2)
        M[j, (j - 1) % N] = -exp(I*th)/(2*hh^2)
    return sorted(ev.real() for ev in M.eigenvalues())[:4]
for f in (0, 0.25, 0.5, 1):
    cont = sorted((n - f)^2/2 for n in range(-4, 5))[:4]
    grid = sorted(N^2/(4*pi.n()^2)*(1 - cos(2*pi.n()*(n - f)/N)) for n in range(-4, 5))[:4]
    print("Phi/Phi0 = %.2f: numerical %s" % (f, [round(v, 5) + 0.0 if abs(v) > 1e-12 else 0.0 for v in spectrum(f)]))
    print("               formula   %s, continuum %s" % ([round(v, 5) for v in grid], [round(v, 5) for v in cont]))
print("spectra at Phi = 0 and Phi = Phi0 coincide:", max(abs(a - b) for a, b in zip(spectrum(0), spectrum(1))) < 1e-10)
