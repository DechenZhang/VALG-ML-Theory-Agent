# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. `latex_template/5_appendix.tex` contains two malformed theorem-critical display fragments: `\alpha_0,\beta_0\in(0,1/2),qquad` in the universal-calibration lemma and `T_1=2,qquad T_{s+1}=2^{T_s}` in the tower-diagonal assembly proof. In both places the spacing command `\qquad` has lost its leading backslash, so TeX accepts `qquad` as five visible math letters. The intended statements are established correctly in the accepted step artifacts and elsewhere in the appendix, so this is not a step-level mathematical break, but the canonical public displays are not faithful paper-ready translations. Restore `\qquad` at both occurrences without changing the accepted mathematical content.

## Nonblocking Concerns

1. An isolated nine-file Tectonic build succeeds with resolved references and citations, but reports three overfull boxes in `5_appendix.tex` of approximately 5.38 pt, 8.82 pt, and 14.20 pt. These are typesetting concerns only.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The vulnerable implication is the pointwise bound \(n\ge a k\log_2^*N\), whose contradiction chain passes through a finite learner-independent prior, hidden-coordinate simulation, overflow control, one-charge privacy, and fixed-instance extraction. Replacing every link by its accepted exact statement leaves the implication valid; the surviving defect is the malformed public translation of two displays.
- Standalone theorem attack: The main theorem retains the primitive candidate regime, both \(\delta\) conjuncts, central replacement DP, fixed-size distribution-free realizable PAC, arbitrary randomized improper output, and the required quantifier order. Its notation is defined in the setup or inline, and no appendix-only condition is hidden in the statement.
- Weakest step-level claim: Step 004's finite-prior minimax argument and Steps 010--14's executable simulator, coupling, privacy transfer, risk splice, and extraction are the highest-risk units. Compact attainment supplies the strict game gap, separation proves the minimax equality, the public prior precedes all learner code, each input row is used at most once, learner coins remain random during the single privacy invocation, and the lower and upper risks concern the same extracted instance. No accepted-step counterexample survives.
- Candidate counterexamples or stress cases: The audit tested endpoint thresholds, point-mass and boundary distributions, arbitrary randomized nonmonotone outputs, public-prior-aware and tag-asymmetric learner code, repeated input occurrences, arbitrary neighboring labels, \(n<k\), \(k=2,3\), \(M=8\), \(U=0\), \(U=M\), and \(U>M\). The accepted restriction, factorial-tail, early-overflow, one-use, coupling, and total-kernel arguments cover these cases.
- Explicit-rate stress cases: Varying \(k,N,n,\varepsilon,\delta\) and the exact budget \(M=\max\{8,\lceil4n/k\rceil\}\) reveals no dropped dependence. The strict ceiling and floor-eight branches, both privacy caps, \(\log(M+1)>\log M\), the \(r=2\) tower boundary, the fixed \(r_0\), and \(r-1\le\log_2^*\operatorname{LD}\le r\) are all derived explicitly with universal constants.
- Appendix self-contained attack surface: The appendix has exactly sixteen step subsections plus the final theorem proof, contains every accepted non-atomic local unit and target-step assembly, restores the Step 004 hard-regime and hard-prior interfaces, uses no forbidden public claim, hypothesis, or invariant environment, and has no duplicate or unresolved label or citation. The two bare `qquad` tokens nevertheless visibly corrupt theorem-critical mathematics and are the sole acceptance-blocking assembly defect; the overfull boxes are nonblocking.
- Scope or mode upgrade attacks: The proof keeps the product sample law conditional on the realized instance vector, applies PAC pointwise before prior averaging, converts high-probability PAC to expected loss only for a fixed instance, charges overflow once, and transfers privacy by a fixed-seed adjacency map followed by one common input-independent mixture and postprocessing. No conditional-to-unconditional, learner-wise-to-uniform, probability-to-expectation, or privacy-composition upgrade remains unsupported.
- Remaining risk: No mathematical break remains in the accepted theorem chain under the tested edge regimes. After the two mechanical display repairs, the adversarial risk is limited to ordinary typesetting cleanup; the stronger exponential, log-cardinality, and general-characterization goals remain explicitly unresolved rather than overclaimed.
