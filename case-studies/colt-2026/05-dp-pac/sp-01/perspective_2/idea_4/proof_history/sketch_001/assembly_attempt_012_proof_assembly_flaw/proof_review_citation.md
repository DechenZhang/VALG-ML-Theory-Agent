# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Proposition `prop:step-003-coding` in `latex_template/5_appendix.tex` invokes unproved and uncited "standard-Borel closure facts" to conclude that the finite-list space `List(H_C)` and the finite transcript container are standard Borel, and it invokes the Borel diagonal of `H_C` to prove dynamic list membership measurable. These nontrivial measurable-space facts are theorem-critical for the transcript kernel and the later marked and finite-arm kernels, but the public bundle neither proves or restates them before use nor supplies a BibTeX-backed citation. The accepted Step 003 proof already records the exact closure and diagonal interface and its Borel-realization justification, so this is an assembly omission: restore a self-contained public justification or add a precise external citation and matching BibTeX entry without changing the accepted claim.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The official arXiv v1 source for Lyu supports Proposition 2; Algorithms 1--2 and Lemmas 3.1--3.2; Definitions 4.2--4.3; Lemmas 4.1--4.3; Corollary 4.1; and the empirical contradiction used from the proof of Theorem 3. Sauer--Shelah is both cited and proved inline in the bundle's notation.
- Source fidelity: Proposition 2 is used only for the positive-mean relative without-replacement tail; the near-zero tail is proved locally. Sparse Sample retains the source exponent without a factor `1/2`. The malformed display and unsupported probability-one amplification in Lyu's Theorem 3 are explicitly excluded, while the empirical contradiction is reproduced. The progress type remains `conditional`, limited to finite-or-countable measurable evaluation quotients; the unrestricted DP-PAC open problem remains unresolved.
- Instantiation and object mapping: The bundle maps source classes to the quotient objects `Q_C`, `bar C`, and `H_C`; preserves the direction `G subset H`; uses the exact factor-two pair `(2p,p)=(p_{r+1},p_r)`; preserves actual SOA functions rather than traces; and maps list-coordinate adjacency, sensitivity-one queries, and `K=1` to the two privacy lemmas.
- Quantitative regime fidelity: The relative-tail regime, list caps, failure-score threshold, privacy allocations, stage horizon, confidence shares, fixed-parameter bounds, and separate selected-learner and standalone-old-arm delta schedules are retained. No cited result hides an additional positive power of `d` or `v`.
- Assumption discharge: Nonemptiness, `LD <= d`, positive integer scales, optimal-decomposition availability, exact DDim equality, list-size bounds, the Sparse Sample threshold, one-list replacement, adaptive sensitivity one, one counted crossing, and quotient-to-raw neighbor and risk transfers are discharged before their cited conclusions are used.
- Main theorem internal references: The main theorem statement contains no appendix-local proof dependency. Its assumptions and notation are public; the later corollary's named appendix bridge is permitted.
- Appendix cited-result traceability: All Lyu and Sauer--Shelah applications have public result locators, current-object mappings, and hypothesis checks. The sole blocking translation defect is the omitted standard-Borel closure and diagonal justification identified above.
- External BibTeX entries: The public citation keys are exactly `lyu2025` and `sauer1972`, and both have entries in `latex_template/reference.bib`.
- Internal label/ref pairs: No duplicate labels, missing reference targets, forbidden public `claim`/`hypothesis`/`invariant` dependencies, workflow paths, or internal-review proof authorities were found.
- Unsupported standard facts: The standard-Borel closure and diagonal shortcut in Proposition `prop:step-003-coding` is acceptance-blocking. No other acceptance-blocking citation shortcut was found.
