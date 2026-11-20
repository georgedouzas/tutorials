## ADDED Requirements

### Requirement: Written gaps are marked in the coverage record
When a planned chapter is written, it SHALL stop being a placeholder: its page holds the chapter, and its sidebar entry
loses the "planned" mark. When a recorded section gap is added to its chapter, the tutorial's coverage record SHALL
mark the gap as done and name the section that now covers it.

#### Scenario: A planned chapter is written
- **WHEN** Homotopy and cohomology is written
- **THEN** its page holds the full chapter, the sidebar shows it without the "planned" mark, and the coverage record marks the proposed chapter as written

#### Scenario: A section gap is filled
- **WHEN** the determinants and trace section is added to Linear algebra
- **THEN** the coverage record's row for that gap is marked done with the section's `sec-` identifier
