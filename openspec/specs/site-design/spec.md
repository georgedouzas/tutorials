# site-design Specification

## Purpose
Sets how the tutorials website looks and how a reader finds their way through it: typography for long-form
mathematics, one colour system for the blocks, per-tutorial navigation with a table of contents and search, dark mode,
the home page and its topic filter, landing pages, figures and code.

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
levels 2 and 3), and the site SHALL offer a full-text search from the navbar. The chapter title SHALL NOT appear as an
entry of the table of contents.

#### Scenario: Navigating a long chapter
- **WHEN** a reader opens the gauge theories chapter on a wide screen
- **THEN** an "On this page" list of its parts and sections is shown on the right and highlights the section being read, and the navbar has a search box

#### Scenario: Title not repeated
- **WHEN** a reader opens a chapter whose first part has the same name as the chapter
- **THEN** that name appears once in the table of contents, as the part, and the chapter title is not listed

### Requirement: One sidebar per tutorial
Each page of a tutorial SHALL show a sidebar headed by the tutorial's name that lists only that tutorial's overview,
chapters and glossary, in reading order, with the current page marked, and a link back to the list of all tutorials.
The home page SHALL list the tutorials; the navbar SHALL show the site title linking to the home page and SHALL NOT
repeat the word "Tutorials" in a second item.

#### Scenario: Reader is in a chapter
- **WHEN** a reader views a chapter of Fundamentals of Theoretical Physics
- **THEN** the sidebar lists only that tutorial's pages, and the previous and next links stay within the tutorial

#### Scenario: Switching tutorial
- **WHEN** a reader in a chapter wants another tutorial
- **THEN** the sidebar's "All tutorials" link or the navbar title leads to the home page, which lists every tutorial

#### Scenario: Navbar without duplicates
- **WHEN** a reader views any page on a wide screen
- **THEN** the navbar shows the site title once, search, the dark-mode toggle and the GitHub link, and no "Tutorials" dropdown

#### Scenario: Cross-references still resolve
- **WHEN** the cross-reference index is rebuilt from the sidebars and the site is rendered
- **THEN** the index reports no problems and no reference is unresolved

### Requirement: Dark mode
The site SHALL offer a light and a dark mode with a toggle in the navbar. In dark mode the text, mathematics, code,
block colours and figures SHALL stay readable; figures drawn for a light background SHALL be shown on a light card.

#### Scenario: Switching to dark mode
- **WHEN** a reader switches a chapter to dark mode
- **THEN** the page background is dark, text and mathematics are light, code is highlighted with a dark style, the blocks keep their colours, and figures sit on a light card

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

### Requirement: Home page layout
The home page SHALL have no sidebar and SHALL be centred on wide screens. It SHALL group the tutorials into a Physics
track and a Machine learning track, each listing its tutorials as cards in reading order: mathematics for physicists,
theoretical physics and Kaluza-Klein; then mathematics for machine learning and machine learning.

#### Scenario: Opening the home page on a wide screen
- **WHEN** a reader opens the home page on a screen 1440 pixels wide
- **THEN** no sidebar is shown, the content is centred, and the two tracks list their cards in reading order

#### Scenario: Opening the home page on a phone
- **WHEN** a reader opens the home page on a screen 390 pixels wide
- **THEN** the cards stack in one column in reading order, and no sidebar bar is shown above them

### Requirement: Notation tables
Notation tables SHALL give the symbol column only the width its symbols need and the meaning column the rest.

#### Scenario: Reading a notation page
- **WHEN** a reader opens a tutorial's notation page on a wide screen
- **THEN** each symbol column is narrow and each meaning fits on fewer lines than with equal columns

### Requirement: Reading on phones
On screens narrower than 768 pixels, body text SHALL be left-aligned with hyphenation, and the page SHALL show a single
compact header with no repeated title bar.

#### Scenario: Reading a chapter on a phone
- **WHEN** a reader opens a chapter on a screen 390 pixels wide
- **THEN** paragraphs are left-aligned without wide gaps between words, and one header bar is shown above the content

### Requirement: Centred page on wide screens
On screens wider than the page grid, the sidebar, text column and table of contents SHALL be centred as a group with a
maximum overall width.

#### Scenario: Very wide screen
- **WHEN** a reader opens a chapter on a screen 2560 pixels wide
- **THEN** the empty space is shared between the left and right edges, and the text column keeps its measure

### Requirement: Landing pages carry no date
Tutorial landing pages SHALL NOT show a publication date.

#### Scenario: Opening a landing page
- **WHEN** a reader opens a tutorial's landing page
- **THEN** the title block shows the title and description, and no "Published" date

### Requirement: Landing pages point to the first page
A tutorial's landing page SHALL NOT repeat the chapter list of its sidebar; it SHALL say where the chapters are listed
and link to the tutorial's first page, its notation page or preface.

#### Scenario: Reader on a phone opens a landing page
- **WHEN** a reader opens a tutorial's landing page on a screen 390 pixels wide, with the sidebar collapsed
- **THEN** the page has no chapter cards and shows a link that opens the tutorial's first page

### Requirement: Planned chapters are marked in the sidebar
Each planned chapter (a placeholder page) SHALL carry a small "planned" mark next to its title in the sidebar.

#### Scenario: Reading the sidebar
- **WHEN** a reader looks at the sidebar of Fundamentals of Theoretical Physics
- **THEN** Cosmology carries the "planned" mark and Gauge theories does not

### Requirement: Topic filter on the home page
The home page SHALL show every tutorial topic as a chip above the tracks, broad topics first. Selecting chips SHALL
show the tutorials that have any selected topic, hide a track with none, and keep the selection in the page address.

#### Scenario: Filtering by a topic
- **WHEN** a reader selects the Gauge Theories chip
- **THEN** only the tutorials with that topic remain, the Machine learning track is hidden, a count says "2 of 5 tutorials", and Clear restores all

#### Scenario: Sharing a filtered view
- **WHEN** a reader opens the home page address ending in `#topics=Gauge%20Theories`
- **THEN** the page opens with that chip selected and the same tutorials shown

### Requirement: Topics on a landing page link to the filter
The topics in a tutorial's title block SHALL link to the home page filtered by that topic.

#### Scenario: Following a topic
- **WHEN** a reader clicks the General Relativity topic on the theoretical physics landing page
- **THEN** the home page opens showing the tutorials with that topic
