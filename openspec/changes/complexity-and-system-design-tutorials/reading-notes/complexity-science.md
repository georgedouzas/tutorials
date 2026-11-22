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
