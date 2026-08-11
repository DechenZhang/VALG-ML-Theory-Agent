---
name: proof-review-structural
description: Diagnostic split-mode final proof reviewer focused on goal alignment, dependency closure, sketch-step coverage, and assembly discipline.
---

# Proof Review Structural

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

- `perspective_M/idea_N/proof_review_structural.md`

Required machine-readable fields:

- `Reviewer Verdict`
- `Blocking Issues`
- `Nonblocking Concerns`
- `Suggested Repair Depth`
- `Smallest Candidate Repair Target`

Do not modify proofs, sketches, step artifacts, trackers, worker logs, `proof_review.md`, or accepted results.

## Responsibilities

- Audit final claim alignment against authoritative `setting.md`.
- Check theorem/subgoal architecture, dependency closure, sketch-step coverage, and accepted-step traceability.
- Verify assembly did not introduce independent unreviewed lemmas or alter accepted step statements.
- Check the LaTeX bundle for structural consistency and paper-ready self-containment.
- Emit diagnostic fields only; do not assign score, failure type, retry mode, or controller routing.
- Treat `assembly_report.md` as diagnostic assembly-status context only, not as proof evidence or authority to accept a final claim.
- Treat `global_proof.md` and `global_proof_review.md` as diagnostic context only, not as proof evidence or authority to accept a final claim.

## Workflow

### Step 1: Load Structural Inputs

- Load all content and support files under `latex_template/`, `assembly_report.md`, accepted `proof_sketch.md`, accepted `proof_sketch_review.md`, valid diagnostic `global_proof.md`, accepted `global_proof_review.md`, and accepted step proof/review artifacts for every required sketch step.
- Treat these artifacts as review targets; do not silently repair missing blocks, stale dependencies, changed statements, or synchronization defects.
- Use `assembly_report.md` only to identify the reported attempted claim, assembly status, and blockers. Do not use it as proof evidence or authority to accept a final claim.
- Use `global_proof.md` only to identify expected whole-proof structure, known hard steps, and diagnostic gaps after confirming `global_proof_review.md` is accepted. Do not use either global artifact as proof evidence, a cited result, an assumption source, or authority to accept a final claim.

### Step 2: Check Claim Integrity

- Compare the attempted claim in the LaTeX bundle against authoritative `setting.md`.
- Determine goal mode:
  - `exact-goal mode`: `setting.md` states the exact theorem claim.
  - `target-spec mode`: `setting.md` gives a theorem-ready target specification whose exact final bound, constants, or dependence were not fixed.
- In exact-goal mode, verify that the attempted claim matches the formalized goal.
- In target-spec mode, verify that the attempted claim is a concrete valid instantiation of the target quantity, claim type, active scope, success criterion, and required dependence.
- Reject structural acceptance if the attempted claim silently strengthens assumptions, narrows the regime, changes quantifier order, changes the theorem target, or leaves required dependence as placeholder text such as "up to constants" or "up to polynomial factors".

### Step 3: Check Proof Architecture

- Verify that the LaTeX bundle contains the required theorem-level structure: target theorem, named intermediate blocks, and assembly of the target theorem.
- Each named theorem-level block must have an exact statement and a clear source: accepted step artifact, direct assembly-only reasoning, or explicit blocker.
- Identify orphan theorem-level blocks: blocks not mapped to a sketch step, not used by final assembly, and not justified as direct assembly-only reasoning.
- Identify missing major transitions: places where the accepted steps do not structurally bridge to the target theorem or attempted claim.
- If the proof uses induction, recursive closure, stability-radius maintenance, basin maintenance, or invariant propagation, verify that the recurring hypothesis is represented by a named hypothesis or invariant block in the final structure.

### Step 4: Check Sketch-Step Coverage

- Map every required sketch `Step ID` to its accepted step proof/review artifacts and to the theorem-level block or assembly use in the LaTeX bundle.
- Every required sketch step must be used, or explicitly declared unnecessary with a reason that does not change the accepted sketch.
- Every final theorem-level block sourced from a step must preserve the accepted step claim, assumptions, dependency meaning, and conclusion.
- A final block must not merge multiple accepted steps in a way that hides which accepted step claim supports which part of the theorem.

### Step 5: Check Dependency Closure

- Confirm that every dependency listed by an accepted step is also accepted and available.
- Confirm that final theorem-level blocks do not use unavailable, stale, rejected, or downstream-dependent step claims.
- Check for cyclic or impossible dependency flow in the final proof architecture, including implicit cycles introduced during assembly.
- If a final block uses a step claim, verify that the accepted dependencies of that step are either cited through the step artifact or explicitly accounted for in the assembly.

### Step 6: Check Assembly Discipline

- Assembly-only reasoning may only reconcile notation, combine accepted step claims, check direct dependency closure, or prove direct implications from accepted claims.
- Mark as blocking any independent unreviewed lemma, new inequality, convergence-mode upgrade, assumption discharge, changed accepted step statement, changed step assumption, or stronger theorem-level claim introduced by assembly.
- If the final proof needs a new proof obligation not covered by accepted steps, diagnose the smallest structural repair target rather than accepting the assembly.

### Step 7: Reconcile Global Diagnostics

- Compare accepted-step coverage and final assembly against the hard steps, gaps, and coverage notes in valid `global_proof.md`.
- A hard step flagged by `global_proof.md` must be discharged by an accepted step artifact, explicitly handled by direct assembly-only reasoning, or remain visible as a blocker.
- If `global_proof.md` exposed a sketch-level gap that the final proof appears to bypass without sketch revision or accepted step proof, mark this as structural blocking.

### Step 8: Check LaTeX Bundle Synchronization

- Check that the LaTeX bundle states the supported theorem, assumptions, intermediate blocks, blockers, and completion status.
- The LaTeX bundle must not introduce stronger claims, new assumptions, unreviewed lemmas, or proof steps absent from accepted step artifacts.
- `latex_template/main.tex`, `latex_template/arxiv.sty`, `latex_template/ims.bst`, and `latex_template/reference.bib` must exist. `latex_template/main.tex` must be the compile entry using the five content files, style, and bibliography behavior.
- The five content files under `latex_template/` must be structurally self-contained: theorem-critical assumptions, meaningful notation, intermediate claims, proof sketch, and proofs must appear in the public TeX source itself.
- Check that the bundle uses the required paper-ready layout: `latex_template/1_intro.tex` contains `\section{Theoretical Setup}` with numbered `assumption` environments whose `\label{assump:...}` values preserve the stable ids from `setting.md`; `latex_template/2_preliminary.tex` contains `\section{Preliminaries}` before the theorem; `latex_template/3_main.tex` contains `\section{Main Theorem}`; `latex_template/4_proof_sketch.tex` contains `\section{Proof Sketch}`; `latex_template/5_appendix.tex` contains `\appendix`, `\section{Proof Details}`, one appendix subsection per required sketch step named by the step name or goal, and a final `\subsection{Proof of the Main Theorem}`.
- Check that the main theorem statement in `latex_template/3_main.tex` is self-contained relative to the setup and preliminaries: all notation and constants are defined in `1_intro.tex`, `2_preliminary.tex`, or inline inside the theorem before use, with explicit dependence for inline constants.
- Apply the shared Assumption Provenance Contract from `../_shared/checklists/artifact-contracts.md`. Check that theorem-facing assumptions and preliminary admissibility definitions contain only primitive conditions unless the formalized goal is explicitly conditional. Generated-object, event, local-validity, stability, boundedness, recurrence, membership, or invariant facts must be proved by named accepted-step or appendix results before use in an unconditional main theorem.
- Check main-theorem readability. If the main theorem is long, hard to read, or dominated by admissibility dictionaries, then `latex_template/3_main.tex` must also contain a readable simplified theorem or corollary under domain-appropriate theorem-local simplifying assumptions that are explicitly stated and bridged. Mark as blocking when a dense technical theorem has no such readable simplified theorem/corollary.
- Treat a readable corollary as insufficient when it still depends on an unreadable theorem-level admissibility dictionary. The public theorem needs a concise reader-facing interface; technical dictionaries should live in named appendix theorem-style results with a bridge.
- Apply the shared Explicit Rate Contract from `../_shared/checklists/artifact-contracts.md` to every public explicit rate. Check that exposed variables, hidden-constant dependence, fixed quantities, probability mode, horizon mode, norm mode, and admissibility conditions are structurally present in the theorem or corollary.
- If `latex_template/3_main.tex` states a simplified explicit rate while `latex_template/5_appendix.tex` contains a more technical rate, check that the public theorem shape is valid: either a self-contained bridge proof appears in `3_main.tex`, or a short corollary in `3_main.tex` states the auxiliary choices and cites a named appendix Rate Specialization Bridge proposition.
- Mark as blocking any mismatch between main theorem and appendix theorem scope, quantifiers, hidden constants, exposed rate-category conditions, probability mode, horizon mode, norm mode, or exposed dependencies. The public theorem cannot silently drop appendix hypotheses or rate variables.
- Check theorem-style statement shape across `latex_template/3_main.tex` and `latex_template/5_appendix.tex`: each public theorem, lemma, proposition, or corollary must be self-contained and state its assumption basis with numbered `Assumption~\ref{assump:...}` references or named prior theorem-style results, then any local "if" conditions, then the "then" conclusion. Mark as blocking if assumptions, regimes, parameter restrictions, or conclusions are only implicit in surrounding prose, subsection titles, proof-step IDs, local unit IDs, or proof text.
- Mark as blocking if `latex_template/5_appendix.tex` uses public `claim`, `hypothesis`, or `invariant` environments, or public `Claim~`, `Hypothesis~`, or `Invariant~` proof dependencies. Local proof-step claims, hypotheses, and invariants must be converted into lemma, theorem, proposition, or corollary statements with proofs when they appear in the public appendix.
- Mark as blocking if the main theorem statement refers to appendix-local lemmas, propositions, claims, corollaries, hypotheses, invariants, step-assembly results, proof-step IDs, or constants introduced only in `5_appendix.tex`.
- Check that each appendix subsection may contain multiple theorem-style units and is not constrained to one lemma or proposition per step.
- Check that visible appendix subsections and theorem-style titles use mathematical public names, not workflow labels such as `unit 001`, `unit_001`, `target assembly`, `Target-Step Assembly`, `target claim`, `proof specification`, or `Cited Result Applications`. Stable `\label{...}` values may keep step/unit IDs for traceability.
- Mark as blocking if public TeX exposes audit-scaffolding phrases such as `\emph{Source.}`, `Restated statement`, `Object mapping`, `Assumption discharge`, `Conclusion used`, `Local Result Applications`, `Inputs and assumption checks`, `This result is used as follows`, or `required assumptions are supplied`. Cited results and assumption checks must be integrated into theorem-style statements and proofs, not standalone audit blocks.
- Mark as blocking if appendix subsections expose redundant workflow or sketch-row prose such as proof ingredient lists, dependency inventories, local proof-flow summaries, provenance narration, reviewer-style audit text, standalone "used by" explanations, `Intended claim:`, `Depends on:`, `Assumptions used:`, `Technical challenge:`, `Output target:`, or boilerplate `assembled conclusion` text instead of theorem-style statements, proofs, or concise mathematical exposition. Treat repeated `the the` and `exact the` in public proof text as mechanical paper-readiness defects.
- Compare every accepted non-atomic local unit and every local lemma, proposition, claim, theorem, corollary, hypothesis, invariant, cited-result application, or target-step assembly argument used directly or transitively in the proof of the main theorem against its corresponding paper-facing lemma, theorem, proposition, corollary statement or proof text inside an allowed proof environment with full substantive proof/justification in `latex_template/5_appendix.tex`. This comparison must inspect the actual source derivation text, not only theorem-style environment counts, labels, or high-level claim coverage. Do not permit omission of local derivations that leaves a gap in appendix proofs. Each required step's `## Target-Step Assembly` must also be translated in that step's appendix subsection as concluding proof text inside an allowed proof environment unless it is a genuinely reusable bridge.
- Mark as blocking if any required accepted local unit, cited-result restatement needed by that unit, target-step assembly, boundary case, assumption discharge, or substantive derivation is missing, replaced by a short summary, provenance note, accepted-step narration, citation-only proof, "similar/routine/as above" shortcut, or statement that the step was accepted. The appendix should preserve the source proof's mathematical order and carry over displayed definitions, displayed equations, inequality chains, substitutions, constants, radius or envelope constructions, compactness or continuity arguments, recursion or induction transitions, case reasoning, boundary checks, cited-result object mappings, and assumption-discharge steps. Allow repetition compression only when one complete instance of the repeated derivation is present and each abbreviated instance cites the exact earlier displayed derivation and states the precise substitutions or unchanged steps; do not treat distinct assumptions, boundary cases, cited-result discharges, or proof obligations as repetitions.
- A structural `PASS` is invalid unless the review checked every used accepted step's required source proof sections against the appendix proof bodies. Theorem-style environment count is not evidence of structural coverage when the proof bodies drop source definitions, inequalities, constants, induction steps, boundary cases, cited-result checks, or target-step assembly reasoning.
- Use source-vs-appendix length only as a diagnostic trigger, not as a quota. A plainly much shorter appendix subsection is acceptable only when the omitted material is workflow prose, sketch-row metadata, dependency inventory, exact duplicate setup, tedious restatement, redundant notation explanation, or genuine repetition handled under the repetition rule; it is blocking when the shortness comes from removing proof-obligation content.
- Mark as blocking if a proof argument uses an appendix subsection, proof-step ID, local unit ID such as `unit_001`, or a public claim/hypothesis/invariant reference as mathematical authority. Subsections may organize the appendix, but proof dependencies must cite public theorem-style results or numbered assumptions with paper-ready references such as `Assumption~\ref{assump:...}`, `Lemma~\ref{lem:...}`, `Theorem~\ref{thm:...}`, `Proposition~\ref{prop:...}`, or `Corollary~\ref{cor:...}`.
- Check that `latex_template/2_preliminary.tex` only introduces useful notation explicitly derived from original setting quantities, that each new notation states what setting objects define it and why it is introduced, and that each preliminary notation is needed to state or read the main theorem. Proof-only shorthand and one-off/non-conceptual constants belong in the relevant local proof or main theorem statement, not in preliminaries.
- Check notation economy and provenance in public TeX. Preliminaries should contain only stable, reusable notation expressed from original setting quantities and needed to read the theorem; proof-local aliases, component radii, one-off bookkeeping quantities, and long helper-constant dictionaries should be in appendix derivations or theorem-style lemmas, not promoted to the public preliminaries or main theorem statement.
- Check public-surface discipline from steps to theorem. Step-local helper objects should be classified as `public-facing`, `appendix-local`, or `proof-local`; only essential public-facing objects should propagate into the main theorem. If proof-local dictionaries leak into theorem statements, route to assembly unless the step interface itself must change.
- Check assumption-provenance discipline from steps to theorem. If an accepted step exported a theorem-facing interface that treats an unproved derived invariant as an assumption, route to `step` or `sketch`; if assembly merely exposed a valid derived conclusion as an assumption instead of a result, route to `assembly`.
- Check derivation-over-notation discipline in public TeX. When notation and derivational detail conflict, require fewer helper symbols and more visible derivation. Mark as blocking when heavy notation, helper constants, or aliases replace the visible derivation needed to verify boundedness, finiteness, rates, parameter dependence, cited-result assumption discharge, implications, or step-to-theorem assembly.
- Check term absorption structure for explicit rates. Each dropped, dominated, or absorbed term must be attached to a displayed inequality and stated admissibility threshold in `3_main.tex` or the named appendix bridge proposition. Mark prose-only absorption as an assembly blocker.
- Check baseline reduction when a theorem extends, perturbs, or specializes a prior theorem, dependency result, simpler regime, or limiting regime. The public theorem, corollary, or bridge must state how it reduces to the corresponding baseline result under the relevant specialization, or justify any conservative loss. When the baseline is an inherited theorem-facing recovery, reduction, specialization, zero-defect, exact-limit, exact/noiseless, or baseline-case conclusion, a conservative loss or weaker surrogate is target-changing and does not preserve the original target.
- Check notation and constant provenance. Every public symbol, constant, radius, threshold, rate, margin, admissibility parameter, bounded quantity, finite-tube quantity, event, or helper object must be directly defined from original setting quantities, translated from an accepted dependency or checked cited result, explicitly present as a theorem/admissibility condition, or proved/bounded by a named public lemma, theorem, proposition, corollary, or complete proof text inside an allowed proof environment. Mark as blocking any free boundedness claim, unexplained "choose finite constants" statement, notation not expressible from original setting quantities without a derivation, or theorem condition that hides a proof obligation behind notation.
- Mark as blocking any theorem-facing package called admissible, good, verified, stable, regular, local-valid, or similar when the package includes unproved derived invariants and the final target is not explicitly conditional.
- Check that internally referenced theorem-style results and navigational sections have unique `\label{...}` entries and are cited with `\ref{...}`, not external citation commands. Mathematical proof dependencies must name the result type in prose, for example `Lemma~\ref{lem:...}` or `Proposition~\ref{prop:...}`; section references, bare `\ref{...}` references, proof-step IDs, and local unit IDs must not replace theorem-style proof references in mathematical arguments.
- Mark as blocking any malformed public-TeX command fragment such as bare `ef{...}`, `ref{...}`, `cite{...}`, `citep{...}`, or `citet{...}` without a leading backslash, any duplicate label, any unresolved reference or citation after compilation when logs are available, or any visible empty References section when the TeX bundle uses no external citation commands.
- Check that the LaTeX bundle has fully instantiated the shared template: no placeholder title (`Paper Title`), placeholder theorem statement (`Statement:` or `State the strongest rigorously supported theorem`), placeholder theorem instruction (`Do not state a stronger target`), placeholder bridge instruction (`If a readable public corollary`, `Use this proposition only`, or `Verify every technical condition from the source theorem`), placeholder subsection title (`Name Or Goal Of The Step` or `Step ID: Step Goal`), local-unit placeholder (`Local Lemma Title`, `Local Hypothesis Title`), instructional filler (`Replace this placeholder`, `Give the full mathematical derivation`, `Each appendix subsection should`, `State the local`, `Translate the full local derivation`), placeholder `\ref{...}`, placeholder `\ref{assump:example}`, or placeholder citation command remains in `latex_template/*.tex`.
- Mark as blocking if a required proof step is represented only by workflow provenance, branch-local file paths, reviewer decisions, `proof_steps/...`, `review.md`, "accepted step" narration, or any other instruction to inspect internal artifacts instead of an in-file theorem-style statement and proof.
- If the assembly is partial or blocked, the LaTeX bundle must not present the unresolved target as proved.

### Step 9: Write The Diagnostic Review

- Write `proof_review_structural.md` using `../_shared/templates/proof-review-structural.md`.
- Keep the review diagnostic: emit `Reviewer Verdict`, `Blocking Issues`, `Nonblocking Concerns`, `Suggested Repair Depth`, and `Smallest Candidate Repair Target` only.
- Do not assign score, final failure type, retry mode, or controller routing.

## Structural Repair Depth Guidance

- Use `assembly` for layout defects, proof/LaTeX-bundle synchronization defects, missing support files, missing numbered assumptions, invalid preliminary notation, missing appendix step-proof sections, invalid internal label/ref structure, missing paper-ready TeX self-containment, direct composition gaps, or assembly-only presentation issues that can be fixed without changing accepted step artifacts.
- Use `step` when one accepted step proof/review artifact is missing, stale, structurally invalid, or insufficient under an unchanged sketch row.
- Use `sketch` when the accepted sketch has a missing or wrong step, dependency row, assumption, intended output target, coverage item, or globally incoherent proof roadmap.
- Use `idea` only when the structural problem shows the setting or target itself is mis-scoped or cannot be repaired without changing primitive assumptions, algorithm/model/procedure, theorem scope/mode/metric, exposed dependence, or success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion.

## Verdict Rules

- `PASS` requires no acceptance-blocking structural issue, `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`.
- Do not emit `PASS` from subsection coverage, labels, or theorem-style environment counts alone. The reviewer must have inspected all used accepted steps and confirmed that appendix proof bodies preserve the required proof-obligation content.
- Do not emit `PASS` if public TeX contains forbidden appendix audit scaffolding, redundant workflow/sketch-row prose, or mechanical translation debris, if a dense dictionary-style main theorem lacks a concise reader-facing interface plus bridge, or if a readable corollary merely points back to an unreadable theorem dictionary. These are assembly-level structural blockers.
- Do not emit `PASS` if the main theorem/corollary and appendix theorem have mismatched explicit-rate scope, quantifiers, exposed dependencies, probability mode, horizon mode, norm mode, hidden constants, or assumptions, or if a simplified public explicit rate lacks the required Rate Specialization Bridge.
- Do not emit `PASS` if an unconditional main theorem assumes unproved derived invariants through an admissibility, good-event, local-validity, stability, recurrence, boundedness, membership, or invariant condition.
- `BLOCKING` requires at least one numbered blocking issue, a non-`None` `Suggested Repair Depth`, and an aligned `Smallest Candidate Repair Target`.
- Repair-depth target alignment: `assembly` -> `/proof-assembly`; `step` -> `/proof-step <Step ID>`; `sketch` -> `/proof-sketch`; `idea` -> `/subagent-idea-generator`.
- For `step` depth, `/proof-step <Step ID>` names only the diagnostic producer candidate. The controller must still require a fresh accepted `/proof-step-review <Step ID>` on the repaired proof before downstream consumption.
- Use the smallest repair depth that fixes the structural issue without changing unrelated accepted work.
