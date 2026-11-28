# Reading notes: Complexity Science

Reading notes for the Complexity Science tutorial (change `complexity-and-system-design-tutorials`), kept here until
the owner approves writing them to Zotero as `tutorial-reading-note` child notes (design C7, bibliography spec). One
section per chapter, then one entry per source: the Zotero item and attachment, the citation key used in
`references/references.bib`, how the pages were read, the parts used and where, and the problems adapted. Book page
numbers are the printed ones; the offset to the PDF page is given for each book.

## Chapter 1: complex-systems-and-emergence (pilot, task 5.1, 2026-11-22)

Read with `pdftotext -layout` from `~/Zotero/storage` (read-only). Sections of the chapter:
§1 `sec-what-is-a-complex-system`, §2 `sec-levels-and-emergence`, §3 `sec-models-and-their-purposes`,
§4 `sec-randomness-chaos-prediction`.

### Jensen, *Complexity Science: The Study of Emergence* (2023)

- Zotero `IR5YQZEM`, PDF `6MWNDKQZ`; key `jensenComplexityScienceStudy2023`; tagged `textbook` in the bib.
- PDF page = printed page + 22. Read pp. 3-86 (Part I) in full; Ch. 4 and the exercises of Chs. 1-3.
- Used:
  - Ch. 1 (pp. 5-18): working definition of emergence (summary box p. 18: "Emergence denotes the occurrence of
    properties or phenomena at the aggregate level, which the individual parts do not possess"); Sec. 1.1 ideal gas
    pressure is not emergent (pp. 9-10), Schelling segregation (pp. 11-12), normal distribution not emergent (p. 14);
    Sec. 1.2 Weaver, Anderson, weak and strong emergence (pp. 15-17). In chapter intro, §1 intro,
    `def-complex-system` prose, `exm-interacting-ideal-gas`, `exm-interacting-schelling`, `prp-additive-fluctuations`
    commentary, `def-emergent-property` and its prose, `exm-emergent-pressure-not`, `exm-emergent-bell-curve`.
  - Ch. 2 (pp. 21-45): Sec. 2.1 branching scale (p. 24-25, not used yet), Sec. 2.2 centre of mass and rigidity
    (pp. 26-28) in `exm-coarse-centre-of-mass`, `exm-emergent-rigidity`; Secs. 2.4-2.5 evolutionary diffusion and
    breaking of symmetry (pp. 33-35) in the order-parameter unit, `exm-order-evolutionary-diffusion`, `exm-order-vicsek`.
  - Ch. 3: Sec. 3.1 Ising model (pp. 48-52) in `exm-interacting-ising`; Sec. 3.3 synchronisation (`exm-emergent-sync`);
    Sec. 3.4 Tangled Nature (`exm-complex-tangled-nature`); Sec. 3.5 mean-field modelling (pp. 64-69) in
    `exm-minimal-mean-field`.
  - Ch. 4 (pp. 75-82): O'Keeffe-Einstein propositions P1-P3 (pp. 75-76), Ising, Schelling, Bak-Sneppen vs Tangled
    Nature (pp. 78-82) in §3 intro, `exm-minimal-ising`, `exm-minimal-schelling`, `exm-minimal-bak-sneppen`,
    `exr-minimal-bak-sneppen`, `exm-minimal-catalogue`.
  - Sec. 9.5.2 information-theoretic emergence, cited for `exm-emergent-causal` (by section only; to be read with the
    information chapter).
- Problems adapted: Ch. 1 Project 3 (pressure as emergent?) underlies `exr-emergent-classify`; Ch. 2 Exercise 8 (zoology
  of emergence) underlies the examples of `def-emergent-property`. No numbered problem is reproduced.

### Thurner, Hanel and Klimek, *Introduction to the Theory of Complex Systems* (2018)

- Zotero `233Q4D2M`, PDF `YSNMV9AR`; key `thurnerIntroductionTheoryComplex2018`; `textbook`.
- PDF page = printed page + 13. Read pp. 6-9 (Secs. 1.2.5-1.2.7) and pp. 21-26 (Secs. 1.4.1-1.5.2).
- Used: Sec. 1.2.6 list of extensions to physics and the definition "the quantitative, predictive and experimentally
  testable science of generalized matter interacting through generalized interactions" (pp. 7-8); Sec. 1.5 ten facts,
  "complex systems are co-evolving multilayer networks" (pp. 21-23), the bank network and the gender non-example
  (pp. 23-24, Fig. 1.4); Sec. 1.5.1 co-evolution equations (1.1) and "systems that can be described with the first
  equation alone are not called complex" (pp. 24-25), footnote 4 on time-scale separation. In §1 intro,
  `def-interacting-system`, `def-complex-system` and its prose, `exm-interacting-banks`, `exm-complex-banks`,
  `exm-complex-time-scales`, `exm-complex-schelling`. Sec. 4.8.7 co-evolving voter model cited for
  `exm-complex-coevolving-voter` (from the coverage record's TOC; to be read with dynamics-on-networks).

### Charbonneau, *Natural Complexity: A Modeling Handbook* (2017)

- Zotero `VY9ARINT`, PDF `RNV4L6HW`; key `charbonneauNaturalComplexityModeling2017`; `textbook`.
- PDF page = printed page + 17. Read pp. 1-17 (Ch. 1).
- Used: Sec. 1.1 characterisation "many (relatively) simple individual elements interacting locally" (p. 2); Sec. 1.2
  classroom of 10^28 molecules, density in discs eq. (1.1), Fig. 1.1, scale separation (pp. 4-10); Sec. 1.3 logistic
  map and "chaos is not complexity" (pp. 10-13); Sec. 1.4 open dissipative systems (pp. 13-15, background only);
  Sec. 1.5 simple models (pp. 16-17). In §1 and §2 intros, `exm-coarse-density` and `fig-micro-macro-density`
  (recomputed with 10^6 points), `exr-coarse-density-spread`, `exm-fluct-classroom`, `exm-fluct-density-scale`,
  `exm-interacting-logistic`, `exm-minimal-natural-complexity`, §4 intro, `exm-logistic-not-complex`.
- Ch. 6 (Game of Life) cited via Downey instead; Ch. 2.5 and Ch. 12 (mapped to §2 in the coverage record) not used in
  this version: the emergence examples came from Jensen and Downey.

### Downey, *Think Complexity*, 2nd ed. (2018)

- Zotero `RAZCXVNF`, PDF `2FIW8VKJ`; key `downeyThinkComplexity2018`; `textbook`.
- The PDF is an e-book without printed page numbers; citations use chapters. Read Ch. 1 in full, Ch. 8 section
  "Reductionism and Holism", Ch. 9 section "Emergence".
- Used: Ch. 1 Schelling explanation, the axes of models, predictive vs explanatory (§3 intro, `exm-minimal-purposes`,
  `exm-minimal-axes`, `exm-interacting-schelling`, `exm-minimal-schelling`); Ch. 8 holistic modelling steps
  ("identify the elements of the model that are necessary and sufficient") behind `def-minimal-model`; Ch. 9 definition
  "an emergent property is a characteristic of a system that results from the interaction of its components, not from
  their properties" behind `def-emergent-property`, `exm-emergent-segregation`; Ch. 6 Game of Life and gliders
  (`exm-interacting-life`, `exm-emergent-glider`).

### Datseris and Parlitz, *Nonlinear Dynamics: A Concise Introduction Interlaced with Code* (2022)

- Zotero `M6MW7EAC`, PDF `PW4T2U9L`; key `datserisNonlinearDynamicsConcise2022`; `textbook`.
- PDF page = printed page + 8. Read pp. 194-196 (Sec. 12.1).
- Used: Sec. 12.1 errors beyond the linear regime, sparse state space, logistic transport eq. (12.1), multiple scales
  (`exm-lyapunov-transport`, §4 intro, Lyapunov unit intro). Ch. 3 (Lyapunov exponents, tent map) cited by chapter for
  `exm-lyapunov-tent`; to be read in full with nonlinear-dynamics-and-chaos.

### Gros, *Complex and Adaptive Dynamical Systems: A Primer*, 4th ed. (2015)

- Zotero `6HH9Y9SR`, PDF `U9F6TD42`; key `grosComplexAdaptiveDynamical2015`; `textbook`.
- PDF page = printed page + 17. Read pp. 70-72 (Sec. 2.4).
- Used: Sec. 2.4 logistic map, iterated bifurcations, r_infinity = 3.5699456, the maximal Lyapunov exponent eq. (2.51),
  Fig. 2.19 (orbit diagram with Lyapunov exponent), routes to chaos. In §4, `exm-logistic-period-four`,
  `exm-lyapunov-curve`, the Lyapunov unit intro and `fig-logistic-bifurcation` (recomputed).

### Bertin, *Statistical Physics of Complex Systems*, 3rd ed. (2021)

- Zotero `Z7B3XQLB`, PDF `KDKI5MLF`; key `bertinStatisticalPhysicsComplex2021`; `textbook`.
- PDF page = printed page + 12 in Ch. 8 (the offset is 13 in Ch. 4). Read pp. 235-237, 244-247 (Secs. 8.1.1, 8.1.4,
  8.1.5) and pp. 142-146 (Sec. 4.3).
- Used: Sec. 8.1.1 LLN and CLT for global observables; Sec. 8.1.4 correlated variables and the box argument N =
  (L/xi)^D; Sec. 8.1.5 coarse-graining and the law of large numbers; Sec. 8.1.2 infinite variances (cited for
  `exm-fluct-heavy-tails`). In §2 intro, `prp-additive-fluctuations` commentary, `exm-fluct-blocks`. Sec. 4.3 the
  two-store decision model, mean-field equation dm/dt = am - bm^3, symmetry breaking: `exm-order-stores`,
  `exr-order-pitchfork`, §3 mean-field unit intro. Sec. 1.4.1 fully connected Ising (from the TOC) for
  `exm-interacting-curie-weiss`.

### Satz, *More than the Sum of the Parts* (2022)

- Zotero `RZCHVTVQ`, PDF `GGPQ469X`; key `satzMoreSumParts2022`; not tagged `textbook` (a narrative book).
- PDF page = printed page + 11. Read pp. 1-4 (Ch. 1) and pp. 85-91 (Ch. 10).
- Used: Ch. 1 reduction and recombination, simple vs complex (pp. 1-4); Ch. 10 simple, complex, chaotic (p. 85),
  the rabbits on an island with k = 0.75, 2, 2.5, 3.2, 3.5 (pp. 87-90), the doublings k_2 = 3.45, k_3 = 3.54,
  k_4 = 3.56, k_infinity = 3.56995 and Feigenbaum's delta (pp. 90-91). In §4 intro, `exm-logistic-r2`,
  `exm-logistic-r25`, `exm-logistic-extinction`, `exm-logistic-r32`, `exm-logistic-period-four`,
  `exm-logistic-feigenbaum`, `exm-minimal-logistic`.

### Physics and mathematics tutorials (cross-tutorial links, not references)

- Thermodynamics and statistical mechanics: `sec-landau-theory`, `def-order-parameter`, `def-mean-field-theory`,
  `prp-curie-weiss-exact` (linked, not restated).
- Probability: `thm-chebyshev-inequality`, `thm-weak-law-large-numbers`.

## Chapter 2: nonlinear-dynamics-and-chaos (task 6.1, 2026-11-23)

Read with `pdftotext -layout` from `~/Zotero/storage` (read-only) and the Zotero tools (outline, citation keys). Sections:
§1 `sec-flows-maps-stability`, §2 `sec-bifurcations`, §3 `sec-limit-cycles`, §4 `sec-period-doubling`,
§5 `sec-lyapunov-strange-attractors`, §6 `sec-intermittency`. Section gaps of the coverage record treated as remarks or examples:
delay equations (`exm-flow-mackey-glass`, `exr-flow-mackey-glass-fixed-point`, `exm-hopf-delay`, `exr-hopf-mackey-glass`), slow-fast
systems (`exm-pb-relaxation`, `exr-pb-slow-fast`, `exm-volume-van-der-pol`), ergodicity (`exm-strange-density`,
`exm-strange-ergodic-exponent`, `exm-strange-non-ergodic`, `exr-strange-time-average`, `exr-strange-breaking`). Fractal dimensions
(Datseris 5.3) and delay embedding (Datseris 6) are left to fractals-and-scaling and time-series-and-model-discovery.

### Datseris and Parlitz, *Nonlinear Dynamics* (2022)

- Zotero `M6MW7EAC`, PDF `PW4T2U9L`; key `datserisNonlinearDynamicsConcise2022`; `textbook`. PDF page = printed page + 8.
- Read Ch. 1 (pp. 1-19), Ch. 2 (pp. 21-36), Ch. 3 §§3.1-3.2.3 (pp. 37-44), Ch. 4 (pp. 53-70) in full.
- Used: Sec. 1.1 flows, maps, Lorenz-63 eq. (1.5), invariant sets (§1 intro, `def-flow-map`, `exm-flow-*`); Sec. 1.4 Jacobian,
  linearised dynamics, Hartman-Grobman (`prp-linearised-stability` intro, `exm-linstab-marginal`); Sec. 1.5 dissipation, attractors,
  basins, conservative systems (`def-attractor`, `prp-volume-contraction`); Sec. 1.6 Poincaré section (`def-poincare-map`);
  Sec. 2.1.3 energy-balance bistability (`exm-attractor-snowball`); Sec. 2.2 Brusselator eq. (2.3)-(2.5), limit cycles, trapping
  regions, FitzHugh-Nagumo Fig. 2.4 (`exm-linstab-brusselator`, `exm-hopf-brusselator`, `exm-pb-*`); Sec. 2.3 Poincaré-Bendixson;
  Sec. 2.4 quasiperiodicity (`exm-pb-torus`, `exr-pb-quasiperiodic`); Ch. 3 sensitive dependence, largest exponent, predictability,
  spectrum, QR algorithm, properties (zero exponent, sum) (`def-lyapunov-spectrum` and its examples); Sec. 4.1 bifurcations,
  hysteresis, local and global, crisis Fig. 4.4 (`def-bifurcation`, `exm-bifurcation-crisis`, `exm-attractor-henon-basin`);
  Sec. 4.2 orbit diagrams; Sec. 4.3.1 period doubling, Feigenbaum, Rössler Lorenz map (`def-period-doubling`); Sec. 4.3.2
  intermittency, map (4.5) and Fig. 4.8 (`sec-intermittency`, `fig-intermittency`).
- Problems adapted: Exercises 1.3, 1.4 (`exr-volume-henon-conservative`, `exr-volume-lorenz-condition`), 1.12
  (`exr-linstab-lorenz-origin`, `exr-linstab-lorenz-hurwitz`), 1.15-1.16 (`exr-flow-duffing`, `exm-attractor-duffing-basins`), 1.19
  (`exm-attractor-lorenz84`), 2.2 (`exr-pb-brusselator`), 2.5-2.6 (`exr-pb-lotka-volterra-invariant`), 3.4 (`exr-spectrum-benettin`),
  4.1 (`exr-bifurcation-datseris-41`), 4.3 (`exr-bifurcation-imperfect`), 4.4 (`exm-hopf-van-der-pol`), 4.11 (`exr-pd-accumulation`),
  4.12 (`exm-pd-sine-map`, `exr-pd-ricker`), 4.14 (`exr-pd-chain-rule`), 4.16-4.17 (`exr-channel-logistic-scaling`,
  `exm-channel-scaling`).
- App. A (Benettin) read when the chapter was resumed (pp. 211-214): perturbation ODE (A.1)-(A.3), volume growth of
  k-parallelepipeds, QR decomposition, eqs. (A.4)-(A.5) (`def-lyapunov-spectrum` intro, `exr-spectrum-benettin`).

### Gros, *Complex and Adaptive Dynamical Systems*, 4th ed. (2015)

- Zotero `6HH9Y9SR`, PDF `U9F6TD42`; key `grosComplexAdaptiveDynamical2015`. PDF page = printed page + 17.
- Read Secs. 2.2-2.3 (pp. 49-60), 2.5 (pp. 72-75, opening), 3.1.1-3.1.3 (pp. 79-86); on resuming, Sec. 2.1 (pp. 43-48: the
  non-linear rotator, fixpoints, limit cycles, the definition of a bifurcation) and Sec. 2.4 (pp. 66-72: logistic map, period-2
  fixpoints, the cascade r_n, Lyapunov exponent eqs. (2.50)-(2.51)), which the section introductions cite.
- Used: fixpoints and Jacobian, classification (`exm-linstab-*`); normal forms eqs. (2.19), (2.22), (2.26)-(2.27) and potentials
  (`exm-bifurcation-*`, `fig-normal-forms`); Hopf normal form eq. (2.28), the coefficient formula and Bautin eq. (2.31)
  (`prp-hopf-normal-form`, `exm-hopf-coefficient`, `exm-hopf-bautin`); linear delay equation eq. (2.54)
  (`exr-flow-mackey-glass-fixed-point`, `exm-hopf-delay`); damped pendulum eq. (3.3), phase-space contraction eq. (3.4), Lorenz model
  eqs. (3.7)-(3.9) (`exm-volume-*`, `exm-linstab-pendulum`); van der Pol as adaptive system eq. (3.12) (`exm-volume-van-der-pol`).

### Dilão, *Dynamical System and Chaos* (2023)

- Zotero `WLQWPSKV`, PDF `P46EGBLW`; key `dilaoDynamicalSystemChaos2023`; new bib entry (`textbook`).
- Read the TOC, Sec. 3.1 (pp. 63-66), Theorems 1.23, 4.8, 4.15, 4.21, 4.22 and Example 4.23 (pp. 122-130), Sec. 5.1 (pp. 137-139).
- Used: Hartman-Grobman (Theorem 1.23), Oseledets (Theorem 4.8), saddle-node/pitchfork/transcritical conditions (Theorems 4.15,
  4.21, 4.22) behind `prp-one-dim-bifurcations`; Lorenz pitchfork at rho = 1 (Example 4.23); Lorenz threshold rho_H = 24.7368 and
  dissipativity (Sec. 3.1) for `exm-linstab-lorenz-c`; Poincaré-Bendixson Lemmas 5.2-5.3, Theorem 5.4, Corollary 5.5 and the
  Liénard example 5.6 (`thm-poincare-bendixson`, `exm-pb-van-der-pol`).
- Read on resuming, to back the section locators: Secs. 1.1-1.5 (pp. 3-31; existence, blow-up Example 1.5, group property Example
  1.6, Lyapunov stability, maps and periodic points Definitions 1.15-1.18, classification, Poincaré maps Definition 1.24 and Examples
  1.25-1.27) for §1 and §3; Sec. 3.2 (pp. 68-79; invariant measures Definition 3.3, ergodicity, Example 3.4 on the Lorenz
  equations, Feigenbaum's delta = 4.669201 and alpha, Table 3.1) and Sec. 3.3 (pp. 79-83; Singer's theorem, Sarkovskii) for §4;
  Sec. 3.4 (pp. 83-85; the Feigenbaum attractor, the Hénon map as fold, contraction and flip, Jacobian -b, fixed points (3.13) and
  their eigenvalues) and Secs. 4.1-4.2 (pp. 105-121; horseshoe, Definition 4.6 of chaos, Lyapunov exponents of the Hénon map
  Examples 4.7 and 4.11) for §5; Sec. 4.4 (pp. 132-133; normal forms of the saddle-node, flip, transcritical and pitchfork
  bifurcations of maps, discrete Hopf) for §2 and §4; Sec. 5.3 (pp. 145-147; type I intermittency of 4 mu x (1 - x) near
  mu_3B = 0.9571067, ln N = c - (1/2) ln eps, types II and III, Example 5.7) for §6. The References entry, which had listed
  Secs. 6.1-6.3 without any in-text use, now lists only the sections cited in the text.

### Jensen, *Complexity Science* (2023)

- Zotero `IR5YQZEM`, PDF `6MWNDKQZ`. Read Sec. 12.3 (pp. 379-382).
- Used: tangent-map intermittency, eqs. (12.35)-(12.40), T = pi / sqrt(eps beta), Tangled Nature link (`prp-channel-passage`, §6).

### Lindgren, *Information Theory for Complex Systems* (2024)

- Zotero `AXCCURNB`, PDF `J3EYSWSK`; key `lindgrenInformationTheoryComplex2024`; new bib entry (`textbook`).
- Read Secs. 8.1.3-8.1.4 (pp. 135-137). Used: Lyapunov exponent as time and ergodic average, eq. (8.6), and as information flow
  (`exm-spectrum-information`, `exm-strange-ergodic-exponent`, `exr-spectrum-bits`).

### Thurner, Hanel and Klimek (2018)

- Read Sec. 6.3.1 (p. 350, opening). Used: complex systems as non-ergodic (`exm-strange-non-ergodic`, `exr-strange-breaking`).

### Satz (2022), Charbonneau (2017), Bertin (2021)

- As read for chapter 1: Satz Ch. 10 (doublings), Charbonneau Sec. 1.3, Bertin Sec. 4.3 (decision model, `exm-onedim-decision`).

### Strogatz (2015)

- Metadata only (no PDF); not cited.

## Chapter 3: random-processes (task 6.1, 2026-11-27)

Read with `pdftotext -layout` from `~/Zotero/storage` (read-only); keys and item numbers checked with the Zotero tools
(nothing written to Zotero). Sections: §1 `sec-random-walks-first-passage`, §2 `sec-markov-chains`, §3
`sec-master-equation`, §4 `sec-branching-processes`, §5 `sec-heavy-tails`, §6 `sec-levy-flights`, §7 `sec-path-dependent`.
By the owner's decision the coverage plan's §3 (Langevin, Fokker-Planck, Ornstein-Uhlenbeck) and §4 (escape, stochastic
resonance) are not written: they are linked to the physics tutorial's `nonequilibrium-statistical-mechanics` chapter
(still a placeholder). Lévy flights became a section of their own; multiplicative and preferential processes (mapped to
fractals-and-scaling §3 in the coverage record) appear in §7 only as the mechanism of path-dependent growth, with the
proof for a two-valued factor with a floor; the general mechanisms of power laws are left to fractals-and-scaling.

### Jensen, *Complexity Science* (2023)

- PDF page = printed page + 22. Read Ch. 5 in full (pp. 93-109), Sec. 10.1 (pp. 280-283), Sec. 10.2 (pp. 293-296), Sec.
  10.7 (pp. 313-316) and the exercises of Sec. 10.9 (pp. 319-321).
- Used: Box 5.1 random sums eqs. (5.3)-(5.17) (`exr-gw-compound`, `exr-gw-generating-moments`); eqs. (5.18)-(5.26)
  generation sizes and mean (`def-galton-watson`, `thm-extinction-probability`); Fig. 5.3 (`fig-branching-extinction`);
  eqs. (5.27)-(5.36) total progeny (`prp-total-progeny`, `exr-progeny-mean`); eq. (5.28), stated there without proof, with
  k_0 ~ (1 - mu)^-2 (`exm-progeny-cutoff`, derived here for Poisson offspring); eqs. (5.37)-(5.42) time to extinction
  (`exm-extinct-critical`, `exm-extinct-subcritical`, `exr-extinct-critical-rate`, made rigorous); Sec. 5.2 tree as a
  random walk eq. (5.43) (`exm-progeny-walk`); Exercises 1-3 of Sec. 5.4 (`exr-heavy-normalise`, `exr-heavy-moments`,
  `exr-heavy-scale-free`, `exm-gw-affine`, `exr-gw-affine`, `exm-gw-geometric`, `exr-gw-geometric`,
  `exr-extinct-geometric`). Sec. 10.1 eqs. (10.1)-(10.4) (`exm-firstret-paths`); Sec. 10.2 first passage by images, eqs.
  (10.52)-(10.61) (`exm-firstret-continuum`, `exr-firstret-continuum-limit`); Sec. 10.7 master equation, Glauber rates and
  detailed balance eqs. (10.114)-(10.119) (`exm-mconv-glauber`, `exm-mconv-metropolis`, `exm-master-glauber`,
  `exm-bdeath-potential`); Sec. 10.9 Exercise 4 telegraph signal (`exm-master-two-state`, `exr-master-telegraph`).
- Misprint found: eq. (10.60) has (Dt)^{3/2} in the denominator; normalisation requires D^{1/2} t^{3/2} (the integral of
  the printed density is 1/D). The chapter uses the corrected form and says so.

### Thurner, Hanel and Klimek (2018)

- PDF page = printed page + 13. Read Sec. 2.1.1 (pp. 34-35), Secs. 2.3.2-2.4.1 (pp. 59-69), Secs. 2.5-2.5.3 (pp.
  75-86), Secs. 3.3.3-3.3.4 (pp. 106-110) and Sec. 6.6.1.1 (pp. 383-385).
- Used: stable processes eqs. (2.37)-(2.44), Lévy flights Sec. 2.3.2.5 and footnote 12 (`def-stable-law` intro,
  `exm-stable-*`, `def-levy-flight`); Pareto, Zipf, Student distributions Sec. 2.4.1 (`def-heavy-tail`,
  `exm-heavy-zipf`, `exm-heavy-student`); Poisson process Sec. 2.5.1.4 (`exm-master-poisson`); Markov processes and the
  random walk Sec. 2.5.1.5 (`sec-markov-chains` intro, `exm-mchain-ring`); path dependence and non-ergodicity Sec. 2.5.2,
  reinforcement Sec. 2.5.3 (`sec-path-dependent` intro, `exm-polya-nonergodic`, `exm-polya-lock-in`, `exm-mult-gamble`);
  multiplicative processes with constraints eqs. (3.9)-(3.12) and Fig. 3.4 (`prp-multiplicative-process`,
  `exm-mult-cities`, `exr-mult-cities`, `exm-mult-lognormal-test`); preferential processes eqs. (3.13)-(3.17) and Simon's
  model (`exm-mult-preferential`, `exr-mult-preferential`, `exm-polya-simon`, `exr-mult-simon`); the Pólya urn eqs.
  (6.107)-(6.108) (`prp-polya-urn`, `exm-polya-effective`, `exm-polya-colours`, `exm-polya-strong`).
- Thurner's Pareto exponent is the density exponent minus 1 (eq. (2.46)); converted to the tutorial's alpha.

### Gros, *Complex and Adaptive Dynamical Systems* (2015)

- PDF page = printed page + 17. Read Secs. 3.2.1-3.2.2 (pp. 92-98) and 6.5.1-6.5.2 (pp. 200-206).
- Used: diffusion and Lévy flights eq. (3.34), Fig. 3.9 and Table 3.1 (`sec-levy-flights`, `exm-levy-figure`,
  `exm-levy-scaling`, `exr-levy-regimes`, `exm-levy-foraging`); Markov chains, absorbing states, master equation eq.
  (3.37), two-state chain eqs. (3.38)-(3.39), random surfer eq. (3.40) (`def-markov-chain`, `exm-mchain-two-state`,
  `exm-mchain-absorbing`, `exm-mchain-pagerank`, `exm-mconv-pagerank-rate`); branching theory of SOC, binary branching
  eqs. (6.22)-(6.28) (`exm-progeny-avalanches`, `exm-progeny-catalan`); Galton-Watson process eqs. (6.31)-(6.33) and
  Fig. 6.12 (`thm-extinction-probability`, `exm-gw-binary`, `exm-gw-names`, `exm-extinct-binary`).

### Bertin, *Statistical Physics of Complex Systems* (2021)

- Printed pages from the running heads. Read Secs. 2.1.1-2.1.3 (pp. 40-44), 2.4-2.4.2 (pp. 63-67), 2.5.1 (pp. 70-72),
  3.2.1-3.2.3 (pp. 94-99), 8.1.2 (pp. 237-240) and App. B.2 (pp. 262-263).
- Used: Markovian processes and the master equation eqs. (2.1)-(2.12) (`def-master-equation`, `exr-master-limit`,
  `exr-mchain-detailed-balance`); largest events and superdiffusion eqs. (2.106)-(2.120) (`exm-heavy-maximum`,
  `exr-heavy-frechet`, `exm-gclt-largest-term`, `exm-levy-largest-jump`, `exm-levy-scaling`); first return times eqs.
  (2.129)-(2.136) (`prp-first-return`); birth-death processes and queues eqs. (3.20)-(3.27) (`prp-birth-death`,
  `exm-bdeath-queue`, `exr-bdeath-queue-moments`); fully connected absorbing process eqs. (3.35)-(3.39) and Exercise 3.3
  (`exm-master-absorbing`, `exm-bdeath-revived`); generalised central limit theorem eqs. (8.4)-(8.14) and Fig. 8.1
  (`thm-generalised-clt`, `def-stable-law`, `exm-stable-tails`, `exm-gclt-skewness`); Gillespie algorithm App. B.2
  (`exm-master-gillespie`).

### Gusak, Kukush, Kulik, Mishura and Pilipenko, *Theory of Stochastic Processes* (2010)

- Zotero `ALSR5FDK`, PDF `HY944QFF`; key `gusakTheoryStochasticProcesses2010`; new bib entry (`textbook`, a problem book).
- Read Ch. 10, theoretical grounds and Problems 10.1-10.49 (pp. 137-147), and Problems 7.49-7.55 (pp. 85-86).
- Used: Theorems 10.1-10.4 (recurrence criterion, random-walk recurrence, ergodic theorem) and 10.6-10.9 (continuous-time
  chains, Kolmogorov equations) (`thm-markov-convergence` intro, `exm-firstret-dimensions`, `exm-levy-recurrence`,
  `def-master-equation`). Problems adapted: 10.7 (`exm-mchain-gusak-two`, `exr-mchain-path-probabilities`), 10.8 and
  10.16 (`exr-mchain-chapman-kolmogorov`, `exr-mchain-limit`, `exr-mconv-independent-start`), 10.11-10.12
  (`exm-bdeath-gambler`, `exr-bdeath-stake`, `exm-bdeath-biased-gambler`, `exr-bdeath-unfair`), 10.15 (`exr-mconv-kac`),
  10.30 (`exr-firstret-plane`), 10.39 (`exm-mchain-two-classes`, `exr-mconv-reducible`), 10.42 (`exm-mchain-ehrenfest`),
  10.46 (`prp-birth-death`), 7.54 (`exr-gw-martingale`).

### Clauset, Shalizi and Newman, "Power-law distributions in empirical data" (2009)

- Zotero `EVY388V4`, PDF `RPTC7KWZ`; key `clauset2009power`. Read Secs. 1-3.1 (pp. 1-6), Sec. 3.3 (pp. 9-11), the
  outline of Secs. 4-5 and Box 1.
- Used: definition eqs. (1.1)-(2.7) and Table 2.1 (`def-heavy-tail`, `exm-heavy-zipf`, `exm-heavy-ccdf-figure`,
  `exr-heavy-normalise`); MLE eqs. (3.1)-(3.2) (`exr-heavy-mle`, `exr-heavy-standard-error`); least squares App. A
  (`exr-heavy-least-squares`); the lower cut-off by the KS statistic eq. (3.9) and Fig. 3.3 (`exr-heavy-xmin`);
  likelihood-ratio tests Sec. 5 (`exr-heavy-cauchy-fit`, `exr-progeny-cutoff-fit`, `exm-mult-lognormal-test`).

### Argun, Callegari and Volpe, *Simulation of Complex Systems* (2021)

- Zotero `KM792SUI`, PDF `RBT3MGWJ`; key `argunSimulationComplexSystems2021`; new bib entry (`textbook`). Pages are
  numbered by chapter (6-1, ...). Read Ch. 6 opening, Sec. 6.1 (pp. 6-1 to 6-4) and the Lévy walk of Sec. 6.3 (pp. 6-7 to
  6-8).
- Used: anomalous diffusion exponent, ensemble and time-averaged MSD eqs. (6.1)-(6.3), Exercise 6.1, Fig. 6.5
  (`exm-levy-ergodicity`, `exr-levy-brownian-ergodic`); Lévy walk algorithm and Exercise 6.5 (`exm-levy-walk`,
  `exr-levy-walk-exponent`); foraging birds Fig. 6.1 (`exm-levy-foraging`). Ch. 7 (multiplicative noise) is cited in the
  §7 reading list by chapter only.

### Charbonneau, *Natural Complexity* (2017)

- PDF page = printed page + 17. Read App. C.4-C.5 (pp. 325-334).
- Used: exponential and power-law deviates eqs. (C.4)-(C.5) (`exm-master-gillespie`, `exm-heavy-sampling`,
  `exr-levy-sampling`); the classical random walk eqs. (C.8)-(C.20) (§1 reading list).

### Mathematics, machine-learning and physics tutorials (cross-tutorial links, not references)

- Probability: `def-random-walk`, `prp-rw-diffusion-limit`, `thm-central-limit-theorem`, `thm-weak-law-large-numbers`,
  `thm-strong-law-large-numbers`, `def-characteristic-function`, `def-maximum-likelihood`, `exr-pbr-stirling`,
  `sec-random-variables`, `sec-limit-theorems`; sets-relations-topology `thm-contraction-mapping`; complex-analysis
  `def-beta-function`. ML maths `def-markov-property`. Physics `sec-nonequilibrium-statistical-mechanics` (placeholder)
  for Langevin and Fokker-Planck.

## Chapter 4: fractals-and-scaling (task 6.1, 2026-11-27)

Read with `pdftotext -layout` from `~/Zotero/storage` (read-only); nothing written to Zotero. Sections: §1
`sec-self-similarity-dimension`, §2 `sec-fractal-growth`, §3 `sec-scaling-laws`, §4 `sec-measuring-power-laws`, §5 `sec-scaling-in-time`,
§6 `sec-allometric-scaling`, following the coverage plan. Multiplicative and preferential mechanisms (coverage §3) are linked to Chapter 3
(`prp-multiplicative-process`, `prp-polya-urn`) and appear only in examples; the estimator of the exponent, derived in Chapter 3 as an exercise
(`exr-heavy-mle`), is proved here with its exact law (`prp-power-law-mle`). All cited keys already had bib entries.

### Thurner, Hanel and Klimek (2018)

- PDF page = printed page + 13. Read Ch. 3 in full (pp. 93-139), with Problems 3.1-3.10.
- Used: definition of scaling eqs. (3.1)-(3.3) and footnote 2 (log-periodic) (`thm-scale-invariance`, `exm-scaling-log-periodic`); Galileo's bones
  Fig. 3.1 (`exm-scaling-galileo`, `exr-scaling-galileo`, `exm-allometry-galileo`); Table 3.1, Sec. 3.2.1 three distribution functions and eq. (3.4)
  (`def-zipf-law`, `exm-zipf-frequency-distribution`, `exr-zipf-frequency-tail`); multiplicative processes eqs. (3.9)-(3.12) (`exm-zipf-cities`);
  preferential processes and Simon's model eqs. (3.13)-(3.17) (`exm-zipf-simon`, `exr-zipf-simon-meanfield`); SSR processes Secs. 3.3.5.1-3.3.5.5,
  eqs. (3.18)-(3.23), Fig. 3.5 (`prp-ssr-zipf`, all its examples and exercises); other mechanisms eqs. (3.30)-(3.31) (`exm-scaling-random-times`,
  `exm-zipf-typewriting`, `exm-zipf-least-effort`, `exr-zipf-least-effort`); MLE Secs. 3.4.1-3.4.2 eqs. (3.32)-(3.48), Fig. 3.8 (`prp-power-law-mle`,
  `exm-mle-bayes`, `exr-mle-posterior`, `exm-mle-bounded`, `exr-mle-bounded`); Sec. 3.5 self-similarity, Koch curve, dimension eq. (3.49)-(3.52), box
  counting, Fig. 3.11 (§1 intro, `def-box-counting-dimension`, `exm-box-koch`, `exm-box-coastline`, `exm-scaling-dimension`); Sec. 3.5.3 eqs.
  (3.53)-(3.56) (`sec-scaling-in-time`, `exm-hurst-multifractal`, `exm-hurst-heart`, `exr-hurst-moments`); Sec. 3.6 eqs. (3.57)-(3.68), Tables 3.4-3.5,
  Fig. 3.12 (`def-allometric-scaling`, `prp-wbe-quarter-law` and its units).
- Problems adapted: 3.1 (`exr-scaling-solutions`), 3.2 (`exr-scaling-candidates`), 3.3 (`exr-scaling-q-exponential`), 3.6 (`prp-ssr-zipf`(a), proved
  without the differential approximation), 3.7 (`exr-scaling-random-times`), 3.8 (`exr-hurst-moments`), 3.9 (`exr-wbe-volume`), 3.10
  (`exr-wbe-aorta-length`).
- Remarks: the "exact power law" of eq. (3.23) is exact only asymptotically; the exact stationary law is a ratio of Gamma functions
  (`prp-ssr-zipf`(b)). In the WBE derivation the neglected 1 of eq. (3.66) gives the correction factor (1 - n^{-(N+1)/3})^{-3/4} of `prp-wbe-quarter-law`.
  In the PDF text layer Table 3.5 gives the metabolic-rate prediction as "3/3", presumably 3/4 (not used in the chapter).

### Charbonneau, *Natural Complexity* (2017)

- PDF page = printed page + 17. Read Secs. 3.1-3.8 (pp. 53-78), Sec. 4.5 (pp. 98-100) and App. B (pp. 308-320).
- Used: DLA algorithm and representative run, Figs. 3.1-3.3 (`def-diffusion-limited-aggregation`, `exm-dla-cluster`, `exm-dla-tips`,
  `exr-dla-capture-sites`); zoo of aggregates Figs. 3.4-3.5 (`exm-dla-competition`, `exm-dla-density-walkers`); Koch fractal eq. (3.1), Fig. 3.6
  (`exm-box-koch`, `exr-box-koch-length`, `exm-similarity-statistical`); mass-radius Fig. 3.7-3.8 (D = 1.665) and box counting Figs. 3.9-3.11 (D = 1.591)
  (`exm-dla-line`, `exm-dla-square`, `exr-dla-box-counting`); scale invariance Sec. 3.6 and footnote 5 (`exm-dla-scale-range`, `exm-scaling-power`);
  Exercises 3.7.1 and 3.7.3 (`exr-dla-line-square`, `exr-dla-lattice-size`); fitting range of percolation clusters Sec. 4.5 (`exm-csn-finite-size`);
  App. B.3-B.6 eqs. (B.7)-(B.18), Fig. B.3 (`exm-mle-charbonneau`).

### Clauset, Shalizi and Newman (2009)

- arXiv version of the PDF, cited by section and equation. Read Secs. 1-5 (pp. 1-21) and Apps. A-D (pp. 31-37).
- Used: Box 1 (`def-power-law-test`, `exm-csn-recipe`); Sec. 3.1 eq. (3.7) and Fig. B.1 (`exm-mle-discrete`, `exr-mle-discrete`); Sec. 3.3 Fig. 3.3
  (`exm-mle-cutoff`, `exm-csn-cutoff`); Sec. 4.1 semiparametric bootstrap, (1/4)eps^-2 synthetic sets, p > 0.1 (`exm-csn-own-fit`,
  `exm-csn-semiparametric`, `exm-csn-number`, `exr-csn-precision`, `exr-csn-synthetic`); Fig. 4.1a-c (`exm-csn-looks-straight`, `fig-power-law-ccdf`,
  `exr-csn-exponential`, `exr-csn-lognormal`); Sec. 5.1-5.2 and App. C (`exm-csn-ratio`, `exm-csn-nested`, `exr-csn-ratio`, `exr-csn-truncated`);
  App. B.1-B.2, Propositions B.2 and B.4, inverse-gamma law of the estimator (`prp-power-law-mle`, `exm-mle-bias`, `exm-mle-unknown-cutoff`).

### Datseris and Parlitz (2022)

- PDF page = printed page + 8. Read Secs. 5.1.3-5.4.4 and the exercises (pp. 72-86).
- Used: Koch snowflake and fractal dimension Sec. 5.3.1; self-similarity of the Hénon attractor Sec. 5.3.2; box counting Fig. 5.5 (`exm-box-henon`);
  generalised dimension eq. (5.6), correlation sum eq. (5.7), Theiler window Fig. 5.1, Fig. 5.6 (D = 1.22) (`def-correlation-dimension`,
  `exm-correlation-henon`, `exm-correlation-theiler`); Secs. 5.4.2-5.4.3 sample size and noise (`exm-correlation-sample-size`,
  `exr-correlation-high-dimension`, `exm-correlation-noise`, `exr-correlation-noisy-henon`); Kaplan-Yorke dimension eq. (5.9) (`exr-box-kaplan-yorke`).
  Exercise 5.6 (box dimension of the Koch snowflake) underlies `exm-box-koch`.

### Dilão, *Dynamical System and Chaos* (2023)

- Read Sec. 5.2 (pp. 141-144) and Sec. 5.4 (pp. 148-150).
- Used: capacity dimension eq. (5.4), correlation integral eqs. (5.5)-(5.6), Lorenz correlation dimension 2.03 Fig. 5.7, delay reconstruction eq. (5.7)
  and Fig. 5.8 (`exm-correlation-lorenz`, `exr-correlation-embedding`); stochastic function systems eq. (5.9), Examples 5.8-5.9, Fig. 5.12
  (`thm-similarity-dimension` intro, `exm-similarity-cantor`, `exm-similarity-gasket`, `exm-correlation-weighted-cantor`).

### Lindgren, *Information Theory for Complex Systems* (2024)

- Read Sec. 6.2 (pp. 108-112).
- Used: D_T <= D_F <= D_E eq. (6.23), resolution-dependent dimension eqs. (6.24)-(6.26), Mandelbrot's ball of thread, Britain D = 1.25, Koch curve
  eq. (6.27) (`def-box-counting-dimension` remark, `exm-box-ball-of-thread`, `exm-box-coastline`).

### Downey, *Think Complexity* (2018)

- E-book without page numbers. Read Ch. 4 "Heavy-Tailed Distributions" and "Barabási-Albert Model", Ch. 7 "Fractals" and "Fractals and
  Percolation Models".
- Used: rule-18 slope 1.57 (`exm-box-sierpinski`); heavy-tailed degree distributions on log-log axes (`exm-csn-downey`).

### Jensen, *Complexity Science* (2023)

- PDF page = printed page + 22. Read Secs. 10.3-10.4 (pp. 296-306).
- Used: 1/f spectrum of traffic eq. (10.79), switching signal eqs. (10.80)-(10.81) (`exm-hurst-spectrum`, `exm-memory-telegraph`,
  `exr-memory-telegraph`); Hurst exponent eqs. (10.82)-(10.86) (`def-hurst-exponent`); persistent walk eqs. (10.87)-(10.97), Fig. 10.7
  (`exm-hurst-jensen-walk`, `exm-memory-persistent-walk`, `exr-memory-persistent-walk`, `exr-memory-batch-means`); time-dependent H(t)
  (`exm-memory-crossover`).

### Mathematics, physics and Complexity Science links (cross-references, not references)

- Maths: sets-relations-topology `thm-contraction-mapping`, `sec-metric-spaces`; real-analysis `sec-series`, `def-series`; probability
  `def-maximum-likelihood`, `thm-cramer-rao`, `def-confidence-interval`, `thm-strong-law-large-numbers`, `thm-central-limit-theorem`,
  `sec-statistics`; fourier-analysis `def-fourier-transform`. Physics: thermodynamics-statistical-mechanics `def-critical-exponent`.
- Earlier chapters: `def-strange-attractor`, `exm-strange-henon`, `fig-henon-attractor`, `def-lyapunov-spectrum`, `prp-volume-contraction`,
  `sec-period-doubling` (Ch. 2); `def-heavy-tail`, `exr-heavy-mle`, `exr-heavy-standard-error`, `exr-heavy-xmin`, `prp-multiplicative-process`,
  `prp-polya-urn`, `thm-markov-convergence`, `prp-first-return` (Ch. 3); `prp-additive-fluctuations` (Ch. 1).

## Chapter 5: phase-transitions-and-percolation (task 6.1, 2026-11-27)

The Zotero MCP server was unreachable ("Connection refused"); by the coordinator's approval the PDFs were read read-only with `pdftotext -layout` from
`~/Zotero/storage`, attachment folders taken from the bib `zoteropdf` fields. Nothing was written to Zotero. Sections: §1 `sec-ising-monte-carlo`,
§2 `sec-order-and-slowing-down`, §3 `sec-percolation`, §4 `sec-finite-size-scaling`, §5 `sec-absorbing-states`, following the coverage plan (§2 of the plan,
critical points and correlations, is split between the physics tutorial, which states critical exponents, correlation length and Landau theory and is
linked, and §2 here, which proves Peierls' theorem and defines the autocorrelation time). The XY model (coverage section gap) is not written.

### Jensen, *Complexity Science* (2023)

- PDF page = printed page + 22. Read Secs. 6.2-6.6.2 (pp. 119-140).
- Used: Ising Hamiltonian eq. (6.29), mean-field solution eqs. (6.33)-(6.44), Table 6.1, lower and upper critical dimensions (§1 intro, `exm-mc-graph`,
  `exm-peierls-chain`, `exm-peierls-three-temperatures`, `exr-conv-estimate-tc`); response and fluctuations eqs. (6.45)-(6.50) (`exr-mc-heat-capacity`,
  `exr-conv-susceptibility`); correlation function eqs. (6.55)-(6.60), $\tau \propto \xi^z$ (§2 intro, `def-autocorrelation-time`); susceptibility as a sum
  of correlations eq. (6.66); domain walls of the chain Sec. 6.6.2 (`prp-peierls` intro).

### Bertin, *Statistical Physics of Complex Systems* (2021)

- Printed pages from the running heads. Read Secs. 1.4-1.4.3 (pp. 18-27) and 3.2.2 (pp. 95-98).
- Used: fully connected Ising model eqs. (1.83)-(1.95) and switching between $\pm m_0$ (`exm-mc-curie-weiss`, `exm-conv-symmetry`, `exm-autocorr-tunnelling`);
  mean-field approximation eqs. (1.96)-(1.101); RG transform and decimation of the Ising chain eqs. (1.102)-(1.121) (§4 intro, `prp-triangular-rg` intro,
  `exm-rg-ising-chain`, `exr-rg-ising-chain`, `exm-rg-defocusing`); reaction-diffusion model and absorbing transitions eqs. (3.28)-(3.34), DP class, mean-field
  exponents, $d_c = 4$ (`sec-absorbing-states`, `exm-cp-reaction-diffusion`, `prp-mean-field-absorbing`, `exm-mfabs-diffusion`, `exm-mfabs-correlations`).

### Argun, Callegari and Volpe, *Simulation of Complex Systems* (2021)

- Pages numbered by chapter. Read Secs. 2.1-2.3 (pp. 2-1 to 2-7) with Exercises 2.1-2.4.
- Used: Monte Carlo method eq. (2.1), heat-bath update of the Ising model eq. (2.2) and Fig. 2.2, snapshots Fig. 2.3, magnetisation regimes Fig. 2.4
  (`def-spin-flip-dynamics`, `exm-mc-local-field`, `exm-mc-snapshots`, `fig-ising-snapshots`, `exm-conv-heat-bath`). Exercises adapted: 2.2(c)-(d)
  (`exr-mc-paramagnet`), 2.3 (`exr-mc-antiferromagnet`), 2.4 (`exr-mc-three-regimes`, `exr-conv-estimate-tc`).

### Charbonneau, *Natural Complexity* (2017)

- PDF page = printed page + 17. Read Ch. 4 in full (pp. 80-105).
- Used: 1-D percolation eqs. (4.1)-(4.3) (`exm-perc-chain`, `exr-perc-chain-sizes`); 2-D lattices and clusters Secs. 4.2-4.3, Figs. 4.2, 4.5-4.6, eqs. (4.6)-(4.7)
  (`def-site-percolation`, `exm-perc-snapshots`, `exm-perc-strength`, `exr-perc-half`); cluster-size PDFs Figs. 4.7-4.8, $\alpha = 1.85$
  (`exm-perc-size-distribution`, `exr-perc-fisher`); fractal clusters Sec. 4.4; fit ranges Sec. 4.5 (`exm-csn`-type remarks); criticality Sec. 4.6 and
  footnote 5 (`def-finite-size-scaling` intro, `exm-fss-xi-equals-l`). Exercises adapted: 4.7.4 (`exr-perc-box-dimension`), 4.7.6 (`exr-perc-ant`).

### Thurner, Hanel and Klimek (2018)

- PDF page = printed page + 13. Read Sec. 3.3.1 (pp. 101-105).
- Used: criticality, critical exponents eq. (3.6) and Table 3.2, universality, percolation eqs. (3.7)-(3.8) with $\sigma = 36/91$, $\nu = 4/3$
  (`exm-perc-off-critical`, `exm-perc-fractal`, `exm-perc-universality`, `exm-pbound-exponential-decay`, `exm-fss-ising-chi`).

### Downey, *Think Complexity* (2018)

- Read Ch. 7, "Percolation", "Phase Change", "Fractals and Percolation Models".
- Used: percolation CA, spanning probabilities at $q = 0.55, 0.6, 0.65$, random-walk estimate of $q_{\mathrm{crit}} \approx 0.59$, cluster dimension $1.85$
  (`exm-perc-spanning`, `exr-perc-random-walk`, `exm-perc-fire`, `exm-fss-downey`).

### Satz, *More than the Sum of the Parts* (2022)

- Read Ch. 3 (pp. 21-26).
- Used: continuum percolation of coins, critical filling and the $32\%$ empty share, site percolation as a forest fire, bond threshold $\frac12$
  (`exm-perc-continuum`, `exr-perc-uncovered`, `exm-perc-fire`, `exr-perc-bond`).

### Gros, *Complex and Adaptive Dynamical Systems* (2015)

- PDF page = printed page + 17. Read Sec. 6.4.1 (pp. 198-199).
- Used: absorbing and active states of the conserved sandpile, Fig. 6.9, self-organisation towards the critical density (`exm-cp-sandpile`,
  `exr-cp-sandpile-threshold`).

### Böttcher and Herrmann, *Computational Statistical Physics* (2021)

- Key `bottcherComputationalStatisticalPhysics2021` (Zotero EPSUIJ5B, PDF IJX33AMY; read with pdftotext, read-only). Read Sec. 2.3 (pp. 24-33), Secs. 5.3-5.4
  (pp. 85-89) and Sec. 11.1 (pp. 127-129).
- Used as the source of quoted constants only: percolation $\beta = 5/36$ (Fig. 2.8), $\tau = 187/91$, $\sigma = 36/91$ (eqs. 2.2-2.3), $\gamma = 43/18$ (eq. 2.5),
  $\nu = 4/3$ (eq. 2.10), $d_f = 91/48$, 3-D $\tau = 2.1892(1)$, $d_f = 2.5226(1)$; Ising Metropolis $z_\sigma = 2.166(7)$ (eq. 5.9) and cluster algorithms
  against critical slowing down; Binder cumulant limits (eqs. 5.14-5.19, no numerical value at $T_c$); contact-process rates $\lambda n_i/(2d)$ (eq. 11.1),
  Table 11.1 ($\lambda_c$ = 3.2978, 1.64872, 1.31683 in $d$ = 1, 2, 3; $\beta$ = 0.2767, 0.580, 0.818; $\delta$ = 0.15944, 0.4510, 0.7398), DP $p_c = 0.6447$
  in 1+1 (Fig. 11.1), the Janssen-Grassberger conjecture (p. 129).

### Physics, mathematics and Complexity Science links (cross-references, not references)

- Physics thermodynamics-statistical-mechanics: `sec-ensembles`, `def-canonical-ensemble`, `prp-ensemble-identities`, `sec-landau-theory`, `def-critical-exponent`,
  `def-correlation-length`, `prp-curie-weiss-exact`, `exm-tsb-metropolis-two-state`, `exm-tsb-lattice-gas`, `exm-lan-onsager`, `exm-crl-susceptibility-sum`,
  `exm-crl-ising-chain`, `exr-tsb-chain-percolation`, `exm-tsb-cayley-threshold`, `exr-tsb-cayley-exponents`; renormalisation `sec-wilsonian-rg`.
- Earlier chapters: `thm-markov-convergence`, `exr-mchain-detailed-balance`, `exm-mconv-metropolis`, `prp-birth-death`, `sec-markov-chains`,
  `sec-master-equation`, `sec-branching-processes`, `thm-extinction-probability` (Ch. 3); `def-bifurcation`, `prp-one-dim-bifurcations` (Ch. 2);
  `prp-variance-of-sums`, `exm-memory-persistent-walk`, `thm-scale-invariance`, `exm-scaling-two-variables`, `def-box-counting-dimension`,
  `sec-measuring-power-laws`, `sec-scaling-laws` (Ch. 4).

## Chapter 6: cellular-automata (task 6.1, 2026-11-27)

PDFs read read-only with `pdftotext -layout` from `~/Zotero/storage` (attachment folders from the bib `zoteropdf` fields); nothing written to Zotero.
Sections: §1 `sec-elementary-ca`, §2 `sec-life`, §3 `sec-universality`, §4 `sec-langtons-ant`, §5 `sec-boolean-networks` (the coverage section gap,
closed with one section). Lenia, noisy automata and Gardens of Eden are not treated.

### Downey, *Think Complexity* (2018)

- Key `downeyThinkComplexity2018` (PDF 2FIW8VKJ). The ebook has no printed page numbers; cited by chapter and section title. Read Ch. 5 in full (A Simple CA,
  Wolfram's Experiment, Classifying CAs, Randomness, Determinism, Spaceships, Universality, Falsifiability, What Is This a Model Of?, Implementing CAs,
  Cross-Correlation, CA Tables, Exercises 5-1 to 5-5) and Ch. 6 in full (Conway's GoL, Life Patterns, Conway's Conjecture, Realism, Instrumentalism,
  Implementing Life, Exercises 6-1 to 6-5).
- Used: Rule 50 table and numbering, triangle of influence, classes, Rule 18 and 30, PRNGs, Rule 110 spaceships, Turing machines, Church-Turing thesis,
  principle of computational equivalence and falsifiability; Life rules, beehive, toad, glider, r-pentomino census (1103 steps), Gosper's gun, Conway's
  conjecture, Turing completeness of Life, the weighted kernel, Highlife and its replicator, Langton's ant (more than 10,000 steps, period 104).

### Charbonneau, *Natural Complexity* (2017)

- Key `charbonneauNaturalComplexityModeling2017` (PDF RNV4L6HW). Read Ch. 2, pp. 23-51 (Secs. 2.1-2.7).
- Used: four verbal rules and their numbers 254, 250, 90, 30 (footnote 2), classes I-IV and the random-start convention (footnote 3), lattices and
  neighbourhoods (Fig. 2.5, footnote 4), growth rules (2.1) and Fig. 2.9, the ant and the highway on clean and noisy lattices (Fig. 2.11), torus wrapping,
  emergence (Sec. 2.5), Exercises 1, 2 and 5 of Sec. 2.6.

### Lindgren, *Information Theory for Complex Systems* (2024)

- Key `lindgrenInformationTheoryComplex2024` (PDF J3EYSWSK). Read Secs. 4.1-4.3, pp. 47-58.
- Used: von Neumann's 29-state automaton, Life and the glider (Fig. 4.1), universality and the halting problem (p. 48), 7-state universal rule, Rule 110
  (Fig. 4.2), Table 4.1, 88 rules up to symmetry, the classes with Rules 160, 213, 22 and 110 (Fig. 4.3), damage in Rule 22 (Fig. 4.4).

### Gros, *Complex and Adaptive Dynamical Systems* (2015)

- Key `grosComplexAdaptiveDynamical2015` (PDF U9F6TD42). Read Sec. 6.3-6.3.1 (pp. 191-194) and Ch. 7, Secs. 7.1-7.5.2 (pp. 217-248).
- Used: rule counts $2^{512}$ and $2^{18}$, Life's table, block, blinker, glider, universality; Boolean variables and networks, coupling functions (Tables 7.1,
  7.2), quenched/annealed and synchronous/serial updates, Fig. 7.3, attractors and basins, Hamming distance and overlap (eqs. 7.4-7.6), mean-field and bifurcation
  phase diagrams (eqs. 7.7-7.12, Figs. 7.5-7.7), scale-free networks (eqs. 7.13-7.17), $K = 1$ loops and modules, $K = 2$, $K = N$ random walk (eqs.
  7.22-7.28), edge of chaos, yeast cell cycle (Fig. 7.12, 7 fixpoints, basin 1764; the printed 72 % does not match 1764/2048 = 86 %).

### Links (cross-references, not references)

- Earlier chapters: `def-emergent-property`, `def-lyapunov-exponent` (Ch. 1); `def-attractor` (Ch. 2); `thm-similarity-dimension` (Ch. 4); Landau theory of
  the physics tutorial (`sec-landau-theory`). Maths group-theory `lem-cos-burnside`.

## Chapter 7: pattern-formation (task 6.1, 2026-11-28)

PDFs read read-only with `pdftotext -layout` from `~/Zotero/storage`; nothing written to Zotero. Sections: §1 `sec-fronts`, §2 `sec-turing`,
§3 `sec-excitable-media`, §4 `sec-spatiotemporal-chaos`, following row 7 of the coverage plan.

### Gros, *Complex and Adaptive Dynamical Systems* (2015)

- Key `grosComplexAdaptiveDynamical2015` (PDF U9F6TD42). Read Ch. 4 introduction and Secs. 4.1-4.2 (pp. 111-126).
- Used: reaction-diffusion and Fisher normal form (eqs. 4.2-4.4), front ansatz and phase plane (4.5-4.8), exact front (4.10-4.12), tails (4.13),
  sum rules (4.14-4.17), linearised kernel and velocity selection (4.18-4.21), stability potential (4.22-4.23); Turing instability of superposed
  systems (4.24-4.27), pattern formation and mode competition (4.28-4.32, Fig. 4.4), Gray-Scott fixed points and the absence of a Turing instability
  (4.33-4.42).

### Datseris and Parlitz, *Nonlinear Dynamics* (2022)

- Key `datserisNonlinearDynamicsConcise2022` (PDF PW4T2U9L). Read Ch. 11, pp. 175-192.
- Used: reaction-diffusion systems and linear stability (eqs. 11.1-11.10), admissible wavenumbers, the Brusselator (11.11-11.12, Figs. 11.1-11.3),
  finite differences, excitable media and FitzHugh-Nagumo (11.14), annihilation, phase (11.15) and topological charge (11.16), extensive chaos and
  Kuramoto-Sivashinsky (11.17-11.18, Fig. 11.7), cardiac arrhythmias and transient chaos (Sec. 11.3.3), Exercises 11.1, 11.2, 11.5, 11.7, 11.8,
  11.10, 11.11.

### Charbonneau, *Natural Complexity* (2017)

- Key `charbonneauNaturalComplexityModeling2017` (PDF RNV4L6HW). Read Ch. 11, pp. 249-274.
- Used: excitable systems and the activation-recovery cycle (Fig. 11.1), the hodgepodge machine rules (11.6-11.9), isolated-node growth, waves and the
  wavelength estimate (Fig. 11.3, pp. 259-260), patterns (Fig. 11.5), nodal sawtooth (Fig. 11.6), spirals and symmetry breaking (Secs. 11.5-11.6).

### Downey, *Think Complexity* (2018)

- Key `downeyThinkComplexity2018` (PDF 2FIW8VKJ). Read Ch. 7, "Diffusion" and "Reaction-Diffusion".
- Used: diffusion as a cellular automaton, Gray-Scott with $r_a = 0.5$, $r_b = 0.25$ and the three parameter sets of Figs. 7-2 to 7-4.

### Links (cross-references, not references)

- Earlier chapters: `def-flow-map`, `prp-linearised-stability`, `def-bifurcation`, `prp-hopf-normal-form`, `def-lyapunov-spectrum` (Ch. 2). Maths
  differential-equations `def-heat-equation`, fourier-analysis `sec-fourier-series`.

## Chapter 8: networks (task 6.1, 2026-11-28)

PDFs read read-only with `pdftotext -layout` from `~/Zotero/storage`; nothing written to Zotero. Sections: §1 `sec-graph-measures`, §2 `sec-random-graphs`,
§3 `sec-small-worlds`, §4 `sec-scale-free`, §5 `sec-communities`, §6 `sec-spectra`, following row 8 of the coverage plan, and the two gap sections
§7 `sec-correlation-networks` and §8 `sec-generalised-networks`, one section each as the gap rows say. Under design C11 every computation the package
can do uses scikit-complexity 0.9.0; NumPy, SciPy and NetworkX fallbacks carry a comment naming the pending package issue.

### Thurner, Hanel and Klimek, *Introduction to the Theory of Complex Systems* (2018)

- Key `thurnerIntroductionTheoryComplex2018` (PDF YSNMV9AR). Read Secs. 4.2-4.7 (pp. 144-193) and 4.9 (pp. 207-211).
- Used: adjacency matrices (eqs. 4.1-4.3), incidence and $\mathbf A = \mathbf B\mathbf B^{\mathsf T} - \mathbf D$ (4.4-4.5), degrees (4.6-4.8), assortativity (4.9-4.10),
  closeness and betweenness (4.11, Fig. 4.6), clustering (4.12-4.14), reciprocity; ER ensembles and moments (4.15-4.25), thresholds (Sec. 4.4.3.3), giant
  component (4.27-4.29), Perron-Frobenius, Wigner and Girko (4.30, Fig. 4.9); configuration model, rewiring, friendship paradox (4.31-4.33), superposition (4.34);
  Milgram, Watts-Strogatz (Fig. 4.11), scale-free laws (4.35-4.36), preferential attachment and BA (4.37-4.39), BA diameter and clustering (literature values),
  DEB model; minimum cut, Laplacian (4.40), hierarchical clustering, Girvan-Newman (4.41), modularity (4.42-4.44), Louvain, extremal optimisation; correlation
  networks (4.45-4.51), filtering, Bonferroni, Benjamini-Hochberg, MST, disparity filter; hypergraphs, power graphs, multiplex and multilayer networks.
- Discrepancies: the threshold for components of three nodes is printed $N^{-2/3}$ (Sec. 4.4.3.3); the counting argument gives $N^{-3/2}$ (exercise
  `exr-er-three`). The rank-sum offset in eq. (4.50) is printed $n_g(n_g - 1)/2$; $U_1 + U_2 = n_1n_2$ needs $n_g(n_g + 1)/2$ (exercise `exr-cn-u`).
  The superposition model of Sec. 4.5.2 draws $p$ per link; the package draws it per subgraph and places the subgraphs side by side.

### Gros, *Complex and Adaptive Dynamical Systems* (2015)

- Key `grosComplexAdaptiveDynamical2015` (PDF U9F6TD42). Read Secs. 1.1-1.5 (pp. 1-38).
- Used: small-world effect and Table 1.1 (literature values), (1.1)-(1.3), bipartite networks and Fig. 1.1, degree distributions (1.4)-(1.8), spectra and the
  semicircle law (1.9)-(1.15, Fig. 1.5), moments (1.16), Laplacians (1.17)-(1.20) with the listed spectra; generalised random graphs (1.21)-(1.29), generating
  functions (1.30)-(1.42), component sizes and the giant component (1.43)-(1.51, Fig. 1.9); attack robustness (1.63, Fig. 1.10, literature values); lattices
  (1.64)-(1.65), Watts-Strogatz and Newman-Watts (Figs. 1.12-1.13); BA with offset (1.66)-(1.75) and random attachment (1.76)-(1.80).

### Jensen, *Complexity Science* (2023)

- Key `jensenComplexityScienceStudy2023` (PDF 6MWNDKQZ). Read Secs. 8.1-8.4 (pp. 177-203).
- Used: connectance (8.1), Table 8.1, eigenvector centrality by iteration, modularity (8.31)-(8.34) and self-loops, Louvain, gravity null model (8.35)-(8.37),
  generating functions (8.38)-(8.44), the giant cluster (8.45)-(8.58), the exponential law and the threshold $\ln 3$ (8.59)-(8.64, Fig. 8.8).

### Downey, *Think Complexity* (2018)

- Key `downeyThinkComplexity2018` (PDF 2FIW8VKJ; no page numbers, cited by chapter and section title). Read Chs. 2-4.
- Used: probability of connectivity ($\ln n/n$), ring lattices and WS graphs, clustering $0.5$ for $k = 4$, BFS; the Facebook data (C $0.61$, L $3.7$, degree
  sd $52.4$), the WS fit ($k = 44$, $p = 0.05$: C $0.63$, L $3.2$) and Table 4-1, all literature values.

### Charbonneau, *Natural Complexity* (2017) and Bertin, *Statistical Physics of Complex Systems* (2021)

- Key `charbonneauNaturalComplexityModeling2017` (PDF RNV4L6HW). Read Sec. 9.6 (pp. 215-219): the four 12-node networks of Fig. 9.8, travel distances
  $3.27$ and $4.33$ (checked), costs (not used: their link counting is not stated).
- Key `bertinStatisticalPhysicsComplex2021` (PDF KDKI5MLF). Read Sec. 6.1 (pp. 181-188): random, small-world and preferential-attachment networks; cited for
  further reading only.

### Links (cross-references, not references)

- Earlier chapters: `def-galton-watson`, `thm-extinction-probability`, `sec-heavy-tails` (random-processes), `prp-power-law-mle` (fractals-and-scaling), `sec-percolation` (phase-transitions-and-percolation).
  Maths linear-algebra `def-eigenvalue`.

## Chapter 9: dynamics-on-networks (task 6.1, 2026-11-28)

PDFs read read-only with `pdftotext -layout` from `~/Zotero/storage`; nothing written to Zotero. Sections: §1 `sec-random-walks`, §2 `sec-epidemics`,
§3 `sec-cascades`, §4 `sec-adaptive-networks`, following row 9 of the coverage plan. Design C11 applies: every computation the package can do uses
scikit-complexity 0.9.0; fallbacks carry a comment naming the package issue.

### Thurner, Hanel and Klimek (2018)

- Key `thurnerIntroductionTheoryComplex2018` (PDF YSNMV9AR). Read Secs. 4.8 (pp. 193-207) and 4.10 (pp. 211-218).
- Used: co-evolution (4.52); walk model and centralities (4.53)-(4.71) with PageRank's $\alpha = 0.85$; SI with immunization (4.72), SIS thresholds and
  $R'$ (4.73), immunization on scale-free networks (4.74, literature value), SIR (4.75); adaptive SIS (bistability, oscillations); voter model (4.76) and
  the coevolving voter model; DebtRank (4.77)-(4.81), expected systemic loss (4.82)-(4.83), credit risk (4.84)-(4.86).

### Jensen (2023), Gros (2015), Bertin (2021), Datseris and Parlitz (2022), Charbonneau (2017)

- `jensenComplexityScienceStudy2023` (PDF 6MWNDKQZ): Sec. 8.5.2 (pp. 212-216), random walk, stationary distribution, first passage, $r_i = 2L/k_i$ (8.85)-(8.99).
- `grosComplexAdaptiveDynamical2015` (PDF U9F6TD42): Sec. 1.3 (pp. 27-31), failures and attacks (1.52)-(1.63), $\alpha_c = 3.4788$, Fig. 1.10.
- `bertinStatisticalPhysicsComplex2021` (PDF KDKI5MLF): Secs. 6.2.1-6.2.2 (pp. 188-194), SIR reactions and mean field (6.16)-(6.24), heterogeneous mean field (6.25)-(6.31).
- `datserisNonlinearDynamicsConcise2022` (PDF PW4T2U9L): Secs. 10.1.3 (pp. 160-161) and 10.3 (pp. 166-169), robustness, SIR (10.6), $r_0$, herd immunity, Fig. 10.8 parameters, the ABM of Code 10.1 and Fig. 10.9.
- `charbonneauNaturalComplexityModeling2017` (PDF RNV4L6HW): Secs. 9.1-9.4 (pp. 198-213), walker epidemics, eq. (9.4) and its values 0.18, 0.56, 0.85, 0.97.

### Notes and discrepancies

- The Watts (2002) cascade, Motter-Lai overload and Bardoscia fire-sale models appear only through the package's documented systems; no primary text read, cited as literature models.
- The SIR extinction probability $1/R_0$, the quenched-threshold localization on BA graphs, the consensus-time scalings and the voter-random-walk duality are marked as literature results.
- The package's `VoterSystem` updates in random-sequential sweeps; the martingale of `prp-voter-martingale` holds for single uniform updates, implemented by hand and compared.
- Seeds: a NumPy generator seeded with the same integer as a package system can correlate with it (found on `ConfigurationModelSystem(random_state=2)` with `default_rng(2)`); the chapter offsets NumPy seeds by 1000.

### Links

- Earlier chapters: `prp-giant-component`, `prp-walk-counting`, `prp-laplacian-spectrum`, `def-laplacian`, `def-er-graph`, `prp-ba-degree`, `sec-networks` (networks); `def-galton-watson`,
  `thm-extinction-probability` (random-processes); `prp-linearised-stability` (nonlinear-dynamics-and-chaos).

## Chapter 10: self-organized-criticality (task 6.1, 2026-11-28)

PDFs read read-only with `pdftotext -layout` from `~/Zotero/storage`; nothing written to Zotero. Sections: §1 `sec-sandpile`, §2 `sec-avalanche-statistics`,
§3 `sec-branching-soc`, §4 `sec-soc-in-nature`, §5 `sec-one-over-f`, §6 `sec-bak-sneppen`, and the coverage gap §7 `sec-record-dynamics`, following row 10 of
the coverage plan. Design C11 applies: every computation the package can do uses scikit-complexity 0.9.0; fallbacks carry a comment naming the package issue.

### Gros (2015)

- `grosComplexAdaptiveDynamical2015` (PDF U9F6TD42): Secs. 6.2-6.6 (pp. 188-213). Used: $1/f$ noise, the Lorentzian and the superposition (6.17)-(6.18), p. 190-191;
  forest fire without and with lightning, pp. 194-195; sandpile and the avalanche of Fig. 6.8, pp. 195-199; binary branching, generating function and
  exponents (6.22)-(6.29), pp. 199-204; Bak-Sneppen model and random-neighbour solution (6.35)-(6.44), pp. 206-212.

### Jensen (2023)

- `jensenComplexityScienceStudy2023` (PDF 6MWNDKQZ): Secs. 12.1-12.2 (pp. 357-375). Used: the $1/f^2$ footnote, p. 357; sandpile rules and finite-size scaling;
  mean field R2-MF (12.4)-(12.15), pp. 361-364; forest fire, pp. 367-370; records (12.16)-(12.33), pp. 371-375.

### Charbonneau (2017), Downey (2018), Thurner et al. (2018), Bertin (2021)

- `charbonneauNaturalComplexityModeling2017` (PDF RNV4L6HW): Chs. 5-8 (pp. 106-196): forest fire 6.1-6.5 (pp. 130-148), traffic 7.1, 7.5-7.6 (pp. 154-170),
  OFC 8.1 and 8.4 (pp. 178-191).
- `downeyThinkComplexity2018` (PDF 2FIW8VKJ): Ch. 8 (no page numbers), the sandpile, heavy tails, fractals and pink noise with slope $-1.58$.
- `thurnerIntroductionTheoryComplex2018` (PDF YSNMV9AR): Secs. 2.5.4 (pp. 86-88), 3.3.2 (pp. 105-106), 5.4.4 (pp. 261-263), the threshold near $2/3$ and eq. (5.29).
- `bertinStatisticalPhysicsComplex2021` (PDF KDKI5MLF): Sec. 8.2.3 (pp. 250-252), records (8.42)-(8.45).

### Notes and discrepancies

- Jensen eq. 12.18 has $x_{N-1}$ for $x_{t-1}$; eq. 12.28 has $e^{-k}$ for $e^{-\lambda}$; eq. 12.32 has "$<$" for "$>$"; rule R4 of the forest fire reads $T \to F$ for $E \to T$.
- Charbonneau p. 190 gives recurrence periods "at $\alpha = 1.0$, $1.5$, $0.2$", which must be $0.10$, $0.15$, $0.20$; he quotes the 8-neighbour percolation threshold
  $0.4072$ for a fire that spreads to four neighbours.
- Charbonneau's traffic model is not Nagel-Schreckenberg; the chapter uses the package's Nagel-Schreckenberg model, cited as a literature model.
- Literature values, not read in a primary source: BTW exponents $\tau \approx 1.2$-$1.3$, Manna $D \approx 2.75$, $\tau \approx 1.27$, the upper critical dimension $4$,
  the one-dimensional Bak-Sneppen exponent $1.07$, the critical survival $2/(vt)$, $\operatorname{Var}Z_n = n$, records of a random walk $\sqrt{4n/\pi}$, the
  site-percolation threshold $0.593$, the Zapperi-Lauritsen-Stanley self-organised branching process.
- Measured on small lattices and short runs, the fitted exponents are far from the literature: sandpile $\tau \approx 1.05$ (bounded fit) against $1.22$ from moments;
  crackling $\gamma \approx 1.5$; the mean-field $\gamma$ of the branching process $1.64$ against $2$; the forest-fire balance holds to a few per cent.
