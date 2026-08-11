---
name: proof-step-review
description: Review one proof-step artifact with per-local-lemma audit, hidden subclaim scan, target-claim audit, and local proof rigor checks.
---

# Proof Step Review

Use this internal reviewer skill for one submitted step proof.

## Contract

Required inputs:

- `perspective_M/idea_N/setting.md`
- `perspective_M/idea_N/proof_sketch.md`
- accepted `perspective_M/idea_N/proof_sketch_review.md`
- target `Step ID`
- `perspective_M/idea_N/proof_steps/<Step ID>/proof.md`
- accepted dependency step proof/review artifacts for the target step, when dependencies exist

Output:

- `perspective_M/idea_N/proof_steps/<Step ID>/review.md`

Do not modify step proofs, the sketch, final proof artifacts, trackers, worker logs, or accepted results.

## Responsibilities

- Treat the setting, sketch row, dependencies, and submitted proof as binding.
- Review local proof units one by one.
- Detect hidden independent subclaims not listed in the local lemma map.
- Emit exactly one status: `ACCEPTED`, `REVISE_STEP`, `REVISE_SKETCH`, or `BLOCKED_BY_DEPENDENCY`.
- Name the smallest retry target without executing reruns or consuming budgets.

## Workflow

### Step 1: Load The Review Target

- Read the exact formalized setting and goal from `setting.md`.
- Read the target row from the controller-accepted `proof_sketch.md`: intended claim, dependencies, assumptions used, technical challenge, intended proof tool or cited result, output target, and row-local review status. Setting assumptions should be cited by their stable `assump:<slug>` ids from `setting.md`.
- Treat `proof_sketch_review.md` as the sketch-level acceptance source; do not use the row-local `Review status` field as the acceptance gate.
- Read the submitted step proof sections: target step claim, step proof status, allowed assumptions and dependencies, local lemma map, cited result applications, local derivation, target-step assembly, blockers, and notation notes.
- If the target step lists dependencies, read the accepted dependency step proof/review artifacts and identify the exact dependency claims available for this step; otherwise record that the step has no dependency artifacts.
- Treat these artifacts as review targets; do not silently repair missing local units, citations, notation, dependencies, or assembly links.

### Step 2: Audit Target Fidelity And Allowed Inputs

- Verify that the submitted proof targets the exact sketch-row claim, not a stronger, weaker, or drifted claim.
- Check that allowed assumptions come only from `setting.md`, the target sketch row, accepted dependencies, earlier local units, or cited results whose assumptions are checked locally. Setting technical assumptions must keep their stable `assump:<slug>` ids.
- Apply the shared Assumption Provenance Contract from `../_shared/checklists/artifact-contracts.md`. Check that every allowed condition is classified as a primitive setting condition, a derived invariant supplied by an accepted dependency, or a local conditional hypothesis.
- Reject any generated-object, event, local-validity, stability, boundedness, recurrence, or invariant fact treated as a primitive assumption when it is not in `setting.md` or an accepted dependency conclusion.
- Reject hidden assumption strengthening, narrowed regimes, invalid quantifier-order changes, or unsupported explicit-dependence placeholders.
- For rate-bearing steps, apply the shared Explicit Rate Contract from `../_shared/checklists/artifact-contracts.md`. Reject missing declarations of exposed variables, hidden-constant dependence, fixed quantities, probability mode, horizon mode, norm mode, admissibility conditions, or auxiliary tolerances.
- If the proof can only work after changing the sketch-row claim, assumptions, dependency list, intended tool, or output target, route to `REVISE_SKETCH`.
- Route to `REVISE_SKETCH` when the attempted proof reveals that the accepted sketch-row interface needs a new bridge step, changed output target, changed dependency, new threshold or positive-margin source, changed cited-tool wrapper conclusion, changed direct-derivation interface, changed standard-fact/tool interface, changed current-notation wrapper interface, changed primitive-source interface, separated defect classes, or changed dominance/transfer relation. Do not spend repeated `REVISE_STEP` attempts on a missing raw-control-to-exported-interface path.
- Route to `REVISE_SKETCH` when the attempted proof reveals that a theorem-critical generated event, structural wrapper, margin, threshold, recurrence source, or public bridge assigned to a direct derivation, standard tool, current-notation proof, or primitive-source derivation is not actually supported by the accepted raw assumptions, convention, branch coverage, or quantitative dominance relation. Treat this as a sketch/interface defect unless the review can identify a dependency proof flaw or purely local derivation error under the unchanged sketch row.
- If the nearest flaw is in an accepted dependency proof that can be repaired without changing its sketch row, route to `BLOCKED_BY_DEPENDENCY` and name that dependency as the smallest retry target.

### Step 3: Audit Local Unit Structure

- Every independent nontrivial subclaim must appear in `## Local Lemma Map` with a stable local unit ID and a matching subsection in `## Local Derivation`.
- Every non-atomic local unit must also have a paper-ready theorem-style title and stable reference label. Treat local unit IDs such as `unit_001` as audit handles only; they are not acceptable mathematical proof references.
- Each local unit statement must be self-contained relative to `setting.md`, accepted dependencies, earlier local units, and restated cited results.
- Each local unit statement must explicitly state its assumption basis, local conditions, and exact conclusion in the statement itself, in the markdown/LaTeX-ready form "Under Assumption~\ref{assump:...} and [named dependencies or prior theorem-style results], if [specific conditions], then [conclusion]." Setting assumptions used in public-facing prose must use the stable `assump:<slug>` ids from `setting.md` and be cited by `Assumption~\ref{assump:...}` or `Assumptions~\ref{assump:...}`. Reject statements whose assumptions, regimes, parameter restrictions, or conclusions are only recoverable from surrounding prose, unit IDs, subsection titles, or the proof body.
- Each local unit proof must immediately follow its exact statement and must justify the stated contribution to the target step.
- If the proof uses induction, recursive closure, stability-radius maintenance, basin maintenance, or invariant propagation, the recurring hypothesis must appear as a named `hypothesis` or `invariant` unit.
- If the proof claims `Atomic step = yes`, verify that no hidden independent subclaim is used.

### Step 4: Audit Cited Results And Notation

- For every cited paper result, standard theorem, dependency step, or local proof unit, check that the proof restates the result before use.
- The restatement must include source or name, current-branch notation, instantiated objects, required assumptions, conclusion used, and where each assumption is discharged.
- Reject citations used only by title, theorem number, paper notation, or broad prose.
- Check that all new symbols are defined, lightweight, scoped, consistent with `setting.md`, and explicitly expressed from original setting notation whenever possible.
- Reject notation drift, symbol reuse with changed meaning, or direct import of cited-paper/dependency notation without translation.
- Reject generated or assumed notation whose provenance is not visible. Every new symbol, alias, event, constant, radius, threshold, rate, margin, admissibility parameter, bounded quantity, or helper object must be setting-defined, inherited from an accepted dependency, translated from a checked cited result, or derived/proved by a named local unit; if it is not expressible from original setting notation or accepted translated objects, the step must prove it before use.
- Check derivation-over-notation discipline. When notation and derivational detail conflict, require fewer helper symbols and more visible derivation. Reject helper notation, bundled constants, or aliases that make boundedness, finiteness, rates, parameter dependence, cited-result assumption discharge, or target implications appear asserted instead of derived.
- Check notation economy and public-surface classification. Every new helper object should be classified as `public-facing`, `appendix-local`, or `proof-local`; one-off aliases should be inlined unless they clarify the proof; and step conclusions should export only the minimal public-facing interface needed downstream.
- Reject notation cascades that make a local lemma, proposition, or target-step conclusion harder to read than the underlying mathematical claim, especially when long helper dictionaries could be kept appendix-local, proof-local, or packaged inside a named local result.
- Check constant provenance. Every new constant, radius, threshold, rate, margin, admissibility parameter, bounded quantity, finite-tube quantity, event, or helper object must be directly defined from original setting quantities, explicitly present as a theorem/admissibility condition in the current step statement, inherited from an accepted dependency claim, translated from a checked cited result, or proved/bounded by a named local unit. Treat unexplained boundedness, finiteness, or "choose constants" claims as local proof flaws.
- Check assumption provenance. Every generated-object, event, local-validity, stability, boundedness, recurrence, or invariant condition must be proved in the step, supplied by an accepted dependency, or used only as a local conditional hypothesis. Treat unproved derived invariants in the target-step interface as local proof flaws or sketch flaws, depending on whether the sketch row must change.
- Check explicit-rate preservation. A rate-bearing proof must preserve dependence in every required structural, data/sampling, algorithmic/horizon, regularity/stability, numerical/stochastic/approximation/modeling-error, auxiliary-tolerance, and confidence/probability category unless a local unit proves the specialization. Treat prose-only term absorption or dropped assumptions as local proof flaws.
- Check baseline reduction when applicable. If the step extends, perturbs, or specializes a prior theorem, dependency result, simpler regime, or limiting regime, verify that the proof preserves the path back to the corresponding baseline result or explicitly justifies any conservative loss. If the baseline is an inherited theorem-facing recovery, reduction, specialization, zero-defect, exact-limit, exact/noiseless, or baseline-case conclusion, verify preservation of the original conclusion; a conservative loss or weaker surrogate is target-changing.

### Step 5: Audit Per-Unit Rigor

For each local unit, check:

- statement fidelity to the target step and allowed assumptions
- proof validity line by line
- cited-result applicability and assumption discharge
- algebra, inequalities, probability steps, and interchanges of limits, expectations, suprema, gradients, integrals, or conditionings
- quantifiers, constants, parameter dependence, and uniformity
- stochastic-mode distinctions such as almost-sure, in-probability, in-expectation, in-Lp, and high-probability
- boundary or degenerate cases
- WLOG, symmetry, relabeling, normalization, or rescaling arguments
- phrases such as "clearly", "obviously", "standard", "similarly", and "by routine arguments"

### Step 6: Run Local Adversarial Tests

Try to break high-risk local claims, especially:

- PSD, curvature, coercivity, or strong-convexity assertions
- Taylor or perturbation remainder bounds
- invariant, induction, recursive closure, stability-radius, or basin-maintenance steps
- local-to-uniform, event-to-global, conditional-to-unconditional, or convergence-mode upgrades
- explicit dependence in any domain-appropriate rate category, including structural, data/sampling, algorithmic/horizon, regularity/stability, numerical/stochastic/approximation/modeling-error, auxiliary-tolerance, or confidence/probability dependence
- term absorption or public-rate specialization without displayed inequalities and admissibility checks
- theorem-critical exported interfaces whose raw controls, defect split, dominance or transfer relation, threshold or margin source, or cited-result output interface are not already fixed by the accepted sketch row
- unproved derived invariants hidden in admissibility, good-event, local-validity, stability, recurrence, boundedness, or membership assumptions

Promote verified breaks and unresolved high-risk obligations into `## Blocking Issues`.

### Step 7: Audit Hidden Subclaims And Target-Step Assembly

- Scan prose, calculations, citations, and target-step assembly for independent nontrivial subclaims absent from `## Local Lemma Map`.
- Verify that accepted local units, checked cited results, and accepted dependencies jointly imply the exact target step claim.
- The assembly must cite the exact named local results, checked cited results, and dependency step claims it uses. In LaTeX-ready prose, acceptable internal proof references have theorem-style form such as `Lemma~\ref{lem:...}`, `Proposition~\ref{prop:...}`, `Claim~\ref{claim:...}`, `Corollary~\ref{cor:...}`, `Hypothesis~\ref{hyp:...}`, or `Invariant~\ref{inv:...}`.
- Mark as a local proof flaw any argument that relies on subsection titles, "the previous subsection", proof-step IDs, or local unit IDs such as `unit_001` as mathematical authority. Those identifiers may be present only for audit traceability.
- If the assembly needs a new independent lemma, mark it as a local proof flaw unless the sketch row itself must change.

### Step 8: Write The Review

- Use `../_shared/templates/proof-step-review.md`.
- Add one `## Per-Lemma Audit` subsection for every local proof unit in the submitted proof.
- Use per-unit verdicts only from `PASS`, `REVISE_STEP`, `REVISE_SKETCH`, and `BLOCKED_BY_DEPENDENCY`.
- `## Blocking Issues` is `None` only when `Step-Review Status = ACCEPTED`; otherwise write numbered blockers with location, defect, downstream effect, and smallest repair direction.
- Do not write a `Retry Mode` field; controller routing for step reviews uses only `Step-Review Status` and `Smallest Retry Target`.
- For `Smallest Retry Target = /proof-step <Step ID>` or `/proof-step <dependency Step ID>`, the target names only the producer rerun. The controller must still require a fresh accepted `/proof-step-review <Step ID>` or `/proof-step-review <dependency Step ID>` on the repaired proof before downstream consumption.
- `## Review Rationale` must explain why the chosen status and retry target are the smallest required repair.

## Local Review Checks

- Target fidelity: the proof must establish exactly the target step claim, not a drifted, weaker, or stronger claim.
- Dependency discipline: every nontrivial argument must use only `setting.md`, accepted dependency proofs/reviews, local proof units, or cited results whose assumptions are checked locally.
- Local unit structure: every independent subclaim must appear in `## Local Lemma Map`, have a matching proof subsection, and have a paper-ready theorem-style title and stable label for downstream references.
- Per-unit proof validity: check each local unit statement has explicit numbered-assumption or named-prior-result basis, specific conditions, and conclusion before the proof, then check the self-contained proof, cited-result applications, assumption discharge, notation, and contribution to the target claim.
- Citation discipline: cited results must be restated in current notation with instantiated objects, assumptions, conclusion, and assumption discharge before use.
- Notation discipline: local notation must be explicit, lightweight, scoped, consistent with `setting.md`, and expressed from original setting notation or accepted translated objects; prefer fewer helper symbols and more visible derivation when notation would hide a proof obligation. Notation that is not expressible from original setting notation must be derived/proved before use.
- Constant provenance: constants, radii, thresholds, rates, margins, admissibility parameters, bounded quantities, finite-tube quantities, events, and helper objects must be defined from setting quantities, explicit theorem/admissibility conditions, accepted dependency claims, checked cited-result translations, or proved/bounded by named local units; proof-only aliases should not hide obligations.
- Assumption provenance: generated-object, event, local-validity, stability, boundedness, recurrence, and invariant conditions must be primitive setting conditions, accepted dependency conclusions, local conditional hypotheses, or proved by named local units; unproved derived invariants must not be exported as theorem-facing assumptions.
- Hidden subclaim scan: reject broad prose, calculations, or assembly text that smuggles in an unreviewed independent claim.
- Target-step assembly: accepted named local results and dependencies must jointly imply the exact target step claim, and proof references must use paper-ready theorem-style names/labels rather than subsection names or bare local unit IDs.
- Rigor checklist: audit algebra, inequalities, quantifiers, WLOG/symmetry, illegal interchanges, boundary cases, stochastic or convergence mode, constants, parameter dependence, and uniformity.
- Explicit-rate checklist: audit all exposed rate-category assumptions, auxiliary parameter choices, term absorption inequalities, hidden-constant dependence, horizon mode, and norm mode whenever the step contributes to an explicit rate.
- Baseline-reduction checklist: when a meaningful baseline result is present, audit whether the step reduces to it under the relevant specialization, or whether any loss is explicitly stated and justified. Inherited theorem-facing baseline/recovery conclusions must be preserved rather than replaced by weaker surrogates.
- Local adversarial test: stress high-risk local claims such as PSD, curvature, Taylor remainder, invariant, induction, scope-upgrade, or parameter-dependence steps.

## Status Rules

- `ACCEPTED`: the exact step claim is proved under allowed assumptions and dependencies. Use `Smallest Retry Target = None`.
- `REVISE_STEP`: the flaw is local to the submitted step proof, including missing local units, invalid local derivation, unchecked citation use, notation defects, or failed target-step assembly. Use `Smallest Retry Target = /proof-step <Step ID>`.
- `REVISE_SKETCH`: the step claim, assumptions, dependency list, intended tool, output target, required bridge, threshold or margin source, cited-tool wrapper conclusion, direct-derivation interface, standard-fact/tool interface, current-notation wrapper interface, primitive-source interface, defect split, or dominance/transfer interface must change. Use `Smallest Retry Target = /proof-sketch`.
- `BLOCKED_BY_DEPENDENCY`: the nearest failed dependency can be repaired without changing its sketch row. Use `Smallest Retry Target = /proof-step <dependency Step ID>`.

`/proof-step ...` smallest retry targets are producer targets only; they do not certify the repaired proof for downstream use without the fresh accepted step review required by the controller.

Write `review.md` using `../_shared/templates/proof-step-review.md`.
