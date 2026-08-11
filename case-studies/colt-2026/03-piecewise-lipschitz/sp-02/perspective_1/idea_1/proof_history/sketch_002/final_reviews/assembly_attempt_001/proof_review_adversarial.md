# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. **Verified break (assembly): the public affine-chart proof contains an invalid quotient inequality.** In `latex_template/5_appendix.tex`, equation (A.29) at line 1012 prints
   \[
   +m^2|H_j(s,\zeta)|,|F_j(\theta)-F_j(s)|
   \]
   where the quotient identity requires the scalar product
   \[
   +m^2|H_j(s,\zeta)|\,|F_j(\theta)-F_j(s)|.
   \]
   As printed, the comma separates two scalar expressions, so the first inequality in (A.29) is not a well-formed scalar bound and the following Lipschitz estimate does not follow from it. This is theorem-critical in the public bundle: Lemma `lem:finite-chart-legality` supplies the Lipschitz premise for the area formula in Proposition `prop:finite-chart-area`, which feeds the general affine bound (R3) and the exact monic recovery (R4). The correct multiplicative line is present in the exact accepted `step_006` producer at lines 304--312, so the accepted step interface need not change; however, that workflow file cannot repair a public proof that must stand without workflow artifacts. The shallowest repair is to reassemble the appendix with the missing multiplication restored and recheck the public bundle.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Binding And Evidence Boundary

- All controller-supplied SHA-256 values for `setting.md`, the accepted sketch pair, the accepted global diagnostic pair, `assembly_report.md`, all ten current proof/review pairs, and all nine public-bundle files matched before review.
- Every current step review records sketch attempt 2, the matching Step ID, the current unit attempt, the matching current proof digest, and status `ACCEPTED`. `step_003` is unit attempt 2; every other required step is unit attempt 1.
- `global_proof.md`, `global_proof_review.md`, and `assembly_report.md` were used only to locate attack surfaces. They supplied no proof premise and did not neutralize any attack.
- No artifact under `proof_history/` and no other specialized review was used as mathematical evidence.

## Exact Producer Replacement Audit

| Producer replaced by its exact accepted statement | Clauses available to `step_010` | Adversarial result | Classification |
| --- | --- | --- | --- |
| `step_001` | Pointwise `D_* = Delta B_Q(1+qB_P)` coordinate derivative envelope, including `q=0` and degree-zero `M` dependence | Supplies exactly the primitive derivative part of R1; no norm or probability claim is inferred from it | nonissue |
| `step_002` | Anchor-derived nonvanishing, Euclidean normalized-derivative identity, exact `h^{-1}` transfer, and projective-speed bound | Supplies the remaining R1 clauses on the identical normalized curve and metric | nonissue |
| `step_005` | Both central probability inequalities and the interval-then-law capacity bound | Supplies only R2; it is not used as a proxy for R1 | nonissue |
| `step_006` | General affine chart inequality in extended-real mode for the original coefficient vector and full joint density | Supplies R3 with arbitrary correlation and no conditional-density conversion | nonissue at the accepted-step level; see the verified public-assembly break above |
| `step_007` | Exact monic object, deterministic leading coefficient, pivot partition, both velocities, and the `d=1` convention | Supplies the detailed R4 presentation directly rather than through `step_008` | nonissue |
| `step_008` | Exact affine-monic probability bound for the `d` lower coefficients | Supplies only the R4 probability conclusion, with the exact beta-volume factor | nonissue |
| `step_009` | Counter-example tuple, exact speed and probability, lower certificate, and two distinct upper scales | Supplies exactly R5 without an equality or optimality claim | nonissue |

After those replacements, the accepted `step_010` proposition and the main theorem follow by direct conjunction with unchanged assumptions, objects, dimensions, constants, quantifiers, and modes. No unreviewed assembly lemma is needed. The blocking issue is instead the defective public transcription of one accepted derivation.

## Classified Attack Surface

| Attack | Stress construction or deletion test | Result | Classification |
| --- | --- | --- | --- |
| R1 coefficient envelope | Set `q=0`, set `Delta=0`, use zero or constant outputs, and hold `B_P` fixed while varying `M` | Empty chain sums and zero derivatives give the stated literal bounds; no monomial-count factor appears | nonissue |
| R1 norm and coordinate modes | Test `N=1`, projector-annihilated derivatives, stationary normalized curves, endpoints, and exact `x`-to-`theta` scaling | The anchor gives `F_1=1`, the denominator is at least one, the projector is Euclidean, and the only coordinate factor is `h^{-1}` | nonissue |
| Central incidence geometry | Use tangent roots, multiple roots, repeated roots, infinite fibers, identically-zero combinations, stationary subintervals, and coefficient-cube faces | The incidence remains regular because its coefficient gradient is the unit normal; projection multiplicity is nonnegative; critical images and proper linear subspaces are coefficient-null; open-to-closed cube restoration is valid | nonissue |
| Central zero-dimensional and interval boundaries | Test `N=1` and empty, singleton, open, closed, and half-open intervals | The root set is empty or a fixed proper hyperplane, while the speed integral is zero; endpoint changes are null | nonissue |
| Central law and constant conversion | Use arbitrarily correlated, thin, singular-looking but Lebesgue-density-bounded laws; set `A=1`; allow the displayed upper bound to exceed one | Only the full joint cap is used. Ball's central-section factor and `||a||_2 <= R sqrt(N)` give exactly `A sqrt(N/2)`; no clipping or independence is needed | nonissue |
| Central supremum and probability modes | Reverse-read every quantifier and attempt a conditional-to-unconditional upgrade | The proof fixes the deterministic presentation, proves ordinary probability for each law and interval, takes the interval supremum for fixed law, and only then takes the law supremum | nonissue |
| Affine chart coverage | Use near-zero pivots, disconnected measurable pivot cells, cube faces, tangent and multiple roots, infinite fibers, affine-identically-zero combinations, and divergent limiting integrals | The finite threshold sets exhaust every nonzero selected pivot; the coefficient map is exact and cube-restricted; completed measurability and monotone convergence cover the event in extended-real mode | nonissue in the accepted proof |
| Affine public self-containment | Delete access to `proof_steps/step_006/proof.md` and read the quotient/Lipschitz derivation only in the appendix | Equation (A.29) is not a scalar inequality as printed, so the public proof does not independently establish its area-formula premise | verified break |
| Monic object and dimensions | Test `d=1`, `d=2`, negative and large outer `theta`, `theta=0`, `theta=+/-1`, empty cells, and arbitrary bounded interval location | The constant cell owns zero and both transition points; all negative powers occur only for `|theta|>1`; the leading coefficient stays deterministic outside the `d`-vector | nonissue |
| Monic velocity and beta ledger | Retain the sharper high-chart constant, inspect the closed cube volume, and forbid a chart-count factor | The low speed is at most `d+R d(d-1)/2`, the high speed is at most `1+R d(d-1)/2`, the beta volume is `(2R)^(d-1)`, and disjoint cell lengths sum to `|J|` | nonissue |
| Counter-example 1 | Set `delta=1`, set `epsilon=delta`, include axes and both wedge boundaries, and compare all three scales separately | The two wedges have total area `epsilon/delta`, giving probability `epsilon/(4 delta)`, capacity lower scale `1/(4 delta)`, projective upper scale `1/delta`, and raw upper scale `sqrt(2)/delta` | nonissue |
| Normalization scope | Remove surrounding explanatory prose and ask whether the theorem claims normalization of every raw Pfaffian presentation | The setup, objective, theorem rate clause, and final assembly expressly restrict the result to the declared anchored normalization and disclaim universal raw-presentation normalization | nonissue |
| Public proof authority | Remove workflow files and search the TeX for step IDs, review status, workflow paths, proxy citations, public `claim`/`hypothesis`/`invariant` environments, or unnamed internal authorities | The bundle uses numbered assumptions and named lemma/proposition/theorem references; no workflow authority was found. The sole acceptance-blocking public defect found is (A.29) | nonissue apart from the verified break |

No candidate counterexample to the theorem statement survived checking under all five declared primitive assumptions. No unresolved high-risk candidate counterexample or tentative mathematical concern remains after the tests above.

## Adversarial Audit

- Weakest theorem-level claim: R3, because its arbitrary-measurable-partition and near-zero-pivot scope requires finite-level Lipschitz maps, completed measurability, exact event coverage, and an extended-real monotone limit. The accepted proof closes those obligations, but the public appendix corrupts its first Lipschitz estimate in (A.29).
- Standalone theorem attack: Reading only the setup, preliminaries, main theorem, proof sketch, and appendix reproduces the exact anchored theorem contract, including R1--R5, ordinary probability, arbitrary full-joint correlation, interval-then-law order, Euclidean projective/operator norms, scalar chart velocity, deterministic monic leading coefficient, and the no-universal-normalization boundary. It fails strict self-contained proof readiness only at the malformed public quotient estimate.
- Weakest step-level claim: `step_006`, `unit_001`, followed by `unit_004` and `unit_006`, because the area formula and exhaustion require the finite-chart Lipschitz conclusion. The exact accepted `unit_001` derivation contains the required product and withstands disconnected-cell, opposite-pivot-sign, near-zero-pivot, endpoint, and `N=1` tests.
- Candidate counterexamples or stress cases: `N=1`, `q=0`, `Delta=0`, stationary normalized curves, all interval endpoint conventions, tangent and multiple roots, infinite root fibers, affine-identically-zero combinations, near-zero pivots, cube faces, `d=1`, `d=2`, negative outer monic parameters, `delta=1`, `epsilon=delta`, and density-bounded arbitrarily correlated laws were tested. All are nonissues under the stated assumptions.
- Explicit-rate stress cases: The literal R1 coefficient, Ball/density conversion, R2 substitution, monic beta-volume ledger, and the three Counter-example scales were recomputed. No hidden constant, dropped parameter, probability conversion, or bound-by-one truncation was found.
- Appendix self-contained attack surface: All accepted non-atomic units have named paper-facing counterparts and substantive derivations. Equation (A.29) is a verified transcription break; internal workflow access cannot cure it.
- Scope or mode upgrade attacks: No conditional-to-unconditional, expectation-to-probability, local-to-uniform, norm, dimension, coefficient-object, or supremum-order upgrade was found. The monic clause is an exact new specialization with `N=d`, not a singular augmentation of the central random vector.
- Remaining risk: After repairing and recompiling the single public quotient line, the principal residual risk is ordinary human error in the high-dimensional area/coarea and measurable-image machinery; the present attacks found no concrete mathematical failure there.
