# Spec Delta

## Purpose

Keeps each tutorial's chapter list complete for its subject. The list is measured against the subject's reference
textbooks in the Zotero library, and chapters that are planned but not yet written are shown as placeholders.

## ADDED Requirements

### Requirement: Each tutorial has a coverage record
Each tutorial SHALL have a coverage record. It names the benchmark textbooks taken from the Zotero library and maps
every chapter of their tables of contents to the tutorial chapter and section that covers it, or marks it uncovered
or out of scope with a reason.

#### Scenario: Auditing a tutorial
- **WHEN** the coverage record of a tutorial is opened
- **THEN** every benchmark textbook chapter appears in it, mapped to a tutorial chapter and section, uncovered, or out of scope with a reason

#### Scenario: Benchmark textbooks come from Zotero
- **WHEN** a benchmark textbook is listed
- **THEN** it is an item of the Zotero library with its citation key, and its table of contents was read from the item's PDF

### Requirement: Uncovered topics are classified as chapters or section gaps
Every uncovered topic in a coverage record SHALL be classified either as a proposed chapter or as a section gap of a
named existing chapter, with the reason for the classification.

#### Scenario: A topic small enough for a section
- **WHEN** an uncovered topic belongs to the subject of an existing chapter and would add at most one section to it
- **THEN** it is recorded as a section gap of that chapter and no new chapter is proposed for it

#### Scenario: A topic large enough for a chapter
- **WHEN** an uncovered topic is in the tutorial's scope and has no existing chapter whose subject contains it
- **THEN** it is a proposed chapter with a title, a place in the reading order, the chapters it depends on and at least one Zotero source

### Requirement: Chapters are added only after approval
A proposed chapter SHALL be added to a tutorial only after the owner approves it. Each rejected proposal SHALL be
kept in the coverage record with the owner's reason.

#### Scenario: Owner rejects a proposal
- **WHEN** the owner rejects a proposed chapter
- **THEN** no page is created for it and the coverage record marks it rejected

### Requirement: A planned chapter is a placeholder page
An approved chapter that is not yet written SHALL be published as a placeholder at `<tutorial>/<chapter-slug>/index.qmd`.
The placeholder holds the chapter title as its heading and says that the chapter is in preparation. It has no
statements, examples or exercises.

#### Scenario: Reader opens a planned chapter
- **WHEN** a reader follows the link to a planned chapter
- **THEN** the page shows the chapter title and says it is in preparation, and the site renders without warnings

### Requirement: Planned chapters are listed in reading order
Every placeholder chapter SHALL be listed on its tutorial's landing page and in the sidebar at its place in the
reading order, together with the written chapters.

#### Scenario: Reader opens the landing page
- **WHEN** a reader opens a tutorial's landing page
- **THEN** the chapter list shows written and planned chapters in reading order, and the sidebar lists the same chapters in the same order
