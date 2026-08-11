# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public appendix uses several nontrivial external standard results without either proving them in full or giving citation commands backed by matching entries in `reference.bib`. Acceptance-critical examples are the rectangular Gaussian operator-norm tail, Gaussian chi-square concentration, self-adjoint matrix Bernstein, Weyl singular-value perturbation, uniqueness of Haar measure, the compact-group curvature normalization, and the Bakry--Emery log-Sobolev criterion. The appendix states these tools and then uses them in the `step_001`, `step_003`, `step_006`, and `step_007` translations, but `reference.bib` contains no actual source entries, the public TeX contains no citation command, and `main.tex` emits no bibliography. Direct comparison with the accepted step proofs shows that the stated versions, object mappings, constants, regimes, and assumption discharges are mathematically correct. The missing proof-or-citation support is therefore an assembly-level self-containedness defect, not a reason to revise an accepted step or the sketch.

2. Several public recaps and boundary-case clauses cite the wrong accepted dependency even though the needed result is proved elsewhere in the same appendix. In the `step_004` recap, the geometric-mean balancing law is attributed to Proposition~`prop:step-002-balancing-invariance`, whereas it is established by Lemma~`lem:step-002-balancing-scalars`. In the `step_012` and `step_013` translations, Proposition~`prop:step-011-uniform-factor-radius` is cited for endpoint existence, endpoint displacement, or the zero-path identity `theta_infinity=theta_0`; those conclusions come from Lemma~`lem:step-011-finite-path-limit` and Proposition~`prop:step-011-path-radius`. The subsequent calculations are valid and the correct named results are already public, so replacing these dependency references is sufficient.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: All 15 accepted step proofs, their 45 accepted local units, the target-step assemblies, and their public appendix translations were compared. The normalized Gram concentration chain, independent product-Haar factorization, raw witness construction, endpoint Taylor margin, physical lifting, and final conditional probability accounting are derivationally valid. The two blockers concern public support and dependency attribution, not a false mathematical implication.
- Statement self-containedness: The main theorem exposes the six primitive assumptions and the sole conditional path event at the accepted scope. Public self-containedness fails only where the nontrivial standard results in blocking issue 1 have neither inline proofs nor external citations, and where the recaps in blocking issue 2 name the wrong public result.
- Main theorem constants and notation: The theorem-facing quantities are defined at the correct scope. In particular, `c_H=1/288`, the elliptic comparison loses `kappa_1^12`, the raw endpoint margin is `(15/16) delta_0 sqrt(r)`, and the relative physical loss is `((15/16) delta_0)^2 kappa_1^{-12}`. No unsupported strengthening or free theorem-local constant was found.
- Derivation-over-notation: The appendix retains the definitions, norm comparisons, conditioning transfers, matrix-concentration envelope and variance calculations, Taylor expansion, and tensor singular-value calculations needed to audit the accepted proof. Helper notation does not replace a missing internal derivation.
- Explicit-rate contract: The public result preserves the structural variables `n,r,k,kappa,q`, confidence `1-r^{-10}`, all-time/asymptotic horizon, balanced path length, physical Frobenius norm, and the possibly zero conditional path probability. Constants have the declared dependence, and no auxiliary tolerance or hidden rate category is silently absorbed.
- Appendix full derivations: Every accepted local unit has a corresponding theorem-style public unit with its substantive calculation. `step_003` has four local units because one concentration argument must establish radius control, isotropic Khatri--Rao concentration, elliptic/diagonal transfer, and the final normalized Gram event. These units form one coherent sketch obligation, are all used, and do not exhibit the repeated proof failure or incompatible decomposition that would justify sketch revision. The only missing support is the source proof-or-citation layer in blocking issue 1.
- Quantifiers and constants: Quantifier order, uniformity over deterministic base factors, the rank window, large-dimension thresholds, and constant dependence are preserved. The Gaussian and Bernstein substitutions, `c_H=1/288`, union bounds, `kappa_1^12` loss, and endpoint constants were checked without finding an algebraic or normalization error.
- Probability or convergence modes: The proof does not upgrade conditional to unconditional probability. It correctly obtains the initialization event with probability at least `1-r^{-10}`, retains `P(C_path | E_init_norm)` as a multiplicative factor that may be zero, and proves deterministic finite-path convergence only on the stated intersection event.
- Boundary cases: Zero path length, endpoint displacement equal to its allowed bound, equality in the initial deficit, and the zero conditional factor are handled without strict-inequality leakage. The zero-path conclusions are mathematically correct, but their public dependency references must be corrected as in blocking issue 2.
- Hidden subclaims: No new internal lemma is smuggled into final assembly. The only unsupported non-elementary inputs are the explicitly stated external standard results listed in blocking issue 1; their exact applications were already discharged in the accepted step artifacts.

Verdict alignment: `BLOCKING` is caused by public assembly self-containedness and dependency-reference defects. The accepted steps and sketch remain sufficient, so `assembly` and `/proof-assembly` are the shallowest aligned repair depth and target.
