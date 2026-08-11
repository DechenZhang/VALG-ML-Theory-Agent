---
name: proof-review-citation
description: Diagnostic split-mode final proof reviewer focused on cited theorem statements, source fidelity, object mapping, and assumption discharge.
---

# Proof Review Citation

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

- `perspective_M/idea_N/proof_review_citation.md`

Required machine-readable fields:

- `Reviewer Verdict`
- `Blocking Issues`
- `Nonblocking Concerns`
- `Suggested Repair Depth`
- `Smallest Candidate Repair Target`

Do not modify proofs, sketches, step artifacts, trackers, worker logs, `proof_review.md`, or accepted results.

## Responsibilities

- Check every cited theorem, lemma, standard fact, dependency-step use, and local proof-unit use that the final proof relies on.
- Verify source fidelity, restated statement accuracy, instantiated objects, parameter regimes, and assumption discharge.
- Flag unsupported standard facts or citation shortcuts that are acceptance-blocking.
- Emit diagnostic fields only; do not assign score, failure type, retry mode, or controller routing.
- Treat `assembly_report.md` as diagnostic assembly-status context only, not as proof evidence, a cited result, or authority to accept a final claim.
- Treat `global_proof.md` and `global_proof_review.md` as diagnostic context only, not as proof evidence, cited results, or authority to accept a final claim.

## Workflow

### Step 1: Load Citation Targets

- Load `setting.md`, all content and support files under `latex_template/`, `assembly_report.md`, accepted sketch artifacts, valid diagnostic `global_proof.md`, accepted `global_proof_review.md`, and accepted step artifacts.
- Treat `setting.md`, accepted sketch rows, accepted step proofs/reviews, and final proof artifacts as review targets; do not silently repair missing citations, notation translations, dependency links, or assumption discharge.
- Use `assembly_report.md` only to identify the reported attempted claim, assembly status, and blockers. Do not treat it as proof evidence, a cited result, an assumption source, or authority for accepting a claim.
- Use `global_proof.md` only as diagnostic context for finding likely citation gaps after confirming `global_proof_review.md` is accepted. Do not treat either global artifact as proof evidence, a cited result, an assumption source, or authority for accepting a claim.

### Step 2: Build The Citation-Use Map

- Build a citation/evidence-use map across final proof blocks, the LaTeX bundle, accepted step proofs, dependency-step uses, local proof-unit uses, and standard-fact invocations.
- For each nontrivial use, record the final-proof location, source artifact, cited result or local unit, conclusion used, instantiated objects, required assumptions, and claimed discharge location.
- Include citations and evidence uses that appear only in `latex_template/`; a LaTeX-only citation, stronger claim, omitted assumption, missing BibTeX entry, or invalid internal reference can still be blocking.
- In the LaTeX bundle, distinguish public citations from internal workflow provenance. Branch-local files and reviewer artifacts are not valid public proof citations in paper-ready TeX.

### Step 3: Check Source Fidelity

- For every cited theorem, lemma, proposition, corollary, standard theorem, paper result, dependency step, or local proof unit, verify that the referenced result exists and supports the exact statement being used.
- Check source or name, result locator when available, statement accuracy, conclusion used, parameter regime, and whether the proof paraphrases a nearby but different result.
- Reject citations used only by title, theorem number, paper notation, broad prose, or a vague appeal to "standard" authority when the result carries nontrivial assumptions.

### Step 4: Check Object Mapping And Notation

- Verify that every cited result is restated in current-branch notation before use, with imported notation translated into original `setting.md` objects or explicitly checked dependency objects.
- Check instantiated objects, domains, parameter spaces, parameter regimes, probability or convergence mode, constants, and normalization.
- Check that constants, thresholds, rates, radii, margins, events, helper objects, and bounded quantities imported from a cited result are mapped into current setting quantities, explicitly present as theorem/admissibility conditions, or proved/bounded before use; do not allow a cited theorem's notation to become an unexplained public constant.
- For cited results that support an explicit rate, apply the shared Explicit Rate Contract from `../_shared/checklists/artifact-contracts.md`. Check that all exposed structural, data/sampling, algorithmic/horizon, regularity/stability, numerical/stochastic/approximation/modeling-error, auxiliary-tolerance, confidence/probability, and hidden-constant regimes are preserved or explicitly specialized with proof.
- Reject notation drift, symbol reuse with changed meaning, direct import of cited-paper or dependency notation without translation, notation not expressible from original setting quantities without a derivation, and quantifier-order changes.
- Check derivation-over-notation discipline for citation uses. When notation and derivational detail conflict, require fewer helper symbols and more visible derivation; reject citation applications that compress object mapping, boundedness, finiteness, rates, parameter dependence, cited-result assumption discharge, or target implications into unexplained aliases or bundled constants.

### Step 5: Check Assumption Discharge

- For every cited result, dependency-step application, and local proof-unit application, check all required hypotheses and where each is discharged.
- Discharge may come only from `setting.md`, accepted sketch-row assumptions, accepted dependency claims, earlier accepted local units, or explicitly proved final assembly facts.
- Reject citation applications that omit required data/sampling lower bounds, confidence/probability restrictions, structural regimes, algorithmic/horizon restrictions, regularity/stability assumptions, numerical/stochastic/approximation/modeling-error assumptions, or auxiliary parameter constraints needed by the cited explicit rate.
- Flag hidden assumption strengthening, narrowed regimes, unsupported explicit-dependence placeholders, missing boundary cases, and unsupported interchanges of limits, expectations, suprema, gradients, integrals, or conditionings when they affect citation applicability.

### Step 6: Check Shortcuts And Cross-Artifact Consistency

- Scan for unsupported standard facts, "clearly", "obviously", "similarly", and "by routine arguments" when they hide a cited result or independent assumption.
- Check that final assembly cites exact accepted step claims, dependency step claims, and named local theorem-style results rather than changing their statements or assumptions. Stable local unit IDs may identify the source artifact for audit, but they must not be the mathematical proof reference.
- Check that accepted step reviews confirm local acceptance, but still reject final-proof citation uses that distort, omit, or overstate the accepted step citation chain.
- Reject the paper-ready LaTeX bundle if it asks the reader to trust internal files, reviewer decisions, `proof_steps/...`, `review.md`, accepted-step status, branch-local provenance, or workflow provenance instead of restating the result and proof in the TeX files.
- Check statement self-containedness before accepting citation chains: every cited theorem-style result in public TeX must state its assumption basis, local conditions, and conclusion in the statement itself, using numbered `Assumption~\ref{assump:...}` references or named prior theorem-style results where applicable.
- Check that public TeX proof dependencies cite earlier theorem-style results inside the LaTeX bundle with `\label{...}` and `\ref{...}`, or valid external/standard results restated in current notation with BibTeX-backed citation commands; internal artifact paths are never public proof citations.
- Check that internal public-TeX references name the result type in paper-ready form, such as `Lemma~\ref{lem:...}`, `Theorem~\ref{thm:...}`, `Proposition~\ref{prop:...}`, or `Corollary~\ref{cor:...}`. Reject proof dependencies stated as subsection references, "the previous subsection", proof-step IDs, local unit IDs such as `unit_001`, public `Claim~`, `Hypothesis~`, or `Invariant~` references, or bare `\ref{...}` references that do not identify the theorem-style result.
- Reject public appendix citation dependencies on `claim`, `hypothesis`, or `invariant` environments. Accepted step-local claims, hypotheses, and invariants may be source units, but public appendix evidence must convert them into lemma, theorem, proposition, or corollary statements with proofs, or integrate them into proof text inside allowed proof environments.
- Reject internal appendix references inside the main theorem statement in `latex_template/3_main.tex`: the theorem may reference numbered assumptions only in paper-ready form such as `Assumption~\ref{assump:...}`, but it must not cite local theorem-style results, appendix subsections, proof-step IDs, or constants introduced only later in `5_appendix.tex`.
- For cited-result applications that appear in accepted step artifacts and are needed by the translated local derivations, check that `latex_template/5_appendix.tex` either restates the result in current notation with assumption discharge or cites a BibTeX-backed external source and then performs the current-notation object mapping. A final appendix proof cannot rely on the step artifact's hidden citation check.
- Reject public TeX that mentions internal citation-audit section names such as `Cited Result Applications`, or that invokes nontrivial standard facts, theorem families, paper/book results, or named inequalities only through vague prose such as "standard result" without either an inline proof/restatement or a BibTeX-backed citation.
- For every external citation command such as `\cite{...}`, `\citep{...}`, or `\citet{...}`, verify that each key has a corresponding entry in `latex_template/reference.bib`.
- Reject external sources mentioned in prose without a citation command and matching `reference.bib` entry.
- If no external citation command appears in public TeX, verify that the compiled public output does not expose an empty References section; `reference.bib` and `ims.bst` may remain as support files.
- Reject internal theorem-style results, assumptions, equations, sections, or appendix subsections cited with `\cite{...}` or prose-only locators instead of `\label{...}` and `\ref{...}` pairs.
- Reject duplicate labels and unresolved `\ref{...}` targets in the LaTeX bundle.
- Distinguish citation presentation defects from genuine source, mapping, or assumption-discharge failures.

### Step 7: Localize Repair Depth

- Identify the shallowest artifact whose change can repair the blocking citation issue without changing accepted downstream meaning.
- Use `assembly` only when the accepted step citation application is valid and the defect is final-proof or LaTeX-bundle traceability, labeling, omission, or presentation.
- Use `step`, `sketch`, or `idea` when the accepted step, roadmap, or theorem setting lacks a valid cited-result application.

### Step 8: Write The Review

- Write `proof_review_citation.md` using `../_shared/templates/proof-review-citation.md`.
- Emit only diagnostic fields required by this skill; do not assign score, failure type, retry mode, or controller routing.

## Citation Review Checks

- Every cited result must be restated before use in current-branch notation, with cited-paper notation expressed through original setting quantities or checked accepted dependency objects.
- Every cited-result application must record source or name, result locator when available, instantiated objects, required assumptions, conclusion used, and where each assumption is discharged.
- Every theorem-style result used as citation evidence must be self-contained: it cites governing assumptions as `Assumption~\ref{assump:...}` or names prior theorem-style results, lists specific local conditions before the conclusion, and does not make the reader infer assumptions from surrounding prose, section titles, or the proof body.
- Dependency-step and local proof-unit applications must cite exact accepted claims or named theorem-style results. Stable local unit IDs are allowed only as audit handles or label components; public proof prose must use paper-ready references such as `Lemma~\ref{...}` or `Proposition~\ref{...}`.
- Public TeX proof citations must be external sources or standard named facts restated in current notation with BibTeX-backed citation keys in `latex_template/reference.bib`, or earlier theorem-style results inside the same LaTeX bundle referenced by `\label{...}` and `\ref{...}` pairs. Internal artifact paths, reviewer decisions, and accepted-step narration are audit provenance only.
- Public TeX must not cite internal proof-step section names such as `Cited Result Applications`; translate those applications into paper-facing restatements, inline proofs, or BibTeX-backed citations.
- Appendix translations of accepted step proofs must preserve public citation traceability for every cited result used in a local unit or target-step assembly.
- Cited-paper, dependency-proof, and local notation must be translated before use and must remain consistent with `setting.md`.
- Citation notation must not replace derivation. Prefer fewer helper symbols and more visible derivation whenever notation would hide object mapping, assumption discharge, boundedness, finiteness, rate, dependence, or the implication drawn from a cited result.
- Source fidelity must rule out theorem-target drift, nearby-result substitution, missing side conditions, and unsupported parameter-regime changes.
- Quantitative regime fidelity must preserve cited theorem dependencies across all exposed structural, data/sampling, algorithmic/horizon, regularity/stability, numerical/stochastic/approximation/modeling-error, auxiliary-tolerance, confidence/probability, and hidden-constant categories. Any specialization must be proved through the current branch assumptions or a named bridge.
- Citation acceptance requires both statement support and assumption discharge; a correct source is not enough if the current proof has not verified its hypotheses.
- Accepted `global_proof_review.md` permits using `global_proof.md` to guide where to look for likely gaps, but neither global artifact can discharge assumptions, supply a cited theorem, or validate final proof claims.

## Citation Repair Depth Guidance

- `assembly`: final proof or the LaTeX bundle omitted, mislabeled, obscured citation traceability, omitted `reference.bib` entries, used citation commands for internal proof references, or used internal workflow provenance as public proof citation, but the accepted step proof contains a valid cited-result application.
- `step`: one accepted step has an unchecked or invalid citation, dependency-step application, local proof-unit application, notation translation, or assumption discharge under an otherwise unchanged sketch row.
- `sketch`: the sketch row or proof roadmap lacks the needed cited tool, assumption, dependency, output target, decomposition, theorem family, or cited-tool type needed for valid citation use.
- `idea`: the needed cited result would require changing primitive assumptions, algorithm/model/procedure, theorem scope/mode/metric, exposed dependence, or success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion.

## Verdict Rules

- `PASS` requires no acceptance-blocking citation or assumption-discharge issue, `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`.
- Do not emit `PASS` if a cited explicit-rate theorem's quantitative regime is not preserved or proved specialized across all exposed structural, data/sampling, algorithmic/horizon, regularity/stability, numerical/stochastic/approximation/modeling-error, auxiliary-tolerance, confidence/probability, or hidden-constant dependencies.
- `BLOCKING` requires at least one numbered blocking issue, a non-`None` `Suggested Repair Depth`, and an aligned `Smallest Candidate Repair Target`.
- Repair-depth target alignment: `assembly` -> `/proof-assembly`; `step` -> `/proof-step <Step ID>`; `sketch` -> `/proof-sketch`; `idea` -> `/subagent-idea-generator`.
- For `step` depth, `/proof-step <Step ID>` names only the diagnostic producer candidate. The controller must still require a fresh accepted `/proof-step-review <Step ID>` on the repaired proof before downstream consumption.
- Use `assembly` only for citation traceability defects introduced during assembly. Use `step`, `sketch`, or deeper when the accepted step or roadmap lacks a valid cited-result application.
