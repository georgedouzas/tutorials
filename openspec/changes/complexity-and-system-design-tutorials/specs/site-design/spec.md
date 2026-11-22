## MODIFIED Requirements

### Requirement: Home page layout
The home page SHALL have no sidebar and SHALL be centred on wide screens. It SHALL group the tutorials into four tracks,
each listing its tutorials as cards in reading order:
- a Physics track: mathematics for physicists, theoretical physics, and Kaluza-Klein;
- a Machine learning track: mathematics for machine learning, and machine learning;
- a Complexity science track: complexity science;
- a Computer science track: system design.

#### Scenario: Opening the home page on a wide screen
- **WHEN** a reader opens the home page on a screen 1440 pixels wide
- **THEN** no sidebar is shown, the content is centred, and the four tracks list their cards in reading order

#### Scenario: Opening the home page on a phone
- **WHEN** a reader opens the home page on a screen 390 pixels wide
- **THEN** the cards stack in one column in reading order, and no sidebar bar is shown above them

### Requirement: Topic filter on the home page
The home page SHALL show every tutorial topic as a chip in a left column beside the tracks, broad topics first; on a
phone the column sits above the tracks and starts folded. The broad topics SHALL include the subjects of every track,
among them Complexity Science and Computer Science. Selecting chips SHALL show the tutorials that have any selected
topic, hide a track with none, and keep the selection in the page address.

#### Scenario: Filtering by a topic
- **WHEN** a reader selects the Gauge Theories chip
- **THEN** only the tutorials with that topic remain, the Machine learning, Complexity science and Computer science tracks are hidden, a count says "2 of 7 tutorials", and Clear restores all

#### Scenario: Filtering by a new broad topic
- **WHEN** a reader selects the Complexity Science chip
- **THEN** the Complexity Science tutorial remains, together with any other tutorial carrying that topic, and tracks with none are hidden

#### Scenario: Sharing a filtered view
- **WHEN** a reader opens the home page address ending in `#topics=Gauge%20Theories`
- **THEN** the page opens with that chip selected and the same tutorials shown
