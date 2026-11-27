# Proposal

## Why

Fundamentals of Machine Learning ends where modern AI starts. Its Supervised Learning chapter has short sections on
transformers, LLMs and VLMs, but nothing on how today's models are built, trained at scale, adapted, compressed,
served or turned into agents. The owner wants a continuation that covers the modern AI revolution in the same rigorous
style. The Zotero library already holds the books it needs:
- Bishop and Bishop, *Deep Learning*;
- Raschka, *Build a Large Language Model from Scratch*;
- Kamath et al., *Large Language Models*;
- Sanseviero et al., *Hands-On Generative AI with Transformers and Diffusion Models*;
- Mall, *Deep Learning at Scale*;
- Huyen, *AI Engineering*;
- Murphy, *Probabilistic Machine Learning: Advanced Topics*.

It also holds many of the papers.

## What Changes

- **A new tutorial, Fundamentals of AI** (`fundamentals-of-ai/`).
  - **Template.** It is built from `openspec/templates/tutorial-index.qmd` and `openspec/templates/chapter.qmd`, with
    a landing page, notation page, glossary, its own sidebar and a cover.
  - **Chapter rules.** It follows the same chapter rules as the other tutorials:
    - ten examples and ten exercises per statement;
    - collapsed two-tab solutions (Proof | Python);
    - scripted figures;
    - three closing exercises;
    - cited sources with locators.
  - **Proposed chapters**, in reading order:
    1. modern architectures;
    2. pretraining and scaling;
    3. hardware and parallelism;
    4. inference and decoding;
    5. quantization and compression;
    6. fine-tuning;
    7. post-training and alignment;
    8. reasoning and test-time compute;
    9. retrieval and memory;
    10. agents;
    11. vision-language models;
    12. diffusion and flow models;
    13. evaluation and safety.

    This list is a proposal. A coverage record against the benchmark books fixes it, and the owner approves the final
    list, as for every other tutorial.
- **Its place among the tutorials.**
  - It continues Fundamentals of Machine Learning. It starts from that tutorial's transformer, LLM and VLM sections,
    links back to them and does not repeat them. Those sections stay where they are.
  - Mathematics comes from Fundamentals of Mathematics for Machine Learning, by link.
  - It teaches how models and inference work inside: attention and its kernels, parallelism, quantization maths,
    KV-cache algorithms, decoding, alignment objectives, and agent reasoning.
  - System Design chapter 13, ML, LLM and agent systems, changes to cover composing these into services: pipelines,
    capacity, SLOs, cost and failure. For internals it links to this tutorial. The System Design spec and coverage
    record in the change `complexity-and-system-design-tutorials` are updated to match.
- **Software.** The tutorial works at two levels.
  - **High level: scikit-ai** (`skai`), the owner's library of task components with a scikit-learn API. It covers
    generation, embedding, classification, extraction, retrieval and pipelines, on open models through its Hugging
    Face backend. It is the main software: whenever a chapter uses a model as a component, it uses scikit-ai.
  - **Low level: PyTorch and Hugging Face** (`transformers`, `peft`, `diffusers`, `tokenizers`). These show how the
    mechanism works inside, for example an attention kernel, a KV cache, a LoRA update or a diffusion step.

  scikit-ai is young (0.3.0). Missing features found while planning are filed as GitHub issues, and the owner
  implements them. A chapter uses the new feature once it is released. Until then, it uses the low-level code and
  records the gap in the coverage record.

  The environment is pinned, `.venv-ai`. Examples combine two kinds of model:
  - small models trained from scratch inside the chapter, for illustration;
  - small open models from the Hugging Face Hub, downloaded once into a cache outside the repo, with pinned revisions
    (for example, GPT-2 124M and SmolLM2-135M).

  Work too heavy for a CPU, such as multi-GPU training or 7B-parameter inference, appears only as illustrative code.
- **Sources.** Papers missing from Zotero (for example attention, FlashAttention, ZeRO, LoRA, QLoRA, GPTQ, DPO, DDPM,
  CLIP and the scaling laws) are proposed to the owner and added with PDFs only after approval.
- **Home page.** The Machine learning track lists three tutorials: mathematics for machine learning, machine learning,
  and AI.

## Capabilities

### New Capabilities
- `ai-tutorial`: the Fundamentals of AI tutorial. Covers its chapters, landing page and navigation, its boundary with
  Fundamentals of Machine Learning and System Design, sources, scikit-ai as its high-level software, its software
  profile with trained and downloaded models, and the chapter template.

### Modified Capabilities
- `site-design`: the Machine learning track of the home page lists three tutorials.

## Impact

- **New folder** `fundamentals-of-ai/`, and a new notation table `_notation/ai.qmd`.
- **Edited shared files:**
  - `_quarto.yml`: a new sidebar;
  - the root `index.qmd`: the track listing;
  - `_includes/topics.html`: broad topics;
  - `openspec/config.yaml`: the tutorial list in its context;
  - `_filters/harvest.py`: the tutorial joins the `machine-learning` label group.
- **Another change.** In `complexity-and-system-design-tutorials`, System Design chapter 13's scenario and coverage
  row are narrowed to the composition view. That chapter is not yet written.
- **Dependencies:**
  - `.venv-ai`, with a pinned `requirements.lock`, including `scikit-ai[hf]` at a pinned release;
  - GitHub issues on `georgedouzas/scikit-ai` for missing features (#9-#19 opened 2026-11-27);
  - a Hugging Face cache outside the repo, of roughly 2–4 GB of small models;
  - network access the first time each model is downloaded.

  The site build is unaffected. Code blocks are run by the content checker on this machine, not during `quarto
  render`.
- **Zotero:** new papers and reading notes, written only after the owner approves them.
- **Coverage:** a new record, `openspec/coverage/fundamentals-of-ai.md`.
