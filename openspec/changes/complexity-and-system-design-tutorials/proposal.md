# Proposal

## Why

The site has tutorials on mathematics, physics and machine learning, and none on complex systems or on the design of
large software systems. The owner wants both. The two topics are well served by sources already in the Zotero
library: 31 items tagged Complexity Science, and a dozen system-design and architecture books. They also have
tools that let every example be run rather than only read. scikit-complexity is the owner's own package, with a catalogue of
ready-made complex systems. D2 turns plain-text architecture descriptions into diagrams.

## What Changes

- **Two new tutorials**, each built from `openspec/templates/tutorial-index.qmd` and
  `openspec/templates/chapter.qmd`, with a landing page, notation page, glossary, its own sidebar and a cover. They
  follow the same chapter rules as the other tutorials: statements with ten examples and ten exercises each,
  collapsed two-tab solutions, scripted figures, three closing exercises, and cited sources.
  - **Complexity Science** (`complexity-science/`). It covers emergence, nonlinear dynamics and chaos, fractals and
    scaling, cellular automata, networks, self-organized criticality, collective behaviour and synchronization,
    agent-based models, evolution and games, and information and complexity measures. scikit-complexity is the main
    software, with NetworkX, Mesa, NumPy/SciPy and powerlaw beside it.
  - **System Design** (`system-design/`). It covers estimation and the design process, the web stack, performance and
    queueing, storage and databases, replication and partitioning, consistency and consensus, caching and
    asynchronous processing, architecture styles, reliability and operations, and case studies. Diagrams are written
    in D2. Runnable examples use Python with SimPy and SQLite.
  - The chapter lists above are proposals. Each tutorial gets a coverage record against its benchmark textbooks, and
    the owner approves the final chapter list, as for every other tutorial.
- **Per-tutorial software profiles.** Today the solution tabs, the code check and the figure scripts are hard-wired
  to SageMath. Each tutorial will instead declare its software: the name of the second solution tab, the language of
  its code blocks and the command that runs and checks them, and the kinds of figure script it uses (Sage, Python
  or D2). The mathematics tutorials keep their SageMath profile unchanged.
- **New sources.** Free classic papers and books will be proposed to the owner for Zotero, with metadata, tags and
  collections, and added with PDFs and reading notes only after approval. Examples are GFS, MapReduce, Dynamo, Raft,
  Paxos Made Simple, Lamport's clocks, the CAP proof, the SRE book, van Steen-Tanenbaum, Sayama, Barabási's
  *Network Science*, and Clauset-Shalizi-Newman on power laws. The Zotero record of Xu's *System Design Interview*,
  which has no author, will also be fixed with approval.
- **Home page.** Two new tracks, Complexity science and Computer science, hold one tutorial each, and new topic
  chips appear in the filter.

## Capabilities

### New Capabilities
- `complexity-science-tutorial`: the Complexity Science tutorial covers its chapters, landing page and navigation,
  sources, scikit-complexity as its main software, and the chapter template.
- `system-design-tutorial`: the System Design tutorial covers its chapters, landing page and navigation, sources, D2
  diagrams and runnable Python examples, and the chapter template.
- `tutorial-software`: each tutorial declares its software profile (solution tab name, code language and runner,
  pinned environment, figure-script kinds). Every code block and figure script is run and checked against that
  profile.

### Modified Capabilities
- `site-design`: the home page gains two tracks, Complexity science and Computer science, and the topic filter's
  broad topics include their subjects.

## Impact

- **New folders** `complexity-science/` and `system-design/`.
- **New files** `_notation/` tables for complexity and systems symbols.
- **Edited shared files:**
  - `_quarto.yml`: two sidebars;
  - root `index.qmd`: listings and tracks;
  - `_includes/topics.html`: broad topics;
  - `openspec/config.yaml`: the tutorial list in its context.
- **Shared tooling:**
  - `_filters/check_content.py` reads software profiles instead of assuming SageMath;
  - `_filters/harvest.py` gains label groups;
  - a Python figure helper matching `_filters/figstyle.sage`;
  - D2 rendering with site themes for light and dark mode.
- **Dependencies:**
  - scikit-complexity, pinned (0.9.0 at the time of writing; Python 3.12+). It is young and pulls heavy dependencies (passagemath, LAMMPS, JAX), so it goes in its own environment.
  - SimPy and the other Python libraries, in a second environment.
  - The D2 binary (v0.9.0, with dagre, elk and tala layouts bundled).
- **Zotero:** new items and reading notes, written only after the owner approves them.
- **Coverage:** new records in `openspec/coverage/`.
