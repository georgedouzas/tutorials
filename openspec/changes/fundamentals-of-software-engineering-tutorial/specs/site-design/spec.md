## MODIFIED Requirements

### Requirement: Home page layout
The home page SHALL have no sidebar and SHALL be centred on wide screens. It SHALL group the tutorials into four tracks,
each listing its tutorials as cards in reading order:
- a Physics track: mathematics for physicists, theoretical physics, and Kaluza-Klein;
- a Machine learning track: mathematics for machine learning, machine learning, and AI;
- a Complexity science track: complexity science;
- a Computer science track: system design, and software engineering.

#### Scenario: Opening the home page on a wide screen
- **WHEN** a reader opens the home page on a screen 1440 pixels wide
- **THEN** no sidebar is shown, the content is centred, and the four tracks list their cards in reading order

#### Scenario: Reading the Computer science track
- **WHEN** a reader looks at the Computer science track
- **THEN** it lists System Design and Fundamentals of Software Engineering, in that order

#### Scenario: Opening the home page on a phone
- **WHEN** a reader opens the home page on a screen 390 pixels wide
- **THEN** the cards stack in one column in reading order, and no sidebar bar is shown above them
