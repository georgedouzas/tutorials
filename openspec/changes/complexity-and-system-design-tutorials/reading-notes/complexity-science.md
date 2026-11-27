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
