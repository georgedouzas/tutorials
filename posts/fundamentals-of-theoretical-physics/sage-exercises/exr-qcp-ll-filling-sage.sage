# Exercise exr-qcp-ll-filling-sage (Guidry-Sun, Sec. 28.2.2, eq. (28.12)): fields of integer filling for a GaAs electron gas,
# n_e = 3e15 m^-2, m* = 0.067 m_e, and the Landau spacing hbar omega_c in meV and K.
hbar, e, me, h, kB = 1.054571817e-34, 1.602176634e-19, 9.1093837015e-31, 6.62607015e-34, 1.380649e-23
ne, ms = 3e15, 0.067*me
for nu in (1, 2, 3, 4):
    B = ne*h/(nu*e)
    hw = hbar*e*B/ms
    print("nu = %d: B = %5.2f T, hbar omega_c = %5.2f meV = %6.1f K, T for e^{-10}: %4.1f K" % (nu, B, hw/e*1e3, hw/kB, hw/(20*kB)))
