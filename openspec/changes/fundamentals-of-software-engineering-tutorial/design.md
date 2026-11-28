# Design

## Context

See proposal.md for why. The relevant current state:

- **System Design** (`system-design/`) is being written in reading order. Chapters 1–9 are written; chapters 10–15
  are not. Three of its chapters touch this tutorial's ground:
  - Chapter 2, The web stack, is written. It covers DNS, TCP and TLS round trips, HTTP, load balancing, CDNs, APIs,
    real-time delivery and authentication.
  - Chapter 11, Architecture styles, is not written. It covers coupling and partitioning, layered and modular
    monoliths, microkernels, microservices, event-driven, serverless, and evolution with the strangler fig.
  - Chapter 12, Reliability and operations, is not written. Its §5, safe change, lists CI/CD, canaries, feature
    flags, zero-downtime schema change and chaos testing.
- **Tooling already in place.** The change `complexity-and-system-design-tutorials` introduced:
  - per-tutorial software profiles (`<tutorial>/_software.yml`);
  - Python figure scripts and D2 diagrams with the site theme;
  - the `{.python .run}` / `{.text .run-output}` fences;
  - illustrative blocks;
  - `.venv-systems` (SimPy, NumPy, matplotlib).
- **Code blocks are run by the content checker on this machine**, not by `quarto render`.
- **Zotero holds the books** listed in the proposal. Gaps: testing, the classic design patterns (Gamma et al.),
  Evans's domain-driven design, Humble and Farley's *Continuous Delivery*, Forsgren et al.'s *Accelerate*,
  Kubernetes and Terraform.

## Goals / Non-Goals

**Goals:**
- One tutorial that follows a piece of software from its design to its operation on a cloud platform, at the same
  standard of proof, computation and citation as the other tutorials.
- A clean boundary with System Design (D2).
- Every mechanism that live infrastructure would show demonstrated by a runnable, offline model instead (D4).

**Non-Goals:**
- Vendor certification or product tutorials, such as AWS, Azure, GCP or a specific CI service. Cloud is taught
  through its service models and their trade-offs. Vendor examples appear as illustrative code.
- A programming course. Readers are assumed to program in Python.
- Front-end engineering, mobile development and embedded systems.
- Running live services during the checks.
- Security as a subject in its own right. It appears where a chapter needs it: supply-chain security in pipelines,
  network security in the networks chapter, identity in the cloud chapter.

## Decisions

**D1. Folder, title, track and order.**
- The folder is `fundamentals-of-software-engineering/`. The title is "Fundamentals of Software Engineering", and
  the description is "From code to production: design, architecture, networks, cloud and delivery pipelines".
- It is the second card of the Computer science track, after System Design, with `order` one past System Design's.
- Categories: Software Engineering, Software Architecture, Computer Networks, DevOps, Cloud Computing. Software
  Engineering becomes a broad topic chip.
- Alternatives considered (owner discussion, 2026-11-28):
  - three tutorials (architecture, networks, DevOps) were rejected in favour of one;
  - titles such as "Software Engineering and Infrastructure" and "From Code to Production" were rejected in favour
    of the site's "Fundamentals of …" pattern.

**D2. Boundary with System Design.**
- **System Design owns:**
  - the whole system's architecture (chapter 11);
  - operating a running system (chapter 12: SLOs, observability, overload control, multi-region);
  - the web request path (chapter 2).
- **This tutorial owns:**
  - the design inside a service;
  - architecture as a practice (characteristics, evaluation, ADRs, evolution);
  - protocol mechanisms (layering, IP, routing, TCP reliability and congestion control, sockets);
  - the delivery pipeline (version control, CI, build, CD, release strategies);
  - cloud, IaC, containers, orchestration and platforms.
- **Rules:**
  - Neither tutorial derives what the other owns; each links to the other.
  - Where both mention a thing, for example a canary release, the owner of the mechanism defines it. The other uses
    it.
- **System Design chapter 12 §5** narrows to canaries, rollback, feature flags and zero-downtime schema change as
  reliability mechanisms. It links here for pipelines and release engineering.
- **System Design chapter 11 §7** (evolving an architecture) keeps the system-level migration patterns (strangler
  fig, data migration). Technical debt and architecture fitness functions live here.
- **Task 1.2** edits the coverage rows of System Design chapters 11 and 12 in `openspec/coverage/system-design.md`.
  They are not written yet, so nothing is rewritten.
- **Labels.** Both tutorials share the `systems` label group of `_filters/harvest.py`, so cross-references resolve
  between them and labels stay unique.

**D3. Software profile and environment.**
- **Environment.** `.venv-swe`: Python 3.12, `pytest`, `hypothesis`, `networkx`, `simpy`, `numpy`, `matplotlib`. It is
  pinned in `fundamentals-of-software-engineering/requirements.lock`, with a one-line setup in `README.md`.
- **Profile.** `fundamentals-of-software-engineering/_software.yml` matches System Design's:
  - tab `Python`, first tabs `[Proof, Solution]`;
  - the `{.python .run}` and `{.text .run-output}` fences;
  - figure kinds `[py, d2]`;
  - illustrative `{.code .illustrative}`;
  - 120 s per block.
- **Git examples.** They run `git` through `subprocess` in a `tempfile.TemporaryDirectory()`, with fixed author
  names, dates and the environment variables `GIT_AUTHOR_DATE` and `GIT_COMMITTER_DATE`. Commit hashes are then
  reproducible.
- **Socket examples.** They bind to `127.0.0.1` on an OS-assigned port, use timeouts, and print only deterministic
  facts: bytes, sequence numbers, message order. They never print measured latencies.
- **Tests as examples.** Blocks run `pytest` in-process on a module written to a temporary directory. They print the
  pass and fail summary.
- **Alternative considered.** Reusing `.venv-systems` was rejected. A separate pin keeps the System Design checker
  stable when this tutorial adds `hypothesis` or `pytest` plugins.

**D4. Runnable models instead of live infrastructure.**

Every mechanism a live system would demonstrate gets a small, seeded Python model in the chapter:
- **Networks:** a sliding-window protocol over a lossy simulated link; AIMD flows sharing a bottleneck; link-state and
  distance-vector routing on a NetworkX graph, including count-to-infinity; a loopback TCP echo server.
- **CI and build:** a commit DAG and merge strategies with real Git; a build-dependency DAG with incremental rebuild
  and caching; flaky-test statistics; a pipeline as a SimPy queueing network with lead time and queueing at shared
  runners.
- **Delivery:** blue-green, canary and progressive rollouts with error-rate gates, simulated; feature flags.
- **Cloud:** cost models (on-demand, reserved, spot), autoscaling policies, availability of zones and regions.
- **Infrastructure as code:** desired-state against actual-state diff, the plan and apply, drift detection, and
  dependency ordering, as a toy planner.
- **Containers and orchestration:** layered images as content-addressed layers; a bin-packing scheduler; a
  reconciliation control loop with crash recovery; rolling updates with `maxSurge` and `maxUnavailable`.
- **Platform and metrics:** the four DORA metrics computed from a simulated deployment log.

Real configurations are shown beside the model as illustrative blocks: Dockerfiles, Kubernetes manifests, Terraform,
GitHub Actions YAML. This follows System Design's rule for live services.

**D5. Sources and coverage.**
- **Benchmark books** for the coverage record, all in Zotero:
  - Peterson and Davie (`7GD4IZ7Y`), *Computer Networking* (`MVD2CREJ`, 2020);
  - Gandhi et al. (`G62XG6CY`), *Master Software Architecture* (`YJJQ873P`), Pacheco (`VTG294QD`), Tune and Perrin
    (`QE7H5LUU`);
  - Zadka (`TWD86DTZ`), Tonello (`744M7GCV`), *A Complete Guide to DevOps with AWS* (`Y4YJ2HA2`);
  - *CompTIA Cloud+* (`S7CGULKW`);
  - the SRE book (`AMEY7JDS`).
- **Section sources:** Buelta (`PJXPE3IG`), Chou (`A2A59NPL`), Burns (`24JB4SCS`, metadata only), *The Architecture of
  Open Source Applications* (`NQQCD3NW`, `Z25V5CKC`), Gilbert, and the System Design books where relevant.
- **Gaps to propose to the owner in `references-proposal.md`**, open papers and documents first:
  - Parnas 1972, "On the Criteria To Be Used in Decomposing Systems into Modules";
  - Conway 1968;
  - Brooks 1987, "No Silver Bullet";
  - Lehman's laws of program evolution;
  - Cunningham 1992 on technical debt;
  - Jacobson 1988, "Congestion Avoidance and Control";
  - Chiu and Jain 1989 on AIMD;
  - RFC 791, RFC 9293 (already in Zotero), RFC 5681;
  - the DORA State of DevOps reports;
  - Google's SRE workbook;
  - the Kubernetes design papers (Borg, Omega, Kubernetes), Verma et al. 2015 and Burns et al. 2016.

  Commercial books (Gamma et al., Evans, Humble and Farley, Forsgren et al.) get metadata-only records unless the
  owner saves PDFs.
- **Coverage record.** `openspec/coverage/fundamentals-of-software-engineering.md` maps the benchmark tables of
  contents, read from the PDFs, to the proposed chapters, classifies the gaps, and lists the System Design overlaps
  with their owner under D2.

**D6. Proposed chapters, to be fixed by the coverage record.**

| # | Slug | Core content |
|---|---|---|
| 1 | design-principles | Modularity and information hiding (Parnas); coupling and cohesion; abstraction and interfaces; SOLID; dependency graphs and their metrics |
| 2 | design-patterns | Creational, structural and behavioural patterns; composition over inheritance; anti-patterns; patterns in Python |
| 3 | domain-driven-design | Ubiquitous language; entities, value objects, aggregates and invariants; bounded contexts and context maps; Conway's law |
| 4 | architecture-characteristics | Quality attributes and their measures; trade-off analysis; fitness functions; architecture decision records; C4 views (linked from System Design chapter 1) |
| 5 | evolution-and-technical-debt | Lehman's laws; technical debt as interest; refactoring; dependency and coupling metrics over time; modernisation (Tune and Perrin) |
| 6 | testing | Test levels and the pyramid; unit, integration and contract tests; property-based testing; coverage and mutation testing; flaky tests; test doubles |
| 7 | computer-networks | Layering; addressing and subnetting; routing (link-state, distance-vector); UDP and TCP; reliability with sliding windows; flow and congestion control (AIMD); sockets; network security basics |
| 8 | version-control-and-ci | Git's object model; branching and merging strategies; trunk-based development; continuous integration and its feedback loop |
| 9 | build-pipelines | Build graphs and incremental builds; caching and hermetic builds; artifacts, versioning and dependency management; supply-chain integrity (SBOMs, signing) |
| 10 | continuous-delivery | Deployment pipelines; environments; blue-green, canary and progressive delivery; feature flags; rollback; release metrics |
| 11 | cloud-computing | Service models (IaaS, PaaS, FaaS); regions and zones; elasticity and autoscaling; cost models; identity and access; the shared-responsibility model |
| 12 | infrastructure-as-code | Declarative and imperative styles; desired state, plan and apply; drift; modules and environments; policy as code |
| 13 | containers-and-orchestration | Isolation (namespaces, cgroups); images and layers; scheduling; controllers and reconciliation; services and networking; rolling updates |
| 14 | platform-engineering | Internal developer platforms; golden paths; self-service; the four DORA metrics; developer experience |

**D7. Pilot.**
- Chapter 7, computer-networks, is the pilot. It exercises every part of the profile: proofs (sliding-window
  throughput, AIMD convergence), simulations, real loopback sockets and D2 diagrams. It also has the strongest open
  sources.
- The owner reviews it, and the decisions are recorded as D7a before the other chapters start.
- After the pilot, chapters are written in reading order from chapter 1.
- Alternative considered: chapter 1 as the pilot. It was rejected because its runnable content is thin, so it would
  not test the profile.

**D8. Notation.**
- A new site table, `_notation/software-engineering.qmd`, included by the tutorial's notation page.
- Chapters reuse the symbols of `_notation/systems.qmd` for shared quantities, such as RTT, λ, μ and ρ. New symbols are
  added first in the new table, for example the window size, the congestion window, the coupling metrics and the
  DORA metrics.
- Clashes are recorded in the conventions section of the tutorial's notation page.

## Risks / Trade-offs

- **[Fast-moving tools]** CI services, cloud products and orchestrators change yearly.
  → Teach mechanisms through runnable models and stable sources (papers, RFCs, design books). Vendor syntax stays in
  dated illustrative blocks.
- **[Models mistaken for the real thing]** A toy scheduler is not Kubernetes.
  → Each model states which behaviour it reproduces and which it leaves out, with the source of the real behaviour.
- **[Overlap with System Design]** Two tutorials discuss the same objects.
  → D2's ownership rule, the shared label group, and coverage rows naming the owner of each overlapping item.
- **[Git and socket nondeterminism]** Hashes, ports and timings vary.
  → Fixed dates and identities for Git. Printed facts that do not depend on port or time.
- **[Commercial books]** Classics such as Gamma et al., Evans and *Accelerate* may be metadata only.
  → Sections rely on books and papers with PDFs, and cite a classic by page only if the owner saves it.
- **[Machine load]** Other tutorials' agents share the machine.
  → One chapter per run. Each checker run covers that chapter alone.

## Migration Plan

- **Ordering.** The `site-design` delta here assumes the four-track home page of
  `complexity-and-system-design-tutorials` and the three-tutorial Machine learning track of
  `fundamentals-of-ai-tutorial`. Archive those changes first, or merge the deltas into one requirement text when
  archiving whichever comes later.
- **Rollback.** Remove the folder, the sidebar entry and the track card. System Design links to this tutorial only
  from chapters not yet written.
