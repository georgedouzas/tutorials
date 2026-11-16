# Exercise exr-gqn-fp-orbit-weight: averaging the slice x_2 = c over a Gaussian of width xi gives each orbit the weight
# w(r) = int dtheta r|cos theta| exp(-r^2 sin^2 theta/(2 xi))/sqrt(2 pi xi) = 2 erf(r/sqrt(2 xi)), which tends to 2 on every orbit.
for xi in (0.01, 0.1, 1.0):
    for r in (0.2, 1.0, 3.0):
        w = numerical_integral(lambda t: r * abs(cos(t)) * exp(-r^2 * sin(t)^2 / (2 * xi)) / sqrt(2 * pi.n() * xi), 0, 2 * pi.n(), max_points=1000)[0]
        print("xi = %.2f, r = %.1f: w = %.8f, 2 erf(r/sqrt(2 xi)) = %.8f" % (xi, r, w, 2 * erf(r / sqrt(2 * xi))))
