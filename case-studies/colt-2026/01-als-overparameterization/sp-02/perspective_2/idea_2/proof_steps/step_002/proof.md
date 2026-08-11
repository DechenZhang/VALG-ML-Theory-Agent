# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: On clauses 1 and 2 of
  \(\mathsf C_2(\delta,L_P,\zeta,C_T)\), prove
  \[
  \operatorname{dist}_F(D_r,\mathcal S_t)
  \ge (\delta-L_P)\|D_r\|_F
  \qquad\text{for every integer }t\ge0.
  \]
- Dependencies: None.
- Assumptions used: Explicitly conditional clauses 1 and 2 only.
- Technical challenge: Close an all-time adaptive-subspace recurrence without
  assuming that the span is fixed or that a persistent deficit already holds.
- Intended proof tool or cited result: The orthogonal-projector
  characterization of distance, the reverse triangle inequality, the induced
  operator-norm bound, and finite telescoping of
  \(\|P_{t+1}-P_t\|_{\rm op}\).
- Output target: A persistent normalized coefficient deficit in the setting's
  coefficient Frobenius geometry.
- Rate objective: Horizon-uniform exact dependence on \(\delta\) and \(L_P\),
  with total projector-motion charge exactly
  \(L_P\|D_r\|_F\) and no hidden constant.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - No `assump:<slug>` technical condition is used in this step.
  - The static, pre-trajectory parameter restrictions from the certificate
    definition are \(\delta>0\), \(L_P>0\), and \(L_P<\delta/4\). They are
    used only to verify that the exported margin is strictly positive; they
    are not generated trajectory conditions.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses:
  - Clause 1 (normalized entry deficit):
    \[
    \Delta_0=\operatorname{dist}_F(D_r,\mathcal S_0)
    \ge\delta\|D_r\|_F.
    \]
  - Clause 2 (finite adaptive-projector path):
    \[
    \sum_{t=0}^{\infty}\|P_{t+1}-P_t\|_{\rm op}\le L_P.
    \]
- Accepted dependency proof/review artifacts: None.

The coefficient space, \(D_r\), \(\mathcal S_t\), and the orthogonal
projector \(P_t=\operatorname{Proj}_{\mathcal S_t}\) are setting-defined.
Clauses 1 and 2 are theorem-facing conditional hypotheses, not primitive
assumptions and not conclusions of this step. Clauses 3 and 4, the primitive
Gaussian/base assumptions, ALS regularity, fixed-span membership, and any
certificate-probability statement are not used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | For the setting-defined coefficient Frobenius space and orthogonal projectors \(P_t\), every \(t\ge0\) satisfies \(\operatorname{dist}_F(D_r,\mathcal S_{t+1})\ge \operatorname{dist}_F(D_r,\mathcal S_t)-\|P_{t+1}-P_t\|_{\rm op}\|D_r\|_F\), including zero, full, stationary, and rank-changing spans. | Supplies the exact one-step recurrence and identifies the sole adversarial charge. |
| `unit_002` | proposition | Under clauses 1 and 2 and Lemma~\ref{lem:step-002-one-step-transport}, every \(t\ge0\) satisfies the finite telescoping bound and hence \(\operatorname{dist}_F(D_r,\mathcal S_t)\ge(\delta-L_P)\|D_r\|_F\), with \(\delta-L_P>3\delta/4>0\). | Converts the entry reserve and infinite-horizon path budget into the exact all-time output. |

Atomic step = no. The one-step projector comparison and its all-time
finite-budget accumulation are distinct nontrivial subclaims and are exposed
separately.

## Cited Result Applications

### Orthogonal projection characterization of distance

- Source or name: Elementary finite-dimensional orthogonal projection fact;
  no external paper result is used.
- Restated statement in current notation: Let \(\mathcal H\) be a
  finite-dimensional real Hilbert space, let \(\mathcal S\subseteq\mathcal H\)
  be any linear subspace, and let \(P=\operatorname{Proj}_{\mathcal S}\) be
  its orthogonal projector. Then for every \(x\in\mathcal H\),
  \[
  \operatorname{dist}(x,\mathcal S)=\|(I-P)x\|.
  \]
  The statement includes \(\mathcal S=\{0\}\), where \(P=0\), and
  \(\mathcal S=\mathcal H\), where \(P=I\).
- Instantiated objects: The coefficient Frobenius space
  \(\mathcal H=\mathbb R^{r\times r\times r}\),
  \(x=D_r\), \(\mathcal S=\mathcal S_t\), and \(P=P_t\).
- Required assumptions: Finite-dimensional inner-product geometry and an
  orthogonal projector onto the stated subspace.
- Assumption discharge: The setting equips coefficient tensors with the
  Frobenius inner product and defines \(P_t\) to be the orthogonal projector
  onto \(\mathcal S_t\) for every \(t\), including \(P_t=0\) for the zero
  span.
- Conclusion used: The exact identity
  \(\operatorname{dist}_F(D_r,\mathcal S_t)=\|(I-P_t)D_r\|_F\).

### Reverse triangle and induced operator norm

- Source or name: Elementary norm inequalities; no external paper result is
  used.
- Restated statement in current notation: In a normed linear space,
  \(\|u+v\|\ge\|u\|-\|v\|\). For a linear map \(A\) between finite-dimensional
  Frobenius spaces, \(\|Ax\|_F\le\|A\|_{\rm op}\|x\|_F\).
- Instantiated objects: The two projector residuals
  \((I-P_t)D_r\), \((I-P_{t+1})D_r\), the difference map
  \(P_{t+1}-P_t\), and \(x=D_r\).
- Required assumptions: Only the norm axioms and the definition of the induced
  operator norm.
- Assumption discharge: Both norms are exactly the coefficient Frobenius norm
  and its induced operator norm from `setting.md`.
- Conclusion used: The one-step lower recurrence proved in
  Lemma~\ref{lem:step-002-one-step-transport}.

No dependency-step result is invoked. For local result use,
Lemma~\ref{lem:step-002-one-step-transport} is consumed by
Proposition~\ref{prop:step-002-all-time-deficit}, and that proposition is
consumed in the target-step assembly. Their assumptions and conclusions are
restated in the local lemma map and immediately before their proofs below.

## Local Derivation

### unit_001: lemma

**Lemma (One-step transport under projector motion).**
\(\label{lem:step-002-one-step-transport}\)
For the setting-defined coefficient Frobenius space, subspaces
\(\mathcal S_t\), and orthogonal projectors
\(P_t=\operatorname{Proj}_{\mathcal S_t}\), every integer \(t\ge0\) satisfies
\[
\operatorname{dist}_F(D_r,\mathcal S_{t+1})
\ge
\operatorname{dist}_F(D_r,\mathcal S_t)
-\|P_{t+1}-P_t\|_{\rm op}\|D_r\|_F.
\]
This conclusion requires no certificate clause and remains valid when either
subspace is zero or full, when \(P_{t+1}=P_t\), and when the subspace
dimension changes.

**Proof.** First verify the distance identity in the present geometry. For
any coefficient subspace \(\mathcal S\), its orthogonal projector \(P\), and
any \(y\in\mathcal S\), the vectors \((I-P)D_r\in\mathcal S^\perp\) and
\(PD_r-y\in\mathcal S\) are orthogonal. Hence
\[
\|D_r-y\|_F^2
=\|(I-P)D_r\|_F^2+\|PD_r-y\|_F^2
\ge\|(I-P)D_r\|_F^2.
\]
Equality is attained at \(y=PD_r\), so
\[
\operatorname{dist}_F(D_r,\mathcal S)=\|(I-P)D_r\|_F.
\]

Apply this identity at times \(t\) and \(t+1\). The exact operator relation
\[
(I-P_t)D_r
=(I-P_{t+1})D_r+(P_{t+1}-P_t)D_r
\]
and the triangle inequality imply
\[
\begin{aligned}
\operatorname{dist}_F(D_r,\mathcal S_t)
&=\|(I-P_t)D_r\|_F\\
&\le \|(I-P_{t+1})D_r\|_F
   +\|(P_{t+1}-P_t)D_r\|_F\\
&\le \operatorname{dist}_F(D_r,\mathcal S_{t+1})
   +\|P_{t+1}-P_t\|_{\rm op}\|D_r\|_F.
\end{aligned}
\]
Rearranging proves the claimed lower recurrence.

If \(\mathcal S_j=\{0\}\), then \(P_j=0\) and the corresponding distance is
exactly \(\|D_r\|_F\). If \(\mathcal S_j\) is the full coefficient space,
then \(P_j=I\) and the distance is zero. These are the same projector
identities used above, so neither case requires a separate nondegeneracy or
rank-continuity assumption. A stationary projector simply contributes zero
charge. \(\square\)

### unit_002: proposition

**Proposition (Finite-path preservation of the coefficient deficit).**
\(\label{prop:step-002-all-time-deficit}\)
Under clauses 1 and 2 of
\(\mathsf C_2(\delta,L_P,\zeta,C_T)\), the static parameter restrictions
\(\delta>0\), \(L_P>0\), and \(L_P<\delta/4\), and
Lemma~\ref{lem:step-002-one-step-transport}, every integer \(t\ge0\) obeys
\[
\operatorname{dist}_F(D_r,\mathcal S_t)
\ge
\Delta_0-\|D_r\|_F
\sum_{s=0}^{t-1}\|P_{s+1}-P_s\|_{\rm op}
\ge(\delta-L_P)\|D_r\|_F.
\]
For \(t=0\), the displayed sum is the empty sum and equals zero. Moreover,
\[
\delta-L_P>\frac{3\delta}{4}>0.
\]

**Proof.** We first prove the finite telescoping inequality by induction on
\(t\). At \(t=0\), the empty-sum convention gives
\[
\operatorname{dist}_F(D_r,\mathcal S_0)=\Delta_0,
\]
so the first inequality holds with equality. Suppose it holds at some
\(t\ge0\). Lemma~\ref{lem:step-002-one-step-transport} then gives
\[
\begin{aligned}
\operatorname{dist}_F(D_r,\mathcal S_{t+1})
&\ge \operatorname{dist}_F(D_r,\mathcal S_t)
 -\|P_{t+1}-P_t\|_{\rm op}\|D_r\|_F\\
&\ge \Delta_0-\|D_r\|_F
 \sum_{s=0}^{t}\|P_{s+1}-P_s\|_{\rm op}.
\end{aligned}
\]
This closes the induction for every finite integer \(t\ge0\).

Every projector-motion term is nonnegative. Therefore clause 2 bounds each
finite partial sum by the full infinite-horizon budget:
\[
\sum_{s=0}^{t-1}\|P_{s+1}-P_s\|_{\rm op}
\le
\sum_{s=0}^{\infty}\|P_{s+1}-P_s\|_{\rm op}
\le L_P.
\]
Combining this with clause 1 yields
\[
\begin{aligned}
\operatorname{dist}_F(D_r,\mathcal S_t)
&\ge \Delta_0-L_P\|D_r\|_F\\
&\ge (\delta-L_P)\|D_r\|_F
\end{aligned}
\]
for the arbitrary finite time \(t\), hence for all \(t\ge0\). No limit of
\(P_t\), \(\mathcal S_t\), or the distance sequence is taken; the infinite
series is used only to dominate every finite partial sum.

Finally, the setting restriction \(L_P<\delta/4\) gives the explicit margin
arithmetic
\[
\delta-L_P>\delta-\frac{\delta}{4}
=\frac{3\delta}{4}>0.
\]
Because \(r\) is a positive integer, \(\|D_r\|_F=\sqrt r>0\), so the
exported deficit is nontrivial. In particular, a full coefficient span at any
time would give distance zero and is therefore ruled out on clauses 1 and 2.
A zero span, a stationary span, or a rank jump remains covered directly by
the recurrence and its charged projector difference. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-002-one-step-transport} proves, for arbitrary successive
setting-defined orthogonal projectors, the exact one-step recurrence
\[
\operatorname{dist}_F(D_r,\mathcal S_{t+1})
\ge
\operatorname{dist}_F(D_r,\mathcal S_t)
-\|P_{t+1}-P_t\|_{\rm op}\|D_r\|_F.
\]
It requires no fixed span, rank continuity, nonzero component feature, or
persistent-deficit premise. Proposition~\ref{prop:step-002-all-time-deficit}
starts at clause 1, includes the raw entry time \(t=0\) through the empty-sum
case, telescopes the one-step charges over each finite horizon, and uses
clause 2 to bound every such charge by \(L_P\|D_r\|_F\). Therefore, for every
integer \(t\ge0\),
\[
\operatorname{dist}_F(D_r,\mathcal S_t)
\ge(\delta-L_P)\|D_r\|_F,
\]
with \(\delta-L_P>3\delta/4>0\). This is exactly the binding `step_002`
claim and exports the derived all-time coefficient deficit consumed by
`step_003`.

## Explicit Rate Audit

- Exposed variables: \(\delta\), \(L_P\), \(r\) through
  \(\|D_r\|_F=\sqrt r\), the time index \(t\), and the finite path charges
  \(\|P_{s+1}-P_s\|_{\rm op}\) before clause-2 specialization. The dimensions
  \(n,k\) and parameters \(\kappa,q,\zeta,C_T\) do not enter the displayed
  step bound.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(r,n,k,t\), the deterministic base
  triple, the smoothing/initialization realization, or any theorem parameter.
- Fixed quantities: For each pointwise application, the coefficient
  Frobenius geometry, one realized projector path, and the certificate
  parameters \(\delta,L_P\) are fixed while \(t\) ranges over all
  nonnegative integers.
- Probability mode: Deterministic implication on the realized conditional
  interface given by clauses 1 and 2. No expectation, high-probability claim,
  conditional probability lower bound, or lower bound on
  \(\mathbb P[\mathsf C_2]\) is used.
- Horizon mode: All-time/horizon-uniform. Clause 2 is an infinite-horizon
  nonnegative series budget; the proof applies it separately to every finite
  partial sum and does not infer convergence of the projectors or distances.
- Norm mode: Coefficient Frobenius norm for distances and \(D_r\), and its
  induced operator norm for projector differences.
- Admissibility conditions and auxiliary tolerances: Exactly clauses 1 and 2,
  together with the setting-defined static restrictions
  \(\delta>0\), \(L_P>0\), and \(L_P<\delta/4\). There is no auxiliary
  tolerance beyond \(\delta,L_P\).
- Term absorption or simplification inequalities:
  \[
  \sum_{s=0}^{t-1}\|P_{s+1}-P_s\|_{\rm op}\le L_P,
  \qquad
  \delta-L_P>\frac{3\delta}{4}>0.
  \]
  No term is dropped or hidden.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports the exact
  coefficient reserve \((\delta-L_P)\|D_r\|_F\) for the same-target ambient
  bridge in `step_003`; it performs no further public-rate specialization.
- Baseline-reduction check: The exact/noiseless coordinate-orthonormal
  specialization does not change the form or hypotheses of this projector
  argument. Applied to the specialized trajectory's projectors on clauses 1
  and 2, the same all-time floor remains available, with no smoothing
  remainder and no loss of the \(\delta-L_P\) margin.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing setting objects: \(D_r\), \(\mathcal S_t\), \(P_t\),
  \(\Delta_0\), \(\delta\), \(L_P\), the coefficient Frobenius distance, and
  the induced projector operator norm are all defined in `setting.md`. The
  only exported interface is the original-notation inequality
  \(\operatorname{dist}_F(D_r,\mathcal S_t)\ge
  (\delta-L_P)\|D_r\|_F\).
- Proof-local objects: \(\mathcal H=\mathbb R^{r\times r\times r}\), the
  identity operator \(I\) on \(\mathcal H\), and the generic vectors/maps in
  `Cited Result Applications` are proof-local. No shorthand such as a new
  distance sequence, path sequence, reserve, or ledger is exported.
- Constant provenance: \(\delta\) and \(L_P\) are setting-defined certificate
  parameters. The total charge \(L_P\|D_r\|_F\) is obtained directly from
  conditional clause 2. The margin \(\delta-L_P\) is the public-facing target
  expression, and its proof-local lower bound \(3\delta/4\) follows from the
  static restriction \(L_P<\delta/4\). No free constant is introduced.
- Generated-object provenance: \(\mathcal S_t\) and \(P_t\) are generated by
  the realized ALS factors, but orthogonality of \(P_t\) follows from its
  setting definition rather than from an assumed trajectory invariant. The
  finite path property is used only as explicit conditional clause 2.
- Assumption provenance: Clauses 1 and 2 are local conditional hypotheses
  authorized by the explicitly conditional formalized goal. The persistent
  all-time deficit is proved in this step as a derived invariant before any
  downstream step consumes it. No primitive `assump:<slug>` condition and no
  accepted dependency conclusion is used.
- Boundary provenance: The zero projector and full projector are the exact
  orthogonal projectors onto the zero and full coefficient spans. The proof
  covers them algebraically; the positive derived margin then rules out a
  full span on clauses 1 and 2, rather than assuming its exclusion.
- Diagnostic boundary: `global_proof.md` was consulted only after verifying
  that the paired `global_proof_review.md` has status `ACCEPTED`. Its
  step-relevant planning suggestion was to separate the one-step projector
  recurrence from finite telescoping and the all-time budget check. The
  diagnostic was not used as proof evidence, a cited result, an assumption
  source, or authority to alter the target claim, dependencies, scope, norm,
  or conclusion; both local units above independently prove the required
  statements.
