# Coverage: Fundamentals of Theoretical Physics

Page paths are relative to `fundamentals-of-theoretical-physics/`: `qm/` means `quantum-mechanics/index.qmd`, and so on
(`cm` classical-mechanics, `em` electromagnetism, `sr` special-relativity, `tsm` thermodynamics-statistical-mechanics,
`qm` quantum-mechanics, `cft` classical-field-theory, `dirac` dirac-equation, `qft` quantum-field-theory,
`gauge` gauge-theories, `ren` renormalisation, `gr` general-relativity, `susy` supersymmetry-supergravity).
Many `###` units have no id, so a covered row may name the id of the enclosing `##` section. Coverage was checked by
grepping the headings and statement boxes of the chapter sources (M3).

## Benchmarks

| Key | Title | Why chosen | TOC read via |
|---|---|---|---|
| emam2021covariant | Emam, *Covariant Physics: From Classical Mechanics to General Relativity and Beyond* (OUP 2021) | Cited textbook; the one broad survey in the library running from classical mechanics through special relativity, electrodynamics and GR to classical fields | PDF outline (XJXJX9US) |
| zettili2009quantum | Zettili, *Quantum Mechanics: Concepts and Applications* (Wiley 2009) | Cited textbook; standard complete non-relativistic QM course | Contents pages 6-12 (no outline) |
| williams2023introduction | Williams, *Introduction to Quantum Field Theory: Classical Mechanics to Gauge Field Theories* (CUP 2023) | The tutorial's most cited text; spans Lorentz/Poincaré, analytical mechanics, classical fields, relativistic QM, QFT, renormalisation and non-abelian gauge theory | Contents pages 7-14 (no outline) |
| paganini2023fundamentals | Paganini, *Fundamentals of Particle Physics: Understanding the Standard Model* (CUP 2023) | Cited textbook; standard particle physics / Standard Model text | Contents pages 8-14 (no outline) |
| plebanski2024introduction | Plebański and Krasiński, *An Introduction to General Relativity and Cosmology*, 2nd ed. (CUP 2024) | Cited textbook; full GR and relativistic cosmology course (more advanced than the tutorial, so its starred and research chapters are marked out of scope) | Contents pages 6-13 (outline is broken: one chapter only) |
| StatisticalMechanics2022 | Pathria and Beale, *Statistical Mechanics*, 4th ed. (Elsevier 2022); Zotero item C6HVTPX9, metadata has no creators | Standard graduate statistical mechanics text; none of the cited stat-mech books (Bricmont, Kivelson, Skačej) covers the whole subject | PDF outline (C6HVTPX9) |

Not chosen: buchbinder2021introduction (overlaps Williams, aims at quantum gravity); nath2017supersymmetry and
martin1997 (the only supersymmetry sources are a monograph and a primer, so the supersymmetry chapter has no textbook
benchmark; it is the tutorial's research-level end); problem books (blennow, macchi, pierrus, galitski, kotkin).

## Coverage

### emam2021covariant: Covariant Physics

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Coordinate systems and vectors | Index notation, metric, curvilinear coordinates | belongs to fundamentals-of-mathematics-for-physicists | linear-algebra, differential-geometry | Mathematics |
| 2 Tensors | Tensors, parallel transport, Christoffel symbols | belongs to fundamentals-of-mathematics-for-physicists | differential-geometry (sec-connections-curvature) | Mathematics |
| 3 Classical covariance: point particles, rigid bodies, potentials, Galilean covariance | Newtonian mechanics | covered | cm/ sec-newtonian-mechanics, sec-rgb-rigid-body, sec-noether-particles (Galilean boosts) | |
| 3.4 Continuum mechanics | Stress tensor of continua | out of scope | | Continuum mechanics and elasticity are not in the landing-page scope; the field-theory stress tensor is in cft/ |
| 4 Special covariance | SR basics, four-vectors, boosts as rotations, mechanics, four-momentum, covariant electrodynamics | covered | sr/ sec-sr-postulates, sec-sr-minkowski, sec-sr-kinematics, sec-sr-dynamics, sec-sr-electrodynamics | |
| 5 General covariance | Curvature, gravity as curvature, Newtonian limit, interior/exterior Schwarzschild, black holes, cosmological spacetimes | covered | gr/ sec-einstein-hilbert, sec-schwarzschild-flrw | Interior solution is taught only as an example; cosmology goes to the proposed chapter |
| 6 Physics in curved spacetime | Geodesics, Killing fields, Schwarzschild orbits, covariant electrodynamics | covered | gr/ sec-schwarzschild-flrw (Symmetries and conserved quantities; The classical tests) | |
| 7 Riemann and Einstein | Manifolds and curvature; Einstein equations, stress tensor, cosmological constant | covered | gr/ sec-einstein-equations; manifolds in maths differential-geometry | |
| 8 Least action and classical fields | Particle actions, scalar and Maxwell field actions, stress tensor from the action, GR actions | covered | cm/ sec-lagrangian; cft/ sec-actions-symmetries; gr/ sec-einstein-hilbert | |
| 9 Differential forms, Hodge duality, Stokes, Cartan formalism | Forms | belongs to fundamentals-of-mathematics-for-physicists | differential-geometry (sec-vector-fields-forms-tensors) | Maxwell in forms is in cft/ sec-complex-vector-fields |
| 10.1-10.3, 10.5 Brans-Dicke, f(R), Gauss-Bonnet, Einstein-Cartan | Modified gravity | out of scope | | Beyond GR; not in the landing-page scope |
| 10.4 Kaluza-Klein theory | Kaluza-Klein | belongs to kaluza-klein-theories | | |

### zettili2009quantum: Quantum Mechanics

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Origins of quantum physics | Blackbody, photoelectric and Compton effects, Bohr model, wave packets | covered / out of scope | tsm/ sec-quantum-statistics (blackbody); sr/ sec-sr-kinematics (Compton); qm/ sec-schroedinger (free particle) | Historical photoelectric effect and Bohr model are out of scope (history, not theory) |
| 2 Mathematical tools | Hilbert space, Dirac notation, operators, representations | belongs to fundamentals-of-mathematics-for-physicists / covered | hilbert-spaces-operators; qm/ sec-states-observables | |
| 3 Postulates | States, measurement, time evolution, symmetries, Ehrenfest | covered | qm/ sec-states-observables, sec-schroedinger, sec-quantum-symmetries | |
| 4 One-dimensional problems | Steps, barriers, wells, tunnelling, oscillator, numerics | covered | qm/ sec-schroedinger, sec-qm-scattering (sec-qsc-one-dimension), sec-harmonic-oscillator | |
| 5 Angular momentum | Orbital and spin angular momentum | covered | qm/ sec-angular-momentum | |
| 6 Three-dimensional problems | Central potentials, hydrogen, magnetic fields | covered | qm/ sec-quantum-symmetries (The hydrogen spectrum), sec-qm-charged-particle | |
| 7.1-7.3 Rotations, addition of angular momenta | Rotation operators, Clebsch-Gordan | covered | qm/ sec-angular-momentum (Addition of angular momenta) | |
| 7.4 Scalar, vector and tensor operators; Wigner-Eckart theorem | Tensor operators | section gap | quantum-mechanics | Not taught (no hits for Wigner-Eckart or tensor operators) |
| 8 Identical particles | Symmetrisation postulate, Pauli exclusion, periodic table | section gap | quantum-mechanics | Fock space is taught in qft/ sec-canonical-quantisation, but the first-quantised symmetrisation postulate and the exclusion principle are not |
| 9 Approximation methods for stationary states | Perturbation theory, fine structure, variational and WKB methods | covered | qm/ sec-path-integral (Perturbation series, The variational principle, The classical limit); dirac/ sec-dirac-hydrogen (fine structure) | |
| 10.2 Pictures of QM | Schrödinger, Heisenberg, interaction pictures | covered | qm/ sec-schroedinger (Heisenberg picture exercises); qft/ sec-qdm-s-matrix (interaction picture) | |
| 10.3-10.5 Time-dependent perturbation theory, adiabatic and sudden approximations, atoms and radiation | Transition rates, Fermi's golden rule, dipole selection rules, spontaneous emission | section gap | quantum-mechanics | No golden-rule or TDPT unit; a whole chapter in one benchmark only, and fits one section |
| 11 Scattering theory | Cross sections, Born approximation, partial waves | covered | qm/ sec-qm-scattering | Scattering of identical particles (11.5) goes with the identical-particles gap |

### williams2023introduction: Introduction to Quantum Field Theory

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Lorentz and Poincaré invariance | Lorentz and Poincaré groups, representations, little group | covered | sr/ sec-sr-lorentz-poincare (sec-sr-lorentz-group, sec-sr-wigner-classification) | |
| 2.1-2.4 Lagrangian and Hamiltonian mechanics, Noether, small oscillations, canonical transformations | Analytical mechanics | covered | cm/ sec-lagrangian, sec-hamiltonian, sec-poisson-brackets, sec-noether-particles, sec-small-oscillations | |
| 2.5 Relation to quantum mechanics | Classical to quantum | covered | qm/ sec-path-integral (The classical limit) | |
| 2.6-2.8 Relativistic kinematics, electromagnetism, analytic relativistic mechanics | | covered | sr/ sec-sr-kinematics, sec-sr-dynamics; em/ sec-em-maxwell | |
| 2.9 Constrained Hamiltonian systems | Dirac-Bergmann, Dirac bracket | covered | cm/ sec-constrained-hamiltonian | |
| 3 Relativistic classical fields | Scalar fields, Noether, stress tensor, Belinfante, EM field | covered | cft/ sec-fields, sec-actions-symmetries (sec-noether-currents) | |
| 4.1 Review of QM: postulates, Wigner, projective reps, P and T, identical particles, interaction picture, path integrals | | covered | qm/ sec-quantum-symmetries, sec-path-integral; dirac/ sec-dirac-majorana | Identical particles in first quantisation: see Zettili ch. 8 gap |
| 4.3 Klein-Gordon equation | Relativistic QM of spin 0 | covered | cft/ sec-scalar-fields; dirac/ sec-klein-paradox | |
| 4.4-4.6 Dirac equation, C, P, T, CPT, chirality, Weyl and Majorana fermions | | covered | dirac/ sec-dirac-covariance, sec-dirac-free-solutions, sec-dirac-majorana | |
| 5 Introduction to particle physics | History of QED/QCD/EW, CKM, PMNS and neutrino mixing, Majorana neutrinos, SU(N) multiplets and the quark model | partly covered → proposed chapter | gauge/ sec-standard-model (sec-smd-ckm) covers CKM; rest → particle-physics | Quark model, neutrino oscillations and double beta decay are not taught |
| 5.3.1 Multiplets of SU(N) and Young tableaux | Representation theory | belongs to fundamentals-of-mathematics-for-physicists | lie-groups-algebras | Mathematics |
| 6.1-6.2 Scalar QFT: free field, Feynman propagator, Wick, functional integral, Euclidean | | covered | qft/ sec-canonical-quantisation, sec-propagators, sec-field-path-integral | |
| 6.3 Fermions: Grassmann, Fock space, canonical and functional quantisation | | covered | qft/ sec-qdm-dirac | |
| 6.4 Photons: canonical, Gupta-Bleuler, gauge fixing | | covered | qft/ sec-qdm-maxwell; gauge/ sec-gauge-quantisation | |
| 6.5 Massive vector bosons | Proca field quantisation | section gap | quantum-field-theory | The Proca field appears in examples (gauge/ sec-higgs) but its quantisation is not taught |
| 7.1-7.2 Physical spectrum, Källén-Lehmann representation | Spectral representation | section gap | quantum-field-theory | Not taught |
| 7.3 Cross sections, decay rates, optical theorem | | covered | qft/ sec-qdm-s-matrix (sec-qdm-cross-sections) | |
| 7.4 Interaction picture, Feynman diagrams | | covered | qft/ sec-feynman-diagrams | |
| 7.5 LSZ reduction for scalars, fermions, photons | | section gap | quantum-field-theory | Only an example (exm-qdm-sm-lsz) in sec-qdm-s-matrix; no statement of the reduction formula |
| 7.6 Feynman rules, tree-level examples, crossing | | covered | qft/ sec-feynman-diagrams, sec-qdm-s-matrix | |
| 8.1 Discrete symmetries, CPT, spin-statistics | | covered | dirac/ sec-dirac-majorana; qft/ sec-qdm-dirac (spin-statistics theorem) | |
| 8.2-8.3 Generating functionals, effective action, Schwinger-Dyson, Ward identities | | covered | ren/ sec-dyson-schwinger, sec-qed-one-loop; qft/ sec-field-path-integral | |
| 8.4-8.7 Renormalisation, regularisation, renormalised perturbation theory, RG | | covered | ren/ sec-regularisation, sec-power-counting, sec-renormalised-perturbation, sec-renormalisation-schemes, sec-renormalisation-group | |
| 8.8 Spontaneous symmetry breaking | | covered | gauge/ sec-symmetry-breaking (sec-ssb) | |
| 8.9 Casimir effect | | covered | ren/ sec-renormalisation-higher-dimensions | |
| 9.1 Non-abelian gauge theories, Wilson loops, quantisation | | covered | gauge/ sec-gauge-theories (sec-yang-mills), sec-gauge-connections, sec-gauge-quantisation | |
| 9.2 QCD: functional integral, renormalisation, running coupling, BRST, lattice | | covered | gauge/ sec-gqn-brst, sec-lattice-gauge; ren/ sec-renormalisation-group | |
| 9.3 Anomalies | | covered | qft/ sec-renormalisation (Effective field theories and anomalies) | |
| 9.4 The Standard Model: EW breaking, quarks and leptons | | covered | gauge/ sec-standard-model | |

### paganini2023fundamentals: Fundamentals of Particle Physics

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Particle physics landscape | Particles and interactions, Yukawa theory, cosmic rays, accelerators, detectors, measurement statistics | out of scope | | Experimental methods; Yukawa potential is in qft examples |
| 2 SR and QM preliminaries | Lorentz transformations, angular momentum | covered | sr/ sec-sr-postulates; qm/ sec-angular-momentum | |
| 3 Collisions and decays | Phase space, decay width, cross sections, Mandelstam, Dalitz plots | covered | qft/ sec-qdm-cross-sections; sr/ sec-sr-kinematics | |
| 4 Conservation rules and symmetries | Parity, C, baryon and lepton number | covered | qm/ sec-quantum-symmetries; dirac/ sec-dirac-majorana; gauge/ sec-smd-generation | |
| 5 From wave functions to quantum fields | KG, Dirac, photon, massive bosons | covered | cft/ sec-fields; dirac/ sec-dirac-covariance; qft/ sec-qdm-dirac, sec-qdm-maxwell | Massive vector quantisation: see Williams 6.5 gap |
| 6 QED overview | Lagrangian, S-matrix, Feynman rules, ee→μμ, Compton, g−2 | covered | qft/ sec-qdm-s-matrix, sec-feynman-diagrams; ren/ sec-qed-one-loop | |
| 7 From hadrons to partons | e-p scattering, form factors, DIS, parton model, PDFs | proposed chapter | particle-physics | Not taught |
| 8.1 Quark model | Isospin, strangeness, SU(3) flavour | proposed chapter | particle-physics | Only the Gell-Mann-Nishijima relation is compared in an example in gauge/ sec-smd-generation |
| 8.2 Colour as a gauge theory | SU(3)c, QCD Lagrangian | covered | gauge/ sec-yang-mills, sec-smd-group | |
| 8.3 Perturbative QCD | QCD Feynman rules, colour factors | partly covered → proposed chapter | gauge/ sec-gqn-feynman-rules covers the rules; colour factors and processes → particle-physics | |
| 8.4 Asymptotic freedom | Running of αs | covered | ren/ sec-renormalisation-group | |
| 8.5 Non-perturbative QCD | Lattice, confinement | covered | gauge/ sec-lattice-gauge (sec-lgt-confinement) | Hadronisation and jets → particle-physics |
| 8.6 QCD corrections to partons, hadron colliders | | out of scope | | Collider phenomenology |
| 9.1-9.3 Fermi theory, V−A, W boson, charged and neutral currents | Weak interaction phenomenology | partly covered → proposed chapter | gauge/ sec-smd-electroweak (Fermi constant, muon decay); quantum-field-theory effective theories | V−A structure, Wu experiment and neutral-current phenomenology not taught as a unit |
| 9.4 Neutrinos: oscillations, PMNS | | proposed chapter | particle-physics | PMNS only mentioned in gauge/ sec-smd-ckm; no oscillation formalism |
| 9.5 CP violation | Kaons, classification, quark and lepton sectors | partly covered → proposed chapter | gauge/ sec-smd-ckm (Jarlskog invariant) | Neutral kaon system not taught |
| 10 Electroweak interaction | Weak isospin, hypercharge, unification, gauge-fermion Feynman rules | covered | gauge/ sec-standard-model (sec-smd-group, sec-smd-generation, sec-smd-electroweak) | |
| 11.1-11.5 EW symmetry breaking, BEH mechanism, boson and fermion masses, CKM | | covered | gauge/ sec-higgs, sec-smd-electroweak, sec-smd-ckm | |
| 11.6-11.9 Higgs discovery and measurements | | out of scope | | Experimental |
| 12 The SM and beyond | Successes, g−2, matter-antimatter asymmetry, dark matter, Majorana neutrinos, see-saw | partly covered → proposed chapter | dirac/ sec-dirac-majorana (Majorana fermions) | Neutrino masses and see-saw → particle-physics; dark matter and baryogenesis → cosmology |
| App. A-C Group theory, SU(2), SU(3) | | belongs to fundamentals-of-mathematics-for-physicists | lie-groups-algebras, group-theory | |

### plebanski2024introduction: General Relativity and Cosmology

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 History of relativity | | out of scope | | History |
| 2-9 (Part I) Differential geometry: tensors, covariant derivatives, geodesics, curvature, Riemannian geometry, Killing vectors, Cartan forms | | belongs to fundamentals-of-mathematics-for-physicists | differential-geometry (sec-connections-curvature, sec-flows-killing) | Mathematics; geodesic deviation is used in gr/ sec-einstein-hilbert |
| 7.16, 11 Petrov classification | Algebraic classification of the Weyl tensor | out of scope | | Advanced (starred in the benchmark) |
| 10 Bianchi-type spacetimes | Homogeneous cosmologies | out of scope | | Research-level; the isotropic case goes to cosmology |
| 12.1-12.14 Einstein equations, Hilbert and Palatini derivations, Newtonian limit, perfect fluids, cosmological constant | | covered | gr/ sec-einstein-hilbert, sec-einstein-equations | |
| 12.16 Other gravitation theories | | out of scope | | Beyond GR |
| 12.18 Weak-field approximation | | covered | gr/ sec-grf-gravitational-waves | |
| 13.1-13.5 Maxwell and Einstein-Maxwell equations | | covered | gr/ sec-schwarzschild-flrw (Charged black holes); sr/ sec-sr-electrodynamics | |
| 13.6 Kaluza-Klein theory | | belongs to kaluza-klein-theories | | |
| 14 Spherically symmetric fields | Schwarzschild, Reissner-Nordström, orbits, light deflection, lensing, horizons, interior solution | covered | gr/ sec-schwarzschild-flrw | Maximal extensions are only touched; acceptable at the tutorial's level |
| 15.1-15.2, 15.5 Relativistic hydrodynamics and thermodynamics | | covered | gr/ sec-einstein-hilbert (perfect fluid unit) | |
| 15.3-15.4 Raychaudhuri equation, singularity theorems | | section gap | general-relativity | Not taught |
| 16 Cosmology I: general geometry | Redshift, optical scalars, horizons | proposed chapter | cosmology | |
| 17 Cosmology II: Robertson-Walker | Friedmann equations and solutions, ΛCDM, horizons, inflation | partly covered → proposed chapter | gr/ sec-schwarzschild-flrw (Cosmology unit: FLRW metric, Friedmann equations) | ΛCDM, distances, horizons and inflation → cosmology |
| 18-20 Lemaître-Tolman, Szekeres and related inhomogeneous models | | out of scope | | Research-level monograph material (the benchmark itself says skippable) |
| 21 The Kerr metric | Rotating black holes, ergosphere, Penrose process | section gap | general-relativity | Only mentioned (no-hair remark in charged black holes) |
| 22 GPS | Relativistic effects in navigation | out of scope | | Application; clock effects are in gr/ examples |

### StatisticalMechanics2022: Statistical Mechanics (Pathria and Beale)

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Statistical basis of thermodynamics | Microstates, ideal gas, Gibbs paradox | covered | tsm/ sec-ensembles, sec-partition-functions | |
| 2 Ensemble theory | Phase space, Liouville, microcanonical | covered | tsm/ sec-ensembles; cm/ sec-poisson-brackets (Liouville's theorem) | |
| 3 Canonical ensemble | Partition function, equipartition, virial, oscillators, paramagnetism | covered | tsm/ sec-ensembles, sec-partition-functions | |
| 4 Grand canonical ensemble; phase equilibrium | Fluctuations, phase diagrams, Clausius-Clapeyron | covered | tsm/ sec-ensembles, sec-thermodynamics | |
| 5 Formulation of quantum statistics | Density matrix, quantum ensembles | section gap | thermodynamics-statistical-mechanics | The density operator appears only in sec-thermal-circle; mixed states and the density matrix are not taught |
| 5.6 Eigenstate thermalisation hypothesis | | out of scope | | Research topic |
| 6 Simple gases | Occupation numbers, molecules with internal motion, chemical equilibrium | partly covered / section gap | tsm/ sec-partition-functions; gap: thermodynamics-statistical-mechanics | Rotational and vibrational partition functions of diatomic gases and chemical equilibrium are not taught |
| 7 Ideal Bose systems | BEC, blackbody, phonons | covered | tsm/ sec-quantum-statistics | Helium II excitations are out of scope (condensed matter) |
| 8 Ideal Fermi systems | Fermi gas, Pauli and Landau magnetism, white dwarfs | partly covered | tsm/ sec-quantum-statistics | Degenerate stars (white dwarfs, Chandrasekhar limit) are a section gap of thermodynamics-statistical-mechanics |
| 9 Thermodynamics of the early universe | Thermal history, nucleosynthesis, recombination | proposed chapter | cosmology | |
| 10 Cluster expansions | Virial expansion of interacting gases | section gap | thermodynamics-statistical-mechanics | Van der Waals gas is taught phenomenologically only |
| 11 Interacting systems via quantised fields | Imperfect Bose and Fermi gases, superfluidity, Fermi liquids | out of scope | | Condensed-matter many-body theory |
| 12 Phase transitions: criticality, universality, scaling | Landau theory, mean field, exponents, correlations | covered | tsm/ sec-landau-theory | |
| 13 Exact results | 1D and 2D Ising, spherical model | partly covered | tsm/ sec-landau-theory (Onsager comparison example); gauge/ sec-lattice-gauge (Ising duality) | 1D transfer-matrix solution taught via examples only; acceptable |
| 14 Renormalisation group approach | Block spins, fixed points, finite-size scaling | covered | ren/ sec-wilsonian-rg | |
| 15 Fluctuations and non-equilibrium | Brownian motion, Langevin, Fokker-Planck, Wiener-Khintchine, fluctuation-dissipation, Onsager relations | proposed chapter | nonequilibrium-statistical-mechanics | Not taught anywhere; needs at least two sections |
| 16 Computer simulations | Monte Carlo, molecular dynamics | partly covered | tsm/ sec-landau-theory (Curie-Weiss Monte Carlo); gauge/ sec-lgt-monte-carlo | Molecular dynamics is out of scope |

## Proposed chapters

| Slug | Title | Position (after) | Depends on | Zotero sources | Reason (benchmarks and size) | Decision |
|---|---|---|---|---|---|---|
| particle-physics | Particle physics | renormalisation | gauge-theories, quantum-field-theory, renormalisation, dirac-equation | paganini2023fundamentals ch. 7-9, 12; williams2023introduction ch. 5 | A chapter in two benchmarks (Williams ch. 5, Paganini ch. 7-9). Needs at least four sections: hadrons and the quark model, QCD processes and partons, weak interactions and CP violation, neutrino masses and oscillations. The Standard Model section of gauge-theories gives the Lagrangian but not the phenomenology. Scope is borderline: the landing page names gauge theories but not particle physics | approved (owner, 2026-11-17) |
| cosmology | Cosmology | general-relativity | general-relativity, thermodynamics-statistical-mechanics | plebanski2024introduction ch. 16-17; StatisticalMechanics2022 ch. 9; emam2021covariant ch. 5 (Cosmological spacetimes) | A whole chapter in two benchmarks (Plebański ch. 16-17, Pathria ch. 9). The GR chapter has one unit (FLRW and the Friedmann equations). Needs at least three sections: Friedmann models and ΛCDM, distances and horizons with inflation, thermal history. Scope is borderline: the landing page names general relativity but not cosmology | approved (owner, 2026-11-17) |
| nonequilibrium-statistical-mechanics | Fluctuations and non-equilibrium statistical mechanics | thermodynamics-statistical-mechanics | thermodynamics-statistical-mechanics, classical-mechanics | StatisticalMechanics2022 ch. 15; cufaropetroni2020probability (stochastic processes) | In the landing-page scope (statistical mechanics). A chapter in one benchmark, but it needs at least two sections: Brownian motion with the Langevin and Fokker-Planck equations, and linear response with the fluctuation-dissipation theorem and the Onsager relations. The existing chapter is equilibrium only. The mathematics of stochastic processes belongs to fundamentals-of-mathematics-for-physicists (probability) | approved (owner, 2026-11-17) |

## Section gaps

| Existing chapter | Missing topic | Benchmarks |
|---|---|---|
| quantum-mechanics | Identical particles: symmetrisation postulate, Pauli exclusion principle, exchange, scattering of identical particles | zettili2009quantum ch. 8, 11.5; williams2023introduction 4.1.9 |
| quantum-mechanics | Time-dependent perturbation theory: transition probabilities, Fermi's golden rule, adiabatic and sudden approximations, absorption and spontaneous emission, dipole selection rules | zettili2009quantum ch. 10; paganini2023fundamentals 3.3 |
| quantum-mechanics | Tensor operators and the Wigner-Eckart theorem | zettili2009quantum 7.4 |
| thermodynamics-statistical-mechanics | Density matrix and quantum ensembles (mixed states) | StatisticalMechanics2022 ch. 5 |
| thermodynamics-statistical-mechanics | Interacting gases: cluster and virial expansions | StatisticalMechanics2022 ch. 10 |
| thermodynamics-statistical-mechanics | Gases with internal degrees of freedom (diatomic molecules) and chemical equilibrium | StatisticalMechanics2022 ch. 6.5-6.6 |
| thermodynamics-statistical-mechanics | Degenerate stars: white dwarfs and the Chandrasekhar limit | StatisticalMechanics2022 8.5 |
| quantum-field-theory | Källén-Lehmann spectral representation | williams2023introduction 7.2 |
| quantum-field-theory | LSZ reduction formula (scalars, fermions, photons) | williams2023introduction 7.5 |
| quantum-field-theory | Quantisation of the massive vector (Proca) field | williams2023introduction 6.5; paganini2023fundamentals 5.5 |
| general-relativity | The Kerr metric: rotating black holes, ergosphere, Penrose process | plebanski2024introduction ch. 21 |
| general-relativity | Raychaudhuri equation and singularity theorems | plebanski2024introduction 15.3-15.4 |
