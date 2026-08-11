---
name: subagent-idea-generator
description: Generate one branch-local idea under one approved perspective, avoid duplicates, consume proof-failure diagnostics, preserve unaffected structure during minimal failure repair, and write perspective_M/idea_N/idea.md. Use when Codex needs the branch-local idea-generation step for a specific perspective.
---

# Subagent Idea Generator

Use this skill to generate one branch-local idea under one approved parent perspective.

This is the internal idea-generation skill:

- write `perspective_M/idea_N/idea.md`
- keep the assigned parent perspective fixed
- instantiate one branch-local `(setting, goal)` candidate under that perspective
- do not modify controller-owned sequencing, tracker-row ownership, or controlled vocabularies

The goal of this skill is to make one idea concrete enough that `idea-formalizer` can formalize it without inventing the core research choice. The parent perspective is the normalized branch anchor; the idea is one concrete branch-local `(setting, goal)` candidate under that anchor.

Use [../_shared/templates/idea.md](../_shared/templates/idea.md) as the binding artifact structure.

## Responsibilities

- Generate one branch-local idea under one assigned perspective.
- Keep the parent perspective fixed while adding only branch-local refinements.
- Make the idea concrete enough for the controller idea checkpoint and direct handoff to `idea-formalizer`.
- Avoid duplicates within the same perspective branch.
- Consume sketch-review, global-proof-review, and final-review failure diagnostics so new ideas do not repeat known theorem-level obstructions.

## Required Inputs

- `$ARGUMENT`
- the assigned perspective from `Perspective_Selection.md`
- `LITERATURE_SURVEY.md`
- `theory_tracker.md`

## Optional Inputs

- `workflow_feedback.md`
- current `perspective_M/idea_N/idea.md` draft when rerunning the idea checkpoint for the same `idea_N`
- earlier same-perspective `idea_K/idea.md` artifacts for all available prior `K < N`
- earlier same-perspective `idea_K/proof_sketch_review.md` artifacts for available prior branches that ended at sketch review
- earlier same-perspective `idea_K/global_proof_review.md` artifacts for available prior branches that ended at global proof review
- earlier same-perspective `idea_K/proof_review.md` artifacts for all available prior `K < N`
- triggering `proof_sketch_review.md` when routed after sketch-review `IDEA_FAIL`
- triggering `global_proof_review.md` when routed after global-proof-review `IDEA_FAIL`
- triggering aggregated `proof_review.md` when routed after final aggregate `IDEA_FAIL`

## Required Outputs

- On success, `perspective_M/idea_N/idea.md`
- If no candidate survives the hard gates, return `NO_VIABLE_IDEA` with compact gate-failure reasons and do not finalize or patch `idea.md`

## Workflow

### Step 1: Load the current branch context

- Read the effective `$ARGUMENT` and apply the Source-Direction Fidelity Contract from `../_shared/checklists/artifact-contracts.md`. If `$ARGUMENT` includes or reflects a `RESEARCH_BRIEF.md` or equivalent brief, do not assume fixed headings; scan the available prose for explicit or clearly implied constraints on the problem object, required scope, target quantity, theorem type, success or progress standard, acceptable partial progress, forbidden shortcuts, out-of-scope directions, parameter dependence, and evaluation priorities. Treat absent fields as unspecified rather than inventing them.
- Read the exact assigned perspective record from `Perspective_Selection.md`, including its normalized tuple and target gap, and treat that assigned perspective as the binding branch anchor.
- Read the relevant parts of `LITERATURE_SURVEY.md` for the assigned gap, including nearby theory results, missing cases, standard theorem shapes, and supporting references.
- Read `theory_tracker.md` to identify prior same-perspective idea attempts, duplicate patterns, accepted branches, and failure signals, including prior `Reasons` entries, plus any real `Setting Signature` and `Goal Signature` matches or near-matches that should be shortlisted for deeper inspection. Treat rows with `Reasons` beginning `NO_VIABLE_IDEA:` and `N/A` setting/goal/signature fields as consumed-slot failure memory, not as duplicate-signature rows.
- If `perspective_M/idea_N/idea.md` already exists, read it as the latest draft for this branch; this is a same-idea checkpoint rerun rather than a new idea variant.
- If `workflow_feedback.md` contains pending rerun feedback for the current branch's `Idea checkpoint`, treat that feedback as binding guidance for rerunning `/subagent-idea-generator` on the current `idea_N`.
- By default, read earlier same-perspective `idea_K/idea.md`, `idea_K/proof_sketch_review.md` when present, `idea_K/global_proof_review.md` when present, and `idea_K/proof_review.md` when present for all available prior `K < N`; treat those artifacts as the source-of-truth branch memory for same-perspective duplicate detection and failure avoidance, with the immediately previous same-perspective branch as the first refinement reference when useful.
- When the controller provides a triggering failure artifact, treat it as the strongest current failure signal. Read the relevant diagnostic sections before generating candidates:
  - from `proof_sketch_review.md`: `Required Repair Bundle`, `Gate Evidence Table`, `Early Obstruction Audit`, `Blocking Issues`, and `Review Rationale`;
  - from `global_proof_review.md`: `Required Repair Bundle`, `Gate Evidence Table`, `Early Idea-Failure Screen`, `Blocking Issues`, and `Review Rationale`;
  - from aggregated `proof_review.md`: `Critical Issues`, `Failure Type`, `Suggested Next Action`, and `Retry Mode`.
- Build a compact internal failure signature from the triggering and prior review artifacts. Include the failed needed property, theorem-facing mechanism source not supported by the setting, implicated setting component, implicated primitive assumption or missing primitive source, implicated goal or mode component, exposed dependence or scope defect, and the reason same-setting sketch repair was judged implausible when available. Do not write this signature as a new artifact or new `idea.md` section.
- When a triggering or prior review includes a `Gate Evidence Table`, use it as row-level failure evidence. Include the failed obligation or generated condition, mechanism source, source-to-claim mismatch, concrete control relation, defect or accumulation behavior, noncircular producer path, generated-output producer or consumer failure, entry or boundary stress result, locality verdict, and smallest retry target when present.
- When a triggering or prior review reports a baseline invariance failure, include the inherited recovery, reduction, specialization, zero-defect, exact-limit, exact/noiseless, or baseline-case conclusion, the failed specialization or entry case, the missing or inactive mechanism source, and whether the reviewer treated weakening that conclusion as a theorem-contract change.
- When a failure reports the Step-Locality And Theorem-Contract Gate, include any non-`step-local` classification, whether it was a `sketch/interface defect` or an `idea/theorem-contract defect`, the missing mechanism source or theorem-facing mechanism source not supported by the setting, and whether the reviewer allowed same-setting sketch repair.
- When a failure reports the Noncircular Closure Gate, include the target closure or generated condition, the alleged producer or mechanism source, the missing independent producer or exit/defect/control relation, and whether the closure was circular because it assumed the target property, final theorem consequence, generated condition, boundedness, stability, support, basin membership, recurrence, or invariant it needed to prove.
- When a failure reports the Entry-State / Activation Trace Gate, include the allowed entry, initial, stationary, null, degenerate, exact/noiseless, or boundary state tested, the first-update or stationary-behavior trace, the inactive mechanism source, the theorem-facing conclusion that remained false, and whether same-setting sketch repair was allowed.
- When a failure reports source-to-claim inadequacy, include the claim class, the insufficient source type, the missing lower/sign/support/conditioning content, and whether same-setting bridge repair remained plausible.
- When prior failure identifies a missing, shallow, or scope-incompatible theorem-critical mechanism witness, preserve unaffected idea structure and repair only the implicated primitive assumption, algorithm/model/procedure component, theorem scope/mode/metric, exposed dependence, success criterion, theorem-facing mechanism source not supported by the setting, or weakening the conclusion needed to make the witness supportable. Reject candidates that merely rename the witness, restate the old mechanism source, or defer the same missing witness to proof stages.
- Use `Required Repair Bundle` as primary failure memory when present. Use tracker `Reasons` only as an index or summary; do not let a compact tracker row override a concrete repair bundle, early obstruction audit, early idea-failure screen, or final critical issue.
- Recover one or two concrete parent foundation papers for the current branch from `LITERATURE_SURVEY.md`, using earlier same-perspective artifacts only as memory of previously chosen literature parents, and treat them as explicit lineage anchors that the current idea must either inherit or replace deliberately.
- Treat the assigned perspective as the fixed branch anchor. Literature, tracker history, and previous failed branches may guide the current idea, but they must not rewrite the perspective anchor. Extracted source-direction constraints from `$ARGUMENT` remain binding when present; the perspective anchor must not be used to discard source-critical scope, success, parameter-dependence, or forbidden-shortcut constraints.
- On same-idea reruns, preserve already-valid parts of the current `idea.md` unless the checkpoint feedback requires changing them.
- On a fresh `idea_N` after controller-level idea modification, preserve previously valid choices from earlier same-perspective `idea_K/idea.md` artifacts when they remain consistent with the current branch direction and are not implicated by the corresponding `idea_K/proof_sketch_review.md`, `idea_K/global_proof_review.md`, or `idea_K/proof_review.md`; rewrite the modified or invalidated parts instead, giving the immediately previous branch the strongest weight by default.
- When prior failure exposes a needed property, prefer adding or modifying primitive, checkable assumptions that can derive that property over assuming the property directly. Directly assuming the needed property is a last resort and is allowed only when it is standard or directly checkable, not equivalent to the desired conclusion, and explicitly justified in the idea notes.
- When prior failure identifies a missing bound, envelope, correlation, stability quantity, event, or other derived control, first look for the weakest upstream primitive condition that implies it together with existing assumptions. Prefer adding that upstream primitive condition over exposing the derived control itself as a theorem-facing assumption. Expose the derived control directly only when it is the natural observable primitive in the setting or no simpler primitive source is available, and justify that choice in `Feasibility` or `Consistency`.
- When adding or modifying an assumption, prefer the weakest primitive source that can derive the needed properties. If an assumption mainly bundles consequences of another object or condition, replace it with that primitive source and record the consequences as proof obligations in the notes.
- When a prior failure says a theorem-critical mechanism source is inadequate for a lower, coercive, signed, support, or nondegenerate claim, do not repair by merely tightening upper bounds, budgets, local boxes, small-gain inequalities, horizons, or generic admissibility language. Either add the smallest supported primitive/checkable source with the missing lower/sign/support/conditioning content, preserve the same idea with a target-compatible bridge only when the reviewer allowed that route, or honestly change the theorem contract/procedure when the current one is unsupported.
- When a prior failure identifies unsupported accumulation behavior for a theorem-critical generated condition, recurrence, invariant, stability, boundedness, membership, convergence, or quantitative specialization, do not repair by merely renaming the closure device or tightening constants. Either add the smallest supported primitive/checkable source or procedure component that makes the defect behavior compatible with the declared scope, preserve the same idea with a target-compatible conditional, stopped, budgeted, or bridge interface only when the reviewer allowed that route, honestly change the theorem contract/procedure when the current one is unsupported, or return `NO_VIABLE_IDEA`.
- When prior artifacts, the setting, or the goal contain a theorem-facing baseline invariance obligation, preserve that obligation during target-preserving repairs. This covers recovery, reduction, specialization, zero-defect, exact-limit, exact/noiseless, and baseline-case conclusions, regardless of wording. A candidate that replaces such a conclusion with a conservative remainder, conditional/stopped/finite-scope surrogate, weaker success criterion, or only a statement that defect terms vanish is target-changing unless the triggering failure explicitly says the original baseline conclusion itself is unsupported under the current theorem contract.
- Preserve the weakest natural control mode from the approved idea or nearest valid prior branch. Do not strengthen norm, metric, probability, locality, uniformity, independence, smoothness, conditioning, or horizon mode merely for proof convenience. If a stronger-mode control is needed, make it a proof obligation with explicit losses, weaken the target, or route back to idea repair.
- When modifying an idea after failure, preserve unaffected assumption forms from the nearest valid prior branch, including inequality versus equality, upper or lower bound versus exact value, broad class versus subclass, and optional or degenerate cases. Do not shrink the theorem population merely to simplify a proof route.
- When a repair is local, state the repair delta explicitly enough that `idea-formalizer` can patch the nearest valid prior `setting.md` without recharacterizing unrelated assumptions, setting components, or goal components.
- When a triggering failure signature points to an idea-level obstruction, modify only the implicated primitive assumptions, algorithm/model/procedure components, theorem scope/mode/metric, exposed dependence, success criterion, theorem-facing mechanism source not supported by the setting, or weakening the conclusion needed to make the target honest. If the same conclusion cannot be supported without changing those components, reject candidates that merely relabel the old setting or defer the same theorem-facing mechanism source not supported by the setting to later proof stages.
- When a repair needs persistence, basin maintenance, support control, stability, or invariant maintenance, state whether the intended conclusion is exact invariance or bounded control. Prefer bounded control unless an exact-preserving mechanism is part of the setting.
- Preserve unaffected theorem population and assumption generality after failure. Do not replace broad upper-bound, class, or subobject assumptions by exact, fixed-support, coordinate, or otherwise narrower assumptions unless the failure specifically requires that narrowing and the idea notes justify it.
- If a repair needs a positive or nondegenerate component, prefer introducing an active parameter, active subobject, or conditional active case under the original broad assumption. State the primitive condition on that active part rather than globally narrowing the whole setting, unless the failure directly requires global narrowing and the idea notes justify that choice.
- For any new or modified theorem-critical assumption, record why it is admissible. Acceptable support is a cited paper that assumes, uses, or implies it; a standard theorem-regime fact with a short derivation path; or concrete example regimes where the assumption can be checked directly. Apply the same support standard to any new theorem-critical procedure, protocol, or mechanism component. When a supported constructive mechanism or primitive source can verify a needed property, prefer proposing that mechanism or source over directly assuming the derived property. Revise or reject assumptions, procedure changes, or mechanism additions that only serve proof convenience and lack such support.

### Step 2: Determine what this branch must refine

Idea generation is selective refinement rather than mandatory full specialization.

- Keep the parent perspective tuple fixed; do not change its `analysis_target`, `model_class`, `data_assumption`, `regime`, or `algorithm` labels.
- Add only branch-local details that are not already fixed tightly enough by the parent perspective.
- For each canonical perspective dimension, decide whether the inherited value is:
  - already specific enough for one analyzable idea,
  - intentionally broad and safe to keep broad for the current theorem target,
  - or too coarse for one concrete idea and therefore needs a compatible child-level refinement.
- If a dimension is too coarse, add a child-level refinement that stays within the assigned parent perspective rather than redefining it.
- A branch may inherit broad parent labels, but the branch-local idea must choose one coherent theorem contract for theorem-critical model, data, algorithm, regime, probability, target, and assumption choices. Combine alternatives into one branch only when the intended theorem is explicitly a union, comparison, or conditional multi-case theorem.

#### Dimension-refinement rules

- `analysis_target`: keep the parent analysis target fixed, but choose a concrete theorem subtype or claim shape when needed, such as which exact guarantee under that target the branch will pursue.
- `model_class`: decide whether the inherited model label is already sufficient or whether the branch needs a compatible problem/model instantiation to become analyzable.
- `data_assumption`: decide whether the inherited data label is already sufficient or whether the branch needs compatible regularity, noise, realizability, distributional, or moment assumptions.
- `regime`: decide whether the inherited regime label is already sufficient or whether the branch needs compatible protocol details such as asymptotic regime, horizon, online/offline structure, or overparameterization-related conditions.
- `algorithm`: decide whether the inherited algorithm label is already sufficient or whether the branch needs compatible subtype or protocol details such as one-pass vs multi-pass, step-size schedule, batch structure, update mechanism, or other theorem-critical implementation details.

#### Residual-context rule

- Do not move a method family or training mechanism back into residual context if it already serves as the parent perspective's `algorithm` label.
- If the assigned perspective leaves some `$ARGUMENT`-critical mechanism unspecified, and that mechanism materially changes the mathematical setting, algorithm dynamics, assumptions, or theorem target, make that mechanism explicit in the idea rather than leaving it implicit.
- Such residual context may overlap with one coarse inherited dimension or may sit outside the normalized tuple; in either case, surface it whenever omitting it would force `idea-formalizer` to guess the actual branch-local problem.
- For example, this may include where a nonstandard mechanism enters the model, data, or algorithm; what variant of that mechanism is used; what object it acts on; and any associated bias, noise, truncation, resource, or protocol details that materially change the analyzable setting.

### Step 3: Build and select one concrete branch-local idea

- Internally generate a shortlist of 2-4 materially distinct candidate `(setting, goal)` pairs under the fixed assigned perspective using the branch-local refinements identified in Step 2. Do not write this shortlist as a separate artifact.
- Ground every added choice in at least one of the following: `$ARGUMENT`, the assigned target gap, supporting references in `LITERATURE_SURVEY.md`, checkpoint `re-generate` feedback for the current `idea_N`, or prior same-perspective branch failure feedback such as `IDEA_FAIL` reasons.
- Keep only choices that materially change the concrete setting or theorem target; discard wording-only variants and superficial paraphrases.
- Combine only mutually consistent choices. Do not mix assumptions, mechanisms, or protocol details that do not fit together in one coherent branch-local setting.
- Allow some inherited dimensions to remain broad when that breadth is deliberate and the resulting branch is still concrete enough to be formalized later; do not force unnecessary specialization merely to eliminate every `general_*` label.
- Keep every candidate goal within the parent `analysis_target`; do not drift from, for example, `generalization` to `convergence`, or from `implicit_bias` to `optimization_landscape`.
- Choose one or two concrete parent foundation papers for each viable candidate and make the transfer from those parents explicit; if a candidate switches away from the most obvious earlier parent, make that switch deliberate rather than implicit.
- Classify each candidate using exactly one Source-Direction Fidelity progress type: `full`, `material_partial`, `conditional`, `obstruction`, `diagnostic`, or `non_material`. Use only source-direction constraints that were actually present or clearly implied; do not penalize a candidate for missing brief fields that were absent.
- For any candidate that weakens extracted source-direction scope, regime, theorem type, success criterion, or parameter dependence, mark the weakening as target-changing and require a short reason why the candidate is still `material_partial`, `conditional`, `obstruction`, or `diagnostic`. Reject unmarked weakenings.
- For the first branch attempt under a perspective with no triggering failure artifact or checkpoint feedback authorizing drift, rank source-faithful `full` candidates above weakened candidates whenever any such candidate survives the hard gates. Do not select a weakened candidate merely because it is easier or more provable.
- If no source-faithful `full` candidate survives on a first branch attempt, return `NO_VIABLE_IDEA` unless `$ARGUMENT`, the assigned gap, checkpoint feedback, or the controller explicitly permits partial, conditional, obstruction, or diagnostic progress. When such a weaker first attempt is permitted, still mark the target-changing weakening and state the remaining source gap.
- For open-gap, lower-bound, upper-bound, impossibility, or matching-rate tasks, check whether a partial candidate attacks the unresolved source-relevant regime or only an already-dominated, baseline, boundary, or easy regime. Already-dominated or easy-regime candidates may survive only as `diagnostic` or `obstruction`, not as material progress toward solving the open problem.
- Reject `non_material` candidates unless the user explicitly requested a diagnostic exercise of that non-material kind.
- Apply an assumption-and-mechanism-support gate before comparing candidates. For every theorem-critical assumption, procedure, protocol, or mechanism component, classify its support as:
  - `standard/literature-derived`: directly inherited from, adapted from, or clearly implied by relevant literature, standard theorem regimes, or common assumptions for the selected gap; prefer this class whenever it can support the intended theorem.
  - `novel example-verified`: not standard, but the candidate names several concrete, domain-appropriate example regimes for the current branch where the component can be checked directly; this is acceptable but lower priority than standard/literature-derived support.
  - `unsupported`: neither standard/literature-derived nor novel example-verified; reject the candidate.
- If a candidate needs a nontrivial property for its proof route, first try a target-preserving repair: make that property derivable from the smallest supported primitive/checkable mechanism source while preserving the prior theorem mode, scope, and conclusion when those were not themselves implicated by the failure. Prefer this over listing the needed property itself as a theorem-critical assumption only when the added source is well supported and does not introduce an unsupported new procedure, protocol, or mechanism.
- Treat weakening a guarantee, changing theorem mode, changing theorem scope, or replacing a nontrivial success criterion by a conservative one as a target-changing repair. Use such a repair when the failure record shows that no target-preserving repair is plausible under supported primitive assumptions, when every target-preserving repair would require an unsupported new procedure, protocol, or mechanism, or when the controller explicitly wants a weaker target. For revised ideas after valid `IDEA_FAIL`, retry exhaustion, or checkpoint `re-generate` feedback, choose only the smallest target-changing repair justified by that failure evidence or feedback.
- Treat weakening, omitting, or replacing an inherited baseline invariance obligation as target-changing. Do not present such a change as preserving the prior idea merely because the revised theorem still has a valid conservative bound, finite-scope statement, or vanishing-defect clause.
- Reject a candidate if any theorem-critical assumption, procedure, protocol, or mechanism component is unsupported, too weak to support the intended proof route, too idealized for the selected gap, vacuous, or so close to the desired conclusion that it effectively assumes the theorem.
- Reject a candidate if its setting, assumptions, procedure, goal mode, scope, or exposed dependence leaves a triggering or prior failure signature unchanged. A candidate is unchanged for this gate when the same failed needed property would still require the same theorem-facing mechanism source not supported by the setting, hidden generated condition, unsupported mode upgrade, or theorem-scope change.
- Reject a candidate that leaves a prior non-`step-local` obligation unchanged, including candidates that keep the same missing source while relabeling it as a future proof step, local interface, closure device, or admissibility condition.
- Reject a candidate that leaves a prior noncircular-closure failure unchanged, including candidates that keep the same circular source, omit an independent producer, omit the exit/defect/control relation, or defer the same closure to proof stages.
- Reject a candidate that leaves a prior entry-state trace failure unchanged, including candidates that keep the same inactive mechanism for an allowed entry, initial, stationary, null, degenerate, exact/noiseless, or boundary state, omit the first-update or stationary-behavior repair, relabel the same inactive mechanism as a future proof step, or defer the same entry-state obstruction to proof stages.
- Reject a candidate that leaves a prior source-to-claim inadequacy unchanged, including candidates that replace a missing lower/sign/support/conditioning source with only smaller constants, narrower budgets, local boxes, or generic admissibility conditions.
- Reject a candidate that leaves a prior scope-accumulation incompatibility unchanged, including candidates that keep the same unsupported defect behavior while only renaming the closure mechanism, changing constants, or deferring the closure to proof stages.
- Reject a candidate that answers a prior idea-level obstruction by directly assuming the failed derived property, unless that property is genuinely primitive/checkable in the new setting, standard or literature-supported for the selected gap, not equivalent to the desired conclusion, and explicitly justified in `Feasibility` or `Consistency`.
- Reject a candidate that answers a prior idea-level obstruction by adding a theorem-critical procedure, protocol, or mechanism component unless that component is standard/literature-derived for the selected method family or novel example-verified with concrete branch-specific verification examples. If support is insufficient, either choose a supported candidate that honestly changes theorem mode, scope, exposed dependence, success criterion, or makes a supported target-changing repair by weakening the conclusion, or return `NO_VIABLE_IDEA`.
- Apply hard rejection gates before comparing candidates. Reject any candidate with perspective tuple drift, a vague or non-formalizable theorem target, duplicate or near-duplicate same-perspective content, an unresolved prior failure reason, an incoherent model/data/algorithm/regime combination, no concrete lineage to parent foundation papers, or unsupported theorem-critical assumptions, procedures, protocols, or mechanisms.
- Apply the Source-Direction Fidelity gate before comparing candidates. Reject any candidate that contradicts extracted source-direction constraints, silently omits a source-critical constraint, presents a partial or conditional result as full, or fails to explain materiality for a weakened target.
- If every candidate is rejected, stop before drafting or editing `idea.md`, return `NO_VIABLE_IDEA`, and list only compact reasons by failed gate category. Do not manufacture a weaker unsupported candidate, broaden the assigned perspective, or hide a failed support gate in prose.
- Compare the remaining candidates using this qualitative rubric:
  - significance: addresses the assigned literature gap in a meaningful way
  - source fidelity/materiality: preserves extracted source-direction constraints or marks and justifies any weakening
  - feasibility/proof route: has plausible proof routes or useful technical anchors from the literature
  - novelty beyond known baselines: is not merely a trivial restatement of known results
  - assumption and mechanism discipline: uses primitive/checkable assumptions and mechanisms, avoids theorem-facing generated invariants, prefers standard/literature-derived components, and allows novel components only when several concrete current-branch examples verify them directly
  - formalization readiness: is concrete enough that `idea-formalizer` need not invent the core research choice
  - proof-risk control: avoids an obviously overstrong or fragile target when a useful weaker target still addresses the gap
  - branch value/failure avoidance: avoids repeating same-perspective failures without reason
- Select the candidate that wins by a defensible tradeoff across the rubric, not merely the easiest candidate. On a first branch attempt, prefer a surviving source-faithful `full` candidate over a weakened candidate unless the source direction or checkpoint feedback permits the weaker contribution type. If multiple candidates resolve the triggering failure, prefer the one with stronger local support and fewer unsupported new commitments. If two candidates are close after a prior proof failure, prefer a target-preserving repair with a supported primitive mechanism source over a target-changing repair, unless the original target is itself the obstruction or the target-preserving repair depends on an unsupported new procedure, protocol, or mechanism.

### Step 4: Apply the validity and anti-duplication tests

Before drafting `idea.md`, verify that the candidate is a real branch-local idea rather than just the parent perspective rewritten in prose.

- Qualified-idea test: the candidate must fix one concrete setting and one concrete theorem target clearly enough that `idea-formalizer` can write `setting.md` without inventing the core research choice.
- Perspective-binding test: the parent perspective tuple must stay unchanged; the new idea may refine it, but must not replace it.
- Theorem-target test: the goal must specify one concrete theorem type or target claim shape for this branch, not only a vague research direction.
- Intentional-breadth test: if some inherited dimensions remain broad, that breadth must be deliberate and still compatible with one formalizable theorem target.
- Lineage test: the candidate must name one or two concrete parent foundation papers and make clear what assumptions or proof mechanisms are being preserved versus changed.
- Support test: each theorem-critical assumption, procedure, protocol, or mechanism component must be standard/literature-derived or novel example-verified; standard components should cite the parent literature or standard theorem regime, while novel components must name several branch-specific concrete verification examples. Reject unsupported, vacuous, conclusion-assuming, overly idealized, or proof-insufficient components.
- Duplicate test: use `theory_tracker.md` `Setting Signature` and `Goal Signature` as a fast filter, then confirm against earlier same-perspective `idea_K/idea.md` artifacts; reject the candidate if it is effectively the same as an existing same-perspective idea, meaning it has the same parent perspective, the same normalized setting components, and the same theorem target/type.
- Failure-avoidance test: inspect earlier same-perspective `proof_sketch_review.md`, `global_proof_review.md`, and `proof_review.md` artifacts, not just tracker summaries; if earlier fail reasons still apply to the current candidate unchanged, refine the candidate further or reject it.
- Baseline-invariance test: when a prior branch, setting, goal, or triggering review contains a baseline invariance obligation, verify that the candidate preserves the same theorem-facing conclusion unless the repair is deliberately target-changing and justified by the failure evidence.
- Repair-bundle test: when prior `Required Repair Bundle` items exist, verify that the current candidate either resolves each idea-level obligation by a primitive/checkable setting, assumption, procedure, protocol, mechanism, or goal change, or deliberately avoids the failed theorem contract. Do not pass a candidate that leaves any material idea-level repair obligation unaddressed.
- Source-direction test: when source-direction constraints were extracted, verify that the candidate records source alignment, a valid progress type, and materiality; reject contradictions, unmarked weakenings, `non_material` candidates, and partial results that do not say whether they attack the unresolved source-relevant regime.

### Step 5: Draft `idea.md`

Write the current branch's `perspective_M/idea_N/idea.md` using the shared template.

- `## Perspective Anchor` must record the assigned parent tuple exactly as the fixed branch anchor.
- `## Added Dimensions` must list only the branch-local refinements or child-level specializations that distinguish this idea from the parent perspective and sibling same-perspective ideas.
- `## Setting` must describe the concrete branch-local setting in a way that exposes the actual analyzable problem rather than a vague direction.
- `## Goal` must state exactly one theorem type and one informal statement for the current branch.
- `## Notes` must stay short, but it must include concrete `Parent foundation papers` and a one-line `Transfer map`, followed by brief source alignment, progress type, materiality, significance, feasibility, and consistency comments that explain why the selected idea won over nearby alternatives. Use existing fields only: in `Transfer map`, state what assumptions, procedures, protocols, or mechanisms are preserved or changed from parent literature; in `Source alignment`, state which extracted source-direction constraints are preserved or explicitly absent; in `Progress type`, use one of `full`, `material_partial`, `conditional`, `obstruction`, or `diagnostic`; in `Materiality`, state why the branch advances the selected gap or why it is diagnostic; in `Feasibility`, state whether theorem-critical assumptions, procedures, protocols, or mechanisms are standard/literature-derived or novel example-verified; in `Feasibility` or `Consistency`, name several branch-specific concrete verification examples for every novel example-verified assumption or mechanism; in `Consistency`, state why the assumptions and any new procedure or mechanism match the selected model/data/algorithm/regime and are not vacuous. Do not include the full internal candidate shortlist, a scoring table, or an assumption audit table in `idea.md` unless the user explicitly asks for checkpoint details.

### Step 6: Idea self-check and patch

Audit the draft before finalizing it, then patch any issue you find.

Self-check rules:

- verify perspective alignment: the parent perspective tuple in `Perspective Anchor` is unchanged from the assigned perspective
- verify refinement adequacy: all theorem-critical details that are not fixed tightly enough by the parent perspective are made explicit, while noncritical details are not overspecified without reason
- verify setting coherence: the chosen context, model, data, algorithm, and regime fit together into one consistent analyzable branch-local setting
- verify theorem-target concreteness: the goal identifies one concrete theorem target under the parent analysis target rather than only a broad aspiration
- verify intentional breadth: any inherited broad field kept broad is kept broad deliberately and does not leave the core research choice ambiguous
- verify theorem-contract coherence: theorem-critical setting or goal clauses do not combine alternative contracts with "or", "one of", or parallel regimes unless the goal explicitly states a union, comparison, or conditional multi-case theorem; otherwise patch to the primary branch-local choice
- verify lineage concreteness: `Parent foundation papers` names one or two concrete paper titles or bibliographic identifiers; generic placeholders such as "related papers" or "approximation arguments" are not enough
- verify transfer-map completeness: `Transfer map` states, in one short line, what assumptions, procedures, protocols, or mechanisms are preserved or changed, and what framework or lemma pattern is being reused
- verify assumption and mechanism support: every theorem-critical assumption, procedure, protocol, or mechanism component is standard/literature-derived or novel example-verified, novel components name several branch-specific concrete verification examples, standard components are tied to parent literature or a standard theorem regime, and no assumption or mechanism is unsupported, vacuous, conclusion-assuming, overly idealized, or too weak for the intended proof route
- verify primitive-source discipline: if a theorem-critical assumption mainly bundles consequences of another object or condition, patch it to the primitive source and record the consequences as proof obligations in `Feasibility` or `Consistency`
- verify assumption-form preservation: after failure repair, unchanged components keep the prior branch's generality, including inequality/equality form, bound/exact-value form, broad/subclass scope, and optional or degenerate cases; any narrowing must be directly tied to the failure and justified in the notes
- verify control-mode preservation: no primitive assumption was silently strengthened by changing norm, metric, probability, locality, uniformity, independence, smoothness, conditioning, or horizon mode
- verify repair minimality: the repair did not unnecessarily narrow the prior theorem population, and any exact, fixed-support, coordinate, or subclass restriction is directly tied to the failure and justified in the notes
- verify repair-target discipline: after a failure, the draft distinguishes target-preserving repairs from target-changing repairs; any weakened guarantee, changed theorem mode, changed theorem scope, or conservative replacement of a nontrivial success criterion is explicitly justified as target-changing rather than presented as the minimal repair of the previous theorem
- verify baseline-invariance preservation: after failure repair, any inherited recovery, reduction, specialization, zero-defect, exact-limit, exact/noiseless, or baseline-case conclusion is preserved unless the approved repair deliberately marks its weakening or replacement as target-changing
- verify assumption-evidence discipline: every new or modified theorem-critical assumption, procedure, protocol, or mechanism has literature support, standard-fact support, or concrete verification examples; derived-needed properties remain proof obligations unless independently supported as primitive/checkable assumptions; and derived-needed properties are not assumed directly when a supported constructive mechanism or primitive source can verify them
- verify failure-diagnostic response: every triggering or prior idea-level failure signature has been resolved, avoided by an honest goal or setting change, or used to reject the candidate; no candidate repeats the same theorem-facing mechanism source not supported by the setting, hidden generated condition, inactive entry-state mechanism, unsupported mode upgrade, or theorem-scope mismatch
- verify source-direction fidelity: when source-direction constraints were extracted, `## Notes` contains source alignment, progress type, and materiality; any weakening is marked as target-changing; and no `non_material` candidate is finalized
- verify deduplication: the draft is not a same-perspective duplicate or paraphrase under the `Setting Signature` and `Goal Signature` fast filter in `theory_tracker.md`, and it remains non-duplicate after checking the corresponding earlier same-perspective `idea_K/idea.md` artifacts
- verify literature-gap relevance: the draft still addresses the assigned literature gap rather than drifting to a nearby but different problem
- verify feasibility-vs-novelty balance: the idea is not so safe that it becomes trivial, and not so ambitious that the current literature gives no plausible foothold
- verify rerun binding: on a same-idea checkpoint rerun, the revised draft addresses the checkpoint feedback while preserving already-valid parts unless the feedback requires changing them
- verify branch-modification binding: on a fresh `idea_N` after `IDEA_FAIL` or exhausted proof/sketch attempts, earlier same-perspective artifacts were reused only as references and the new branch is meaningfully updated where the fail reasons require it

Patch rules:

- On a same-idea checkpoint rerun, patch the criticized or incomplete parts by default; do a full rewrite only if the draft is globally misaligned or structurally weak.
- On a fresh `idea_N` after controller-level idea modification, use earlier same-perspective artifacts only as baseline references; preserve still-valid parts and rewrite the modified or invalidated parts rather than inheriting an older idea mechanically.
- On a fresh `idea_N` after failure, modify only the implicated primitive assumptions, setting components, procedure/protocol components, or goal components needed to make the failure property derivable or the target honest. If several repairs work, first choose a target-preserving repair that adds the smallest supported upstream primitive mechanism source and leaves derived envelopes, rates, correlations, events, and invariants as proof obligations. Use a target-changing repair when preserving the theorem target would require unsupported assumptions, unsupported procedure/protocol changes, a changed model, or a theorem-facing condition equivalent to the desired conclusion.
- On a fresh `idea_N` after a reviewer `IDEA_FAIL`, use the review's `Required Repair Bundle`, `Gate Evidence Table`, early obstruction or idea-failure screen, and blocking issues to decide the repair delta. Preserve unrelated idea structure, but reject a nominal repair that keeps the failed theorem contract intact.

### Step 7: Finalize

Finalize `perspective_M/idea_N/idea.md` only when:

- the assigned perspective remains fixed and explicit
- the branch-local setting is concrete enough that `idea-formalizer` will not need to invent the core research choice
- the goal states one concrete theorem target under the parent analysis target
- any intentionally broad inherited field is broad by design rather than by omission
- the lineage to one or two concrete parent foundation papers is explicit, and the transfer map explains the branch's preserved and changed ingredients
- every theorem-critical assumption, procedure, protocol, or mechanism component is standard/literature-derived or novel example-verified, with standard components preferred and unsupported components rejected
- when source-direction constraints were extracted, the idea records source alignment, progress type, and materiality, and does not present a partial, conditional, obstruction, or diagnostic result as a full solution
- the idea is not a same-perspective duplicate
- the artifact is stable enough for the controller idea checkpoint

If any finalization condition fails, do not finalize; return to the earliest step that can repair the issue, patch the branch-local idea, and re-check before finalizing.

## Idea-generation rules

- Treat the parent perspective as the branch anchor and do not redesign it.
- Generate ideas by selective refinement, not by forcing every inherited broad dimension to become specific.
- If omitting a theorem-critical detail would force later formalization to guess the branch-local problem, specify that detail in the idea.
- If an inherited broad value is intentionally kept broad, keep it broad explicitly and make sure the theorem target remains concrete enough to formalize later.
- Keep only branch-local refinements that materially change the setting or theorem target.
- Make the branch lineage explicit by naming one or two concrete parent foundation papers and by stating a short transfer map from those parents to the current branch.
- Prefer theorem-critical assumptions, procedures, protocols, and mechanisms inherited from or adapted from parent literature, standard theorem regimes, or common assumptions for the selected gap.
- Allow novel theorem-critical assumptions, procedures, protocols, or mechanisms only when they are primitive/checkable and the branch names several concrete example regimes where they can be verified directly.
- Reject unsupported bespoke assumptions or mechanisms, theorem-facing generated invariants, components too weak for the intended proof route, and components that are vacuous, overly idealized, or nearly equivalent to the desired conclusion.
- Preserve extracted source-direction constraints when present. If the branch weakens scope, regime, theorem mode, success criterion, or parameter dependence, mark the weakening and classify the result honestly as `material_partial`, `conditional`, `obstruction`, or `diagnostic`; do not present it as `full`.
- Use `theory_tracker.md` signatures as a quick index, but ignore `N/A` signatures on `NO_VIABLE_IDEA` rows for duplicate detection. Treat earlier same-perspective `idea_K/idea.md`, `proof_sketch_review.md`, `global_proof_review.md`, and `proof_review.md` artifacts as the source of truth for duplicate and failure-avoidance judgments.
- Use previous same-perspective failures as negative signals and refinement directives, not as templates to repeat mechanically.
- Treat review `Required Repair Bundle` sections, `Gate Evidence Table` rows, early obstruction audits, early idea-failure screens, and final critical issues as concrete constraints on the next idea. A new idea must change or avoid the implicated theorem contract rather than reusing the same unsupported proof route.

## Writing Rules for `idea.md`

- `idea.md` must follow the shared template headings exactly: `# Idea`, `## Perspective Anchor`, `## Added Dimensions`, `## Setting`, `## Goal`, and `## Notes`
- `## Perspective Anchor` must contain the fixed assigned tuple rather than a rewritten or modified perspective
- `## Added Dimensions` must contain only genuine branch-local refinements or child-level specializations; do not list the already inherited parent tuple fields again unless the current bullet records a meaningful refinement beyond the anchor
- `## Setting` should describe the current branch's context, model, data, algorithm, and regime using the branch-local choices made for this idea; an inherited field may remain broad when deliberate, but it should not remain vague by accident
- `## Goal` should contain exactly one `Theorem type` item and one `Informal statement` item for the current branch
- `## Notes` must include `Parent foundation papers`, `Transfer map`, `Source alignment`, `Progress type`, `Materiality`, `Significance`, `Feasibility`, and `Consistency`; use those fields to give a concise selection rationale, including support for any new theorem-critical mechanism, not a full rejected-candidate table
- `Parent foundation papers` must name one or two concrete paper titles or concrete bibliographic identifiers only
- `Transfer map` must stay short and must state what assumptions, procedures, protocols, or mechanisms the branch preserves or changes from parent literature, and what framework or lemma pattern it reuses
- `Source alignment` should state the extracted source-direction constraints preserved by the branch or state that no additional constraints were present; `Progress type` must be one of `full`, `material_partial`, `conditional`, `obstruction`, or `diagnostic`; `Materiality` should state why the selected idea advances the assigned gap and any extracted source target, or why it is diagnostic. `Significance` should state why the selected idea addresses the assigned gap better than nearby alternatives; `Feasibility` should name the proof route, whether theorem-critical assumptions, procedures, protocols, or mechanisms are standard/literature-derived or novel example-verified, any required branch-specific verification examples for novel components, and why rejected alternatives were riskier; `Consistency` should state why the selected setting, goal, assumptions, and any new theorem-critical mechanism are coherent, non-vacuous, and non-duplicate
- do not place controller-facing statuses, review outcomes, fail reasons, or other workflow metadata in `idea.md`
- do not add new top-level sections beyond the shared template headings

## References

- Template: [../_shared/templates/idea.md](../_shared/templates/idea.md)
- Contracts: [../_shared/checklists/artifact-contracts.md](../_shared/checklists/artifact-contracts.md)
