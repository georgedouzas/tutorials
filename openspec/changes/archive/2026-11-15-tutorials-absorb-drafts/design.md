# Design

## Context

- The hidden drafts are git-ignored (`posts/_*/` in `.gitignore`) and untracked, so git cannot bring them back once they are deleted.
- `reinforcement-learning-and-llm-agents.qmd` and `mathematical-foundations-of-reinforcement-learning.qmd` are byte-identical copies of `_reinforcement-learning/index.qmd` and `_mathematical-foundations-of-reinforcement-learning/index.qmd`. `reinforcement-learning.qmd` already covers MDPs, value functions and Bellman equations, and `mathematical-and-statistical-foundations.qmd` already has a probability section (`sec-probability-statistics`).
- The ML tutorials run Python code cells at render time, using `requirements.txt`, `freeze: auto` and `cache: true`. The physics tutorials have no executable cells. Their Sage code lives in `sage-exercises/<id>.sage`, the recorded output is in `<id>.out`, and both are embedded with `{{< sage <id> >}}`.
- The symbolic computation drafts use a `SageMath-10.9` Jupyter kernel (97 cells in Part 2), which is not registered on this machine, although `sage` is installed. Part 3 runs a copy of PyRate (Apache-2.0, 8.6 MB) shipped in `_pyrate/`.

## Goals / Non-Goals

**Goals:**
- Each topic is stated once, in the chapter that owns it, and the drafts can be deleted safely.

**Non-Goals:**
- Rewriting or improving chapter prose beyond connecting sentences. That belongs to the per-tutorial revision changes.
- Changing the physics chapter count or the Kaluza-Klein tutorial, which has no hidden draft.

## Decisions

1. **Merge by topic, not by appending.** Each draft subsection goes under the target section with the same subject. Where the target already states the same definition or equation, the target's version stays and the draft's copy is dropped. Material with no counterpart is added: LLM-enhanced RL, MDP examples, the matrix-vector Bellman form, closed-form and iterative solutions with code, the per-policy probability tables, action values, and the probability review items missing from the math tutorial. The alternative was keeping the drafts as separate chapters, which is the current state and is what the owner rejected.
2. **The probability review goes to the math tutorial.** The probability theory section of the RL-LLM draft is general background, so it goes into `sec-probability-statistics`, and the RL chapter cross-references it, matching the existing `@sec-probability-statistics` link.
3. **Sage examples follow the physics pattern, not a Jupyter kernel.** Each Part 2 example becomes `sage-exercises/smp-<topic>-<n>.sage`, run with `sage` to produce `.out`, and is embedded with the existing shortcode inside an `{#exm-…}` block. Rendering then needs no Sage kernel, and the output is real because it comes from running the script. Plots are saved by the script as images in the chapter's figure folder. The alternative, registering the Sage kernel and executing cells, would make every render depend on Sage and break the self-contained-render rule.
4. **PyRate is installed, not vendored.** The theoretical physics post adds `pyrate/SM.model` and a script, `scripts/pyrate_sm.py`, that runs PyRate (installed from `LSartore/pyrate` as recorded in `requirements.txt`), solves the RGEs and saves the plot plus a text log. The chapter shows the model file, the code, the log and the plot as static recorded output. This avoids committing 8.6 MB of third-party code and keeps renders independent of PyRate.
5. **Removed chapters are dropped from every index.** `scripts/_tutorial_chapters.json`, `cross-references.json`, the landing page and the `_quarto.yml` sidebar are regenerated or edited, and `#sec-rl-llm-agents` and `#sec-mathematical-foundations-rl` references are re-pointed to the new section IDs in `reinforcement-learning.qmd`.
6. **Deletion after an inventory.** A script lists every file in each draft folder, then records where its content now lives, or why it is not needed (outlines and textbook conversions already in `_references/`, figures moved). The folders are deleted only when every file is accounted for.

## Risks / Trade-offs

- [Merging drops something that looked duplicated but differed] → compare every definition, equation and code cell from the drafts against the result with a script, and list each dropped item with the target line that replaces it.
- [Section IDs inside merged material clash with existing IDs] → prefix any clashing ID, then run the site link checker.
- [PyRate fails to install or run on current Python] → fall back to running the shipped `_pyrate` copy once to produce the recorded output, keep only the model file and outputs, and note the fallback in the chapter's code comment.
- [Recorded Sage output goes stale] → the existing `make figures` target and the exercise checker cover `.sage` + `.out` pairs, so the new pairs are rerun the same way.
- [Old chapter URLs break for anyone who bookmarked them] → accepted, since the tutorials were published on 2026-11-05 and have no inbound links on the site.

## Migration Plan

Render each affected chapter one at a time, then run a full render, the link checker and the 375 px check, then commit. Rollback means restoring the source files from git. The drafts cannot be restored from git, so they are deleted only as the last task.
