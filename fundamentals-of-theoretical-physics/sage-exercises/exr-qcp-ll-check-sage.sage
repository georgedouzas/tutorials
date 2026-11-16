# Exercise exr-qcp-ll-check-sage (Guidry-Sun, eqs. (28.7)-(28.8) and Problem 28.2): the Landau-gauge states
# e^{iky} H_n((x - x_k)/l) e^{-(x - x_k)^2/(2 l^2)}, l^2 = hbar/(qB), x_k = l^2 k, have energy hbar (qB/m)(n + 1/2).
x, y, hb, q, B, m, k = var('x y hbar q B m k'); assume(hb > 0, q > 0, B > 0, m > 0)
l2 = hb/(q*B); xk = l2*k
for n in range(3):
    psi = exp(I*k*y)*hermite(n, (x - xk)/sqrt(l2))*exp(-(x - xk)^2/(2*l2))
    px = lambda f: -I*hb*diff(f, x)
    py_qA = lambda f: -I*hb*diff(f, y) - q*B*x*f
    Hpsi = (px(px(psi)) + py_qA(py_qA(psi)))/(2*m)
    ratio = (Hpsi/psi).simplify_full()
    print("n = %d: H psi/psi =" % n, ratio, "; equals hbar q B (n + 1/2)/m:", bool((ratio - hb*q*B/m*(n + 1/2)).simplify_full() == 0))
