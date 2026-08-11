---
name: proof-step
description: Prove one accepted proof-sketch step with local lemmas, local derivations, cited-result assumption checks, and exact target-step assembly.
---

# Proof Step

Use this internal skill to prove exactly one `Step ID` from an accepted proof sketch.

## Contract

Required inputs:

- `perspective_M/idea_N/setting.md`
- `perspective_M/idea_N/proof_sketch.md`
- accepted `perspective_M/idea_N/proof_sketch_review.md`
- target `Step ID`
- accepted dependency step proof/review artifacts listed by the target step, when dependencies exist

Optional inputs:

- accepted diagnostic `perspective_M/idea_N/global_proof.md` only when paired with accepted `perspective_M/idea_N/global_proof_review.md`
- accepted `perspective_M/idea_N/global_proof_review.md` when `global_proof.md` is provided
- latest same-step `proof_steps/<Step ID>/proof.md`
- triggering same-step `proof_steps/<Step ID>/review.md`, downstream `proof_steps/<Downstream Step ID>/review.md` naming this step as the failed dependency, or final `proof_review.md` when repairing `PROOF_STEP_FLAW`

Output:

- `perspective_M/idea_N/proof_steps/<Step ID>/proof.md`

Do not modify the sketch, dependency artifacts, downstream step artifacts, final proof artifacts, trackers, worker logs, or accepted results.

Reference boundary:

- Do not read prior same-perspective `idea_K` branches directly.
- Use only the current `setting.md`, accepted `proof_sketch.md`, accepted `proof_sketch_review.md`, accepted dependency artifacts when dependencies exist, latest same-step proof, triggering same-step review, downstream dependency-block review, final review for `PROOF_STEP_FLAW`, and optionally accepted diagnostic `global_proof.md` paired with accepted `global_proof_review.md` as planning guidance.
- Use `global_proof.md` only for step-relevant proof ideas, gap notes, and hard-step diagnostics. Do not use it as proof evidence, a cited result, an assumption source, or authority to change the target step claim.
- Do not read or use `global_proof.md` if `global_proof_review.md` is missing, stale, invalid, or not `ACCEPTED`.
- If an older-branch technique is needed, it must already be encoded in the current sketch, accepted dependencies, or cited results checked inside the current step proof.
- If `global_proof.md` suggests a changed step claim, dependency, or assumption, stop and route to `/proof-sketch` instead of repairing inside `/proof-step`.

## Responsibilities

- Prove only the assigned step claim under the assumptions and dependencies in `proof_sketch.md`.
- Keep the proof self-contained relative to `setting.md`, the target step, and accepted dependencies.
- Expose local proof structure so `/proof-step-review` can audit each local unit.
- Preserve valid local units on repair unless the review identifies them as flawed.

## Workflow

### Step 1: Load The Assigned Step

- Read the exact formalized setting and goal from `setting.md`.
- Read the target row from the controller-accepted `proof_sketch.md`: intended claim, dependencies, assumptions used, technical challenge, intended proof tool or cited result, output target, and row-local review status. Setting assumptions should be named by their stable `assump:<slug>` ids from `setting.md`.
- Treat `proof_sketch_review.md` as the sketch-level acceptance source; do not use the row-local `Review status` field as the acceptance gate.
- If the target step lists dependencies, read the accepted dependency step proof/review artifacts and identify the exact dependency claims available for use; otherwise record that the step has no dependency artifacts.
- If an accepted diagnostic `global_proof.md` and accepted `global_proof_review.md` are provided, read only the parts relevant to the target `Step ID`; record any useful proof idea as planning context, not as an allowed assumption or established result.
- Treat the sketch row as binding. Do not prove a stronger, weaker, or drifted claim unless the blocker explicitly says the sketch row must change.

### Step 2: Set Local Scope

- List only the setting assumptions, sketch-row assumptions, and accepted dependency claims needed for the step. Cite setting assumptions by their stable `assump:<slug>` ids from `setting.md`.
- Apply the shared Assumption Provenance Contract from `../_shared/checklists/artifact-contracts.md`. Classify each allowed condition as a primitive setting condition, a derived invariant supplied by an accepted dependency, or a local conditional hypothesis. Do not treat generated-object, event, local-validity, stability, boundedness, recurrence, or invariant facts as primitive unless they are explicitly setting assumptions.
- Do not list `global_proof.md` statements as allowed assumptions or dependencies.
- Introduce lightweight local notation for this step and record it in `## Notation And Assumption Notes`.
- Define every new symbol before use, and express it explicitly in original `setting.md` notation whenever possible.
- Do not import notation from cited papers, dependency proofs, or prior attempts without translating it into the current branch notation.
- Keep notation consistent with `setting.md`; if a local abbreviation is useful, state its scope and do not reuse an existing symbol with a new meaning.
- Do not generate or assume new notation by convenience. Every new symbol, alias, event, constant, radius, threshold, rate, margin, admissibility parameter, bounded quantity, or helper object must be classified in `## Notation And Assumption Notes` as a setting-defined expression, an accepted dependency object, a checked cited-result object translated into current notation, or a locally derived/proved object. If a useful object is not expressible from original setting notation or accepted translated objects, prove its existence or bound as a named local unit before using it.
- Use derivation-over-notation discipline. When notation and derivational detail conflict, prefer fewer helper symbols and more visible derivation. A helper symbol may shorten repeated complex expressions or name a stable conceptual object, but it must not hide the proof of boundedness, finiteness, rates, parameter dependence, cited-result assumption discharge, or target implications.
- Apply notation economy before exporting a step conclusion. Introduce a helper symbol, constant, threshold, envelope, or shorthand only when it is reused or clearly improves proof clarity; inline one-off expressions when they do not obscure the derivation.
- Classify every new helper object in `## Notation And Assumption Notes` as `public-facing`, `appendix-local`, or `proof-local`. Export only the minimal `public-facing` interface needed by downstream steps or the final theorem; keep proof bookkeeping as `appendix-local` or `proof-local`.
- If a step needs many helper objects, package them inside a named local result and expose a compact conclusion rather than making the step target or downstream interface a long helper dictionary.
- Track constant provenance in `## Notation And Assumption Notes`. Every new constant, radius, threshold, rate, margin, admissibility parameter, bounded quantity, or finite-tube quantity must be classified as directly defined from original setting quantities, explicitly present as a theorem/admissibility condition in the current step statement, inherited from an accepted dependency claim, or proved/bounded by a named local unit. Do not introduce free bounded quantities or "choose finite constants" claims without one of those sources.
- Track assumption provenance in `## Notation And Assumption Notes`. Any generated-object, event, local-validity, stability, boundedness, recurrence, or invariant condition used by the step must be marked as proved in this step, supplied by an accepted dependency, or only a local conditional hypothesis. If it is needed for the target step conclusion and is not proved or supplied, set `Step Proof Status = PARTIAL_BLOCKED`.
- For rate-bearing steps, apply the shared Explicit Rate Contract from `../_shared/checklists/artifact-contracts.md`. Record the exposed variables, hidden-constant dependence, fixed quantities, probability mode, horizon mode, norm mode, admissibility conditions, and auxiliary tolerances in `## Notation And Assumption Notes` before they are used in derivations.
- When the step extends, perturbs, or specializes a prior theorem, dependency result, simpler regime, or limiting regime, record the baseline-reduction obligation in `## Explicit Rate Audit` or `## Notation And Assumption Notes`. Prove that the step conclusion reduces to the corresponding baseline result under the relevant specialization, or explicitly state and justify any conservative loss. If the baseline is an inherited theorem-facing recovery, reduction, specialization, zero-defect, exact-limit, exact/noiseless, or baseline-case conclusion, preserve that original conclusion; a conservative loss or weaker surrogate is target-changing.

### Step 3: Plan Local Proof Units

- Split every independent nontrivial subclaim into a local unit with a stable ID such as `unit_001`.
- Use local unit types `lemma`, `proposition`, `claim`, `hypothesis`, or `invariant`.
- Give every non-atomic local unit a paper-ready theorem-style title and a stable ASCII reference label, such as `lem:step-003-unit-001` or `prop:step-006-tube`. The local unit ID is an audit handle only; mathematical prose must cite the paper-ready result, not the ID.
- Each local unit statement must be self-contained relative to `setting.md`, accepted dependencies, earlier local units, and restated cited results.
- Each local unit statement must explicitly record its assumption basis, any local conditions, and exact conclusion in the statement itself. Use the markdown/LaTeX-ready analogue of "Under Assumption~\ref{assump:...} and [named dependencies or prior theorem-style results], if [specific conditions], then [conclusion]" rather than relying on nearby prose or the proof body to supply assumptions. If a setting assumption is used, cite the same stable id from `setting.md`, which assembly will translate into the numbered assumption label.
- If the step uses induction, recursive closure, stability-radius maintenance, basin maintenance, or invariant propagation, expose the recurring hypothesis as a named `hypothesis` or `invariant` unit.
- If the step is genuinely atomic, write `Atomic step = yes` in `## Local Lemma Map` and justify why no hidden independent subclaim is being used.

### Step 4: Restate And Check Cited Results

- Before using any cited paper result, standard theorem, dependency step, or local proof unit, restate it in `## Cited Result Applications`.
- For each cited result, record the source or name, restated statement in current notation, instantiated objects, required assumptions, conclusion used, and where each assumption is discharged.
- Do not cite a result only by title, theorem number, or paper notation.
- If an intended cited result cannot be restated with checked assumptions, treat that citation use as unresolved.

### Step 5: Write Local Derivation And Assembly

- In `## Local Derivation`, give each non-atomic local unit a matching subsection `### <Local Unit ID>: <Unit type>`.
- Put the exact statement immediately before its proof or justification.
- Justify every nontrivial line using only stated assumptions, accepted dependencies, earlier local units, or cited results whose assumptions were checked locally.
- Handle boundary or degenerate cases explicitly, or state why they are excluded by the current setting.
- When one local unit, cited result, or dependency is used later in the step, refer to it by paper-ready result type and title/label. In LaTeX-ready prose, use references such as `Lemma~\ref{lem:...}`, `Proposition~\ref{prop:...}`, `Claim~\ref{claim:...}`, `Corollary~\ref{cor:...}`, `Hypothesis~\ref{hyp:...}`, or `Invariant~\ref{inv:...}`. Do not use subsection titles, "the previous subsection", proof-step IDs, or local unit IDs such as `unit_001` as mathematical authority.
- In `## Target-Step Assembly`, cite the exact paper-ready local results, checked cited results, and accepted dependency claims used to prove the exact target step claim. Local unit IDs may appear parenthetically for audit traceability, but they must not be the proof reference.
- If several local units jointly discharge one sketch-row challenge, state that composition explicitly in the assembly.

### Step 6: Repair Mode

- When repairing from a same-step review, downstream dependency-block review, or final review, preserve local units that were not criticized and whose assumptions still hold.
- Repair only the flagged local unit, citation, dependency use, notation issue, blocker, or target-step assembly unless the repair requires a broader local rewrite.
- Preserve stable local unit IDs for unchanged units; assign new IDs only to new local units.

### Step 7: Finalize The Step Artifact

- Use `../_shared/templates/proof-step.md`.
- Set `Step Proof Status = COMPLETE` only if the exact target step claim is proved under allowed assumptions and dependencies.
- Use `Step Proof Status = PARTIAL_BLOCKED` if any required local unit, cited-result application, dependency use, or target-step assembly remains unresolved.
- When blocked, keep the valid partial derivation and name the exact failed local unit, missing cited result, invalid assumption, dependency gap, or failed target-step assembly in `## Blockers`.

## Local Proof Rules

- Every independent nontrivial subclaim must be a named local proof unit: lemma, proposition, claim, hypothesis, or invariant.
- Assign stable IDs such as `unit_001`; preserve unchanged IDs across repair attempts.
- Assign a stable paper-ready label to every non-atomic local unit and use that label for internal mathematical references. The intended public form is theorem-style prose such as `Lemma~\ref{lem:...}` or `Proposition~\ref{prop:...}`; bare local unit IDs, subsection titles, "the previous subsection", and proof-step IDs are audit/navigation handles only.
- In `## Local Derivation`, each non-atomic local unit must have a matching subsection `### <Local Unit ID>: <Unit type>` with the exact statement immediately followed by proof or justification.
- If the step is genuinely atomic, state `Atomic step = yes` and explain why the proof contains no hidden independent subclaim.
- Keep each local unit proof self-contained relative to `setting.md`, accepted dependencies, earlier local units, and restated cited results.
- Keep each local unit statement self-contained: name the allowed setting assumptions, accepted dependency claims, prior local units, or checked cited results it depends on; list local conditions before the conclusion; and state the exact claim proved. In LaTeX-ready prose, cite setting assumptions as `Assumption~\ref{assump:...}` or `Assumptions~\ref{assump:...}` using the stable ids already assigned in `setting.md`. Do not make the reviewer infer assumptions or conditions from the subsection title, local unit ID, surrounding prose, or later proof text.
- Use explicit, lightweight notation; define each new symbol from original `setting.md` notation or from accepted translated dependency/citation objects, and avoid unnecessary aliases.
- Do not directly reuse cited-paper notation or dependency-proof notation unless it has been translated into the current local notation.
- Prefer full setting-derived expressions over local aliases when the alias is used only once or only abbreviates a simple norm, radius, probability level, or bookkeeping quantity.
- Mark every new helper object as `public-facing`, `appendix-local`, or `proof-local` in `## Notation And Assumption Notes`. Downstream-facing statements should expose only the smallest stable interface needed for later proof steps and final assembly.
- Avoid notation cascades: do not make a local lemma conclusion depend on a long list of newly named helper quantities when a shorter statement with inline expressions, a named package lemma, or an appendix-local definition would preserve readability.
- Prefer more derivation and less notation when they conflict. Local aliases may shorten repeated complex expressions, but they must not replace visible proof lines for boundedness, finiteness, rates, parameter dependence, cited-result assumption discharge, or the implication needed for the target step.
- Every introduced constant, radius, threshold, rate, margin, admissibility parameter, bounded quantity, finite-tube quantity, event, or helper object must have provenance: direct expression from original setting quantities, explicit theorem/admissibility condition in the statement, accepted dependency claim, checked cited-result object translated into current notation, or proof/bound by a named local lemma, proposition, claim, hypothesis, or invariant.
- Every generated-object, event, local-validity, stability, boundedness, recurrence, or invariant condition must have assumption provenance: primitive setting condition, accepted dependency conclusion, local conditional hypothesis, or proof by a named local unit. Conditional local lemmas may assume such facts, but the target-step assembly cannot use them for an unconditional step conclusion until a local unit or accepted dependency proves them.
- If a target step needs a boundedness or finiteness claim not already in `setting.md`, prove it as a local unit or mark the step `PARTIAL_BLOCKED`; do not hide it inside notation.
- Restate every cited result before use, including source or name, instantiated objects, assumptions, conclusion, and object mapping.
- For every cited result, explain where each assumption is discharged in `setting.md`, accepted dependencies, or the current local proof.
- Do not use a cited result if its assumptions cannot be checked in the current step proof.
- Do not hide gaps behind "clearly", "obviously", "standard", "similarly", or "by routine arguments".
- Track notation, quantifier order, constants, parameter dependence, probability or convergence mode, boundary cases, and any interchange of limits, expectations, suprema, gradients, integrals, or conditionings.
- Do not silently strengthen assumptions, narrow the regime, change quantifier order, or prove a drifted target claim.
- If the sketch row asks for explicit dependence, do not leave dependence unspecified with placeholders such as "up to constants" or "up to polynomial factors". Preserve dependence in every required category, including structural, data/sampling, algorithmic/horizon, regularity/stability, numerical/stochastic/approximation/modeling-error, auxiliary-tolerance, and confidence/probability dependence, unless the step proves a valid specialization.
- Do not drop, dominate, or absorb a term in an explicit rate by prose alone. State the inequality, threshold/admissibility condition, and dependency of constants that proves the absorption.
- When a step contributes to a public rate simplification, prove the relevant bridge obligation locally: auxiliary parameter choice, technical condition verification, term absorption/simplification inequalities, probability conversion, and the final rate implication. Mark the step `PARTIAL_BLOCKED` if any part of the bridge is missing.
- When a step contributes to a theorem that should reduce to an established baseline result under a specialization, preserve that reduction path in the step proof. Do not permanently absorb terms or weaken rates in a way that prevents baseline reduction unless the conservative loss is stated and justified. For inherited theorem-facing baseline/recovery conclusions, do not replace the original conclusion with a weaker surrogate.
- The target-step assembly must show how the named local results, cited results, and accepted dependencies imply the exact sketch-row claim, using paper-ready theorem-style references rather than subsection names or local unit IDs as proof authority.
- The target-step assembly must not cite `global_proof.md` as evidence. Any idea borrowed from it must be independently proved through local units, accepted dependencies, or checked cited results.
- If the step cannot be proved, keep the valid partial derivation, set status `PARTIAL_BLOCKED`, and name the exact failed local unit, missing cited result, invalid assumption, dependency gap, or failed target-step assembly.

## Self-Check Before Finalizing

Before writing or finalizing `proof_steps/<Step ID>/proof.md`, verify:

- Target fidelity: the proof establishes the exact target step claim from the sketch row, not a stronger, weaker, or drifted claim.
- Allowed inputs: every nontrivial argument uses only `setting.md`, the target sketch row, accepted dependencies, earlier local units, or checked cited results.
- Global diagnostic boundary: if `global_proof.md` was read, it contributed only planning guidance and did not alter the step claim, dependencies, assumptions, evidence base, or cited-result list.
- Statement shape: every local unit statement records assumption basis, local conditions, and conclusion explicitly; the intended public form is "Under Assumption~\ref{assump:...} and [named prior results], if [conditions], then [conclusion]", with `assump:<slug>` references matching `setting.md`. No local unit relies on hidden context from prose, unit IDs, subsection titles, or the proof body.
- Local unit coverage: every independent nontrivial subclaim appears in `## Local Lemma Map` and has a matching derivation subsection, unless the step is explicitly atomic.
- Citation discharge: every cited result is restated in current notation and all assumptions are discharged.
- Notation discipline: new symbols are explicitly expressed from original setting notation whenever possible, local abbreviations are scoped, cited/dependency notation is translated before use, unnecessary aliases are avoided, and the proof uses fewer helper symbols and more visible derivation whenever notation would otherwise replace derivations or provenance checks. If a useful notation is not expressible from original setting notation or accepted translated objects, it is derived/proved in a named local unit before use.
- Notation surface: every new helper object is classified as `public-facing`, `appendix-local`, or `proof-local`; one-off aliases are avoided; local dictionaries are packaged behind named local results when needed; and only the minimal public-facing interface is exported downstream.
- Constant provenance: every new constant, radius, threshold, rate, margin, admissibility parameter, bounded quantity, finite-tube quantity, event, or helper object is directly defined from setting quantities, explicitly stated as a theorem/admissibility condition, inherited from an accepted dependency claim, translated from a checked cited result, or proved/bounded by a named local unit.
- Assumption provenance: every generated-object, event, local-validity, stability, boundedness, recurrence, or invariant condition used in the proof is primitive, proved locally, supplied by an accepted dependency, or restricted to a local conditional hypothesis that is not used for an unconditional target conclusion.
- Explicit-rate contract: rate-bearing steps preserve exposed variables, hidden-constant dependence, fixed quantities, probability mode, horizon mode, norm mode, admissibility conditions, and auxiliary tolerances; any term absorption or public-rate specialization is proved by displayed inequalities and condition checks.
- Baseline reduction: when a meaningful prior, simpler, or limiting regime is present, the step records whether and how the result reduces to the baseline result, or records the justified conservative loss. Inherited theorem-facing baseline/recovery conclusions must be preserved rather than replaced by weaker surrogates.
- Rigor checks: quantifiers, constants, parameter dependence, stochastic or convergence mode, algebra, inequalities, WLOG or symmetry arguments, boundary cases, and interchanges of limits, expectations, suprema, gradients, integrals, or conditionings are handled explicitly.
- Assembly closure: `## Target-Step Assembly` cites the exact named local results, cited results, and dependencies that imply the target step claim, and does not rely on subsection names, "previous subsection" language, proof-step IDs, or local unit IDs as mathematical authority.
- Blocker honesty: if any required local unit, citation, dependency use, or assembly link remains unresolved, status is `PARTIAL_BLOCKED` and `## Blockers` names the exact obstruction.

Write the artifact using `../_shared/templates/proof-step.md`.
