# Citation Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

None

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Citation Audit

- Cited theorem statements: Lau and Scarlett, arXiv:2604.07796v2, Theorem 16 (source label `thm: alternative localization`) and the construction in the appendix labeled `appendix: two-stage` were checked against the frozen source. The public proof preserves the theorem's interval-valued output, deterministic non-adaptive one-bit queries, confidence range, zero-query branch, nontrivial coding branch, localization radius, and query-count conclusion; it does not attribute a scalar estimate or the unused source refinement stage to the theorem.
- Source fidelity: The source title, authors, version, theorem locator, balanced-code construction, clipped half-open bin convention, nearest-Hamming decoder, at-most-five-bin interval, and constants used in the assembly agree with the frozen source. The minimum-index tie selection added by the current wrapper is compatible with the source proof and does not strengthen its guarantee.
- Instantiation and object mapping: The proof explicitly maps `eta=delta/4`, `h_src=20 sigma`, the source interval midpoint to `c`, the source bits to Borel inverse-image membership queries, and the source sample block to the branch's iid localization block. It separately proves the midpoint-to-grid, recentering, query-legality, and scalar-estimator wrappers rather than importing them as source outputs.
- Quantitative regime fidelity: The source requirements `lambda >= sigma > 0`, `eta in (0,1/2)`, `mu(D) in [-lambda,lambda]`, iid sampling, and first central absolute moment at most `sigma` are preserved. The localization ceiling is derived in both source branches. All later three-regime rates, confidence conversion, dyadic/block/group ceilings, and hidden-constant restrictions are supported by named current-branch results rather than attributed to Lau and Scarlett.
- Assumption discharge: Assumptions `assump:parameter-domain` through `assump:precommitted-protocol` discharge the source parameter, mean-range, iid, and timing conditions; the displayed Holder application derives the required first-moment bound from the branch's `k`th central moment for `k>1`. Every accepted dependency and appendix theorem used downstream states its governing primitive assumptions or names the prior theorem-style results that supply its local conditions.
- Main theorem internal references: The main theorem statement names only the numbered assumptions and the preliminary protocol section; it contains no appendix-local theorem reference, proof-step identifier, or workflow authority. The Rate Specialization Bridge is cited only after the theorem statement and is proved as a named appendix proposition.
- Appendix cited-result traceability: The sole external theorem application is restated and mapped in Proposition `prop:localization`. All downstream proof dependencies are paper-facing lemmas or propositions with unique labels and explicit statements; the appendix does not rely on accepted-step status, review artifacts, proof paths, global diagnostics, or other workflow provenance.
- External BibTeX entries: All three public citation commands use `lau-scarlett-2026`, and `reference.bib` contains the matching authors, title, year, arXiv identifier, and v2 note. An isolated Tectonic/BibTeX compile completed successfully and produced the expected Lau--Scarlett bibliography entry with no undefined citation.
- Internal label/ref pairs: Static inspection found 39 labels, all unique, and 245 internal references, all resolved. The isolated compile reported no undefined or multiply defined reference, and no malformed bare reference or citation command was found.
- Unsupported standard facts: None. The power-triangle inequality and dither, mask, geometric-sum, moment-tail, tower, and ceiling facts are proved directly. Holder, Minkowski and its reverse-triangle consequence, conditional Chebyshev, and Hoeffding are stated or instantiated in current notation with their required exponent, integrability, conditional-product, independence, boundedness, and threshold conditions visible at the point of use.
