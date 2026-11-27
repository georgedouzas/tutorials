# Design

## Context

See proposal.md for why. The relevant current state:

- **Fundamentals of Machine Learning** (`fundamentals-of-machine-learning/`) has four chapters. Supervised Learning
  ends with short sections on transformers and foundation models (`sec-sup-transformers`), LLMs
  (`sec-sup-large-language-models`) and VLMs (`sec-sup-vision-language-models`). These sections are introductory and
  have no code at scale, no inference, no training systems and no adaptation methods. Reinforcement Learning ends
  with LLM-enhanced RL (`sec-rl-imitation-llm`).
- **The change `complexity-and-system-design-tutorials`** introduced several pieces this change reuses:
  - per-tutorial software profiles (`<tutorial>/_software.yml`, read by `_filters/check_content.py`);
  - Python figure scripts (`_filters/figstyle.py`) and D2 diagrams;
  - the `{.python .run}` / `{.text .run-output}` fences and illustrative blocks.

  That change also added System Design chapter 13, ML, LLM and agent systems, which is not yet written. It is not
  archived, so its specs are not yet in `openspec/specs/`.
- **Code blocks are not executed by `quarto render`.** The content checker runs them on this machine and compares
  them with the recorded output. So model downloads and CPU time affect the checker, not the GitHub Actions build.
- **Zotero already holds the books this tutorial needs**, and part of the papers; see D6.

## Goals / Non-Goals

**Goals:**
- A tutorial that a reader of Fundamentals of Machine Learning can continue into, explaining how modern models work,
  are trained, adapted, compressed, served and composed into agents.
- Every quantitative claim either proved or computed by a block that runs on a CPU within the time limit.
- A clean boundary with Fundamentals of Machine Learning (D2) and with System Design (D3).

**Non-Goals:**
- Training or serving models of production size. Those appear only as illustrative code and as arithmetic, such as
  FLOPs, memory and cost.
- Surveys of products, vendors or leaderboards, beyond what a section needs to cite.
- Teaching the mathematics again. Linear algebra, probability, optimization and automatic differentiation are linked
  from Fundamentals of Mathematics for Machine Learning.
- GPU execution in the checker. The checker runs on CPU only, so results do not depend on hardware.

## Decisions

**D1. Folder, title, track and order.**
- Folder `fundamentals-of-ai/`, title "Fundamentals of AI".
- It joins the Machine learning track as its third tutorial.
- Its `order` follows Fundamentals of Machine Learning: AI takes `order: 6`, and Complexity Science and System Design
  move to 7 and 8.
- Categories: Artificial Intelligence, Large Language Models, Deep Learning, Generative Models, Agents. Artificial
  Intelligence becomes a broad topic chip.
- Alternative considered: a new "AI" track. Rejected, because the tutorial is a continuation of the machine-learning
  sequence.

**D2. Boundary with Fundamentals of Machine Learning (owner decision).**
- The existing transformer, LLM and VLM sections stay.
- The first chapter recalls the transformer block, self-attention and the language-modelling objective by link, and
  starts from what those sections leave out.
- A definition already given there is linked, not restated. If this tutorial needs a sharper form, it states the
  refinement as a new definition that cites the original.

**D3. Boundary with System Design (owner decision).**
- Fundamentals of AI owns the internals: attention kernels, parallelism, quantization error, KV-cache management,
  decoding, alignment objectives and agent reasoning loops.
- System Design chapter 13 owns composition: training and serving pipelines as services, capacity planning, SLOs,
  cost, rollout and failure. It uses the internals as given quantities, such as the KV-cache size formula, and links
  here for their derivation.
- This change updates the planning artifacts of `complexity-and-system-design-tutorials` in two places: the System
  Design spec's chapter-13 scenario, and its coverage row and section list (task 1.2).
- Each tutorial keeps its own label group. System Design reaches this tutorial through page links, not
  cross-reference labels.
- Alternative considered: dropping System Design chapter 13. The owner chose to keep it.

**D4. Software profile and environment.**
- **Environment.** `.venv-ai`: Python 3.12, `scikit-ai[hf]` at a pinned release, `torch` CPU wheels, `transformers`, `tokenizers`, `safetensors`,
  `huggingface_hub`, `peft`, `diffusers`, `accelerate`, NumPy and matplotlib. It is pinned in
  `fundamentals-of-ai/requirements.lock`, with a one-line setup in `README.md`.
- **Profile.** `fundamentals-of-ai/_software.yml` sets:
  - tab `Python` and first tabs `[Proof, Solution]`;
  - the `{.python .run}` / `{.text .run-output}` fences;
  - figure kinds `[py, d2]`;
  - illustrative `{.code .illustrative}`;
  - a runner timeout of 120 s per block, as in the other Python tutorials.
- **Runner command.** The runner command is a small wrapper, `fundamentals-of-ai/_run.sh`. It sets the
  environment, then executes `.venv-ai/bin/python`. The variables it sets:
  - `HF_HOME` outside the repository, by default `~/.cache/tutorials-hf`;
  - `HF_HUB_OFFLINE=1`;
  - `TOKENIZERS_PARALLELISM=false`;
  - a fixed thread count.

  The checker already accepts any command path, so it needs no change.
- **Determinism.** Every block:
  - seeds `torch`, NumPy and `random`;
  - uses deterministic algorithms where PyTorch offers them;
  - prints rounded values (losses to 3–4 significant figures, probabilities to 3 decimals), so that recorded outputs
    stay stable across library patch versions on this machine.
- **Alternatives considered.** A GPU (MPS) runner with frozen outputs was rejected, because results would depend on
  hardware. Running everything from scratch with no downloads was rejected by the owner.

**D4a. Two levels of software: scikit-ai above, PyTorch below (owner decision, 2026-11-27).**
- **scikit-ai at a pinned release.** scikit-ai (`skai`, `scikit-ai[hf]`, 0.3.0 at the time of writing) is the
  high-level library. Its components are scikit-learn estimators named by input and output, with interchangeable
  backends:
  - `TextToTextGenerator` and the other generators;
  - `TextEmbedder`, `ImageEmbedder`;
  - `TextClassifier`, `TextExtractor`;
  - `Retriever`, `TopK` and `ForEach`;
  - presets and recipes.

  Chapters use them wherever a model is used as a component, and fit them into `Pipeline` and `GridSearchCV` where
  that teaches model selection.
- **Its HF backend.** Chapters always pass a small model explicitly, because its default chat model (Qwen2.5-1.5B) is
  too slow on CPU. Its `dummy` backend can script deterministic outputs for agent and pipeline examples.
- **PyTorch and Hugging Face directly.** Used where the subject is the mechanism, such as attention, KV caching,
  quantization arithmetic, LoRA updates or diffusion sampling, and where scikit-ai has no feature yet.
- **Feature gaps.** Gaps found while planning were filed on 2026-11-27, and the owner implements them:
  - #9 pinned revisions and offline runs;
  - #10 local LoRA and QLoRA fine-tuning;
  - #11 quantized and reduced-precision loading;
  - #12 decoding controls, seeds and token log-probabilities;
  - #13 constrained generation;
  - #14 a tool-using agent component;
  - #15 a RAG component;
  - #16 approximate nearest-neighbour indexes for `Retriever`;
  - #17 scorers for generative components;
  - #18 token, latency and throughput metrics;
  - #19 preference tuning (DPO).
- **Gaps found later.** New gaps found while writing are filed the same way, and listed in the report and the
  coverage record. A chapter moves to the scikit-ai feature once it is released, and the lock file is bumped.
- **Alternative considered.** Raw `transformers` everywhere. Rejected by the owner, because scikit-ai is meant to be
  the reader's working tool, and the tutorial doubles as its proving ground.

**D5. Models: trained for illustration, plus a pinned set from the Hub.**
- **Trained for illustration.** Models trained inside a block are tiny, such as a character-level transformer or a
  small MLP diffusion model on 2-D data, and train in under about 60 s on CPU.
- **Downloaded.** Downloaded models are listed in `fundamentals-of-ai/models.lock`, one line each with repo id,
  revision hash, licence and size. A prefetch script, `fundamentals-of-ai/prefetch_models.py`, downloads them into
  `HF_HOME` while online. After that the checker runs offline.
- **The initial set** is small and openly licensed:
  - `openai-community/gpt2` (124M);
  - `HuggingFaceTB/SmolLM2-135M` and its Instruct variant;
  - `sentence-transformers/all-MiniLM-L6-v2` (embeddings);
  - `openai/clip-vit-base-patch32`;
  - `google/ddpm-cifar10-32`;
  - `HuggingFaceTB/SmolVLM-256M-Instruct`.

  That is about 2–3 GB.
- **Adding a model.** A chapter that needs another model adds a line to `models.lock` in the same run, and the
  report states its size.
- **Never committed.** Weights are never committed; `.gitignore` covers `*.safetensors`, `*.bin` and `*.gguf`.
- **Failure mode.** If the cache lacks a model, the checker reports that block's error, so the gap is visible.
- **Alternative considered.** Larger models (1–8B) were rejected for run blocks, because of CPU time and memory.
  They appear as illustrative code and in arithmetic examples.

**D6. Sources and coverage.**
- **Benchmark books in Zotero:**
  - Bishop and Bishop, *Deep Learning: Foundations and Concepts* (`LNJIQ4AH`);
  - Raschka, *Build a Large Language Model from Scratch* (`IB9THHXL`);
  - Kamath et al., *Large Language Models* (`LJLVTKSS`);
  - Sanseviero et al., *Hands-On Generative AI with Transformers and Diffusion Models* (`Y9H2QSZF`);
  - Mall, *Deep Learning at Scale* (`BLGJ3IP3`);
  - Murphy, *Probabilistic Machine Learning: Advanced Topics* (`TN2DGBPB`);
  - Huyen, *AI Engineering* (`C2DA4KIQ`, metadata only).
- **Section sources:**
  - Foster, *Generative Deep Learning*;
  - *AI Agents in Action*;
  - Cronin, *Decoding Large Language Models*;
  - Wang and Szeto, *Designing Deep Learning Systems*;
  - Berryman and Ziegler;
  - the agent and LLM surveys already in the library.
- **Primary papers** are the source of each method. A first list to check against the library:
  - Transformer, RoPE, GQA, Mixture of Experts, Mamba;
  - Kaplan and Chinchilla scaling laws;
  - FlashAttention, Megatron-LM, ZeRO;
  - LLM.int8, GPTQ, AWQ, SmoothQuant;
  - LoRA, QLoRA;
  - InstructGPT, DPO, GRPO;
  - chain of thought, self-consistency;
  - DDPM, score SDE, DDIM, classifier-free guidance, latent diffusion, flow matching, DiT;
  - ViT, CLIP, LLaVA;
  - the papers already added for System Design: vLLM, Orca, speculative decoding, RAG, HNSW, FAISS, ReAct,
    Reflexion, Toolformer.
- **Missing papers** go into a `references-proposal.md` for the owner. They are added with PDFs only after approval,
  through the desktop connector, as in the previous change.
- **Coverage record.** `openspec/coverage/fundamentals-of-ai.md` maps the benchmark tables of contents, read from the
  PDFs, to the proposed chapters, and classifies the gaps. The owner approves the chapter list from it.

**D7. Proposed chapters, to be fixed by the coverage record.** The order follows dependencies: a model's structure,
then how it is trained, then how it runs, then how it is adapted, then what is built on it.

| # | Slug | Core content |
|---|---|---|
| 1 | modern-architectures | Decoder-only design; pre-norm and RMSNorm; positional encodings (RoPE, ALiBi); attention variants (MQA, GQA, sliding window); mixture of experts; state-space models; long context |
| 2 | pretraining-and-scaling | Tokenization (BPE); data pipelines and deduplication; the training objective at scale; AdamW and schedules; mixed precision; scaling laws (Kaplan, Chinchilla) and compute-optimal training |
| 3 | hardware-and-parallelism | Accelerator memory hierarchy and the roofline model; FLOP and memory accounting; FlashAttention; data, tensor, pipeline and sequence parallelism; ZeRO and FSDP; collectives |
| 4 | inference-and-decoding | Prefill and decode; the KV cache and its size; greedy, beam, temperature, top-k and top-p sampling; constrained decoding; paged KV cache and continuous batching; speculative decoding |
| 5 | quantization-and-compression | Number formats (FP16, BF16, FP8, INT8, INT4); uniform and affine quantization and their error; outliers; post-training methods (LLM.int8, GPTQ, AWQ, SmoothQuant); quantization-aware training; pruning; distillation |
| 6 | fine-tuning | Full fine-tuning; parameter-efficient methods (adapters, prefix and prompt tuning, LoRA and its variants); QLoRA; catastrophic forgetting; model merging |
| 7 | post-training-and-alignment | Supervised fine-tuning; reward models; RLHF with PPO; DPO and its relatives; RLAIF and constitutional methods; links to Fundamentals of ML's RL chapter for the RL itself |
| 8 | reasoning-and-test-time-compute | Chain of thought; self-consistency; search over reasoning (tree search, verifiers); process and outcome rewards; RL for reasoning (GRPO); test-time scaling |
| 9 | retrieval-and-memory | Embedding models and contrastive training; approximate nearest-neighbour search; retrieval-augmented generation; long context versus retrieval; memory for agents |
| 10 | agents | The tool-calling loop (ReAct); function calling and structured outputs; planning and reflection; memory; multi-agent patterns; tool protocols (MCP); evaluating agents |
| 11 | vision-language-models | ViT; contrastive image-text pretraining (CLIP); connecting encoders to LLMs (LLaVA-style); multimodal tokenization |
| 12 | diffusion-and-flow-models | DDPM; score matching and the SDE view; DDIM; classifier-free guidance; latent diffusion; flow matching; diffusion transformers |
| 13 | evaluation-and-safety | Benchmarks and contamination; LLM-as-judge; calibration; red-teaming and jailbreaks; basic interpretability; the limits of evaluation |

**D8. Pilot.**
- Chapter 1, modern-architectures, is written first as the pilot, in the same way as the earlier tutorials' pilots.
- The owner reviews it, and the decisions are recorded here as D8a before the other chapters start.

**D9. Notation.**
- A new site table, `_notation/ai.qmd`, included by `fundamentals-of-ai/notation/index.qmd`.
- Chapters use the symbols of Fundamentals of Machine Learning where they exist, for example d_model, h and the
  softmax.
- New symbols are added first in the table, such as the KV-cache size, the quantization scale, the LoRA rank and the
  diffusion noise schedule.
- Where a source's symbol clashes with an existing one, the notation page's conventions section records the clash,
  using subscripts where two meanings meet, as in the other tutorials.

## Risks / Trade-offs

- **[Library churn]** `transformers` and `diffusers` change quickly, and a patch release can shift printed digits.
  → Pinned lock file, rounded outputs, and pinned model revisions. The checker's `--update` is used only together
  with an intended version bump.
- **[CPU time]** Even small models are slow on CPU, and the checker runs each chapter in one process.
  → A 120 s cap per block. The models are tiny, with short generations (tens of tokens) and few diffusion steps.
  Anything heavier goes into illustrative code.
- **[Disk and download]** The cache is about 2–3 GB, and the first download needs network access.
  → The prefetch script is run once and lives outside the repository. `models.lock` makes the set explicit.
- **[Fast-moving field]** Methods and names change; for example new attention variants and new alignment objectives
  keep appearing.
  → Chapters teach the stable mechanisms with their primary papers and date-stamp anything quoted from the
  literature.
- **[Overlap with System Design]** Two tutorials discuss the same objects.
  → D3's rule: the derivation lives here, and the use as a given quantity lives there. Each links to the other.
- **[scikit-ai is immature]** Features are missing, and the API may change between releases.
  → The release is pinned. Gaps go to issues, and lower-level code bridges them meanwhile. A version bump is a
  deliberate run with `--update`, checked chapter by chapter.
- **[Commercial books]** Huyen's *AI Engineering* is metadata only.
  → It is not cited by page unless the owner saves a PDF. Sections rely on the books and papers with PDFs.
- **[Machine load]** Three other tutorials' agents already share this machine.
  → AI chapters run one at a time, and each one's checker runs on that chapter alone.

## Migration Plan

- **Ordering.**
  - The `site-design` delta here assumes the four-track home page of `complexity-and-system-design-tutorials`.
  - Archive that change first, or merge both deltas into one requirement text when archiving whichever comes second.
- **Track order.**
  - Moving the `order` values of Complexity Science and System Design changes only their position in listings.
  - No URLs change.
- **Rollback.** Remove the folder, the sidebar entry and the track card. No other tutorial depends on this one until
  System Design chapter 13 links to it.
