# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public rate-specialization corollary in `latex_template/3_main.tex` begins with the anaphoric phrase "Under these assumptions" instead of stating its assumption basis through the four numbered assumptions or a named prior theorem-style result such as `Theorem~\ref{thm:main}`. The later citation to `Proposition~\ref{prop:step-016-frontier}` supplies a valid Rate Specialization Bridge, and that appendix proposition explicitly lists the four assumptions, but the citation does not make the corollary's own opening hypothesis self-contained. The theorem-style statement-shape contract expressly makes assumptions implicit in surrounding prose blocking. This can be repaired without changing any accepted mathematical claim or proof.

## Nonblocking Concerns

1. The concluding proof text for Steps 001, 006, and 016 occasionally refers to the proposition currently being proved while recapitulating the already completed derivation. These references introduce no logical dependency or cycle, but direct declarative conclusions would read more cleanly.
2. The Step 006 phrase "retain the four-term envelope from per trace-block pair" is mechanically awkward. The successful build also reports eight overfull-box warnings, with maximum excess 22.38173 pt; neither issue obscures a proof obligation, reference, or conclusion.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: Exact-goal mode. The main theorem preserves the four primitive assumptions, the explicitly conditional finite-or-countable evaluation-quotient scope, measurable raw pullback, all-input replace-one approximate privacy, realizable iid population-risk guarantee, the VC, old, and finite-arm rates, the exact `d=0` branch, the finite/infinite-class convention, and the distinction between fixed and scheduled `delta`.
- Dependency closure: All sixteen required current step proof/review pairs are accepted and correctly bound to their live proof artifacts. Their dependency graph is forward and closed; no unavailable, stale, rejected, or downstream-dependent step claim is used.
- Sketch-step coverage: Steps `step_001` through `step_016` each have a corresponding appendix subsection and an identifiable use in the final architecture. No required sketch step is omitted or silently declared unnecessary.
- Assembly discipline: All 107 accepted local units and every required cited-result application, local derivation, boundary case, and target-step assembly are substantively represented in the appendix. The three additional interface propositions in Steps 010, 013, and 015 integrate already accepted interfaces and do not create independent unreviewed obligations.
- LaTeX bundle structural synchronization: The nine required bundle files are present with the required section order, sixteen step subsections, and final main-theorem proof. The cached Tectonic build succeeds with no TeX or BibTeX error and no unresolved reference or citation; the remaining issue is the corollary statement-shape defect above.
- Main theorem self-containedness: `Theorem~\ref{thm:main}` explicitly cites all four assumptions and uses only setup and preliminary notation with declared constants, modes, and dependence. Its readable frontier corollary has a valid named appendix bridge, but its own assumption basis is only anaphoric and therefore fails the self-contained statement contract.
- Theorem-style statement shape: Appendix theorem-style units state numbered assumptions and/or named theorem-style inputs before local conditions and conclusions. Public `claim`, `hypothesis`, and `invariant` dependencies are absent. The sole blocking exception is `Corollary~\ref{cor:frontier}`.
- Explicit-rate and bridge structure: `Proposition~\ref{prop:step-016-frontier}` records the auxiliary choices, technical-condition checks, displayed term dominations, probability conversion, hidden-constant restrictions, scheduled-versus-fixed `delta` distinction, and exact baseline reductions required by the public specialization.
- Derivation-over-notation: The least-feasible tuple in the preliminaries identifies parameters needed to define and read the learner, is derived by named appendix results rather than assumed, and leaves its calibration proof in the appendix. Proof-local definitions, ceilings, inequalities, and absorption arguments remain visible in the appendix instead of being hidden behind notation.
- Appendix local-unit coverage: Direct source-to-appendix comparison confirms substantive proof text for every used accepted unit, including the full fixed-trace argument in Step 006 and the repaired pairwise-smoothing and exponential-Markov boundary arguments in Step 015. The four nonliteral display-tag translations preserve equivalent mathematical content.
- Internal label/ref structure: The bundle has 134 unique labels with no duplicates, all 908 internal references resolve, and both citation keys are BibTeX-backed. The unused terminal corollary label is not a proof-dependency defect.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
