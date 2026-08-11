# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. **Verified public-definition break in the theorem metric.** In `latex_template/2_preliminary.tex`, the quotient-state declaration reads `\widetilde e=(\widetilde C_U,widetilde C_V,\widetilde C_W,\widetilde s)`. The missing backslash makes `widetilde C_V` an ordinary product of symbols rather than the second comparison coefficient `\widetilde C_V`, which is then used in the displayed definition of `d_Q`. Thus the standalone public definition does not declare the object used by the main theorem's landing and contraction conclusions. This is a TeX-assembly error, not a defect in the accepted quotient arguments.
2. **The public appendix retains unnamed workflow-style proof interfaces in theorem hypotheses.** Proposition `prop:step-004-envelope` and Proposition `prop:step-004-certificate` assume “the preceding result_003 coverage interface” rather than a named paper-facing theorem-style result; the same section also contains the mechanical phrase “the preceding result the preceding result.” Removing workflow context leaves those propositions without a formally identified dependency, contrary to paper self-containment and theorem-statement assumption provenance. The intended accepted dependency appears to be Proposition `prop:step-003-witness-interface`, so this is repairable by assembly without changing the accepted claims.

## Nonblocking Concerns

1. No successful TeX compilation artifact is available because the reported Tectonic invocation failed before TeX processing. After the two source repairs, a local compile should be used to rule out further malformed commands or unresolved references.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: the universal sub-$1/16$ cyclic quotient contraction and its conversion into an original-relative-Frobenius stopping guarantee before the explicit cap; these claims depend on the public definition of `d_Q` being exact.
- Standalone theorem attack: the nested instance/initialization probability modes and primitive assumptions are stated explicitly, but the theorem is not presently standalone because its governing metric is malformed in the preliminaries and two appendix propositions consume an unnamed coverage interface.
- Weakest step-level claim: `step_011` (chronological quotient contraction), followed by `step_012` (residual transfer and capped restart amplification). Their accepted artifacts address target-span invariance, chronological refresh order, cap accounting, and conditional restart probability; the verified break is in their public TeX translation.
- Candidate counterexamples or stress cases: small positive smoothing, near-boundary confidence values, singular off-event landing tapes, the exact orthogonal/equal-weight state, and zero residual were tested against the stated scope. The frozen good-event proof separates singular tapes, the probability statement remains nested rather than silently unconditional, and the exact baseline is stationary with no residual floor. No additional acceptance-blocking mathematical counterexample was verified.
- Explicit-rate stress cases: the public claim retains $n,r,k,\kappa_0,\rho^{-1},\log(1/\epsilon)$, and $\log(1/\delta_{\rm init})$, separates $\delta_{\rm sm}$ from conditional restart confidence, and includes total restart work. No rate blocker beyond the malformed metric translation was verified.
- Appendix self-contained attack surface: blocking. The unnamed `result_003` dependency and duplicated mechanical prose require access to workflow lineage to infer the intended authority, even though a named accepted proposition is present and can replace them directly.
- Scope or mode upgrade attacks: no verified conditional-to-unconditional, finite-to-all-time, or in-expectation-to-high-probability upgrade was found. The theorem explicitly conditions restart success on the fixed good smoothed instance and caps every tape.
- Remaining risk: compilation and a fresh reference-resolution scan remain necessary after assembly repair; the mathematical verdict here does not rely on `assembly_report.md` or the diagnostic global proof as proof evidence.
