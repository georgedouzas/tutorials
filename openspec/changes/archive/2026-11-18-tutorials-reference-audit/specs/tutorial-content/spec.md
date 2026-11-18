## MODIFIED Requirements

### Requirement: Textbooks supply content, examples and exercises
Every textbook in the Zotero library's Textbooks collection that a tutorial's subject needs SHALL be read and mapped
to the chapters it serves, with a reading note naming the sections and problems used; content following a textbook
SHALL be rewritten in the book's voice, notation and conventions, and an adapted example or exercise SHALL cite the
textbook with its problem number (design D32).

#### Scenario: An adapted exercise
- **WHEN** an exercise is adapted from a textbook problem
- **THEN** it cites the textbook as `[@key, Problem n]` and the reading note lists that problem

#### Scenario: An unused textbook
- **WHEN** a textbook considered for a tutorial serves no chapter
- **THEN** the Zotero note "Tutorials: reference search log" records it with the reason
