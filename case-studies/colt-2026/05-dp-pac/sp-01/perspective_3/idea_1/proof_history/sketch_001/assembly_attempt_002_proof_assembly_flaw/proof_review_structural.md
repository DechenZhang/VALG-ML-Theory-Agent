# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. `latex_template/5_appendix.tex` contains two malformed public-math fragments: `\alpha_0,\beta_0\in(0,1/2),qquad` in the universal-calibration lemma and `T_1=2,qquad T_{s+1}=2^{T_s}` in the tower-diagonal assembly proof. In both places the spacing command is missing its leading backslash. TeX therefore accepts `qquad` as visible math letters rather than spacing, so the compiled appendix is not a faithful paper-ready translation of the accepted derivations. The smallest repair is `/proof-assembly`: replace both bare occurrences by `\qquad` and leave the accepted statements and proofs unchanged.

## Nonblocking Concerns

1. The isolated nine-file Tectonic build succeeds, but reports three overfull boxes in `5_appendix.tex` (approximately 5.38 pt, 8.82 pt, and 14.20 pt). These do not alter proof content or dependency closure, but line-breaking cleanup would improve the final typesetting.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: Exact-goal mode. The public theorem preserves the setting's arbitrary randomized unrestricted improper learner, exact fixed sample size, central replacement-DP premise, complete two-conjunct delta regime, pointwise distribution-free realizable PAC premise, and conclusion `n \ge a k\log_2^*N`. The tower-diagonal result is consistently labeled as material partial progress, and the exponential and log-cardinality gaps remain explicit.
- Dependency closure: All sixteen required step proof/review pairs match the accepted sketch and current proof hashes, have accepted reviews, and form the same acyclic dependency flow used by the final proof. No stale, rejected, downstream-dependent, or branch-external artifact is used as mathematical authority.
- Sketch-step coverage: Every required sketch step has a corresponding appendix subsection and is used by a named theorem-style result or by the final theorem proof. The final proof uses the nonasymptotic closure and tower-diagonal bridge without bypassing an accepted sketch obligation.
- Assembly discipline: The appendix does not introduce a new substantive lemma, assumption, inequality, probability-mode upgrade, or stronger conclusion beyond the accepted steps. Step-local invariant material is correctly presented as a proved public lemma. The only blocking synchronization defects are the two malformed `qquad` fragments identified above.
- LaTeX bundle structural synchronization: All nine canonical files are present with manifest-matching identities; `main.tex` loads the five content files, style, bibliography, and appendix in the required order. The isolated canonical-file build completes. Required section and subsection layout is present, with one mathematical subsection per step and a final main-theorem proof.
- Main theorem self-containedness: The theorem uses only setup/preliminary notation, the three numbered primitive assumptions, and constants defined before use. It has no appendix-local dependency in its statement, exposes the exact candidate and diagonal regimes, and provides a readable reader-facing interface rather than an admissibility dictionary.
- Theorem-style statement shape: Public dependencies are lemmas, propositions, the main theorem, or numbered assumptions with explicit hypotheses and conclusions. No public `claim`, `hypothesis`, or `invariant` environment, workflow identifier, subsection-as-authority reference, audit scaffolding, or branch-local proof reference remains.
- Explicit-rate and bridge structure: The nonasymptotic rate states its exposed variables, fixed absolute constants, exact deterministic conclusion, fixed-size mode, population-risk mode, and complete privacy/PAC regime. The named tower-diagonal Rate Specialization Bridge fixes `r_0`, verifies `N\ge N_0`, retains the full candidate conjunction, performs the exact tower substitution, and states the remaining unresolved scales without an unsupported absorption or mode conversion.
- Derivation-over-notation: Preliminaries contain only stable setting-derived notation needed to read the theorem. Simulator, coupling, minimax, overflow, and tower bookkeeping remain appendix-local or proof-local, and all boundedness, finiteness, and transfer statements used for closure are visibly derived.
- Appendix local-unit coverage: Every accepted non-atomic local unit, required cited-result application, boundary case, assumption discharge, displayed construction, inequality chain, and target-step assembly was compared against its appendix body. The mathematical order and substantive derivations are preserved. Steps whose target assembly is a direct composition conclude inside the proof of their final proposition; the additional pointwise/prior and tower-diagonal consequences have explicit concluding proof environments.
- Internal label/ref structure: The public TeX has 321 unique labels, 701 internal references with no undefined target, three external citation uses backed by the single BibTeX entry, and exactly the three stable assumption labels from `setting.md`. Compilation reports no unresolved reference, citation, or multiply-defined-label warning.
