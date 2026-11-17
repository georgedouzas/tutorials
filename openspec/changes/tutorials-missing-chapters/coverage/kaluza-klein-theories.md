# Coverage: Kaluza-Klein Theories

Scope (landing page): derive Kaluza-Klein theories and coset space dimensional reduction (CSDR) from first principles,
from the abelian theory on a circle through the non-abelian theory on the sphere to CSDR, then survey other methods of
compactification and reduction. The preface, conventions and glossary pages are not subject chapters and are not mapped.

Subject chapters and their sections: `kaluza-klein-reduction` (sec-kk-ansatz, sec-kk-reduction, sec-kk-einstein-frame),
`gauge-tower` (sec-kk-gauge, sec-kk-tower, sec-kk-fermions), `isometries-gauge-fields` (sec-nonabelian-ansatz,
sec-nonabelian-gauge), `reduced-theory` (sec-nonabelian-reduction, sec-nonabelian-beyond), `symmetric-fields`
(sec-csdr-constraints, sec-csdr-embedding), `four-dimensional-theory` (sec-csdr-solution, sec-csdr-potential,
sec-csdr-fermions), `consistent-reductions` (sec-vi-torus-scherk-schwarz, sec-vi-group-manifolds,
sec-vi-sphere-supergravity, sec-vi-symmetric-schemes), `compactifications` (sec-vi-special-holonomy, sec-vi-flux,
sec-vi-warped, sec-compactification-fermions).

## Benchmarks

Per M1 the benchmarks are review articles and monographs that survey the field. Bailin-Love (Rep. Prog. Phys. 1987) and
Duff-Nilsson-Pope (Phys. Rep. 1986) are not in Zotero. Kapetanakis-Zoupanos 1992 (`kapetanakis1992`, CHH4FXQE) and
Kubyshin et al. 1989 (`kubyshin1989`, 75K5G9KF) are in Zotero but have no PDF, so their contents could not be read and
they are not benchmarks; Manolakos-Zoupanos 2016 stands in for them on CSDR.

| Key | Title | Why chosen | TOC read via |
|---|---|---|---|
| `overduin1998` (GWGCAK98) | Overduin and Wesson, Kaluza-Klein Gravity (Phys. Rep. 1997) | The standard review of the gravitational side: Kaluza mechanism, compactified, projective and noncompactified theories, cosmology and astrophysics. Most-cited review in the tutorial. | No outline; section headings read from the PDF text (pdftotext of the Zotero attachment) |
| `duff1994` (AMA6NJE4) | Duff, Kaluza-Klein Theory in Perspective | Short survey of the whole idea from Kaluza to supergravity and strings; the tutorial's most-cited source. | No outline; section headings read from the PDF text |
| `duff2025` (BQD4R83W) | Duff, Nilsson and Pope, Kaluza-Klein Supergravity 2025 | Successor to the Duff-Nilsson-Pope Physics Report (which is not in Zotero): spontaneous compactification, holonomy, stability, consistent truncations, coset harmonics. | Contents page of the PDF (p. 2) |
| `manolakos2016` (GEP4BT37) | Manolakos and Zoupanos, Higher-dimensional unified theories with continuous and fuzzy coset spaces | Review of the CSDR programme (the Kapetanakis-Zoupanos line) and its fuzzy extension. | No outline; section headings read from the PDF text |
| `perezlorenzana2005` (Y5RA9NVN) | Pérez-Lorenzana, An Introduction to Extra Dimensions | Standard lecture review of the modern (ADD, orbifold, warped) side of extra dimensions. | No outline; section headings read from the PDF text |
| `hosotani2025introduction` (P78HDA56) | Hosotani, An Introduction to Gauge-Higgs Unification: Extra Dimensions in Particle Physics | The only textbook (bib `keywords = {textbook}`) on extra dimensions the tutorial cites; covers Wilson-line breaking, orbifolds and RS. | `zotero_get_pdf_outline` |

## Coverage

### overduin1998: Kaluza-Klein Gravity

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Introduction | Overview | out of scope | | Introduction, no content of its own |
| 2.1-2.3 Historical overview | Higher dimensions, history, approaches | out of scope | | Historical survey; the preface gives the history |
| 2.4-2.5 Compactified approach, compactification mechanisms | Spontaneous compactification | covered | consistent-reductions, sec-vi-sphere-supergravity | Units "Spontaneous compactification", "Freund-Rubin" |
| 2.6 D = 11 supergravity | Eleven-dimensional supergravity and $S^7$ | covered | consistent-reductions, sec-vi-sphere-supergravity | Freund-Rubin solution and sphere truncations |
| 2.7 D = 10 superstrings | Superstring compactification | partly covered | compactifications, sec-vi-special-holonomy | Calabi-Yau and heterotic families covered; string theory itself out of scope |
| 2.8-2.9 Projective and noncompactified approaches | Overview | out of scope | | See §5, §6 |
| 3.1-3.3 Matter from geometry, minimal extension, cylinder condition | Kaluza's ansatz | covered | kaluza-klein-reduction, sec-kk-ansatz | Units "The cylinder condition", "The ansatz" |
| 3.4 The case φ = constant | Einstein-Maxwell from 5D | covered | kaluza-klein-reduction, sec-kk-reduction | Reduced action |
| 3.5 Brans-Dicke theory | Scalar-tensor form | covered | kaluza-klein-reduction, sec-kk-einstein-frame | "Brans-Dicke theory" box |
| 3.6-3.7 Conformal rescaling and ambiguity | Jordan vs Einstein frame | covered | kaluza-klein-reduction, sec-kk-einstein-frame | Units "Weyl rescalings", "Jordan and Einstein frames" |
| 4.1 Klein's compactification mechanism | Compact fifth dimension, modes | covered | gauge-tower, sec-kk-tower | |
| 4.2 Quantization of charge | Charge quantisation | covered | gauge-tower, sec-kk-tower | "Charge quantisation" box |
| 4.3 Extension to higher dimensions | Non-abelian KK | covered | isometries-gauge-fields, sec-nonabelian-ansatz; reduced-theory, sec-nonabelian-reduction | |
| 4.4 Higher-dimensional matter | Matter fields needed for compactification | covered | consistent-reductions, sec-vi-sphere-supergravity | Freund-Rubin flux |
| 5 Projective theories | Projective unified field theory | out of scope | | Not a compactification or reduction; outside the landing-page scope (uncertain, see report) |
| 6 Noncompactified theories (6.1-6.8) | Space-time-matter / induced matter, exact 5D solutions | out of scope | | Non-compact, non-cylindrical theories are not reductions in the tutorial's sense (uncertain, see report) |
| 7.1 Compactified Kaluza-Klein cosmology | Dynamical compactification, shrinking circle | section gap | compactifications (moduli, sec-vi-flux) | Only an exercise (Kasner universe) in kaluza-klein-reduction; no section on dynamical compactification |
| 7.2-7.6 Equation of state, k ≠ 0, Newton's law, motion, covariance | STM cosmology | out of scope | | Belongs to the noncompactified approach; cosmology phenomenology |
| 8.1-8.4 Kaluza-Klein solitons | KK monopole (Gross-Perry-Sorkin), solitons as black holes / dark matter | section gap | kaluza-klein-reduction | Only an exercise ("The Kaluza-Klein black hole") and an example; no section with statements on the KK monopole |
| 8.5-8.11 Classical tests | Redshift, light deflection, perihelion, time delay, geodetic precession, equivalence principle | out of scope | | Tests of 5D solitons; the 4D tests belong to fundamentals-of-theoretical-physics |
| 9 Conclusions | | out of scope | | |

### duff1994: Kaluza-Klein Theory in Perspective

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 The Kaluza idea | 5D metric ansatz, dilaton | covered | kaluza-klein-reduction, sec-kk-ansatz, sec-kk-einstein-frame | |
| 2 The Klein idea | Compact circle, tower, charge quantisation | covered | gauge-tower, sec-kk-tower | |
| 3 The Kaluza-Klein black hole | Charged 5D black holes, KK monopole | section gap | kaluza-klein-reduction | Same gap as overduin1998 §8 |
| 4 The humble torus | Torus reduction, $O(d,d)$, T-duality | partly covered | consistent-reductions, sec-vi-torus-scherk-schwarz | Torus reduction and spectrum covered; $O(d,d)$ / T-duality uncovered → out of scope (string theory) |
| 5 Non-abelian generalization | Isometries give non-abelian gauge fields | covered | isometries-gauge-fields, sec-nonabelian-ansatz, sec-nonabelian-gauge | |
| 6 Kaluza-Klein supergravity | 11D supergravity on $S^7$ | covered | consistent-reductions, sec-vi-sphere-supergravity | |
| 7 Superstrings | String compactification | partly covered | compactifications, sec-vi-special-holonomy | String theory itself out of scope |
| 8 Kaluza-Klein states as extreme black holes | BPS states | partly covered | gauge-tower, sec-kk-tower | Example "Extreme black holes"; the black-hole side is part of the kaluza-klein-reduction section gap |

### duff2025: Kaluza-Klein Supergravity 2025

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Why Kaluza-Klein? | Motivation | out of scope | | Introduction |
| 2 Spontaneous compactification | Freund-Rubin, $AdS_4 \times S^7$ | covered | consistent-reductions, sec-vi-sphere-supergravity | |
| 3 Holonomy, Killing spinors and supersymmetry | Holonomy and unbroken supersymmetry | covered | compactifications, sec-vi-special-holonomy | Unit "Holonomy and supersymmetry" |
| 4 Topology | Betti numbers and massless modes | covered | compactifications, sec-vi-special-holonomy | Hodge and Betti number boxes |
| 5 Squashing, Higgs and space invaders | Squashed spheres, symmetry breaking by squashing | partly covered | reduced-theory, sec-nonabelian-beyond | Squashed spheres covered; space-invader scenario out of scope (specialised) |
| 6 The criterion for vacuum stability | Breitenlohner-Freedman bound in AdS | section gap | consistent-reductions, sec-vi-sphere-supergravity | Not treated; one section |
| 7 Consistent truncations | Sphere truncations | covered | consistent-reductions, sec-vi-sphere-supergravity, sec-vi-group-manifolds | |
| 8.1 Formalism on reductive coset spaces $G/H$ | Harmonic expansion on cosets, KK mass spectrum | section gap | consistent-reductions, sec-vi-sphere-supergravity | Spectra of torus and twisted torus covered; harmonic analysis on $G/H$ (Frobenius reciprocity, full massive spectrum) is not |
| 8.2 Full spectrum on the squashed $S^7$ | | out of scope | | Research-level case study |

### manolakos2016: Continuous and fuzzy coset spaces

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Introduction | | out of scope | | |
| 2 CSDR of a D-dimensional YMD Lagrangian | Symmetric fields, constraints, reduced Lagrangian, fermions, $E_8$ model | covered | symmetric-fields, sec-csdr-constraints, sec-csdr-embedding; four-dimensional-theory, sec-csdr-solution, sec-csdr-potential, sec-csdr-fermions; compactifications, sec-compactification-fermions | $E_8$ over nearly-Kähler cosets in compactifications |
| 3 Fuzzy spaces | Fuzzy sphere | covered | consistent-reductions, sec-vi-symmetric-schemes | Unit "Fuzzy spheres" |
| 4 Ordinary fuzzy reduction and gauge symmetry enhancement | | partly covered | consistent-reductions, sec-vi-symmetric-schemes | Dynamical fuzzy sphere covered; gauge enhancement only in passing → section gap |
| 5 Fuzzy CSDR | | section gap | consistent-reductions, sec-vi-symmetric-schemes | One section at most |
| 6 Orbifolds and fuzzy extra dimensions | $\mathcal N = 4$ SYM on $\mathbb Z_3$ orbifolds, twisted fuzzy spheres | out of scope | | Research-level model building |

### perezlorenzana2005: An Introduction to Extra Dimensions

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| I Introduction | Hierarchy problem | covered | compactifications, sec-vi-warped | "The hierarchy" boxes |
| II.A Fundamental vs Planck scales | $M_P^2 = M_*^{n+2} V_n$ | covered | compactifications, sec-vi-warped | "Planck mass from large extra dimensions" |
| II.B Brane and bulk EFT | Fields on the brane | covered | compactifications, sec-vi-warped | "Why the Standard Model lives on a brane" |
| II.C Dimensional reduction | KK expansion of bulk fields | covered | gauge-tower, sec-kk-tower | |
| II.D Graviton phenomenology and bounds | Short-distance force, collider and supernova bounds | covered | compactifications, sec-vi-warped | |
| III.A Bulk fermions | Fermion tower, orbifold chirality | covered | gauge-tower, sec-kk-fermions | |
| III.B Bulk vectors | Gauge fields on $S^1/\mathbb Z_2$ | covered | gauge-tower, sec-kk-fermions | "The gauge field on the orbifold" |
| III.C Short and large extra dimensions; UED | Universal extra dimensions, KK parity | section gap | compactifications, sec-vi-warped | Not treated |
| III.D Power-law running of gauge couplings | | section gap | compactifications, sec-vi-warped | Not treated |
| IV.A Spontaneous breaking in the bulk | | covered | four-dimensional-theory, sec-csdr-potential | Higgs from internal gauge components |
| IV.B Shining vevs | | out of scope | | Specialised mechanism |
| IV.C Orbifold breaking of symmetries | Gauge breaking by orbifold boundary conditions | proposed chapter | gauge-higgs-unification | See proposal |
| IV.D Scherk-Schwarz mechanism (and Hosotani) | Twisted boundary conditions | partly covered | consistent-reductions, sec-vi-torus-scherk-schwarz; gauge-tower, sec-kk-fermions | Scherk-Schwarz covered; the Hosotani mechanism goes to the proposed chapter |
| V.A Neutrino mass models | | out of scope | | Phenomenology |
| V.B Proton stability in 6D | | out of scope | | Phenomenology |
| V.C Split fermions | Fermion localisation, hierarchies from overlaps | covered | gauge-tower, sec-kk-fermions | "Localisation at a fixed point", "A hierarchy from overlaps" |
| VI.A RS background and hierarchy | | covered | compactifications, sec-vi-warped | |
| VI.B KK decomposition on RS | KK gravitons | covered | compactifications, sec-vi-warped | "The localised graviton" |
| VI.C Radius stabilisation | Goldberger-Wise | section gap | compactifications, sec-vi-warped | Only "Tuning and the radion"; no stabilisation mechanism |
| VI.D RSII | Non-compact extra dimension | covered | compactifications, sec-vi-warped | "One brane and an infinite dimension" |
| VI.E Graviton localisation | | covered | compactifications, sec-vi-warped | |
| VI.F More infinite extra dimensions | | out of scope | | Specialised |

### hosotani2025introduction: Gauge-Higgs Unification

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Introduction | Gauge theory, unification, SSB mechanisms | belongs to fundamentals-of-theoretical-physics | | General QFT background |
| 2 Higgs mechanism | Abelian and non-abelian Higgs mechanism, Standard Model | belongs to fundamentals-of-theoretical-physics | | General QFT background |
| 3 Aharonov-Bohm effect and Hosotani mechanism | Gauge theory on $M^n \times S^1$, AB phases, Wilson-line breaking | proposed chapter | gauge-higgs-unification | Only "Twist and Wilson line" in gauge-tower, sec-kk-fermions |
| 4.1-4.7 Quantum effects and Hosotani mechanism | Effective potential $V_{\rm eff}(\theta_H)$, dynamical breaking, Higgs masses, equivalence classes, finiteness | proposed chapter | gauge-higgs-unification | One-loop Casimir energy appears only in an exercise; the general effective potential is in fundamentals-of-theoretical-physics |
| 4.8-4.9 Finite temperature, lattice | | out of scope | | Specialised |
| 5.1 SU(5) on $M^4 \times S^1$ | | proposed chapter | gauge-higgs-unification | |
| 5.2 Fermions in higher dimensions | | covered | gauge-tower, sec-kk-fermions | |
| 5.3-5.4 Orbifold $S^1/\mathbb Z_2$, chiral fermions | | covered | gauge-tower, sec-kk-fermions | "Chiral zero modes on $S^1/\mathbb{Z}_2$" |
| 5.5-5.7 Gauge fields, orbifold boundary conditions, AB phases and equivalence classes | Non-abelian orbifold breaking | proposed chapter | gauge-higgs-unification | Only the abelian gauge field on the orbifold is covered |
| 5.8 Universal extra dimensions | | section gap | compactifications, sec-vi-warped | Same gap as perezlorenzana2005 III.C |
| 5.9 Kawamura SU(5) model | | proposed chapter | gauge-higgs-unification | |
| 5.10 SU(3) electroweak gauge-Higgs unification | | proposed chapter | gauge-higgs-unification | |
| 5.11 Twisted gauge in flat space | | proposed chapter | gauge-higgs-unification | |
| 6.1-6.2 Einstein equations, RS solution | | covered | compactifications, sec-vi-warped | |
| 6.3 Scalars in RS | | partly covered | compactifications, sec-vi-warped | "The warped Higgs"; bulk scalar modes → section gap (with VI.C) |
| 6.4 Gauge fields in RS | | section gap | compactifications, sec-vi-warped | Bulk gauge KK modes in a warped background not treated |
| 6.5 Fermions in curved spacetime | Spin connection, Dirac operator | covered | gauge-tower, sec-kk-fermions | General background belongs to fundamentals-of-theoretical-physics |
| 6.6 Fermions in RS | | section gap | compactifications, sec-vi-warped | Warped fermion zero modes not treated (fermions section covers cosets, CY and orbifolds only) |
| 7 GHU in the RS space | SO(5)×U(1)×SU(3) model, spectra, $V_{\rm eff}$ | out of scope | | One specific phenomenological model; its ingredients go to the proposed chapter |
| 8 New particles and interactions | | out of scope | | Model phenomenology |
| 9 Predictions | Collider predictions, anomaly flow, GUT versions | out of scope | | Model phenomenology |
| App. A Units, Dirac matrices, SO(N) | | covered | conventions (not a subject chapter) / belongs to fundamentals-of-mathematics-for-physicists | |
| App. B Effective potential | Regularisation, mode sums | belongs to fundamentals-of-theoretical-physics | | Zeta / mode-sum regularisation is general QFT |
| App. C Bessel functions | | belongs to fundamentals-of-mathematics-for-physicists | | Special functions |

## Proposed chapters

| Slug | Title | Position (after) | Depends on | Zotero sources | Reason (benchmarks and size) | Decision |
|---|---|---|---|---|---|---|
| gauge-higgs-unification | Wilson lines and gauge-Higgs unification | compactifications | gauge-tower, four-dimensional-theory, compactifications | `hosotani2025introduction` ch. 3, 4 and 5; `perezlorenzana2005` sec. IV.C-D | Whole chapters in Hosotani (3, 4, 5) and a full section (IV) of Pérez-Lorenzana. Needs at least three sections: Wilson lines and AB phases on $S^1$ (Hosotani mechanism); the one-loop effective potential and dynamical breaking; non-abelian orbifold boundary conditions with the Kawamura and SU(3) models. It is a method of reduction with symmetry breaking, so it is in the landing-page scope, and it is the flat-space counterpart of the CSDR Higgs of four-dimensional-theory. | approved (owner, 2026-11-17) |

## Section gaps

| Existing chapter | Missing topic | Benchmarks |
|---|---|---|
| kaluza-klein-reduction | Kaluza-Klein monopole and black holes (Gross-Perry-Sorkin soliton, charged 5D black holes) as a section with statements | overduin1998 §8.1-8.4; duff1994 §3, §8 |
| compactifications (sec-vi-flux) | Dynamical compactification and Kaluza-Klein cosmology (shrinking extra dimensions) | overduin1998 §7.1 |
| consistent-reductions (sec-vi-sphere-supergravity) | Vacuum stability in AdS: the Breitenlohner-Freedman bound | duff2025 §6 |
| consistent-reductions (sec-vi-sphere-supergravity) | Harmonic expansion on coset spaces $G/H$ and the massive KK spectrum | duff2025 §8.1 |
| consistent-reductions (sec-vi-symmetric-schemes) | Fuzzy CSDR and gauge symmetry enhancement from fuzzy reduction | manolakos2016 §4-5 |
| compactifications (sec-vi-warped) | Universal extra dimensions and KK parity | perezlorenzana2005 III.C; hosotani2025introduction §5.8 |
| compactifications (sec-vi-warped) | Power-law running of gauge couplings | perezlorenzana2005 III.D |
| compactifications (sec-vi-warped) | Radius stabilisation in RS (Goldberger-Wise) and bulk scalar modes | perezlorenzana2005 VI.C; hosotani2025introduction §6.3 |
| compactifications (sec-vi-warped) | Bulk gauge fields and fermions in the RS background | hosotani2025introduction §6.4, §6.6 |
