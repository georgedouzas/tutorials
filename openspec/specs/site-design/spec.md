# site-design Specification

## Purpose
Sets how the tutorials website looks and how a reader finds their way through it: typography for long-form
mathematics, one colour system for the blocks, per-tutorial navigation with a table of contents and search, dark mode,
landing-page chapter lists, figures and code.

## Requirements

### Requirement: Long-form typography
Body text SHALL be set in a serif from the reader's own system fonts, with no web fonts loaded; navigation, the
sidebar, the table of contents, block labels and captions SHALL be set in sans. Body text SHALL have a line height of
about 1.65 and a measure of at most about 72 characters, and inline mathematics SHALL be sized to match the text.

#### Scenario: Reading a chapter on a wide screen
- **WHEN** a reader opens a chapter on a screen 1440 pixels wide
- **THEN** paragraphs are in a serif, lines hold at most about 72 characters, the sidebar and table of contents are in sans, and the page requests no font files

### Requirement: One visual system for the blocks
Statements, examples and exercises SHALL each be marked by a thin left border in their own colour, a faint tint of
that colour and a small-caps label in that colour. The collapsed Examples and Exercises boxes SHALL use the example
and exercise styling, and solutions SHALL be visually subordinate to the exercise they answer.

#### Scenario: A statement with its folds
- **WHEN** a reader views a definition followed by its Examples and Exercises boxes
- **THEN** the definition, the Examples box and the Exercises box each show a left border and tint in their own colour with a small-caps label, and an opened solution has a muted header and no colour of its own

### Requirement: Colours are variables that meet contrast
The site SHALL take its colours from CSS variables: one accent colour for links and navigation and three block colours
for statements, examples and exercises, each defined for light and dark mode. Every block colour and the accent SHALL
have a contrast ratio of at least 4.5:1 against the page background and the block tint in both modes.

#### Scenario: Checking contrast
- **WHEN** the accent and block colours are checked against the backgrounds they are shown on, in each mode
- **THEN** every ratio is at least 4.5:1

### Requirement: Table of contents and search
Every chapter SHALL show an "On this page" table of contents on the right listing its parts and sections (heading
levels 2 and 3), and the site SHALL offer a full-text search from the navbar.

#### Scenario: Navigating a long chapter
- **WHEN** a reader opens the gauge theories chapter on a wide screen
- **THEN** an "On this page" list of its parts and sections is shown on the right and highlights the section being read, and the navbar has a search box

### Requirement: One sidebar per tutorial
Each page of a tutorial SHALL show a sidebar headed by the tutorial's name that lists only that tutorial's overview,
chapters and glossary, in reading order, with the current page marked. The home page SHALL list the tutorials, and
the navbar SHALL link to every tutorial.

#### Scenario: Reader is in a chapter
- **WHEN** a reader views a chapter of Fundamentals of Theoretical Physics
- **THEN** the sidebar lists only that tutorial's pages, and the previous and next links stay within the tutorial

#### Scenario: Cross-references still resolve
- **WHEN** the cross-reference index is rebuilt from the sidebars and the site is rendered
- **THEN** the index reports no problems and no reference is unresolved

### Requirement: Dark mode
The site SHALL offer a light and a dark mode with a toggle in the navbar. In dark mode the text, mathematics, code,
block colours and figures SHALL stay readable; figures drawn for a light background SHALL be shown on a light card.

#### Scenario: Switching to dark mode
- **WHEN** a reader switches a chapter to dark mode
- **THEN** the page background is dark, text and mathematics are light, code is highlighted with a dark style, the blocks keep their colours, and figures sit on a light card

### Requirement: Landing-page chapter lists
Each tutorial's landing page SHALL show its chapters as a list of cards, each with the chapter title linking to the
chapter, and a planned chapter SHALL carry an "In preparation" badge. The page source SHALL stay a plain Markdown list
marked with a class.

#### Scenario: Reader opens a landing page
- **WHEN** a reader opens the landing page of Fundamentals of Theoretical Physics
- **THEN** the chapters appear as cards in reading order, and the planned chapters carry an "In preparation" badge

### Requirement: Restrained accents
Navigation links and buttons SHALL use the accent colour and borders only, without gradients, glows or movement on
hover; tutorial covers SHALL be shown at one shape and size.

#### Scenario: Hovering the navbar
- **WHEN** a reader hovers or selects a navbar link
- **THEN** its colour or underline changes and nothing glows, moves or shows a gradient

### Requirement: Figures and code
Figures SHALL be centred with a maximum width, with captions in a consistent smaller sans style, and code blocks SHALL
use a quiet highlighting style on a subtle background.

#### Scenario: A figure in a chapter
- **WHEN** a reader views a figure with its caption
- **THEN** the figure is centred and no wider than the text column, and the caption is in smaller sans text below it
