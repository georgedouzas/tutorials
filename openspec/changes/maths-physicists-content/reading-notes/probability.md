# Reading notes: probability

Additions for the Zotero reading notes of `fundamentals-of-mathematics-for-physicists/probability`, for the owner's
review. Each line names the source location and the blocks it became.

## Section "Probability spaces" (sec-probability-spaces)

### capinski2001probability

Probability Through Problems (Capiński, Zastawniak). Read: Ch. 3 (fields), 4 (finitely additive probability), 5 (sigma
fields), 6 (countably additive probability), 7 (conditional probability and independence), theory and problems (PDF
pp. 36-125, via pdftotext).

- Problems 3.1-3.3 (trivial and four-element fields) -> exm-prob-small-sigma-algebras.
- Problem 3.4 (families on {1,2,3,4} that are or are not fields) -> exm-prob-not-sigma-algebra.
- Problem 3.7 (complete {{2},{3}} to a field) -> exr-prob-complete-family.
- Problems 3.19, 5.4 (finite/cofinite family is a field, not a sigma-field) -> exm-prob-cofinite.
- Problems 3.23-3.26 (atoms, a finite field has 2^n elements) -> exr-prob-finite-sigma-count; def-sample-space (4).
- Problem 4.21 (bounds on P(A n B) from P(A), P(B), attained) -> exm-prob-intersection-bounds.
- Problems 4.9-4.20 (complement, monotonicity, subadditivity, inclusion-exclusion) -> prp-probability-rules (1)-(3).
- Problems 4.23-4.25 (symmetric difference) -> exr-prob-symmetric-difference.
- Problems 4.26-4.27, 6.11-6.12 (null and almost sure events) -> exr-prob-null-sets.
- Problem 4.28 (finitely additive 0/1 measure on finite/cofinite sets) -> exr-prob-finitely-not-countably.
- Problem 5.5 (countable/co-countable sigma-field) -> exm-prob-countable-cocountable.
- Problem 5.6 (sigma-field containing [1/(n+1), 1/n]) -> exr-prob-sigma-intervals.
- Problem 5.8 (preimage sigma-field) -> exr-prob-preimage-sigma.
- Problem 5.9 (trace sigma-field) -> exr-prob-trace-sigma; used in exr-prob-conditional-measure.
- Problem 5.13 (union of two sigma-fields) -> exm-prob-union-not-sigma.
- Problems 5.15-5.18, Defs. 5.2-5.4 (generated sigma-field, Borel sets, lim sup / lim inf) -> def-sample-space (2), (3), (5).
- Problems 5.21, 5.23 (Borel examples, Cantor set) -> exr-prob-borel-examples.
- Problem 5.29 (lim sup / lim inf of alternating intervals; my own intervals) -> exr-prob-limsup-intervals.
- Example 6.1 (tails before the first head, P(even) = 2/3) -> exm-prob-geometric-measure.
- Problems 6.3-6.6 (weights 1/i, 2^-i, c/i^2 on N) -> exr-prob-weights-on-n.
- Problem 6.7 (lim inf density is not a probability measure) -> exr-prob-natural-density.
- Problems 6.8-6.10, 6.14, Thm. 6.1 (continuity, subadditivity, first Borel-Cantelli) -> prp-probability-rules (3)-(5).
- Problem 6.15 (P(lim inf) <= lim inf P <= lim sup P <= P(lim sup)) -> exr-prob-limsup-inequality.
- Problems 6.21-6.25, 6.29-6.33 (normalising densities) -> exr-prob-density-normalise.
- Problems 6.34-6.38 (Dirac measures, mixtures) -> exm-prob-dirac-mixture, exr-prob-mixture-measure.
- Def. 6.2 remark (Lebesgue measure assumed, not constructed) -> the paragraph "Densities, and what is not proved here"
  after def-probability-measure (here the existence is stated as not proved, with Kallenberg Thms. 2.2, 2.5).
- Problems 7.1-7.2 (coloured die, fair and biased) -> exm-prob-die-colours.
- Problem 7.3 (two dice, at least one 1) -> exr-prob-dice-at-least-one.
- Problem 7.4 (two children) -> exm-prob-two-children.
- Problems 7.10, 7.13 (conditional probability space, P(A|BC)P(B|C) = P(AB|C)) -> exr-prob-conditional-measure.
- Problem 7.12 (chain rule for n events) -> def-conditional-probability (2).
- Problems 7.14-7.15 (positive association) -> exr-prob-positive-association.
- Problem 7.16 (oral examination, 90 of 100 questions) -> exr-prob-exam-questions.
- Problems 7.20-7.21, Thm. 7.1 (total probability, countable partitions) -> def-conditional-probability (3).
- Problem 7.22 (randomised response) -> exr-prob-randomized-response; Problem 7.30 -> exr-prob-randomized-response-posterior.
- Problem 7.24 (drawers in the dark) -> exm-prob-bayes-drawers.
- Problems 7.27, Thm. 7.2 (Bayes for countable partitions) -> thm-bayes-rule.
- Problem 7.29 (two fair coins and one biased) -> exr-prob-bayes-biased-coin-p.
- Problem 7.31 (ace and spade) -> exm-prob-ace-spade.
- Problems 7.32-7.34, 7.38-7.39 (equivalent forms, complements, self-independence) -> def-independence (1)-(3).
- Problem 7.35 (events independent of {1,2}) -> exr-prob-list-independent.
- Problems 7.36-7.37 (sizes of independent events) -> exr-prob-independent-sizes.
- Problem 7.43 (A independent of B n C, B u C, B - C) -> exr-prob-independent-combinations.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, 3rd ed., Ch. 30. Read: Secs. 30.1-30.2 (Venn diagrams, axioms, conditional
probability, Bayes), Sec. 30.11 (Buffon's needle example), Exercises 30.1-30.17.

- Sec. 30.2.1 worked examples (biased die p/2, p, ..., 2p) -> exm-prob-biased-die.
- Sec. 30.2.1 worked examples (ace or spade; ace, spade or even) -> exm-prob-cards-inclusion-exclusion, fig-inclusion-exclusion,
  exm-prob-sage-cards-union, prp-probability-space-values (2).
- Sec. 30.2.1 worked example (four events A, B, C, D on a deck, 20/52) -> exr-prob-riley-four-events.
- Sec. 30.2.2 (two aces with and without replacement) -> exm-prob-replacement.
- Sec. 30.2.2 worked example (traffic islands, 7/24) -> exm-prob-traffic-islands.
- Sec. 30.11 worked example (Buffon's needle) -> prp-probability-space-values (6), exm-prob-buffon, fig-buffon-needle;
  extended to the long needle in exr-prob-buffon-long.
- Exercise 30.5 (alternating duel) -> exr-prob-duel.
- Exercise 30.8 (a) (higher die wins, odds 7:5) -> exr-prob-dice-duel; (b) (two-roll totals) -> exr-prob-dice-totals-duel
  (probabilities only; the stake question needs expectation, which comes later).
- Exercise 30.9 (microchip suppliers) -> exr-prob-bayes-chips.
- Exercise 30.10 (Bayesylvania) -> exr-prob-bayesylvania.
- Exercise 30.12 (a) (telephone network reliability) -> exr-prob-network-reliability.

### kallenberg2021foundations

Foundations of Modern Probability, 3rd ed. Read: Ch. 1 pp. 10-19 (sigma-fields, measures, Lemma 1.15), Ch. 2 pp. 33-40
(Thm. 2.1 Carathéodory restriction, Thm. 2.2 Lebesgue measure, Thm. 2.5 extension), Ch. 4 pp. 81-83 and Thm. 4.18
(Borel-Cantelli).

- Ch. 1, p. 10 -> def-sample-space (citation line).
- Lemma 1.15 (continuity) and Thm. 4.18 (Borel-Cantelli) -> prp-probability-rules (citation line, proofs written out).
- Thms. 2.2, 2.5 -> cited as the existence theorem NOT proved in the tutorial, in the paragraph after def-probability-measure.
- Ch. 4 (product measures and independence) -> def-independence (citation line).

### bricmont2022statistical

Already cited in the old section; kept: Sec. 2.2.5 (Bertrand) -> exm-pbr-bertrand, exr-prob-bertrand-sage; Exercise 2.2 ->
exr-prob-birthday; Exercises 2.14, 2.15 -> exr-pbr-bertrand-box, exr-pbr-three-coins; Sec. 2.2.3 -> thm-bayes-rule (citation).

### Standard material (no library source located)

- Vitali's construction (no rotation-invariant probability on all subsets of S^1) -> exm-prob-vitali.
- Derangements / matching problem -> exm-prob-derangements, exr-prob-matching-k-fixed, exr-prob-derangements-sage.
- De Méré's problem -> exr-prob-de-mere.
- Borel-Kolmogorov paradox -> exm-prob-borel-kolmogorov. Simpson's paradox (kidney-stone numbers) -> exm-prob-simpson.
- Tuesday-boy problem -> exr-prob-tuesday-boy. Prosecutor's fallacy -> exm-prob-prosecutor. Dice problem -> exm-prob-bayes-dice-problem.
- Physics examples (thermal oscillator, rigid rotor, hydrogen 1s radial density, paramagnet, Ising pair, Stern-Gerlach chains,
  decays, particle identification, two-level thermometer) written from standard statistical and quantum mechanics.

## Section "Random variables and distributions" (sec-random-variables)

### capinski2001probability

Probability Through Problems, Ch. 8 (random variables and their distributions), Ch. 9 (expectation and variance), Ch. 11
(characteristic functions), theory and problems, read from the PDF with pdftotext.

- Def. 8.1, Problems 8.1, 8.14, 8.26-8.32, Defs. 8.2-8.5, Problems 8.48-8.52 -> def-random-variable (1)-(4).
- Problem 8.3 -> exr-rv-max-two-dice. Problems 8.5, 8.19, 8.25 -> exm-rv-geometric-tosses. Problem 8.7 -> exm-rv-not-random-variable.
- Problem 8.8 -> exr-rv-smallest-sigma. Problem 8.32 -> exr-rv-interval-probabilities. Problem 8.34 -> exm-rv-mixed.
- Problem 8.4 -> exr-rv-density-transform. Problem 8.52 -> exr-rv-cdf-to-density. Problem 8.56 -> exr-rv-probability-integral-transform.
- Problems 8.57-8.74, Defs. 8.6-8.9 (joint distributions, marginals, independence via {X <= a}, convolution) -> def-random-vector
  (independence defined on intervals, as Def. 8.9; the extension to Borel sets, Problem 8.68, is not used).
- Problem 8.59 -> exm-rv-two-coins-joint. Problem 8.60 -> exr-rv-joint-max-min. Problem 8.61 -> exr-rv-urn-joint.
- Problem 8.66 -> exm-rv-no-joint-density. Problem 8.67 -> exr-rv-linear-map-density. Problem 8.71 -> exr-rv-joint-density-constant.
- Problems 8.38-8.47 -> def-binomial-distribution (1)-(4); 8.40-8.41 -> exr-rv-binomial-recursion; 8.43 -> exr-rv-negative-binomial;
  8.44 -> def-binomial-distribution (4); 8.46 -> exr-rv-poisson-alarm. Problems 8.53-8.55 -> def-gaussian-distribution,
  exr-rv-gaussian-standardise, exr-rv-lognormal.
- Ch. 9: Defs. 9.1-9.6 and Thm. 9.1 (law of the unconscious statistician, stated there without proof) -> def-expectation, whose
  property (1) proves the cases used here; Def. 9.7 (general expectation) is cited as not developed. Problem 9.3 -> exr-rv-password;
  9.10 -> exr-rv-expectation-zero; 9.28 -> exr-rv-st-petersburg (citation); 9.33 -> exm-rv-infinite-variance; 9.36, 9.39 ->
  exr-rv-cauchy-no-mean; 9.38 -> exr-rv-exponential-memoryless; 9.41 -> exr-rv-lognormal; 9.20, 9.25 -> exr-rv-binomial-variance;
  9.27-9.35 -> def-binomial-distribution (6); game of Ch. 8, p. 117 -> exm-rv-indicator-expectation.
- Ch. 11: Def. 11.1, Problems 11.10-11.11, Thms. 11.1-11.2 -> def-characteristic-function (1), (2), (5); Thm. 11.3 cited as not
  proved in general. Problems 11.1-11.2 -> exm-rv-cf-bernoulli; 11.3 -> exm-rv-cf-geometric; 11.6 -> exr-rv-cf-triangle;
  11.13, 11.16 -> exm-rv-cf-decay-periodic; 11.13-11.15 -> exr-rv-cf-integer-period; 11.18 -> exr-rv-cf-variance-formula;
  11.21 -> def-characteristic-function (4); 11.22, 11.24 -> exr-rv-cf-identify; 11.27 -> exr-rv-cf-laplace.

### kallenberg2021foundations

Foundations of Modern Probability, Ch. 4 pp. 84-89 (Lemma 4.3 distribution functions, expectation (4)-(5) p. 85, Lemma 4.4 moments
and tails, Lemma 4.10 product measures and independence, Lemma 4.11 iterated expectation, Corollary 4.12 convolution), Ch. 6 p. 126
(characteristic functions).

- Lemma 4.3 -> def-random-variable (citation). Lemmas 4.10-4.12 -> def-random-vector (3), (4) (citation; proofs written with
  Riemann integrals). Ch. 4 p. 85 -> def-expectation ("What is not covered", the Lebesgue integral as the general definition).
- Lemma 4.4 -> exr-rv-tail-sum, exr-rv-tail-integral. Lemma 4.11 -> def-expectation (3), def-variance (3) (citation).
- Ch. 6 p. 126 -> def-characteristic-function (citation, general uniqueness not proved here), def-gaussian-distribution (citation).

### riley2006mathematical

Mathematical Methods for Physics and Engineering, Secs. 30.4-30.9, 30.11-30.15, Exercises 30.14-30.40 with the hints.

- Secs. 30.4, 30.6 -> def-random-variable (citation); 30.5, 30.6.4 -> def-expectation, def-variance; 30.7 -> def-characteristic-function;
  30.8 -> def-binomial-distribution; 30.9.1, 30.15.2 -> def-gaussian-distribution; 30.11, 30.14 -> def-random-vector.
- Exercise 30.14 -> exr-rv-marksman-max, exr-rv-marksman-area. Exercise 30.15 -> exr-rv-call-box-density, exr-rv-call-box-cost.
- Exercise 30.18 -> exm-rv-particle-box, exm-rv-position-uncertainty. Exercise 30.19 -> exr-rv-probability-integral-transform.
- Exercise 30.20 -> exr-rv-tail-sum. Exercise 30.23 -> exr-rv-point-on-circle. Exercise 30.24 -> exr-rv-riley-lottery.
- Exercise 30.25 -> exr-rv-poisson-errors-cost. Exercise 30.35 -> exr-rv-riley-joint-polynomial, exr-rv-correlation-riley.
- Exercise 30.36 -> exm-rv-uncorrelated-dependent. Exercise 30.37 -> exr-rv-correlation-riley-square. Exercise 30.38 -> exr-rv-riley-median.

### bricmont2022statistical

Kept from the old section: Exercise 2.1 -> exm-pbr-four-heads; 2.3 -> exr-rv-gaussian-cf; 2.5 -> exr-rv-poisson-moments;
2.8 -> exr-pbr-unlucky; 2.9 -> exr-rv-st-petersburg; 2.12 -> exr-pbr-multinomial.

### Standard material (no library source located)

- Arcsine law of the oscillator (exm-rv-oscillator-arcsine), Planck mean energy and its fluctuations (exm-rv-thermal-energy,
  exm-rv-energy-fluctuations, exm-rv-cf-partition-function, exm-rv-sage-planck), hydrogen 1s radius (exm-rv-hydrogen-radius),
  Maxwell distribution (exm-rv-maxwell-velocities), oscillator ground state (exm-rv-oscillator-ground-state), paramagnet
  (exm-rv-binomial-spins), photon statistics and Fano factors (exm-rv-photon-counts, exm-rv-sage-fano), ideal gas fluctuation
  (exm-rv-ideal-gas-positions), competing decays (exr-rv-min-exponentials), detector thinning (exr-rv-poisson-thinning).
- Chernoff bound (exr-rv-mgf-chernoff), Mills ratio bounds (exr-rv-gaussian-mills), Box-Muller (exr-rv-box-muller), hypergeometric
  variance (exr-rv-hypergeometric-variance), least-squares predictor (exr-rv-optimal-predictor), pairwise but not mutual independence
  (exm-rv-pairwise-not-mutual), Lorentzian characteristic function via Fourier inversion (exm-rv-cf-lorentzian).

## Section "Limit theorems" (sec-limit-theorems)

### capinski2001probability

Probability Through Problems, Ch. 12 (pp. 233-240 of the book, PDF pp. 242-249): Defs. 12.1-12.3, Thms. 12.1-12.5, Problems 12.1-12.23.

- Defs. 12.1-12.3, Problems 12.17-12.18 -> def-convergence-in-probability (modes, implications (2)-(3)).
- Problems 12.1-12.2 (archer) -> exr-lim-chebyshev-archer. Problems 12.3-12.4, Thm. 12.1 -> thm-chebyshev-inequality (citation).
- Problems 12.5-12.6 -> exr-lim-chebyshev-coin-bounds. Problems 12.7-12.10, Thm. 12.2 -> thm-weak-law-large-numbers.
- Problem 12.8 -> exr-lim-wlln-biased-coin. Problem 12.9 -> exr-lim-wlln-dice-sample. Problem 12.11 (Bernstein) -> exr-lim-wlln-bernstein.
- Problem 12.12, Thm. 12.4 -> thm-strong-law-large-numbers (citation), exm-lt-normal-numbers.
- Problems 12.13-12.15 -> exm-lim-wlln-second-moment, exr-lim-slln-sample-variance. Problem 12.16 -> exr-lim-wlln-conditional-frequency,
  exr-lim-slln-conditional.
- Thm. 12.5 -> thm-central-limit-theorem (citation). Problem 12.19 -> cor-de-moivre-laplace (citation). Problem 12.20 -> exr-lim-clt-coin-10000.
- Problem 12.22 -> exr-lim-wlln-polling. Problem 12.23 (adapted: coin instead of die) -> exr-lim-wlln-randomized-response.

### kallenberg2021foundations

Foundations of Modern Probability, Chs. 4-6.

- Lemma 5.1 -> thm-chebyshev-inequality (citation). Lemmas 5.2, 5.7 -> def-convergence-in-probability (citation).
- Thm. 4.18 (Borel-Cantelli) -> exr-lim-second-borel-cantelli, exr-lt-converse-slln. Thm. 4.19 (existence of independent sequences) ->
  the assumption stated before thm-strong-law-large-numbers (not proved here).
- Thm. 5.23 and Exercise 5.25 (fourth-moment proof) -> thm-strong-law-large-numbers. Thm. 6.17 -> thm-weak-law-large-numbers (citation).
- Thms. 6.3, 6.10, 6.13 -> thm-central-limit-theorem ("What is not covered": Lévy continuity, Lindeberg-Feller). Thm. 6.7 -> thm-poisson-limit.

### riley2006mathematical

Mathematical Methods for Physics and Engineering, Secs. 30.8.4, 30.9.1, 30.10, 30.15.2.

- Sec. 30.8.4 (Poisson approximation, light bulbs) -> thm-poisson-limit (citation), exm-lim-poisson-bulbs.
- Sec. 30.9.1 (Gaussian approximation to the binomial, Table 30.4) -> cor-de-moivre-laplace (citation), exm-lim-dml-table.
- Sec. 30.10 (central limit theorem, unequal distributions, log-normal products) -> thm-central-limit-theorem (citation),
  thm-weak-law-large-numbers (citation), exm-lim-clt-log-normal, exr-lim-clt-unequal.
- Sec. 30.15.2 -> thm-wick-moments (citation).

### bricmont2022statistical

Kept from the old section: Sec. 2.3 and Exercise 2.10 -> exr-pbr-large-deviations; Secs. 2.3.1-2.3.2 -> exm-pbr-typical;
Exercise 2.11 -> exr-pbr-stirling, cor-de-moivre-laplace (citation); Exercise 2.13 -> exr-rw-sailor; Exercises 2.3-2.4 -> thm-wick-moments.
Sec. 2.3 -> exm-lim-dml-gas-halves.

### foulaadvand2023computational

Kept from the old section (random walks): Secs. 10.2-10.6, Problems 10.2-10.4, 10.11, 10.12 -> def-random-walk, prp-rw-diffusion-limit and their
existing examples and exercises.

### Standard material (no library source located)

- Lindeberg's replacement proof with averaging operators and the smooth sandwich of indicators (thm-central-limit-theorem); Le Cam's
  inequality by $\ell^1$ contraction of convolutions (thm-poisson-limit); Gaussian integration by parts and the multivariate Wick formula
  (thm-wick-moments).
- Cantelli and the median (exr-lt-cantelli), Hoeffding-type bound for coins (exr-lt-markov-chernoff), Pólya's uniform convergence
  (def-convergence-in-probability (5)), reflection principle and ballot theorem (exr-lim-rw-reflection, exr-lim-rw-ballot), Pólya's
  two-dimensional return (exr-lim-rw-2d-return), random-coil polymer, photon escape from the Sun, sedimentation equilibrium, nearest-neighbour
  distance in a gas, fixed points of a random permutation, de Méré's problem, the lattice free field.

## Statistics and estimation run (sec-statistics, sec-probability-exercises)

### riley2006mathematical

Mathematical Methods for Physics and Engineering, Ch. 31 (Statistics) and Sec. 30.9.4.

- Secs. 31.3-31.4 (estimators, consistency, bias, efficiency; sample mean and variance) -> def-estimator (citation).
- Secs. 31.3.1-31.3.2 (Fisher's inequality, minimum-variance estimators) -> thm-cramer-rao (citation), exm-st-cr-gaussian-mean.
- Sec. 31.3.4 (confidence intervals) -> def-confidence-interval (citation).
- Sec. 31.5 (maximum likelihood), Sec. 31.5.6 (asymptotic normality, quoted in the "not covered" note) -> def-maximum-likelihood.
- Sec. 31.6 (least squares, linear and weighted) -> thm-least-squares (citation).
- Secs. 30.9.4, 31.7, 31.7.5 (chi-squared distribution, goodness of fit, fitted parameters) -> def-chi-squared-statistic (citation and
  "not covered" note).
- Sec. 31.2 -> prp-error-propagation (citation).
- Exercise 31.1 (pendulum values of g) -> exm-st-ci-pendulum.
- Exercise 31.2 (twelve measurements, 50% limits) -> exr-st-ci-measurements.
- Exercise 31.6 (sample mean is the best linear unbiased estimator) -> exr-st-best-linear.
- Exercise 31.7 (stratified sampling) -> exr-st-stratified.
- Exercise 31.8 (bias of the ML estimators of lifetime and rate) -> exr-st-mle-exponential.
- Exercise 31.10 (Cauchy scale, data set (i)) -> exr-st-mle-cauchy-scale, prp-statistics-values (2).
- Exercise 31.11 (two sets of measurements, equal means) -> exr-st-ci-difference.
- Exercise 31.15 (detector counts a + bs) -> exr-st-mle-background (maximum likelihood), exr-st-ls-detector (weighted least squares).
- Exercise 31.16 (weighted quadratic fit, covariance matrix /9184) -> exr-st-ls-quadratic, prp-statistics-values (6).
- Exercise 31.17 (fit a1 + a2 cos + a3 cos 2) -> exr-st-ls-orthogonal-design (adapted to equally spaced angles).

### aggarwalProbabilityStatisticsMachine2024, baldi2023probability, boudreau2018applied

Kept from the old section as citations: aggarwal Secs. 5.3-5.4, 5.6.2, 6.1-6.4, 6.6; baldi Secs. 3.9 (Thm. 3.42), 6.1; boudreau Ch. 7,
Secs. 7.2.7-7.2.9, 7.4-7.4.1 -> def-estimator, def-maximum-likelihood, def-confidence-interval, thm-least-squares, def-chi-squared-statistic,
def-monte-carlo-estimate, prp-error-propagation.

### Searched, not in the library

Casella-Berger, Wasserman, Bevington, Barlow: no matching items (Zotero metadata and semantic search). capinski2001probability and
kallenberg2021foundations have no statistics chapters suited to this section and were not used here.

### Standard material (no library source located)

- Markov's inequality for continuous functions of a random vector with a density (def-estimator (2)), proved by covering with grid cells.
- The exact variance of s^2 (def-estimator (4)); Gibbs' inequality and consistency of maximum likelihood on a finite parameter set
  (def-maximum-likelihood (3)-(4)); the Cramér-Rao proof with the regularity hypotheses (R1)-(R3) as stated hypotheses.
- Chebyshev confidence intervals and the Slutsky-type argument for estimated standard deviations (def-confidence-interval (1), (4));
  Garwood's exact Poisson interval (exr-st-poisson-exact-interval); Student's t for n = 2 as a Cauchy ratio (exr-st-student-t).
- Error propagation with explicit Taylor remainder bounds (prp-error-propagation); Gauss-Markov and weighted least squares
  (thm-least-squares (4)-(5)); chi-squared densities by Beta-integral convolution and Pearson's E X^2 = m - 1, with the m = 2 limit
  from de Moivre-Laplace (def-chi-squared-statistic); importance sampling, antithetic variates (def-monte-carlo-estimate).
- Closing exercises: gambler's ruin on finite product spaces (exr-pr-gamblers-ruin), cumulants (exr-pr-cumulants), mixture simulation
  study (exr-pr-simulation-study).
