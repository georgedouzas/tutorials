# Reading notes: calculus-of-variations

Drafts for the Zotero reading notes (design M8). Section 1, `sec-euler-lagrange` (task 4.5, first run).

Note on keys: Zotero item `9KCJXN49` is the *Student Solutions Manual* (bib key `riley2006solutions`); the textbook
itself is `GSMCY642` (bib key `riley2006mathematical`). Chapter 22 of the textbook was read for the text and the
exercises, and the manual's Chapter 22 for the worked solutions of the odd-numbered exercises.

## riley2006mathematical

- Ch. 22 intro, Sec. 22.1 (Euler-Lagrange equation by y + αη): `def-first-variation`, `thm-euler-lagrange`.
- Sec. 22.2.1 (F without y; shortest path): `exm-fvar-length`, `exm-firstint-length`, `prp-first-integrals`.
- Sec. 22.2.2 (F without x, Beltrami; soap film between rings): `exm-firstint-soap-film`, `prp-first-integrals`,
  `prp-classical-variational-problems` (2), `exm-classvar-catenoid-figure`.
- Sec. 22.3.1-22.3.3 (several dependent and independent variables, higher derivatives): `thm-euler-lagrange-extensions`.
- Sec. 22.3.4 (variable end points; brachistochrone to a vertical line): `thm-euler-lagrange` (4),
  `exm-firstint-brachistochrone`, `prp-classical-variational-problems` (1), `exr-classvar-brachistochrone-free-end`.
- Sec. 22.5.1 (Fermat, Snell): `exm-fvar-fermat`, `exm-firstint-snell`.
- Sec. 22.5.2 (Hamilton's principle, string): `exm-fvar-oscillator`, `exm-el-projectile`, `exm-classvar-string`,
  `prp-classical-variational-problems` (5).
- Exercise 22.1 (ρ^{-1/2} dS, parabolic profiles): `exr-firstint-riley-parabola`.
- Exercise 22.2 (∫√(1+y'²)/y, value 2 ln(1+√2)): `exr-firstint-half-plane`.
- Exercise 22.3 (rays in n(r)): `exr-classvar-fermat-polar`.
- Exercise 22.4 (π-meson Lagrangian): `exm-elext-klein-gordon`.
- Exercise 22.5 (T homogeneous quadratic, energy): `exr-elext-quadratic-kinetic`.
- Exercise 22.6 (adding dφ/dt; moving origin): `exr-el-null-lagrangian`, `exr-el-moving-frame`.
- Exercise 22.8 (orbit r = a sin φ): `exm-elext-polar`, `exr-elext-riley-orbit`.
- Not used in section 1 (kept for section 2): Secs. 22.4, 22.6-22.8; Exercises 22.9, 22.13, 22.16-22.20.

## riley2006solutions

- Ch. 22 worked solutions of Exercises 22.1, 22.3, 22.5: used to check `exr-firstint-riley-parabola`,
  `exr-classvar-fermat-polar`, `exr-elext-quadratic-kinetic`. Cited once in the chapter introduction.

## fokas2023modern

- Sec. 2.6.3 (functionals, functional derivative δF/δf, Euler-Lagrange equation): `def-first-variation`,
  `thm-euler-lagrange-extensions` (4), `exm-elext-functional-derivatives`.
- Example 2.3 (shortest curve in the plane): `exm-el-straight-line`, `prp-classical-variational-problems` (3a).

## zhuEquationsAnalyticalTools2021

- Sec. 3.2 (variational principle for Poisson's equation, Gateaux derivative, weak formulation): the name "Gateaux
  derivative" in `def-first-variation`; `exm-fundlemma-string`, `exm-fundlemma-membrane`, `exm-elext-laplace`.
- Exercises 3.5-3.6 (Neumann and Robin energy functionals): not used; candidates for natural boundary conditions of fields
  in section 2.

## Other sources

- Rindler, *Calculus of Variations* (2018) and Basdevant, *Variational Principles in Physics* (2023) are in Zotero
  storage but not in `references/references.bib`; they were not cited. Gelfand-Fomin, van Brunt and Kot were not found
  in the library.
- Standard material without a library source: the counterexamples of Weierstrass (`exm-el-weierstrass`) and the C¹ but
  not C² minimum (`exm-el-not-c2`), the regularity statement `thm-euler-lagrange` (3), the cylinder and sphere geodesics,
  the cyclotron and Kepler examples, Scherk's minimal surface (`exr-elext-minimal-surface`).

# Section 2, `sec-constraints-second-variation`, and the closing exercises (task 4.5, second run)

## riley2006mathematical

- Sec. 22.4 (constrained variation, multiplier K = I + λJ; hanging rope of fixed length): `thm-isoperimetric`,
  `exm-isoper-multiplier-rate`, `thm-holonomic-constraints` (remark), `prp-constrained-variational-problems` (1),
  `exm-convar-chain-numbers`.
- Sec. 22.6 (Sturm-Liouville equation as stationary values of I/J, λ = I/J): `thm-rayleigh-ritz` (1), (2).
- Sec. 22.7 (estimation of eigenvalues; trial functions, second-order accuracy): `exm-rayleigh-parabola`,
  `exr-rayleigh-second-order`; the completeness-based derivation there is replaced by `thm-rayleigh-ritz` (3).
- Sec. 22.8 (adjustment of parameters; Gaussian trial for the quantum oscillator): `prp-constrained-variational-problems`
  (4b), `exm-convar-oscillator-units`, `exr-cv-box-field`.
- Problem 22.13 (dam of given capacity, circular wall): `exr-isoper-riley-dam`.
- Problem 22.17 (fourth-order functional with conditions at one end): `exr-secvar-riley-fourth-order`.
- Problem 22.19 (Stokes' equation; estimate strictly above λ0): `exr-rayleigh-strict` (idea only; the singular weight
  was not used).
- Problem 22.20 (y'' − x²y + λy = 0, quadratic trial): `exr-rayleigh-riley-quadratic-potential`.
- Problem 22.22 ((1 + x²)y'' + 2xy' + λy = 0, trials 1 − x², cos(πx/2) and their combination):
  `exr-rayleigh-riley-variable-p`.
- Problem 22.25 (odd trial x e^{−αx²} for the oscillator): `exr-convar-oscillator-odd`.
- Not used: Problems 22.9, 22.11-22.12, 22.14-22.16, 22.21, 22.23, 22.26-22.29.

## riley2006solutions

- Ch. 22 worked solutions of Problems 22.13, 22.17, 22.19: used to check `exr-isoper-riley-dam`,
  `exr-secvar-riley-fourth-order` and `exr-rayleigh-strict`. Not cited in section 2.

## zhuEquationsAnalyticalTools2021

- Sec. 3.2 (variational principle for Poisson's equation: a solution minimises the energy, statement (b)):
  `thm-second-variation` (remark), `exr-secvar-quadratic-exact`, `exr-secvar-loaded-string`.

## fokas2023modern

- Sec. 2.6.3 has nothing on constraints, the second variation or eigenvalue estimates; not used in section 2.

## Standard material without a library source

- The proofs of the multiplier rule for integral constraints by an (m + 1)-parameter variation, of the pointwise
  multiplier by the implicit function theorem, of Legendre's condition by sin² bumps, of Jacobi's sufficient condition
  through the Riccati substitution and a coercivity estimate, and of the ground-state bound by the identity
  p y'² + (q − λ1 w)y² = p(y' − σy/p)² + (σy²)' are standard (Gelfand-Fomin style) and were written without a library
  source. Also standard: the shallow cable, Atwood's machine, the bead on a turning rod, the conical pendulum, the weak
  but not strong minimum, the catenoid conjugate point, the concavity proof of Dido's problem among graphs.
