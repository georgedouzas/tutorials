## MODIFIED Requirements

### Requirement: Textbooks are content sources, read before use
A textbook used for content, examples or exercises SHALL have a bibliography entry with `keywords = {textbook}` and a
reading note, a Zotero child note of its item tagged `tutorial-reading-note`, naming the sections, equations and
problems used, and the per-tutorial reference audit SHALL check both; the arXiv requirements for research papers are
unchanged (design D32).

#### Scenario: A textbook without a note
- **WHEN** a chapter cites an entry with `keywords = {textbook}` whose Zotero item has no note tagged `tutorial-reading-note`
- **THEN** the reference audit reports it
