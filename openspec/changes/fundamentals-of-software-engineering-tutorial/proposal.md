# Proposal

## Why

System Design teaches how a whole system is shaped: its components, its data and the guarantees it gives. It does not
teach how each piece is designed, tested, built, shipped and run on real networks and clouds. The owner wants one
tutorial for that path, from code to production, beside System Design in the Computer science track.

The Zotero library already holds most of the books it needs:
- software architecture: Gandhi et al., *Head First Software Architecture*; Pacheco, *Principles of Software
  Architecture*; *Master Software Architecture*; Tune and Perrin, *Architecture Modernization*; Buelta, *Python
  Architecture Patterns*; Gilbert;
- networking: Peterson and Davie, *Computer Networks: A Systems Approach*; *Computer Networking* (2020); Chou,
  *Mastering Python Networking*;
- DevOps and operations: Zadka, *DevOps in Python*; Tonello, *Practical Linux DevOps*; *A Complete Guide to DevOps
  with AWS*; Beyer et al., *Site Reliability Engineering*;
- cloud: *CompTIA Cloud+*; *Solutions Architect's Handbook*.

## What Changes

- **A new tutorial, Fundamentals of Software Engineering** (`fundamentals-of-software-engineering/`), described as
  "From code to production: design, architecture, networks, cloud and delivery pipelines".
  - It is built from `openspec/templates/tutorial-index.qmd` and `openspec/templates/chapter.qmd`, with a landing
    page, notation page, glossary, its own sidebar and a cover.
  - It follows the same chapter rules as the other tutorials:
    - ten examples and ten exercises per statement;
    - collapsed two-tab solutions (Proof or Solution | Python);
    - scripted figures and D2 diagrams;
    - three closing exercises;
    - cited sources with locators.
  - Proposed chapters, in reading order:
    1. design principles;
    2. design patterns;
    3. domain-driven design;
    4. architecture characteristics, evaluation and decision records;
    5. architecture evolution and technical debt;
    6. testing;
    7. computer networks;
    8. version control and continuous integration;
    9. build pipelines;
    10. continuous delivery and release engineering;
    11. cloud computing;
    12. infrastructure as code;
    13. containers and orchestration;
    14. platform engineering and delivery metrics.

    This list is a proposal. A coverage record against the benchmark books fixes it, and the owner approves the final
    list, as for every other tutorial.
- **Boundary with System Design.**
  - System Design keeps:
    - the architecture of a whole system (chapter 11, Architecture styles: monolith, microservices, event-driven,
      serverless);
    - the operation of a system (chapter 12: SLOs, observability, overload control, failover);
    - the request path of the web stack (chapter 2: DNS, TLS, HTTP, load balancing, CDNs).
  - Fundamentals of Software Engineering covers:
    - the inside of a service: design, patterns, domain models, tests;
    - architecture as a practice: evaluation, decision records, evolution;
    - the protocol mechanisms underneath the web stack: layering, IP, routing, TCP reliability and congestion control,
      sockets;
    - the delivery pipeline from commit to production, the cloud it runs on, and the platform that serves it.
  - Each tutorial links to the other for what it owns. System Design chapter 12 §5 (safe change) narrows to the
    operational view: canaries, rollback and feature flags as reliability mechanisms. It links here for pipelines and
    release engineering.
- **Software.** A Python profile with a pinned environment `.venv-swe`:
  - the standard library (sockets, `asyncio`, `http.server`, `sqlite3`, `unittest`);
  - `pytest` and Hypothesis;
  - NetworkX for dependency graphs;
  - SimPy for pipelines and networks;
  - NumPy and matplotlib;
  - Git, driven from Python in a temporary repository.

  Real infrastructure appears only as illustrative code: cloud accounts, containers, Kubernetes clusters, Terraform
  runs, CI services. Its mechanisms are shown by small runnable models instead. Examples: a reconciliation loop, a
  scheduler, an infrastructure plan computed as a diff, a pipeline simulated as a queueing network.
- **Sources.** Missing classics and open documents are proposed to the owner and added to Zotero only after
  approval. Examples:
  - Parnas 1972 on modules, Conway 1968, Brooks's "No Silver Bullet";
  - the DORA reports, Google's SRE workbook;
  - the TCP and IP RFCs, and Jacobson 1988 on congestion control.
- **Home page.** The Computer science track lists System Design and Fundamentals of Software Engineering.

## Capabilities

### New Capabilities
- `software-engineering-tutorial`: the Fundamentals of Software Engineering tutorial. Covers its chapters, landing
  page and navigation, its boundary with System Design, sources, its software profile with runnable models of
  infrastructure, and the chapter template.

### Modified Capabilities
- `site-design`: the Computer science track of the home page lists two tutorials.

## Impact

- **New files:**
  - the folder `fundamentals-of-software-engineering/`;
  - a new notation table `_notation/software-engineering.qmd`.
- **Edited shared files:**
  - `_quarto.yml`: a new sidebar;
  - the root `index.qmd`: the track listing;
  - `_includes/topics.html`: broad topics, for example Software Engineering;
  - `openspec/config.yaml`: the tutorial list in its context;
  - `_filters/harvest.py`: the tutorial joins the `systems` label group, so it can cross-reference System Design.
- **Another change.** In `complexity-and-system-design-tutorials`, the System Design coverage rows of chapters 11 and
  12 get links to this tutorial, and chapter 12 §5 is narrowed as above. Neither chapter is written yet.
- **Dependencies:**
  - `.venv-swe`, with a pinned `requirements.lock`;
  - Git on the machine, which is already there.

  No network access is needed at check time. Socket examples use the loopback interface only.
- **Zotero:** new items and reading notes, written only after the owner approves them.
- **Coverage:** a new record, `openspec/coverage/fundamentals-of-software-engineering.md`.
