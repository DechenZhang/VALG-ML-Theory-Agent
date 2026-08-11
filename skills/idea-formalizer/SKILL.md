---
name: idea-formalizer
description: Translate a branch-local idea into a formal setting and goal and write perspective_M/idea_N/setting.md, preserving prior valid formalization choices and applying only the approved semantic delta after failure-driven idea revision. Use when Codex needs the formalization step between idea generation and theorem proving.
---

# Idea Formalizer

Use this skill to formalize one approved branch-local idea into a theorem-ready `setting.md` for later theorem proving.

This is the internal formalization skill:

- write `perspective_M/idea_N/setting.md`
- formalize the approved branch-local idea rather than redesigning it
- do not modify controller-owned routing, tracker-row ownership, or controlled vocabularies

The goal of this skill is to remove ambiguity before proof work. The split proof pipeline should be able to read `setting.md` and start `/proof-sketch` without redefining the problem, guessing missing assumptions, or repairing symbol ambiguity.

Use [../_shared/templates/setting.md](../_shared/templates/setting.md) as the binding artifact structure.

## Responsibilities

- Translate `idea.md` into a formal setting and a formalized goal.
- Keep the formalization aligned with the approved idea instead of inventing a nearby new idea.
- Make assumptions, notation, regime, and goal contract explicit enough for theorem proving, with stable ids for every technical assumption.

## Required Inputs

- `perspective_M/idea_N/idea.md`

## Optional Inputs

- `workflow_feedback.md`
- `LITERATURE_SURVEY.md`
- other branch-local files under `perspective_M/`
- current `perspective_M/idea_N/setting.md` draft when rerunning the formalization checkpoint for the same approved `idea_N`
- matching pending rerun feedback from `workflow_feedback.md` for the formalization checkpoint
- previous same-perspective `idea_{N-1}/setting.md` as a refinement reference when the current `idea_N` was created after controller-level idea modification
- previous same-perspective `idea_{N-1}/proof_review.md` as a refinement reference when the current `idea_N` was created after controller-level idea modification

## Required Outputs

- `perspective_M/idea_N/setting.md`

## Workflow

### Step 1: Load the current branch context

- Read the exact current `perspective_M/idea_N/idea.md`.
- Read the `Parent foundation papers`, `Transfer map`, `Source alignment`, `Progress type`, `Materiality`, `Feasibility`, and `Consistency` entries from `idea.md` `## Notes` as branch-lineage, source-direction, progress-type, and assumption-support guardrails for the formalization.
- If `perspective_M/idea_N/setting.md` already exists, read it as the latest draft for this branch; this is a same-idea formalization-checkpoint rerun rather than a new idea variant.
- If `workflow_feedback.md` contains pending rerun feedback for the current branch's `Formalization checkpoint`, treat that feedback as binding guidance for rerunning `/idea-formalizer` on the current approved `idea_N`.
- If the current branch is a fresh `idea_N` created after controller-level idea modification, read the immediately previous same-perspective `idea_{N-1}/setting.md` and `idea_{N-1}/proof_review.md` as refinement references and as the default baseline for unchanged formalization choices in this new branch.
- If available, read `LITERATURE_SURVEY.md` only as supporting context for standard notation, standard assumptions, and nearby theorem shapes.
- If useful, read earlier same-perspective `idea_K/setting.md` and `idea_K/proof_review.md` artifacts only as calibration signals for notation, setup style, and previously exposed ambiguity.
- Treat the approved `idea.md` as the primary contract. Literature and sibling branches may guide the formalization, but they must not overwrite the approved setting or goal.
- Treat source-alignment and progress-type metadata recorded in `idea.md` as binding when present. Preserve it in `setting.md` rather than reclassifying the branch during formalization.
- Treat the lineage recorded in `idea.md` as an alignment constraint: use it to preserve the approved parent-paper inheritance, not to import new unsupported assumptions from the literature.
- Treat the assumption support recorded in `idea.md` as binding: preserve whether theorem-critical assumptions are standard/literature-derived or novel example-verified, including the concrete verification examples for novel assumptions.
- Previous failed artifacts may suggest cleaner notation, better assumptions, a target-preserving primitive source, or a target-changing conservative theorem target, but they must not override the current branch's setting or goal in `idea.md`.
- If `idea.md` inherits a theorem-facing recovery, reduction, specialization, zero-defect, exact-limit, exact/noiseless, or baseline-case conclusion from a prior branch or failure record, preserve it in `setting.md` unless `idea.md` explicitly marks a target-changing repair.
- On fresh-idea formalization after controller-level idea modification, first identify the semantic delta between the nearest prior same-perspective idea and the current `idea.md`, together with the recorded failure reason. Preserve previously valid formalization choices from `idea_{N-1}/setting.md` when they remain consistent with the current `idea.md` and are not changed by that delta or implicated by the failure; rewrite only the modified or invalidated parts instead.
- On same-idea formalization reruns, preserve already-valid formalization choices unless the approved `idea.md` or the checkpoint feedback requires changing them.

### Step 2: Draft the formalization

Write the current branch's theorem-ready `perspective_M/idea_N/setting.md`.

- Depending on the current flow, draft it from scratch, revise the current `setting.md` draft on a formalization-checkpoint rerun, or reuse still-valid parts of the previous same-perspective `setting.md` as a baseline reference when formalizing a fresh `idea_N` after controller-level idea modification.

#### Build `# Formalized Setting`

- Translate `## Setting` in `idea.md` into `# Formalized Setting`.
- Split `# Formalized Setting` into:
  - `Basic setup`
  - `Technical assumptions`
- Place the setting dimensions from `idea.md` into the appropriate part of the formalized setting, including context, model, data, algorithm, regime, and any other branch-specific constructions needed later in the goal.
- Rewrite the setting in mathematical notation and precise definitions, defining all objects, notation, operators, parameters, regimes, losses, target quantities, and other constructions that the goal will later use.
- Formalize one coherent theorem contract from the approved idea. Do not turn broad parent labels, examples, provenance notes, or sibling artifacts into theorem-facing disjunctions of models, data regimes, algorithms, probability modes, target modes, or assumption packages unless `idea.md` explicitly requires a union, comparison, or conditional multi-case theorem.
- Assign every item in `Technical assumptions` a stable ASCII assumption id of the form `assump:<slug>` and a short descriptive name, for example `assump:smoothness` (Smoothness). The id is a downstream citation target, not a full LaTeX environment.
- Every theorem-critical technical assumption must be primitive/checkable and must preserve the support class from `idea.md`: standard/literature-derived assumptions stay tied to the parent literature or standard theorem regime, and novel assumptions may appear only if `idea.md` already records several concrete branch-specific verification examples. Do not introduce a new unsupported theorem-critical assumption during formalization.
- Distinguish primitive assumptions from derived properties. If a needed property should follow from primitive assumptions, formalize it as a proof obligation, bridge target, conditional branch, or weaker target rather than as a theorem-facing assumption.
- If `idea.md` introduces an upstream primitive condition intended to derive a needed bound, envelope, correlation, event, stability quantity, or invariant, formalize the upstream primitive condition as the theorem-facing assumption and make the derived control a named proof obligation, bridge target, or intermediate quantity to derive. Do not promote the derived control to an `assump:<slug>` merely because it is convenient for proof work.
- Formalize primitive sources as `assump:<slug>` items. Formalize consequences of those sources as bridge targets, intermediate quantities, or proof obligations unless each consequence is independently primitive and checkable.
- After a failure-driven idea revision, preserve the prior theorem mode, scope, conclusion, and inherited baseline invariance obligations when the approved idea records a target-preserving repair through a new supported primitive mechanism source. If the approved idea instead weakens the guarantee, changes theorem mode, changes theorem scope, replaces a nontrivial success criterion by a conservative one, or replaces an inherited baseline/recovery conclusion by a weaker surrogate, formalize that as a target-changing repair explicitly rather than treating it as the same theorem contract.
- Formalize primitive assumptions in the weakest natural control mode from `idea.md` or the nearest valid prior formalization. Do not strengthen norm, metric, probability, locality, uniformity, independence, smoothness, conditioning, or horizon mode merely for proof convenience. If a stronger-mode control is needed, state it as a bridge target, intermediate quantity, or proof obligation with explicit losses.
- When `idea.md` says a property should persist, be preserved, remain controlled, stay in a basin, maintain support, or satisfy an invariant, do not formalize that property as exact all-time equality, exact zero leakage, exact membership, or a hard all-time constraint unless `idea.md` explicitly requires exact invariance and the algorithm contains an exact-preserving mechanism. By default, formalize it as a derived bound, leakage or stability radius, bridge target, conditional target, or weaker target with explicit losses.
- Preserve the approved idea's assumption-form generality. Do not convert an upper or lower bound into an exact value, an inequality into an equality, a broad class into a subclass, or an optional or degenerate case into an exclusion unless `idea.md` explicitly and validly requires that narrowing.
- Preserve unaffected theorem population and assumption generality from the approved idea. Do not replace broad upper-bound, class, or subobject assumptions by exact, fixed-support, coordinate, or otherwise narrower assumptions unless `idea.md` explicitly ties that narrowing to the failure being repaired.
- If the approved idea needs a positive or nondegenerate component under a broader assumption, define the active parameter or active subobject and state primitive conditions on that active part rather than narrowing the whole theorem scope.
- For any new or modified theorem-critical assumption, preserve the admissibility support recorded in `idea.md`. Acceptable support is a cited paper that assumes, uses, or implies it; a standard theorem-regime fact with a short derivation path; or concrete example regimes where the assumption can be checked directly. When a supported constructive mechanism or primitive source can verify a needed property, formalize that mechanism or source as the theorem-facing assumption and keep the derived property as a bridge target, intermediate quantity, or proof obligation. If formalization needs a theorem-critical assumption without recorded support, route back to idea generation instead of adding it silently.
- During drafting, check whether the setting still contains vague or informal phrases; if so, replace them with explicit mathematical objects, conditions, exclusions, or assumptions.

#### Build `# Formalized Goal`

- Translate `## Goal` in `idea.md` into `# Formalized Goal`.
- Use `Theorem type` in `idea.md` to write a theorem-ready `Goal statement` using only objects and notation already defined in `# Formalized Setting`, making explicit the quantified objects, regime or parameter conditions, guarantee mode or claim type, and dependence, comparison, or target metric structure required by that theorem type.
- `Goal statement` may use either of these forms:
  - `exact-goal mode`: an exact theorem-ready claim when the final statement is already known
  - `target-spec mode`: a theorem-ready target specification when the final rate, constants, or exact dependence are not yet known
- In `target-spec mode`, make explicit the target quantity, claim type or relation, active regime or scope, and success criterion for what counts as a satisfactory theorem; do not guess unsupported exact rates, constants, convergence modes, or sharper dependence.
- In `target-spec mode`, do not silently narrow the approved idea's source-relevant scope, regime, theorem type, success criterion, or parameter dependence. If a narrower target is needed but was not already marked in `idea.md` source-alignment or progress-type metadata, route back to idea generation instead of formalizing the new weakening.
- Preserve the intended theorem target from the approved idea and keep it conservative: do not commit to stronger claims than the approved idea already supports.

### Step 3: Formalization self-check and patch

Audit the draft before finalizing it, then patch any issue you find.

#### Formalization self-check rules

- verify idea alignment: the formalized setting and goal must match the approved `idea.md` rather than a nearby variant
- verify definition and statement coherence: every symbol, operator, parameter, and target quantity used in the goal or assumptions must be defined before use, and the formalized goal must refer only to defined objects and stated assumptions
- verify assumption and condition completeness: all nontrivial assumptions, regime conditions, boundary exclusions, asymptotic conditions, quantifiers, and parameter dependencies needed to state or interpret the target must be explicit rather than hidden in prose, and every technical assumption must have a stable `assump:<slug>` id
- verify notation consistency: symbols must keep one meaning across `Basic setup`, `Technical assumptions`, and `Goal statement`
- verify scope honesty: do not silently strengthen assumptions, silently narrow the regime, or claim a broader result than the approved idea supports
- verify source-direction metadata preservation: when `idea.md` records `Source alignment`, `Progress type`, or `Materiality`, `setting.md` preserves that metadata in `# Note / Rigor`; target-spec mode does not introduce a new unmarked weakening
- verify theorem-contract coherence: `setting.md` contains one coherent theorem-facing contract; if it contains multiple models, data regimes, algorithms, probability modes, target variants, or assumption packages, patch to the primary approved-idea choice unless `idea.md` explicitly requires a union, comparison, or conditional multi-case theorem
- verify lineage alignment: the formalized setting and goal stay consistent with the `Parent foundation papers` and `Transfer map` recorded in `idea.md`, unless the approved idea already says the branch is deliberately switching parents
- verify assumption-support preservation: every theorem-critical technical assumption in `setting.md` is primitive/checkable, has a support class inherited from `idea.md`, preserves standard/literature-derived source ties or novel verification examples, and does not add unsupported or conclusion-assuming assumptions
- verify assumption-form preservation: the formalized assumptions keep the approved idea's inequality/equality form, bound/exact-value form, broad/subclass scope, and optional or degenerate cases unless the approved idea explicitly requires narrowing
- verify control-mode preservation: no primitive assumption was silently strengthened by changing norm, metric, probability, locality, uniformity, independence, smoothness, conditioning, or horizon mode
- verify repair minimality: the formalization did not unnecessarily narrow the approved theorem population, and any exact, fixed-support, coordinate, or subclass restriction is explicitly tied to the approved repair
- verify repair-target discipline: after failure-driven idea revision, the formalized goal preserves the prior theorem target when the approved repair is target-preserving; any weakened guarantee, changed theorem mode, changed theorem scope, or conservative replacement of a nontrivial success criterion is explicit in `Goal statement` and supported by the approved `idea.md`
- verify no unrelated drift: after failure-driven idea revision, unchanged assumptions, model or data characterizations, comparator scope, defect quantities, norm mode, probability mode, independence mode, locality mode, admissible dependencies, and theorem-target shape are preserved from the nearest valid prior formalization unless the current `idea.md` explicitly changes them or the recorded failure implicates them
- verify primitive-source discipline: if a technical assumption contains several derived-looking equations, keep only the primitive/checkable source unless each equation is independently primitive
- verify derived-property discipline: a theorem-critical property that is expected to follow from primitive assumptions is stated as a proof obligation, bridge target, conditional branch, or weakened target unless the approved idea explicitly and validly supports making it primitive
- verify derived-goal control mode: no derived target property was strengthened from qualitative control, persistence, stability, basin maintenance, support control, or invariant maintenance into exact equality, exact zero leakage, exact membership, or an all-time hard constraint unless the approved idea explicitly requires exact invariance and an exact-preserving mechanism supports it
- verify assumption-evidence discipline: every new or modified theorem-critical assumption preserves literature support, standard-fact support, or concrete verification examples from `idea.md`; derived-needed properties remain proof obligations unless independently supported as primitive/checkable assumptions; and derived-needed properties are not assumed directly when a supported constructive mechanism or primitive source can verify them
- verify theorem-target shape: the `Goal statement` must be either an exact theorem-ready claim or a theorem-ready target specification rather than only an informal research objective; in `target-spec mode`, it must still identify the target quantity, claim type or relation, active scope or regime, and success criterion, and its claim shape must match the selected `Theorem type`
- verify rerun binding: on a formalization-checkpoint rerun, the revised draft must address the checkpoint feedback, preserve previously valid parts of the current `setting.md` unless the feedback requires changing them, and must not introduce new drift from the current approved `idea.md`
- verify branch binding: if previous same-perspective failed artifacts were reused as references, their notation, assumptions, or theorem shape still match the current `idea.md` and were not inherited mechanically
- verify sibling consistency: reuse earlier same-perspective notation or setup only when the semantics truly match the current branch
- verify literature calibration: use `LITERATURE_SURVEY.md` to calibrate standard notation, standard assumptions, and plausible theorem shape, but do not let the literature replace the approved branch-local idea

Patch the draft until the output is self-consistent and theorem-ready.

Patching rules:

- On a formalization-checkpoint rerun for the current approved `idea_N`, patch the criticized or incomplete parts by default; do a full rewrite only if the draft is globally misaligned or structurally broken.
- If the current branch is a fresh `idea_N` created after `IDEA_FAIL` or exhausted proof/sketch attempts, keep using `idea_{N-1}/setting.md` only as a baseline reference while patching the current branch draft; preserve still-valid parts and rewrite the modified or invalidated parts rather than inheriting the old idea mechanically.

### Step 4: Finalize

Finalize `perspective_M/idea_N/setting.md` only when:

- all objects used in the goal are defined
- all nontrivial assumptions needed to interpret the goal are written explicitly with stable ASCII assumption ids
- the formalized setting and goal still match the approved idea
- the artifact is usable by `/proof-sketch` and downstream proof stages without redefining the setting or guessing missing assumptions

## Formalization rules

- formalize the approved idea, not a more convenient neighboring idea
- use the lineage recorded in `idea.md` only as an alignment guard; do not let it silently strengthen the formalized assumptions or theorem scope
- preserve the assumption-support provenance recorded in `idea.md`; if a needed theorem-critical assumption is not standard/literature-derived and is not already novel example-verified in `idea.md`, route back to idea generation instead of adding it silently
- do not convert a derived property into a theorem-facing assumption merely to make proof work easier; prefer primitive assumptions that imply it or an honest conditional or weaker target
- when formalizing a repair after proof failure, prefer an approved target-preserving primitive source over an honest conditional or weaker target; use a conditional or weaker target only when the approved `idea.md` deliberately makes that target-changing choice
- when a derived control is needed for the proof, expose the upstream primitive source in `Technical assumptions` and record the derived control as a proof obligation, bridge target, or intermediate quantity unless the approved idea explicitly and validly treats that control as the natural primitive object
- initial-time exact conditions may remain exact at time zero, but propagated versions of those conditions must be formalized as derived bounds, leakage or stability radii, bridge targets, conditional targets, or weaker targets unless exact invariance is explicitly required by `idea.md` and supported by an exact-preserving mechanism
- prefer mathematical definitions and theorem-ready statements over informal narrative
- separate baseline setup from extra technical assumptions
- give every technical assumption a stable ASCII id of the form `assump:<slug>` so proof stages can cite the same assumption without renaming it
- define notation before it appears in the formalized goal
- if an informal phrase in `idea.md` hides a mathematical choice, expose that choice explicitly in the formalization
- if the approved idea leaves the final theorem shape partly open, formalize a theorem-ready target specification rather than guessing an unjustified sharper statement
- on a formalization-checkpoint rerun for the current approved `idea_N`, use the current `setting.md` only as a working baseline; preserve already-valid formalization choices unless the checkpoint feedback or the current `idea.md` requires changing them
- if the current branch follows controller-level idea modification after `IDEA_FAIL` or exhausted proof/sketch attempts, use the nearest previous same-perspective `setting.md` as the patch baseline for unchanged components while keeping the current `idea.md` as the sole binding contract for the revised setting and goal
- use earlier same-perspective artifacts only as templates or negative signals; they are references, not authority

## Writing Rules for `setting.md`

- `setting.md` must follow the shared template headings exactly: `# Formalized Setting`, `# Formalized Goal`, and `# Note`; preserve the template's section labels and write content under them rather than inventing alternate subsection names
- `# Formalized Setting` must contain exactly two parts: `Basic setup` and `Technical assumptions`
- `Basic setup` should define the core mathematical objects, notation, and constructions of the current branch, including the model, data, algorithm, regime, and any quantities used later in the goal
- `Technical assumptions` should contain only the nontrivial assumptions, regularity conditions, exclusions, and parameter conditions needed to state or later prove the target theorem; every item must start with a stable ASCII id of the form `assump:<slug>` and a short name, and must not require full LaTeX syntax
- `# Formalized Goal` should contain exactly one `Goal statement` item for the current theorem target, using only notation introduced in `# Formalized Setting`; that item may span multiple lines or equations, but it should remain one goal entry rather than multiple competing targets
- `Goal statement` should either state the exact target conservatively or, when the final theorem shape is not yet known, state a theorem-ready target specification that makes the target quantity, claim type or relation, scope or regime, and success criterion explicit without guessing unsupported rates, constants, or dependence
- `# Note` should remain short and contain only the rigor/alignment note for the formalization, including preserved `Source alignment`, `Progress type`, and `Materiality` metadata from `idea.md` when present, plus a compact assumption-support summary that maps each theorem-critical `assump:<slug>` id to either its standard/literature source or its recorded novel verification examples
- do not place controller-facing statuses, review outcomes, fail reasons, or other workflow metadata in `setting.md`
- do not add new top-level sections beyond the shared template headings

## References

- Template: [../_shared/templates/setting.md](../_shared/templates/setting.md)
- Contracts: [../_shared/checklists/artifact-contracts.md](../_shared/checklists/artifact-contracts.md)
