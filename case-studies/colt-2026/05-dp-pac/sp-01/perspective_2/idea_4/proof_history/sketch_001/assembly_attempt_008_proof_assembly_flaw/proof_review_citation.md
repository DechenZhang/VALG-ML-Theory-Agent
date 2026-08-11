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

- Cited theorem statements: Every external result used by the assembled proof is identified by source and result locator and is restated at the point of use in the current branch notation. The accepted dependency-step and local-unit claims needed by the assembly appear publicly as named theorem-style results.
- Source fidelity: Lyu Proposition 2 is used only for its stated high-mean without-replacement tail; the low-mean tails are derived inline. Lyu Definitions 4.1--4.3, the valid-decomposition existence claim, Lemmas 4.1 and 4.3, and Corollary 4.1 support exactly the decomposition, essential-function, list-size, SOA-inheritance, and zero-DDim conclusions attributed to them. Algorithms 1--2 and Lemmas 3.1--3.2 support the stated Sparse Sample and AboveThreshold interfaces. Theorem 3 is used only through its explicitly restated empirical contradiction, and Lemma 4.2 only for the fixed SOA-family Littlestone bound. Sauer--Shelah is cited for the trace bound and is also proved in the current notation.
- Instantiation and object mapping: Each imported result is mapped to the quotient domain, current restrictions, list families, score functions, neighboring inputs, and released hypothesis space before application. Paper-specific notation is not imported as unexplained public notation, and the required dependency objects are defined by earlier named results.
- Quantitative regime fidelity: Thresholds, privacy parameters, list caps, horizons, confidence allocations, ceiling terms, and the source-compatible asymptotic schedule are retained or derived explicitly. No cited result supplies an unstated rate, bundled constant, or stronger parameter regime; the finite-population, Bernoulli, and finite-class calculations are derived in the bundle.
- Assumption discharge: Structural, measurability, iid-realizability, privacy-regime, sensitivity, finiteness, and confidence hypotheses are discharged by numbered assumptions, earlier named theorem-style results, or visible inline derivations. The singleton, positive-dimensional, finite/infinite-class, fallback, and arbitrary-label adjacency cases are handled explicitly.
- Main theorem internal references: The main theorem statement refers only to numbered assumptions. Its external Lyu citation has a matching BibTeX entry. The rate corollary's later appendix dependency is a typed reference to Proposition~`prop:step-016-frontier`, not an untyped or workflow reference.
- Appendix cited-result traceability: Every cited application needed from the accepted step proofs is restated or cited in the appendix with current-object mapping and assumption discharge. Public dependencies use Lemma, Proposition, Theorem, or Corollary labels; no proof-step path, reviewer decision, audit-section name, or accepted-status assertion is used as mathematical authority.
- External BibTeX entries: Every public citation key is present in `reference.bib`; the cited keys `lyu2025` and `sauer1972` resolve to the intended sources. No internal theorem-style result is cited through BibTeX.
- Internal label/ref pairs: The public bundle has 134 unique labels and 890 internal reference uses, with no duplicate labels and no unresolved targets. The proof-overview forward pointers and the rate-corollary pointer are typed references to existing appendix results; no appendix-local result is referenced inside the main theorem statement.
- Unsupported standard facts: None. No shortcut phrase hides a nontrivial citation or unverified hypothesis; union bounds, post-processing/composition uses, finite-class privacy/PAC bounds, and probability-tail calculations are either proved inline or applied with their hypotheses visible.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
