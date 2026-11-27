## ADDED Requirements

### Requirement: The System Design tutorial exists with its own navigation
The site SHALL publish a System Design tutorial. It SHALL have a landing page, a notation page listed before the first
subject chapter, a glossary, a cover, and a sidebar listing only its own pages in reading order with a link back to
all tutorials. Previous and next links SHALL stay within the tutorial.

#### Scenario: Opening the tutorial
- **WHEN** a reader opens the System Design landing page
- **THEN** the sidebar is headed by the tutorial's name and lists the notation page, the chapters in reading order and the glossary

### Requirement: System Design chapters
The tutorial SHALL contain, written or as placeholders, the 15 chapters that the owner approved on 2026-11-27 in its
coverage record (`openspec/coverage/system-design.md`), in that record's reading order.

#### Scenario: Checking the chapter list
- **WHEN** the sidebar is compared with the approved chapter list of the coverage record
- **THEN** every approved chapter appears in reading order, either written or marked as planned

#### Scenario: Reading the approved order
- **WHEN** a reader lists the chapters in the sidebar
- **THEN** they are, in order: estimation and the design process; the web stack; performance and queueing; storage and
  databases; replication and partitioning; consistency and consensus; caching; messaging and event streams;
  distributed transactions; batch and stream processing; architecture styles; reliability and operations; machine
  learning, LLM and agent systems; case studies: infrastructure services; case studies: applications

#### Scenario: Reading the ML, LLM and agent systems chapter
- **WHEN** a reader opens the machine learning, LLM and agent systems chapter
- **THEN** it treats models as components of a system (training and serving pipelines, LLM inference, retrieval,
  agent orchestration, and their operation) and links to the machine-learning tutorials for how the models work
- **AND** its code runs without network access or model weights, using simulations and stub models

### Requirement: System Design chapters follow the chapter template
Every written chapter SHALL follow `openspec/templates/chapter.qmd`: ten examples and ten exercises after each
statement, collapsed two-tab solutions (argument or design, then computation or diagram in the tutorial's software),
three closing exercises, and a final References section.

#### Scenario: Counting examples and exercises
- **WHEN** the content checker runs on a written chapter of the tutorial
- **THEN** it reports every statement with exactly ten examples and ten exercises, and no finding

### Requirement: Proved results are stated and proved
A result with a published proof, such as Little's law, the CAP theorem or quorum intersection, SHALL be stated as a
theorem or proposition with its hypotheses and proved. A design pattern or component SHALL be stated as a definition.

#### Scenario: Reading the CAP theorem
- **WHEN** a reader opens the consistency chapter
- **THEN** the CAP theorem is a theorem block that states the system model and the three properties precisely, followed by its proof, ten examples and ten exercises

### Requirement: Architecture diagrams are written in D2
Every architecture, data-flow and sequence diagram of the tutorial SHALL be produced from a committed D2 source file
that renders it, in the site's colours, and SHALL stay readable in light and dark mode. A diagram SHALL NOT be a
hand-drawn or externally sourced image. Diagrams that solve an exercise SHALL show their D2 source in the second
solution tab together with the rendered diagram.

#### Scenario: Rendering a diagram
- **WHEN** the D2 source of the URL-shortener architecture is rendered
- **THEN** it regenerates the published SVG, and the diagram is readable in both colour modes

#### Scenario: Solving a design exercise
- **WHEN** a reader expands the solution of an exercise that asks for a cache-aside architecture
- **THEN** the second tab shows the D2 source and the rendered diagram

### Requirement: Runnable System Design examples
Quantitative examples and exercises SHALL be computed by code that runs during the site's checks, with fixed seeds:
discrete-event simulation in Python for queueing, SQLite for storage and indexing, and plain Python for algorithms
such as consistent hashing, Bloom filters, vector clocks and simplified consensus.

#### Scenario: Checking Little's law numerically
- **WHEN** the content checker runs the queueing chapter
- **THEN** each simulation runs with a fixed seed and its printed output matches the recorded output

### Requirement: Illustrative code for live services
Code that needs long-running services (databases, brokers, load generators, containers) MAY appear only as illustrative
code. It SHALL be marked as not run, and its results SHALL NOT be presented as recorded output.

#### Scenario: Showing a load test
- **WHEN** a chapter shows a load-testing script
- **THEN** the block is marked as illustrative and has no recorded output presented as a measurement

### Requirement: System Design content comes from cited sources
Every section of a written chapter SHALL cite, with a locator, at least one work in the Zotero library that covers its
material, drawn from the benchmark textbooks and the classic papers that the coverage record maps to the chapter.

#### Scenario: Checking the consensus section
- **WHEN** the reference audit reads the section on Raft
- **THEN** the section cites the Raft paper with a section locator, and the cited pages support the text
