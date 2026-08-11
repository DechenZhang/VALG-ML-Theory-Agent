---
name: perspective-select
description: Convert literature gaps into normalized ML-theory perspectives and write Perspective_Selection.md. Use when Codex needs the perspective-selection step within idea discovery.
---

# Perspective Select

Use this skill to convert theorem-level literature gaps into a small set of normalized perspectives for Workflow 1.

This is the internal perspective-selection skill:

- write only `Perspective_Selection.md`
- normalize theorem-level gaps into perspective tuples
- do not own checkpoints, branch spawning, or controller routing

## Responsibilities

- Turn `$ARGUMENT`-conditioned literature gaps into normalized perspectives.
- Build each perspective as one complete normalized tuple `(analysis_target, model_class, data_assumption, regime, algorithm)`.
- Fill each canonical dimension with exactly one specific candidate value supported by the gap or one explicit broad placeholder such as `general_model`, `general_data_model`, `general_regime`, or `general_algorithm`.
- Do not omit dimensions or place multiple values in one dimension.
- Keep only the gap constraints that naturally map to the canonical tuple `(analysis_target, model_class, data_assumption, regime, algorithm)`.
- The `algorithm` field may encode an optimizer, a method family, or a training mechanism when that is the main theorem object of the gap.
- Defer only theorem-critical residual `$ARGUMENT`-specific context that refines a branch-local idea without changing the selected perspective.
- Limit and de-duplicate selected perspectives according to the workflow control parameters.

## Required Inputs

- `$ARGUMENT`
- `LITERATURE_SURVEY.md`

## Optional Inputs

- `workflow_feedback.md`
- current `Perspective_Selection.md` draft when rerunning the perspective-selection checkpoint
- matching pending rerun feedback from `workflow_feedback.md` for the perspective-selection checkpoint

## Inherited Control Parameter

- `MAX_PERSPECTIVES`
  - when invoked by the public controller, inherit `MAX_PERSPECTIVES` from [../ml-theory-research-agent/SKILL.md](../ml-theory-research-agent/SKILL.md)
  - in standalone use, default to `MAX_PERSPECTIVES = 3`

## Required Outputs

- `Perspective_Selection.md`

## Workflow

### Step 1: Load and extract gap candidates

- Read `$ARGUMENT` and `LITERATURE_SURVEY.md`.
- Apply the Source-Direction Fidelity Contract from `../_shared/checklists/artifact-contracts.md` to the effective `$ARGUMENT`. If `$ARGUMENT` includes or reflects a `RESEARCH_BRIEF.md` or equivalent brief, do not assume fixed headings; scan the available prose for explicit or clearly implied constraints on the problem object, required scope, target quantity, theorem type, success or progress standard, acceptable partial progress, forbidden shortcuts, out-of-scope directions, parameter dependence, and evaluation priorities. Treat absent fields as unspecified rather than inventing them.
- If `Perspective_Selection.md` already exists, read it as the latest draft for this perspective-selection-checkpoint rerun.
- If `workflow_feedback.md` contains pending rerun feedback in the `Perspective Selection` section, treat that feedback as binding guidance for rerunning `/perspective-select`.
- Treat `## 4. gap and open problem` in `LITERATURE_SURVEY.md` as the primary source of candidate gaps.
- Use the direct-theory and foundation-theory sections only to recover missing tuple evidence or to disambiguate a gap's proper theory lens.
- Prefer theorem-level gaps with `Status: supported`; use `uncertain` gaps only when the evidence is still concrete enough to support a distinct perspective and stronger supported gaps do not already cover that lens.
- Never use empirical-only evidence as the sole basis for a perspective.
- For each retained candidate gap from `## 4. gap and open problem`, identify:
  - what theorem-level result is missing
  - what evidence supports the gap
  - why the gap matters downstream for branch-local idea generation
  - whether any extracted source-direction constraint rules out, narrows, prioritizes, or must remain visible for this gap

### Step 2: Infer coherent candidate perspectives from each gap

- For each retained candidate gap, infer one coherent candidate perspective, or a small number of coherent alternatives only when the same gap genuinely supports multiple distinct theory lenses.
- Treat the canonical dimensions `analysis_target`, `model_class`, `data_assumption`, `regime`, and `algorithm` as a normalization frame for the current gap, not as independent value pools to mix later.
- Read each dimension from the same gap-supported theorem setting or analysis lens.
- A specific value may come either from direct `$ARGUMENT` mapping or from the current `$ARGUMENT`-conditioned literature gap and its supporting papers, but only when it is supported by that same gap-supported lens.
- Use an explicit broad placeholder only when the current gap does not justify a more specific value.
- Do not mix dimension values across different gaps, different papers, or unrelated theorem settings just because they all appear somewhere in `LITERATURE_SURVEY.md`.
- Reject or rewrite any candidate perspective whose tuple, focus, or target gap contradicts an extracted source-direction constraint.

### Within-gap dimension read-off rules

- Apply the following rules while reading one coherent gap-supported lens into the normalized tuple.

- `analysis_target`
  - mandatory
  - choose the narrowest stable theorem target supported by the gap
  - if the gap is specifically about `excess_risk`, `population_risk`, or `generalization_gap`, prefer that specific target over a broader `generalization` label
  - if no standard label fits, use an explicit `other_<target>` style label
- `model_class`
  - choose a specific class only when the gap genuinely depends on that architecture or testbed
  - otherwise use `general_model`
- `data_assumption`
  - choose a specific assumption only when the gap genuinely depends on that data model or regularity class
  - otherwise use `general_data_model`
- `regime`
  - choose a specific regime only when the gap genuinely depends on it
  - otherwise use `general_regime`
- `algorithm`
  - choose a specific algorithm, algorithm subtype, or method-family / training-mechanism label only when the gap genuinely depends on it
  - otherwise use `general_algorithm`
  - if a named method or mechanism is the main theorem object of the gap, prefer encoding it in `algorithm` rather than deferring it to idea generation
- For every canonical dimension, choose exactly one value.
- Prefer the least specific value that still preserves the actual literature gap.
- Keep only tuple-mapped constraints in the perspective and defer residual `$ARGUMENT`-specific context to later idea generation.

### Step 3: Finalize coherent candidate perspectives

- Start from the coherent candidate perspective(s) inferred per gap in Step 2; do not assemble new tuples from separately collected dimension values.
- Keep the Step 2 candidate set for each retained gap unchanged by default.
- If Step 2 produced multiple candidates for one gap, keep multiple only when they represent genuinely distinct, internally coherent, gap-supported analysis lenses; otherwise collapse them to one strongest candidate.
- Each candidate perspective must have:
  - one complete normalized tuple
  - one short focus description
  - one target gap it is meant to address
- If tuple normalization omits source-critical details that remain relevant for downstream idea generation, preserve those details in the gap statement or focus description rather than forcing them into an unsuitable tuple field.
- Reject any candidate that is internally inconsistent, too weakly supported, or only differs from another candidate by artificial recombination rather than a real theory-lens difference.

### Step 4: Apply duplicate control and filtering

- Before duplicate control, normalize each dimension value to one stable canonical label and collapse obvious spelling, capitalization, separator, and synonym variants before tuple comparison.
- Merge exact duplicate tuples immediately.
- Merge near-duplicate tuples that differ only by superficial naming or gratuitous over-specificity.
- If several gaps map to the same tuple, keep one perspective and attach the most direct theorem-level gap as `Target gap`.
- Reject candidates that are too broad to anchor a distinct branch or too narrow to be justified by the current literature gap.
- Keep at most `MAX_PERSPECTIVES` perspectives after prioritization, using the inherited controller value when available and otherwise the standalone default, and order the surviving perspectives in descending priority order.

### Selection and ordering rules

- Do internal prioritization rather than hard numeric scoring.
- Prefer perspectives with:
  - higher gap significance
  - stronger alignment with `$ARGUMENT`
  - clearer downstream idea space
  - better distinctness from already selected perspectives
  - better theorem feasibility signal from the literature

### Step 5: Write `Perspective_Selection.md`

- Use [../_shared/templates/perspective-selection.md](../_shared/templates/perspective-selection.md) as the binding structure.
- Under `## Gaps from Literature`, list only the gap statements that directly support at least one selected perspective, and number those retained gaps explicitly.
- Under `## Selected Perspectives`, write each selected perspective with:
  - `Normalized tuple`
  - `Focus`
  - `Target gap` citing the exact numbered gap entry from `## Gaps from Literature`
- Preserve the output order from the selection-and-ordering step.
- Write only `Perspective_Selection.md`.

### Step 6: Final self-check

- Every selected perspective is one complete normalized tuple.
- Every canonical dimension has exactly one value.
- No dimension is omitted.
- No dimension contains multiple values.
- Every selected perspective is traceable to a concrete gap in `LITERATURE_SURVEY.md`.
- No selected perspective contradicts extracted source-direction constraints, and any source-critical residual context lost by tuple normalization remains visible in gap or focus prose.
- Every `Target gap` points to one explicit numbered gap entry in `## Gaps from Literature`.
- Selected perspectives are meaningfully distinct from one another.
- The final count does not exceed `MAX_PERSPECTIVES`.
- No residual idea-level detail has leaked into the perspective tuple.
- On a perspective-selection-checkpoint rerun, the revised `Perspective_Selection.md` must address the checkpoint feedback and must not keep criticized perspectives, ordering, or gap choices unchanged unless stronger perspective-selection rules in this skill require doing so.

## References

- Public controller parameters: [../ml-theory-research-agent/SKILL.md](../ml-theory-research-agent/SKILL.md)
- Template: [../_shared/templates/perspective-selection.md](../_shared/templates/perspective-selection.md)
- Terminology: [../_shared/references/terminology.md](../_shared/references/terminology.md)
- Upstream survey structure: [../_shared/templates/literature-survey.md](../_shared/templates/literature-survey.md)
