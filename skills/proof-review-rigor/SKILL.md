---
name: proof-review-rigor
description: Diagnostic split-mode final proof reviewer focused on derivational rigor, quantifiers, constants, probability modes, and boundary cases.
---

# Proof Review Rigor

Use this internal diagnostic reviewer after `/proof-assembly` in the upgraded split workflow.

## Contract

Required inputs:

- `perspective_M/idea_N/setting.md`
- `perspective_M/idea_N/latex_template/1_intro.tex`
- `perspective_M/idea_N/latex_template/2_preliminary.tex`
- `perspective_M/idea_N/latex_template/3_main.tex`
- `perspective_M/idea_N/latex_template/4_proof_sketch.tex`
- `perspective_M/idea_N/latex_template/5_appendix.tex`
- `perspective_M/idea_N/latex_template/main.tex`
- `perspective_M/idea_N/latex_template/arxiv.sty`
- `perspective_M/idea_N/latex_template/ims.bst`
- `perspective_M/idea_N/latex_template/reference.bib`
- `perspective_M/idea_N/assembly_report.md`
- accepted `perspective_M/idea_N/proof_sketch.md`
- accepted `perspective_M/idea_N/proof_sketch_review.md`
- valid diagnostic `perspective_M/idea_N/global_proof.md` paired with accepted `perspective_M/idea_N/global_proof_review.md`
- accepted `perspective_M/idea_N/global_proof_review.md`
- accepted `proof_steps/<Step ID>/proof.md` and `proof_steps/<Step ID>/review.md` artifacts for every required sketch step

Output:

- `perspective_M/idea_N/proof_review_rigor.md`

Required machine-readable fields:

- `Reviewer Verdict`
- `Blocking Issues`
- `Nonblocking Concerns`
- `Suggested Repair Depth`
- `Smallest Candidate Repair Target`

Do not modify proofs, sketches, step artifacts, trackers, worker logs, `proof_review.md`, or accepted results.

## Responsibilities

- Audit mathematical derivations in assembled proof blocks and cited accepted step conclusions.
- Check quantifier order, constants, parameter dependence, stochastic or convergence modes, and boundary cases.
- Identify hidden subclaims that should have been local step units or assembly-blocking obligations.
- Emit diagnostic fields only; do not assign score, failure type, retry mode, or controller routing.
- Treat `assembly_report.md` as diagnostic assembly-status context only, not as proof evidence or authority to accept a final claim.
- Treat `global_proof.md` and `global_proof_review.md` as diagnostic context only, not as proof evidence or authority to accept a final claim.

## Workflow

### Step 1: Load The Rigor Target

- Load `setting.md`, all content and support files under `latex_template/`, `assembly_report.md`, accepted sketch artifacts, valid diagnostic `global_proof.md`, accepted `global_proof_review.md`, and accepted step artifacts.
- Treat `setting.md`, accepted sketch rows, accepted step proofs/reviews, final proof artifacts, and the LaTeX bundle as review targets; do not silently repair derivation gaps, missing cases, or drifted statements.
- Use `assembly_report.md` only to identify the reported attempted claim, assembly status, and blockers. Do not use it as proof evidence or authority to accept a final claim.
- Use `global_proof.md` only as diagnostic context for finding hard derivations, known gaps, and expected proof structure after confirming `global_proof_review.md` is accepted. Do not treat either global artifact as proof evidence or authority to accept a final claim.

### Step 2: Build The Derivation Map

- Map theorem-level blocks, final assembly implications, LaTeX-bundle claims, accepted step claims, dependency uses, local proof units, cited-result applications already checked in accepted steps, and nontrivial proof lines.
- For each nontrivial derivation, record the claim being proved, allowed inputs, intermediate claims used, and the exact place where the conclusion is asserted.
- Separate direct assembly-only reasoning from step-level derivations; assembly may combine accepted claims but must not smuggle in an independent unreviewed lemma.

### Step 3: Audit Theorem-Level And Assembly Derivations

- Check line-by-line that final proof blocks and final assembly follow from stated assumptions, accepted step claims, accepted dependencies, and direct logical implications.
- Verify that the LaTeX bundle is not stronger, weaker, or differently scoped than accepted step artifacts and the formalized goal.
- Verify that `latex_template/main.tex` is the compile entry and the five content files under `latex_template/` contain enough derivational content to be checked as a self-contained paper proof rather than relying on internal artifacts for the actual proof.
- Verify that every theorem-critical assumption in `latex_template/1_intro.tex` appears as a numbered `assumption` environment with a unique stable `\label{assump:...}` that preserves an assumption id from `setting.md`; prose-only hidden assumptions are blocking.
- Verify that the notation in `latex_template/2_preliminary.tex` is definitional only: each new symbol is useful, meaningful, explicitly expressed from original `setting.md` quantities, states what it is and why it is introduced, is needed to state or read the main theorem, and does not smuggle in an assumption, lemma, proof obligation, proof-only shorthand, or one-off/non-conceptual constant.
- Verify that `latex_template/3_main.tex` is theorem-statement self-contained: theorem-local constants, functions, rates, events, or bounds are fully defined inline before use and state their allowed dependence; no theorem conclusion depends on a symbol defined only in an appendix lemma, theorem, proposition, corollary, converted local claim/hypothesis/invariant, or step assembly.
- Apply the shared Assumption Provenance Contract from `../_shared/checklists/artifact-contracts.md`. Reject an unconditional theorem whose theorem-facing assumptions include generated-object, event, local-validity, stability, boundedness, recurrence, membership, or invariant facts that are not primitive conditions and are not proved by named results before use.
- Verify main-theorem readability. If the theorem statement is dense, hard to audit, or dominated by admissibility dictionaries, require a readable simplified theorem or corollary in `latex_template/3_main.tex` under domain-appropriate theorem-local simplifying assumptions that are explicitly stated and bridged. Treat the absence of this fallback as an assembly-level blocker because reviewers cannot rigorously audit an unreadable public theorem statement.
- Treat a readable corollary as insufficient when it still depends on an unreadable theorem-level admissibility dictionary. The public theorem must have a concise reader-facing interface, with technical dictionaries moved into named appendix theorem-style results and bridged.
- Verify theorem-style statement shape. Every public theorem, lemma, proposition, or corollary must be self-contained and state the assumptions it uses as `Assumption~\ref{assump:...}` / `Assumptions~\ref{assump:...}` or named prior theorem-style results, any local "if" conditions, and the exact conclusion before the proof begins; hidden assumptions or conditions supplied only by surrounding prose are blocking. Public appendix `claim`, `hypothesis`, and `invariant` environments are blocking because local proof-step units must be converted into lemma, theorem, proposition, or corollary statements with proofs.
- Verify theorem-style reference discipline. Internal mathematical dependencies in public TeX must be cited through `\label{...}`/`\ref{...}` pairs with paper-ready result names such as `Lemma~\ref{lem:...}`, `Theorem~\ref{thm:...}`, `Proposition~\ref{prop:...}`, or `Corollary~\ref{cor:...}`. Reject proof arguments that rely on subsection titles, "the previous subsection", proof-step IDs, local unit IDs such as `unit_001`, public `Claim~`, `Hypothesis~`, or `Invariant~` references, or bare `\ref{...}` references without naming the result type as mathematical authority.
- Verify notation economy, notation provenance, and constant provenance. Public preliminaries and theorem statements should not carry proof-local aliases, component radii, one-off bookkeeping quantities, or long helper-constant dictionaries unless they are essential public objects. Every new symbol, constant, radius, threshold, rate, margin, admissibility parameter, bounded quantity, finite-tube quantity, event, or helper object must be directly defined from original setting quantities, translated from an accepted dependency or checked cited result, explicitly present as a theorem/admissibility condition, or proved/bounded by a named local result.
- Verify proof-step notation did not leak into the public theorem unnecessarily. Objects classified or functioning as proof-local or appendix-local should stay out of the main theorem unless they are essential public-facing quantities; long helper dictionaries should be packaged in named appendix results with compact public conclusions.
- Verify proof-step assumption provenance did not leak into the public theorem. A conditional local hypothesis may not become a theorem assumption for an unconditional target unless another accepted result proves it from primitive conditions.
- Apply the shared Explicit Rate Contract from `../_shared/checklists/artifact-contracts.md` to every public explicit rate. Reject any rate that omits exposed variables, hidden-constant dependence, fixed quantities, probability mode, horizon mode, norm mode, admissibility conditions, or auxiliary tolerances needed to interpret the statement.
- Reject a simplified public explicit rate unless `latex_template/3_main.tex` contains either a self-contained bridge proof or a corollary stating the auxiliary choices and citing a named appendix Rate Specialization Bridge proposition. The bridge must verify auxiliary parameter choices, every technical appendix condition, every term absorption/simplification inequality, probability conversion, and final hidden-constant dependence.
- Reject prose-only simplifications such as "absorbing lower-order terms", "for large enough exposed rate-category parameters", "up to constants", or "with high probability" when the displayed inequalities, thresholds, and probability conversion are missing.
- Verify derivation-over-notation discipline. When notation and derivational detail conflict, require fewer helper symbols and more visible derivation. A proof is not rigorous if helper notation, bundled constants, or aliases replace the derivation that establishes boundedness, finiteness, rates, parameter dependence, cited-result assumption discharge, or implications.
- Verify that no shared-template placeholder is being treated as mathematical content in `latex_template/*.tex`, including `Paper Title`, `Statement:`, `State the strongest rigorously supported theorem`, `Do not state a stronger target`, `If a readable public corollary`, `Use this proposition only`, `Verify every technical condition from the source theorem`, `Replace this placeholder`, `Give the full mathematical derivation`, `Name Or Goal Of The Step`, `Step ID: Step Goal`, `Local Lemma Title`, `Local Hypothesis Title`, `Each appendix subsection should`, `State the local`, `Translate the full local derivation`, placeholder `\ref{...}`, or placeholder citation commands.
- Verify that public TeX does not expose audit-scaffolding phrases such as `\emph{Source.}`, `Restated statement`, `Object mapping`, `Assumption discharge`, `Conclusion used`, `Local Result Applications`, `Inputs and assumption checks`, `This result is used as follows`, or `required assumptions are supplied`. Reject these as public-TeX defects even when the underlying mathematical checks appear correct, because citations and assumption checks must be integrated into theorem-style statements and proofs.
- Verify that appendix subsections do not begin with redundant workflow or sketch-row prose such as proof ingredient lists, dependency inventories, local flow summaries, provenance narration, reviewer-style audit text, `Intended claim:`, `Depends on:`, `Assumptions used:`, `Technical challenge:`, `Output target:`, or boilerplate `assembled conclusion` text. Necessary mathematical context must appear as concise exposition or inside theorem-style statements and proofs. Treat repeated `the the` and `exact the` in public proof text as mechanical paper-readiness defects.
- Reject theorem-target drift, hidden assumption strengthening, narrowed regimes, invalid quantifier-order changes, and unsupported explicit-dependence placeholders.

### Step 4: Audit Step-Level And Local-Unit Derivations

- For any accepted step whose conclusion is used by final assembly, inspect only the step proof portions needed to verify derivational sufficiency for the final proof.
- Reuse `/proof-step-review` local rigor checks: local unit statement fidelity, proof validity, dependency discipline, target-step assembly, hidden subclaim scan, and contribution of local units to the exact step claim.
- Check that final proof use of an accepted step matches the accepted step claim and does not require a stronger local unit, extra dependency, or unstated assumption.
- Check that `latex_template/5_appendix.tex` includes enough of each accepted local unit derivation to audit the same nontrivial lines that `/proof-step-review` accepted. Inspect the actual step derivation text rather than relying on theorem-style environment counts, labels, or high-level claim coverage. Compression is blocking when it removes displayed definitions, displayed equations, inequalities, substitutions, compactness or continuity arguments, recursion/induction/invariant transitions, boundary cases, constants, radius or envelope constructions, parameter dependence, cited-result object mappings, cited-result assumption discharge, or the target-step assembly needed for line-by-line rigor review.
- A `Reviewer Verdict = PASS` is invalid unless the review compared all used accepted steps' required source derivations against the appendix proof bodies. Theorem-style environment count is not evidence of preserved rigor; a short proof body that cites a result in place of source proof work is blocking whenever the source proof body contained additional derivation. When the appendix is visibly much shorter than the accepted source derivations, do not accept based on a general assertion that all steps were inspected; either identify that the removed material is only non-proof cleanup or report the first concrete missing proof-obligation type, such as a definition, equation, inequality chain, induction step, assumption discharge, boundary check, cited-result mapping, or target assembly argument.

### Step 5: Audit Quantifiers, Modes, Constants, And Dependence

- Check quantifier order, domains, parameter qualifiers, asymptotic scope, uniformity, constants, parameter dependence, and normalization.
- Reject unexplained notation, constants, free boundedness claims, or "choose finite constants" statements whose existence or bound is not expressed from original setting quantities, translated from accepted checked objects, explicitly present as a theorem/admissibility condition, or proved by a named local result.
- Reject unproved derived invariants hidden as assumptions. This includes admissibility, good-event, stable-regime, local-validity, boundedness, recurrence, membership, or invariant packages whose truth depends on generated or realized objects and is not proved from primitive conditions.
- Check explicit-rate variables and regimes across all exposed categories: structural, data/sampling, algorithmic/horizon, regularity/stability, numerical/stochastic/approximation/modeling-error, auxiliary-tolerance, and confidence/probability dependence. Reject any silent removal or hidden-constant absorption of these dependencies unless the bridge proves it.
- Check baseline reduction when the theorem extends, perturbs, or specializes a prior theorem, dependency result, simpler regime, or limiting regime. The final theorem, corollary, or bridge must show reduction to the corresponding baseline result under the relevant specialization, or explicitly justify any conservative loss. When the baseline is an inherited theorem-facing recovery, reduction, specialization, zero-defect, exact-limit, exact/noiseless, or baseline-case conclusion, a conservative loss or weaker surrogate is target-changing and does not preserve the original target.
- Track stochastic or convergence modes: almost-sure, in-probability, in-expectation, in-Lp, and high-probability.
- Reject mode upgrades such as expectation-to-high-probability, pointwise-to-uniform, local-to-global, event-to-unconditional, or conditional-to-unconditional unless explicitly justified.

### Step 6: Audit Calculations And Cases

- Check algebra, inequalities, probability manipulations, conditioning, union bounds, concentration steps, recursion or induction calculations, and invariant propagation.
- Check WLOG, symmetry, relabeling, normalization, rescaling, and reduction arguments.
- Check boundary and degenerate cases, including zero parameters, extreme structural regimes, empty or full events, singular matrices, vanishing denominators, and excluded regimes.
- Check interchanges of limits, expectations, suprema, gradients, integrals, or conditionings.

### Step 7: Scan Hidden Subclaims And Hand-Waving

- Scan prose, calculations, citations, and assembly text for independent nontrivial claims not present as accepted steps, local units, cited results, or direct assembly implications.
- Reject gaps hidden behind "clearly", "obviously", "standard", "similarly", "by routine arguments", or informal appeals to smoothness, concentration, convexity, stability, or asymptotics.
- When a lightweight symbolic, algebraic, or numeric sanity check is feasible without creating a new required artifact, use it to confirm or refute a derivation and summarize the result in the review.

### Step 8: Localize Repair Depth

- Identify the shallowest artifact whose change can repair the rigor defect without changing accepted downstream meaning.
- Use `assembly` for final assembly or LaTeX-bundle derivation errors that do not require changing any accepted step.
- Use `step`, `sketch`, or `idea` when the derivation defect belongs inside an accepted step, the sketch decomposition or proof roadmap, or the theorem setting.

### Step 9: Write The Review

- Write `proof_review_rigor.md` using `../_shared/templates/proof-review-rigor.md`.
- Emit only diagnostic fields required by this skill; do not assign score, failure type, retry mode, or controller routing.

## Rigor Review Checks

- Exact statement fidelity: each derivation must prove the exact claim it is used for, not a stronger, weaker, or drifted statement.
- Statement self-containedness: each theorem-style statement must expose assumption basis, local conditions, and conclusion before the proof, using numbered `Assumption~\ref{assump:...}` references or named prior theorem-style results where applicable.
- Allowed-input discipline: every nontrivial line must use only `setting.md`, accepted step claims, accepted dependencies, direct assembly-only implications, or cited results already checked in accepted step artifacts.
- Local-unit discipline: each accepted local unit used by the final proof must contribute exactly the claim attributed to it.
- Logical sufficiency: intermediate conclusions must actually imply the next line and the final target claim.
- Quantifier and dependence discipline: quantifiers, constants, parameter dependence, stochastic mode, convergence mode, and uniformity must remain valid through every derivation.
- Explicit-rate discipline: rate statements must declare exposed variables, hidden-constant dependence, fixed quantities, probability mode, horizon mode, norm mode, and admissibility conditions. Simplified public rates must have a Rate Specialization Bridge proving auxiliary choices, technical condition verification, term absorption, probability conversion, and the final rate. Missing bridge or prose-only absorption is acceptance-blocking.
- Baseline-reduction discipline: extension or perturbation results must reduce to the intended baseline result under the relevant specialization when such a baseline is part of the proof context, unless the proof states and justifies a conservative loss. Inherited theorem-facing baseline/recovery conclusions are stricter: weakening or replacing them is target-changing, not a target-preserving conservative loss.
- Notation and constant provenance discipline: every nontrivial symbol, constant, event, helper object, or bounded quantity must be defined from original setting quantities, translated from accepted checked objects, explicitly present as a theorem/admissibility condition, or proved/bounded by a named local result; notation cannot hide an unproved finiteness, boundedness, or existence obligation.
- Assumption provenance discipline: theorem-facing assumptions may use primitive conditions, but derived invariants must be proved before they support an unconditional target. Conditional local hypotheses are allowed only for conditional lemmas or explicitly conditional final targets.
- Derivation-over-notation discipline: use fewer helper symbols and more visible derivation when explicit derivation lines are needed to audit the proof; notation cannot substitute for the derivation of boundedness, finiteness, rates, parameter dependence, cited-result assumption discharge, or implications.
- Case discipline: boundary, degenerate, WLOG, symmetry, normalization, and rescaling arguments must be justified or explicitly excluded by the setting.
- Hidden-subclaim discipline: broad prose or compressed calculations must not introduce unreviewed independent claims.
- Paper-ready TeX discipline: the LaTeX bundle must put substantive derivations in in-file lemma, theorem, proposition, corollary statements and proofs, normally in appendix subsections named by step goal; each subsection may contain multiple such theorem-style units and proofs, but not public claim, hypothesis, or invariant environments. Workflow references to `proof_steps/`, `review.md`, accepted step status, or internal provenance cannot substitute for a mathematical proof.
- Internal reference discipline: theorem-critical proof dependencies must use paper-ready theorem-style `\label`/`\ref` references, such as `Lemma~\ref{...}` or `Proposition~\ref{...}`. Appendix subsections, proof-step IDs, local unit IDs, and prose like "this subsection" may organize or audit the proof but must not be used as proof authority.
- Full-derivation appendix discipline: for every accepted non-atomic local unit and every local lemma, proposition, claim, theorem, corollary, hypothesis, invariant, cited-result application, or target-step assembly argument used directly or transitively in the proof of the main theorem, `latex_template/5_appendix.tex` must contain corresponding paper-facing lemma, theorem, proposition, corollary statements or proof text inside allowed proof environments with full substantive proof/justification. The appendix should use proof-obligation-preserving translation by default: it may polish workflow prose, but it must preserve the source derivation's proof-obligation content, including displayed formulas, inequality chains, substitutions, constant/radius constructions, compactness or continuity checks, recursion/induction/case reasoning, cited-result mappings, assumption discharges, and target-step assembly. Do not omit local derivations from accepted proof steps when omission would leave a gap in appendix proofs. Removing workflow labels, sketch-row fields, dependency inventories, or redundant proof-flow phrasing is allowed only when the mathematical content beneath those labels is preserved in theorem-style statements or proof text inside allowed proof environments. A short theorem-level proof that only paraphrases a long step artifact, cites a prior result in place of source proof work, gives accepted-step narration, or uses a "similar/routine/as above" shortcut is not enough for acceptance. Allow repetition compression only when one complete instance of the repeated derivation is present and each abbreviated instance cites the exact earlier displayed derivation and states the precise substitutions or unchanged steps; do not treat distinct assumptions, boundary cases, cited-result discharges, or proof obligations as repetitions. Use source-vs-appendix length only as a diagnostic trigger, not as a quota.
- Global diagnostic boundary: accepted `global_proof_review.md` permits using `global_proof.md` as diagnostic context, but neither global artifact can discharge a proof obligation or validate a final claim.

## Rigor Repair Depth Guidance

- `assembly`: final assembly or the LaTeX bundle has a derivation, synchronization, case-handling, or paper-ready self-containment error, but accepted step artifacts are sufficient as written.
- `step`: one accepted step needs a stronger or clearer local derivation under the same sketch row.
- `sketch`: the step claim, dependency list, assumptions, proof tool, output target, decomposition, or proof roadmap must change to make the derivation valid.
- `idea`: the formal target appears false, mis-scoped, or salvageable only by changing primitive assumptions, algorithm/model/procedure, theorem scope/mode/metric, exposed dependence, or success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion.

## Verdict Rules

- `PASS` requires no acceptance-blocking rigor issue, `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`.
- Do not emit `PASS` from structure alone. The reviewer must have inspected all used accepted steps' required source derivations and found that appendix proof bodies preserve the proof-obligation content needed for line-by-line rigor.
- Do not emit `PASS` for a visibly compressed appendix when preservation is only asserted. Direct source comparison must show that omitted material was non-proof cleanup or valid repetition; otherwise emit `BLOCKING` and name the first missing proof-obligation type and smallest assembly repair target.
- Do not emit `PASS` if public TeX contains forbidden appendix audit scaffolding, redundant workflow/sketch-row prose, or mechanical translation debris, if a dense dictionary-style main theorem lacks a concise reader-facing interface plus bridge, or if a readable corollary merely points back to an unreadable theorem dictionary. These are assembly-level rigor-review blockers because they prevent paper-ready auditability.
- Do not emit `PASS` if any explicit-rate gate fails: missing rate declarations, missing assumptions for exposed rate categories, missing Rate Specialization Bridge, or term absorption without inequalities.
- Do not emit `PASS` if the proof proves an unconditional target by assuming an unproved derived invariant in the main theorem, preliminaries, or final assembly.
- `BLOCKING` requires at least one numbered blocking issue, a non-`None` `Suggested Repair Depth`, and an aligned `Smallest Candidate Repair Target`.
- Repair-depth target alignment: `assembly` -> `/proof-assembly`; `step` -> `/proof-step <Step ID>`; `sketch` -> `/proof-sketch`; `idea` -> `/subagent-idea-generator`.
- For `step` depth, `/proof-step <Step ID>` names only the diagnostic producer candidate. The controller must still require a fresh accepted `/proof-step-review <Step ID>` on the repaired proof before downstream consumption.
- Use `step` when an unchanged sketch step needs stronger local derivation. Use `sketch` when the step claim, dependency, or assumption must change.
