# Spec Delta

## Purpose

Gives the whole site one notation, published at the start of every tutorial and followed by every chapter, so that a
symbol means the same thing wherever it appears, whatever the source a chapter was adapted from.

## ADDED Requirements

### Requirement: Every tutorial opens with its notation
Every tutorial SHALL have a notation page listed before its first subject chapter, on its landing page and in the sidebar;
only a preface MAY precede it.
The page SHALL give every symbol and convention the tutorial's chapters use, each with its meaning.

#### Scenario: Reader opens a tutorial
- **WHEN** a reader opens a tutorial's landing page
- **THEN** the notation page comes before every subject chapter in the chapter list, and in the same place in the sidebar

#### Scenario: Reader meets an unfamiliar symbol
- **WHEN** a reader meets a symbol in a written chapter
- **THEN** the symbol and its meaning appear on that tutorial's notation page

### Requirement: Notation is shared across tutorials
The notation pages SHALL draw on one site-wide set of notation tables. A symbol SHALL have the same meaning in every
tutorial, unless the tutorial's notation page states a deviation together with its reason.

#### Scenario: The same symbol in two tutorials
- **WHEN** a symbol appears on the notation pages of two tutorials
- **THEN** it has the same meaning on both, or one of the pages states the deviation and why it is needed

#### Scenario: Changing a shared entry
- **WHEN** an entry in the shared tables is changed
- **THEN** every notation page that shows it shows the changed entry after the next render, with no per-page copy to update

### Requirement: Chapters follow the notation, not their references
Every written chapter SHALL use the site notation, including sign and normalisation conventions, even where the
reference it adapts uses another. A reference's convention MAY appear only as an explicit comparison that names it
as the reference's.

#### Scenario: Adapting a formula from a source with another convention
- **WHEN** a chapter adapts a formula from a reference that uses a different convention, such as the opposite metric signature
- **THEN** the formula appears converted to the site convention, and the citation still points to the source

#### Scenario: A chapter mentions another convention
- **WHEN** a chapter mentions a convention other than the site's
- **THEN** the text marks it as a comparison and names whose convention it is

### Requirement: The notation is updated before a new symbol is used
A chapter that needs a symbol not yet in the notation SHALL add it to the notation tables in the same change. It
SHALL reuse an existing symbol for the same object rather than introduce a second one.

#### Scenario: Writing a new chapter
- **WHEN** a new chapter introduces a symbol
- **THEN** the symbol is in the notation tables when the chapter is published, and no other symbol in the tables already denotes the same object

### Requirement: Notation clashes are decided by the owner
Where chapters or tutorials use one symbol for different objects, or different symbols for one object, the clash
SHALL be listed with its locations and resolved by an owner decision before chapters are converted.

#### Scenario: Two chapters disagree
- **WHEN** the notation inventory finds a symbol used with two meanings
- **THEN** the clash is recorded with its locations and a proposed resolution, and no chapter is converted for it until the owner decides
