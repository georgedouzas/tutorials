# Reading notes: real-analysis

Additions for the Zotero reading notes of `fundamentals-of-mathematics-for-physicists/real-analysis`, for the owner's
review. Each line names the source location and the blocks it became.

## Section "Real numbers, sequences and limits" (sec-sequences-limits)

### abbott2015understanding

Understanding Analysis, 2nd ed. (PDF = printed + 13). Pages read: PDF 30-33, 59-61, 65-83.

- Def. 1.3.2, Axiom 1.3.1: supremum and completeness axiom -> def-supremum (citation line after the statement).
- Example 1.3.6: {r in Q : r^2 < 2} has no rational supremum -> exm-sup-rationals.
- Example 1.3.7: sup(c + A) = c + sup A -> exm-sup-translate.
- Lemma 1.3.8: epsilon-characterisation of the supremum -> exr-sup-characterisation.
- Exercise 1.3.3: inf A = sup of the lower bounds -> exr-sup-lower-bounds.
- Exercise 1.3.5: sup(cA) -> exr-sup-scaling.
- Exercise 1.3.6: sup(A + B) -> exr-sup-sum.
- Exercise 1.3.8 (a), (c): {m/n : m < n}, {n/(3n + 1)} -> exm-sup-fractions.
- Exercise 1.3.10: the cut property -> exr-sup-cut.
- Thm. 1.4.2: Archimedean property -> exm-sup-archimedean.
- Thm. 1.4.5: existence of sqrt 2 -> exr-sup-sqrt2.
- Exercise 2.2.2 (a), (c): (2n + 1)/(5n + 4) -> 2/5, sin(n^2)/n^(1/3) -> 0 -> exr-limit-epsilon-N, exr-limit-bounded-null.
- Thm. 2.3.4 and the remark after it: order limit theorem, strict inequalities -> def-sequence-limit (order rule),
  exr-limit-order, exm-limit-strict.
- Exercise 2.3.1: square roots of limits -> exr-limit-sqrt.
- Exercise 2.3.7: when the limit rules do not apply -> exm-limit-rules-fail.
- Exercise 2.3.9 (a): bounded times null -> exr-limit-bounded-null.
- Exercise 2.3.11: Cesaro means -> exr-limit-cesaro.
- Exercise 2.3.12: properties inherited by the limit -> exr-limit-inherited.
- Thm. 2.4.2: monotone convergence theorem -> thm-monotone-convergence (citation line).
- Exercise 2.4.1: x_{n+1} = 1/(4 - x_n) -> exr-monotone-recursion.
- Exercise 2.4.2 (a): y_{n+1} = 3 - y_n -> exm-monotone-false-fixed-point.
- Exercise 2.4.3 (a): nested radicals -> exm-monotone-nested-radicals.
- Exercise 2.4.4: monotone convergence implies completeness -> exr-monotone-completeness.
- Exercise 2.4.5: Newton's recursion for sqrt c -> exr-monotone-sqrt-c.
- Exercise 2.4.6: arithmetic-geometric mean -> exr-monotone-agm.
- Exercise 2.4.7: limit superior and inferior -> exr-monotone-limsup.
- Exercise 2.5.8: peak terms, monotone subsequences, Bolzano-Weierstrass -> exr-cauchy-bolzano-weierstrass.
- Thm. 2.6.4: Cauchy criterion -> def-cauchy-sequence (citation line), exr-cauchy-bolzano-weierstrass.
- Exercise 2.6.2 (a): Cauchy but not monotone -> exm-cauchy-oscillating-sign.
- Exercise 2.6.4: |a_n - b_n|, (-1)^n a_n, floor(a_n) -> exr-cauchy-decide.
- Exercise 2.6.5: pseudo-Cauchy sequences -> exm-cauchy-small-steps, exr-cauchy-pseudo.
- Secs. 1.3-1.4, 2.2-2.6: added to the section's "For more" line; Sec. 2.6 to the Cauchy unit's line.

### radozycki2020solving

Solving Problems in Mathematical Analysis, Part I (PDF = printed + 9). Pages read: PDF 100-104, 127-133.

- Sec. 5.1, Problem 1: fourth roots, the "infinity minus infinity" cancellation and its variants (5.1.5), (5.1.7) ->
  exm-limit-conjugate, exr-limit-rules.
- Sec. 5.1, Problem 2: sum of 1/sqrt(n^2 + k) by squeezing -> exm-limit-squeeze-sum.
- Sec. 5.3 (recursion a_{n+1} = 3a_n/(a_n + 1), monotone from both sides of the fixed point 2) -> exm-monotone-cobweb,
  with the new figure fig-monotone-cobweb.
- Sec. 5.4, Problem 1: a_{n+1} = 6/(2a_n + 1), even and odd subsequences -> exr-monotone-oscillating.

### gasinski2014exercises

Exercises in Analysis, Part 1, Ch. 1 (metric spaces). Pages read: PDF 44-46, 50-53. The problems are stated for metric
spaces; they are used here on the line. The book has no problems on real sequences as such.

- Problem 1.2: x_{2n}, x_{2n+1}, x_{3n} convergent implies x_n convergent -> exr-cauchy-three-subsequences.
- Problem 1.4: a Cauchy subsequence with d(x_{n_k}, x_{n_m}) <= 2^{-k} -> exr-cauchy-fast-subsequence.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 1017-1023.

- Sec. 27.1.1, pp. 987-988: rearrangement x_{n+1} = (2x_n^2 + 3)^{1/5} for x^5 - 2x^2 - 3 = 0 -> exr-monotone-rearrangement.
- Sec. 27.1.3, p. 990: binary chopping for the same equation -> exr-nested-intervals (SageMath tab and application).

### riley2006solutions

Not used: the worked problems on series and limits rely on series expansions and derivatives, which come later in the
chapter.

### Standard material (no source)

The physics examples are standard textbook physics, written for this section: hydrogen levels, photon energies and
Bohr radii (exm-sup-hydrogen with the new figure fig-sup-hydrogen, exr-sup-hydrogen-photons, exm-limit-hydrogen), the
oscillator spectrum (exm-sup-oscillator, exm-limit-oscillator-spacing, exm-monotone-oscillator), repeated relativistic
boosts (exm-sup-boosts, exm-limit-boosts, exr-limit-infinity-reciprocal), Carnot efficiencies (exm-sup-carnot), the
Lyman limit (exm-monotone-lyman), cooling in steps (exm-monotone-cooling), sampled oscillators (exm-cauchy-damped),
mirrors (exm-cauchy-mirrors), ionic and charged chains (exm-cauchy-ionic-chain, exm-limits-charge-chain), decay in n
steps (exm-limits-decay) and the correspondence principle (exm-limits-correspondence, exr-limits-correspondence). The
brackets for e and gamma, the log bounds and the irrationality of e (exm-limits-upper-e with fig-e-brackets,
exm-limits-log-bounds, exr-limits-gamma-bounds, exr-limits-e-irrational) are classical arguments.

## Section "Series" (sec-series)

### abbott2015understanding

Understanding Analysis, 2nd ed. (PDF = printed + 13). Pages read: PDF 82-95.

- Thms. 2.7.1-2.7.3: linearity, Cauchy criterion for series, terms tend to 0 -> the facts paragraph after def-series,
  exr-series-cauchy-criterion.
- Exercise 2.7.2 (b), (d): sin(n)/n^2; the sign pattern + + - on 1/n -> exr-series-cauchy-criterion, exm-absolute-sign-pattern.
- Def. 2.7.8, Thms. 2.7.6 and 2.7.10: absolute convergence, rearrangements -> def-absolute-convergence and its proof.
- Sec. 2.9 (Riemann's rearrangement theorem, greedy construction) -> exm-absolute-rearrangement, exr-absolute-riemann.
- Exercise 2.7.3: comparison test via the Cauchy criterion -> exr-comparison-proof.
- Exercise 2.7.8 (a)-(c): true/false on squares, products, n^2 a_n -> exr-absolute-claims.
- Exercise 2.7.9: ratio test; Thm. 2.4.6: condensation test -> thm-convergence-tests (citation line and proof).
- Exercise 2.8.7: Cauchy product of absolutely convergent series -> exr-absolute-cauchy-product.
- Sec. 6.5: power series (citation lines after def-power-series and def-radius-of-convergence).
- Sec. 8.3, Exercise 8.3.13: kept as the "other proof" of Euler's value (exm-series-basel, prp-series-values).

### radozycki2020solving

Solving Problems in Mathematical Analysis, Part I, Ch. 13 (PDF = printed + 9). Pages read: PDF 281-305.

- Sec. 13.1, Problem 2: sum (-1)^n log((n + 1)/n) by monotone even/odd sums -> exr-tests-gamma-series.
- Sec. 13.2, Problem 1: sum (1/n - log(1 + 1/n)) by comparison; e^x >= 1 + x -> exr-tests-gamma-series,
  exr-values-exp-inequality.
- Sec. 13.2, Problem 3: sum c^n n!/n^n, the case c = e -> exr-tests-c-factorial.
- Sec. 13.2, Problem 4: root test on ((a + cos n)/(b + cos n))^n with an upper limit -> exm-tests-root.
- Sec. 13.2, Problem 5: condensation for 1/(n log^alpha n) -> exm-tests-log-condensation.
- Sec. 13.2, Problem 7: limit comparison fails for terms of changing sign -> exm-tests-silent.
- Sec. 13.4, Exercise 1 (d), (f): 2^(-log n), 3^(-log n), 1/(n log n log log n) -> exr-tests-log-powers.
- Ch. 13: section "For more" line.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 145-165, 174-177.

- Sec. 4.2.2: the bouncing ball -> exm-series-bouncing-ball (and exr-series-bouncing-time, the time of flight, standard).
- Sec. 4.2.3: arithmetico-geometric series with sum 10 -> exm-series-arithmetico-geometric.
- Sec. 4.2.4: difference method, sum 1/(n(n + 2)) -> exm-series-difference-method.
- Sec. 4.3.2: comparison with 1/n!, quotient (limit comparison) test example (4n^2 - n - 3)/(n^3 + 2n) ->
  exm-tests-comparison-basic, exm-tests-limit-comparison.
- Sec. 4.5.1: ratio formula for the radius; 1 + 2x + 4x^2 + ...; a series centred at 1 -> def-radius-of-convergence
  (citation), exm-radius-riley, exm-power-shifted.
- Sec. 4.5.2 (i): sums and products of power series -> exr-power-sum-product.
- Problem 4.2 (annuity) -> exr-series-annuity. Problem 4.4 (ratio fails, root succeeds) -> exr-tests-interleaved.
  Problem 4.5 (a)-(c) -> exr-series-three-behaviours. Problem 4.6 (odd squares) -> exr-absolute-odd-squares.
  Problem 4.7 -> exr-series-riley-difference. Problems 4.10 (a), (e) and 4.12 (a)-(d) -> exr-tests-mixed.
  Problem 4.11 -> exr-power-domains. Problem 4.13 -> exr-absolute-classify. Problem 4.14 -> exr-radius-substitution.
- Secs. 4.1-4.5: added to the section's "For more" line.

### riley2006solutions

Not used: the series solutions rely on Maclaurin expansions and the integral test, which come later in the chapter.

### gasinski2014exercises

Not used: Ch. 1 has no problems on numerical series.

### Standard material (no source)

The physics examples are standard: oscillator partition function and Planck's occupation number and its fluctuations
(exm-series-oscillator-partition, exm-power-planck, exr-power-planck-fluctuations, exm-radius-planck), hydrogen level
spacings, partition function and total binding energy (exm-series-hydrogen-spacings, exm-tests-hydrogen-partition,
exm-values-hydrogen-binding), the rigid rotor (exm-tests-rotor, exr-tests-rotor, exm-radius-rotor), the damped
oscillator's path length (exm-absolute-damped-path), the ionic chain's summation order (exm-absolute-ionic-order),
charges on an axis and the dipole (exm-power-axis-potential, exr-power-dipole, exr-radius-axis-charges), the end of a
row of charges (exm-values-charge-row) and the particle in a box sum rules (exm-values-box, exr-values-box-squares).
The cotangent proof of Euler's value (prp-series-values, exr-values-cot-identity, exr-values-zeta4) is classical.
The proof of prp-sequence-limits (n^{1/n}, the brackets for e, Euler's constant) was written out in that section.

## Section "Continuity and differentiability" (sec-continuity-differentiability)

### abbott2015understanding

Understanding Analysis, 2nd ed. (outline pages = PDF pages). Pages read: PDF 130-132, 137-139, 149-151, 162-177, 209-214.

- Thm. 4.2.3 (sequential criterion), Example 4.2.6 (sin(1/x)) -> def-function-limit (citation after the proof), exm-flimit-one-sided.
- Exercise 4.2.1: sum and product rules from the definition -> exr-flimit-direct-rules.
- Exercises 4.2.2 (b), 4.2.4: largest delta for sqrt x at 4 and for 1/floor(x) at 10 -> exr-flimit-largest-delta.
- Exercise 4.2.5: epsilon-delta proofs for 3x + 4, x^2 + x - 1 -> exm-flimit-polynomial, exr-flimit-epsilon-delta.
- Exercise 4.2.7: bounded times null -> exr-flimit-bounded-null. Exercise 4.2.8: limits that do not exist -> exr-flimit-divergence.
- Exercise 4.2.9: infinite limits -> exm-flimit-infinite.
- Exercise 4.3.1: continuity of the cube root -> exr-continuity-cube-root.
- Exercise 4.3.4: limits of compositions -> exm-flimit-composition-fails, exr-flimit-composition.
- Exercise 4.3.7: Dirichlet's function -> exm-continuity-dirichlet. Exercises 4.3.8 (b), 4.3.9 -> exr-continuity-rationals.
- Thms. 4.3.2, 4.4.2, 4.5.1 and Exercise 4.5.8 -> def-continuity (citation after the proof), exr-continuity-injective.
- Exercises 4.5.6 (a), 4.5.7: horizontal chord, fixed point -> exr-continuity-fixed-point.
- Thm. 5.2.6, Thms. 5.3.1-5.3.2, Cors. 5.3.3-5.3.4 -> thm-mean-value (citation). Exercise 5.2.4 (Caratheodory criterion), Exercise 5.2.12
  (inverse functions) -> def-derivative, proof of (3) and (4).
- Sec. 5.1 (x^2 sin(1/x)) -> exm-derivative-corner. Exercise 5.2.2 -> exr-derivative-impossible. Exercise 5.2.5 -> exr-derivative-power-zero.
  Exercise 5.2.6 (b) -> exr-derivative-symmetric. Exercise 5.2.10 -> exm-mvt-hypotheses.
- Exercise 5.3.3 -> exr-mvt-three-values. Thm. 5.3.5, Exercise 5.3.5 -> exr-mvt-cauchy. Exercise 5.3.8 -> exr-mvt-derivative-limit.
  Exercise 5.3.12 -> exr-taylor-second-difference.
- Sec. 5.4, Exercises 5.4.5-5.4.7: the sawtooth series, no derivative at 0 -> exm-derivative-nowhere, with the new figure fig-sawtooth-nowhere.
- Thm. 6.6.3 (Lagrange remainder) -> thm-taylor (citation). Exercise 6.6.4 -> exm-taylor-log2. Sec. 6.6 and Exercise 6.6.6 (e^{-1/x^2}) ->
  exm-taylor-non-analytic.
- Chs. 4-5, Sec. 6.6: added to the section's "For more" line.

### radozycki2020solving

Solving Problems in Mathematical Analysis, Part I (PDF = printed + 8 in these chapters). Pages read: PDF 152-156, 165-166, 173-176,
188-195, 207-208, 217-221, 239-240, 248-252, 259-260.

- Ch. 7 (Heine's and Cauchy's definitions) -> def-function-limit (citation).
- Sec. 7.1, Problem 1: sin x / x -> exm-flimit-sinx-x. Problem 2: cancelled rational limit 7/12 -> exm-flimit-polynomial. Problem 3:
  cos sqrt(x^2 + a^2) - cos x -> exm-flimit-conjugate.
- Sec. 7.3, Exercise 1 (a) 2: one-sided limits of 1/(1 + 2e^{-1/x}) -> exr-flimit-one-sided-cases. Exercises 2 and 3 (tan x/x,
  (e^{ax} - e^{bx}), 1/sin x - cot x, sin x/(x^2 - pi^2), cosh) -> exr-flimit-substitutions.
- Sec. 8.2, Problem 1: three-piece gluing -> exm-continuity-piecewise. Problem 2: (sin^2 x - 1)/(4x^2 - pi^2)^2 -> exr-continuity-parameters.
- Ch. 9 (rules) -> def-derivative (citation). Sec. 9.1, Problem 1: sqrt(1 + x^2) -> exm-derivative-power. Problem 2: a^x ->
  exm-derivative-inverse-functions.
- Sec. 9.5, Exercise 1 -> exr-derivative-definition. Exercise 2 (b) -> exr-derivative-gluing. Exercise 3 -> exr-derivative-inverse.
  Exercise 4 (a), (b) -> exr-derivative-log-composite.
- Sec. 10.1 (e^pi against pi^e) -> exr-mvt-e-pi. Sec. 10.2, Problem 1 -> exr-mvt-polynomial-roots. Problem 2 -> exm-mvt-log-bounds.
  Problem 3 -> exr-mvt-arctan-bounds.
- Sec. 10.5, Exercise 5 (d) 2 and Sec. 11.4, Exercise 3 -> exr-taylor-limits.
- Ch. 11 (Taylor's formula) -> thm-taylor (citation). Sec. 11.2, Problem 1 -> exm-taylor-exp-inequality. Problem 2 (fifth root of 1.04) ->
  exm-taylor-binomial. Problem 3 (log(1 + x), log 2) -> exm-taylor-log2.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 86-89, 168-173.

- Sec. 2.1, pp. 56-58: proof of the mean value theorem from Rolle's, Rolle on sin, cos and 2x^3 - 9x^2 - 24x + k, the midpoint for x^2,
  the cubic x^3 + 2x^2 + 4x - 6 on [1, 2], the log inequality -> thm-mean-value (citation), exm-mvt-quadratic-midpoint, exm-mvt-rolle-roots,
  exm-mvt-log-bounds.
- Sec. 4.6.1: Maclaurin series of sin x, cos x about pi/3 -> exm-taylor-sin, exr-taylor-cos-pi3. Sec. 4.6.2: cos 0.5 with two terms ->
  exm-taylor-cos. Eq. (4.18) -> thm-taylor (citation).
- Sec. 4.7: one-sided limits of tan x at pi/2, limits through logarithms -> exm-flimit-infinite, exr-flimit-reciprocal.

### riley2006solutions

Not used: the worked problems on differentiation and Taylor series use integrals or series manipulations that the section does not have.

### gasinski2014exercises

Not used: Ch. 1 treats continuity in metric spaces, which the chapter Sets, relations and topology already covers; the section cites it there.

### Standard material (no source)

The physics examples are standard: the Newtonian limit, the first relativistic correction and the inequality for the kinetic energy
(exm-flimit-relativistic-kinetic, exm-taylor-relativistic-energy, exm-mvt-relativistic-kinetic), Planck's occupation number and Wien's law
(exm-flimit-planck, exm-derivative-values-wien, exr-derivative-values-wien), the driven oscillator at resonance (exm-flimit-resonance), Kepler's
equation (exm-continuity-kepler, exr-continuity-kepler-bisection, exr-mvt-kepler-contraction), anharmonic turning points
(exm-continuity-turning-points), speed against energy (exm-continuity-relativistic-speed), the oscillator's velocity, energy and average velocity
(exm-derivative-oscillator, exm-mvt-oscillator), uniform motion on S^1 (exm-derivative-circle), the longitudinal mass
(exm-derivative-relativistic-momentum), the damped oscillator (exr-derivative-damped), the small-angle pendulum (exm-taylor-pendulum), the Morse
and Lennard-Jones potentials (exm-taylor-morse, exr-taylor-lennard-jones), the Maxwell speed (exm-derivative-values-maxwell,
exr-derivative-values-maxwell) and the hydrogen radial density (exm-derivative-values-hydrogen, exr-derivative-values-hydrogen-max).
The remaining items (x = cos x by contraction, odd-degree roots, Leibniz's rule, Newton's method, uniqueness of Taylor polynomials, the
proof of Taylor's theorem through Rolle's theorem) are classical.

### Fixes in sec-series made in this run

- prp-series-values: the Cauchy product of the two exponential series and the values E(q) = e^q at rationals are now proved inside the proof,
  instead of citing exr-power-series-exp-product.
- exm-series-basel and the caption of fig-series-partial-sums: the limit of sum 1/k^2 is called L, its value is left to prp-series-values.

## sec-riemann-integral (this run)

### abbott2015understanding

Understanding Analysis, 2nd ed. (PDF = printed + 9). Pages read: PDF 231-249 (Secs. 7.2-7.6).

- Lemma 7.2.6, Thms. 7.2.8-7.2.9, 7.3.2, 7.4.1-7.4.2, Exercises 7.2.3, 7.2.7, 7.4.1 -> def-riemann-integral (statement items (1)-(5) and
  proof; uniform continuity proved from Bolzano-Weierstrass instead of cited).
- Exercise 7.2.2 (1/x on [1, 4], P = {1, 3/2, 2, 4}) -> exm-integral-monotone. Example 7.3.1 -> exm-integral-jump. Example 7.3.3 (Dirichlet) ->
  exm-integral-dirichlet. Exercise 7.3.3 (indicator of 1/n) -> exm-integral-reciprocals.
- Exercise 7.3.1 -> exr-integral-step. Exercise 7.2.4 -> exr-integral-equal-sums. Exercises 7.4.3 (c), 7.4.4 -> exr-integral-positive.
  Exercise 7.4.6 -> exr-integral-product. Exercise 7.3.2 (Thomae) -> exr-integral-thomae.
- Thm. 7.5.1 and its proof through the mean value theorem, Exercises 7.5.6, 7.5.10 -> thm-fundamental-theorem (citation, proof of (2)).
  Exercises 7.5.1 (b), 7.5.11 -> exm-ftc-jump. Exercise 7.5.4 -> exr-ftc-zero-integral. Exercise 7.5.8 -> exr-ftc-log-properties.

### radozycki2020solvingII

Solving Problems in Mathematical Analysis, Part II (PDF = printed + 10). Pages read: PDF 12-13, 58-66, 69-83.

- Sec. 1.1, Problem 1 -> unit introduction and fig-riemann-sums. Sec. 1.7, Exercise 2 (a) -> exr-integral-cubic-sums; Exercise 2 (b) ->
  exm-integral-exponential-sums, exr-integral-log-geometric, exr-ftc-riemann-check.
- Ch. 2, eqs. (2.0.1)-(2.0.4) and the integral test (p. 54) -> def-improper-integral (1), (4). Sec. 2.1, Problem 1 -> def-improper-integral (3),
  exm-improper-p. Problem 2 -> exr-improper-log-power.
- Sec. 2.2, Problem 1 (limit comparison, tanh x/(x^a + x^b)) -> exr-improper-limit-comparison. Problems 3-4 (Fresnel, Dirichlet and Abel tests)
  -> exr-improper-fresnel, exm-improper-sinc.
- Sec. 2.3, Fig. 2.1 -> exm-improper-integral-test and fig-integral-test. Problem 2 -> exm-improper-log-series.
- Sec. 2.4, Exercise 1 (c) -> exr-improper-taylor. Exercise 2 (b) -> exr-improper-log-log.

### radozycki2020solving

Part I (PDF = printed + 8). Pages read: PDF 308-310, 321-323, 347.

- Sec. 14.1, eq. (14.1.2) -> def-antiderivative (citation). Problem 1 ((log x/x)^3) -> exr-antiderivative-check. Problem 2 (arctan) ->
  exm-antiderivative-parts.
- Sec. 14.2, eq. (14.2.2) -> exm-antiderivative-partial-fractions. Problem 1 (recursion for (x^2 + a^2)^(-n)) -> exr-antiderivative-rational-recursion.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 103-111.

- Sec. 2.2 -> def-antiderivative (citation), def-improper-integral (citation). Eq. (2.40) and the mean of x^2 on [2, 4] -> exr-ftc-average.
- Exercise 2.30 -> exr-antiderivative-riley. 2.31 (a) -> exr-antiderivative-table. 2.35 -> exr-antiderivative-sec. 2.38 -> exr-improper-riley,
  exm-improper-exponential. 2.41 -> exr-integral-values-half-integer. 2.42 -> exr-integral-values-sin-cos, prp-integral-values (citation).
  2.45 -> exr-integral-values-half-line-moments.

### riley2006solutions, gasinski2014exercises

Not used: the worked solutions add nothing to the exercises above, and Gasinski's Ch. 1 treats metric spaces, not the integral.

### Standard material (no source)

The one-variable proof of the Gaussian integral (Stieltjes, Poisson) in prp-integral-values; the uniform continuity argument; the physics
items: spring work, inverse square law and hydrogen, the oscillator average, free fall, potentials, rapidity, terminal velocity, work-energy,
proper time, escape and ionisation, the oscillator period, equipartition, Maxwell's law, oscillator eigenstates, the RMS value, mean life.

## sec-calculus (this run)

Section restructured: def-partial-derivative, def-jacobian (differentiability, C^1 criterion, sum and product rules), def-smooth-map (C^k,
Hessian, Schwarz), thm-chain-rule (now proved), new thm-second-derivative-test, def-diffeomorphism (no inverse function theorem),
prp-polar-jacobian, prp-partial-x. Proofs of the statements are standard (Lee App. C style); the polar-map material stays here.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 181-184, 188-197, 209-214 (Secs. 5.1-5.8, Exercises 5.1-5.32).

- Sec. 5.1, eqs. (5.1)-(5.2) and the subscript notation -> def-partial-derivative (citation), exm-partial-ideal-gas, exm-partial-x-held-fixed. Worked example
  2x^3y^2 + y^3 -> exm-partial-polynomial, exm-smooth-hessian-polynomial, exr-partial-x-riley.
- Sec. 5.2, eq. (5.6) -> def-jacobian (citation); worked example y exp(x + y) -> exr-jacobian-total-differential.
- Sec. 5.3 and Exercise 5.2 (a), (c) -> exr-smooth-exact. Sec. 5.5, eqs. (5.14)-(5.17) -> thm-chain-rule (citation); worked example f = x e^{-y} ->
  exm-chain-parametric. Sec. 5.6 (polar Laplacian) -> exr-chain-polar-laplacian.
- Sec. 5.7, eqs. (5.18)-(5.20) -> thm-second-derivative-test (citation); worked example y exp(xy) at (2, 3) -> exr-smooth-hessian-exp.
- Sec. 5.8, eqs. (5.22)-(5.26) -> thm-second-derivative-test (citation), exr-hessian-two-by-two; worked example x^3 exp(-x^2 - y^2) ->
  exm-hessian-riley-cubic-gaussian; x^4 + y^4 and x^4 + y^3 (p. 164) -> exm-hessian-degenerate-quartics.
- Exercises: 5.1 (a), (c) -> exr-partial-riley-list, exm-partial-radius, exr-smooth-arctan; 5.7 -> exr-chain-stationary; 5.8 -> exr-chain-wave-equation;
  5.9 -> exr-chain-hyperbolas; 5.10 -> exr-chain-exp-polar; 5.12 -> exr-hessian-parameter-count; 5.14 -> exr-hessian-four-points; 5.25 ->
  exm-smooth-maxwell; 5.27 -> exr-partial-van-der-waals, exr-smooth-van-der-waals.

### radozycki2020solvingII

Solving Problems in Mathematical Analysis, Part II (PDF = printed + 10). Pages read: PDF 7-10, 135-156, 173-176, 183-187, 194-196 (Chs. 5-7, start of Ch. 8).

- Sec. 5.1, Problem 1 -> exm-partial-three-variables; Problem 2 -> exm-partial-directional-polynomial; Problem 3 -> exm-jacobian-product-map;
  eq. (5.1.8) -> def-partial-derivative (citation).
- Sec. 5.2, eqs. (5.2.2)-(5.2.4) -> def-jacobian (citation); Problem 1 -> exm-partial-directional-nonlinear, exm-jacobian-partials-not-enough;
  Problem 3 -> exr-partial-parabola-linear; Problem 4 -> exr-jacobian-continuous-partials. Sec. 5.3, Exercise 1 (a) -> exr-partial-directional-power
  (read as sin(x^y + x), which matches the printed answers); Exercise 2 -> exr-jacobian-differentiable-or-not.
- Ch. 6, eq. (6.0.1) -> def-smooth-map (citation); eq. (6.0.3) -> thm-chain-rule (citation). Sec. 6.1, Problem 1 -> exm-smooth-schwarz-fails;
  Problem 2 -> exr-smooth-mixed-point. Sec. 6.2, Problem 1 -> exm-chain-polar-operator. Sec. 6.4, Exercise 1 (b) -> exr-smooth-not-c1; Exercise 3 (a) ->
  exr-hessian-taylor-exp-sin.
- Ch. 7, eq. (7.0.2) -> thm-second-derivative-test (citation). Sec. 7.2, Problem 1 -> exr-hessian-cubic-two-saddles. Sec. 7.3, Exercise 1 (a) ->
  exr-hessian-square-extrema. Sec. 7.1 (global extrema on compact sets) -> method of exm-hessian-disc-extrema (no citation).
- Ch. 8, p. 188 (C^1 diffeomorphism) -> def-diffeomorphism (citation). The implicit and inverse function theorems of Ch. 8 were not used (later section).

### lee2013introduction

App. C, pp. 642-648: Prop. C.3 and Cor. C.11 -> thm-chain-rule (citation); Prop. C.6 -> def-smooth-map (citation); the derivative -> def-jacobian (citation).
Not re-read in this run; page numbers from the existing Zotero note.

### riley2006solutions, abbott2015understanding, gasinski2014exercises

Not used: the solutions manual adds nothing to the exercises above, Abbott is one-variable, and Gasinski's Ch. 1 treats metric spaces.

### Standard material (no source)

All other blocks: the polar, spherical, cylindrical, elliptic, parabolic and Rindler coordinates; Coulomb, Yukawa, oscillator, tidal and two-centre
potentials; the Mexican hat; coupled oscillators; Kelvin inversion; Peano's example; Earnshaw; least squares; bump functions; Euler's homogeneous
functions; boosts; the heat kernel; pendulum error propagation; the distance function (exm-hessian-taylor-distance); the Hénon map
(exr-diffeo-henon); polar coordinates in degrees (exr-polar-jacobian-degrees); recovering a function from its gradient (exr-partial-x-recover).

## Section "Inverse and implicit functions" (sec-inverse-implicit)

### lee2013introduction

Introduction to Smooth Manifolds, 2nd ed., App. C (PDF = printed + 15). Pages read: PDF 670-677 (pp. 655-662).

- Thm. C.34, Lemma C.35, proof of the inverse function theorem (reduction to J = I, H = x - F, the contraction G(x) = y + x - F(x)
  on a closed ball, estimate |x' - x| <= 2|F(x') - F(x)|, differentiability and smoothness of the inverse via Cramer's rule)
  -> thm-inverse-function (proof; the mean value inequality is proved with the mean value theorem on one component
  instead of Lee's Prop. C.29 with vector-valued integrals).
- Cor. C.36: open map, injective local diffeomorphism is a diffeomorphism -> thm-inverse-function (3).
- Example C.37 (polar coordinates) -> exm-ift-polar. Example C.38 (spherical coordinates) -> exm-ift-spherical.
- Thm. C.40, proof of the implicit function theorem via Psi(x, y) = (x, Phi(x, y)) -> thm-implicit-function (proof);
  def-regular-value (citation line).

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed., Ch. 5 (PDF = printed + 30). Pages read: PDF 197-203, 206-214.

- Sec. 5.4 (implicit differentiation, cyclic relation) -> thm-implicit-function (citation line), exm-impl-thermo-cyclic.
- Sec. 5.9, eqs. (5.27)-(5.31): undetermined multipliers -> thm-lagrange-multipliers (citation line).
- Sec. 5.9, worked example p. 169 (T = 1 + xy on the unit circle) -> exm-lagr-temperature, fig-lagr-tangency.
- Sec. 5.9, worked example p. 170 case (ii) (x^3 + y^3 + z^3 on sphere and plane) -> exm-lagr-two-constraints.
- Sec. 5.9, worked example pp. 172-173 (Boltzmann distribution, there via Stirling) -> exm-lagr-boltzmann (here via the
  entropy on finitely many states), exr-lagr-three-levels, exr-lagr-sensitivity.
- Sec. 8.17.1 (stationary properties of eigenvectors) -> exm-lagr-rayleigh (citation only).
- Sec. 22.5.1 (Fermat's principle) -> exm-lagr-snell (citation only; the problem is treated with one multiplier).
- Exercise 5.5 -> exr-impl-riley-cubic. Exercise 5.6 -> exr-impl-riley-gas. Exercise 5.16 -> exr-lagr-riley-sphere.
  Exercise 5.17 -> exr-lagr-riley-box. Exercise 5.18 -> exr-lagr-ladder.

### radozycki2020solvingII

Solving Problems in Mathematical Analysis, Part II, Ch. 8 (PDF = printed + 8). Pages read: PDF 195-213 (pp. 187-205).

- Ch. 8 introduction, eqs. (8.0.1)-(8.0.5) -> thm-inverse-function and thm-implicit-function (citation lines).
- Sec. 8.1, Problem 2 (x^2 - xy^2 + 2y = 0) -> exm-impl-curve-extrema.
- Sec. 8.1, Problem 3 (quadric z(x, y), extrema) -> exm-impl-surface-extrema.
- Sec. 8.1, Problem 5 (two equations in R^4) -> exm-impl-two-equations.
- Sec. 8.2, Problem 1 ((u cosh v, u sinh v)) -> exm-ift-hyperbolic.
- Sec. 8.3, Exercise 1 (b) -> exr-impl-radozycki-curve.

### riley2006solutions, abbott2015understanding

Not used for this section: the Riley problems above were solved directly, and Abbott has no several-variable material.
The chapter's own exm-mvt-hypotheses (from Abbott, Exercise 5.2.10) is reused in exm-ift-not-c1.

### Standard material without a library source

exm-ift-quadratic-perturbation, exm-ift-kepler, exr-ift-kepler-steps, exm-ift-legendre, exm-ift-relativistic-momentum,
exm-ift-not-c1, exm-ift-fold, exr-ift-* except as listed, exm-impl-van-der-waals, exm-impl-square-well, exm-impl-degenerate,
the exm-regval-* and exr-regval-* blocks, exm-lagr-am-gm, exm-lagr-cusp, exm-lagr-not-extremum, exr-lagr-slab,
exr-lagr-second-order, exr-lagr-second-eigenvector, exr-impl-hellmann-feynman, exr-impl-equilibrium-shift.

## Section "Multiple integrals and convergence of functions" (sec-multiple-integrals)

### radozycki2020solvingII

Solving Problems in Mathematical Analysis, Part II, Chs. 12-13 (PDF = printed + 7). Pages read: PDF 321-344, 368-374
(pp. 314-337, 361-368).

- Ch. 12 introduction, eqs. (12.0.3)-(12.0.6) (extension by zero to a cuboid, sets regular to an axis) -> def-multiple-integral
  (construction and (5); citation line).
- Sec. 12.1, Problems 1 and 2 ((x - y)/(x + y)^3 and (x - y)/(x + y + 1)^3 on [0, 2] x [0, 1]) -> exr-multiple-radozycki-pair.
- Sec. 12.2, Problem 1 (Gaussian over the upper half-disc) -> exr-change-radozycki-half-disc.
- Sec. 12.3, Problem 1 (reversing the order under y = sin x) -> exr-multiple-radozycki-order.
- Sec. 12.4, Exercise 2 (b) (xy sin(x^2 + y^2) over a quarter-disc) -> exr-change-quarter-disc.
- Ch. 13 introduction, eq. (13.0.1) (change of variables stated without proof) -> thm-change-of-variables (citation line).
- Sec. 13.4, Problem 3 (torus, Jacobian rho (R + rho cos theta), I = M(R^2 + 3r^2/4)) -> exr-change-torus.
- Sec. 13.5, Problem 1 (potential of a homogeneous ball outside it) -> exr-multiple-values-potential.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed., Ch. 6 (PDF = printed + 30). Pages read: PDF 235-241 (pp. 205-211).

- Sec. 6.4.3, worked example (spherical volume element, moment of inertia 2Ma^2/5 of a ball) -> exm-change-ball-inertia.
- Secs. 6.4.1-6.4.4 (Jacobians, stated without proof) -> thm-change-of-variables (citation line).
- Exercise 6.2 -> exr-multiple-box-inertia. Exercise 6.3 -> exr-multiple-riley-tetrahedron. Exercises 6.5 and 6.17 ->
  exr-multiple-values-ellipsoid. Exercise 6.7 (a) -> exr-multiple-values-hydrogen-norm. Exercise 6.9 -> exr-change-torus
  (citation). Exercise 6.10 -> exr-multiple-values-disc-inertia. Exercise 6.11 -> exr-change-riley-cylinder. Exercise 6.12
  -> exr-change-riley-egg. Exercise 6.20 -> exr-change-riley-angle. Exercise 6.23 -> exr-multiple-ball-volumes.

### abbott2015understanding

Understanding Analysis, 2nd ed., Ch. 6 (PDF = printed + 10). Pages read: PDF 190-201 (pp. 180-191).

- Thms. 6.3.1-6.3.3 (differentiable limit theorem), Thm. 6.4.3, Cor. 6.4.5 (M-test), Thms. 6.5.6-6.5.7 -> def-uniform-convergence
  (4), (5) and the citation lines.
- Exercise 6.2.1 -> exr-uniform-abbott-nx. Exercise 6.3.1 -> exm-uniform-derivative-fails. Exercise 6.3.2 ->
  exr-uniform-abbott-sqrt. Exercise 6.3.3 -> exr-uniform-convergence-sage (h_n). Exercise 6.3.4 -> exr-uniform-abbott-sin-sqrt.
  Exercise 6.4.7 -> exr-uniform-abbott-sin-cube. Exercise 6.4.9 -> exr-uniform-abbott-h.
- Thms. 8.4.6 and 8.4.9 (cited as before) -> thm-differentiation-under-integral.

### riley2006solutions, gasinski2014exercises, lee2013introduction

Not opened for new material in this run: the Riley problems above were solved directly; Gasinski and Lee keep their existing
citation lines (Lee App. C, Thm. C.26 is named for the partition-of-unity proof of the change of variables).

### Standard material (no source)

The proofs of def-multiple-integral (content zero, Fubini by lower and upper slice integrals, regions between graphs), of
thm-change-of-variables (linear case by elementary matrices; general case by the one-sided estimate on small cubes and the
inverse map), of def-uniform-convergence and of thm-differentiation-under-integral (domination, variable limits). Examples and
exercises: exm-multiple-grid-sums, exm-multiple-content-zero, exm-multiple-disc-area, exm-multiple-ball-volume,
exm-multiple-half-disc-centre, exm-multiple-plate-inertia, exm-multiple-box-probability, exr-multiple-content-zero,
exr-multiple-dirichlet; exm-change-parallelogram, exm-change-volume-elements, exm-change-shell, exm-change-hydrogen,
exm-change-rindler, exm-change-not-injective, exr-change-parallelogram; exm-uniform-geometric, exm-uniform-bump-integral,
exm-uniform-log-series, exm-uniform-exp-series, exm-uniform-oscillator-partition, exm-uniform-pendulum-taylor,
exr-uniform-arctan-pi, exr-uniform-occupation, exr-uniform-stefan-boltzmann; exm-leibniz-polynomial,
exm-leibniz-variable-limits, exm-leibniz-oscillator-width, exm-leibniz-equipartition, exm-leibniz-damped,
exm-leibniz-continuity-needed, exm-leibniz-domination-fails, exr-leibniz-exp, exr-leibniz-variable-limit, exr-leibniz-arctan,
exr-leibniz-hydrogen-moments, exr-leibniz-gaussian-cos, exr-leibniz-fubini, exr-leibniz-gaussian-third; the exm-multiple-values-*
blocks other than the kept ones, exr-multiple-values-earth, exr-multiple-values-basel, exr-multiple-values-radial.

## Run: sec-vector-calculus (new section)

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed. (PDF = printed + 30). Pages read: PDF 264-267 (Ch. 7 exercises),
399-404 (Sec. 10.10 table, Ch. 10 exercises), 439-444 (Ch. 11 exercises and answers).

- Secs. 7.6.2-7.6.4 -> def-cross-product; Exercise 7.7 -> exr-cross-riley-tetrahedron; Exercise 7.8 -> exr-cross-riley-bracket;
  Exercise 7.10 -> the last identity of def-cross-product (3); Sec. 7.9 and Exercise 7.19 -> exr-cross-reciprocal-basis;
  Sec. 7.6.2 -> exr-cross-solve.
- Secs. 10.7-10.8 -> def-grad-div-curl; Exercise 10.16 -> exr-gdc-riley-curlcurl; Exercise 10.14(b) -> exr-gdc-riley-directional;
  Exercise 10.14(c) -> exr-gdc-convective; Exercise 10.19(a) -> exr-gdc-maxwell-potentials; Exercise 11.18 -> exr-gdc-central-fields.
- Secs. 10.9-10.10, Tables 10.2-10.4 -> prp-curvilinear-operators; Exercise 10.15 -> exr-curvi-riley-laplacian; Exercise 10.17(a)-(b) ->
  exr-curvi-riley-plasma; Exercise 10.18 -> exr-curvi-riley-unit-field; Exercise 10.21 -> exm-curvi-paraboloidal (scale factors);
  Exercise 10.23 (method only) -> exr-curvi-paraboloidal-harmonic.
- Secs. 11.1, 11.4 -> def-line-integral; Exercise 11.3(c) -> exr-line-riley-hyperbola; Exercise 10.3 (the cycloid) -> exr-line-cycloid;
  Exercise 11.1 -> exr-line-riley-potential; Exercise 11.2 -> exr-line-riley-cubic; Exercise 11.14 -> exr-line-riley-quadratic;
  Exercise 11.13 -> exr-line-riley-dipole; Exercise 11.17 -> exr-line-riley-spiral.
- Secs. 10.5, 11.5 -> def-surface-integral; Exercise 10.10(a) -> exm-surf-cone; Exercise 10.10(b) -> exm-surf-paraboloid;
  Exercise 10.11 -> exr-surf-riley-hyperboloid; Exercise 11.12 -> exr-surf-riley-solid-angle; Exercise 11.19(a) -> exr-surf-riley-cap;
  Exercise 11.26(a) -> exr-surf-riley-hollow-cylinder.
- Sec. 11.3 -> thm-green; Exercise 11.4 -> exr-green-riley-half-disc; Exercise 11.6 -> exr-green-astroid; Exercise 11.7 ->
  exr-green-riley-ellipse; Exercise 11.8 -> exr-green-riley-fallacy.
- Secs. 11.7-11.8 -> thm-divergence, exm-div-flux-density; Exercise 11.11 -> exm-div-archimedes; Exercise 11.19(b) ->
  exr-div-riley-cap; Exercise 11.21 -> exr-div-gradient-form; Exercise 11.23 -> exr-div-riley-smooth-core; Exercise 11.25 ->
  exr-div-poynting; Exercise 11.26(b) -> exr-div-riley-hollow-cylinder; Sec. 11.8.1 -> exr-div-green-identities.
- Sec. 11.9 -> thm-stokes-surface; Sec. 11.7 -> exm-stokes-circulation-density; Sec. 11.5.2 -> exr-stokes-vector-area;
  Exercise 11.27 -> exr-stokes-riley-polygon.

### lee2013introduction

Introduction to Smooth Manifolds, 2nd ed. (PDF = printed + 15). Pages read: PDF 307-312 (pp. 292-297), 438-442 (pp. 423-427).

- Prop. 11.40, Thm. 11.42 -> def-line-integral (3); Thm. 11.49 (the ray formula of its proof) -> def-line-integral (4);
  Example 11.47 -> exm-line-closed-test; Examples 11.43, 11.48 -> exm-line-vortex. Restated for vector fields; no forms.
- Thm. 16.32 -> citation line of thm-divergence; Thm. 16.34 and the surface integral of p. 426 -> citation lines of
  thm-stokes-surface and def-surface-integral.

### Standard material (no source)

The proofs of thm-green (with the explicit boundary curve for both descriptions), thm-divergence (box case by Fubini, pulled
back by the identity sum_i d_i(Psi_{i+1} x Psi_{i+2}) = 0) and thm-stokes-surface (pull-back to Green's theorem), and of
prp-curvilinear-operators through grad u_i = e_i/h_i (Riley's method). Physics examples (angular momentum, Lorentz force,
centrifugal force, hydrogen 1s and 2p, oscillator, Coulomb and wire fields, Ampère, Faraday, Kepler, heat engine, Archimedes) and
the remaining items are standard.
