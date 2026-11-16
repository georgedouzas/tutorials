# Exercise exr-qdm-mq-polarisation-vectors: for k along (theta, phi), eps1 = (cos t cos f, cos t sin f, -sin t) and
# eps2 = (-sin f, cos f, 0) are orthonormal and transverse, sum eps^i eps^j = delta - khat khat, khat x eps1 = eps2,
# khat x eps2 = -eps1, and the circular vectors eps_pm = (eps1 pm i eps2)/sqrt 2 satisfy i khat x eps_pm = pm eps_pm.
t, f = var("t f")
kh = vector(SR, [sin(t) * cos(f), sin(t) * sin(f), cos(t)])
e1 = vector(SR, [cos(t) * cos(f), cos(t) * sin(f), -sin(t)]); e2 = vector(SR, [-sin(f), cos(f), 0])
simp = lambda e: e.simplify_full()
print("orthonormal and transverse:", [simp(x) for x in (e1 * e1, e2 * e2, e1 * e2, e1 * kh, e2 * kh)])
S = e1.column() * e1.row() + e2.column() * e2.row() - (identity_matrix(SR, 3) - kh.column() * kh.row())
print("sum eps eps = delta - khat khat:", S.simplify_full() == 0)
print("khat x eps1 = eps2:", simp(kh.cross_product(e1) - e2) == 0, "  khat x eps2 = -eps1:", simp(kh.cross_product(e2) + e1) == 0)
ep = (e1 + I * e2) / sqrt(2); em = (e1 - I * e2) / sqrt(2)
print("i khat x eps_+ = +eps_+:", simp(I * kh.cross_product(ep) - ep) == 0, "  i khat x eps_- = -eps_-:", simp(I * kh.cross_product(em) + em) == 0)
