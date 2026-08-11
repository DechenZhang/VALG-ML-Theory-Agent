---
name: proof-review-adversarial
description: Diagnostic split-mode final proof reviewer that stress-tests the weakest theorem-level and step-level claims for counterexamples or hidden gaps.
---

# Proof Review Adversarial

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

- `perspective_M/idea_N/proof_review_adversarial.md`

Required machine-readable fields:

- `Reviewer Verdict`
- `Blocking Issues`
- `Nonblocking Concerns`
- `Suggested Repair Depth`
- `Smallest Candidate Repair Target`

Do not modify proofs, sketches, step artifacts, trackers, worker logs, `proof_review.md`, or accepted results.

## Responsibilities

- Try to break the most vulnerable theorem-level and step-level claims.
- Focus on verified breaks, plausible counterexamples, hidden assumption strengthening, and risky scope or convergence-mode upgrades.
- Promote unresolved high-risk attacks to blocking issues only when they threaten acceptance.
- Emit diagnostic fields only; do not assign score, failure type, retry mode, or controller routing.
- Treat `assembly_report.md` as diagnostic assembly-status context only, not as proof evidence or authority to accept a final claim.
- Treat `global_proof.md` and `global_proof_review.md` as diagnostic context only, not as proof evidence or authority to accept a final claim.

## Workflow

### Step 1: Load The Attack Target

- Load `setting.md`, all content and support files under `latex_template/`, `assembly_report.md`, accepted sketch artifacts, valid diagnostic `global_proof.md`, accepted `global_proof_review.md`, and accepted step artifacts.
- Treat `setting.md`, accepted sketch rows, accepted step proofs/reviews, final proof artifacts, and the LaTeX bundle as attack targets; do not silently repair weak assumptions, missing cases, or drifted claims.
- Use `assembly_report.md` only to identify the reported attempted claim, assembly status, and blockers. Do not use it as proof evidence or authority to accept a final claim.
- Use `global_proof.md` only as diagnostic context for finding likely weak points, hard steps, and gap notes after confirming `global_proof_review.md` is accepted. Do not treat either global artifact as proof evidence or authority to accept a final claim.

### Step 2: Build The Attack Surface

- Identify the weakest theorem-level claims, final assembly links, LaTeX-bundle statements, accepted step claims, dependency uses, local proof units, and standard-fact invocations.
- Prioritize obligations that would invalidate the theorem if false: target alignment, scope upgrades, local-to-uniform upgrades, event-to-global upgrades, conditional-to-unconditional upgrades, convergence-mode upgrades, explicit dependence, and final assembly implications.
- Prioritize local high-risk mechanisms: PSD, curvature, coercivity, strong-convexity, Taylor or perturbation remainder bounds, invariant closure, induction, recursion, stability-radius maintenance, basin maintenance, derived-invariant discharge, dependency use, and target-step assembly.

### Step 3: Construct Stress Cases

- Test weak obligations against boundary regimes, degenerate cases, parameter extremes, assumption-minimal examples, and pathological distributions or events compatible with `setting.md`.
- Vary exposed structural, data/sampling, algorithmic/horizon, regularity/stability, numerical/stochastic/approximation/modeling-error, auxiliary-tolerance, confidence/probability, and asymptotic regimes when they appear in the proof.
- Attack notation and quantifier edges: reused symbols, changed domains, changed order of suprema and probabilities, hidden uniformity, and constants that depend on forbidden parameters.

### Step 4: Attack Theorem-Level And Assembly Claims

- Check whether the attempted theorem proves exactly the formalized target rather than a weaker, stronger, or drifted claim.
- Try to break final assembly by replacing accepted steps with their exact statements and testing whether the conclusion still follows.
- Check whether the LaTeX bundle states a stronger claim, drops assumptions, changes modes, or hides a vulnerable condition not supported by accepted step artifacts and the formalized goal.
- Check whether the LaTeX bundle is merely a workflow summary: if essential derivations are delegated to internal artifacts instead of appearing in the TeX files, treat that as an assembly-level acceptance risk.
- Search for theorem-level hidden subclaims introduced by assembly prose, broad citations, or "standard" reductions.
- Attack notation-heavy theorem statements and preliminaries. If proof-local aliases, component radii, one-off bookkeeping quantities, or helper-constant dictionaries are promoted to public theorem notation, test whether they hide missing boundedness, finiteness, rate, parameter-dependence, or assumption-discharge arguments.
- Attack notation cascades from proof steps to the public theorem. If step-local helper objects or long local dictionaries appear in the main theorem without being essential public-facing quantities, test whether the theorem remains readable and whether the helper package hides an unproved obligation.
- Attack derivation-over-notation failures. When notation and derivational detail conflict, the proof should use fewer helper symbols and more visible derivation; treat aliases or bundled constants that replace the derivation of bounds, finiteness, rates, dependence, cited-result assumption discharge, or implications as an attack surface.
- Attack notation provenance failures. Every unexplained symbol, alias, event, helper object, constant, radius, threshold, rate, margin, admissibility parameter, bounded quantity, or finite-tube quantity must be directly expressed from original setting quantities, translated from an accepted dependency or checked cited result, explicitly present as a theorem/admissibility condition, or proved/bounded by a named local result; otherwise treat it as a potential assembly or step-level break.
- Attack assumption provenance failures using the shared Assumption Provenance Contract from `../_shared/checklists/artifact-contracts.md`. Try deleting any theorem-facing admissibility, good-event, local-validity, stability, boundedness, recurrence, membership, or invariant package and replacing it with its contents; if the contents include generated-object or realized facts not proved from primitive conditions, treat this as an attack surface for unconditional targets.
- Attack explicit-rate claims using the shared Explicit Rate Contract from `../_shared/checklists/artifact-contracts.md`. Vary every exposed structural, data/sampling, algorithmic/horizon, regularity/stability, numerical/stochastic/approximation/modeling-error, auxiliary-tolerance, and confidence/probability category to test whether the public rate silently dropped a dependency or moved it into a hidden constant.
- Attack public simplifications of technical appendix rates. If a simplified main theorem or corollary lacks a Rate Specialization Bridge proving auxiliary parameter choices, technical condition verification, term absorption/simplification inequalities, probability conversion, and final hidden-constant dependence, treat it as an assembly-level attack surface.
- Attack readable corollaries that still depend on unreadable theorem-level dictionaries. A simplified public display does not neutralize a theorem-readability attack if the reader must still parse an opaque admissibility package to know the claim.
- Attack baseline reduction when a theorem extends, perturbs, or specializes a prior theorem, dependency result, simpler regime, or limiting regime. Under the relevant specialization, the new result should reduce to the corresponding baseline result unless the proof explicitly justifies a conservative loss. If the baseline is an inherited theorem-facing recovery, reduction, specialization, zero-defect, exact-limit, exact/noiseless, or baseline-case conclusion, a conservative loss or weaker surrogate is target-changing rather than preservation.

### Step 5: Attack Step-Level And Local Claims

- For vulnerable accepted steps, inspect the exact step proof, review, dependency claims, local lemma map, local derivation, cited-result applications, and target-step assembly.
- Try to break accepted local units with the local adversarial tests from `/proof-step-review`: PSD or curvature assertions, Taylor remainders, invariant or induction closure, scope upgrades, parameter-dependence claims, and illegal interchanges of limits, expectations, suprema, gradients, integrals, or conditionings.
- Scan prose, calculations, citations, and step assembly for independent nontrivial subclaims absent from the local lemma map.
- Do not re-review every line when no attack surface is present; focus on concrete falsification attempts against the weakest claims.

### Step 6: Classify Attacks

- `verified break`: a concrete counterexample, incompatible regime, invalid implication, or contradicted assumption under the current setting.
- `candidate counterexample`: a plausible stress case that appears to break the proof but needs a small amount of confirmation.
- `tentative concern`: a risky gap or missing case that may be repairable by explanation and does not currently falsify the claim.
- `nonissue`: an attempted attack neutralized by a stated assumption, accepted dependency, checked cited result, or proved local unit.
- Promote verified breaks and unresolved high-risk candidate counterexamples to `## Blocking Issues`. Keep speculative concerns nonblocking unless the proof cannot currently discharge them.

### Step 7: Localize Repair Depth

- Identify the shallowest artifact whose change can neutralize the strongest remaining attack without changing accepted downstream meaning.
- Use `assembly` only when final assembly or the LaTeX bundle overstates, drops, or miscombines already valid accepted claims.
- Use `step`, `sketch`, or `idea` when the attack breaks an accepted step, the sketch decomposition or high-level roadmap, or the theorem setting itself.

### Step 8: Write The Review

- Write `proof_review_adversarial.md` using `../_shared/templates/proof-review-adversarial.md`.
- Emit only diagnostic fields required by this skill; do not assign score, failure type, retry mode, or controller routing.

## Adversarial Review Checks

- Prefer concrete falsification attempts over broad criticism; name the attacked claim, stress case, expected failure mode, and current proof response.
- Test the weakest claims under assumption-minimal and edge regimes before accepting them as robust.
- Check whether accepted step reviews missed a hidden nontrivial subclaim, unsupported scope upgrade, illegal interchange, or boundary case.
- Check whether final assembly or the LaTeX bundle makes a claim stronger than accepted step artifacts support.
- Check whether the final theorem assumes a derived invariant that a proof should establish. For unconditional targets, generated-object membership, realized event membership, recurrence applicability, contraction, stability, boundedness, local model validity, basin/tube/core membership, and similar facts are attacks unless proved by named results from primitive conditions.
- Check whether the LaTeX bundle would be breakable by removing access to internal workflow files; a paper-ready TeX proof must still present the theorem-critical derivations.
- Check whether appendix subsections would still read like paper mathematics after removing workflow scaffolding. Proof ingredient lists, local flow summaries, dependency inventories, provenance narration, and standalone "used by" notes are attack surfaces unless converted into formal statements, proofs, or concise mathematical exposition.
- Attack the main theorem statement as a standalone claim after reading only setup and preliminaries. If the theorem uses appendix-only constants, local lemma/proposition labels, proof-step IDs, or symbols not defined before the theorem or inline in the theorem statement, treat this as an assembly-level self-containedness risk.
- Attack public appendix shape: public `claim`, `hypothesis`, or `invariant` environments and proof dependencies are assembly-level attack surfaces, because step-local units must be converted into lemma, theorem, proposition, or corollary statements with proofs. Test whether that conversion hid assumptions, cases, constants, boundary conditions, cited-result mappings, or target-step reasoning.
- Attack theorem-style statements by removing surrounding prose and the proof body. Each public theorem, lemma, proposition, or corollary must still expose its assumption basis through `Assumption~\ref{assump:...}` references or named prior theorem-style results, list specific local "if" conditions, and state the "then" conclusion; hidden assumptions or conditions are attack surfaces.
- Attack the main theorem statement for notation economy and derivation-over-notation discipline: if a reader cannot distinguish essential theorem quantities from proof-only bookkeeping, or if long helper definitions obscure the actual assumptions, conclusion, or derivations supporting boundedness, finiteness, rates, dependence, assumption discharge, or implications, treat this as an assembly-level paper-readiness risk.
- Check whether the LaTeX bundle uses numbered assumption environments with stable `\label{assump:...}` targets, theorem-style statements that cite those assumptions with `Assumption~\ref{assump:...}`, meaningful setting-derived preliminaries, a public proof sketch, appendix step-proof subsections that may each contain multiple theorem-style units, a final proof-of-main-theorem subsection, internal `\label{...}`/`\ref{...}` pairs, and BibTeX-backed external citations; missing structure is an assembly-level self-containment risk.
- Attack internal proof references by removing access to subsection titles, proof-step IDs, and local unit IDs. The proof must still identify every mathematical dependency through paper-ready theorem-style references such as `Lemma~\ref{lem:...}`, `Theorem~\ref{thm:...}`, `Proposition~\ref{prop:...}`, or `Corollary~\ref{cor:...}`. If an argument depends on "this subsection", "the previous subsection", a proof-step ID, a local unit ID, a public `Claim~`, `Hypothesis~`, or `Invariant~` reference, or a bare `\ref{...}` without naming the result type, treat it as an assembly-level attack surface.
- Attack compressed appendix proofs: for every accepted non-atomic local unit and every local lemma, proposition, claim, theorem, corollary, hypothesis, invariant, cited-result application, or target-step assembly argument used directly or transitively in the proof of the main theorem, check whether `latex_template/5_appendix.tex` contains a corresponding paper-facing lemma, theorem, proposition, corollary statement or proof text inside an allowed proof environment with full substantive proof/justification that can be attacked without opening internal workflow files. Treat missing local units, omitted local derivations that leave proof gaps, cited-result checks, boundary cases, assumption discharges, target-step assembly details, short summaries, accepted-step narration, "similar/routine/as above" shortcuts, and fake repetition compression as assembly-level self-containment risks. Repetition compression is valid only when one complete instance of the repeated derivation is present and each abbreviated instance cites the exact earlier displayed derivation and states the precise substitutions or unchanged steps.
- Attack term absorption in explicit rates. Prose-only statements that terms are lower-order, absorbed, negligible, or controlled for large enough parameters are vulnerable unless the proof gives a displayed inequality and admissibility threshold.
- Track stochastic or convergence mode distinctions: almost-sure, in-probability, in-expectation, in-Lp, and high-probability.
- Track explicit dependence on all exposed structural, data/sampling, algorithmic/horizon, regularity/stability, numerical/stochastic/approximation/modeling-error, auxiliary-tolerance, confidence/probability, constant, and asymptotic parameters.
- Track baseline-reduction behavior for extension or perturbation theorems when a meaningful baseline is present; unexplained specialized-regime degradation is an adversarial attack surface.
- Track notation and constant provenance: each new symbol, helper object, constant, event, or bounded quantity must be setting-defined, translated from an accepted checked object, explicitly present as a theorem/admissibility condition, or locally proved/bounded; unexplained notation and finite constants are adversarial attack surfaces.
- Track assumption provenance: conditional local hypotheses may support conditional lemmas, but they cannot support an unconditional final theorem unless a separate result proves them from primitive conditions.
- Accepted `global_proof_review.md` permits treating `global_proof.md` as guidance for finding likely weak points; neither global artifact can neutralize an attack or validate a final claim.

## Adversarial Repair Depth Guidance

- `assembly`: final assembly or the LaTeX bundle overstates, omits assumptions from, miscombines accepted step claims, or is not self-contained enough to serve as a paper proof.
- `step`: one accepted step breaks under a counterexample or stress case while its sketch row can remain unchanged, including a step that exported an unproved derived invariant as a theorem-facing interface.
- `sketch`: the step claim, dependency list, assumptions, proof tool, output target, decomposition, accepted roadmap, or missing derived-invariant bridge must change to neutralize the attack.
- `idea`: the formal target appears false, mis-scoped, or salvageable only by changing primitive assumptions, algorithm/model/procedure, theorem scope/mode/metric, exposed dependence, or success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion.

## Verdict Rules

- `PASS` requires no acceptance-blocking adversarial issue, `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`.
- `BLOCKING` requires at least one numbered blocking issue, a non-`None` `Suggested Repair Depth`, and an aligned `Smallest Candidate Repair Target`.
- Repair-depth target alignment: `assembly` -> `/proof-assembly`; `step` -> `/proof-step <Step ID>`; `sketch` -> `/proof-sketch`; `idea` -> `/subagent-idea-generator`.
- For `step` depth, `/proof-step <Step ID>` names only the diagnostic producer candidate. The controller must still require a fresh accepted `/proof-step-review <Step ID>` on the repaired proof before downstream consumption.
- Use the deepest repair depth needed to neutralize the attack. Do not mark a speculative concern blocking unless the proof cannot currently discharge it.
