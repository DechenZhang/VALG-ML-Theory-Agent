# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every defined iterate and each method, prove the Pythagorean identity and \(F_M(t)\ge\frac12\|(I-P_{\mathcal H_M})T\|_F^2\); define and verify the fixed witness only when its denominator is nonzero.
- Depends on: `step_001`.
- Assumptions used: Derived fixed-span membership from `step_001`; no further primitive assumption.
- Technical challenge: Export an exact same-target floor and avoid an iterative recurrence or hidden factor invariant.
- Intended proof tool or cited result: Direct orthogonal decomposition/Cauchy witness in the ambient Frobenius inner product.
- Output target: Horizon-uniform fixed-witness objective floor.
- Rate objective: Objective A, namely an all-defined-iterate exact residual fraction with no approximation term.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - None are used directly in this step. The finite-dimensional tensor space, the objective \(F\), the method-specific subspaces \(\mathcal H_M\), their orthogonal projectors \(P_{\mathcal H_M}\), and the represented tensors \(S_t^M\) are setting definitions rather than additional assumptions.
- Derived invariants supplied by accepted dependencies:
  - Accepted `perspective_1/idea_2/proof_steps/step_001/proof.md`, certified by its matching `review.md` with status `ACCEPTED`, proves Proposition~\ref{prop:step-001-fixed-span}: on its simultaneous probability-one full-rank event, for each \(M\in\{\mathrm{cALS},\mathrm{cGD}\}\) and every index \(t\) at which that method's iterate is defined,
    \[
    S_t^M\in\mathcal H_M,
    \qquad
    P_{\mathcal H_M}S_t^M=S_t^M,
    \qquad
    (I-P_{\mathcal H_M})S_t^M=0.
    \]
- Local conditional hypotheses:
  - The normalized witness is considered only in the branch \(\|(I-P_{\mathcal H_M})T\|_F>0\). This is a deterministic case condition needed to make the displayed quotient meaningful, not an extra theorem-facing assumption.
  - The phrase "defined iterate" is the exact horizon scope inherited from the target and from Proposition~\ref{prop:step-001-fixed-span}; it does not assume that every future cGD line search terminates.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under accepted Proposition~\ref{prop:step-001-fixed-span}, for every method \(M\) and every defined index \(t\), setting \(R_M=(I-P_{\mathcal H_M})T\) gives the exact same-target decomposition \(T-S_t^M=R_M+(P_{\mathcal H_M}T-S_t^M)\) into orthogonal summands, hence the Pythagorean identity and \(F_M(t)\ge\frac12\|R_M\|_F^2\). | Produces the horizon-uniform actual-objective floor with no recurrence, leakage, approximation, or surrogate-object residual. |
| `unit_002` | lemma | Under accepted Proposition~\ref{prop:step-001-fixed-span} and Proposition~\ref{prop:step-003-pythagorean-floor}, if \(\|R_M\|_F>0\), then \(W_M=R_M/\|R_M\|_F\) is a fixed unit tensor in \(\mathcal H_M^\perp\) satisfying \(\langle W_M,T-S_t^M\rangle_F=\|R_M\|_F\) for every defined \(t\); if \(\|R_M\|_F=0\), no normalized witness is defined or used and the unnormalized Pythagorean floor remains valid. | Verifies the fixed witness exactly on its legal denominator-nonzero branch and closes the zero-residual, \(T=0\), and full-span boundaries without an artificial convention. |

Atomic step = no. The exact orthogonal decomposition and the normalized-witness verification are distinct obligations: the first is unconditional in the residual size, while the second is meaningful only when the residual norm is nonzero.

## Cited Result Applications

No external paper result is used. The accepted dependency and the two elementary ambient-space facts used below are restated in current notation.

1. **Accepted dependency: exact fixed-span preservation.**
   - Source: Proposition~\ref{prop:step-001-fixed-span} in accepted `step_001`, with the matching step review status `ACCEPTED`.
   - Restated statement: on the simultaneous probability-one full-rank event produced there, every defined tensor iterate satisfies \(S_t^M\in\mathcal H_M\), equivalently \(P_{\mathcal H_M}S_t^M=S_t^M\) and \((I-P_{\mathcal H_M})S_t^M=0\).
   - Instantiated objects: the same method \(M\), fixed tensor subspace \(\mathcal H_M\), projector \(P_{\mathcal H_M}\), represented tensor \(S_t^M\), and defined index \(t\) as in this step.
   - Required assumptions: exactly the primitive assumptions and formal algorithm definitions discharged inside accepted `step_001`; no new condition is added here.
   - Assumption discharge: the matching accepted dependency proof/review artifacts establish the stated conclusion and certify its all-defined-iterate scope.
   - Conclusion used: \(S_t^M\in\mathcal H_M\), which places \(P_{\mathcal H_M}T-S_t^M\) in \(\mathcal H_M\) and makes it orthogonal to \((I-P_{\mathcal H_M})T\).

2. **Orthogonal-projector decomposition in the Frobenius space.**
   - Restated statement: if \(P\) is the orthogonal projector onto a linear subspace \(\mathcal H\) of a finite-dimensional real inner-product space, then \(Pu\in\mathcal H\), \((I-P)u\in\mathcal H^\perp\), and \(u=Pu+(I-P)u\). Consequently, if \(v\in\mathcal H\), then
     \[
     \|u-v\|^2=\|(I-P)u\|^2+\|Pu-v\|^2.
     \]
   - Instantiated objects: the ambient tensor Frobenius space, \(P=P_{\mathcal H_M}\), \(u=T\), and \(v=S_t^M\).
   - Required assumptions: \(P_{\mathcal H_M}\) is the orthogonal projector onto \(\mathcal H_M\), and \(S_t^M\in\mathcal H_M\).
   - Assumption discharge: the projector property is part of `setting.md`; membership is supplied by accepted Proposition~\ref{prop:step-001-fixed-span}.
   - Conclusion used: the exact Pythagorean equality in Proposition~\ref{prop:step-003-pythagorean-floor}.
   - Self-contained verification: \(P=P^{\mathsf T}=P^2\), so \(P(I-P)=0\); hence the two displayed summands are orthogonal, and expanding the squared norm gives the equality.

3. **Cauchy--Schwarz in the Frobenius inner product.**
   - Restated statement: for tensors \(A,B\) of the same finite dimensions,
     \[
     |\langle A,B\rangle_F|\le \|A\|_F\|B\|_F.
     \]
   - Instantiated objects: \(A=W_M\) and \(B=T-S_t^M\) in the denominator-nonzero branch.
   - Required assumptions: only finite-dimensionality and the Frobenius inner product.
   - Assumption discharge: both are setting-defined finite tensors; Lemma~\ref{lem:step-003-fixed-witness} proves \(\|W_M\|_F=1\).
   - Conclusion used: the witness identity implies \(\|T-S_t^M\|_F\ge\|R_M\|_F\), agreeing exactly with the Pythagorean floor.
   - Self-contained verification: for \(B\ne0\), nonnegativity of \(\|A-\lambda B\|_F^2\) at \(\lambda=\langle A,B\rangle_F/\|B\|_F^2\) gives the inequality; the case \(B=0\) is immediate.

Local-result flow is as follows. Proposition~\ref{prop:step-003-pythagorean-floor} is used by Lemma~\ref{lem:step-003-fixed-witness} to identify the fixed residual and is the direct source of the unconditional floor. The target-step assembly uses both results: the proposition proves the exact identity and all-defined-iterate objective bound, while the lemma verifies the normalized fixed witness only where the setting's quotient is defined.

## Local Derivation

### unit_001: proposition

**Proposition (Exact same-target Pythagorean floor).** \label{prop:step-003-pythagorean-floor}

Under accepted Proposition~\ref{prop:step-001-fixed-span}, fix any method
\(M\in\{\mathrm{cALS},\mathrm{cGD}\}\) and any index \(t\) for which its iterate is defined. Define the method-specific fixed residual
\[
R_M:=(I-P_{\mathcal H_M})T.
\]
Then
\[
T-S_t^M
=R_M+\bigl(P_{\mathcal H_M}T-S_t^M\bigr),
\qquad
R_M\perp \bigl(P_{\mathcal H_M}T-S_t^M\bigr),
\]
and therefore
\[
\boxed{
\|T-S_t^M\|_F^2
=\|(I-P_{\mathcal H_M})T\|_F^2
+\|P_{\mathcal H_M}T-S_t^M\|_F^2.}
\]
Equivalently, the actual method objective has the exact decomposition
\[
F_M(t)
=\frac12\|R_M\|_F^2
+\frac12\|P_{\mathcal H_M}T-S_t^M\|_F^2,
\]
so, simultaneously for every defined iterate,
\[
F_M(t)\ge \frac12\|R_M\|_F^2
=\frac12\|(I-P_{\mathcal H_M})T\|_F^2.
\]

**Proof / justification.** Write \(P=P_{\mathcal H_M}\) within this proof. Accepted Proposition~\ref{prop:step-001-fixed-span} gives
\[
S_t^M\in\mathcal H_M
\qquad\text{and}\qquad
PS_t^M=S_t^M.
\]
Because \(P\) is the orthogonal projector onto \(\mathcal H_M\), both \(PT\) and \(S_t^M\) belong to \(\mathcal H_M\), and hence
\[
PT-S_t^M\in\mathcal H_M.
\]
On the other hand,
\[
P R_M=P(I-P)T=(P-P^2)T=0,
\]
so \(R_M\in\ker P=\mathcal H_M^\perp\). Thus
\[
\left\langle R_M,PT-S_t^M\right\rangle_F=0.
\]
The residual identity is purely algebraic:
\[
T-S_t^M=(I-P)T+PT-S_t^M
=R_M+(PT-S_t^M).
\]
Expanding its squared Frobenius norm and using the zero cross term proves the boxed Pythagorean equality. The definition
\(F_M(t)=\frac12\|T-S_t^M\|_F^2\) then gives the exact objective decomposition. Since
\(\frac12\|PT-S_t^M\|_F^2\ge0\), dropping precisely this displayed nonnegative term yields the asserted floor.

The residual \(R_M\) depends only on the realized target \(T\) and the fixed initialization subspace \(\mathcal H_M\), not on \(t\). The same identity is re-evaluated at each defined index, so there is no recurrence, accumulated error, horizon-dependent constant, or factor-size condition. \(\square\)

### unit_002: lemma

**Lemma (Fixed normalized witness in the nonzero-residual branch).** \label{lem:step-003-fixed-witness}

Under accepted Proposition~\ref{prop:step-001-fixed-span} and Proposition~\ref{prop:step-003-pythagorean-floor}, fix a method \(M\). If
\[
\|R_M\|_F=\|(I-P_{\mathcal H_M})T\|_F>0,
\]
then the setting's conditional definition
\[
W_M:=\frac{R_M}{\|R_M\|_F}
\]
is well-defined and satisfies
\[
\|W_M\|_F=1,
\qquad
W_M\in\mathcal H_M^\perp,
\qquad
\langle W_M,S_t^M\rangle_F=0
\]
for every defined iterate. Moreover, the same single tensor \(W_M\) obeys
\[
\boxed{
\langle W_M,T-S_t^M\rangle_F
=\langle W_M,T\rangle_F
=\|R_M\|_F}
\]
for every defined \(t\), and hence
\[
\|T-S_t^M\|_F\ge\|R_M\|_F.
\]
If \(\|R_M\|_F=0\), no normalized witness is defined or used; Proposition~\ref{prop:step-003-pythagorean-floor} still gives the valid objective floor \(F_M(t)\ge0\) at every defined iterate.

**Proof / justification.** In the positive-denominator branch, division by \(\|R_M\|_F\) is legal and immediately gives \(\|W_M\|_F=1\). Proposition~\ref{prop:step-003-pythagorean-floor} gives \(R_M\in\mathcal H_M^\perp\), so scalar normalization also gives \(W_M\in\mathcal H_M^\perp\). Accepted Proposition~\ref{prop:step-001-fixed-span} gives \(S_t^M\in\mathcal H_M\), whence
\[
\langle W_M,S_t^M\rangle_F=0.
\]
Also \(P_{\mathcal H_M}T\in\mathcal H_M\), so
\[
\langle W_M,T\rangle_F
=\left\langle W_M,R_M+P_{\mathcal H_M}T\right\rangle_F
=\frac{\langle R_M,R_M\rangle_F}{\|R_M\|_F}
=\|R_M\|_F.
\]
Subtracting the already-zero inner product with \(S_t^M\) proves the boxed witness identity. Cauchy--Schwarz and \(\|W_M\|_F=1\) then give
\[
\|R_M\|_F
=\left|\langle W_M,T-S_t^M\rangle_F\right|
\le \|T-S_t^M\|_F.
\]

Both \(T\) and \(P_{\mathcal H_M}\) are fixed before the trajectory evolves, so \(R_M\) and, in this branch, \(W_M\) are independent of the iterate index. If \(\|R_M\|_F=0\), the quotient has zero denominator. We therefore do not assign any value to \(W_M\) in that branch and instead use the unconditional identity from Proposition~\ref{prop:step-003-pythagorean-floor}. \(\square\)

### Boundary and degenerate cases

- **Zero target \(T=0\):** then \(R_M=0\) for both methods, so the normalized witness is not defined. The exact identity becomes
  \[
  \|S_t^M\|_F^2=0+\|S_t^M\|_F^2,
  \]
  and the target floor is the valid statement \(F_M(t)\ge0\).
- **Target fully contained in the fixed span:** if \(T\in\mathcal H_M\), equivalently \(P_{\mathcal H_M}T=T\), then \(R_M=0\). Again the witness is omitted, while the exact identity reduces to
  \[
  \|T-S_t^M\|_F^2=\|T-S_t^M\|_F^2
  \]
  and the floor is zero.
- **Literal full-span boundary:** if one considers the algebraic boundary \(\mathcal H_M=\mathbb R^{n\times n\times n}\), so \(P_{\mathcal H_M}=I\), the same zero-residual conclusion holds. This boundary is excluded by the current dependency's \(k<n\) regime, but the proof itself neither divides by codimension nor fails there.
- **Sharpness:** if \(S_t^M=P_{\mathcal H_M}T\), the in-subspace residual vanishes and equality holds in the objective floor:
  \(F_M(t)=\frac12\|R_M\|_F^2\).
- **Initialization and first update:** accepted Proposition~\ref{prop:step-001-fixed-span} includes \(t=0\) and every first defined update. Hence the decomposition and, when available, the fixed witness are active immediately; no burn-in or activation event is needed.
- **Undefined future cGD index:** no statement is made about a nonexistent iterate. The bound is uniform over every index currently defined, and a later dependency supplies all-index cGD existence for final theorem assembly.
- **Factor degeneracy or size:** zero, rank-deficient, or arbitrarily large finite factors do not affect the argument once their represented tensor belongs to \(\mathcal H_M\). No factor norm, conditioning, or uniqueness enters either local unit.

## Target-Step Assembly

The only dependency used is accepted Proposition~\ref{prop:step-001-fixed-span}, which supplies exact membership \(S_t^M\in\mathcal H_M\) for each method and every defined index. Proposition~\ref{prop:step-003-pythagorean-floor} then decomposes the actual residual of the same realized target and the same represented tensor as
\[
T-S_t^M
=(I-P_{\mathcal H_M})T
+(P_{\mathcal H_M}T-S_t^M),
\]
with the first term in \(\mathcal H_M^\perp\) and the second in \(\mathcal H_M\). This proves the exact Pythagorean identity and the horizon-uniform actual-objective bound
\[
F_M(t)\ge\frac12\|(I-P_{\mathcal H_M})T\|_F^2
\]
for every defined iterate, with no iterative propagation or unaccounted residual.

When the denominator is positive, Lemma~\ref{lem:step-003-fixed-witness} verifies that the setting-defined \(W_M\) is one fixed unit tensor, independent of \(t\), whose inner product with every actual residual is exactly \(\|(I-P_{\mathcal H_M})T\|_F\). When the denominator is zero, including \(T=0\), \(T\in\mathcal H_M\), or the literal full-span boundary, the normalized witness is not defined and is not needed; the same unconditional Pythagorean identity gives the zero floor. Thus the two named local results establish every clause of the exact `step_003` sketch row and export an exact same-target interface to `step_006` and `step_007`.

## Explicit Rate Audit

- Exposed variables: the method \(M\), every defined iterate index \(t\), the realized target \(T\), and the fixed projector \(P_{\mathcal H_M}\). The exact objective coefficient is \(1/2\), and the orthogonal residual has no approximation or leakage term.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(r,n,k,q,\rho,T\), the deterministic bases, the smoothing realization, either initialization realization, the method, the iterate index, factor norms, Gram conditioning, or a trajectory horizon.
- Fixed quantities: after realizing \(T\) and the initialization span, \(\mathcal H_M\), \(P_{\mathcal H_M}\), \(R_M\), and, when defined, \(W_M\) are held fixed while the trajectory index varies.
- Probability mode: deterministic on the simultaneous probability-one dependency event certified by accepted `step_001`; this step introduces no new event, expectation, confidence parameter, conditioning conversion, or probability loss.
- Horizon mode: horizon-uniform over every defined finite cALS or cGD iterate. This step does not upgrade the cGD scope to existence of every finite index.
- Norm mode: ambient tensor Frobenius inner product and norm; the objective is exactly one half of the squared norm of the actual residual \(T-S_t^M\).
- Admissibility conditions and auxiliary tolerances: fixed-span membership from the accepted dependency. The normalized witness additionally requires the exact branch condition \(\|R_M\|_F>0\); the Pythagorean identity and objective floor require no such condition. There are no tolerances.
- Term absorption or simplification inequalities: no term is absorbed. The only inequality is the explicit removal of a nonnegative orthogonal term,
  \[
  F_M(t)
  =\frac12\|R_M\|_F^2
  +\frac12\|P_{\mathcal H_M}T-S_t^M\|_F^2
  \ge\frac12\|R_M\|_F^2.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: this step supplies the exact all-defined-iterate floor consumed by `step_007`. The separate projection-margin event and the specialization \(1-2k/n\ge3/4\) are not assumed or reproved here.
- Baseline-reduction check: at \(T=0\), at any target-in-span case \(R_M=0\), and at the literal full-span specialization \(P_{\mathcal H_M}=I\), the normalized witness is omitted and the same exact identity yields the required zero lower bound. In exact/noiseless specializations with \(R_M\ne0\), the identity and fixed witness remain unchanged. No conservative remainder or weaker horizon statement is introduced.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(T\), \(S_t^M\), \(F_M(t)\), \(\mathcal H_M\), \(P_{\mathcal H_M}\), and the conditionally defined \(W_M\) come directly from `setting.md`.
- New public-facing shorthand: \(R_M=(I-P_{\mathcal H_M})T\). It is directly defined from setting objects, is fixed in \(t\), and packages the exact residual control exported to `step_006` and `step_007`. It is not a new assumption, event, bounded quantity, or surrogate target.
- Proof-local notation: \(P=P_{\mathcal H_M}\) is used only inside the proof of Proposition~\ref{prop:step-003-pythagorean-floor}; \(\langle\cdot,\cdot\rangle_F\) denotes the standard Frobenius inner product. No proof-local notation is exported.
- Appendix-local objects: the orthogonal complement \(\mathcal H_M^\perp\) is used to state the geometric mechanism and witness location. It introduces no additional subspace or projector beyond the setting-defined \(\mathcal H_M\).
- Constant provenance: the coefficient \(1/2\) is exactly the coefficient in the setting's objective definition. No new constant, radius, threshold, margin, rate, or finite-tube quantity is introduced.
- Assumption provenance: fixed-span membership and zero leakage are derived invariants supplied by accepted Proposition~\ref{prop:step-001-fixed-span}; the Pythagorean identity, objective floor, and witness identities are proved in this step. The positive-denominator condition is used only as the local conditional branch in which normalization is mathematically defined.
- Same-target and source-convention audit: the produced fixed residual is \((I-P_{\mathcal H_M})T\), while the consumed object is the actual residual \(T-S_t^M\) for the identical realized \(T\), method, projector, tensor iterate, Frobenius inner product, and horizon index. The exact displayed decomposition accounts for every residual component; there is no population target, transformed tensor, empirical surrogate, whitening, reweighting, or norm conversion.
- Accumulation and generated-output audit: the accepted dependency is the noncircular producer of membership. This step re-establishes the floor independently at every defined index, so the accumulated defect is identically zero. The generated output is the fixed residual/floor interface, consumed later by `step_006` for the constrained-versus-unconstrained comparison and by `step_007` for theorem assembly.
- Global diagnostic use: `global_proof.md` was not read or used for this step.
