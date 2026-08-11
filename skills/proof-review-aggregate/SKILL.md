---
name: proof-review-aggregate
description: Aggregate specialized split-mode proof reviews into the sole controller-facing final proof_review.md with score, failure type, critical issues, next action, and retry mode.
---

# Proof Review Aggregate

Use this internal final-review aggregator after all four specialized reviewers complete and their artifacts pass contract gates in the upgraded split workflow.

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
- `perspective_M/idea_N/proof_review_structural.md`
- `perspective_M/idea_N/proof_review_rigor.md`
- `perspective_M/idea_N/proof_review_citation.md`
- `perspective_M/idea_N/proof_review_adversarial.md`

Output:

- `perspective_M/idea_N/proof_review.md`

Do not modify proofs, sketches, step artifacts, specialized reviews, trackers, worker logs, or accepted results. In upgraded split mode, this is the only skill that writes `proof_review.md`.

## Responsibilities

- Validate the four specialized review artifacts against their machine-readable contracts.
- Compare the final attempted claim against authoritative `setting.md`.
- Combine specialized findings into exactly one controller-facing decision.
- Select the deepest blocking issue and the smallest retry target supported by the controller.
- Emit `Score`, `Failure Type`, `Critical Issues`, `Suggested Next Action`, and `Retry Mode`.

Specialized review artifacts, `global_proof.md`, and `global_proof_review.md` are diagnostic inputs. They do not prove the theorem and do not directly update trackers or route retries.

## Workflow

### Step 1: Load Aggregate Inputs

- Load `setting.md`, all content and support files under `latex_template/`, `assembly_report.md`, accepted `proof_sketch.md`, accepted `proof_sketch_review.md`, valid diagnostic `global_proof.md`, accepted `global_proof_review.md`, accepted step proof/review artifacts, and all four specialized reviews.
- Treat `setting.md` as the authoritative source for the formalized goal.
- If `setting.md` records source-alignment, progress-type, or materiality metadata, apply the Source-Direction Fidelity Contract from `../_shared/checklists/artifact-contracts.md` as a final-claim labeling and alignment check.
- Treat specialized review artifacts, `global_proof.md`, and `global_proof_review.md` as diagnostic inputs only. They do not prove the theorem and do not directly update trackers or route retries.

### Step 2: Validate Specialized Review Contracts

- Confirm the controller artifact gate has passed all four specialized reviews: structural, rigor, citation, and adversarial.
- If any specialized review artifact is missing or contract-invalid, stop and ask the controller to rerun or hand off only that specialized reviewer. Do not write or overwrite `proof_review.md` from invalid diagnostic inputs.
- For each specialized review, validate:
  - `Reviewer Verdict` is exactly the raw token `PASS` or `BLOCKING`, with no Markdown code formatting, quotes, bullets, or surrounding prose.
  - `PASS` has raw-token `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`, with no Markdown code formatting, quotes, bullets, or surrounding prose.
  - `BLOCKING` has at least one numbered blocking issue, non-`None` `Suggested Repair Depth`, and an aligned repair target.
  - `Suggested Repair Depth` is one of the raw tokens `None`, `assembly`, `step`, `sketch`, or `idea`.
  - `Smallest Candidate Repair Target` is aligned with the repair depth and controller-supported targets.

### Step 3: Run Aggregate Contract Checks

- Check that `assembly_report.md` has a valid completion status and that the LaTeX bundle is consistent with it and does not present unresolved blockers as proved. If `assembly_report.md` is missing or contract-invalid, set `Failure Type = PROOF_ASSEMBLY_FLAW`, `Suggested Next Action = /proof-assembly`, and `Retry Mode = repair_assembly`.
- If `assembly_report.md` has `Status = PARTIAL_BLOCKED`, treat its blockers as aggregate assembly blockers and route to `/proof-assembly` unless the report or public bundle shows the smallest valid repair target is `/proof-step <Step ID>` or `/proof-sketch`.
- Check that the LaTeX bundle is self-contained enough to be a paper-ready proof and does not introduce stronger claims, new assumptions, or unreviewed proof material.
- Run the public-TeX compile/support gate: `latex_template/main.tex` must compile from inside `latex_template/` using the five content files and style; `latex_template/arxiv.sty`, `latex_template/ims.bst`, and `latex_template/reference.bib` must exist. When external citations are used, the compile entry must use `reference.bib` and `ims.bst`; when no external citations are used, the public output must not show a visible empty References section.
- Run the public-TeX structure gate: `latex_template/1_intro.tex` must contain `\section{Theoretical Setup}` with numbered `assumption` environments, each with a unique stable `\label{assump:...}` that preserves an assumption id from `setting.md`; `latex_template/2_preliminary.tex` must contain `\section{Preliminaries}` before the theorem and only useful notation explicitly derived from original setting quantities with what/why/main-theorem-use explanations; `latex_template/3_main.tex` must contain `\section{Main Theorem}`; `latex_template/4_proof_sketch.tex` must contain `\section{Proof Sketch}`; and `latex_template/5_appendix.tex` must contain `\appendix`, `\section{Proof Details}`, appendix subsections for required sketch steps named by step name or goal, allow multiple theorem-style units per subsection, and end with a final `\subsection{Proof of the Main Theorem}`.
- Run the main-theorem self-containedness gate: the theorem in `latex_template/3_main.tex` may use only notation defined in `latex_template/1_intro.tex`, numbered assumptions cited as `Assumption~\ref{assump:...}` or `Assumptions~\ref{assump:...}`, `latex_template/2_preliminary.tex`, or constants/functions fully defined inline inside the theorem statement before use with explicit dependence. Reject aggregate acceptance if the theorem refers to appendix-local results, proof-step IDs, step-local constants, or local-proof labels such as `lem:`, `prop:`, `claim:`, `cor:`, `hyp:`, `inv:`, or `app:`.
- Run the assumption-provenance gate from `../_shared/checklists/artifact-contracts.md`. Reject aggregate acceptance if an unconditional public theorem or preliminary theorem-facing package assumes generated-object, event, local-validity, stability, boundedness, recurrence, membership, or invariant facts that are not primitive conditions and are not proved by named accepted-step, theorem-level, or appendix results before use.
- Run the main-theorem compactness/readability gate: if `latex_template/3_main.tex` retains a long or hard-to-read technical theorem dominated by admissibility dictionaries, then it must also contain a readable simplified theorem or corollary under domain-appropriate theorem-local simplifying assumptions that are explicitly stated and bridged. Reject aggregate acceptance for a dense technical theorem with no readable simplified theorem/corollary, even if all specialized reviewers pass.
- Reject aggregate acceptance when a readable corollary still depends on an unreadable theorem-level admissibility dictionary. The public theorem needs a concise reader-facing interface, and technical dictionaries must be moved into named appendix theorem-style results with a bridge when they are too large for the theorem statement.
- Run the public-appendix-shape gate: `latex_template/5_appendix.tex` may use only lemma, theorem, proposition, corollary, and proof environments for public theorem-style proof content, apart from appendix headings and concise mathematical exposition needed to introduce a result. Reject aggregate acceptance if the public appendix uses `claim`, `hypothesis`, or `invariant` environments or public `Claim~`, `Hypothesis~`, or `Invariant~` proof dependencies. Accepted step-local claims, hypotheses, and invariants must be converted into lemma, theorem, proposition, or corollary statements with proofs, or integrated into proof text inside allowed proof environments.
- Run the theorem-style statement-shape gate: every public theorem, lemma, proposition, or corollary in `latex_template/3_main.tex` and `latex_template/5_appendix.tex` must be self-contained and state its assumption basis using `Assumption~\ref{assump:...}` / `Assumptions~\ref{assump:...}` references or named prior theorem-style results, list any local "if" conditions, and state the "then" conclusion before the proof. Reject aggregate acceptance when assumptions, regimes, parameter restrictions, or conclusions are only implicit in surrounding prose, subsection titles, proof-step IDs, local unit IDs, or proof text.
- Run the notation-economy, notation-provenance, derivation-over-notation, and constant-provenance gate: public preliminaries and the main theorem must avoid proof-local aliases, component radii, one-off bookkeeping quantities, and long helper-constant dictionaries unless they are essential public objects. When notation and derivational detail conflict, require fewer helper symbols and more visible derivation. Every public symbol, constant, radius, threshold, rate, margin, admissibility parameter, bounded quantity, finite-tube quantity, event, or helper object must be directly defined from original setting quantities, translated from an accepted dependency or checked cited result, explicitly present as a theorem/admissibility condition, or proved/bounded by a named local result. Reject aggregate acceptance for unexplained finite constants, free boundedness claims, notation not expressible from original setting quantities without a derivation, notation that hides proof obligations, or helper notation that replaces the derivation needed to audit boundedness, finiteness, rates, parameter dependence, cited-result assumption discharge, or implications.
- Reject aggregate acceptance when notation or an admissibility package hides an unproved derived invariant behind names such as verified, admissible, good, stable, regular, local-valid, recurrent, bounded, core, tube, basin, or membership. For explicitly conditional final targets, require the attempted claim and review to state the conditional scope.
- Run the proof-step notation-surface gate: verify that step helper objects are classified as `public-facing`, `appendix-local`, or `proof-local` when introduced, and reject aggregate acceptance when proof-local or appendix-local dictionaries leak into the main theorem without being essential public quantities. If the accepted step interface itself exported too much notation, route to `/proof-step`; if assembly promoted nonpublic helper objects unnecessarily, route to `/proof-assembly`.
- Run the proof-step assumption-provenance gate: verify that any theorem-facing derived invariant used by final assembly is proved by an accepted step or appendix result. If assembly wording is the only problem, route to `/proof-assembly`; if a step exported an unproved derived invariant, route to `/proof-step <Step ID>`; if the sketch lacks a bridge step, route to `/proof-sketch`.
- Run the explicit-rate gate from `../_shared/checklists/artifact-contracts.md`. Whenever the user request, setting, sketch, proof, appendix theorem, main theorem, or corollary exposes an explicit rate, require the public rate to declare exposed variables, hidden-constant dependence, fixed quantities, probability mode, horizon mode, norm mode, admissibility conditions, and auxiliary tolerances. Reject aggregate acceptance when any required structural, data/sampling, algorithmic/horizon, regularity/stability, numerical/stochastic/approximation/modeling-error, auxiliary-tolerance, or confidence/probability dependence is silently dropped or moved into an undeclared hidden constant.
- Run the Rate Specialization Bridge gate. If `latex_template/3_main.tex` states a simplified explicit rate derived from a more technical appendix theorem, require one of the allowed public shapes: a self-contained corollary in `3_main.tex` with the bridge proof included there, or a short corollary in `3_main.tex` that states the auxiliary choices and cites a named appendix Rate Specialization Bridge proposition. The bridge must prove auxiliary parameter choice, technical condition verification, term absorption/simplification inequalities, probability conversion, and final rate statement with final hidden-constant dependence.
- Run the baseline-reduction gate when a theorem extends, perturbs, or specializes a prior theorem, dependency result, simpler regime, or limiting regime. Require the theorem, corollary, or bridge to show reduction to the corresponding baseline result under the relevant specialization, or to state and justify any conservative loss. When the baseline is an inherited theorem-facing recovery, reduction, specialization, zero-defect, exact-limit, exact/noiseless, or baseline-case conclusion, a conservative loss or weaker surrogate is target-changing and cannot count as preserving the original target.
- Reject aggregate acceptance for prose-only term absorption or simplification. Every dropped, dominated, lower-order, or absorbed term in an explicit rate needs a displayed inequality and admissibility threshold under the public assumptions or in the named bridge.
- Run the appendix full-derivation coverage gate as an exhaustive source-to-appendix audit. For every used accepted step, inspect that step's source proof body under `## Local Derivation`, every invoked `## Cited Result Applications`, and `## Target-Step Assembly` against the matching `latex_template/5_appendix.tex` subsection. Representative steps, handpicked derivation blocks, sampled local units, theorem-style environment counts, labels, high-level claim coverage, specialized `PASS` artifacts, and assembly claims are not enough for aggregate acceptance.
- For every accepted non-atomic local unit and every local lemma, proposition, claim, theorem, corollary, hypothesis, invariant, cited-result application, or target-step assembly argument used directly or transitively in the proof of the main theorem, require corresponding paper-facing lemma, theorem, proposition, corollary statements or proof text inside allowed proof environments with full substantive proof/justification in `latex_template/5_appendix.tex`; each required step's `## Target-Step Assembly` must also be translated in that step's appendix subsection as concluding proof text inside an allowed proof environment unless it is a genuinely reusable bridge. Reject aggregate acceptance if local derivations are omitted in a way that leaves appendix proof gaps, or if detailed local derivations are replaced by short summaries, provenance notes, accepted-step narration, citation-only proofs, "similar/routine/as above" shortcuts, or statements that the step was accepted. The appendix must preserve proof-obligation content such as displayed definitions, displayed equations, inequality chains, substitutions, constants, radius/envelope constructions, compactness or continuity arguments, recursion/induction/case reasoning, boundary checks, cited-result object mappings, assumption-discharge steps, and target-step assembly arguments. Allow repetition compression only when one complete instance of the repeated derivation is present and each abbreviated instance cites the exact earlier displayed derivation and states the precise substitutions or unchanged steps; do not treat distinct assumptions, boundary cases, cited-result discharges, or proof obligations as repetitions.
- Treat severe compression as a mandatory audit trigger. If one step appendix subsection, multiple step subsections, or the whole appendix is plainly much shorter than the corresponding required source sections, accept only after direct source comparison accounts for omitted material as workflow prose, sketch-row metadata, dependency inventory, exact duplicate setup, non-proof restatement, or genuine repetition handled under the repetition rule. A broad statement that coverage was inspected is not enough. Otherwise reject aggregate acceptance.
- Any aggregate review based on representative comparison, spot checking, or sampled appendix coverage must reject acceptance. Set `Failure Type = PROOF_ASSEMBLY_FLAW`, `Suggested Next Action = /proof-assembly`, and `Retry Mode = repair_assembly`.
- Specialized `PASS` artifacts and proof-assembly claims are diagnostic inputs only. Even when all specialized reviewers pass, the aggregate reviewer must independently audit all used steps for source-to-appendix coverage and reject acceptance when proof bodies are compressed or any required source unit is unaccounted for. A specialized `PASS` cannot override visible appendix compression that was accepted only by assertion rather than actual source comparison.
- When an appendix is visibly shorter because proof-obligation content was removed, or when severe compression remains unexplained by direct source comparison, set `Failure Type = PROOF_ASSEMBLY_FLAW` and route to `/proof-assembly`. Do not accept based on subsection coverage, labels, theorem-style environment counts, assembly claims, or specialized `PASS` tokens alone. When possible, name the first concrete missing proof-obligation type, such as a definition, equation, inequality chain, induction step, assumption discharge, boundary check, cited-result mapping, or target assembly argument.
- Run the public-TeX citation/reference gate: every external citation key used by `\cite{...}`, `\citep{...}`, or `\citet{...}` must appear in `latex_template/reference.bib`; internal references must use unique `\label{...}` and `\ref{...}` pairs; reject duplicate labels, unresolved refs/citations after compilation when logs are available, malformed command fragments such as bare `ef{...}`, `ref{...}`, `cite{...}`, `citep{...}`, or `citet{...}` without a leading backslash, and internal proof references cited with external citation commands.
- Run the theorem-style proof-reference gate: reject aggregate acceptance if a proof argument relies on an appendix subsection, proof-step ID, local unit ID such as `unit_001`, or a public claim/hypothesis/invariant reference as mathematical authority. Subsections may be referenced only for navigation; proof dependencies must cite named theorem-style results or numbered assumptions in paper-ready form, such as `Assumption~\ref{assump:...}`, `Lemma~\ref{lem:...}`, `Theorem~\ref{thm:...}`, `Proposition~\ref{prop:...}`, or `Corollary~\ref{cor:...}`. Bare `\ref{...}` references are not enough when the reference is a mathematical proof dependency because the prose must name the result type.
- Run the public-TeX provenance gate across `latex_template/*.tex`: reject aggregate acceptance if theorem-critical proof content is replaced by branch-local file paths, reviewer decisions, `proof_steps/...`, `proof_steps\`, `review.md`, accepted-step status, `accepted \texttt{step`, `global_proof.md`, `global_proof_review.md`, `proof_sketch.md`, `proof_sketch_review.md`, or other workflow provenance. Also reject visible public theorem titles or proof prose that expose workflow markers such as `unit 001`, `unit_001`, `target assembly`, `Target-Step Assembly`, `target claim`, `proof specification`, or `Cited Result Applications`; stable labels may retain step/unit IDs. Do not reject the required public template file path `latex_template/4_proof_sketch.tex` only because of its filename.
- Run the public-TeX appendix hygiene gate across `latex_template/*.tex`: reject aggregate acceptance if public TeX exposes audit-scaffolding phrases such as `\emph{Source.}`, `Restated statement`, `Object mapping`, `Assumption discharge`, `Conclusion used`, `Local Result Applications`, `Inputs and assumption checks`, `This result is used as follows`, or `required assumptions are supplied`. Cited results, object mappings, and assumption discharges must be integrated into lemma, theorem, proposition, corollary statements or proof text inside allowed proof environments with citations inside statements/proofs, not standalone audit blocks. This is an aggregate blocker even when specialized reviewers pass.
- Also reject aggregate acceptance if appendix subsections expose redundant workflow or sketch-row prose such as proof ingredient lists, dependency inventories, local proof-flow summaries, local result-flow summaries, provenance narration, standalone "used by" explanations, `Intended claim:`, `Depends on:`, `Assumptions used:`, `Technical challenge:`, `Output target:`, or boilerplate `assembled conclusion` text instead of theorem-style statements, proofs, or concise mathematical exposition. Treat mechanical prose defects such as repeated `the the` or `exact the` as paper-readiness blockers when they appear in public proof text.
- Run the public-TeX template-instantiation gate across `latex_template/*.tex`: reject aggregate acceptance if shared-template placeholders or instructional filler remain, including `Paper Title`, `Statement:`, `State the strongest rigorously supported theorem`, `Do not state a stronger target`, `If a readable public corollary`, `Use this proposition only`, `Verify every technical condition from the source theorem`, `Replace this placeholder`, `Give the full mathematical derivation`, `Name Or Goal Of The Step`, `Step ID: Step Goal`, `Local Lemma Title`, `Local Hypothesis Title`, `Each appendix subsection should`, `State the local`, `Translate the full local derivation`, placeholder `\ref{...}`, placeholder `\ref{assump:example}`, or placeholder citation commands such as `\citep{...}`.
- Check that accepted step coverage remains traceable from the accepted sketch through step artifacts to final assembly.
- Compare the attempted claim against authoritative `setting.md`, including quantifiers, regimes, constants, dependence, normalization, and theorem target.
- When source-direction metadata is present, compare the attempted claim against the recorded progress type and materiality. A rigorous partial, conditional, obstruction, or diagnostic result may be accepted only if the final review states that classification consistently and does not imply that the full source target is solved unless the progress type is `full`.
- If aggregate checks find a blocker not already reported by a specialized review, record it as an aggregate contract blocker with the smallest aligned repair depth.

### Step 4: Normalize Findings

- Convert every blocking specialized finding and aggregate contract blocker into a unified issue record with source reviewer, location, defect, downstream effect, suggested repair depth, and candidate target.
- Preserve the specialized review's stated repair depth unless an aggregate contract check proves that a deeper repair is necessary.
- Treat nonblocking concerns as context for `## Audit Summary`; do not route retries from nonblocking concerns.
- If specialized reviewers disagree, resolve by the deepest issue that must be fixed for acceptance, not by vote count.

### Step 5: Apply The Acceptance Gate

- Emit `Failure Type = ACCEPTED` only when all four specialized reviews pass, aggregate contract checks find no blocker, the LaTeX bundle is complete and paper-ready, and the formalized goal is satisfied. Forbidden appendix audit scaffolding, redundant workflow/sketch-row prose, mechanical translation debris, and a dense dictionary-style main theorem without a concise reader-facing interface plus bridge are aggregate contract blockers even if all specialized reviewers pass.
- Explicit-rate and baseline-reduction gate failures are aggregate contract blockers even if all specialized reviewers pass. Missing rate declarations, missing assumptions for exposed rate categories, missing Rate Specialization Bridge, mismatched public/appendix rate scope, term absorption without inequalities, or unexplained failure to reduce to an applicable baseline result must route at least to `/proof-assembly`.
- If any specialized review is `BLOCKING` or any aggregate contract blocker remains, do not accept even if other reviewers pass.
- Assumption-provenance gate failures are aggregate contract blockers even if all specialized reviewers pass. Missing derived-invariant bridges must route at least to `/proof-assembly`, and to `/proof-step` or `/proof-sketch` when the accepted step interface or roadmap is the source of the flaw.
- Acceptance must use `Suggested Next Action = None`, `Retry Mode = none`, and `Critical Issues = None`.

### Step 6: Select The Controlling Blocker

- If blockers remain, select the deepest repair depth using `idea > sketch > step > assembly`.
- For ties at the same depth, choose the smallest local repair target that can clear the controlling blocker without changing unrelated accepted work.
- A roadmap-level missing bridge is `sketch` depth when a same-setting sketch repair could plausibly add or reorganize bridge steps, dependency interfaces, conditional local lemmas with discharge, quantitative-specialization steps, or conservative loss routing. Use `idea` depth only when the formalized target cannot plausibly be supported without changing primitive assumptions, algorithm/model/procedure, theorem scope/mode/metric, exposed dependence, or success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion.
- Preserve other blockers in `## Critical Issues` as supporting issues, grouped or ordered by impact when useful.

### Step 7: Map Final Routing Fields

- Map the selected repair depth to `Failure Type`, `Suggested Next Action`, and `Retry Mode` using the routing table below.
- Use route-specific split-mode proof failure types for `assembly`, `step`, and `sketch` repair depths.
- Use `IDEA_FAIL` only for `idea` depth.

### Step 8: Assign Score

- Assign `Score` after selecting the final failure type and controlling blocker.
- Apply the scoring rules below. Any nonempty `Critical Issues` caps the score at `6`; accepted proofs must score at least `7`.
- Use nonblocking concerns to distinguish high acceptance scores from lower acceptance scores, but never let nonblocking concerns override a required blocker.

### Step 9: Write The Aggregate Review

- Write `proof_review.md` using `../_shared/templates/proof-review.md`.
- Set `Review Mode = split`.
- Copy the exact formalized setting and goal, summarize the reviewed proof roadmap faithfully, and copy the attempted claim exactly.
- In `## Audit Summary`, summarize specialized reviewer outcomes, aggregate contract checks, source/progress alignment when present, final proof synchronization, the public-TeX compile/support, structure, main-theorem self-containedness, notation-economy and constant-provenance, explicit-rate and Rate Specialization Bridge gates, public-appendix shape, appendix full-derivation preservation, citation/reference, and provenance gate results, and how disagreements were resolved. For appendix preservation, explicitly state whether all used steps, not a sample, passed source-to-appendix coverage; if not accepted, name the first unaccounted step/source-unit blocker or state that the review was representative-only.

## Routing Rules

Map selected repair depth to final fields:

| Repair depth | Failure Type | Suggested Next Action | Retry Mode |
| ------------ | ------------ | --------------------- | ---------- |
| `assembly` | `PROOF_ASSEMBLY_FLAW` | `/proof-assembly` | `repair_assembly` |
| `step` | `PROOF_STEP_FLAW` | `/proof-step <Step ID>` | `repair_step` |
| `sketch` | `PROOF_SKETCH_FLAW` | `/proof-sketch` | `revise_sketch` |
| `idea` | `IDEA_FAIL` | `/subagent-idea-generator` | `new_idea` |
| `None` | `ACCEPTED` | `None` | `none` |

For `PROOF_STEP_FLAW`, `Suggested Next Action = /proof-step <Step ID>` names only the producer rerun. The controller must follow that rerun with a fresh `/proof-step-review <Step ID>` for the repaired proof and may proceed downstream only after that same-step review is `ACCEPTED`.

Invalid specialized review artifacts are diagnostic-process failures, not split-mode proof failure types. The controller must rerun or hand off the invalid specialized reviewer before aggregation; do not map an invalid diagnostic artifact to `/proof-assembly`, `/proof-step`, `/proof-sketch`, or `/subagent-idea-generator`.

## Aggregation Decision Rules

- Do not redo the four specialized reviews; aggregate only performs contract checks, final consistency checks, issue normalization, score assignment, and controller-facing routing.
- A specialized `PASS` is diagnostic evidence, not proof evidence. It supports acceptance only together with the final aggregate contract checks.
- A specialized `BLOCKING` issue cannot be ignored unless the artifact is contract-invalid, in which case rerun that specialized reviewer instead of aggregating.
- Accepted `global_proof_review.md` permits using `global_proof.md` to help interpret expected structure, hard steps, and diagnostic gaps, but neither global artifact can discharge a proof obligation or validate the final claim.
- If a specialized review's repair target is malformed but the artifact is otherwise clear, treat the specialized artifact as contract-invalid and request rerun or handoff of that reviewer.
- If the final proof introduces a blocker not covered by a specialized review, aggregate may report it as an aggregate contract blocker and route it using the same repair-depth table.
- If an explicit-rate or baseline-reduction blocker is only in public theorem wording, bridge omission, term absorption, probability conversion, appendix-to-main specialization, or baseline presentation while accepted step artifacts remain sufficient, route to `PROOF_ASSEMBLY_FLAW`. If preserving an inherited baseline invariance obligation requires a new sketch bridge or target-changing repair, route to `PROOF_SKETCH_FLAW` or `IDEA_FAIL` using the existing theorem-contract criteria. If the missing quantitative derivation or excessive exported notation belongs inside an accepted step or sketch roadmap, route to `PROOF_STEP_FLAW` or `PROOF_SKETCH_FLAW` as appropriate.
- If an assumption-provenance blocker is only public theorem wording and accepted step artifacts prove the derived invariant, route to `PROOF_ASSEMBLY_FLAW`. If an accepted step must prove or stop exporting the derived invariant under the same sketch row, route to `PROOF_STEP_FLAW`. If the roadmap lacks a needed bridge step or uses the wrong theorem-facing assumptions, route to `PROOF_SKETCH_FLAW`. Use `IDEA_FAIL` only after identifying the required theorem-contract change: changed primitive assumptions, changed algorithm/model/procedure, changed theorem scope/mode/metric, changed exposed dependence, changed success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion.
- For `IDEA_FAIL`, explain why `PROOF_SKETCH_FLAW` is insufficient under the current setting and goal; absence of a bridge in the current sketch is not by itself idea depth.

## Scoring Rules

- `9-10`: all specialized reviews pass, aggregate checks pass, the formalized goal is proved cleanly, the LaTeX bundle is paper-ready, and only minor nonblocking concerns remain.
- `7-8`: all specialized reviews pass, aggregate checks pass, the formalized goal is proved, the LaTeX bundle is paper-ready, and residual concerns are nonblocking.
- `5-6`: the current branch has substantial progress, but at least one repairable `assembly`, `step`, or `sketch` blocker remains.
- `3-4`: the proof has major cross-step or roadmap problems that require sketch repair.
- `1-2`: the controlling blocker is `idea`, or the target appears false, mis-scoped, or salvageable only by changing primitive assumptions, algorithm/model/procedure, theorem scope/mode/metric, exposed dependence, or success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion.

Any review with nonempty `Critical Issues` scores at most `6`. `ACCEPTED` must score at least `7`.

## Writing Rules

- Use split-mode aggregate failure types only: `ACCEPTED`, `PROOF_ASSEMBLY_FLAW`, `PROOF_STEP_FLAW`, `PROOF_SKETCH_FLAW`, or `IDEA_FAIL`.
- `## Critical Issues` is `None` only when accepted; otherwise include numbered acceptance-blocking issues with source reviewer or aggregate check, location, defect, downstream effect, selected repair depth, and target.
- `## Failure-Type Rationale` must explain why the selected blocker is the deepest required repair and why shallower fixes are insufficient when applicable.
- `## Suggested Next Action` must name one smallest retry target.
- `## Retry Mode` must align with the routing table.
- Mention specialized reviewer disagreement in `## Audit Summary` and resolve it through the deepest-issue rule.
