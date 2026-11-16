## MODIFIED Requirements

### Requirement: Chapters of Fundamentals of Machine Learning
Fundamentals of Machine Learning SHALL contain these chapters: Foundations of Learning Theory, Supervised Learning, Unsupervised Learning, and Reinforcement Learning. The Reinforcement Learning chapter SHALL include the material of the former Reinforcement Learning and LLM-based Agents and Mathematical Foundations of Reinforcement Learning drafts.

#### Scenario: Reader opens the tutorial
- **WHEN** a reader opens the tutorial's landing page
- **THEN** it lists those four chapters, and each link opens the right chapter

#### Scenario: Reader looks for LLM-enhanced reinforcement learning
- **WHEN** a reader opens the Reinforcement Learning chapter
- **THEN** it covers LLM-enhanced reinforcement learning, the Bellman equation in matrix-vector form with its closed-form and iterative solutions and their code output, and action values

### Requirement: Nothing omitted from chapters
Published chapters SHALL keep their full text, equations, definitions, figures, code and code output. The only wording changes SHALL be replacing references to a "thesis", adding citations, what is needed to make links work, and, where a draft is merged into a chapter that already covers its topic, the connecting sentences and the removal of statements the chapter already makes.

#### Scenario: Comparing a chapter with its source
- **WHEN** a published chapter is compared with its drafts
- **THEN** every definition, equation, example, figure, code cell and output from the drafts appears in the tutorials, and the only other differences are those allowed changes

#### Scenario: Reader searches for the word thesis
- **WHEN** the rendered tutorials are searched for "thesis" as a whole word
- **THEN** no result is found

## ADDED Requirements

### Requirement: No hidden machine learning drafts
The machine learning tutorials SHALL be the only copy of their content. No hidden draft folder for machine learning material SHALL remain under the posts folder.

#### Scenario: Listing the posts folder
- **WHEN** the posts folder is listed
- **THEN** none of `_ml-tutorials`, `_reinforcement-learning` or `_mathematical-foundations-of-reinforcement-learning` exists

#### Scenario: Old chapter address
- **WHEN** the site's internal links are checked after rendering
- **THEN** no page links to the removed chapters
