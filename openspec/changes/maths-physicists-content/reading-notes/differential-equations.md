# Reading notes: differential-equations

Additions for the Zotero reading notes of `fundamentals-of-mathematics-for-physicists/differential-equations`, for the
owner's review. Each line names the source location and the blocks it became.

## Section "Ordinary differential equations" (sec-odes)

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 514-519 (Secs.
14.3-14.5, the exercises and hints of Ch. 14). Sections 14.1-14.2 cited for the methods.

- Sec. 14.1: general form of solution, check by substitution -> def-ode (citation line), prp-ode-closed-forms (citation line).
- Sec. 14.2.1: separable equations -> def-separable-equation (citation line).
- Sec. 14.2.4: linear equations, integrating factor -> def-linear-first-order-equation (citation line).
- Sec. 14.2.7: Bernoulli's equation -> exr-linear-bernoulli.
- Problem 14.1: radioactive decay -> exm-ode-decay.
- Problem 14.2(a): y' = xy^3 -> exm-separable-x-y-cubed.
- Problem 14.2(b), (c): y' arctan x = y/(1 + x^2), x^2 y' + xy^2 = 4y^2 -> exr-separable-riley.
- Problem 14.5(a): (1 - x^2)y' + 2xy = (1 - x^2)^(3/2) -> exr-linear-riley-rational.
- Problem 14.5(b): y' - y cot x + cosec x = 0 -> exm-linear-riley-cot.
- Problem 14.8: RC circuit with V0 sin(wt) -> exm-ode-rc-circuit, exm-linear-rc-sinusoidal.
- Problem 14.24(a), (b): y' - y/x = 1, y(1) = -1; y' - y tan x = 1, y(pi/4) = 3 -> exr-linear-initial-values.
- Problem 14.26: sin x y' + 2y cos x = 1, y(pi/2) = 1 -> exr-linear-riley-sin.
- Problem 14.29: xy' + y - y^2/x^(3/2) = 0, y(1) = 1 -> exr-linear-riley-bernoulli.

### magnus2023essential

Essential Ordinary Differential Equations (PDF = printed + 8). Pages read: PDF 72-75 (Exercises 2.1.3), 89-92
(Exercises 2.3.3), 129-138 (Sec. 4.1.1, Picard's theorem, Lemmas 4.1-4.3, Prop. 4.2), 145-148 (Exercises 4.1.4).

- Sec. 4.1, 4.1.1: solutions, Cauchy problem, integral form (4.4) -> def-ode, def-initial-value-problem (citation lines).
- Prop. 4.1 with Lemmas 4.1-4.3 (Weierstrass M-test and Gronwall proof) -> thm-picard-lindelof (proved here instead by
  the contraction mapping theorem with a weighted sup metric; citation line).
- Prop. 4.2: Lipschitz from a continuous partial derivative -> thm-picard-lindelof (5), exr-picard-lipschitz-c1.
- Lemma 4.2 and Exercise 4.1.4.3: error estimate of the Picard iterates -> exr-picard-error-bound.
- Lemma 4.3: Gronwall's inequality -> exr-picard-gronwall.
- Exercise 4.1.4.1: y' = x^2 + y^2, iterates and best h -> exr-picard-x2-y2.
- Exercise 4.1.4.2: global solutions when f is Lipschitz on a strip (idea) -> exr-picard-global.
- Exercise 4.1.4.4: y' = 2 sqrt|y|, non-uniqueness -> exr-ivp-non-unique, exm-picard-lipschitz-fails.
- Exercises 4.1.4.5-6: translates of solutions of autonomous and periodic equations -> exr-ode-autonomous-translates.
- Sec. 2.1, 2.1.1: separation, use of uniqueness -> def-separable-equation (3) and citation line.
- Exercise 2.1.3.1(e), (f): y' = y cos x, y' = y^2 cos x -> exr-separable-cos-x.
- Exercise 2.1.3.2: y' = cos y -> exm-separable-cos-y.
- Exercise 2.1.3.3: fall with quadratic drag -> exm-ivp-terminal-velocity, exr-separable-terminal-velocity.
- Exercise 2.1.3.5: y' = sqrt(1 - y^2) reaches 1 in finite time -> exm-separable-finite-time.
- Exercise 2.1.3.7: g > 0 periodic, phase advance -> exr-separable-periodic-g.
- Exercise 2.1.3.9: equations in y/x, y' = (x + y)/(x - y) -> exr-separable-homogeneous.
- Exercise 2.1.3.10: reduction of y'' = f(y)g(y'), y'' = y(y')^2 -> exr-separable-second-order.
- Sec. 2.3: Newton's equation, phase curves -> def-phase-portrait (citation line).
- Exercise 2.3.3.2: escape velocity -> exm-separable-escape-velocity, exr-phase-escape.
- Exercise 2.3.3.3: x'' = -x + x^3 -> exr-phase-cubic-force.
- Exercises 2.3.3.5 and 2.3.3.7: period of the pendulum, elliptic integral -> exm-separable-pendulum-period,
  exr-separable-pendulum-period.
- Sec. 1.1: first-order linear equations -> def-linear-first-order-equation (citation line).

### knauf2018mathematical

Mathematical Physics: Classical Mechanics, Ch. 3 (cited in the section introduction, already present) ->
def-phase-portrait (citation line). No pages read in this run.

### Standard material (no source)

Weighted (Bielecki) sup metric in the proof of thm-picard-lindelof; hydrogen radial equation items
(exm-ode-hydrogen-radial, exr-ode-hydrogen-levels, exm-picard-hydrogen, exm-closed-forms-hydrogen-2s,
exr-closed-forms-hydrogen-2s); cyclotron motion (exm-ivp-cyclotron, exr-ivp-cyclotron); barometric formula
(exm-separable-barometric); Bateman decay chain (exm-linear-radioactive-chain, exr-linear-radioactive-max); Adler
equation (exr-separable-periodic-g); limit cycle (exm-phase-limit-cycle, exr-phase-limit-cycle); radial Kepler problem
and Binet orbits (exm-phase-kepler-radial, exm-closed-forms-kepler-orbit, exr-closed-forms-kepler-energy); Euler's
method (exr-closed-forms-euler-method).

## Section "Linear systems and the matrix exponential" (sec-linear-systems)

### magnus2023essential

Essential Ordinary Differential Equations (PDF = printed + 8). Pages read: PDF 155-162 (Secs. 5.1-5.2.2, Lemma 5.1,
Props. 5.1-5.3, the eigenvector method), 172-185 (Exercises 5.2.6, Projects 5.2.7, Sec. 5.3 and Exercises 5.3.1),
220-223 (Sec. 6.3.1, Prop. 6.10), 234-236 (Exercises 6.3.4).

- Sec. 5.1, Prop. 5.2: exponential series and solution formula -> def-matrix-exp, thm-matrix-exp-solution (citation lines).
- Exercise 5.1.1.1: exponential law, commuting matrices, similarity -> thm-matrix-exp-solution (3), (5).
- Exercise 5.1.1.3: exponentials of nilpotent matrices -> exr-mexp-nilpotent-three.
- Exercise 5.1.1.4: A^2 = -I -> exr-mexp-square-minus-one.
- Lemma 5.1: Picard iterates are partial sums -> exr-mexpsol-picard.
- Sec. 5.2.1: eigenvector method, M(x)M(0)^-1 -> prp-eigen-exponential-solutions (citation), exr-mexpsol-fundamental;
  its 3x3 example (eigenvalues 1, 2, 2) -> exm-eigen-generalised.
- Prop. 5.3: exponential decay estimate -> thm-linear-stability (1), exr-lstab-constants.
- Exercise 5.2.6.1(a), (b), (d) -> exr-mexpsol-ivp, exr-eigen-complex-pair, exr-eigen-repeated.
- Exercise 5.2.6.2(c) -> exr-eigen-third-order.
- Exercise 5.2.6.3: two distinct eigenvalues, interpolation formula -> exr-eigen-interpolation.
- Exercise 5.2.6.4: complex pair formula -> exr-ho-matrix-exponential, exr-mef-general-spiral.
- Exercise 5.2.6.5: orbits of a centre -> exr-mef-centre-ellipses.
- Exercise 5.2.6.9(b): bounded solutions on R iff imaginary eigenvalue -> exr-lstab-bounded-on-line (proved with
  generalised eigenspaces instead of the Laplace transform).
- Project 5.2.7 A2 and Exercise 5.3.1.8: det e^{xA} = e^{x tr A}, Liouville -> prp-wronskian (2), exr-wr-liouville-proof.
- Sec. 5.3, eq. (5.6): variation of constants -> thm-variation-of-constants (citation line).
- Exercise 5.3.1.3(a) -> exr-voc-magnus.
- Exercise 5.3.1.5: exp of the integral is not a solution in general -> exm-mexpsol-time-dependent.
- Exercise 5.3.1.9(a): X' = AX + XB -> exr-mexpsol-two-sided.
- Sec. 6.3.1: definitions of stability -> def-stability (citation line).
- Sec. 1.2.1: Wronskian -> prp-wronskian (citation line).

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 520-526 (Ch. 15
introduction, Secs. 15.1.1-15.1.3), 553-560 (Exercises 15.4 and hints).

- Eq. (15.6) and the remark after it: Wronskian, vanishing does not imply dependence -> exr-wr-smooth (citation).
- Sec. 15.1.1: complementary function, repeated roots -> exr-eigen-multiple-root, prp-eigen-exponential-solutions (citation).
- Sec. 15.1.2: trial functions -> exm-voc-exponential-forcing.
- Sec. 15.2.4: variation of parameters -> thm-variation-of-constants (citation line).
- Problem 15.1 -> exr-res-beats. Problem 15.4 -> exr-voc-riley-critical. Problem 15.6 -> exr-wr-dependence.
- Problem 15.7 -> exr-voc-riley-resonant. Problem 15.8 -> exr-voc-riley-system. Problem 15.11 -> exr-voc-riley-driven-pair.
- Problem 15.12 -> exr-res-two-oscillators. Problem 15.13 -> exm-ls-decay-chain, exm-voc-decay-chain.
- Problem 15.14 -> exm-res-build-up, def-resonance (citation). Problem 15.26(a) -> exr-wr-second-solution.
- Problem 15.29 -> exm-voc-step-response.
- Sec. 16.1 (eqs. 16.3-16.4) and Sec. 16.4.1 (Wronskian method) -> prp-wronskian (citation), exm-wr-reduction-order.
- Sec. 8.5 (functions of matrices) -> def-matrix-exp (citation line). Sec. 9.1 (normal modes) -> exm-ls-normal-modes,
  exm-eigen-normal-modes.

### knauf2018mathematical

Mathematical Physics: Classical Mechanics (PDF = printed + 13). Pages read: PDF 150-153 (Sec. 7.1, Thm. 7.1).

- Thm. 7.1: stability of linear systems via Jordan form -> thm-linear-stability (citation line and proof route).
- Sec. 5.3-5.4 (linear flows in the plane, spring with friction; outline only) -> exm-lstab-portraits,
  def-harmonic-oscillator (citation lines).

### Existing citations kept

das2023quantum (Sec. 7.1.2: Wronskian properties) -> prp-wronskian, exm-wr-three-solutions, exr-wr-smooth;
foulaadvand2023computational (Secs. 3.2-3.7) -> prp-ts-oscillator-steps and its blocks; aliev2024mathematical,
axler2024linear (section introduction).

### Standard material (no source)

Frobenius-norm bounds and tail estimate (def-matrix-exp, exr-mexp-tail, exr-mexp-entry-bound), the limit
(I + M/N)^N (exr-mexp-limit-formula), spin rotations, boosts and Rodrigues' formula (exm-mexp-pauli, exm-mexp-boost,
exm-mexp-rodrigues), cyclotron and E x B drift (exm-ls-cyclotron, exm-mexpsol-cyclotron, exm-voc-drift), Larmor precession
(exm-eigen-precession), independence of exponential polynomials (exr-eigen-exponential-polynomials-independent),
Lorentz absorption line and absorbed power (exm-res-lorentz-atom, exm-res-power, exr-res-power-width), the attracting
but unstable flow on the circle (exm-stab-circle), the cubic centre (exr-stab-nonlinear-centre), backward Euler,
midpoint and Verlet invariants (exm-ts-backward-euler, exr-ts-midpoint, exr-ts-verlet), H2 time step
(exm-ts-molecular-step).

## Section "Boundary value and Sturm-Liouville problems" (sec-sturm-liouville)

The Zotero MCP server timed out during this run, so the PDFs were read from the local Zotero storage with pdftotext
(read-only). Page numbers below are printed pages.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: printed 530-552 (Ch. 16 and
its exercises), 555-576 (Ch. 17 and its exercises), 577-578, 640-650 (Ch. 18 opening and exercises).

- Secs. 17.1-17.4: inner products, Hermitian operators, Sturm-Liouville form -> def-orthogonal-functions,
  def-sturm-liouville-problem, thm-sturm-liouville (citation lines and proof route).
- Secs. 16.1-16.4: classification, Frobenius, second solution by the Wronskian -> def-regular-singular-point,
  thm-frobenius-method (citation lines); Sec. 16.4.1 eq. (16.25) -> exr-frob-legendre-second.
- Secs. 18.1.2, 18.5.1, 18.5.3: Legendre and Bessel properties -> def-legendre-polynomial, def-bessel-function,
  prp-legendre-bessel (citation lines and proof routes).
- Problem 16.1 -> exr-frob-polynomial-solutions. Problem 16.3 -> exr-frob-riley-closed-forms.
- Problem 16.6 -> exr-frob-riley-exponents, exm-frob-noninteger-exponents. Problem 16.8 -> exm-frob-integer-no-log.
- Problem 16.9 -> exr-frob-riley-gaussian. Problem 16.12 -> exr-frob-radius-riley.
- Problem 17.1 -> exr-orth-cauchy-schwarz. Problem 17.3 -> exr-slt-sign-change. Problem 17.6 ->
  exr-orth-gram-schmidt-exponential. Problem 17.9 (with a finite load) -> exr-slt-eigenfunction-method. Problem 17.13
  (compare) -> exr-sl-reduce-form.
- Problem 18.3 -> exr-plb-half-integrals. Problem 18.4 -> exr-plb-norm-generating. Problem 18.6 -> exr-plb-three-charges
  (the sign of the result is derived here: the potential is minus the sum). Problem 18.9 -> exr-bes-stokes.

### magnus2023essential

Essential Ordinary Differential Equations (PDF = printed + 8). Pages read: printed 37-51 (Sec. 1.5 and Exercises
1.5.3), 99-101 (Exercises 3.1.3, Project 3.1.4 A), 115-116 (Exercises 3.2.4), 231-241 (Sec. 7.1, Exercises 7.1.2),
260-264 (Exercises 7.2.4).

- Sec. 1.5.1: separated and periodic conditions -> def-boundary-value-problem (definition and citation line).
- Exercises 1.5.3.5(b), 1.5.3.6 -> exr-bvp-variation-constants, exr-bvp-robin-length.
- Sec. 7.1: Lagrange's identity (7.3), self-adjointness for separated and periodic conditions, the alternative ->
  thm-sturm-liouville (1), (2) and the proof of def-boundary-value-problem (via the matrix of the conditions).
- Exercise 7.1.2.1(c) -> exr-slt-robin-positive. Exercise 7.1.2.2 -> exr-slt-coupled-conditions. Exercise 7.1.2.3 ->
  exr-slt-lower-bound.
- Exercise 7.2.4.1(d) -> exm-sl-quarter-range. Exercise 7.2.4.2(a), (b) -> exm-sl-euler-weight, exr-sl-euler-neumann.
  Exercise 7.2.4.4(d) -> exr-sl-robin-negative.
- Exercise 3.1.3.2(a) -> exm-frob-complex-singularities, exr-frob-radius-check. Exercise 3.1.3.3 ->
  exr-frob-oscillator-series.
- Project 3.1.4 A (A1-A8) -> def-legendre-polynomial (citation), exr-leg-generating-equation (A7).
- Exercises 3.2.4.1(a), (b), 3.2.4.5 -> exr-frob-classify. Exercise 3.2.4.2(b) -> exr-frob-legendre-infinity.
- Secs. 3.2.1-3.2.3 -> thm-frobenius-method, def-regular-singular-point (citation lines).

### Existing citations kept

das2023quantum (Secs. 7.1.1-7.1.5, Problems 7.3.2, 7.3.6(a)) -> def-regular-singular-point, exm-frob-oscillator-infinity,
exr-frob-euler, exr-frob-radial, exm-frob-oscillator, exm-frob-legendre-termination; aliev2024mathematical (section
introduction).

### Standard material (no source)

The alternative and its proof through the shooting matrix (def-boundary-value-problem), the Frobenius convergence
estimate and the second solution by reduction of order (thm-frobenius-method), the orthogonality, zeros, recurrence and
generating-function proofs of prp-legendre-bessel, the discrete string (exr-slt-matrix-analogue), the argument-principle
count (exr-slt-real), the hydrogen and oscillator examples, the rotor partition function (exm-bes-modified), phase
modulation (exm-plb-jacobi-anger), the cavity (exm-bes-cavity), the alternating-series bound for the first zero of J_0
(exr-bes-first-zero), the drum coefficients of 1 - r^2 (exr-plb-drum-coefficients), Euler's divergent series
(exm-frob-irregular-divergent).

## Section sec-pdes (Partial differential equations)

Read from the local Zotero PDFs with pdftotext (read-only); the Zotero MCP returned no usable results in this run.

### riley2006mathematical

- Secs. 20.1-20.2 (types of PDE, general solutions) -> citation line of def-pde.
- Exercise 20.2 -> exr-pde-find-equation. Exercise 20.17 -> exm-pde-schrodinger, exr-pde-schrodinger-plane.
  Exercise 20.18 -> exr-pde-rod.
- Sec. 20.6 and Exercise 20.24 (invariance of the type) -> def-pde-classification (citation), exr-class-invariance.
  Exercises 20.12-20.13 -> exr-class-reduce-hyperbolic. Exercise 20.9 -> exr-class-factor. Exercise 20.19 ->
  exm-class-moving-tube.
- Sec. 20.4 (d'Alembert) -> def-wave-equation (citation). Exercise 20.16 -> exm-wave-domain-dependence,
  exr-wave-plucked-infinite.
- Sec. 20.3 (heat equation) -> def-heat-equation (citation). Exercise 20.22 -> exm-heat-earth.
- Sec. 20.7 (uniqueness by an energy integral) -> def-laplace-equation (citation).
- Secs. 21.1-21.3 -> def-separation-of-variables (citation), exm-sep-rectangle, exr-sep-sphere-legendre. Exercise 21.2 ->
  exr-sep-cube. Exercise 21.3 -> exm-sep-membrane. Exercise 21.4 -> exm-sep-quantum-box. Exercise 21.9 ->
  exr-laplace-disk-trig. Exercise 21.13 -> exr-sep-mode-energy.

### borodzik2019problems

- Sec. 4.1, Problems 4.1.7, 4.1.10, 4.1.16, 4.1.22 -> exr-laplace-derivatives, exr-laplace-radial,
  exr-laplace-liouville, exr-laplace-hessian; mean value property and its consequences -> def-laplace-equation.
- Sec. 5.2, Problems 5.2.8, 5.2.12, 5.2.16 -> exr-wave-free-end, exr-wave-parallelogram, exr-wave-radial-ivp; energy
  identity -> def-wave-equation (4).
- Sec. 5.3, Problems 5.3.16, 5.3.23 -> exr-heat-decay-bound, exr-heat-gradient-energy; kernel and maximum principle ->
  def-heat-equation (citation).
- Sec. 3.2 (separation of variables) -> def-separation-of-variables (citation).

### arrigo2023introduction

- Exercise 3.1 (types) -> exr-class-direct. Sec. 3.2 (standard forms) -> def-pde-classification (citation).
- Exercise 5.3 -> exr-laplace-square. Exercises 5.2, 5.5 -> exr-sep-inhomogeneous-ends. Ch. 5 -> citation of
  def-separation-of-variables.

### Existing citations kept

picard2020primer (Secs. 2.1, 2.1.1, 2.1.2) -> exm-wave-first-order, exm-heat-flux-system, exr-class-telegraph;
foulaadvand2023computational (Secs. 5.2-5.5, 6.2, 6.4, 7.2-7.3, Problems 5.3, 5.7) -> exr-heat-images,
exr-sep-neutron-critical, prp-fdm-stability, prp-fdm-relaxation and their examples and exercises.

### Standard material (no source)

The proofs of the maximum principles, the mean value property via the divergence and Green theorems, the domination
argument for the heat convolution, the series theorems of def-separation-of-variables, the Lorentz-boost and
Earnshaw examples, the shell theorem by inversion (exr-laplace-shell-inside), the five-point error bound
(exr-fdm-error-bound), the unitary Crank-Nicolson scheme (exr-fdm-schrodinger-cn), the wave-packet error bound
(exr-ppde-wave-packet). Evans, Strauss, Salsa and Olver are not in the library; the PDE texts used are those above.

## Section sec-greens-functions (Green's functions)

PDFs read read-only from local Zotero storage with pdftotext (the Zotero MCP reset the connection).

## riley2006mathematical

- Sec. 13.1.3 (the Dirac delta, eqs. (13.11)-(13.18): sifting, scaling, delta of a function) -> def-dirac-delta,
  exr-delta-lorentzian, exr-delta-scaling.
- Sec. 15.2.5 (Green's functions of ODEs) and Sec. 17.5 -> def-greens-function, exr-green-construction.
- Sec. 21.5.2-21.5.3 (Green's second theorem, eqs. (21.84)-(21.86); fundamental solution by flux, eqs.
  (21.87)-(21.91); method of images: half-space, quarter-plane Fig. 21.13, exterior of a sphere, disc eq. (21.104))
  -> def-fundamental-solution, exm-fund-laplacian-3d, exr-fund-gauss, prp-greens-laplacian, thm-green-representation,
  exm-grep-quadrant, exm-grep-exterior, exr-grep-disk-poisson.

## borodzik2019problems

- Sec. 4.1, Def. 4.1.7, Thm. 4.1.10 (Green's function and representation) -> prp-greens-laplacian (shell argument),
  thm-green-representation.
- Problems 4.1.2, 4.1.3 (half-space, ball) -> thm-green-representation (3), (4), exm-green-images; Problem 4.1.4 (Poisson
  formula of the disc) -> exr-grep-disk-poisson; Problem 4.1.30 (sectors) -> exm-grep-no-image; Problem 4.1.34 (slab) ->
  exr-grep-slab; Sec. 4.1 (half-plane) -> exr-grep-half-plane.
- Sec. 5.2, Problem 5.2.21 (Duhamel's formula for the wave equation) -> def-retarded-greens-function, exr-ret-1d.

## magnus2023essential

- Sec. 1.5.2, Props. 1.24-1.25 (Green's function of a two-point problem, jump property 4) -> def-greens-function (1),
  def-fundamental-solution (2).
- Sec. 1.5.3, Exercises 3, 4, 6, 7 -> exr-green-existence-condition, exr-green-inhomogeneous-bc, exr-green-robin,
  exr-fund-third-order; exr-fund-product-operator follows Sec. 1.5.2.

## arrigo2023introduction

- Searched for Green's functions and Duhamel's principle; it has only a short project on Green's functions of initial
  value problems, nothing used.

## Existing citations kept

maggiore2023electrodynamics (Sec. 4.1.2, Sec. 10.1) -> exm-fund-laplacian-3d, def-retarded-greens-function;
williams2023introduction (Sec. 6.2.6) -> def-retarded-greens-function, def-feynman-propagator; aliev2024mathematical
(Ch. 1) in the section introduction.

## Standard material (no source)

The delta-sequence lemma and its exercises (tent, uniformity for sin x^2, moment bound, products), the jump-condition
proof of def-fundamental-solution, the spherical-coordinate regularity and shell proofs of prp-greens-laplacian (3D Poisson
and Yukawa), the star-shaped parametrisation in the proof of the representation formula, the Kelvin form of the ball's
Green's function, the classical proof of the retarded potential (the identity of exr-ret-key-identity), the heat Duhamel
proof, and the oscillator's Feynman Green's function by residues.

# Task 4.4: Further special functions (sec-special-functions)

## riley2006mathematical

- Sec. 18.9 (Hermite: Rodrigues formula, generating function, normalisation eq. (18.143)) -> def-hermite-polynomial;
  Exercise 18.5 (PDE of the generating function, recurrences) -> exr-herm-generating-pde; Exercise 18.8 (H_1-H_4,
  three orthogonality integrals) -> exm-herm-low-degree, exr-herm-integrals.
- Secs. 18.7-18.8 (Laguerre and associated Laguerre, Rodrigues, recurrences) -> def-laguerre-polynomial; Exercise 18.7(a)
  (Rodrigues from the explicit sum) -> def-laguerre-polynomial (1); Exercise 18.7(b) (x L' relation) ->
  exr-lagu-x-derivative.
- Sec. 18.4 (Chebyshev: cos(n arccos x), recurrences, orthogonality) -> def-chebyshev-polynomial.
- Sec. 18.10 (hypergeometric series and equation) -> def-hypergeometric-function; Exercise 18.11 (elementary functions)
  -> exm-hyg-arcsin, exr-hyg-elementary; Exercise 18.12 (Legendre from the hypergeometric equation) -> exr-hyg-legendre.
- Sec. 18.11 (confluent hypergeometric function) -> def-confluent-hypergeometric; Exercise 18.19(a), (b) (derivative,
  Kummer's transformation from the integral) -> exr-kum-derivative, exr-kum-transformation-integral; Exercise 18.21
  (incomplete Gamma) -> exr-kum-incomplete-gamma; Exercise 18.24(b) (parabolic cylinder functions) ->
  exr-kum-parabolic-cylinder, exm-kum-oscillator.

## zhuEquationsAnalyticalTools2021

- Sec. 7.2.1-7.2.2 (Pochhammer, Gauss series, theta-operator proof of the equation, second Frobenius solution) ->
  def-hypergeometric-function (2); eq. (7.9) -> exr-hyg-elementary; eqs. (7.32), (7.36a) (Legendre and Chebyshev as
  2F1) -> def-hypergeometric-function (5); Exercise 7.1 -> exr-hyg-radius; Exercise 7.4 (point at infinity) ->
  exr-hyg-singular-points.
- Sec. 7.3 (confluence, Kummer function, special cases (7.44)-(7.46)) -> def-confluent-hypergeometric, exm-kum-confluence,
  exm-kum-error-function; Exercise 7.8 -> exr-kum-confluence-polynomial.

## magnus2023essential

- Sec. 3.1.3, Exercise 3 (Hermite's equation, polynomial solutions only for integer index) -> def-hermite-polynomial (5).
- Sec. 3.2.4, Exercise 4 (singular points and exponents of the hypergeometric equation) -> exr-hyg-singular-points.

## Searched, not in the library

Lebedev, Andrews-Askey-Roy, NIST DLMF, Abramowitz-Stegun and Temme: no matches in Zotero.

## Standard material (no source)

The growth argument for non-terminating Hermite and Kummer series (def-hermite-polynomial (5), exr-kum-growth), the
Chebyshev least-deviation proof and Gauss-Chebyshev quadrature, the chain of masses and the transfer-matrix powers
(exm-cheb-chain-modes, exm-cheb-transfer-matrix), the absolute convergence of 2F1 at z = 1 and the limit argument in
Gauss's sum, the Chu-Vandermonde extension by polynomial identity, Pfaff's transformation from Euler's integral, the
pendulum period as 2F1(1/2, 1/2; 1; k^2), and the hydrogen orthogonality by the Lagrange identity.

# Final run (task 4.4): sec-characteristics, closing exercises, follow-ups

## riley2006mathematical

- Sec. 20.3.1 (first-order equations, integrating factor) -> exm-fop-integrating-factor, prp-characteristics-solutions (1).
- Sec. 20.6.1 (characteristics, determinant condition, Figs. 20.2-20.3) -> def-first-order-pde, thm-characteristics-cauchy,
  exm-cau-riley-region, exm-cau-circle, exr-cau-gradient-determined.
- Exercises 20.3(a) -> exr-fop-integrating-factor; 20.4(a) -> exm-cau-degenerate-point; 20.4(d) -> exr-fop-characteristic-data;
  20.6(a) -> exr-fop-rotation-source; 20.7 -> exr-cau-riley-sin; 20.8 -> exr-fop-riley-value.

## arrigo2023introduction

- Secs. 1.1.1, 2.3-2.5 (advection, characteristics dx/a = dy/b = du/c, higher dimensions) -> def-first-order-pde,
  prp-transport-continuity; Example 2.13 -> exm-cau-three-variables.
- Sec. 2.6.1 (fully nonlinear equations, strip equations) -> thm-charpit; Example 2.14 -> exm-cha-arrigo-square; Example 2.15
  -> exm-cha-arrigo-product; Sec. 2.6.2 (Charpit's method) cited in the source paragraph of thm-charpit.
- Exercise 2.2(v) -> exr-cau-hyperbolas; Exercise 2.3(ii) (Burgers-type data) cited for thm-burgers-shocks; Exercise 2.4(i)
  -> exr-cha-arrigo-quadratic.

## borodzik2019problems

- Sec. 5.1.1 (characteristic system, admissible and non-characteristic data, Lemma 5.1.10, Thm. 5.1.11) ->
  thm-characteristics-cauchy, thm-charpit.
- Problem 5.1.1 -> exm-cau-borodzik-rays; 5.1.4 (forced Burgers) -> exm-cau-forced-burgers; 5.1.5 (eikonal outside the disc)
  -> exm-cha-eikonal-circle; 5.1.6 -> exm-fop-rotation, exr-cau-borodzik-rotation; 5.1.8 -> exr-cau-borodzik-quadratic; 5.1.13
  -> exr-cau-riccati; 5.1.19 -> exr-cha-borodzik-product; 5.1.20 -> exr-fop-outward-field; 5.1.23 (h(u) u_x, breaking,
  Riemann data) -> thm-burgers-shocks, prp-characteristics-solutions (3).

## lee2013introduction

- Thms. D.1 and D.6 (existence, uniqueness and smooth dependence for ODEs in R^n) cited for thm-characteristics-cauchy (1)
  and prp-transport-continuity (1); Ch. 9 named for the term "integral curves" only. No manifold material used.

## Not in the library

- Rudolph-Schmidt Part I (the coverage row's Rudolph I.12.2): only Part II is in Zotero, so nothing was taken from it.

## Standard material (no source)

- The term-by-term differentiation of the Picard iterates (thm-characteristics-cauchy (1)), Liouville's formula for a
  variable matrix, the weak-solution identity for piecewise smooth functions and the bump-function argument
  (thm-burgers-shocks (5)), the persistence of the strip condition (thm-charpit (3)), Oleinik's slope bound, the viscous
  shock profile and the Cole-Hopf transformation, Snell's law from the strips, the oscillator Hamilton-Jacobi solutions,
  the LWR traffic model and the Hubble and dust examples.
- Follow-ups: the sifting proof for the sine kernel (exm-delta-sine-kernel), the exterior Green's function remark
  (exm-grep-exterior), the formal step in the Liénard-Wiechert example (exm-ret-moving-source), the Schrödinger-equation
  computation in exm-feyn-oscillator-qm, and the aligned-frame reparametrisation in the proof of thm-green-representation (1).
