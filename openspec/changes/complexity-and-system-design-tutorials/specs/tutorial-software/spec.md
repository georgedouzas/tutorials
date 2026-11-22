## ADDED Requirements

### Requirement: Each tutorial declares its software profile
Every tutorial that has solution computations or scripted figures SHALL declare a software profile. The profile SHALL
name:
- the label of the second solution tab;
- the language of its code blocks;
- the pinned environment and command that run them;
- the kinds of figure script it accepts.

A tutorial without a declared profile SHALL keep the SageMath profile the mathematics tutorial uses today.

#### Scenario: Reading the profiles
- **WHEN** the profiles of the mathematics, Complexity Science and System Design tutorials are compared
- **THEN** they name SageMath, Python with scikit-complexity, and Python with D2 diagrams respectively, each with a pinned environment

#### Scenario: A tutorial without a profile
- **WHEN** the checker runs on the mathematics tutorial, which declares no new profile
- **THEN** it applies the SageMath rules exactly as before this change

### Requirement: Code blocks are run and their outputs checked
Every code block with recorded output in a tutorial SHALL be run with that tutorial's profile, each in a fresh
namespace, and its printed output SHALL match the recorded output. A block that prints nothing SHALL be reported. A
block marked as illustrative SHALL NOT be run and SHALL NOT carry recorded output. Random computations SHALL fix their
seed.

#### Scenario: A stale output
- **WHEN** a Complexity Science block's recorded output differs from a fresh run
- **THEN** the checker reports the block's line, and an update run rewrites the recorded output

#### Scenario: An illustrative block
- **WHEN** a System Design chapter contains a Docker Compose file marked as illustrative
- **THEN** the checker does not run it and reports a finding if it carries recorded output

### Requirement: Figure scripts follow the profile
Every figure SHALL be produced by a committed script of a kind the tutorial's profile accepts, and running the script
SHALL regenerate the published figure files:
- Sage scripts for the mathematics tutorial;
- Python scripts for Complexity Science and System Design;
- D2 sources for System Design diagrams.

Figures SHALL use the site's palette and SHALL stay readable in light and dark mode. Captions SHALL NOT name scripts or
tools.

#### Scenario: Regenerating a figure
- **WHEN** the figure check runs on a Complexity Science chapter
- **THEN** every figure the chapter uses has a Python script that writes it, and a missing or failing script is reported

#### Scenario: Regenerating a diagram
- **WHEN** the figure check runs on a System Design chapter
- **THEN** every diagram the chapter uses has a D2 source that renders it without error

### Requirement: Environments are pinned and reproducible
The environment of each profile SHALL be pinned to exact versions, recorded in the repository, and reproducible with one
documented command. A failure to build one tutorial's environment SHALL NOT stop the other tutorials from being
checked or rendered.

#### Scenario: Rebuilding the Complexity Science environment
- **WHEN** the documented command creates the Complexity Science environment on a clean machine
- **THEN** it installs the pinned scikit-complexity version and its dependencies, and the checker's run of the tutorial passes

#### Scenario: One environment is broken
- **WHEN** the Complexity Science environment cannot be built
- **THEN** the checker reports that tutorial as not checked and still checks and renders the others
