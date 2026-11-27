## ADDED Requirements

### Requirement: The Fundamentals of AI tutorial exists with its own navigation
The site SHALL publish a Fundamentals of AI tutorial. It SHALL have a landing page, a notation page listed before the
first subject chapter, a glossary, a cover, and a sidebar listing only its own pages in reading order with a link back
to all tutorials. Previous and next links SHALL stay within the tutorial.

#### Scenario: Opening the tutorial
- **WHEN** a reader opens the Fundamentals of AI landing page
- **THEN** the sidebar is headed by the tutorial's name and lists the notation page, the chapters in reading order and
  the glossary

#### Scenario: Reading the prerequisites
- **WHEN** a reader reads the landing page
- **THEN** it names Fundamentals of Machine Learning and Fundamentals of Mathematics for Machine Learning as
  prerequisites, with links

### Requirement: Fundamentals of AI chapters
The tutorial SHALL contain, written or as placeholders, the chapters that the owner approves in its coverage record
(`openspec/coverage/fundamentals-of-ai.md`), in that record's reading order. Together they SHALL cover modern
architectures, pretraining and scaling, hardware and parallelism, inference and decoding, quantization and
compression, fine-tuning, post-training and alignment, reasoning, retrieval, agents, vision-language models, diffusion
models, and evaluation.

#### Scenario: Checking the chapter list
- **WHEN** the sidebar is compared with the approved chapter list of the coverage record
- **THEN** every approved chapter appears in reading order, either written or marked as planned

#### Scenario: Checking topic coverage
- **WHEN** the approved chapter list is compared with the topics named in this requirement
- **THEN** every topic is the subject of a chapter or a section, or the coverage record states why it was left out

### Requirement: The tutorial continues Fundamentals of Machine Learning
The tutorial SHALL start from the transformer, LLM and VLM sections of Fundamentals of Machine Learning. It SHALL link
to them instead of repeating their definitions, and SHALL link to Fundamentals of Mathematics for Machine Learning for
mathematical results. Those Fundamentals of Machine Learning sections SHALL remain in place.

#### Scenario: Reading the architectures chapter
- **WHEN** a reader opens the first chapter
- **THEN** the transformer block and self-attention are recalled by link to Fundamentals of Machine Learning, not
  defined again, and the chapter builds on them

#### Scenario: Reading Fundamentals of Machine Learning
- **WHEN** a reader opens the Supervised Learning chapter of Fundamentals of Machine Learning
- **THEN** its sections on transformers, LLMs and VLMs are still there

### Requirement: Internals here, system composition in System Design
The tutorial SHALL teach how models, training and inference work inside, including attention kernels, parallelism
strategies, quantization error, KV-cache management, decoding algorithms, alignment objectives and agent reasoning
loops. System Design SHALL treat these as components of services and link to this tutorial for their internals, so
that neither tutorial derives what the other one owns.

#### Scenario: Following the KV cache across tutorials
- **WHEN** a reader follows the KV cache from System Design's ML, LLM and agent systems chapter
- **THEN** System Design uses its memory footprint for capacity planning and links to Fundamentals of AI, where the
  cache, its size formula and paged allocation are defined and derived

### Requirement: Fundamentals of AI chapters follow the chapter template
Every written chapter SHALL follow `openspec/templates/chapter.qmd`:
- ten examples and ten exercises after each statement;
- collapsed two-tab solutions, Proof (or Solution), then Python;
- three closing exercises;
- a final References section.

A result with a published proof, such as the scaling of attention cost, the low-rank update count of LoRA or the
quantization error bound, SHALL be stated with its hypotheses and proved. An architecture or method SHALL be stated
as a definition.

#### Scenario: Counting examples and exercises
- **WHEN** the content checker runs on a written chapter of the tutorial
- **THEN** it reports every statement with exactly ten examples and ten exercises, and no finding

### Requirement: scikit-ai is the high-level software
Wherever a chapter uses a model as a component (generating, embedding, classifying, extracting, retrieving, adapting
or evaluating), the code SHALL use scikit-ai. Lower-level PyTorch and Hugging Face code SHALL be used to show a
mechanism inside a model, or where scikit-ai lacks the feature. Each such gap SHALL be recorded with the number of
its scikit-ai issue.

#### Scenario: Embedding documents for retrieval
- **WHEN** a reader reads the retrieval chapter's example that embeds and searches documents
- **THEN** the code uses scikit-ai's embedder and retriever, not a hand-written loop over a Hugging Face model

#### Scenario: Showing the attention computation
- **WHEN** a chapter computes attention scores step by step
- **THEN** the code uses PyTorch tensors directly, because the point is the mechanism

#### Scenario: A missing feature
- **WHEN** a chapter needs a feature that scikit-ai lacks
- **THEN** the coverage record names the scikit-ai issue, and the chapter uses lower-level code until the feature is
  released

### Requirement: Runnable examples
Examples and exercises SHALL compute their results with code that the content checker runs and compares with the
recorded output, using fixed seeds and the tutorial's pinned environment. Every block SHALL finish within the
profile's time limit on a CPU. A model trained for illustration SHALL be small enough to train inside its block.

#### Scenario: Training a small model
- **WHEN** the content checker runs a block that trains a small transformer from scratch
- **THEN** training finishes within the time limit, and the printed loss matches the recorded output

### Requirement: Downloaded models are pinned and cached
A small open model from the Hugging Face Hub SHALL be named with a pinned revision and loaded from a cache outside the
repository. Model weights SHALL NOT be committed.

#### Scenario: Running a downloaded model
- **WHEN** the content checker runs a block that loads a small Hub model at its pinned revision
- **THEN** the model loads from the cache, the block finishes within the time limit, and its output matches the
  recorded output

#### Scenario: Checking the repository for weights
- **WHEN** the repository is searched for model weight files
- **THEN** none is found

### Requirement: Illustrative code for heavy workloads
Code that needs accelerators or more memory than a CPU run allows MAY appear only as illustrative code. Examples are
multi-GPU training, large-model inference and serving engines. Such code SHALL be marked as not run, and its results
SHALL NOT be presented as recorded output.

#### Scenario: Showing tensor-parallel training
- **WHEN** a chapter shows a multi-GPU training script
- **THEN** the block is marked as illustrative and has no recorded output presented as a measurement

### Requirement: Fundamentals of AI content comes from cited sources
Every section of a written chapter SHALL cite, with a locator, at least one work in the Zotero library that covers its
material. The work SHALL be drawn from the benchmark books and papers that the coverage record maps to the chapter, and
the cited pages SHALL have been read. A quantity quoted from the literature rather than derived, such as a benchmark
score or a hardware throughput, SHALL be attributed to its source.

#### Scenario: Checking the quantization section
- **WHEN** the reference audit reads the section on post-training quantization
- **THEN** the section cites the papers it describes with section locators, and the cited pages support the text
