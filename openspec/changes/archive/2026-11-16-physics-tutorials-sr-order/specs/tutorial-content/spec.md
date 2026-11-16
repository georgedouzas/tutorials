## MODIFIED Requirements

### Requirement: Chapter order builds from geometry to CSDR to the survey
The tutorial SHALL be organised in six parts in this order: mathematics, physics, abelian Kaluza-Klein theory,
non-abelian Kaluza-Klein theory, coset space dimensional reduction, and the survey of compactification methods.
Each part SHALL use only concepts defined in earlier parts or in itself.

#### Scenario: Contents of the two foundation parts
- **WHEN** the table of contents is read
- **THEN** the mathematics part contains, in this order, sets and topology, linear algebra, real analysis, complex analysis, differential equations, Fourier analysis, Hilbert spaces and operator theory, probability and statistics, manifolds, vector fields and tensors, metrics, connections and curvature, flows and Killing vectors, groups, Lie groups and algebras, representations, coset spaces and bundles; and the physics part contains, in this order, classical mechanics, classical electromagnetism, special relativity, thermodynamics and statistical mechanics, quantum mechanics, classical field theory, the Dirac equation, quantum field theory, gauge theories (with symmetry breaking), renormalisation, general relativity, supersymmetry and supergravity

#### Scenario: Table of contents reflects the progression
- **WHEN** a reader opens the rendered tutorial's table of contents
- **THEN** the six parts appear in the stated order, and each later part's chapters cite the earlier definitions they rely on by cross-reference

#### Scenario: A concept is used before its definition
- **WHEN** a chapter uses a notion (for example a Killing vector or a structure constant) that is not defined in that chapter or an earlier one
- **THEN** the tutorial is non-conforming and the definition is added where the progression requires it

#### Scenario: Gauge theories after quantum field theory
- **WHEN** the reader reaches the gauge-theory chapter
- **THEN** the quantum field theory chapter precedes it, the renormalisation chapter follows it, and no block of the quantum field theory chapter uses a gauge-theory definition without a cross-reference to an earlier definition or a forward pointer in prose that names where the notion is defined

### Requirement: Special relativity has its own chapter before general relativity
The physics part SHALL contain a chapter on special relativity placed immediately after the classical
electromagnetism chapter, covering the postulates and the Lorentz transformation, Minkowski spacetime and its causal
structure, the Lorentz and Poincaré groups treated in detail and formally, progressively from one-dimensional boosts
to Wigner's classification, relativistic kinematics and optics, relativistic dynamics with accelerated observers, and
electrodynamics in covariant form; later chapters that use special relativity SHALL cross-reference it, and no block
of the chapter SHALL use a notion defined in a later chapter (design D33, S1-S5).

#### Scenario: Reading order
- **WHEN** the reader finishes the classical electromagnetism chapter
- **THEN** the special-relativity chapter follows it in the sidebar, before thermodynamics and statistical mechanics,
  and the general-relativity chapter cites it for Minkowski spacetime and the Rindler frame

#### Scenario: No forward use
- **WHEN** the labels cited by the special-relativity chapter are listed with the chapter that defines each
- **THEN** none is defined in a later chapter, except in a prose pointer that names where the notion is developed

#### Scenario: Progressive formal treatment of the groups
- **WHEN** the reader works through the Lorentz and Poincaré groups
- **THEN** the chapter goes from boosts in one dimension to the formal definitions with proofs: the four components of
  `O(1, 3)`, the polar decomposition, `so(1, 3)` and its complexification, `SL(2, ℂ)` as double cover, the
  Thomas-Wigner rotation, the Poincaré group with its Casimirs, and Wigner's classification by little groups

#### Scenario: Problems from the problem book
- **WHEN** an exercise of the chapter is adapted from Blennow and Ohlsson
- **THEN** it cites the book and problem number, and the reading note lists the problem
