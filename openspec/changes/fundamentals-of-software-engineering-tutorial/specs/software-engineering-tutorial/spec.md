## ADDED Requirements

### Requirement: The Fundamentals of Software Engineering tutorial exists with its own navigation
The site SHALL publish a Fundamentals of Software Engineering tutorial. It SHALL have a landing page, a notation page
listed before the first subject chapter, a glossary, a cover, and a sidebar listing only its own pages in reading
order with a link back to all tutorials. Previous and next links SHALL stay within the tutorial.

#### Scenario: Opening the tutorial
- **WHEN** a reader opens the Fundamentals of Software Engineering landing page
- **THEN** the sidebar is headed by the tutorial's name and lists the notation page, the chapters in reading order and
  the glossary

### Requirement: Fundamentals of Software Engineering chapters
The tutorial SHALL contain, written or as placeholders, the chapters that the owner approves in its coverage record
(`openspec/coverage/fundamentals-of-software-engineering.md`), in that record's reading order, covering the topics
of the proposal from design to platform engineering.

#### Scenario: Checking the chapter list
- **WHEN** the sidebar is compared with the approved chapter list of the coverage record
- **THEN** every approved chapter appears in reading order, either written or marked as planned

#### Scenario: Checking topic coverage
- **WHEN** the approved chapter list is compared with the topics named in this requirement
- **THEN** each of these is a chapter or a section, or the coverage record states why it was left out: software design,
  design patterns, domain-driven design, architecture evaluation and decision records, architecture evolution and
  technical debt, testing, computer networks, version control and continuous integration, build pipelines,
  continuous delivery and release engineering, cloud computing, infrastructure as code, containers and orchestration,
  platform engineering and delivery metrics

### Requirement: Inside the service here, the whole system in System Design
The tutorial SHALL cover the design of the code inside a service, architecture as a practice, the protocol mechanisms
of computer networks, and the path from commit to production. It SHALL link to System Design for the architecture of
whole systems, the operation of running systems and the web request path, and SHALL NOT derive what System Design
owns.

#### Scenario: Following continuous delivery across tutorials
- **WHEN** a reader follows canary releases from System Design's reliability chapter
- **THEN** System Design treats the canary as a reliability mechanism and links to Fundamentals of Software
  Engineering, where the delivery pipeline, release strategies and their measurement are defined

#### Scenario: Reading the networks chapter
- **WHEN** a reader opens the computer networks chapter
- **THEN** it derives layering, addressing, routing and TCP's reliability and congestion control, and links to System
  Design's web stack chapter for DNS, TLS, HTTP, load balancing and CDNs instead of repeating them

### Requirement: Fundamentals of Software Engineering chapters follow the chapter template
Every written chapter SHALL follow `openspec/templates/chapter.qmd`: ten examples and ten exercises after each
statement, collapsed two-tab solutions (Proof or Solution, then Python), three closing exercises, and a final
References section.

#### Scenario: Counting examples and exercises
- **WHEN** the content checker runs on a written chapter of the tutorial
- **THEN** it reports every statement with exactly ten examples and ten exercises, and no finding

### Requirement: Proved results are stated and proved
A result with a published proof SHALL be stated with its hypotheses and proved. A principle, pattern or practice SHALL
be stated as a definition.

#### Scenario: Reading congestion control
- **WHEN** a reader opens the section on additive-increase multiplicative-decrease
- **THEN** its convergence to a fair share is a proposition with its hypotheses, followed by its proof, ten examples
  and ten exercises

### Requirement: Diagrams are written in D2
Every architecture, dependency, deployment, pipeline and sequence diagram SHALL be produced from a committed D2 source
in the site's colours and SHALL stay readable in light and dark mode. Diagrams that solve an exercise SHALL show their
D2 source in the second solution tab together with the rendered diagram.

#### Scenario: Solving a pipeline exercise
- **WHEN** a reader expands the solution of an exercise that asks for a build-and-release pipeline
- **THEN** the second tab shows the D2 source and the rendered diagram

### Requirement: Runnable models of infrastructure
Quantitative and behavioural claims SHALL be computed by code that the content checker runs offline with fixed seeds:
- sockets on the loopback interface;
- simulated networks and pipelines;
- Git in a temporary repository;
- tests with pytest or Hypothesis;
- small Python models of infrastructure mechanisms, such as a reconciliation loop, a scheduler or an infrastructure
  plan.

Every block SHALL finish within the profile's time limit.

#### Scenario: Running a congestion-control example
- **WHEN** the content checker runs the networks chapter's congestion-control simulation
- **THEN** it runs with a fixed seed, offline, and its printed output matches the recorded output

### Requirement: Illustrative code for live infrastructure
Code that needs live infrastructure MAY appear only as illustrative code. Examples are cloud accounts, container
engines, Kubernetes clusters, Terraform providers and hosted CI services. Such code SHALL be marked as not run, and
its results SHALL NOT be presented as recorded output.

#### Scenario: Showing a Kubernetes manifest
- **WHEN** a chapter shows a Kubernetes Deployment manifest and a `kubectl` session
- **THEN** both are marked as illustrative, and the behaviour they produce is demonstrated by a runnable model next to
  them

### Requirement: Fundamentals of Software Engineering content comes from cited sources
Every section of a written chapter SHALL cite, with a locator, at least one work in the Zotero library that covers its
material. The cited pages SHALL have been read. A standard definition with no source read SHALL be flagged in the
chapter's report so that a source can be proposed.

#### Scenario: Checking the congestion-control section
- **WHEN** the reference audit reads the section on TCP congestion control
- **THEN** the section cites a networking textbook or the primary paper with a locator, and the cited pages support
  the text
