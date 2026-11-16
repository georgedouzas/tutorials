# Exercise exr-chs-db-mode-gauge: the Maxwell mode in the radiation gauge a0 = 0, a3 = 0; Dirac brackets and the reduced oscillator.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
a0, a1, a3, p0, p1, p3 = var('a0 a1 a3 p0 p1 p3'); k = var('k', domain='positive')
qs, ps = [a0, a1, a3], [p0, p1, p3]
H = p1^2 + p3^2 - k*a0*p3 + k^2*a1^2/4
for name, gauge in [('radiation gauge (a0, a3)', [a0, a3]), ('inadmissible (a0, a1)', [a0, a1])]:
    psi = [p0, k*p3] + gauge
    C = matrix(SR, 4, 4, lambda i, j: PB(psi[i], psi[j], qs, ps))
    print(name, ': det C =', C.det())
psi = [p0, k*p3, a0, a3]
C = matrix(SR, 4, 4, lambda i, j: PB(psi[i], psi[j], qs, ps)); Ci = C.inverse()
D = lambda A, B: (PB(A, B, qs, ps) - sum(PB(A, psi[i], qs, ps)*Ci[i, j]*PB(psi[j], B, qs, ps) for i in range(4) for j in range(4))).simplify_full()
print('{a1, p1}_D =', D(a1, p1), '; {a3, p3}_D =', D(a3, p3), '; {a0, p0}_D =', D(a0, p0))
print('a1dot =', D(a1, H), '; p1dot =', D(p1, H))
t = var('t'); A = function('A')(t)
print('reduced equation: a1\'\' =', (2*D(p1, H)).subs(a1=A), ' -> angular frequency k, the dispersion relation of light')
