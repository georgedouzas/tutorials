# Coverage: Complexity Science

Coverage record for the new Complexity Science tutorial (`complexity-science/`), written for task 3.1 of the change
`complexity-and-system-design-tutorials` (design C6). The tutorial has no pages yet, so this record maps the benchmark
tables of contents to the *proposed* chapter list rather than to written sections. The owner approves the list (task
3.3) before any page is created.

Scope (proposal): "emergence, nonlinear dynamics and chaos, fractals and scaling, cellular automata, networks,
self-organized criticality, collective behaviour and synchronization, agent-based models, evolution and games, and
information and complexity measures", with scikit-complexity as the main software. Computational complexity theory is
out of scope (design, Non-Goals).

**How the statuses are used here.** The ten chapters of the proposal are each given a section plan below (core
sections implied by the chapter's title). A benchmark chapter whose material falls in one of those sections is
**mapped** (`slug` §n). Material in the subject of a listed chapter that would add a section beyond its plan is a
**section gap** of that chapter. Material with no listed chapter whose subject contains it is a **proposed chapter**
(M4: in scope, and at least two sections of its own or a whole chapter in at least two benchmarks). A split of a
listed chapter is recorded as a proposal too. **Out of scope** rows give their reason.

## Benchmarks

| Key (Zotero item / citation key) | Title | Why chosen | TOC read via |
|---|---|---|---|
| 233Q4D2M / `thurnerIntroductionTheoryComplex2018` | Thurner, Hanel & Klimek, *Introduction to the Theory of Complex Systems*, OUP 2018 | The most mathematical whole-subject text in the library, written for graduate physicists and mathematicians: random processes, scaling, networks, evolution, statistical mechanics and information theory. Sets the level of the statements and proofs. It has no nonlinear-dynamics chapter, which the others supply. | `zotero_read_pdf_pages` pp. 8-13 (no outline) |
| IR5YQZEM / `jensenComplexityScienceStudy2023` | Jensen, *Complexity Science: The Study of Emergence*, CUP 2023 | A recent whole-subject text organised around emergence (Part I) and the mathematical tools (Part II): branching processes, statistical mechanics, synchronisation, networks, information, stochastic dynamics, agent-based models, SOC, tipping points. The pilot chapter's main source. | `zotero_get_pdf_outline` |
| 6HH9Y9SR / `grosComplexAdaptiveDynamical2015` | Gros, *Complex and Adaptive Dynamical Systems: A Primer*, 4th ed., Springer 2015 | The standard dynamical-systems view of the subject, with exercises and worked solutions: graph theory, bifurcations and chaos, noise, pattern formation, information, CA and SOC, Boolean networks, evolution and games, synchronisation. | `zotero_get_pdf_outline` |
| VY9ARINT / `charbonneauNaturalComplexityModeling2017` | Charbonneau, *Natural Complexity: A Modeling Handbook*, Princeton 2017 | Model-by-model, with complete Python code and computational exercises: CA, aggregation, percolation, sandpiles, forest fires, traffic, earthquakes, epidemics, flocking, pattern formation. Matches the tutorial's runnable-solution format. | `zotero_get_pdf_outline` |
| RAZCXVNF / `downeyThinkComplexity2018` | Downey, *Think Complexity*, 2nd ed., O'Reilly 2018 | The standard computational introduction (NetworkX, NumPy): graphs, small worlds, scale-free networks, CA, Life, physical modelling, SOC, agent-based models, evolution, cooperation. Supplies the introductory level and the philosophy-of-models discussion. | `zotero_get_pdf_outline` |
| M6MW7EAC / `datserisNonlinearDynamicsConcise2022` | Datseris & Parlitz, *Nonlinear Dynamics: A Concise Introduction Interlaced with Code*, Springer 2022 | Added because none of the five candidates covers nonlinear dynamics and chaos at chapter level beyond Gros ch. 2: chaos and Lyapunov spectra, bifurcations and routes to chaos, fractal dimensions, delay embedding, information across time series, synchronisation, pattern formation, tipping. Code-first like the tutorial. | `zotero_get_pdf_outline` |

**Sayama** (*Introduction to the Modeling and Analysis of Complex Systems*) is approved for Zotero (references-proposal
item 1) but is not yet in the library: `zotero_search_items` finds no item for "Sayama" or its title on 2026-11-22. Add
it as a seventh benchmark once task 2.2 has imported it.

**Section sources, not benchmarks** (TOCs read via `zotero_get_pdf_outline`; used below as extra sources):
- Lindgren, *Information Theory for Complex Systems*, 2024 (`AXCCURNB`): information theory, symbol sequences,
  information in CA, geometric information and fractal dimension, chaos and information.
- Bertin, *Statistical Physics of Complex Systems*, 3rd ed. (`Z7B3XQLB`): Ising and renormalisation, master equation,
  Langevin and Fokker-Planck, absorbing transitions, social agents, Moran process, networks, Kuramoto, extreme values
  and large deviations.

Not chosen: the economics and ABM monographs (`2DRGUJHT`, `N28E4XP9`, `PDWK9NZQ`, `5FRNDDV7`; one application
field each), the general-systems and system-dynamics books (`VGZ8MK2A`, `RBCUD7KM`, `CDGJWLM3`, `YYTYZJVM`;
qualitative), Ceccherini-Silberstein & Coornaert (`746QY83G`, `TTTF5HW9`; CA on groups, research level, kept as a
section source for cellular-automata), Dilão (`WLQWPSKV`; overlaps Datseris), Argun-Callegari-Volpe (`KM792SUI`;
simulation recipes, a possible exercise source), and Satz, Mihailović, Starkovich, Bellomo, Barsky (essays or
specialised).

## Coverage

### 233Q4D2M: Thurner, Hanel & Klimek, Introduction to the Theory of Complex Systems

| Benchmark chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1.1-1.6 Introduction to complex systems | Physics, life and social sciences; what complex systems are; co-evolution; algorithmic dynamics | mapped | complex-systems-and-emergence §1 | |
| 1.3.4 Adaptive and robust: the edge of chaos | Edge of chaos | mapped | cellular-automata §5 (Boolean networks) | Gros ch. 7 is the main source. |
| 2.1-2.2 Probability basics, Kolmogorov axioms, moments, Bayes | Probability | out of scope (prerequisite) | maths: probability `sec-probability-spaces`, `sec-random-variables` | Taught in the mathematics tutorial; linked, not repeated. |
| 2.3 Law of large numbers, CLT, generalised limit theorems and alpha-stable processes | Stable laws | mapped | random-processes §6 | CLT itself is maths `sec-limit-theorems`. |
| 2.4 Fat-tailed distribution functions | Power-law tails, other distributions | mapped | random-processes §6; fractals-and-scaling §4 | |
| 2.5.1 Simple stochastic processes | Bernoulli, Poisson, random walks, Markov | mapped | random-processes §1-2 | |
| 2.5.2-2.5.3 Path-dependent and reinforcement processes | Pólya urn, reinforcement | mapped | random-processes §7 | |
| 2.5.4 Driven dissipative systems | Driving and dissipation | mapped | self-organized-criticality §1 | |
| 3.1-3.2 Scaling: definition and examples | Scaling laws | mapped | fractals-and-scaling §3 | |
| 3.3.1 Criticality | Critical phenomena as an origin of scaling | mapped | phase-transitions-and-percolation §2 | |
| 3.3.2 Self-organised criticality | SOC as an origin of scaling | mapped | self-organized-criticality §1 | |
| 3.3.3-3.3.6 Multiplicative, preferential, sample-space-reducing processes | Mechanisms of power laws | mapped | fractals-and-scaling §3 | |
| 3.4 Power laws and how to measure them (MLE) | Power-law estimation | mapped | fractals-and-scaling §4 | |
| 3.5.1-3.5.2 Self-similarity, fractals | Fractal dimension | mapped | fractals-and-scaling §1 | |
| 3.5.3 Scaling in time: fractal time series | Hurst, DFA | mapped | fractals-and-scaling §5 | |
| 3.6 Allometric scaling in biology (3/4 law) | Allometry | mapped | fractals-and-scaling §6 | |
| 4.1-4.3 Network basics and measures (degree, paths, components, centrality, clustering) | Graphs and measures | mapped | networks §1 | |
| 4.4 Random networks, ER phase transition, spectra | Random graphs | mapped | networks §2, §6 | |
| 4.5 Generalised ER, superposition, small worlds, hubs | Complex networks | mapped | networks §3-4 | |
| 4.6 Communities (cuts, hierarchical, Girvan-Newman, modularity) | Communities | mapped | networks §5 | |
| 4.7 Functional (correlation) networks and filtering | Correlation networks | section gap | networks | One section; also serves time-series-and-model-discovery (Jensen 9.3). |
| 4.8.1-4.8.5 Diffusion, Laplacian, eigenvector centrality, Katz, PageRank | Random walks on networks | mapped | dynamics-on-networks §1 | |
| 4.8.6 Contagion and epidemic spreading | Epidemics on networks | mapped | dynamics-on-networks §2 | |
| 4.8.7 Co-evolving spreading models, adaptive networks | Adaptive networks | mapped | dynamics-on-networks §4 | |
| 4.8.8 Simple models of social dynamics | Voter and opinion models | mapped | agent-based-models §4 | |
| 4.9 Hypergraphs, multiplex and multilayer networks | Generalised networks | section gap | networks | One section; scikit-complexity has hypergraph and multilayer systems. |
| 4.10 Systemic risk in financial networks | DebtRank, cascades | mapped | dynamics-on-networks §3 | |
| 5.1-5.3 Evolution as an algorithm; evidence; replicator equation; general evolution algorithm | Evolutionary dynamics | mapped | evolution-and-games §1 | |
| 5.4.1-5.4.3 Fitness landscapes, evolutionary dynamics on them | Fitness landscapes, NK | mapped | evolution-and-games §3 | |
| 5.4.4 Co-evolving landscapes: Bak-Sneppen | Bak-Sneppen | mapped | self-organized-criticality §6 | |
| 5.4.5 The adjacent possible | Adjacent possible | section gap | evolution-and-games (innovation) | With 5.5-5.6. |
| 5.5 Linear evolution models: Jain-Krishna autocatalytic sets, edge of chaos, collapse | Autocatalytic sets | section gap | evolution-and-games (innovation and combinatorial evolution) | One section with 5.6. |
| 5.6 Combinatorial evolution: Schumpeter, Arthur-Polak, CCC model | Combinatorial evolution | section gap | evolution-and-games (innovation and combinatorial evolution) | |
| 5.7 Economic fitness of countries, product diversity | Economic complexity from data | out of scope | | A data application specific to economics; the methods are the section gap above. |
| 6.1-6.2.3 Three faces of entropy; physics, information, inference | Classical entropy, MaxEnt | mapped | information-and-complexity-measures §1 | Thermodynamic entropy is taught in the physics tutorial (`thermodynamics-statistical-mechanics` `sec-thermodynamics`). |
| 6.2.4-6.6 Entropy for complex systems: non-ergodicity, Shannon-Khinchin axioms, (c,d) classes, phase-space growth, MaxEnt for path-dependent processes | Generalised entropies | section gap | information-and-complexity-measures | One section; Thurner is the only benchmark with it. |
| 7 The future of complex systems | Outlook | out of scope | | No content to teach. |
| 8 Special functions and approximations | Lambert W, Gamma, Stirling | out of scope (prerequisite) | maths: differential-equations `sec-special-functions`; complex-analysis `sec-asymptotics` | |

### IR5YQZEM: Jensen, Complexity Science: The Study of Emergence

| Benchmark chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1 The science of emergence (interaction, past views) | Emergence | mapped | complex-systems-and-emergence §1-2 | |
| 2 Conceptual framework of emergence (scale, collective degrees of freedom, coherence, symmetry breaking, networks, temporal mode, adaptation) | Kinds of emergence | mapped | complex-systems-and-emergence §2 | |
| 3.1 Ising-type models: transitions and criticality | Phase transitions | mapped | phase-transitions-and-percolation §1-2 | |
| 3.2 Network models, scale vs no scale | Networks | mapped | networks §4 | |
| 3.3 Coherence in time: synchronisation | Synchronisation | mapped | synchronization §2 | |
| 3.4 Evolutionary dynamics: adaptation | Evolution | mapped | evolution-and-games §1 | |
| 3.5 Mean-field modelling: dimensionality and forecasting | Mean field vs agents | mapped | agent-based-models §5 | |
| 4 The value of prototypical models (O'Keeffe-Einstein propositions) | Modelling philosophy | mapped | complex-systems-and-emergence §3 | With Downey ch. 1. |
| 5 Branching processes (generating functions, progeny, extinction, trees and random walks) | Branching processes | mapped | random-processes §5 | |
| 6.1-6.2 Probabilities and ensembles; the Ising model | Ising model | mapped | phase-transitions-and-percolation §1 | Ensembles are taught in the physics tutorial (`sec-ensembles`); linked. |
| 6.3-6.6 Critical point, fluctuations, response, correlations, diverging correlation length | Criticality | mapped | phase-transitions-and-percolation §2 | |
| 6.7 Two-dimensional XY model, vortex unbinding | BKT transition | section gap | phase-transitions-and-percolation | Low priority; `XYSystem` and `defects` support it. |
| 7.1 Kuramoto model, onset of synchronisation | Kuramoto | mapped | synchronization §2 | |
| 7.2 Chimera states | Chimeras | mapped | synchronization §4 | |
| 8.1-8.2 Network basics; centralities | Network measures | mapped | networks §1 | |
| 8.3 Community detection | Communities | mapped | networks §5 | |
| 8.4 Spreading on networks: giant cluster | Percolation on networks | mapped | networks §2; dynamics-on-networks §2 | |
| 8.5.1 Generating networks | Network models | mapped | networks §2-4 | |
| 8.5.2 Random walk on networks | Random walks on graphs | mapped | dynamics-on-networks §1 | |
| 8.5.3 Synchronisation on networks | Sync on networks | mapped | synchronization §4 | |
| 9.1-9.2 Information and interdependence; entropy and causal relations | Mutual information, transfer entropy | mapped | information-and-complexity-measures §3 | |
| 9.3 From time series to networks | Time-series networks | mapped | time-series-and-model-discovery §2 | |
| 9.4 From entropy to probability distributions | MaxEnt | mapped | information-and-complexity-measures §1 | |
| 9.5 Lempel-Ziv, information-theoretic emergence, group entropy | Complexity measures, emergence | mapped | information-and-complexity-measures §4-5 | Group entropy joins the generalised-entropy section gap. |
| 10.1-10.2 Random walk and diffusion; first passage and return | Random walks | mapped | random-processes §1 | |
| 10.3-10.4 Correlations in time; persistence and the Hurst exponent | Hurst exponent | mapped | fractals-and-scaling §5 | |
| 10.5 Ornstein-Uhlenbeck | OU process | mapped | random-processes §3 | |
| 10.6 Evolutionary dynamics and clustering | Spatial neutral clustering | mapped | evolution-and-games §2 | With Bertin 5.4. |
| 10.7 Master equation, coarse graining, free energy | Master equation | mapped | random-processes §2 | |
| 11.1 Flocks of birds, schools of fish | Flocking | mapped | collective-motion §1 | |
| 11.2 Models of segregation | Schelling | mapped | agent-based-models §2 | |
| 11.3 Tangled Nature model | Co-evolution | mapped | evolution-and-games §4 | |
| 12.1 Self-organised criticality: sandpiles, mean field, lessons, forest fire | SOC | mapped | self-organized-criticality §1-5 | |
| 12.2 Record dynamics | Record statistics | section gap | self-organized-criticality | One section; Bertin 8.2.3 adds statistics of records. |
| 12.3 Tangent map intermittency | Intermittency | mapped | nonlinear-dynamics-and-chaos §6 | |
| 13 Tipping points, transitions and forecasting | Tipping | proposed chapter | tipping-points-and-resilience | See proposals. |
| 14 Concluding comments | Outlook | out of scope | | |

### 6HH9Y9SR: Gros, Complex and Adaptive Dynamical Systems

| Benchmark chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1.1 Graph theory, small-world effect, spectra, Laplacian | Graphs | mapped | networks §1, §6 | |
| 1.2 Percolation in generalised random graphs, generating functions, component sizes | Random graphs | mapped | networks §2 | |
| 1.3 Robustness of random networks | Robustness | mapped | dynamics-on-networks §3 | |
| 1.4-1.5 Small-world models; scale-free graphs | Network models | mapped | networks §3-4 | |
| 2.1-2.2.1 Dynamical systems, fixpoints, Jacobian | Flows and stability | mapped | nonlinear-dynamics-and-chaos §1 | Linear stability is maths `sec-linear-systems`. |
| 2.2.2-2.2.3 Bifurcations, normal forms, Hopf, limit cycles | Bifurcations | mapped | nonlinear-dynamics-and-chaos §2-3 | |
| 2.3 Global bifurcations | Global bifurcations | mapped | nonlinear-dynamics-and-chaos §2 | |
| 2.3.1 Catastrophe theory | Cusp catastrophe | mapped | tipping-points-and-resilience §1 | |
| 2.4 Logistic map and deterministic chaos | Logistic map | mapped | nonlinear-dynamics-and-chaos §4 | |
| 2.5 Dynamical systems with time delays | Delay equations | section gap | nonlinear-dynamics-and-chaos | Low priority; also used in synchronization (Gros 9.3). |
| 3.1.1-3.1.2 Dissipation, phase-space contraction, strange attractors | Strange attractors | mapped | nonlinear-dynamics-and-chaos §5 | |
| 3.1.3-3.1.4 Adaptive systems, conserving adaptive systems | Slow-fast adaptive dynamics | section gap | nonlinear-dynamics-and-chaos | Low priority; one unit at most. |
| 3.2 Random walks, Lévy flights, Markov chains, Langevin | Diffusion and transport | mapped | random-processes §1-3 | |
| 3.3 Stochastic escape, stochastic resonance | Noise-controlled dynamics | mapped | random-processes §4 | |
| 4.1 Reaction-diffusion, Fisher fronts | Travelling fronts | proposed chapter | pattern-formation §1 | See proposals. |
| 4.2 Activation-inhibition, Turing instability, Gray-Scott | Turing patterns | proposed chapter | pattern-formation §2 | |
| 4.3.1 Phase transitions in social systems | Social transitions | mapped | agent-based-models §4 | |
| 4.3.2 Collective decision making, stigmergy | Swarm intelligence | mapped | collective-motion §2 | |
| 4.3.3 Collective behaviour and swarms | Swarms | mapped | collective-motion §1 | |
| 4.3.4 Opinion dynamics | Opinion models | mapped | agent-based-models §4 | |
| 4.4 Car-following models, self-organised congestion | Traffic | mapped | collective-motion §3 | |
| 5.1.1-5.1.2 PDFs, Bayesian statistics, law of large numbers | Probability | out of scope (prerequisite) | maths: probability `sec-random-variables`, `sec-limit-theorems` | |
| 5.1.3 Time series characterisation | Time series | mapped | time-series-and-model-discovery §2 | |
| 5.2 Entropy, information content of time series, mutual information, KL | Information | mapped | information-and-complexity-measures §1-3 | |
| 5.3 Complexity measures; predictability; algorithmic and generative complexity | Complexity measures | mapped | information-and-complexity-measures §4 | |
| 6.1 Landau theory of phase transitions | Landau theory | mapped | phase-transitions-and-percolation §2 | Landau theory is taught in the physics tutorial (`sec-landau-theory`); linked and applied, not repeated. |
| 6.2 Criticality in dynamical systems, 1/f noise | 1/f noise | mapped | self-organized-criticality §5 | |
| 6.3.1 Conway's Game of Life | Life | mapped | cellular-automata §2 | |
| 6.3.2 Forest-fire model | Forest fires | mapped | self-organized-criticality §4 | |
| 6.4 Sandpile model; absorbing phase transitions | Sandpiles | mapped | self-organized-criticality §1-2; phase-transitions-and-percolation §5 | |
| 6.5 Random branching theory of SOC; Galton-Watson | Branching | mapped | self-organized-criticality §3; random-processes §5 | |
| 6.6 Application to long-term evolution (Bak-Sneppen) | Bak-Sneppen | mapped | self-organized-criticality §6 | |
| 7 Random Boolean networks (Kauffman K=1, 2, N; phase diagram; yeast cell cycle; edge of chaos) | Boolean networks | section gap | cellular-automata | One section ("Boolean networks"); a whole chapter only in Gros. |
| 8.1-8.3 Mutations, fitness, deterministic evolution, error catastrophe | Evolution equations | mapped | evolution-and-games §1 | |
| 8.4 Finite populations, stochastic escape, adaptive climbing | Finite populations | mapped | evolution-and-games §2 | |
| 8.5 Prebiotic evolution: quasispecies, hypercycles | Quasispecies, hypercycles | mapped | evolution-and-games §1 | |
| 8.6 Macroecology and species competition | Competition, Lotka-Volterra | section gap | evolution-and-games | Low priority; Lotka-Volterra also appears in nonlinear-dynamics-and-chaos examples. |
| 8.7 Coevolution and game theory | Evolutionary games | mapped | evolution-and-games §5 | |
| 9.1-9.2 Frequency locking; Kuramoto | Synchronisation | mapped | synchronization §1-2 | |
| 9.3 Synchronisation with time delays | Delayed coupling | mapped | synchronization §3 | |
| 9.4 Aggregate averaging, causal signalling | Sync mechanisms | mapped | synchronization §3 | |
| 9.5 Synchronisation and object recognition in neural networks | Neural binding | out of scope | | Neuroscience application; belongs with the machine-learning tutorials if anywhere. |
| 9.6 Synchronisation in epidemics | Recurrent epidemics | mapped | dynamics-on-networks §2 | |
| 10 Elements of cognitive systems theory (learning, memory, Elman networks, prediction) | Cognitive systems | out of scope | | Cognitive science and neural networks; the machine-learning tutorials cover learning. Reservoir computing appears in time-series-and-model-discovery §4. |
| 11 Solutions | Solutions | out of scope | | Solutions to the chapter exercises; used with each chapter. |

### VY9ARINT: Charbonneau, Natural Complexity

| Benchmark chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1.1-1.5 What is complexity; randomness and chaos are not complexity; open dissipative systems | Introduction | mapped | complex-systems-and-emergence §1, §4 | |
| 1.6 About the computer programs | Code conventions | out of scope | | Tooling note; the tutorial uses scikit-complexity. |
| 2.1 1-D cellular automata | Elementary CA | mapped | cellular-automata §1 | |
| 2.2-2.3 2-D CA; a zoo of structures | 2-D CA | mapped | cellular-automata §2 | |
| 2.4 Agents, ants and highways | Langton's ant | mapped | cellular-automata §4 | |
| 2.5 Emergent structures and behaviours | Emergence | mapped | complex-systems-and-emergence §2 | |
| 3.1-3.4 Diffusion-limited aggregation | DLA | mapped | fractals-and-scaling §2 | |
| 3.5-3.6 Fractal geometry, self-similarity, scale invariance | Fractals | mapped | fractals-and-scaling §1 | |
| 4.1-4.3 Percolation in 1-D and 2-D, cluster sizes | Percolation | proposed chapter | phase-transitions-and-percolation §3 | |
| 4.4 Fractal clusters | Fractal clusters | proposed chapter | phase-transitions-and-percolation §3 | |
| 4.5 Is it really a power law? | Power-law testing | mapped | fractals-and-scaling §4 | |
| 4.6 Criticality | Percolation threshold | proposed chapter | phase-transitions-and-percolation §4 | |
| 5 Sandpiles (definition, simulation, avalanches, SOC) | Sandpiles | mapped | self-organized-criticality §1-2 | |
| 6 Forest fires (model, behaviour, criticality, wildfire management) | Forest fires | mapped | self-organized-criticality §4 | |
| 7.1-7.4 Traffic jams (Nagel-Schreckenberg-type model) | Traffic | mapped | collective-motion §3 | |
| 7.5-7.6 Traffic jams as avalanches; traffic as SOC | Traffic avalanches | mapped | self-organized-criticality §4 | |
| 8 Earthquakes (Burridge-Knopoff, prediction) | Earthquakes | mapped | self-organized-criticality §4 | |
| 9.1-9.5 Epidemics (lattice SIR, self-organisation) | Epidemics | proposed chapter | dynamics-on-networks §2 | |
| 9.6 Small-world networks | Small worlds | mapped | networks §3 | |
| 10.1-10.4 Flocking (model, behavioural zoo, active and passive flockers) | Flocking | mapped | collective-motion §1 | |
| 10.5 Why you should never panic | Crowd panic | mapped | collective-motion §4 | |
| 11 Pattern formation (excitable systems, hodgepodge machine, spirals) | Excitable media | proposed chapter | pattern-formation §3 | |
| 12 Epilogue (emergence and natural order) | Emergence | mapped | complex-systems-and-emergence §2 | |
| App. A Python basics | Python | out of scope | | Tooling. |
| App. B Probability density functions, power-law PDFs, cumulative and log-binned PDFs, fits | PDFs of power laws | mapped | fractals-and-scaling §4 | |
| App. C Random numbers, random walks, diffusion | Random walks | mapped | random-processes §1 | |
| App. D Lattice computation (templates, periodic boundaries, random walks on lattices) | Lattice techniques | mapped | cellular-automata §1 | Technique, taught where first used. |

### RAZCXVNF: Downey, Think Complexity

| Benchmark chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1 Complexity science (criteria of science, axes of models, complexity thinking) | Modelling philosophy | mapped | complex-systems-and-emergence §3 | |
| 2 Graphs; random graphs; connectivity of ER graphs | Graphs, ER | mapped | networks §1-2 | |
| 2 Analysis of graph algorithms | Algorithm complexity | out of scope | | Computational complexity is a non-goal (design). |
| 3 Small-world graphs (Milgram, Watts-Strogatz, clustering, path lengths) | Small worlds | mapped | networks §3 | |
| 3 Breadth-first search, Dijkstra | Graph algorithms | mapped | networks §1 | As tools for path lengths only. |
| 4 Scale-free networks (heavy tails, BA model, cumulative distributions, explanatory models) | Scale-free networks | mapped | networks §4 | |
| 5 Cellular automatons (Wolfram's experiment, classes, randomness, spaceships, universality) | Elementary CA | mapped | cellular-automata §1, §3 | |
| 6 Game of Life (patterns, Conway's conjecture, realism vs instrumentalism) | Life | mapped | cellular-automata §2 | |
| 7 Diffusion, reaction-diffusion | Reaction-diffusion | proposed chapter | pattern-formation §2 | |
| 7 Percolation, phase change | Percolation | proposed chapter | phase-transitions-and-percolation §3-4 | |
| 7 Fractals, fractals and percolation | Fractal dimension | mapped | fractals-and-scaling §1 | |
| 8 Self-organised criticality (sand piles, heavy tails, fractals, pink noise) | SOC | mapped | self-organized-criticality §1-2, §5 | |
| 8 Reductionism and holism; SOC, causation and prediction | Philosophy | mapped | complex-systems-and-emergence §3 | |
| 9 Agent-based models (Schelling, Sugarscape, wealth inequality, migration waves, emergence) | ABM | mapped | agent-based-models §1-3 | |
| 10 Traffic jams, random perturbation | Traffic | mapped | collective-motion §3 | |
| 10 Boids, arbitration, emergence and free will | Boids | mapped | collective-motion §1 | |
| 11 Evolution (fitness landscape, differential survival, mutation, speciation) | Evolution | mapped | evolution-and-games §1-3 | |
| 12 Evolution of cooperation (Prisoner's Dilemma, tournaments, simulation) | Cooperation | mapped | evolution-and-games §5 | |
| App. A Reading list | Reading list | out of scope | | |

### M6MW7EAC: Datseris & Parlitz, Nonlinear Dynamics

| Benchmark chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1.1-1.2, 1.4-1.5 Dynamical systems, poor man's chaos, Jacobian and stability, dissipation, attractors | Flows and maps | mapped | nonlinear-dynamics-and-chaos §1, §5 | |
| 1.3 Computer code for nonlinear dynamics | Code | out of scope | | Tooling (Julia). |
| 1.6 Poincaré surface of section and map | Poincaré map | mapped | nonlinear-dynamics-and-chaos §3 | |
| 2 Non-chaotic continuous dynamics (1-D, 2-D, limit cycles, nullclines, excitability, Poincaré-Bendixson, quasiperiodicity) | Planar flows | mapped | nonlinear-dynamics-and-chaos §1, §3 | |
| 3 Defining and measuring chaos (Lyapunov exponent and spectrum, predictability, stretching and folding) | Chaos | mapped | nonlinear-dynamics-and-chaos §5 | |
| 4.1 Bifurcations, hysteresis, local and global | Bifurcations | mapped | nonlinear-dynamics-and-chaos §2 | |
| 4.2 Orbit diagrams, bifurcation diagrams, continuation | Numerical bifurcation analysis | mapped | nonlinear-dynamics-and-chaos §2, §4 | Continuation is not in scikit-complexity (see software). |
| 4.3 Universal routes to chaos: period doubling, intermittency | Routes to chaos | mapped | nonlinear-dynamics-and-chaos §4, §6 | |
| 5.1-5.2 Information and entropy, generalised entropy, entropy estimation | Entropy | mapped | information-and-complexity-measures §1 | |
| 5.3-5.4 Fractal sets, chaotic attractors, fractal basin boundaries, dimension estimation, Kaplan-Yorke | Fractal dimension of attractors | mapped | fractals-and-scaling §1; nonlinear-dynamics-and-chaos §5 | |
| 6.1-6.3 Delay-coordinate embedding, Takens, choice of delay and dimension | Delay embedding | proposed chapter | time-series-and-model-discovery §1 | |
| 6.4.1-6.4.2 Nearest-neighbour forecasting, Lyapunov exponent from data | Nonlinear time-series analysis | proposed chapter | time-series-and-model-discovery §2 | |
| 6.4.3 Permutation entropy | Ordinal patterns | mapped | information-and-complexity-measures §4 | |
| 7.1-7.2 Mutual information, transfer entropy | Information transfer | mapped | information-and-complexity-measures §3 | |
| 7.3 Dynamic influence and causality, convergent cross mapping | Causality from data | proposed chapter | time-series-and-model-discovery §3 | |
| 7.4 Surrogate time series | Surrogates | proposed chapter | time-series-and-model-discovery §2 | |
| 8.1-8.2 Dynamical billiards, chaotic conservative systems, chaotic scattering | Conservative chaos | out of scope | | Hamiltonian chaos is physics (`classical-mechanics` in the physics tutorial); complex systems here are dissipative. |
| 8.3 Ergodicity and invariant density | Ergodicity | section gap | nonlinear-dynamics-and-chaos | One unit; Thurner 6.3.1 needs non-ergodicity, and scikit-complexity has `ergodicity`. |
| 8.4 Recurrences, Poincaré recurrence, Kac's lemma, RQA | Recurrence analysis | proposed chapter | time-series-and-model-discovery §2 | |
| 9.1 Periodically driven passive oscillators, stroboscopic maps | Forced oscillators | mapped | synchronization §1 | |
| 9.2 Synchronisation of periodic oscillations, Adler equation, coupled phase oscillators | Phase locking | mapped | synchronization §1 | |
| 9.3 Chaotic phase synchronisation, generalised synchronisation | Chaotic sync | mapped | synchronization §4 | |
| 10.1 Networks, architectures, robustness | Networks | mapped | networks §1-4; dynamics-on-networks §3 | |
| 10.2 Networks of identical oscillators, chimeras, power grids | Sync on networks | mapped | synchronization §4 | |
| 10.3 Compartmental and agent-based epidemics on networks | Epidemics | proposed chapter | dynamics-on-networks §2 | |
| 11.1 Reaction-diffusion, linear stability of spatiotemporal systems, Brusselator, finite differences | Turing patterns | proposed chapter | pattern-formation §2 | |
| 11.2 Excitable media, spiral waves, phase singularities | Spiral waves | proposed chapter | pattern-formation §3 | |
| 11.3 Spatiotemporal chaos, spectral PDE solvers | Spatiotemporal chaos | proposed chapter | pattern-formation §4 | |
| 12.1 Complex systems, chaos and prediction | Prediction | mapped | complex-systems-and-emergence §4 | |
| 12.2 Tipping mechanisms, basin stability and resilience, tipping probabilities | Tipping | proposed chapter | tipping-points-and-resilience §1-2 | |
| 12.3 Climate applications (carbon cycle, climate attractors, glaciation cycles) | Climate examples | proposed chapter | tipping-points-and-resilience §4 | Worked examples. |
| App. A Computing Lyapunov exponents | Benettin algorithm | mapped | nonlinear-dynamics-and-chaos §5 | |
| App. B Master stability function | MSF | mapped | synchronization §4 | |

## Proposed chapter list (reading order)

Chapters from the proposal keep their wording; **new** marks a proposed chapter, **split** a proposed split of a listed
chapter. "Sk" names the scikit-complexity systems (`skcomplex.systems`) and analyses (`skcomplex.core.analysis`,
`skcomplex.core.experiments`) that support the chapter, as found in the 0.9.0 wheel.

| # | Slug | Title | Sections (benchmark sources) | scikit-complexity support | Other libraries |
|---|---|---|---|---|---|
| 1 | complex-systems-and-emergence | Complex systems and emergence | §1 What a complex system is (Thurner 1; Jensen 1; Charbonneau 1.1-1.5; Downey 1). §2 Kinds of emergence (Jensen 2-3; Charbonneau 2.5, 12). §3 Models and their purposes (Jensen 4; Downey 1, 8). §4 Complexity is neither randomness nor chaos; prediction (Charbonneau 1.2-1.4; Datseris 12.1). | Catalogue (`systems`), `simulate`, `signatures`, `applicable_analyses`; examples from every field. Full. | none |
| 2 | nonlinear-dynamics-and-chaos | Nonlinear dynamics and chaos | §1 Flows, maps, fixed points and stability (Datseris 1-2; Gros 2.1-2.2.1). §2 Bifurcations and normal forms (Datseris 4.1-4.2; Gros 2.2.2, 2.3). §3 Limit cycles, Hopf, Poincaré-Bendixson, Poincaré maps (Datseris 1.6, 2.2-2.4; Gros 2.2.3). §4 The logistic map and period doubling (Gros 2.4; Datseris 4.3.1). §5 Lyapunov exponents and strange attractors (Datseris 3, 5.3, App. A; Gros 3.1.1-3.1.2). §6 Intermittency (Datseris 4.3.2; Jensen 12.3). | `LogisticMapSystem`, `HenonMapSystem`, `TentMapSystem`, `CircleMapSystem`, `LorenzSystem`, `RosslerSystem`, `VanDerPolSystem`, `DuffingSystem`, normal forms (`SaddleNodeFormSystem`, `HopfFormSystem`, `CuspFormSystem`), `IntermittencyMapSystem`; `stability('fixed-points')`, `lyapunov`, `section`, `orbit_diagram`, `basin_stability`. Strong; no numerical continuation of bifurcation curves. | none (continuation shown by sweeps only) |
| 3 | random-processes | **new** Random processes and heavy tails | §1 Random walks, diffusion, first passage (Jensen 10.1-10.2; Gros 3.2.1; Charbonneau App. C; Bertin 2.1.3, 2.5). §2 Markov chains and the master equation (Gros 3.2.2; Jensen 10.7; Bertin 2.1). §3 Langevin, Fokker-Planck, Ornstein-Uhlenbeck (Gros 3.2.3; Jensen 10.5; Bertin 2.2-2.3). §4 Noise-driven dynamics: escape and stochastic resonance (Gros 3.3). §5 Branching processes (Jensen 5; Gros 6.5.2). §6 Heavy tails and stable laws (Thurner 2.3-2.4; Bertin 8.1). §7 Path-dependent processes, urns (Thurner 2.5.2-2.5.3). | `RandomWalkSystem`, `LevyFlightSystem`, `LevyWalkSystem`, `PersistentRandomWalkSystem`, `GaltonWatsonSystem`, `PolyaUrnSystem`, `KramersEscapeSystem`, `StochasticResonanceSystem`, `MultiplicativeNoiseSystem`, master-equation systems; `passage`, `markov`, `displacement`, `kramers_moyal`, `fit_law('stable')`, `large_deviations`. Full. | none |
| 4 | fractals-and-scaling | Fractals and scaling | §1 Self-similarity and fractal dimension (Thurner 3.5.1-3.5.2; Charbonneau 3.5-3.6; Downey 7; Datseris 5.3-5.4; Lindgren 6.2). §2 Fractal growth: DLA (Charbonneau 3.1-3.4). §3 Scaling laws and their origins (Thurner 3.1-3.3). §4 Measuring power laws (Thurner 3.4; Charbonneau 4.5, App. B; Downey 4; Clauset-Shalizi-Newman once imported). §5 Scaling in time: Hurst exponent, DFA (Thurner 3.5.3; Jensen 10.3-10.4). §6 Allometric and urban scaling (Thurner 3.6). | `ChaosGameSystem`, `MandelbrotSystem`, `JuliaSystem`, `KochCurveSystem`, `CantorSetSystem`, `SierpinskiSubstitutionSystem`, `DiffusionLimitedAggregationSystem`, `SimonYuleSystem`, `MultiplicativeProcessSystem`, `SampleSpaceReducingSystem`, urban-scaling systems; `scaling('box-counting' / 'correlation-dimension' / 'detrended-fluctuation' / 'rescaled-range' / 'allometric')`, `fit_law('power')` (Clauset-Shalizi-Newman via powerlaw). Full. | powerlaw (already a dependency) |
| 5 | phase-transitions-and-percolation | **new** Phase transitions and percolation | §1 The Ising model and Monte Carlo (Jensen 6.1-6.2; Bertin 1.4). §2 Critical points, fluctuations, correlation length (Jensen 6.3-6.6; Thurner 3.3.1; Gros 6.1). §3 Percolation and cluster statistics (Charbonneau 4.1-4.4; Downey 7). §4 Finite-size scaling, data collapse and real-space renormalisation (Charbonneau 4.6; Bertin 1.4.3). §5 Absorbing-state transitions (Gros 6.4.1; Bertin 3.2.2). | `IsingSystem`, `PottsSystem`, `XYSystem`, `GraphIsingSystem`, `SitePercolationSystem`, `ContinuumPercolationSystem`, `ExplosivePercolationSystem`, absorbing-process systems, `DirectedPercolationLangevinSystem`; `clusters`, `data_collapse`, `correlation('length')`, `domains`. Strong; real-space renormalisation of a lattice is not a ready analysis (`renormalization` coarse-grains networks), so §4's block-spin step is written in NumPy. | NumPy for block-spin renormalisation |
| 6 | cellular-automata | Cellular automata | §1 Elementary CA and Wolfram's classes (Downey 5; Charbonneau 2.1; Lindgren 4.1-4.2). §2 Two-dimensional CA and Life (Downey 6; Charbonneau 2.2-2.3; Gros 6.3.1). §3 Universality and computation (Downey 5). §4 Lattice agents: Langton's ant (Charbonneau 2.4). Section gap: Boolean networks (Gros 7). | `ElementaryAutomatonSystem`, `GameOfLifeSystem`, `HighlifeSystem`, `LangtonsAntSystem`, `NoisyAutomataSystem`, `LeniaSystem`, `TuringMachineSystem`, `RandomBooleanNetworkSystem`, `YeastCellCycleSystem`; `automaton` (injective, surjective, Garden of Eden by SAT). Full. | none |
| 7 | pattern-formation | **new** Pattern formation | §1 Reaction-diffusion fronts, Fisher-KPP (Gros 4.1). §2 Turing instability (Gros 4.2; Datseris 11.1; Downey 7). §3 Excitable media and spiral waves (Charbonneau 11; Datseris 11.2). §4 Spatiotemporal chaos (Datseris 11.3). | `FisherKPPSystem`, `GrayScottSystem`, `BrusselatorSystem`, `SchnakenbergSystem`, `SwiftHohenbergSystem`, `HodgepodgeSystem`, `FitzhughNagumoSystem`, `KuramotoSivashinskySystem`; `stability('dispersion')`, `defects`, `spectrum('structure-factor')`. Full. | none |
| 8 | networks | Networks | §1 Graphs and measures (Thurner 4.2-4.3; Jensen 8.1-8.2; Gros 1.1.1-1.1.2; Downey 2-3). §2 Random graphs and the giant component (Thurner 4.4; Gros 1.2; Downey 2; Jensen 8.4). §3 Small worlds (Downey 3; Gros 1.4; Thurner 4.5.3; Charbonneau 9.6). §4 Scale-free networks and preferential attachment (Downey 4; Gros 1.5; Thurner 4.5.4; Bertin 6.1). §5 Communities (Thurner 4.6; Jensen 8.3). §6 Spectra and the Laplacian (Gros 1.1.3-1.1.4; Thurner 4.4.4). Section gaps: correlation networks; multilayer networks and hypergraphs. | `RandomGraphEnsemblesSystem` (ER, WS), `BarabasiAlbertSystem`, `HolmeKimSystem`, `ConfigurationModelSystem`, `KroneckerGraphSystem`, hypergraph systems; `network_measures` (degrees, centrality, communities, assortativity), `motifs`, `renormalization`. Strong; spectra and graph algorithms come from NetworkX. | NetworkX (already a dependency) |
| 9 | dynamics-on-networks | **new** Spreading and dynamics on networks | §1 Random walks, diffusion and PageRank (Thurner 4.8.1-4.8.5; Jensen 8.5.2). §2 Epidemics: SIR, SIS, heterogeneous mean field (Charbonneau 9; Thurner 4.8.6; Datseris 10.3; Bertin 6.2; Gros 9.6). §3 Robustness, cascades and systemic risk (Gros 1.3; Datseris 10.1.3; Thurner 4.10). §4 Adaptive networks (Thurner 4.8.7). | `SIRSystem`, `SISSystem`, `NetworkSIRSystem`, `AgentBasedSIRSystem`, `HeterogeneousMeanFieldSISSystem`, `QuenchedMeanFieldSISSystem`, `AdaptiveSISSystem`, `PagerankSystem`, `NetworkAttackSystem`, `InterdependentNetworkCascadeSystem`, `WattsCascadesSystem`, `DebtrankSystem`, `CoevolvingVoterSystem`. Full. | NetworkX |
| 10 | self-organized-criticality | Self-organized criticality | §1 Driven dissipative systems and the sandpile (Charbonneau 5; Downey 8; Jensen 12.1.1; Gros 6.4; Thurner 2.5.4, 3.3.2). §2 Avalanche statistics (Charbonneau 5.4; Downey 8). §3 Mean-field and branching theory of SOC (Jensen 12.1.2; Gros 6.5). §4 SOC in nature: forest fires, earthquakes, traffic (Charbonneau 6-8; Jensen 12.1.4; Gros 6.3.2). §5 1/f noise (Downey 8; Gros 6.2). §6 SOC in evolution: Bak-Sneppen (Gros 6.6; Thurner 5.4.4). Section gap: record dynamics. | `SandpileSystem`, `MannaSandpileSystem`, `ZhangSandpileSystem`, `FixedEnergySandpileSystem`, `SelfOrganizedBranchingSystem`, `ForestFireSystem`, `BurridgeKnopoffSystem`, `BakSneppenSystem`, `NagelSchreckenbergSystem`, crackling-noise systems; `events('detect')`, `fit_law('power')`, `spectrum('power')`. Full; the spec's sandpile scenario is served by `SandpileSystem`. | none |
| 11 | synchronization | **split** Synchronization | §1 Oscillators, phases and frequency locking (Datseris 9.1-9.2; Gros 9.1). §2 The Kuramoto model and its onset (Jensen 7.1; Gros 9.2; Bertin 7.3). §3 Delays and pulse coupling (Gros 9.3-9.4). §4 Synchronisation on networks, master stability function, chimeras, chaotic synchronisation (Jensen 7.2, 8.5.3; Datseris 9.3, 10.2, App. B). | `KuramotoSystem`, `OttAntonsenSystem`, `DelayedKuramotoSystem`, `KuramotoOnNetworksSystem`, `KuramotoSakaguchiChimeraSystem`, `MirolloStrogatzSystem`, `AggregateAveragingSynchronizationSystem`, `ForcedVanDerPolSystem`, swarmalators; `alignment`, `correlation`. Full. | none |
| 12 | collective-motion | **split** Collective motion | §1 Flocking: boids and the Vicsek model (Charbonneau 10.1-10.4; Downey 10; Jensen 11.1; Gros 4.3.3; Bertin 3.5). §2 Swarm intelligence and stigmergy (Gros 4.3.2). §3 Traffic flow and jams (Charbonneau 7; Downey 10; Gros 4.4; Bertin 4.2). §4 Crowds and panic (Charbonneau 10.5). | `VicsekSystem`, `BoidsSystem`, `GregoireChateSystem`, `GinelliNematicsSystem`, colony-optimisation and trail systems, `NagelSchreckenbergSystem`, car-following systems, pedestrian and evacuation systems; `alignment`, `neighbors`, `coarse_grain`. Full. | none |
| 13 | agent-based-models | Agent-based models | §1 Agents, rules and scheduling (Downey 9; Jensen 11). §2 Segregation: Schelling (Downey 9; Jensen 11.2; Bertin 4.1). §3 Sugarscape and wealth (Downey 9; Bertin 4.4). §4 Opinion and social dynamics (Gros 4.3.1, 4.3.4; Thurner 4.8.8). §5 Agents versus mean field (Jensen 3.5). | `SchellingSystem`, `SugarscapeSystem`, `WolfSheepSystem`, `BoltzmannWealthSystem`, `KineticWealthExchangeSystem`, `BouchaudMezardWealthSystem`, `VoterSystem`, `HegselmannKrauseSystem`, Axelrod and bounded-confidence systems, `ElFarolSystem`, `MinorityGameSystem`; `coarse_grain`, `domains`. Full (Mesa underneath). | Mesa (already a dependency) only to show a model written from scratch |
| 14 | evolution-and-games | Evolution and games | §1 Replicator and quasispecies dynamics, hypercycles (Thurner 5.1-5.3; Gros 8.1-8.3, 8.5; Jensen 3.4). §2 Finite populations: drift, Moran process, fixation (Gros 8.4; Bertin 5.2-5.4; Jensen 10.6). §3 Fitness landscapes and NK models (Thurner 5.4.1-5.4.3; Downey 11; Gros 8.2). §4 Co-evolution: NKCS, Tangled Nature (Jensen 11.3; Thurner 5.4). §5 Evolutionary games and cooperation (Downey 12; Gros 8.7). Section gaps: innovation and combinatorial evolution; ecological competition. | `ReplicatorDynamicsSystem`, `RockPaperScissorsSystem`, `EigenQuasispeciesSystem`, `HypercyclesSystem`, `MoranProcessSystem`, `NKLandscapeSystem`, `NKCSSystem`, `PrisonersDilemmaTournamentSystem`, `SpatialPrisonersDilemmaSystem`, `PublicGoodsGameSystem`, `JainKrishnaSystem`, `CccModelSystem`, `TangledNatureSystem`, `GeneralizedLotkaVolterraSystem`; `autocatalytic_sets`. Full. | none |
| 15 | information-and-complexity-measures | Information and complexity measures | §1 Entropy, relative entropy, maximum entropy (Thurner 6.1-6.2; Gros 5.2; Lindgren 2; Jensen 9.4; Datseris 5.1-5.2). §2 Entropy rates, block and excess entropy (Lindgren 3; Gros 5.3.1). §3 Mutual information and transfer entropy (Jensen 9.1-9.2; Gros 5.2.2-5.2.3; Datseris 7.1-7.2). §4 Complexity measures: Lempel-Ziv, permutation entropy, statistical complexity, epsilon-machines (Jensen 9.5.1; Gros 5.3; Datseris 6.4.3; Lindgren 3.3). §5 Information-theoretic emergence (Jensen 9.5.2). Section gap: generalised entropies. | `entropy` (Shannon, Rényi, Tsallis, block, rate, excess, Lempel-Ziv, permutation, sample), `information` (mutual, transfer, KL, active storage, Lindgren's correlation information), `local_information`, `partial_information`, `complexity` (complexity-entropy plane), `epsilon_machine`, `emergence` (effective information, causal emergence). Full. | none |
| 16 | tipping-points-and-resilience | **new** Tipping points and resilience | §1 Tipping mechanisms: bifurcation, noise and rate tipping; catastrophes (Jensen 13.1-13.2; Datseris 12.2.1; Gros 2.3.1). §2 Basin stability and resilience (Datseris 12.2.2-12.2.3). §3 Critical slowing down and early-warning signals (Jensen 13.2; Datseris 12.2). §4 Tipping cascades and climate examples (Datseris 12.3). | `CuspFormSystem`, `SaddleNodeFormSystem`, `TippingCascadeNetworkSystem`, tipping-type and energy-balance systems, `VanDerPolIceAgesSystem`; `basin_stability`, `rolling` (variance, autocorrelation, skewness with Kendall's tau), `early_warning` (Dakos et al. indicators). Full. | none |
| 17 | time-series-and-model-discovery | **new** Time series and model discovery | §1 Delay embedding and Takens' theorem (Datseris 6.1-6.3). §2 Nonlinear time-series analysis: recurrences, surrogates, forecasting, networks from series (Datseris 6.4, 7.4, 8.4; Jensen 9.3; Gros 5.1.3). §3 Causality from data: convergent cross mapping (Datseris 7.3). §4 Equations from data: SINDy, DMD, Kramers-Moyal, reservoir computing (no benchmark chapter; see note). | `embedding`, `recurrence`, `surrogate_test`, `lyapunov('largest')`, `sparse_identification` (PySINDy), `mode_decomposition` (PyDMD), `kramers_moyal`, `reservoir` (reservoirpy). Strong; convergent cross mapping is not a named kind of any analysis (not found in 0.9.0) and would be written in NumPy. | NumPy for CCM |

## Proposed chapters

| Slug | Title | Position (after) | Depends on | Zotero sources | Reason (benchmarks and size) | Decision | Status |
|---|---|---|---|---|---|---|---|
| random-processes | Random processes and heavy tails | nonlinear-dynamics-and-chaos | complex-systems-and-emergence; maths probability | `thurnerIntroductionTheoryComplex2018` ch. 2; `jensenComplexityScienceStudy2023` ch. 5, 10; `grosComplexAdaptiveDynamical2015` §3.2-3.3, 6.5; `charbonneauNaturalComplexityModeling2017` App. C; Bertin `Z7B3XQLB` ch. 2, 8 | A whole chapter in Thurner (ch. 2) and in Jensen (ch. 5 and ch. 10), and a long section in Gros (§3.2-3.3). No listed chapter contains it, and four later chapters rely on it: branching for SOC, random walks for networks, Langevin noise for tipping, heavy tails for scaling. The mathematics tutorial's probability chapter has random walks and the CLT but no Markov chains, master equation, Langevin equation or stable laws. Seven sections. | proposed, awaiting owner approval | open |
| phase-transitions-and-percolation | Phase transitions and percolation | fractals-and-scaling | random-processes, fractals-and-scaling; physics `thermodynamics-statistical-mechanics` | `jensenComplexityScienceStudy2023` ch. 6; `charbonneauNaturalComplexityModeling2017` ch. 4; `downeyThinkComplexity2018` ch. 7; `grosComplexAdaptiveDynamical2015` §6.1, 6.4.1; Bertin `Z7B3XQLB` §1.4, 3.2 | A whole chapter in Jensen (ch. 6) and Charbonneau (ch. 4). Criticality is the reference point for SOC, scaling and the Kuramoto onset, and no listed chapter contains it. By M5 it does not re-teach what the physics tutorial already states (ensembles, Landau theory, mean field, Curie-Weiss, critical exponents in `sec-landau-theory`). It links there and adds what the physics tutorial lacks: lattice Monte Carlo, percolation, finite-size scaling and absorbing transitions. Five sections. Includes the "scaling and renormalisation" candidate as §4. | proposed, awaiting owner approval | open |
| pattern-formation | Pattern formation | cellular-automata | nonlinear-dynamics-and-chaos; maths differential-equations, fourier-analysis | `grosComplexAdaptiveDynamical2015` §4.1-4.2; `charbonneauNaturalComplexityModeling2017` ch. 11; `datserisNonlinearDynamicsConcise2022` ch. 11; `downeyThinkComplexity2018` ch. 7; Lindgren `AXCCURNB` ch. 7 | A whole chapter in Charbonneau (ch. 11) and Datseris (ch. 11), and half a chapter in Gros (ch. 4). Self-organised spatial structure is a core form of emergence, and none of the ten listed chapters covers PDEs. scikit-complexity covers it fully (`stability('dispersion')` derives the Turing condition symbolically). Four sections. | proposed, awaiting owner approval | open |
| dynamics-on-networks | Spreading and dynamics on networks | networks | networks, random-processes | `thurnerIntroductionTheoryComplex2018` §4.8, 4.10; `charbonneauNaturalComplexityModeling2017` ch. 9; `datserisNonlinearDynamicsConcise2022` §10.1.3, 10.3; `grosComplexAdaptiveDynamical2015` §1.3; `jensenComplexityScienceStudy2023` §8.4, 8.5.2; Bertin `Z7B3XQLB` §6.2 | Split from "networks". Epidemics are a whole chapter in Charbonneau (ch. 9) and most of one in Datseris (ch. 10), and Thurner §4.8-4.10 is as long as the structural part of his network chapter. One chapter for both would need about ten sections, against five to seven elsewhere. Structure (networks) and processes on structure (this chapter) also split naturally. Four sections. | proposed, awaiting owner approval | open |
| synchronization / collective-motion | Synchronization; Collective motion | self-organized-criticality (both, in that order) | nonlinear-dynamics-and-chaos, networks (synchronization); agent-based-models is *not* needed first (collective-motion) | Synchronization: `jensenComplexityScienceStudy2023` ch. 7; `grosComplexAdaptiveDynamical2015` ch. 9; `datserisNonlinearDynamicsConcise2022` ch. 9, §10.2. Collective motion: `charbonneauNaturalComplexityModeling2017` ch. 7, 10; `downeyThinkComplexity2018` ch. 10; `grosComplexAdaptiveDynamical2015` §4.3-4.4 | Split of the listed "collective behaviour and synchronization". Synchronisation is a whole chapter in three benchmarks (Jensen 7, Gros 9, Datseris 9). Flocking and traffic are whole chapters in two (Charbonneau 7 and 10, Downey 10). Together they need eight sections, and their mathematics differs: phase oscillators and mean-field self-consistency on one side, active particles and traffic models on the other. If the owner prefers one chapter, both section lists stand as written, as one chapter of eight sections. | proposed, awaiting owner approval | open |
| tipping-points-and-resilience | Tipping points and resilience | information-and-complexity-measures | nonlinear-dynamics-and-chaos, random-processes, dynamics-on-networks | `jensenComplexityScienceStudy2023` ch. 13; `datserisNonlinearDynamicsConcise2022` §12.2-12.3; `grosComplexAdaptiveDynamical2015` §2.3.1 | A whole chapter in Jensen (ch. 13, short) and a long section in Datseris (§12.2), so M4 is met by size (four sections) rather than by two whole chapters. It is the main applied use of bifurcation and noise theory in current complexity science (climate, ecosystems, finance). scikit-complexity has dedicated support (`early_warning`, `rolling`, `basin_stability`, tipping-cascade systems). | proposed, awaiting owner approval | open |
| time-series-and-model-discovery | Time series and model discovery | tipping-points-and-resilience | nonlinear-dynamics-and-chaos, information-and-complexity-measures | `datserisNonlinearDynamicsConcise2022` ch. 6-7, §8.4; `jensenComplexityScienceStudy2023` §9.3; `grosComplexAdaptiveDynamical2015` §5.1.3 | Two whole chapters of Datseris (6 and 7), plus sections of Jensen and Gros: at least three sections by M4. It covers the candidates "time series analysis" and "data-driven modelling (SINDy)". **Uncertain:** §4 (SINDy, DMD, reservoir computing) has no benchmark chapter and no Zotero source yet. It needs Brunton-Proctor-Kutz 2016 (SINDy) and a DMD or reservoir source proposed for Zotero before it is written. Without them, the chapter has three sections and §4 is dropped. | proposed, awaiting owner approval | open |

## Section gaps

| Chapter | Missing topic | Benchmarks | Status |
|---|---|---|---|
| nonlinear-dynamics-and-chaos | Delay differential equations (low priority) | Gros §2.5, 9.3 | open |
| nonlinear-dynamics-and-chaos | Slow-fast and adaptive systems (low priority) | Gros §3.1.3-3.1.4 | open |
| nonlinear-dynamics-and-chaos | Ergodicity and invariant densities | Datseris §8.3; Thurner §6.3.1 | open |
| phase-transitions-and-percolation | The XY model and vortex unbinding (low priority) | Jensen §6.7 | open |
| cellular-automata | Random Boolean networks and the edge of chaos | Gros ch. 7; Thurner §1.3.4 | open |
| networks | Correlation (functional) networks and filtering | Thurner §4.7; Jensen §9.3 | open |
| networks | Multilayer networks and hypergraphs | Thurner §4.9 | open |
| self-organized-criticality | Record dynamics and statistics of records | Jensen §12.2; Bertin §8.2.3 | open |
| evolution-and-games | Innovation and combinatorial evolution: adjacent possible, Jain-Krishna, CCC | Thurner §5.4.5-5.6 | open |
| evolution-and-games | Ecological competition and Lotka-Volterra communities (low priority) | Gros §8.6 | open |
| information-and-complexity-measures | Generalised entropies for complex systems: non-ergodicity, Shannon-Khinchin axioms, (c,d) classes, group entropy | Thurner §6.2.4-6.6; Jensen §9.5.3 | open |

## Candidates judged

| Candidate | Classification | Reason |
|---|---|---|
| Stochastic processes and random walks | proposed chapter `random-processes` | See proposals. |
| Phase transitions and percolation | proposed chapter `phase-transitions-and-percolation` | See proposals. |
| Scaling and renormalisation | covered by fractals-and-scaling §3-6 and phase-transitions-and-percolation §4 | Scaling laws need no chapter of their own. Renormalisation is one section, applied to percolation and Ising blocks. Field-theoretic renormalisation is in the physics tutorial (`renormalisation` `sec-wilsonian-rg`), linked. |
| Statistical mechanics of complex systems | split: equilibrium part in phase-transitions-and-percolation; stochastic part in random-processes; generalised entropies a section gap of information-and-complexity-measures | Ensembles and Landau theory belong to the physics tutorial (M5). No benchmark beyond Thurner ch. 6 treats the non-ergodic theory. |
| Time series analysis and early-warning signals | two proposed chapters: `time-series-and-model-discovery` and `tipping-points-and-resilience` | Early warnings are about critical slowing down near a bifurcation and sit with tipping. Embedding and recurrence are reconstruction methods and sit with model discovery. |
| Data-driven modelling (SINDy) | section of `time-series-and-model-discovery` (uncertain) | No benchmark chapter; needs a Zotero source first. |
| Machine learning for complex systems | out of scope as a chapter | The machine-learning tutorials teach learning. The two parts used here are methods of time-series modelling and go in `time-series-and-model-discovery` §4: reservoir computing and SINDy. Gros ch. 10 (cognitive systems) is out of scope. |
| Pattern formation (not in the brief) | proposed chapter `pattern-formation` | Found during mapping; two benchmark chapters. |

## Prerequisites from other tutorials

Links are cross-tutorial and allowed (design C10). "Maths" is Fundamentals of Mathematics for Physicists
(`fundamentals-of-mathematics-for-physicists/`). "ML maths" is Fundamentals of Mathematics for Machine Learning, and
"physics" is Fundamentals of Theoretical Physics.

| Chapter | Needs |
|---|---|
| complex-systems-and-emergence | None beyond calculus; maths probability `sec-random-variables` for the examples. |
| nonlinear-dynamics-and-chaos | Maths differential-equations `sec-odes` (existence, phase portraits), `sec-linear-systems` (matrix exponential, linear stability); linear-algebra `sec-eigenvalues`; real-analysis `sec-calculus` (Jacobian), `sec-inverse-implicit` (implicit function theorem for bifurcations); sets-relations-topology `sec-metric-spaces` (contraction mapping). |
| random-processes | Maths probability `sec-random-variables` (characteristic functions), `sec-limit-theorems` (LLN, CLT, random walks); differential-equations `sec-pdes` (diffusion equation); fourier-analysis `sec-fourier-transform` (stable laws). ML maths `mathematical-and-statistical-foundations` `sec-msf-stochastic-processes` (Markov chains, used as background; this chapter states them). |
| fractals-and-scaling | Maths real-analysis `sec-series` (geometric series for self-similar sets); sets-relations-topology `sec-metric-spaces`; probability `sec-statistics` (maximum likelihood, for power-law fits). |
| phase-transitions-and-percolation | Maths probability `sec-statistics` (Monte Carlo sampling); physics thermodynamics-statistical-mechanics `sec-ensembles`, `sec-landau-theory` (order parameters, mean field, critical exponents, Curie-Weiss, correlation length); physics renormalisation `sec-wilsonian-rg` (optional, for §4). |
| cellular-automata | Maths sets-relations-topology `sec-sets` (maps, configurations); group-theory `sec-groups` (optional, for CA on groups). |
| pattern-formation | Maths differential-equations `sec-pdes` (diffusion, finite differences), `sec-linear-systems`; fourier-analysis `sec-fourier-series`, `sec-fourier-transform` (modes, dispersion relations); linear-algebra `sec-eigenvalues`. |
| networks | Maths linear-algebra `sec-eigenvalues` (adjacency and Laplacian spectra), `sec-determinants-trace`; probability `sec-random-variables` (binomial and Poisson degrees, generating functions). Graph theory is taught in the chapter, since no earlier tutorial has it. |
| dynamics-on-networks | Maths differential-equations `sec-odes`, `sec-linear-systems` (SIR threshold by linear stability); linear-algebra `sec-eigenvalues` (Perron-Frobenius used, stated in the chapter). |
| self-organized-criticality | Maths probability `sec-limit-theorems`; random-processes (branching) and fractals-and-scaling (power-law fits) of this tutorial. |
| synchronization | Maths differential-equations `sec-odes`; complex-analysis `sec-complex-numbers` (order parameter $re^{i\psi}$); fourier-analysis `sec-fourier-series`; linear-algebra `sec-eigenvalues` (master stability function). |
| collective-motion | Maths real-analysis `sec-vector-calculus`; probability `sec-random-variables`. |
| agent-based-models | Maths probability `sec-random-variables`, `sec-limit-theorems`; differential-equations `sec-odes` (mean-field equations). |
| evolution-and-games | Maths differential-equations `sec-odes`, `sec-linear-systems` (stability of replicator fixed points); linear-algebra `sec-eigenvalues` (quasispecies as a Perron eigenvector); probability `sec-random-variables` (Moran process as a Markov chain). |
| information-and-complexity-measures | Maths probability `sec-probability-spaces`, `sec-random-variables`; ML maths `mathematical-and-statistical-foundations` `sec-information-theory` (entropy, KL); physics thermodynamics-statistical-mechanics `sec-thermodynamics` (thermodynamic entropy, for comparison). |
| tipping-points-and-resilience | Maths differential-equations `sec-odes`; probability `sec-statistics`; this tutorial's nonlinear-dynamics-and-chaos §2 and random-processes §3-4. |
| time-series-and-model-discovery | Maths linear-algebra `sec-eigenvalues` (DMD); probability `sec-statistics` (least squares, for SINDy); differential-geometry `sec-charts-manifolds` (embeddings, for Takens' theorem, stated without proof). ML maths `matrix-factorizations-and-linear-systems` (SVD). |

## scikit-complexity coverage (0.9.0)

Read from the wheel's `skcomplex` package: 740 catalogue system classes and 56 analysis functions, plus the
experiments `simulate`, `sweep`, `ensemble`, `orbit_diagram`, `basin_stability`, `sensitivity`, `calibrate`.
- **Fully served (every section has a ready system and analysis):** complex-systems-and-emergence, random-processes,
  fractals-and-scaling, evolution-and-games, cellular-automata, pattern-formation, dynamics-on-networks, self-organized-criticality,
  synchronization, collective-motion, agent-based-models, information-and-complexity-measures,
  tipping-points-and-resilience.
- **Served with small gaps:**
  - nonlinear-dynamics-and-chaos: no numerical continuation of bifurcation curves (Datseris §4.2.3); parameter
    sweeps with `orbit_diagram` and `stability` stand in.
  - phase-transitions-and-percolation: no block-spin renormalisation of a lattice; `renormalization` coarse-grains
    networks only.
  - networks: graph spectra and shortest-path algorithms come from NetworkX, which the package depends on.
  - time-series-and-model-discovery: no convergent cross mapping.
- **Other libraries:** NetworkX (networks), Mesa (to show an agent-based model written by hand), powerlaw (behind
  `fit_law`), and plain NumPy for the gaps above. All are dependencies of scikit-complexity 0.9.0, so
  `.venv-complexity` needs nothing beyond the pin and powerlaw (design C4). Each gap can also become a package issue
  instead (design, Risks).

## Notes for the owner

- **Length.** The list has 17 chapters against the proposal's 10. The new ones are four proposed chapters
  (random-processes, phase-transitions-and-percolation, pattern-formation, tipping-points-and-resilience), one
  uncertain proposal (time-series-and-model-discovery) and two splits (networks into networks and
  dynamics-on-networks; collective behaviour into synchronization and collective-motion). Rejecting the two splits
  gives 15. Rejecting time-series-and-model-discovery gives 14: its §1-3 then become a section gap of
  nonlinear-dynamics-and-chaos (delay embedding and recurrence), and SINDy is dropped.
- **Pilot unaffected.** The pilot chapter (complex-systems-and-emergence, C8) is the same under every option.
- **M5 boundary with the physics tutorial.** Ensembles, Landau theory, mean field and critical exponents are stated in
  the physics tutorial (`thermodynamics-statistical-mechanics`). The planned physics chapter
  `nonequilibrium-statistical-mechanics` will hold Langevin and Fokker-Planck material. random-processes states its
  Langevin and Fokker-Planck results at the level the benchmarks give, for complex-systems use. When the physics
  chapter is written, one of the two should link to the other rather than duplicate it. The owner decides which
  holds the statements.
- **Citation keys.** The benchmarks carry Better BibTeX auto-keys in Zotero (for example
  `jensenComplexityScienceStudy2023`), not the repo's short form (`jensen2023complexity`). None of them is in
  `references/references.bib` yet. The short keys should be pinned in Zotero when bib entries are added (task 2.2 or
  the pilot). Thurner's record lists the authors as Thurner, Klimek, Hanel, while the book's order is Thurner, Hanel,
  Klimek. This is a candidate metadata fix, for the owner's approval.
- **Sayama.** Approved, not yet imported. Its chapters (dynamical systems, CA, networks, ABM) fall within the plan
  above, so adding it should not change the list.
- **Section numbers** (§n) are the proposed section order inside each chapter, not final `sec-` ids.
