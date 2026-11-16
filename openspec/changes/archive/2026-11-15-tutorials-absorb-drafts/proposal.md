# Proposal

## Why

Six hidden draft folders sit under `posts/_*`. Their content is either pasted into the published tutorials as stand-alone chapters that repeat what the main chapters already say, or not published at all. Before each tutorial gets its own OpenSpec revision, every draft should be merged into the tutorial and chapter where its topic belongs, so the tutorials are the only source and the drafts can go.

## What Changes

- Merge **Reinforcement Learning and LLM-based Agents** (`_reinforcement-learning`) into the Reinforcement Learning chapter of Fundamentals of Machine Learning. Its LLM-enhanced RL overview, MDP application examples, Bellman matrix-vector form, closed-form and iterative solutions with their code, and action values go into the matching sections. Its probability theory review goes into the probability section of Fundamentals of Mathematics for Machine Learning. Material the target already states is dropped rather than repeated.
- Merge **Mathematical Foundations of Reinforcement Learning** (`_mathematical-foundations-of-reinforcement-learning`) the same way. Its MDP summary, agent-environment description, trajectory, return and terminal-state definitions go into the Reinforcement Learning chapter's foundations, and its figure moves with them.
- **BREAKING (for links):** remove the two stand-alone chapters `reinforcement-learning-and-llm-agents` and `mathematical-foundations-of-reinforcement-learning`. Fundamentals of Machine Learning goes from six chapters to four, and the landing page, sidebar, previous and next links and cross-references are updated.
- Merge **Symbolic Computation in Theoretical Physics with Python, Parts 1 and 2** into Fundamentals of Mathematics for Physicists. The library overview goes on the landing page. The SageMath examples become Sage worked examples in their chapters: arithmetic and calculus in real analysis, differential equations, linear algebra, group theory (basic and advanced), and the 2-sphere example in differential geometry.
- Merge **Part 3 (PyRate)** into the Renormalisation chapter of Fundamentals of Theoretical Physics, as a worked example that computes and solves the two-loop Standard Model RGEs and plots the running couplings.
- `_ml-tutorials` is already fully published, as earlier checks showed. Confirm that again before removing it.
- After a checksum inventory shows nothing unabsorbed is left, delete the six hidden folders.

## Capabilities

### New Capabilities

None.

### Modified Capabilities

- `ml-tutorials`: the Fundamentals of Machine Learning chapter list shrinks to four, merged chapters may drop duplicated material, and no hidden ML draft remains.
- `physics-tutorials`: the mathematics and physics tutorials gain the symbolic-computation examples with real recorded output, and no hidden physics draft remains.

## Impact

- `posts/fundamentals-of-machine-learning/`: `reinforcement-learning.qmd` grows, two chapter files and their entries in `scripts/_tutorial_chapters.json`, `cross-references.json` and `index.qmd` go, and images move in.
- `posts/fundamentals-of-mathematics-for-machine-learning/mathematical-and-statistical-foundations.qmd`: the probability section grows.
- `posts/fundamentals-of-mathematics-for-physicists/`: `index.qmd`, five chapters, and new `sage-exercises/*.sage` + `.out` files.
- `posts/fundamentals-of-theoretical-physics/`: `part-ii-08-renormalisation.qmd`, a new PyRate script, its model file, recorded output and plot, and `requirements.txt`.
- `_quarto.yml`: the Fundamentals of Machine Learning sidebar.
- `posts/_*` draft folders: deleted. They are git-ignored and untracked, so the deletion is permanent and needs the inventory first.
- Published URLs for the two removed chapters stop working.
