## MODIFIED Requirements

### Requirement: Block kinds are colour coded

Statements (definitions, theorems, lemmas, propositions, corollaries) SHALL be shown in a box with a thin red left
border, a faint red tint and a red small-caps title; examples SHALL have a green small-caps title and exercises a
violet one, and the Examples and Exercises boxes that hold them SHALL have a thin left border and faint tint in green
and violet; solution callouts SHALL have a muted title and no colour, border tint or background of their own. The
colours SHALL keep their roles in dark mode. The conventions chapter SHALL contain a legend of the three colours and
of the statement box.

#### Scenario: a rendered chapter

- **WHEN** a chapter with a definition, a proposition, an example and an exercise is rendered to HTML
- **THEN** the definition and the proposition sit in boxes with a red left border and tint and have red titles, while
  the example has a green title inside a green-bordered Examples box, the exercise a violet title inside a
  violet-bordered Exercises box, and the solution callout has a muted title and no coloured border or background

### Requirement: Examples and exercises are folded under their statement
After each statement, its examples SHALL be grouped, with their connecting prose, in one collapsed box titled
**Examples** (green), and its exercises, with their prose and solutions, in one collapsed box titled **Exercises**
(violet); the integrative exercises of each part and chapter SHALL be folded the same way; in the PDF these boxes are
printed expanded (design P1-P4).

#### Scenario: Reading the line of argument
- **WHEN** a reader opens a chapter page
- **THEN** the definitions and theorems are visible in their red-bordered boxes, and each is followed by a collapsed
  Examples box and a collapsed Exercises box

#### Scenario: A cross-reference into a folded box
- **WHEN** the text cites an example or exercise that is folded
- **THEN** the reference resolves to it
