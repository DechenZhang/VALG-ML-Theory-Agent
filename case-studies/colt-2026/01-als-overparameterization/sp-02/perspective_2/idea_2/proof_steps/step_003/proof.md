# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: On clause 4 of
  \(\mathsf C_2(\delta,L_P,\zeta,C_T)\) and the accepted outputs of
  `step_001` and `step_002`, prove, for every integer \(t\ge0\),
  \[
  \|T-\widehat T_t\|_F
  \ge
  \frac{\delta-L_P-\zeta}{\kappa^6C_T}\|T\|_F.
  \]
- Dependencies: accepted `step_001` and `step_002` proof/review pairs.
- Assumptions used: primitive `assump:base_conditioning` through
  `step_001`; explicitly conditional clause 4; and the derived all-time
  coefficient deficit from `step_002`.
- Technical challenge: retain the complete smoothing residual, transfer the
  coefficient lower bound to the exact ambient residual in the correct
  operator-norm direction, and convert from the \(D_r\) scale to the
  relative \(T\) scale without dropping \(L_P,\zeta,\kappa\), or \(C_T\).
- Intended proof tool or cited result: the 1-Lipschitz property of distance
  to a fixed subspace, the exact same-target identity from `step_001`, the
  all-time deficit from `step_002`, and the induced operator-norm comparison
  for \(Q\), all in the setting's current notation.
- Output target: the horizon-uniform relative ambient residual floor above,
  with exact dependence \((\delta-L_P-\zeta)/(\kappa^6C_T)\), unchanged
  conditional probability mode, and the exact/noiseless baseline preserved.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:base_conditioning`, used only through the accepted `step_001`
    conclusions that \(0<\|Q\|_{\rm op}\le\kappa^6\) and that the exact
    coefficient interface is well-defined.
  - The static certificate-parameter restrictions \(\delta>0\),
    \(L_P>0\), \(\zeta>0\), \(C_T>0\),
    \(L_P<\delta/4\), and \(\zeta<\delta/4\). These are used only for
    positivity of the displayed margin and division by \(C_T\).
- Derived invariants supplied by accepted dependencies:
  - Accepted `step_001` proof/review pair, unit attempt 1:
    \[
    0<\|Q\|_{\rm op}\le\kappa^6,
    \qquad
    \|QR\|_F\le\kappa^6\|R\|_F
    \]
    for every ambient tensor \(R\), and, for every \(t\ge0\),
    \[
    Q(T-\widehat T_t)=D_r+E_\rho-C_t,
    \qquad C_t\in\mathcal S_t.
    \]
  - Accepted `step_002` proof/review pair, unit attempt 1:
    \[
    \operatorname{dist}_F(D_r,\mathcal S_t)
    \ge(\delta-L_P)\|D_r\|_F
    \qquad\text{for every }t\ge0.
    \]
- Local conditional hypotheses:
  - Clause 4 of \(\mathsf C_2(\delta,L_P,\zeta,C_T)\), exactly as stated
    in `setting.md`:
    \[
    \|E_\rho\|_F\le\zeta\|D_r\|_F,
    \qquad
    \|T\|_F\le C_T\|D_r\|_F.
    \]
- Accepted dependency proof/review artifacts:
  - `perspective_2/idea_2/proof_steps/step_001/proof.md` and its matching
    accepted `review.md`.
  - `perspective_2/idea_2/proof_steps/step_002/proof.md` and its matching
    accepted `review.md`.

Clauses 1 and 2 are not re-assumed here; they have already been consumed by
the accepted `step_002` producer. Clause 3 is not used. No Gram condition,
factor bound, fixed-subspace property, convergence premise, positive-loss
premise, or lower bound on \(\mathbb P[\mathsf C_2]\) is introduced.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | In the setting's coefficient Frobenius space, for every linear subspace \(\mathcal S\) and coefficient tensors \(U,V\), \(|\operatorname{dist}_F(U,\mathcal S)-\operatorname{dist}_F(V,\mathcal S)|\le\|U-V\|_F\). | Controls the sole additive coefficient residual \(E_\rho\) with constant one. |
| `unit_002` | proposition | Under Assumption~\ref{assump:base_conditioning}, accepted Propositions~\ref{prop:step-001-same-target} and \ref{prop:step-002-all-time-deficit}, and the smoothing half of conditional clause 4, every \(t\ge0\) satisfies \(\|Q(T-\widehat T_t)\|_F\ge(\delta-L_P-\zeta)\|D_r\|_F\), where \(\delta-L_P-\zeta>\delta/2>0\). | Produces the coefficient-space residual floor while retaining every defect. |
| `unit_003` | proposition | Under Assumption~\ref{assump:base_conditioning}, accepted Lemma~\ref{lem:step-001-tensor-map}, Proposition~\ref{prop:step-003-coefficient-floor}, and the target-scale half of conditional clause 4, every \(t\ge0\) satisfies \(\|T-\widehat T_t\|_F\ge(\delta-L_P-\zeta)(\kappa^6C_T)^{-1}\|T\|_F\). | Transfers the exact coefficient residual to the exact ambient residual and required relative scale. |
| `unit_004` | proposition | Under Assumption~\ref{assump:base_conditioning}, accepted Propositions~\ref{prop:step-001-same-target} and \ref{prop:step-002-all-time-deficit}, and the recorded exact/noiseless specialization \(Q=I\), \(E_\rho=0\), \(T=D_r\), every \(t\ge0\) satisfies the stronger floor \(\|T-\widehat T_t\|_F\ge(\delta-L_P)\|T\|_F\). | Verifies the target-preserving baseline reduction without a smoothing or coordinate loss. |

Atomic step = no. Distance perturbation, coefficient residual assembly,
ambient norm transfer, and exact/noiseless baseline preservation are distinct
nontrivial obligations.

## Cited Result Applications

### Accepted `step_001` coordinate and same-target interface

- Source or name: accepted Lemma (Modewise tensor operator in Frobenius
  geometry), \(\ref{lem:step-001-tensor-map}\), and accepted Proposition
  (Exact same-target coefficient interface),
  \(\ref{prop:step-001-same-target}\), from the matching `step_001`
  proof/review pair.
- Restated statement in current notation: Under
  Assumption~\ref{assump:base_conditioning},
  \[
  0<\|Q\|_{\rm op}\le\kappa^6,
  \qquad
  \|QR\|_F\le\kappa^6\|R\|_F
  \]
  for every ambient tensor \(R\), and, for every integer \(t\ge0\),
  \[
  Q(T-\widehat T_t)=D_r+E_\rho-C_t,
  \qquad C_t\in\mathcal S_t.
  \]
- Instantiated objects: \(R=T-\widehat T_t\), the same realized target
  \(T\), the same represented tensor \(\widehat T_t\), and the current
  coefficient span \(\mathcal S_t\).
- Required assumptions: `assump:base_conditioning` and the setting-defined
  coordinate, tensor-product, and gauge conventions.
- Assumption discharge: `assump:base_conditioning` is an allowed primitive
  condition. The current accepted `step_001` review verifies the proof
  artifact and its unit attempt, including the raw entry, positive gauge,
  zero-component branch, and rank-changing spans.
- Conclusion used: exact coefficient-image identity, membership
  \(C_t\in\mathcal S_t\), positivity of \(\|Q\|_{\rm op}\), and the
  coefficient-to-ambient operator comparison.

### Accepted `step_002` all-time coefficient deficit

- Source or name: accepted Proposition (Finite-path preservation of the
  coefficient deficit), \(\ref{prop:step-002-all-time-deficit}\), from the
  matching `step_002` proof/review pair.
- Restated statement in current notation: On clauses 1 and 2 of
  \(\mathsf C_2(\delta,L_P,\zeta,C_T)\), for every integer \(t\ge0\),
  \[
  \operatorname{dist}_F(D_r,\mathcal S_t)
  \ge(\delta-L_P)\|D_r\|_F.
  \]
- Instantiated objects: the same \(D_r\), adaptive span \(\mathcal S_t\),
  and coefficient Frobenius distance used in the current step.
- Required assumptions: clauses 1 and 2 and their static margin restriction
  \(L_P<\delta/4\).
- Assumption discharge: the accepted dependency proof derives this output
  from those explicitly conditional clauses. The current step consumes the
  accepted derived output and does not reclassify either clause as primitive.
- Conclusion used: the horizon-uniform coefficient reserve before subtracting
  the clause-4 smoothing residual.

### Local distance perturbation result

- Source or name: Lemma (Distance to a subspace is 1-Lipschitz),
  \(\ref{lem:step-003-distance-lipschitz}\), proved below.
- Restated statement in current notation: For every coefficient subspace
  \(\mathcal S\) and coefficient tensors \(U,V\),
  \[
  \operatorname{dist}_F(U,\mathcal S)
  \ge \operatorname{dist}_F(V,\mathcal S)-\|U-V\|_F.
  \]
- Instantiated objects: \(U=D_r+E_\rho\), \(V=D_r\), and
  \(\mathcal S=\mathcal S_t\).
- Required assumptions: only the norm axioms in the setting's coefficient
  Frobenius space and that \(\mathcal S_t\) is a linear subspace.
- Assumption discharge: both facts are setting definitions, and the inequality
  is proved directly in `unit_001`.
- Conclusion used: the exact subtraction of \(\|E_\rho\|_F\) in
  Proposition~\ref{prop:step-003-coefficient-floor}.

No external paper theorem is used. Proposition~\ref{prop:step-003-coefficient-floor}
is consumed by Proposition~\ref{prop:step-003-ambient-floor}; both are then
consumed in the target-step assembly. Proposition~\ref{prop:step-003-baseline-floor}
is consumed only by the baseline-reduction audit.

## Local Derivation

### unit_001: lemma

**Lemma (Distance to a subspace is 1-Lipschitz).**
\(\label{lem:step-003-distance-lipschitz}\)
In the setting-defined coefficient Frobenius space, let \(\mathcal S\) be
any linear subspace and let \(U,V\) be any coefficient tensors. Then
\[
\left|
\operatorname{dist}_F(U,\mathcal S)
-\operatorname{dist}_F(V,\mathcal S)
\right|
\le\|U-V\|_F.
\]
In particular,
\[
\operatorname{dist}_F(U,\mathcal S)
\ge
\operatorname{dist}_F(V,\mathcal S)-\|U-V\|_F.
\]

**Proof.** For every \(S\in\mathcal S\), the triangle inequality gives
\[
\|U-S\|_F
\le \|U-V\|_F+\|V-S\|_F.
\]
Taking the infimum over \(S\in\mathcal S\) yields
\[
\operatorname{dist}_F(U,\mathcal S)
\le \|U-V\|_F+\operatorname{dist}_F(V,\mathcal S).
\]
Interchanging \(U\) and \(V\) gives the reverse one-sided comparison, and
combining the two proves the absolute-value inequality. This argument also
covers \(\mathcal S=\{0\}\), the full coefficient space, and every
rank-deficient intermediate subspace. \(\square\)

### unit_002: proposition

**Proposition (Coefficient residual floor with explicit smoothing loss).**
\(\label{prop:step-003-coefficient-floor}\)
Under Assumption~\ref{assump:base_conditioning}, accepted
Propositions~\ref{prop:step-001-same-target} and
\ref{prop:step-002-all-time-deficit},
Lemma~\ref{lem:step-003-distance-lipschitz}, the conditional clause-4 bound
\(\|E_\rho\|_F\le\zeta\|D_r\|_F\), and the static restrictions
\(L_P<\delta/4\) and \(\zeta<\delta/4\), every integer \(t\ge0\) obeys
\[
\|Q(T-\widehat T_t)\|_F
\ge(\delta-L_P-\zeta)\|D_r\|_F,
\]
and the coefficient margin satisfies
\[
\delta-L_P-\zeta>\frac{\delta}{2}>0.
\]

**Proof.** Fix an arbitrary integer \(t\ge0\). Accepted
Proposition~\ref{prop:step-001-same-target} gives the exact identity and
membership
\[
Q(T-\widehat T_t)=D_r+E_\rho-C_t,
\qquad C_t\in\mathcal S_t.
\]
Because \(C_t\) is one admissible point of \(\mathcal S_t\),
\[
\begin{aligned}
\|Q(T-\widehat T_t)\|_F
&=\|D_r+E_\rho-C_t\|_F\\
&\ge \operatorname{dist}_F(D_r+E_\rho,\mathcal S_t).
\end{aligned}
\]
Lemma~\ref{lem:step-003-distance-lipschitz}, instantiated with
\(U=D_r+E_\rho\) and \(V=D_r\), then yields
\[
\operatorname{dist}_F(D_r+E_\rho,\mathcal S_t)
\ge
\operatorname{dist}_F(D_r,\mathcal S_t)-\|E_\rho\|_F.
\]
The accepted output of
Proposition~\ref{prop:step-002-all-time-deficit} and conditional clause 4
therefore give, without dropping either defect,
\[
\begin{aligned}
\|Q(T-\widehat T_t)\|_F
&\ge
(\delta-L_P)\|D_r\|_F-\zeta\|D_r\|_F\\
&=(\delta-L_P-\zeta)\|D_r\|_F.
\end{aligned}
\]
Finally, the two strict static restrictions imply
\[
\delta-L_P-\zeta
>
\delta-\frac{\delta}{4}-\frac{\delta}{4}
=\frac{\delta}{2}>0.
\]
The time \(t\) was arbitrary, so the result holds at the raw entry and at
every later time. The smoothing residual is fixed and subtracted once at each
pointwise comparison; it is not accumulated along the horizon. \(\square\)

### unit_003: proposition

**Proposition (Exact same-target ambient residual floor).**
\(\label{prop:step-003-ambient-floor}\)
Under Assumption~\ref{assump:base_conditioning}, accepted
Lemma~\ref{lem:step-001-tensor-map},
Proposition~\ref{prop:step-003-coefficient-floor}, the conditional clause-4
bound \(\|T\|_F\le C_T\|D_r\|_F\), and \(C_T>0\), every integer
\(t\ge0\) obeys
\[
\|T-\widehat T_t\|_F
\ge
\frac{\delta-L_P-\zeta}{\kappa^6C_T}\|T\|_F.
\]

**Proof.** Fix \(t\ge0\) and put \(R_t=T-\widehat T_t\) only for this
proof. Accepted Lemma~\ref{lem:step-001-tensor-map} gives
\[
0<\|Q\|_{\rm op}\le\kappa^6,
\qquad
\|QR_t\|_F\le\|Q\|_{\rm op}\|R_t\|_F.
\]
Positivity of \(\|Q\|_{\rm op}\) permits division, and the upper bound on
that norm gives the lower-bound direction
\[
\|R_t\|_F
\ge \frac{\|QR_t\|_F}{\|Q\|_{\rm op}}
\ge \kappa^{-6}\|QR_t\|_F.
\]
Applying Proposition~\ref{prop:step-003-coefficient-floor} gives
\[
\|T-\widehat T_t\|_F
\ge
\kappa^{-6}(\delta-L_P-\zeta)\|D_r\|_F.
\]
The second half of conditional clause 4 and \(C_T>0\) imply
\[
\|D_r\|_F\ge C_T^{-1}\|T\|_F.
\]
Substitution proves
\[
\|T-\widehat T_t\|_F
\ge
\frac{\delta-L_P-\zeta}{\kappa^6C_T}\|T\|_F.
\]
No division by \(\|T\|_F\) occurs, so the statement also covers \(T=0\);
in that case the relative right-hand side is zero. Since \(t\) was
arbitrary, the conclusion is horizon-uniform. \(\square\)

### unit_004: proposition

**Proposition (Exact/noiseless baseline residual floor).**
\(\label{prop:step-003-baseline-floor}\)
Under Assumption~\ref{assump:base_conditioning}, accepted
Propositions~\ref{prop:step-001-same-target} and
\ref{prop:step-002-all-time-deficit}, and the recorded exact/noiseless
coordinate-orthonormal specialization
\[
Q=I,
\qquad E_\rho=0,
\qquad T=D_r,
\]
every integer \(t\ge0\) obeys the stronger bound
\[
\|T-\widehat T_t\|_F
\ge(\delta-L_P)\|T\|_F.
\]

**Proof.** Under the stated specialization, accepted
Proposition~\ref{prop:step-001-same-target} reduces exactly to
\[
T-\widehat T_t=D_r-C_t,
\qquad C_t\in\mathcal S_t.
\]
Hence
\[
\begin{aligned}
\|T-\widehat T_t\|_F
&=\|D_r-C_t\|_F\\
&\ge\operatorname{dist}_F(D_r,\mathcal S_t)\\
&\ge(\delta-L_P)\|D_r\|_F\\
&=(\delta-L_P)\|T\|_F,
\end{aligned}
\]
where the second inequality is the accepted output of
Proposition~\ref{prop:step-002-all-time-deficit}. Thus the zero-smoothing,
identity-coordinate specialization removes the smoothing subtraction and
coordinate/target-scale losses instead of replacing the inherited baseline
conclusion by a weaker remainder. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-001-same-target} places the exact ambient
residual in coefficient space as
\(D_r+E_\rho-C_t\) with \(C_t\in\mathcal S_t\). Accepted
Proposition~\ref{prop:step-002-all-time-deficit} supplies the derived
all-time reserve \((\delta-L_P)\|D_r\|_F\). Lemma~\ref{lem:step-003-distance-lipschitz}
shows that adding the sole coefficient residual \(E_\rho\) can reduce the
distance to \(\mathcal S_t\) by at most \(\|E_\rho\|_F\). Conditional
clause 4 therefore yields Proposition~\ref{prop:step-003-coefficient-floor}:
\[
\|Q(T-\widehat T_t)\|_F
\ge(\delta-L_P-\zeta)\|D_r\|_F
\qquad\text{for every }t\ge0.
\]

Accepted Lemma~\ref{lem:step-001-tensor-map} transfers that lower bound to
the same ambient residual with distortion at most \(\kappa^6\), and the
target-scale half of clause 4 converts \(\|D_r\|_F\) to
\(C_T^{-1}\|T\|_F\). Proposition~\ref{prop:step-003-ambient-floor}
therefore proves exactly
\[
\|T-\widehat T_t\|_F
\ge
\frac{\delta-L_P-\zeta}{\kappa^6C_T}\|T\|_F
\qquad\text{for every }t\ge0.
\]
The margin is strictly positive because
\(\delta-L_P-\zeta>\delta/2\). Proposition~\ref{prop:step-003-baseline-floor}
separately verifies that the recorded exact/noiseless specialization retains
the stronger \((\delta-L_P)\|T\|_F\) floor. No probability statement is
made: this is a deterministic implication on every realized trajectory for
which the accepted dependency outputs and clause 4 hold. Squaring the
nonnegative floor and passing to an objective limit are intentionally left to
`step_005`, exactly as required by the accepted roadmap.

## Explicit Rate Audit

- Exposed variables: \(\kappa,\delta,L_P,\zeta,C_T\), the time index
  \(t\), and \(r\) through \(\|D_r\|_F=\sqrt r\) before target-scale
  conversion. The theorem-scope variables \(n,k\) and the fixed smoothing
  exponent \(q\) do not appear as extra factors in the displayed floor.
- Hidden constants may depend on: None in the residual floor.
- Hidden constants may not depend on: \(r,n,k,t\), the admissible
  deterministic base triple, the smoothing/initialization realization, or
  any theorem parameter.
- Fixed quantities: \(\kappa,q\), the selected theorem-facing constants
  \(\delta,L_P,\zeta,C_T\), one admissible deterministic base triple, and
  one realized trajectory while \(t\) ranges over all nonnegative integers.
- Probability mode: deterministic implication on the explicitly conditional
  certificate interface. The current step consumes clause 4 and accepted
  outputs already derived from clauses 1--2. It makes no expectation,
  high-probability statement, conditional probability lower bound, union
  bound, or claim that \(\mathsf C_2\) is nonempty.
- Horizon mode: horizon-uniform/all-time for every integer \(t\ge0\). The
  projector accumulation was already closed by `step_002`; the fixed
  \(E_\rho\) term is dominated pointwise and is not summed again.
- Norm mode: coefficient Frobenius norm for
  \(D_r,E_\rho,C_t\) and distance to \(\mathcal S_t\); induced operator
  norm from ambient to coefficient Frobenius tensor space for \(Q\); ambient
  tensor Frobenius norm for \(T,\widehat T_t\), and their residual.
- Admissibility conditions and auxiliary tolerances: accepted `step_001` and
  `step_002` outputs; exact conditional clause 4; and the static restrictions
  \(L_P<\delta/4\), \(\zeta<\delta/4\), \(C_T>0\). No additional
  tolerance, event, or regularity condition is introduced.
- Term absorption or simplification inequalities:
  \[
  \begin{aligned}
  \|Q(T-\widehat T_t)\|_F
  &\ge
  \operatorname{dist}_F(D_r,\mathcal S_t)-\|E_\rho\|_F\\
  &\ge(\delta-L_P-\zeta)\|D_r\|_F,
  \end{aligned}
  \]
  \[
  \delta-L_P-\zeta
  >\delta-\frac{\delta}{4}-\frac{\delta}{4}
  =\frac{\delta}{2}>0,
  \]
  and
  \[
  \|T-\widehat T_t\|_F
  \ge\kappa^{-6}(\delta-L_P-\zeta)\|D_r\|_F
  \ge
  \frac{\delta-L_P-\zeta}{\kappa^6C_T}\|T\|_F.
  \]
  Every defect and scale factor remains explicit.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: this step exports the
  exact horizon-uniform residual factor
  \((\delta-L_P-\zeta)/(\kappa^6C_T)\). `step_005` may square this
  already-proved nonnegative inequality to obtain
  \(\epsilon=((\delta-L_P-\zeta)/(\kappa^6C_T))^2\); no further
  simplification is authorized here.
- Baseline-reduction check: Proposition~\ref{prop:step-003-baseline-floor}
  proves that under \(Q=I\), \(E_\rho=0\), and \(T=D_r\), the result
  strengthens to
  \(\|T-\widehat T_t\|_F\ge(\delta-L_P)\|T\|_F\). Thus the inherited
  exact/noiseless constant-relative floor is preserved without a conservative
  smoothing, coordinate, or target-scale loss.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing, setting-defined objects: \(T,\widehat T_t,Q,D_r,E_\rho,
  C_t,\mathcal S_t,\delta,L_P,\zeta,C_T\), and \(\kappa\). The only new
  downstream-facing interface exported by this step is the target inequality
  in the setting's original notation; no new theorem parameter is introduced.
- Accepted dependency objects: the exact `step_001` operator/identity output
  and the all-time `step_002` coefficient deficit are derived controls with
  current matching accepted reviews. They are not reclassified as primitive
  assumptions.
- Proof-local objects: the generic subspace \(\mathcal S\), coefficient
  tensors \(U,V,S\), and the temporary abbreviation
  \(R_t=T-\widehat T_t\) used inside
  Proposition~\ref{prop:step-003-ambient-floor}. These objects are not
  exported. No appendix-local helper dictionary is needed.
- Constant provenance: \(\kappa^6\) is inherited from accepted
  Lemma~\ref{lem:step-001-tensor-map}; \(\delta-L_P\) is inherited from
  accepted Proposition~\ref{prop:step-002-all-time-deficit}; \(\zeta\) and
  \(C_T\) are exactly the clause-4 certificate parameters. The final factor
  is obtained only by the displayed subtraction, operator comparison, and
  target-scale inequality. There is no hidden or freely chosen constant.
- Assumption provenance: `assump:base_conditioning` is primitive and is used
  through the accepted coordinate producer. Clause 4 is a local conditional
  hypothesis authorized by the explicitly conditional formalized goal. The
  coefficient and ambient residual floors are proved in this step. Clauses 1
  and 2 are consumed only through the accepted `step_002` derived output;
  clause 3 is unused.
- Generated-output flow: accepted `step_001` exact coordinate interface plus
  accepted `step_002` persistent deficit plus conditional clause 4 ->
  Proposition~\ref{prop:step-003-coefficient-floor} ->
  Proposition~\ref{prop:step-003-ambient-floor} -> `step_005`. No consumer
  appears before its producer, and no positive-loss conclusion is assumed.
- Boundary provenance: the argument is pointwise for \(t=0\) and every later
  time, and it remains valid for zero or rank-deficient coefficient spans,
  changing span dimension, \(E_\rho=0\), and \(T=0\). Strict certificate
  margins keep the coefficient reserve positive at their allowed boundary.
- Diagnostic boundary: `global_proof.md` was read only after confirming that
  the paired `global_proof_review.md` has `Global-Proof Review Status =
  ACCEPTED`. Its `step_003` planning interface, namely the displayed
  distance perturbation, exact residual transfer, strict-margin check, and
  target-scale conversion, was used only to organize the local units. The
  diagnostic was not used as proof evidence, a cited result, an assumption
  source, or authority to change the target claim, dependencies, scope,
  probability mode, norm, or conclusion.
