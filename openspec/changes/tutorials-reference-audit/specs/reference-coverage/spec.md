# Spec Delta

## Purpose

Makes every written part of the tutorials traceable to sources that were read and that actually cover it, with
each source held in the Zotero library together with its PDF and reading note.

## ADDED Requirements

### Requirement: Every section cites a supporting source
Every section of a written chapter SHALL cite at least one work that covers its material. The citation SHALL give a
section, page, equation or problem locator.

#### Scenario: A section without a citation
- **WHEN** the audit finds a section of a written chapter that cites no work
- **THEN** the section is listed as a gap in the audit record until a covering source is cited in it

#### Scenario: A citation without a locator
- **WHEN** a section cites a work only by key, with no locator
- **THEN** the audit lists it, and the citation gains the locator of the supporting passage

### Requirement: Every chapter draws on several textbooks and works
Every written chapter SHALL cite at least eight distinct works, at least three of them tagged `textbook` in the
bibliography, for its content, examples or exercises. A chapter that already cites more SHALL NOT cite fewer after the
audit. Every added citation SHALL meet the requirement that a citation is supported by the cited pages.

#### Scenario: A chapter citing only papers
- **WHEN** a written chapter cites fewer than three textbooks
- **THEN** the audit record lists the chapter, and textbooks covering its sections are cited before the audit closes

#### Scenario: A chapter citing few works
- **WHEN** a written chapter cites fewer than eight distinct works
- **THEN** the audit record lists the chapter with its count, and covering works are cited at the sections they support until it reaches eight

#### Scenario: A citation added only to reach the count
- **WHEN** a work is cited at a place its cited pages do not support
- **THEN** the audit marks the citation unsupported and it is removed, whatever the chapter's count

### Requirement: A citation is supported by the cited pages
A citation SHALL be supported by the passage it points to, read from the work's PDF in Zotero. A citation that the
passage does not support SHALL be corrected or removed.

#### Scenario: Checking a citation
- **WHEN** the audit reads the pages a citation points to
- **THEN** they state or contain the cited material, or the audit record lists the citation as unsupported with what the pages say instead

### Requirement: Disagreements with sources are reported to the owner
When the text of a chapter disagrees with the source it cites, after conventions are converted, the audit SHALL
report the disagreement to the owner and SHALL NOT change the text without the owner's decision.

#### Scenario: A formula differs from its source
- **WHEN** a displayed formula differs from the cited source in more than notation or convention
- **THEN** the audit record lists the formula, the source's version and the location, and the owner's decision is recorded

### Requirement: Every cited work is complete in Zotero
Every bibliography entry SHALL be cited at least once, carry its Zotero item key, and have its Zotero citation key
equal to the bib key. It SHALL have the PDF attached, or a recorded reason, and a reading note tagged
`tutorial-reading-note`.

#### Scenario: An entry without a PDF
- **WHEN** a bibliography entry's Zotero item has no PDF
- **THEN** the audit record gives the reason, for example that no legal copy is available, or the PDF is attached

### Requirement: New references are approved before they are added
A reference missing from the Zotero library SHALL be proposed to the owner with its metadata, tags and collection,
and SHALL be added to Zotero and the bibliography only after the owner approves it.

#### Scenario: A gap no library item covers
- **WHEN** no Zotero item covers a section's material
- **THEN** the owner is shown a proposed reference with its tags, and nothing is written to Zotero before approval

### Requirement: Each tutorial has an audit record
Each tutorial SHALL have an audit record listing, per section of each written chapter, the works cited with their
locators, whether each was verified against the pages, and the gaps and disagreements found with their resolution.

#### Scenario: Reviewing a tutorial's references
- **WHEN** the owner opens a tutorial's audit record
- **THEN** every section of every written chapter has a row, and every gap and disagreement has a resolution or is marked open
