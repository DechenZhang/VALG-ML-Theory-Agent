# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Several public theorem-style statements in `latex_template/5_appendix.tex` are not self-contained, and one does not preserve the accepted step interface precisely. In Theorem `thm:step-001-blm-selection`, `\alpha` is used in the frequent-hypothesis premise before the statement quantifies `\alpha`. In Proposition `prop:step-003-exact-privacy-schedule`, arbitrary `q,L` are fixed and the learner is then said to be private "at precisely this parameter" without the accepted source condition `q=q(C)`, `L=\log|C|`, the nonempty finite class scope, and the fixed `\varepsilon_0` interface. Lemma `lem:step-004-iterated-log-subpower` assumes only "the conditions above"; Proposition `prop:step-004-q-subpower` assumes the bare display `(A.57)` plus unnamed "size-divergence and counting conditions"; and Proposition `prop:step-006-sequence-learners` again imports `(A.57)` rather than stating the exact superpolynomial quantifiers. These are assumptions or parameter mappings left implicit in surrounding prose or a hard-coded display number, contrary to the theorem-style statement-shape contract. The final theorem proof cites these public results, so the public dependency interface must be repaired by restating the exact primitive conditions or named prior results inside each statement and by restoring the accepted `q(C),L(C)` mapping.
2. The appendix does not satisfy the required internal equation label/reference discipline. It contains 129 manually tagged displays `\tag{A.1}` through `\tag{A.129}` and refers to them by literal text such as `(A.1)`, `(A.57)`, and `(A.113)--(A.115)`, without equation `\label{...}` and `\eqref{...}` links. This is not only cosmetic: `(A.57)` is used as a theorem-facing hypothesis in later public statements. Replace hard-coded mathematical dependencies with unique equation labels and `\eqref` references while preserving the accepted derivations and displayed formulas.

## Nonblocking Concerns

1. The controller's successful frozen-bundle compilation reports one overfull hbox of 4.2525pt at `latex_template/5_appendix.tex:717`, in the bounded-complexity proposition statement. This is a small typesetting defect, not a mathematical or structural proof gap. It also means the final note in `assembly_report.md` claiming compilation "without warnings" is not literally synchronized with the observed compile log.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: PASS. The main theorem matches the exact conditional goal in `setting.md`: the sole nonstandard primitive assumption remains explicit; the sequence quantifiers, unrestricted learner scope, exact sample arity, exact privacy schedule, every-fixed-`\rho` limit, allowance relaxation, and eventual lower-bound contradiction are preserved. No unconditional resolution is claimed.
- Dependency closure: PASS. The accepted sketch has the acyclic chain `step_001` through `step_006`. Every current proof matches the SHA-256 recorded by its `ACCEPTED` review, and every final dependency points to an earlier accepted result. The accepted global diagnostic is used only as context.
- Sketch-step coverage: PASS. All six required steps have paper-facing appendix subsections. Direct inspection mapped the 22 accepted local units in counts `4,2,3,4,5,4`, the invoked Bun--Livni--Moran result application, and every target-step assembly to the appendix and final theorem proof.
- Assembly discipline: PASS for substantive proof content, BLOCKING for public interfaces. No independent unreviewed lemma, new inequality, assumption discharge, convergence-mode upgrade, or stronger final conclusion was introduced. The blocking defects are statement scoping and paper-facing reference structure, both repairable without changing an accepted step artifact.
- LaTeX bundle structural synchronization: BLOCKING only for Issues 1-2. All nine required files exist; `main.tex` loads the five content files, `arxiv.sty`, `ims.bst`, and `reference.bib`; the expected sections and six appendix step subsections are present; citation keys and ordinary theorem/section references resolve; labels are unique; and no placeholder or forbidden workflow language was found. The frozen snapshot was verified as `assembly_report.md` SHA-256 `3b59abab9f73860fea15b4668b5df7f5f843918ff1eb5619f67ac1cf48111755` and `5_appendix.tex` SHA-256 `136730f43f3aabab202b2a543c8123565b35a47f287bafbab6a4445f1bd7340a`.
- Main theorem self-containedness: PASS. `3_main.tex` uses only setup/preliminary notation and the numbered primitive assumption, defines the exact learner, sample, privacy, probability, horizon, risk, and hidden-constant interfaces, and contains no appendix-local proof dependency. The statement is reader-facing rather than an admissibility dictionary.
- Theorem-style statement shape: BLOCKING. The appendix statement defects are listed in Issue 1; the underlying accepted step statements contain the missing scopes and can be translated directly during assembly repair.
- Explicit-rate and bridge structure: PASS. The public theorem states the same exact technical rate proved in the appendix, so no separate simplified-rate specialization is needed. The BLM substitution, all five term dominations, `K_a` provenance, ceiling and padding, subpower propagation, privacy factorization, `\rho=3` allowance, and privacy monotonicity are displayed. The bounded-`q` baseline is preserved.
- Derivation-over-notation: PASS. Proof-local constants and aliases stay in the appendix. Definitions, inequality chains, exponent allocations, ceiling bounds, boundary cases, and limit thresholds remain visible rather than being replaced by notation or prose-only absorption.
- Appendix local-unit coverage: PASS after direct source-body comparison. `step_001` preserves recoding, source restatement and object map, admissibility, distribution-free quantifiers, decoding, and target assembly. `step_002` preserves exact logarithm expansion, all five dominations, constant selection, padding, and both privacy directions. `step_003` preserves logarithm domains, exact decay identities, endpoint cases, bounded-`q` activation, and assembly. `step_004` preserves the log-star envelope, exact `(SP)` quantifiers, `d=0`, exponent allocations, ceiling, bounded-`q` branch, and `(AS)`. `step_005` preserves ceiling control, factorization, uniform supremum, every-fixed-`\rho` tail, standard allowance, and `(PN)`. `step_006` preserves exact learner selection, rate attachment, both privacy-relaxation inequalities, arbitrary-constant contradiction, conditional labeling, and final assembly.
- Internal label/ref structure: BLOCKING under Issue 2. The ordinary theorem, assumption, section, and citation labels are unique and resolved, but mathematical equation dependencies are hard-coded rather than label-driven.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
