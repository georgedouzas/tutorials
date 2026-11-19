# Spec Delta

## MODIFIED Requirements

### Requirement: Tutorial landing page
Each tutorial SHALL have a landing page that says what it covers and links to the tutorial's first page; its chapters
SHALL be listed in the tutorial's sidebar, each linking to that chapter.

#### Scenario: Reader opens a tutorial
- **WHEN** a reader opens a tutorial from the home page
- **THEN** its sidebar lists all of its chapters, each link opens the right chapter, and the landing page links to the first page

### Requirement: Complete chapters
Each of the three tutorials SHALL publish every chapter its sidebar lists: the written chapters (13 in mathematics,
12 in physics, and 8 plus the preface and conventions in Kaluza-Klein) and the approved chapters of its coverage
record, written or as placeholders.

#### Scenario: Counting chapters
- **WHEN** the published chapters are compared with the sidebar's chapter list
- **THEN** every listed chapter appears exactly once in its tutorial, written or as a placeholder
