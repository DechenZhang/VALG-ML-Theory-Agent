# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The simplified three-regime public rate does not use either bridge form required by the Explicit Rate Contract. Theorem~`thm:main` in `latex_template/3_main.tex` states `n <= C_k r_k(lambda,sigma,epsilon,delta)`, but that file contains no corollary stating the auxiliary choices and either proving the specialization there or citing the named appendix bridge in its proof. The prose after the theorem merely points to Proposition~`prop:rate-specialization-bridge`. Although that appendix proposition does verify the scale choice, tail and group conditions, ceilings, probability conversion, term-by-term regime substitution, and final hidden-constant dependence, an appendix proposition plus prose is not one of the two permitted public interfaces. This is a LaTeX-bundle assembly defect: add a short corollary in `3_main.tex` that states the auxiliary choices and cites Proposition~`prop:rate-specialization-bridge`, or include a self-contained bridge proof there.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: Direct comparison of all eight accepted step proofs with their appendix translations found the required localization wrapper, dyadic geometry, dither and mask calculations, activation ledger, all-alias second moments, tail and normalizer bounds, conditional median argument, and final tower/ceiling assembly preserved without a derivational gap.
- Statement self-containedness: The numbered assumptions and theorem-style appendix results expose their conditions and conclusions. The main theorem body defines its dependence and modes adequately, subject to the missing public rate-corollary interface in Blocking Issue 1.
- Main theorem constants and notation: The theorem uses only setup/preliminary notation and theorem-local `k`-dependent constants; `r_k`, the fixed horizon, absolute norm, joint probability mode, and allowed hidden dependence are declared before use. No unproved derived invariant is promoted to a theorem assumption.
- Derivation-over-notation: The appendix displays the coefficient inversions, ring telescope, pointwise activation charge, variance transfer, three geometric-sum regimes, concentration constants, probability conversion, and ceiling absorptions rather than replacing them with helper notation or prose.
- Explicit-rate contract: Proposition~`prop:rate-specialization-bridge` substantively proves the auxiliary choices, technical conditions, absorptions, probability conversion, and final `k`-only dependence in all three regimes. The public presentation nevertheless fails the contract's required `3_main.tex` corollary form, as stated in Blocking Issue 1.
- Appendix full derivations: Source-to-appendix comparison was completed for `step_001` through `step_008`. The omitted source material is workflow metadata or redundant narration; no required definition, equation, inequality chain, conditioning argument, boundary check, cited-result discharge, or target-step assembly is missing from the appendix proof bodies.
- Quantifiers and constants: Quantifier order remains uniform over `D` after fixing `k`; `lambda`, `sigma`, `epsilon`, and `delta` retain their declared domains. Constants and thresholds depend only on fixed `k`, and the `k=2` calculation incurs exactly one factor `Z_S=S+1`.
- Probability or convergence modes: Refinement is conditioned only on the complete independent localization sigma-field. Conditional iid structure, Chebyshev, odd-group Hoeffding amplification, tower integration, and the final union bound preserve the stated unconditional joint probability mode and fixed non-stopping horizon.
- Boundary cases: The proofs cover `lambda=sigma`, `epsilon=c_k sigma`, `delta` approaching `1/2`, `S=1`, negative ancestor indices, half-open boundary atoms, zero variance, supported-cell laws, and point masses; no vanishing denominator or inactive-mechanism case invalidates the result.
- Hidden subclaims: No independent unreviewed mathematical lemma was found in final assembly. Static scans found no duplicate labels, unresolved internal references or citations, malformed bare reference commands, forbidden proof-workflow scaffolding, or public `claim`, `hypothesis`, or `invariant` environments.
