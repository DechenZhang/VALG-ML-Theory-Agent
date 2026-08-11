# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public appendix does not faithfully restate the exact source SGD update in the theorem-critical sampled-label measurability lemma. In `latex_template/5_appendix.tex:168`, the update is typeset as `\theta-eta\nabla^{\mathrm{src}}...` rather than `\theta-\eta\nabla^{\mathrm{src}}...`. In TeX this is a product of the ordinary symbols \(e,t,a\), not the declared step-size parameter \(\eta\). Consequently the map \(U\) used to prove `lem:step-002-label-access` is not the update governed by the setting and by `assump:universal-sgd-success`; the subsequent VC contradiction has not discharged the source-premise object mapping for the exact learner. The accepted `proof_steps/step_002/proof.md` contains the correct `\eta`, so this is an assembly-only source-fidelity defect.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: No external theorem is cited. The unseen-point argument, Bernoulli inequality, Sauer--Shelah recursion, binomial estimate, iid product rule, finite union bound, and direct-sum identity are restated or proved in current notation. Internal dependencies use named Lemma, Proposition, Corollary, and Theorem labels.
- Source fidelity: The accepted five step proofs faithfully state the exact Gaussian initialization, logistic one-sample update, fixed kink convention, aggregate, expected risk, and tie rule. The assembled appendix has the single source-update notation defect identified above.
- Instantiation and object mapping: The feature-map event, domain \(\mathcal X\), dimension \(d\), separator quantifiers, class restriction, and direct-sum objects are consistently mapped. The `eta`/`\eta` mismatch is an acceptance-blocking parameter mapping failure.
- Quantitative regime fidelity: The finite-horizon \(T\), \(m=2T\), avoidance factor, \(v<2T\), \(N=2^n\), \(r=\lceil\log_2(2|\mathcal H|)\rceil\), ceiling charge, \(S\ge n\), and final factor \(7TSd\) are preserved. No cited explicit-rate theorem is imported.
- Assumption discharge: Primitive assumptions and accepted dependency outputs are cited with their relevant hypotheses. The exact-SGD assumption cannot discharge the assembled measurability lemma while its update is written with bare `eta`; repairing that notation restores the accepted step application.
- Main theorem internal references: All 49 labels are unique and all 21 distinct `\ref{...}` targets resolve. The main theorem cites only paper-facing numbered assumptions and does not cite appendix results from its statement.
- Appendix cited-result traceability: All 17 accepted local source units appear as named theorem-style statements with proofs; dependency uses are expressed with `\ref` pairs, not internal artifact paths, review statuses, proof-step IDs, or claim/hypothesis/invariant references. Assembly and global diagnostics were treated as context only.
- External BibTeX entries: Public TeX contains no `\cite`, `\citep`, or `\citet` commands and names no external source requiring a citation. `reference.bib` has no entries, and no empty References section is exposed by the compiled bundle.
- Internal label/ref pairs: Duplicate-label and unresolved-reference scans are clean; theorem-style result names precede every internal dependency reference.
- Unsupported standard facts: No acceptance-blocking unsupported standard fact was found. Elementary probability and combinatorial facts are proved or reduced to indicator, product, binomial, exponential-series, or finite-selection identities; routine conditioning uses the stated finite experiment and bounded binary risk.
