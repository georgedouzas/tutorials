# Tasks

## 1. Inventory

- [x] 1.1 Write an inventory of every file in the six `posts/_*` draft folders with checksums, saved outside the repo; verify the file count matches `find posts/_* -type f | wc -l`.
- [x] 1.2 Confirm `_ml-tutorials` chapters match the published chapters apart from the allowed changes, and that its `references/` and `outline/` files exist in the tutorials' `_references/`; verify with the word-diff script showing only allowed differences.

## 2. Merge the reinforcement learning drafts

- [x] 2.1 Map each subsection of `reinforcement-learning-and-llm-agents.qmd` and `mathematical-foundations-of-reinforcement-learning.qmd` to a target section or to "already stated at <file:line>"; verify every draft heading appears in the map.
- [x] 2.2 Merge the RL material into `reinforcement-learning.qmd`, covering LLM-enhanced RL, MDP examples, the trajectory, return and terminal state, Bellman equation forms and solutions with code, the probability tables and action values, and move the images it uses; verify by rendering the chapter with no warnings and with code output present.
- [x] 2.3 Merge the probability theory review into `sec-probability-statistics` of `mathematical-and-statistical-foundations.qmd` and link it from the RL chapter; verify by rendering that chapter with no warnings.
- [x] 2.4 Remove the two stand-alone chapters from the folder, `scripts/_tutorial_chapters.json`, `cross-references.json`, `index.qmd` and the `_quarto.yml` sidebar, and re-point references to their section IDs; verify that `grep` finds no reference to the old file names or IDs, and that the landing page lists four chapters.
- [x] 2.5 Run the definition, equation and code-cell comparison between the drafts and the merged chapters; verify that every dropped item is listed with the line that replaces it.

## 3. Merge the symbolic computation drafts

- [x] 3.1 Add the library overview from Part 1 to the Fundamentals of Mathematics for Physicists landing page; verify the page renders with the links.
- [x] 3.2 Turn each Part 2 example into a `sage-exercises/smp-*.sage` script, run it with `sage` to record `.out` (and save any plot), and embed it with `{{< sage … >}}` in a worked example in the real analysis, differential equations, linear algebra, group theory and differential geometry chapters; verify that every `.sage` has a matching `.out`, and that each chapter renders with no warnings.
- [x] 3.3 Add `pyrate/SM.model` and `scripts/pyrate_sm.py` to Fundamentals of Theoretical Physics, run it to record the log and plot, and add the worked example to `part-ii-08-renormalisation.qmd`; verify that the chapter renders and shows the model file, code, output and plot.
- [x] 3.4 Add the Part 1 to 3 citations to each tutorial's `references.bib` and the chapters' References sections; verify `scripts/check_bib.py` passes for both posts.

## 4. Verify and clean up

- [x] 4.1 Run a full `quarto render`, the site link checker, and the 375 px check on the changed chapters; verify there are no warnings, no non-`#tag=` broken links, and no sideways scroll.
- [x] 4.2 Check every file in the inventory against its new location or its reason for being unneeded; verify that no file is left unaccounted for.
- [x] 4.3 Delete the six hidden draft folders, leaving `posts/_metadata.yml` alone, then re-render; verify that `ls -d posts/_*/` finds nothing and the render still succeeds.
- [x] 4.4 Validate the change with `openspec validate tutorials-absorb-drafts --strict`; verify that it passes.

## Workflow follow-up

- Commit, push and deploy when the owner asks.
- Archive this change before starting the per-tutorial revision changes.
