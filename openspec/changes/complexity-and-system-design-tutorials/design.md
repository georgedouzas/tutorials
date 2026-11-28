# Design

## Context

The site has five tutorials, all built from `openspec/templates/tutorial-index.qmd` and
`openspec/templates/chapter.qmd`. The chapter template, as raised by the maths-physicists-content change, requires the
following:
- statements followed by exactly ten examples and ten exercises;
- collapsed solutions with two tabs, "Proof" and "SageMath";
- figures drawn by `figures/<name>.sage` scripts through `_filters/figstyle.sage`;
- three closing exercises.

`_filters/check_content.py` enforces this, but it is hard-wired to SageMath in four places:
- the tab names;
- the `{.python .sage}` fence;
- `sage -python` as the runner;
- `.sage` figure scripts.

`_filters/harvest.py` has fixed label groups. `openspec/config.yaml` lists the five tutorials. Coverage records sit in
`openspec/coverage/`. References live in Zotero, with a `tutorial-reading-note` child note per reference, and new
references need the owner's approval.

Research for this change found the following.
- **Zotero, Complexity Science:** 31 items carry the tag. The strongest benchmarks are:
  - Thurner-Hanel-Klimek, *Introduction to the Theory of Complex Systems* (`233Q4D2M`);
  - Jensen, *Complexity Science* (`IR5YQZEM`);
  - Gros, *Complex and Adaptive Dynamical Systems* (`6HH9Y9SR`);
  - Charbonneau, *Natural Complexity*, with Python code throughout (`VY9ARINT`);
  - Downey, *Think Complexity* (`RAZCXVNF`);
  - Datseris-Parlitz, *Nonlinear Dynamics* (`M6MW7EAC`);
  - Lindgren, *Information Theory for Complex Systems* (`AXCCURNB`);
  - Bertin, *Statistical Physics of Complex Systems* (`Z7B3XQLB`).
- **Zotero, System Design:**
  - Xu, *System Design Interview* vol. 1 (`UBAGKN6G`; its record has no author);
  - Tan, *Acing the System Design Interview* (`4KTQIAK5`);
  - Sinha-Chopra, *System Design Guide* (`MQVW6QAV`);
  - Liu, *System Design Interview Fundamentals* (`BS5WB6W7`);
  - Reis-Housley, *Fundamentals of Data Engineering* (`P6ECV3FJ`);
  - the architecture books by Gandhi-Richards-Ford (`G62XG6CY`), Pacheco-Sgro (`VTG294QD`) and Gilbert-Lavi
    (`GRGM4CJ3`).
  - None of the classic distributed-systems papers, the SRE book, van Steen-Tanenbaum or Kleppmann is in the library.
- **scikit-complexity 0.9.0** (2026-11-10, MIT, by the owner):
  - It follows scikit-learn conventions: elements, interactions and systems as estimators, run by
    `core.engine.runtime.simulate`.
  - It has a catalogue of systems by field and topic (`systems.all_systems`) and analysis modules (entropy, Lyapunov,
    recurrence, scaling, networks, emergence, sparse identification).
  - It requires Python 3.12-3.14 on Linux or macOS on Apple silicon.
  - It pulls passagemath, LAMMPS with MPICH, JAX, numba, Mesa, networkx, igraph and many more.
  - Eight releases came out in one week.
- **D2 0.9.0:** installed locally. It renders SVG offline in about 20 ms, bundles the dagre, elk and tala layouts, and
  has light and dark themes.

## Goals / Non-Goals

**Goals:**
- Two tutorials that read and behave like the others, held to the same chapter template and checks.
- Every computation and figure is run by a committed script and checked.
- Sources come from Zotero, with new free sources added after approval.
- The chapter lists are justified by coverage records.

**Non-Goals:**
- Changing the mathematics, physics or machine-learning tutorials, or their SageMath profile.
- Running live services (databases, brokers, containers, load generators) during the build.
- Teaching computational complexity theory, which is a different subject from complex systems.
- Exam-style "interview preparation". The System Design tutorial teaches the principles, with proofs where results have
  them.

## Decisions

**C1. Folder names and order.**
- The folders are `complexity-science/` and `system-design/`, matching the short names readers search for.
- On the home page they form two new tracks, each with one card: "Complexity science" (Complexity Science) and
  "Computer science" (System Design), placed after the Machine learning track. The owner chose two separate tracks on
  2026-11-22, which leaves room for later tutorials in either subject.
- Complexity Science links back to the mathematics tutorials for its prerequisites.

**C2. Same template, same counts.**
- Chapters are copied from `openspec/templates/chapter.qmd` and landing pages from
  `openspec/templates/tutorial-index.qmd`.
- The ten-and-ten rule, the two-tab solutions, the closing exercises, prose before blocks and the References section
  all apply unchanged.
- **Complexity Science statements:** definitions (a cellular automaton, the fractal dimension, the Lyapunov exponent,
  a scale-free network) and proved results (the logistic-map period doubling at r = 3, the Erdős-Rényi giant-component
  threshold, the mean-field Kuramoto onset, the entropy bounds).
- **System Design statements:**
  - definitions of components and patterns;
  - theorems and propositions with published proofs: Little's law, M/M/1 and M/M/c formulas, quorum intersection
    R + W > N, the CAP theorem (Gilbert-Lynch), Lamport-clock ordering, Raft safety (stated with the paper's lemmas,
    proved at the level the paper gives).
- The first solution tab is titled "Proof" where the exercise asks for a proof, and "Solution" otherwise. The checker
  accepts either.

**C3. Software profiles, file per tutorial.**
- Each tutorial gets `<tutorial>/_software.yml` with these keys:
  - `tab` (second tab label): "Python" for both new tutorials;
  - `fence` (code block classes): `{.python .run}` and `{.text .run-output}`;
  - `runner` (command and environment);
  - `figure_kinds` (`sage`, `py`, `d2`);
  - `illustrative` (the class that marks code not to run): `{.code .illustrative}`.
- No file means the SageMath profile, so the mathematics tutorial is unchanged.
- The checker reads the profile instead of its constants. The `--sage` flag becomes `--run`, with `--sage` kept as an
  alias.
- *Alternative considered:* Quarto's own `jupyter` execution, as in the reinforcement-learning chapter. Rejected for
  solutions, because executing every solution on each render couples the site build to the heavy scikit-complexity
  environment. The recorded-output model already used for Sage keeps renders fast and offline.

**C4. Two pinned environments.**
- **`.venv-complexity`:** Python 3.12, `scikit-complexity==0.9.0` plus powerlaw. NetworkX and Mesa come as
  dependencies.
- **`.venv-systems`:** Python 3.12, SimPy, NumPy, matplotlib, and sqlite3 from the standard library.
- Each environment has a pinned requirements file in its tutorial folder (`requirements.lock`) and a one-line setup
  command in the landing page's software section and in `README.md`.
- The checker treats a missing environment as "not checked" for that tutorial only.
- Upgrading scikit-complexity is a deliberate change. It re-runs `--update` on the tutorial and reviews the diffs.

**C5. Figures.**
- Python figure scripts use a new `_filters/figstyle.py`, ported from `figstyle.sage`: the same palette, SVG output,
  and Plotly for interactive figures.
- D2 diagrams are `figures/<name>.d2`, rendered with a pinned D2 version by `d2 --layout=elk --theme=<site>
  --dark-theme=<site-dark> name.d2 name.svg`. The site themes are chosen from D2's themes (or a custom theme block) to
  match the palette.
- Figures are rendered by the checker's `--figures` run, like the Sage scripts, and committed. The site build never
  calls D2.
- *Alternative considered:* the `quarto-d2` extension, which renders at build time. Rejected, because it adds a build
  dependency and breaks the "committed script regenerates committed figure" rule shared with the other tutorials.

**C6. Coverage first, then the chapter list.**
- Each tutorial gets a coverage record in `openspec/coverage/<tutorial>.md`, following the format of
  `fundamentals-of-mathematics-for-physicists.md`.
- **Benchmark textbooks:**
  - Complexity Science: Thurner, Jensen, Gros, Charbonneau and Downey, plus Sayama if approved;
  - System Design: Xu, Tan, Sinha-Chopra and Liu, with van Steen-Tanenbaum and the SRE book if approved.
- Their tables of contents are read from the PDFs and mapped to the proposed chapters.
- The owner approves the final chapter list before any chapter is written. Approved chapters not yet written are
  placeholders marked "planned".

**C7. New references by approval, free ones first.**
- The candidates are listed in `references-proposal.md` in this change, each with metadata, proposed tags,
  collection and PDF source. They are shown to the owner, and written to Zotero only after approval.
- PDFs go through the desktop connector, as recorded for this library; tags follow the owner's convention.
- **Free with PDF:**
  - Complexity Science: Sayama; Clauset-Shalizi-Newman (arXiv).
  - System Design: Lamport "Time, Clocks"; Paxos Made Simple; Raft; End-to-End Arguments; Gilbert-Lynch; Brewer
    2012; GFS; MapReduce; Bigtable; Dynamo; Chubby; Spanner; Kafka (if a canonical copy is found); the SRE book;
    van Steen-Tanenbaum (personalised PDF); The Architecture of Open Source Applications.
- **Online-only free book:** Barabási, *Network Science*, recorded with its URL and the reason it has no PDF.
- **Commercial books:** Kleppmann, Newman, Strogatz. They are added as metadata-only records, each with a recorded
  reason, only if the owner wants them. Chapters may not depend on them, because their pages cannot be verified from
  Zotero.
- The author of Xu's vol. 1 (`UBAGKN6G`) is fixed only after approval.
- Reading notes are written as each chapter is raised, with `~/.config/zotero-mcp/reading-notes-push/`.

**C8. Pilot chapter per tutorial.**
- The first chapter of each tutorial is written alone and reviewed by the owner before the others:
  - Complexity Science: "Complex systems and emergence";
  - System Design: "Estimation and the design process".
- Changes the review asks for are folded into this design before the remaining chapters start.
- The remaining chapters are then written one section per run, in reading order, with the same gates as the
  mathematics tutorial: checker, harvest, render.
- The two tutorials may advance in parallel.

**C8a. Complexity Science pilot decisions (owner, 2026-11-22).**
- The pilot is approved as written.
- "Complex system" is defined in the strict co-evolution sense (Thurner-Hanel-Klimek): the interactions evolve with the states. The prose says that later chapters use the wider usage, in which models such as Ising count as complex.
- Every chapter ends with a short annotated References section listing its works with locators, because the bibliography filter drops the citeproc list.
- scikit-complexity issues found while writing are reported to the owner, who maintains the package. Chapters work around them in place, with seeds passed to both the constructor and `simulate`.

**C9. Notation and glossary.**
- Each tutorial gets a notation page that includes the shared `_notation/` tables, plus new tables for its subject:
  - `_notation/complex-systems.qmd`: Lyapunov exponent λ, fractal dimension D, degree distribution P(k), order
    parameter r;
  - `_notation/systems.qmd`: arrival rate λ, service rate μ, utilisation ρ, the quorum sizes N, R and W.
- Clashes with existing symbols (λ is also an eigenvalue and the Poisson rate) are listed for the owner's decision.
- Each tutorial gets a glossary page, like the physics tutorials.
- **Complexity Science clashes, decided by the owner on 2026-11-22.** The tutorial keeps the field's standard symbols.
  Each clash is listed with its meaning in this tutorial in "Conventions specific to this tutorial" on
  `complexity-science/notation/index.qmd`, as the notation spec allows for stated deviations. Where two meanings meet
  in one chapter, the complex-systems meaning takes a subscript (for example $\lambda_L$ for a Lyapunov exponent
  beside Jacobian eigenvalues). The † marks of `_notation/complex-systems.qmd` now point to that section instead of
  marking symbols as provisional. The clashes found while writing the table (2026-11-22) were:
  - $\lambda$ (Lyapunov exponent) against the eigenvalue $\lambda$ (linear algebra), the Poisson mean
    $\operatorname{Poisson}(\lambda)$ (probability), and the regularisation strength (machine learning). Stability
    chapters use both Jacobian eigenvalues and Lyapunov exponents together. Options: keep $\lambda$ for Lyapunov
    exponents and write eigenvalues $\mu$ there, or write Lyapunov exponents $\lambda_i$ only with an index.
  - $D$ (fractal dimensions $D_0$, $D_2$, $D_q$) against the diffusion coefficient $D$ of random processes (Fick,
    Langevin, Fokker-Planck), the diagonal degree matrix $\mathbf D$ in $\mathbf L = \mathbf D - \mathbf A$, the disc
    $D(z_0, r)$ and the operator domain $D(T)$. Options: fractal dimensions always with an index ($D_0$, $D_2$,
    $D_q$, $D_f$) and $D$ alone for diffusion.
  - $C$ (clustering coefficient) against the correlation sum $C(\varepsilon)$ in the same table and the Courant number
    $C$ (analysis).
  - $r$ (Kuramoto order parameter) against the logistic-map parameter $r$ of the benchmarks ($x_{n+1} = rx_n(1 - x_n)$),
    the mesh ratio $r$ (analysis), the compactification radius $r$ (physics) and the spectral radius $r(T)$. The
    order parameter of the physics tutorial's Landau theory is $m$ (magnetisation).
  - $\alpha$ (power-law exponent) against the critical exponent $\alpha$ of the specific heat (physics Landau theory),
    the fine-structure constant, the significance level and step size (machine learning).
  - $\tau$ (avalanche-size exponent, and the embedding delay of Takens' theorem) against proper time, a trajectory
    (reinforcement learning) and the time step $\tau$ of finite differences.
  - $\sigma$ (branching ratio) against the standard deviation $\sigma$; $\beta$ and $\gamma$ (SIR infection and
    recovery rates) against the inverse temperature $\beta$, the critical exponents and the damping constant $\gamma$.
  - $P(k)$ and $P(s)$ (degree and avalanche-size distributions) against the convention that $\mathbb P$ is a
    probability and $p$ a density or mass function; $p$ (percolation occupation probability) against $p$ as a mass
    function.
  - $\langle k\rangle$ (mean degree; network science writes averages with angle brackets) against the convention that
    $\langle\cdot\rangle$ is a quantum or thermal average and $\mathbb E$ the expectation.
  - $\mathbf x^*$ (fixed point) against $z^*$ (complex conjugate) and $A^*$ (entrywise conjugate). Phase-oscillator
    chapters use both.
  - $N$ (number of nodes or agents) against the counting function $N(\lambda)$, the box count $N(\varepsilon)$ in the
    same table, and the System Design quorum size $N$; $M$ (number of edges) against $M_X(s)$; $\ell$ (mean
    path length) against the log-likelihood $\ell(\theta)$; $K$ (Kuramoto coupling) against the number of classes or
    clusters $K$ and an integral operator $K$.
  - $E$ (excess entropy) against the edge set $E$ of a graph in the same table; $h$ (entropy rate) against a
    hypothesis $h$ (machine learning).
  - Logarithm base: the shared tables measure entropy in nats, while Lindgren and most information-theory sources for
    complex systems use bits. Options: keep nats and write $\log_2$ where bits are meant (the machine-learning
    convention), or make bits this tutorial's convention.
- **System Design clashes, 2026-11-27.** The Complexity Science decision is applied unchanged:
  `_notation/systems.qmd` keeps the field's symbols, marks each clash †, and the "Conventions specific to this
  tutorial" section of `system-design/notation/index.qmd` lists them. The clashes are:
  - $\lambda$ (arrival rate) against the eigenvalue, the Lyapunov exponent and the regularisation strength; it agrees
    with the Poisson mean;
  - $\mu$ (service rate) against the mean and the bifurcation parameter; means are written $\mathbb E$ in this
    tutorial;
  - $\rho$ (utilisation) against the density and the resolvent set;
  - $N$ (replication factor) against the counting process $N(t)$ (always with its argument), the number of elements
    of Complexity Science and the Monte Carlo sample count;
  - $W$ (mean time in the system, Little's law) against the write quorum size $W$ in the same table and the
    Wronskian; a chapter that needs both writes the quorum sizes $q_R$, $q_W$. $R$ (read quorum) has no clash;
  - $L$ against the likelihood $L(\theta)$ and the Laplacian $\mathbf L$; $T$ (response time) and $c$ (servers)
    against the temperature and the speed of light; $A$ (availability) against the adjacency matrix and an event;
  - $C(c, a)$ (Erlang C) against $C(e)$ (Lamport timestamp), told apart by their arguments and kept in different
    chapters;
  - $e \to e'$ (happens-before) against the map arrow; $m$, $k$, $n$ (Bloom filter), $d$ (count-min depth) and $r$
    (token-bucket rate) against the magnetisation, degree, dimension, metric and the logistic and Kuramoto $r$.
  The owner may still amend any of these when the pilot is reviewed (task 5.3).

**C10. Labels and cross-references.**
- `harvest.py` gains a "systems" label group holding both tutorials, so labels stay unique across the site.
- Links from Complexity Science to the mathematics tutorials (probability, differential equations, linear algebra)
  are cross-tutorial links, which the forward-reference rule allows.

**C11. scikit-complexity wherever possible (owner decision, 2026-11-28).**
- Every Complexity Science computation uses scikit-complexity whenever the package has the system, solver or
  analysis. This applies to simulations, Lyapunov exponents, dispersion relations, defects, fits and graph models.
- When a feature is missing or broken, a GitHub issue is filed on `georgedouzas/scikit-complexity` before falling back
  to NumPy, SciPy or NetworkX code. The fallback block names the issue in a comment or in the prose.
- Speed alone is not a reason to fall back. A run that is too slow is shortened, or filed as a performance issue after
  it is re-timed on a lightly loaded machine.
- Hand-written code stays only where the point of the block is the algorithm itself, such as a Benettin iteration
  written out to teach how the Lyapunov spectrum is computed. In that case the package result is printed alongside it
  as a check.
- Chapters written before this decision (1–7) are audited and converted.

## Risks / Trade-offs

- **scikit-complexity is young and heavy.**
  - *Risk:* API changes between releases, and install failures.
  - *Mitigation:* the pin, the separate environment, recorded outputs so renders never import it, and the
    "not checked" fallback.
  - The owner maintains the package, so gaps found while writing can become package issues rather than workarounds.
- **The System Design subject moves fast.**
  - *Risk:* tool versions and cloud services date quickly.
  - *Mitigation:* teach principles and proved results from stable sources (papers, textbooks). Vendor services appear
    only as examples.
- **Commercial standards are missing.** Kleppmann and Strogatz are the usual references but cannot be verified from
  Zotero. Content relies on the library's books and the free papers, which cover the same ground.
- **Interview books are thin on proofs.** Their chapters supply the case studies and exercises; the papers supply the
  theorems.
- **D2 themes must work in dark mode.** Each diagram is rendered with a light and a dark theme, and the figure check
  confirms both files.

## Migration Plan

This change adds to the site and changes nothing existing, apart from the home-page track list, the topic chips and
the checker's generalisation. The checker change keeps the SageMath behaviour as the default, and is verified by
running it on the raised mathematics chapters before any new chapter is written.

## Open Questions

- **Decided 2026-11-22 (owner):** two separate home-page tracks (C1); all 20 proposed references approved; the
  optional commercial books (Newman, Strogatz, Kleppmann, Xu vol. 2, Burns) added as metadata-only records with a
  recorded reason; the Xu vol. 1 record fixed.
- **Pages in the tutorial or in the package docs:** whether scikit-complexity's own documentation should link to the
  tutorial, or the tutorial's pages be reused as package examples. This is outside this change.
