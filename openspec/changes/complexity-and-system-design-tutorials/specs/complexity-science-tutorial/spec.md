## ADDED Requirements

### Requirement: The Complexity Science tutorial exists with its own navigation
The site SHALL publish a Complexity Science tutorial. It SHALL have a landing page, a notation page listed before the
first subject chapter, a glossary, a cover, and a sidebar listing only its own pages in reading order with a link
back to all tutorials. Previous and next links SHALL stay within the tutorial.

#### Scenario: Opening the tutorial
- **WHEN** a reader opens the Complexity Science landing page
- **THEN** the sidebar is headed by the tutorial's name, lists the notation page, the chapters in reading order and the glossary, and links back to all tutorials

#### Scenario: Reaching the end of a chapter
- **WHEN** a reader follows the next link at the end of the last chapter
- **THEN** the link leads to a page of the same tutorial, not to another tutorial

### Requirement: Complexity Science chapters
The tutorial SHALL contain, written or as placeholders, the 17 chapters that the owner approved on 2026-11-22 in its
coverage record (`openspec/coverage/complexity-science.md`), in that record's reading order.

#### Scenario: Checking the chapter list
- **WHEN** the sidebar is compared with the approved chapter list of the coverage record
- **THEN** every approved chapter appears in reading order, either written or marked as planned

#### Scenario: Reading the approved order
- **WHEN** a reader lists the chapters in the sidebar
- **THEN** they are, in order: complex systems and emergence; nonlinear dynamics and chaos; random processes and heavy
  tails; fractals and scaling; phase transitions and percolation; cellular automata; pattern formation; networks;
  spreading and dynamics on networks; self-organized criticality; synchronization; collective motion; agent-based
  models; evolution and games; information and complexity measures; tipping points and resilience; time series and
  model discovery

### Requirement: Complexity Science links physics results instead of restating them
Results that the physics tutorial states (Landau theory, mean field, the Langevin and Fokker-Planck equations) SHALL be
cited in Complexity Science by cross-tutorial links, not restated. The chapters SHALL cover only what is specific to
complex systems.

#### Scenario: Using Landau theory
- **WHEN** the phase-transitions chapter needs the mean-field critical exponents
- **THEN** it links to the physics tutorial's Landau-theory section and does not restate the derivation

### Requirement: Complexity Science chapters follow the chapter template
Every written chapter SHALL follow `openspec/templates/chapter.qmd`: ten examples and ten exercises after each
statement, collapsed two-tab solutions (argument, then computation in the tutorial's software), three closing
exercises, and a final References section.

#### Scenario: Counting examples and exercises
- **WHEN** the content checker runs on a written chapter of the tutorial
- **THEN** it reports every statement with exactly ten examples and ten exercises, and no finding

#### Scenario: Opening a solution
- **WHEN** a reader expands an exercise solution
- **THEN** the solution shows two tabs: the argument first, then the computation with its recorded output

### Requirement: scikit-complexity is the tutorial's main software
The computations of the tutorial SHALL use scikit-complexity wherever it provides the system, experiment or analysis
needed. Other libraries SHALL be used only for what scikit-complexity does not provide, and each chapter SHALL name
the scikit-complexity functions or systems it uses. The scikit-complexity version SHALL be pinned and stated on the
landing page.

#### Scenario: Simulating a sandpile
- **WHEN** a chapter simulates the Bak-Tang-Wiesenfeld sandpile
- **THEN** it builds the model from the scikit-complexity catalogue, runs it with the package's simulation engine, and its recorded output matches a fresh run

#### Scenario: Reading the landing page
- **WHEN** a reader opens the landing page
- **THEN** a software section names scikit-complexity with its pinned version and the other libraries used, and says how to install them

### Requirement: Complexity Science content comes from cited sources
Every section of a written chapter SHALL cite, with a locator, at least one work in the Zotero library that covers its
material. Each chapter SHALL draw its content, examples and exercises from the benchmark textbooks that the coverage
record maps to it.

#### Scenario: Checking a section's sources
- **WHEN** the reference audit reads a section on scale-free networks
- **THEN** the section cites a mapped source with a section or page locator, and the cited pages support the text
