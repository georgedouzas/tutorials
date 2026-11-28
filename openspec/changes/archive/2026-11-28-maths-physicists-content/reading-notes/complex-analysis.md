# Reading notes: complex-analysis

Additions for the Zotero reading notes of `fundamentals-of-mathematics-for-physicists/complex-analysis`, for the owner's
review. Each line names the source location and the blocks it became.

## Section "Complex numbers and functions" (sec-complex-numbers)

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 139-143 (Ch. 3
exercises and answers), 862-867 (Secs. 24.4-24.6).

- Sec. 3.2: definition of complex numbers and their arithmetic -> def-complex-number (citation line after the proof).
- Secs. 3.2.2, 3.3: modulus, argument, polar form -> def-argument (citation line after the proof).
- Sec. 3.4.1: de Moivre and multiple-angle identities -> exm-argument-de-moivre.
- Sec. 3.4.2: n-th roots of unity -> prp-roots-of-unity (reading line).
- Sec. 3.4.3: solving polynomial equations, square roots -> exm-complex-square-roots.
- Sec. 3.5, 24.4: complex logarithm, principal value, complex powers, a^z = exp(z ln a) -> def-complex-logarithm.
- Sec. 3.6: complex exponentials in integration -> exr-exp-integrals.
- Sec. 24.4: proof of exp z1 exp z2 = exp(z1 + z2) by comparing coefficients -> proof after def-complex-exponential.
- Sec. 24.5: branch points, branch cuts, sqrt(z^2 + 1) with two branch points -> def-branch, exm-branch-sqrt-z2-minus-1.
- Exercise 3.1 (a)-(f): z = 3 + 4i, w = 2 - i -> exr-complex-riley-combinations; 3.1 (g) -> exr-log-riley-values.
- Exercise 3.3: cot(pi/12) -> exr-argument-cot-pi12.
- Exercise 3.5 (a) -> exm-exp-real-imaginary-parts; (c), (h) -> exr-log-riley-values; (d) -> exr-exp-modulus-argument;
  (f) -> exm-log-real-base.
- Exercise 3.7: Apollonius circles |z - ia| = lambda |z + ia| -> exm-modulus-apollonius, exr-modulus-circle-general.
- Exercise 3.8: similar triangles, a(B - C) + b(C - A) + c(A - B) = 0 -> exr-argument-similar-triangles.
- Exercise 3.9: level sets of ln((z - ia)/(z + ia)) -> exr-log-loci.
- Exercise 3.12 (b): factorisation with cube roots of unity -> exr-roots-cubic-identity.
- Exercise 3.13: real factorisation of x^(2m+1) - a^(2m+1) -> exr-roots-real-factorisation.
- Exercise 3.17: alternating binomial sums -> exr-argument-binomial-sums.
- Exercise 3.18: binomial sums of cos(r theta) -> exr-exp-binomial-cosines.
- Exercise 3.19: cos 4 theta and cos(pi/8) -> exr-argument-cos4.
- Exercise 3.20: sin^4 theta and its average -> exr-exp-sin-fourth.
- Exercise 3.28: arctan as a logarithm, arctan((2 sqrt3 - 3i)/7) -> exm-log-arctan, exr-log-arctan-value.

### stein2003complex

Complex Analysis (Princeton Lectures II) (PDF = printed + 19). Pages read: PDF 43-48 (Sec. 1.4, Exercises 1-21).

- Sec. 1.2.3: exponential defined by its power series -> citation line after def-complex-exponential.
- Exercise 1 (a), (f): perpendicular bisector, |z| = Re z + 1 -> exm-modulus-loci.
- Exercise 2: Euclidean and Hermitian inner products -> exr-modulus-parallelogram.
- Exercise 3: solutions of z^n = w -> exm-argument-nth-roots.
- Exercise 4: no total order on C -> exr-complex-field-axioms.
- Exercise 7 (a): |(w - z)/(1 - w* z)| < 1 on the disc -> exr-modulus-disc-map.

### ash2007complex

Complex Variables, 2nd ed. (Ash and Novinger). Pages read: PDF 5-14 (Ch. 1 and its problems).

- Sec. 1.1: C as pairs, conjugate, modulus, convergence through real and imaginary parts -> def-complex-number,
  def-modulus (citation lines), exm-modulus-sequences.
- Sec. 1.5: exponential defined by Euler's formula -> citation line after def-complex-exponential.
- Problem 1: parallelogram law -> exr-modulus-parallelogram.
- Problem 3: area from Im(z1* z2) -> exr-modulus-triangle-area.
- Problem 8: C as the matrices (a, b; -b, a) -> exr-complex-matrix-isomorphism.
- Problem 9: C cannot be ordered -> exr-complex-field-axioms.
- Problem 12: |(z - a)/(1 - a* z)| = 1 iff |z| = 1 -> exr-modulus-disc-map.
- Problem 13: z + 1/z real iff z real or |z| = 1 -> exr-complex-z-plus-inverse.
- Problem 18: circle equation in z and z* -> exr-modulus-circle-general.
- Problem 19: Enestrom-Kakeya -> exr-modulus-enestrom.

### yu2022problems

Problems and Solutions for Undergraduate Complex Analysis I (PDF = printed + 13). Pages read: PDF 50-61 (Ch. 3).

- Problem 3.1 (Theorem 3.1): the n-th roots of a complex number -> exm-argument-nth-roots.
- Problem 3.3: cube roots of -1 + i -> exm-argument-nth-roots.
- Problem 3.4: z^6 + z^3 + 1 = 0 -> exr-argument-sextic.
- Problem 3.5: z^n - z^(n-1) + ... + 1 = 0, n even -> exr-roots-geometric-polynomial.
- Problem 3.6: ((1 + iz)/(1 - iz))^n = a has only real roots -> exr-argument-real-roots (proved here through
  |z - i| = |z + i| instead of tangents).
- Problem 3.10: z^n + ... + z + 1 = 0 -> exr-roots-geometric-polynomial.
- Problem 3.11: (1 + z)^(2n+1) = (1 - z)^(2n+1) -> exr-roots-tangents.
- Problem 3.12 (b): a^3 + b^3 + c^3 - 3abc -> exr-roots-cubic-identity.
- Problem 3.13 (a)-(c): sum, product and prod(1 - w^k) for the roots of unity -> prp-roots-of-unity (citation line),
  exr-roots-one-minus.

### Standard material (no source in the library used)

- Physics examples: impedance and resonance (exm-complex-impedance, exm-modulus-resonance, exm-argument-phase-lag),
  SU(2) matrices (exm-complex-su2), oscillator as z = x + ip (exm-complex-oscillator, exr-exp-oscillator),
  interference (exm-modulus-interference), cyclotron motion (exm-argument-cyclotron), plane waves (exm-exp-plane-wave),
  damped oscillator (exm-exp-damped-oscillator), rapidities (exm-exp-rapidity, exm-log-rapidity), absorbing medium
  (exm-log-absorbing-medium), crystal momentum (exm-log-bloch), spin one-half (exm-branch-spin-half), azimuthal
  quantisation (exm-branch-azimuthal), anyons (exm-branch-anyons), evanescent momentum (exr-branch-evanescent),
  tight-binding ring (exm-roots-ring), grating (exm-roots-grating), three-phase power (exr-roots-three-phase).
- Proofs written for this section: product rule of exp by the bound E_2N(|z|)E_2N(|w|) - E_N(|z|)E_N(|w|),
  continuity of Arg off the cut by Arg z = 2 arctan(y/(|z| + x)), 0 as a branch point of log and of z^(1/n),
  (1 + z/n)^n -> e^z (exm-exp-limit).

## Section "Holomorphic functions" (sec-holomorphic)

### stein2003complex

Complex Analysis (Princeton Lectures II) (PDF = printed + 19). Pages read: PDF 27-33 (Sec. 1.2.1-1.2.2), 45-47
(Exercises 1.7-1.13), 225-231 (Sec. 8.1), 267-269 (Exercises 8.1-8.12).

- Sec. 1.2.2, eq. (2), Prop. 2.2: linearisation and the rules -> def-complex-derivative (proof and citation line).
- Sec. 1.2.2, Examples 2, 3: 1/z and z* -> exm-derivative-reciprocal, exm-derivative-conjugate.
- Prop. 2.3, Thm. 2.4: Wirtinger operators, det J = |f'|^2, the C^1 converse -> thm-cauchy-riemann, exr-cr-polar.
- Exercise 1.7 (b): Blaschke factors as bijections of the disc -> exr-holomorphic-blaschke.
- Exercise 1.9: polar Cauchy-Riemann equations and the logarithm -> exr-cr-polar-form.
- Exercises 1.10, 1.11: Laplacian as 4 d_z d_z* -> exr-harmonic-laplace-wirtinger.
- Exercise 1.12: sqrt|xy| -> exr-cr-sqrt-xy.
- Exercise 1.13: Re f, Im f or |f| constant -> exr-holomorphic-abs.
- Sec. 8.1 (terminology, Prop. 1.1 easy half) -> def-conformal (citation line).
- Thm. 8.1.2 (half-plane and disc) -> exr-conformal-mobius.
- Sec. 8.1.2, Examples 1, 2, 3, 6: affine maps, z^n on a sector, (1 + z)/(1 - z) on the half-disc, e^{iz} on a
  half-strip -> exm-conformal-linear, exm-conformal-sector-power, exr-conformal-half-disc, exr-conformal-exp-half-strip.
- Exercise 8.5: -(z + 1/z)/2 on the half-disc -> exr-conformal-joukowski-halfdisc.
- Exercise 8.6: Laplacian of u o F -> exr-harmonic-composition.
- Exercise 8.8 (hint): Arg/pi on the half-plane -> exm-harmonic-steady-heat.
- Exercise 8.9: Re((i + z)/(i - z)) on the disc -> exr-harmonic-disc-boundary.

### yu2022problems

Problems and Solutions for Undergraduate Complex Analysis I (PDF = printed + 13). Pages read: PDF 62-88 (Ch. 4).

- Def. 4.5, 4.6, Remark 4.2 -> def-complex-derivative, def-holomorphic (citation lines).
- Def. 4.11 (linear functions) -> exm-derivative-linear.
- Thm. 4.7 -> thm-cauchy-riemann (citation line); Thm. 4.8 -> exr-cr-constant; Thm. 4.10 -> exr-cr-conformal-inverse.
- Sec. 4.1.6 (hyperbolic functions) -> exm-holomorphic-hyperbolic.
- Problems 4.1, 4.17: writing f in z and z* -> exr-holomorphic-express-in-z.
- Problems 4.2, 4.3: z^4 and z^5 + 4z^2 - 6 in parts -> exr-cr-quartic, exr-cr-polar-quintic.
- Problem 4.8: lim (z^4 - 1)/(z - i) -> exr-derivative-limit-as-derivative.
- Problems 4.13, 4.16 -> exr-holomorphic-abs; Problem 4.14 -> exr-cr-polar-form; Problem 4.15 -> exr-harmonic-yu.
- Problem 4.18: (z* - 1)^2 + 5z* -> exm-cr-isolated-point; Problem 4.19 -> exr-cr-nowhere; Problem 4.20 ->
  exm-cr-not-sufficient; Problem 4.21 -> def-harmonic (citation line); Problem 4.22 -> exr-derivative-conjugate-function.
- Problem 4.23 (complex Rolle) -> exr-cr-complex-rolle; Problem 4.25 -> exr-holomorphic-rational-domain;
  Problem 4.28 -> exr-cr-exp-characterisation (with a direct uniqueness argument for U'' = -U instead of ODE theory);
  Problem 4.34 -> exm-holomorphic-sqrt-power.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. Pages read: PDF 855-860 (Secs. 24.1-24.2), 869-875
(Sec. 24.7), 897-905 (Exercises 24, Sec. 25.1), 950-952 (Exercises 25).

- Sec. 24.1: z^2 from the definition, 2y + ix, 1/(1 - z) -> exm-derivative-z2, exm-derivative-2y-ix,
  exm-derivative-reciprocal.
- Sec. 24.2: |x| - i|y|, d f/d z* = 0, Laplace's equation, orthogonal level curves -> exm-cr-quadrants, exr-cr-polar,
  def-harmonic, exr-cr-gradients.
- Sec. 24.7: angles and magnification, Cayley map -> def-conformal, exr-conformal-mobius, exr-conformal-area-scaling,
  exr-harmonic-composition.
- Sec. 25.1: complex potentials, field E = -(f')*, line charge, flow past a cylinder, vortex -> exm-cr-field-from-potential,
  exm-cr-flow-cylinder, exm-harmonic-flow-cylinder, exm-cr-vortex, exr-cr-field-strength.
- Exercise 24.1 -> exr-harmonic-riley; Exercise 24.2 -> exr-cr-riley-cot; Exercise 24.7 -> exr-harmonic-square-plate.
- Exercise 25.3 (two cylinders) -> exm-conformal-capacitor, exr-cr-capacitance; Exercise 25.4 ->
  exm-conformal-strip-potential; Exercise 25.5 (z = c cosh zeta) -> exr-conformal-elliptic-coordinates.

### ash2007complex

Complex Variables, 2nd ed. (Ash and Novinger). Pages read: PDF 9-14 (Secs. 1.3-1.6 and Ch. 1 problems).

- Thm. 1.3.2 (derivative of an inverse) -> exr-cr-conformal-inverse.
- Thm. 1.4.2 (complex differentiable iff real-differentiable with Cauchy-Riemann) -> thm-cauchy-riemann (1).
- Thm. 1.5.2 -> exm-cr-exp; Def. 1.6.1, Thm. 1.6.2 (harmonic conjugate on a disc) -> def-harmonic (3).
- Problem 6: |z|^2 -> exr-derivative-conj-fails; Problem 7: sqrt|xy| -> exr-cr-sqrt-xy; Problem 14 -> exr-harmonic-ash;
  Problem 16: e^{Re z} -> exr-derivative-exp-re; Problem 17 -> exr-derivative-conjugate-function.

### Standard material (no source in the library used)

- Physics examples: impedance at complex frequency (exm-derivative-impedance), damped oscillator and its response
  function (exm-derivative-damped-oscillator, exm-holomorphic-response, exr-holomorphic-propagator), plane waves in the
  wave number (exm-holomorphic-plane-wave), spinor ratio under spin-rotation matrices (exm-holomorphic-spin-mobius),
  oscillator phase-space flow (exm-cr-oscillator-flow), dipole and separated solutions (exm-harmonic-dipole,
  exm-harmonic-separable), source and sink (exm-cr-source-sink), speed on the cylinder and stagnation with circulation
  (exm-cr-cylinder-surface-speed, exr-cr-stagnation), Joukowski map (exm-conformal-joukowski).
- Proofs written for this section: harmonic conjugate on a star-shaped set from the potential formula of
  def-line-integral (4); mean value property by Green's theorem and differentiation under the integral
  (exr-harmonic-mean-value, replacing the earlier proof by Cauchy's integral formula); the converse of conformality by
  linear algebra (def-conformal (2)); conformal equivalence from the inverse function theorem (def-conformal (4));
  angle multiplication for polynomials (exr-conformal-critical); turns of the hue in the domain colouring
  (exr-cr-winding-count).

## Section "Contour integration" (sec-contour-integration)

### stein2003complex

Complex Analysis (Princeton Lectures II) (PDF = printed + 19). Pages read: PDF 50-60 (Ch. 1 Exercise 25-26, Secs. 2.1-2.2),
64-72 (Secs. 2.4-2.5.2), 83-88 (Exercises and Problems of Ch. 2).

- Sec. 2.1, Thm. 1.1 and Cor. 1.2 (Goursat by bisection, rectangles) -> thm-goursat (proof), fig-goursat-subdivision.
- Sec. 2.2, Thms. 2.1-2.2 (primitive in a disc, Cauchy in a disc) -> thm-cauchy (citation line).
- Sec. 2.3, Example 1 (Gaussian shifted) -> exr-goursat-gaussian, exm-cauchy-gaussian-shift.
- Sec. 2.4, Thm. 4.1, Cors. 4.2-4.3 (integral formula, derivatives by the difference-quotient induction, Cauchy
  inequalities) -> thm-cauchy-integral-formula (2), (3); Thm. 4.4 (power series) -> exm-cif-power-series; Cors.
  4.5-4.7 (Liouville, fundamental theorem of algebra, factorisation) -> cor-liouville.
- Sec. 2.5, Thm. 5.1 (Morera) -> exr-cif-morera; Thm. 5.2 (uniform limits) -> exr-cif-uniform-limit.
- Exercise 2.1 (Fresnel) -> exr-cauchy-fresnel; 2.2 (sine integral, indented semicircle) -> exr-cauchy-sine-integral;
  2.3 (e^{-ax} cos bx by a sector) -> exr-cauchy-sector-exponential; 2.5 (Goursat by Green) -> exr-goursat-green;
  2.6 (bounded exceptional point) -> exr-goursat-bounded.
- Ch. 1, Exercise 25(c) -> exr-circle-two-points; Exercise 26 (primitives differ by constants) ->
  exr-integral-primitive-criterion.

### ash2007complex

Complex Variables, 2nd ed. (Ash and Novinger) (PDF = printed + 14). Pages read: PDF 15-42 (Secs. 2.1-2.4 and their
problems).

- Defs. 2.1.3-2.1.4, Thms. 2.1.5-2.1.6 (paths, ML, fundamental theorem) -> def-contour, def-contour-integral; polarisation
  proof of |int phi| <= int |phi| (2.1.2) -> def-contour (3).
- Thm. 2.1.8 (triangles), 2.1.12 (exceptional point) -> thm-goursat; Thms. 2.1.9, 2.1.13 (starlike regions) ->
  thm-cauchy (1)-(2); Thm. 2.1.10 (vanishing closed integrals give a primitive) -> exr-integral-primitive-criterion;
  the rectangle-and-circle application after 2.1.11 -> exm-cauchy-deformation, fig-square-to-circle.
- Thms. 2.2.9-2.2.11, 2.2.16 -> thm-cauchy-integral-formula, exm-cif-power-series; 2.2.14 (Morera) -> exr-cif-morera;
  2.2.17 -> exr-cif-uniform-limit; 2.2.19 (parts of holomorphic functions harmonic) -> exm-cif-harmonic-smooth.
- Thm. 2.4.1 and its remark (Cauchy estimate, sharp for z^n) -> exm-liouville-estimates-sharp; 2.4.2-2.4.3 ->
  cor-liouville; 2.4.12 (maximum principle) -> exr-cif-maximum-modulus.
- Sec. 2.1 Problems 1, 2, 3 -> exr-integral-im-segment, exr-integral-conjugate-parabola, exr-contour-polygon-length.
- Sec. 2.2 Problem 13(b), (c) -> exr-liouville-bounded-growth, exr-liouville-three-halves; Sec. 2.3 Problem 3 ->
  exr-circle-sine; Sec. 2.4 Problems 13, 16, 18 -> exr-liouville-lower-bound, exr-liouville-half-plane-values,
  exr-liouville-near-function.

### yu2022problems

Problems and Solutions for Undergraduate Complex Analysis I (PDF = printed + 13). Pages read: PDF 108-146 (Ch. 6 and the
start of Ch. 7).

- Sec. 6.1 (Def. 6.1, Thms. 6.4-6.15, Cor. 6.16) -> citation lines of def-contour-integral, thm-goursat, thm-cauchy,
  thm-cauchy-integral-formula; Remark after Thm. 6.15 (x^n on [0, 1]) -> exm-cif-non-holomorphic.
- Problem 6.1 -> exm-circle-small-radius; 6.2 -> exm-integral-primitive; 6.3 -> exm-integral-path-dependence; 6.4 ->
  exr-integral-circle-powers; 6.5 -> exr-integral-area; 6.6, 6.18 -> exr-goursat-green; 6.7 -> exm-integral-term-by-term;
  6.9 -> exr-integral-ml-arc; 6.10 -> exr-circle-mean-square; 6.11 -> exr-cauchy-rational; 6.12 -> exr-goursat-piecewise;
  6.13 -> exr-goursat-triangle-exp (the source's value -12i is a slip; the integral is 0); 6.16 -> exr-cauchy-log-branch;
  6.19 -> exm-cif-off-centre; 6.20 -> exr-cif-two-points; 6.21 -> exr-circle-exp-exp; 6.22 -> exr-cif-second-derivative;
  6.23 -> exr-circle-polynomial-modulus; 6.25 -> exr-cif-estimates; 6.29 -> exr-liouville-additive; 6.31 ->
  exr-cif-exponential-growth; 6.32 -> exr-circle-cos-square; 6.36 -> exm-cif-field-at-centre.
- Thms. 7.4, 7.6, Cor. 7.8, Problem 7.8 -> exr-cif-maximum-modulus, cor-liouville; Problem 7.10 -> exr-liouville-monic.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 875-885 (Secs. 24.8-24.11),
893-898 (Sec. 24.13 and Exercises 24.1-24.13), 901-904 (Sec. 25.1).

- Sec. 24.8 (integrals of 1/z along paths, ML) -> exm-integral-powers-circle, def-contour-integral (citation line).
- Sec. 24.9 (Cauchy's theorem by Green's theorem under a C^1 hypothesis) -> exm-cauchy-green; the multiply connected form
  is replaced here by thm-cauchy (3).
- Sec. 24.10 (integral formula, derivatives, Cauchy inequality, Liouville) -> thm-cauchy-integral-formula, cor-liouville.
- Sec. 25.1 (complex potentials, flows, line charges) -> exm-integral-circulation-flux, exm-goursat-flow,
  exm-cauchy-circulation, exr-integral-gauss-law.
- Exercise 24.9 -> cor-liouville (3); Exercise 24.10 -> exr-cauchy-fresnel; Exercise 24.12 (done here with the integral
  formula, not residues) -> exr-cif-trig-integral. Chapter 25 beyond Sec. 25.1 uses residues and is not used here.

### Standard material (no source in the library used)

- Physics examples: oscillator orbit and action (exm-contour-oscillator-orbit, exr-contour-oscillator-action,
  exm-circle-orbit-winding), cycloid (exm-contour-cycloid, exr-contour-cycloid-length), Ampère's law
  (exm-integral-ampere, exm-goursat-wire, exr-circle-two-wires), dipole (exr-goursat-dipole), ground state of the
  oscillator (exm-cauchy-gaussian-shift), planar shell theorem (exm-cif-ring), bounded potentials and fields
  (exm-liouville-potential, exr-liouville-bounded-field), lattice-periodic functions (exm-liouville-doubly-periodic),
  plane waves (exm-liouville-plane-wave).
- Proofs written for this section: thm-cauchy (3) (cutting into star-shaped pieces), in place of the general deformation
  statement; the integral formula through the difference quotient and Cauchy's theorem on a slightly larger disc, with
  the geometric series for the integral of 1/(z - w); the maximum principle on a closed disc without the identity
  theorem (exr-cif-maximum-modulus); the C^2 hypothesis of def-harmonic (1) removed (exm-cif-harmonic-smooth).

## Section "Series and residues" (sec-residues)

### stein2003complex

Complex Analysis (Princeton Lectures II) (PDF = printed + 19). Pages read: PDF 122-127 (Exercises 3.1-3.22). The theorem
numbers cited from Secs. 1.2.3, 2.4 and 3.1-3.3 were located with the PDF outline but those pages were not reread in this
run; the owner may want to confirm them.

- Sec. 1.2.3, Thms. 2.5-2.6; Sec. 2.4, Thm. 4.4; Sec. 3.1, Thm. 1.1 -> def-taylor-series (citation line).
- Sec. 3.1, Thm. 1.4 -> def-residue (citation line); Sec. 3.3, Thm. 3.3 (Casorati-Weierstrass) -> def-isolated-singularity (3).
- Sec. 3.2, Thm. 2.2 and Cor. 2.3 -> thm-residue (citation line); Sec. 3.2.1, Example 2 (rectangle, e^{ax}/(1 + e^x)) ->
  exr-residue-theorem-rectangle; Example 3 ((1 - cos x)/x^2) -> exr-real-integral-one-minus-cos.
- Exercise 3.1 -> exm-residue-cot; 3.2 -> exm-residue-method-x4; 3.3 -> exr-residue-theorem-stein-cos; 3.4 ->
  exm-residue-method-x-sin; 3.5 (restated without the transform) -> exr-real-integral-stein-cos-double; 3.6 ->
  exr-real-integral-stein-power; 3.8 -> exr-real-integral-stein-a-b; 3.10 -> exr-real-integral-stein-log; 3.12 (method,
  with squares instead of circles) -> exr-residue-theorem-sum-series; 3.13 -> exr-singularity-stein-removable.

### yu2022problems

Problems and Solutions for Undergraduate Complex Analysis I (PDF = printed + 13). Pages read: PDF 90-97 (Ch. 5),
178-195 (Ch. 9).

- Thms. 5.2, 5.5, Cor. 5.6 -> def-taylor-series (citation line); Problems 5.1-5.2 -> exr-taylor-yu-radii; Problem 5.4 ->
  exr-taylor-yu-entire.
- Sec. 9.1.1 (non-isolated singularities, Log) -> exm-singularity-non-isolated; Sec. 9.1.2 (singularity at infinity) ->
  exm-singularity-infinity; Thms. 9.1, 9.3, Cor. 9.2 -> def-isolated-singularity (citation line); Thms. 9.6-9.7, Problem
  9.17 -> def-laurent-series (citation line).
- Problem 9.6 -> exr-singularity-derivative-pole; 9.9, 9.16 -> exr-singularity-entire-polynomial; 9.11 (restricted to
  entire f, g with finitely many zeros of g) -> exr-singularity-ratio-liouville; 9.18 -> exr-singularity-exp-pole; 9.19 ->
  exr-laurent-log-bound; 9.20 -> exm-laurent-about-pole; 9.21 -> exm-laurent-three-regions (citation); 9.22(b) (without
  naming the coefficients as special functions) -> exr-laurent-product-coefficients.

### ash2007complex

Complex Variables, 2nd ed. (Ash and Novinger). Pages read: PDF 62-70 (Secs. 4.1-4.2 and the problems of 4.1).

- Thm. 4.1.1, 4.1.3 -> def-laurent-series (2)-(4) (citation line; the annulus formula is proved here from thm-cauchy (3)
  by a cut into polar rectangles instead of the homology version); Def. 4.1.4, Thms. 4.1.5-4.1.6 -> def-isolated-singularity.
- Def. 4.2.1, Remarks 4.2.2(a), (d), (e) -> def-residue; Remark 4.2.2(c) -> exm-residue-derivatives,
  exr-residue-primitive-criterion; Thm. 4.2.3 -> thm-residue (citation line; proved here only for star-shaped sets, circles
  and cut regions).
- Sec. 4.1 Problem 2 -> exm-singularity-quotients, exr-singularity-ash-classify; Problem 3 -> exr-laurent-ash-partial-fractions;
  Problem 5 -> exr-laurent-ash-first-terms; Problem 6 -> exr-laurent-annulus-sine; Problem 7 -> exr-residue-partial-fractions;
  Problem 10 -> exr-singularity-ash-classify.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 894-898 (Secs.
24.13.2-24.14), 949-952 (Exercises 25).

- Sec. 24.13.2 (Jordan's lemma, indented contour, PV of cos mx/(x - a)) -> prp-residue-integrals (2), (4),
  exm-residue-method-pv; Sec. 24.13.3 (keyhole, (x + a)^{-3}x^{-1/2}) -> exm-residue-theorem-keyhole,
  exr-residue-theorem-keyhole.
- Exercise 24.3 -> exr-taylor-riley-radii; 24.5 -> exm-singularity-infinity, exr-singularity-riley; 24.6 -> exm-singularity-tan,
  exr-singularity-riley; 24.13 -> exr-residue-riley-reciprocal, exr-real-integral-riley-trig; 25.10 ->
  exr-residue-theorem-sum-series.

### Standard material (no source in the library used)

- Physics examples: relativistic energy (exm-taylor-relativistic-energy-complex), Bose factor and its poles
  (exm-taylor-bose-factor, exm-singularity-bose, exm-residue-bose), multipole expansion of a line charge
  (exm-laurent-multipole), cylinder flow (exm-laurent-cylinder-flow), oscillator response, its residues, causality and
  integrated response (exm-singularity-oscillator-response, exm-residue-oscillator, exm-residue-theorem-causality,
  exm-residue-method-oscillator-power), Gauss's law for line charges (exm-residue-theorem-gauss), Lorentzian line and decay
  (exm-residue-method-lorentzian).
- Proofs written for this section: holomorphy of power series by a direct difference-quotient bound; the annulus formula
  and the Laurent series from thm-cauchy (3) with a cut into polar rectangles (fig-annulus-cut); the residue theorem on
  star-shaped sets by subtracting principal parts, with winding numbers shown to be integers and constant along segments
  (Log((z - a)/(z - b))); winding numbers of the semicircle, keyhole and indented contours by comparison with a circle;
  Jordan's inequality; the half-residue rule for indented contours; zero counting by a Rouche-type argument with Log w
  (exr-residue-theorem-zero-count).

## Section "Analytic continuation and special functions" (sec-analytic-continuation)

### stein2003complex

Complex Analysis (Princeton Lectures II) (PDF = printed + 19). Pages read: PDF 179-186 (Ch. 6, Secs. 1.1-1.2), 193-199
(Ch. 6 Exercises 1-17 and Problems 1-4).

- Ch. 6 Prop. 1.1, Lemma 1.2, Thm. 1.3 -> def-gamma-function (citation line; holomorphy proved here by a direct estimate,
  (1), instead of the uniform limit); footnote 2, p. 161 (uniqueness off a pole set) -> def-analytic-continuation (3).
- Sec. 1.1, alternate continuation (3) -> exr-gamma-stein-series.
- Lemma 1.5, Thms. 1.4, 1.6 -> def-beta-function (3), (4) (reflection via int e^{ax}/(1 + e^x) = exr-residue-theorem-rectangle).
- Prop. 2.5 (zeta(s) - 1/(s - 1) = sum delta_n) -> exm-zeta-near-one (with the constant term gamma at s = 1).
- Exercise 1 (Gauss limit) -> exr-gamma-gauss-limit (proved from the integral with (1 - t/n)^n, not from the product formula);
  Exercise 2 -> exr-beta-stein-product; Exercise 3 (duplication) -> exr-gamma-duplication (proved through B(z, z) =
  2^{1-2z}B(z, 1/2) instead of Wallis); Exercise 5 -> exr-gamma-reflection; Exercise 7 -> def-beta-function (2) (the change
  of variables u = st, v = s(1 - t)); Exercise 10(a) (restricted to real 0 < x < 1, the transform not named) ->
  exr-wick-stein-mellin, and its contour hint -> citation line of def-wick-rotation; Exercise 12(a) ->
  exr-beta-reciprocal-growth; Exercises 15-16 -> def-zeta-function (2), (3); Problem 2 -> exr-zeta-integral-tail; Problem 4 ->
  def-zeta-function (4) (proved here from the cotangent sum of exr-residue-theorem-sum-series, not from Bernoulli
  polynomials).

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 663-670 (Secs. 18.11-18.12),
673-676 (Exercises 18.9-18.24 and hints).

- Sec. 18.12.1, eqs. (18.153)-(18.158) -> def-gamma-function (citation line), exr-gamma-integral-forms ((18.157)),
  prp-gamma-values (citation line).
- Sec. 18.12.2, eqs. (18.162)-(18.165) and the route to the reflection formula through B(1 - n, n) -> def-beta-function
  (citation line); the polar-coordinate proof of (18.165) -> exr-beta-gamma-derivation.
- Sec. 18.12.3 (incomplete Gamma function) -> exr-gamma-incomplete.
- Exercise 18.13 -> exr-beta-riley-sqrt; 18.14 -> exr-beta-riley-power; 18.15 -> exr-gamma-riley-factorial.
- Stirling's approximation by Laplace's method (p. 637-638) was not used: Stirling is left to the later section on steepest
  descent; exr-values-stirling-real extends exr-ra-stirling by log-convexity instead.

### ash2007complex

Complex Variables, 2nd ed. (Ash and Novinger). Pages read: PDF 151-156 (Ch. 7, Secs. 7.1.1-7.1.4).

- 7.1.1 (Euler product, holomorphy on Re z > 1) -> def-zeta-function (1) (citation line).
- 7.1.2 (zeta(z) = z int [t] t^{-z-1}, continuation to Re z > 0) -> exr-zeta-integral-tail (holomorphy by uniform convergence
  of the interval pieces instead of Vitali's theorem).
- 7.1.3 (no zeros on Re z = 1, Mertens's 3-4-1 inequality) -> exr-zeta-euler-product.

### yu2022problems

Problems and Solutions for Undergraduate Complex Analysis I (PDF = printed + 13). Pages read: PDF 138-146 (Ch. 7, Secs.
7.1-7.3).

- Thm. 7.1 (interior uniqueness) and the list of continued trigonometric identities -> def-analytic-continuation (1)
  (citation line), exm-continuation-identities.
- Problem 7.2 -> exr-continuation-zero-set; 7.4 -> exr-continuation-real-on-real; 7.5 -> exr-continuation-ode; 7.7 ->
  exr-continuation-product-zero.

### Standard material (no source in the library used)

- The identity theorem proved from (4) of def-taylor-series and def-connected; connectedness of D minus a discrete set
  (def-analytic-continuation (3)); the natural boundary of sum z^{2^n} (exm-continuation-natural-boundary);
  exr-continuation-values; exr-continuation-functional-equation; the cotangent partial fractions by continuation
  (exr-continuation-cot-partial-fractions).
- The holomorphy estimate for integrals int t^{z-1} phi(t) dt (def-gamma-function (1)); exr-gamma-convergence,
  exr-gamma-conjugate, exr-gamma-log-convex, exr-gamma-stirling-ratio, exr-beta-euler-constant (Gamma'(1) = -gamma through
  d/da B(a, n + 1)), exr-values-stirling-real.
- B = Gamma Gamma / Gamma for real a, b >= 1 by triangles squeezed between squares and the identity theorem (def-beta-function (2)).
- Physics examples: oscillator partition function and imaginary time (exm-continuation-oscillator-partition,
  exm-wick-oscillator-trace, exr-wick-thermal-oscillator), Bose occupation (exm-continuation-bose), response function
  (exm-continuation-response), oscillator, Maxwell and hydrogen moments (exm-gamma-gaussian-moments, exm-gamma-maxwell,
  exm-gamma-hydrogen, exm-values-hydrogen-normalisation, exm-values-maxwell-normalisation), Feynman parameters
  (exm-beta-feynman-parameters), ideal-gas phase space (exm-beta-gas-phase-space), periods in |x|^p potentials
  (exm-beta-anharmonic-period), black body, Bose condensation, Casimir energy (exm-zeta-black-body,
  exm-zeta-bose-condensation, exm-zeta-casimir), Fermi integrals (exr-zeta-fermi-integral, exm-values-fermi), heat kernel
  (exm-wick-heat-kernel, exr-wick-heat-equation), on-shell factor, retarded prescription, 1D Euclidean propagator
  (exm-wick-onshell, exm-wick-retarded, exm-wick-yukawa).
- Wick rotation proved with Cauchy's theorem on a convex neighbourhood of a quarter disc (def-wick-rotation); the exact
  finite-epsilon value -i pi / sqrt(E^2 - i eps) (prp-wick-rotation) and the exercises built on it.

## Section "Asymptotic evaluation of integrals" (sec-asymptotics)

The Zotero MCP server timed out throughout this run (another operation held its lock), so the two PDFs below were read
from their Zotero storage files with `pdftotext`; nothing was written to Zotero. No other asymptotics text (Bender-Orszag,
Olver, Miller, de Bruijn, Erdélyi, Copson, Wong) is in the library.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: printed 905-919 (Sec. 25.8),
921-926 (Ch. 25 problems and hints).

- Sec. 25.8 (asymptotic notation and the aim of the section) -> def-asymptotic-expansion (citation line).
- Sec. 25.8.1-25.8.2 (level lines, saddle points, lines of steepest descent, the "omnibus" formula (25.66) with its sign fixed by the
  direction of crossing) -> thm-steepest-descent (statement (1), the factor v, citation line), exm-saddle-fresnel-directions,
  exm-saddle-shifted-gaussian (the worked integral of exp(10t - t^2) adapted).
- Sec. 25.8.2 worked example (Airy function for large positive x via the saddle at t = i) -> exm-saddle-airy, exm-saddle-which-saddle
  (why the other saddle is not used), fig-saddle-landscape.
- Sec. 25.8.3 (stationary phase, Fresnel integrals, Airy for negative x with two stationary points) -> thm-stationary-phase,
  exm-statphase-cubic, exm-statphase-airy-negative.
- Problem 25.19 -> exr-saddle-riley-quadratic. Problem 25.21 -> exr-statphase-riley (answer agrees with the book's hint).
  Problems 25.20, 25.22, 25.23 (Bessel and Hankel integrals) informed exr-saddle-bessel-type and exr-statphase-bessel-order-n,
  rewritten without the ODEs.

### stein2003complex

Complex Analysis (Princeton Lectures II) (PDF = printed + 19). Pages read: printed 318-335 (App. A, Secs. 1-4) and 341-343
(App. A problems).

- Prop. 1.2 (the Gamma integral on a finite interval with an exponentially small tail) -> the proof of thm-watson-lemma.
- Prop. 2.1 (Laplace's method by the change of variable y = (x - x0) phi(x)^(1/2) and Prop. 1.2) -> thm-laplace-method (2).
- Prop. 2.2 (the same for Re s >= 0, integration by parts on the non-critical pieces, "the method of stationary phase") ->
  thm-stationary-phase (1) and the splitting G = G(0) + sH in its proof.
- Thm. 2.3 (Stirling via Phi(x) = x - 1 - log x) -> exm-laplace-stirling, exr-laplace-check; Problem 2 (complete expansion) ->
  exr-laplace-second-term, exr-laplace-stirling-correction.
- Sec. 1 (Bessel functions by moving the contour) -> exr-saddle-bessel-type (idea of moving a line to a vertical/horizontal line).
- Sec. 3 (Airy function: definition on the line L_delta, Theorem 3.1 (i) and (ii), the steepest-descent hyperbola
  y^2 = x^2/3 + 1) -> exm-saddle-airy (definition), exm-statphase-airy-negative, fig-saddle-landscape, exr-saddle-airy-numbers.

### Standard material (no source in the library used)

- Asymptotic notation and its algebra, uniqueness of coefficients, products of power expansions (def-asymptotic-expansion);
  Euler's divergent series and optimal truncation (exm-asym-stieltjes, exr-asym-optimal-truncation); exponential integral and
  Gaussian tail by parts (exr-asym-exponential-integral, exr-asym-gaussian-tail).
- Watson's lemma in the general form with exponents (n + alpha)/beta and its sector version (thm-watson-lemma, exr-watson-sector);
  incomplete Gamma, Bernoulli-number expansion of the trigamma sum, flat functions.
- Leading-order Laplace for C^2 phases by Gaussian squeezing (thm-laplace-method (1)); the second-term formula
  f''''/(8A^2) + 5 f'''^2/(24 A^3).
- Steepest descent for a C^1 path through a simple saddle, proved by scaling and uniform convergence on |y| <= Y
  (thm-steepest-descent (2)); 1/n! and central binomials from Cauchy's formula; density of states of oscillators from the
  partition function; Einstein-solid counting (exr-saddle-einstein-solid).
- Physics examples: quartic oscillator integral (exm-watson-anharmonic), short-range probe of hydrogen (exm-watson-contact-density),
  band density of states (exr-watson-density-of-states), oscillator at high temperature and partition function at both ends
  (exm-asym-oscillator-high-temperature, exr-asym-oscillator-partition), hydrogen level spacing and circular orbits
  (exm-asym-hydrogen-spacing, exm-laplace-hydrogen-circular), classical partition function and equipartition
  (exm-laplace-classical-partition, exm-laplace-equipartition, exr-laplace-pendulum), free propagator and classical path
  (exm-saddle-free-propagator, exr-saddle-propagator, exm-statphase-classical-path), group velocity and spreading packet
  (exm-statphase-group-velocity, exr-statphase-free-packet).
- Closing exercises: exr-ca-gaussian-fourier retitled "A Gaussian with an oscillating factor" and extended with the saddle-point
  and stationary-phase readings; exr-ca-keyhole-beta extended with |Gamma(1/2 + iy)|^2 = pi/cosh(pi y); exr-ca-propagator-time
  rewritten with the exact poles +-sqrt(E^2 - i eps) and winding numbers.
