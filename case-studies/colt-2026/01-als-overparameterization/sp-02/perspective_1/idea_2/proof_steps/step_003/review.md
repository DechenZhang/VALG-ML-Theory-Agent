# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_003/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact same-target Pythagorean floor

- Statement fidelity: The proposition proves exactly the accepted sketch-row claim for each method and every defined iterate: the actual residual (T-S_t^M) has the stated orthogonal decomposition, and (F_M(t)) is bounded below by one half of the squared fixed orthogonal residual. It adds no primitive assumption and does not strengthen the horizon to existence of all cGD iterates.
- Proof validity: Accepted Proposition~\ref{prop:step-001-fixed-span} gives (S_t^M\in\mathcal H_M). Hence (P_{\mathcal H_M}T-S_t^M\in\mathcal H_M), while (R_M=(I-P_{\mathcal H_M})T\in\mathcal H_M^\perp). The algebraic identity
  \[
  T-S_t^M=R_M+(P_{\mathcal H_M}T-S_t^M)
  \]
  therefore has zero cross term, proving the exact Pythagorean equality. Multiplication by the objective coefficient (1/2) and removal of the displayed nonnegative in-subspace term give the claimed floor.
- Cited-result and assumption audit: The only dependency is the current accepted `step_001` proof/review pair, whose exact available conclusion is fixed-span membership and zero leakage at every defined iterate. The orthogonal-projector fact is restated in the ambient Frobenius space and fully discharged; no external citation, generated invariant, factor bound, or convergence claim is imported.
- Rigor checklist: The projector, target tensor, represented tensor, norm, method, and time index are identical on both sides of the decomposition, so this is a same-target actual-objective bound rather than a surrogate comparison. Quantifiers and the all-defined-iterate scope are correct, and the fixed residual has no time-dependent or accumulated defect.
- Local adversarial test: If (T=0), if (T\in\mathcal H_M), or if algebraically (P_{\mathcal H_M}=I), then (R_M=0) and the equality reduces correctly to the in-subspace residual identity. If (S_t^M=P_{\mathcal H_M}T), equality holds in the floor. Zero, rank-deficient, cancelling, or arbitrarily large finite factors do not affect orthogonality once membership is known.
- Contribution to target step: It supplies the exact horizon-uniform objective floor consumed by `step_007` and the constrained residual interface compared in `step_006`.
- Verdict: PASS
- Repair direction: None.

### unit_002: Fixed normalized witness in the nonzero-residual branch

- Statement fidelity: The lemma verifies precisely the setting's conditional witness definition when \(\|R_M\|_F>0\), proves that one fixed unit tensor works for every defined iterate, and explicitly declines to define or use a normalized witness when the denominator is zero.
- Proof validity: Positive residual norm makes the quotient legal and gives \(\|W_M\|_F=1\). Since (R_M\in\mathcal H_M^\perp), normalization preserves complement membership; accepted `step_001` membership then gives \(\langle W_M,S_t^M\rangle_F=0\). Decomposing (T=R_M+P_{\mathcal H_M}T) yields \(\langle W_M,T\rangle_F=\|R_M\|_F\), hence the boxed residual identity. Cauchy--Schwarz gives the matching norm floor without a sign or denominator error.
- Cited-result and assumption audit: The positive-denominator clause is a local deterministic branch condition, not a theorem-facing primitive condition or hidden invariant. Cauchy--Schwarz is restated and used only after the unit-norm property is proved. The lemma relies only on the accepted dependency and unit_001.
- Rigor checklist: (W_M) depends only on the realized (T) and fixed initialization subspace, so it is independent of (t). The proof does not divide by \(\|T\|_F\), codimension, or the objective residual, and it does not assign an artificial value to (W_M) on the zero-denominator branch.
- Local adversarial test: At (T=0), target-in-span, and literal full-span boundaries, the normalized witness is omitted and unit_001 still supplies the valid zero floor. The literal full-span case is outside the current (k<n) dependency regime but the algebra remains valid. At initialization and every first defined update, accepted `step_001` already supplies membership, so there is no activation delay. Undefined future cGD indices remain outside this step's quantifier.
- Contribution to target step: It proves the requested fixed-witness interpretation exactly where defined while preserving the unconditional Pythagorean floor on every zero-residual boundary.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim is used. Exact decomposition and objective-floor derivation are isolated in unit_001; normalization, complement membership, fixedness in time, witness pairing, and the zero-denominator branch are isolated in unit_002. The boundary section only specializes these proved identities and does not supply new mathematical authority.

## Target Claim Audit

The proof establishes the exact `step_003` claim under the sole accepted dependency output from `step_001`. For both methods and every defined iterate, it proves the full Pythagorean equality and the actual-objective floor
\[
F_M(t)\ge \frac12\|(I-P_{\mathcal H_M})T\|_F^2.
\]
It also verifies the fixed normalized witness if and only if the displayed denominator is positive. Probability mode remains deterministic on the dependency's simultaneous probability-one event, the horizon remains all-defined-iterate, and no convergence or all-index cGD existence claim is imported.

## Explicit Rate Audit

The structural quantitative interface is exact: coefficient (1/2), zero leakage, zero approximation error, and no hidden constants or auxiliary tolerances. The fixed quantities are the realized (T), method-specific projector, and residual; the exposed varying quantity is the defined iterate index. The probability, horizon, and Frobenius-norm modes match the sketch. The only dropped term is explicitly displayed as the nonnegative squared in-subspace residual. The (T=0), target-in-span, full-span, and exact/noiseless baselines preserve the same identity rather than a weaker surrogate.

## Notation Surface Audit

The notation is economical. (R_M=(I-P_{\mathcal H_M})T) is a directly defined public-facing shorthand for the exported residual, while (P=P_{\mathcal H_M}) is proof-local and \(\mathcal H_M^\perp\) is appendix-local geometric notation. All other objects are setting-defined. No helper dictionary hides boundedness, positivity, a generated condition, or a residual-transfer obligation.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-001-fixed-span} supplies exact membership for every defined iterate. Proposition~\ref{prop:step-003-pythagorean-floor} then proves the exact residual equality and objective floor, and Lemma~\ref{lem:step-003-fixed-witness} verifies the normalized witness only on its legal branch. These named results jointly imply every clause of the target step, including all requested degenerate cases, without relying on bare unit IDs, future steps, or an altered sketch interface.

## Review Rationale

`ACCEPTED` is the correct status because the submitted proof derives the exact same-target Pythagorean floor from the current accepted `step_001` membership certificate and treats normalization conditionally with a proved nonzero denominator. The zero-target, target-in-span, algebraic full-span, initialization/first-update, and undefined-future-iterate boundaries are all handled without division, hidden assumptions, horizon upgrades, or weakened conclusions. No producer, dependency, or sketch repair is needed, so `Smallest Retry Target = None`.
