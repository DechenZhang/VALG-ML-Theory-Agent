# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 2

## Target Step Claim

- Intended claim: Combine `step_003` and `step_004` to prove the exact event
  inclusion with
  \[
  \epsilon=
  \left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2,
  \]
  while making no assertion on \(\mathbb P[\mathsf C_2]\).
- Dependencies: accepted `step_003` and `step_004` proof/review pairs.
- Assumptions used: primitive `assump:dimension`, `assump:rank_window`,
  `assump:base_conditioning`, `assump:gaussian_smoothing`, and
  `assump:independent_initialization` for the exact theorem scope; no new
  conditional clause.
- Technical challenge: align the horizon-uniform floor with the asymptotic
  objective limit and preserve the conditional probability boundary.
- Intended proof tool or cited result: square the established nonnegative
  norm inequality and pass the resulting scalar lower bound to the existing
  finite limit.
- Output target: the final conditional theorem.
- Rate objective: asymptotic relative objective floor with the displayed
  explicit \(\epsilon\), with no probability conversion or simplification
  beyond the displayed equality.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:dimension`, preserving the exact ambient-dimension scope.
  - `assump:rank_window`, preserving the exact full superlinear rank window.
  - `assump:base_conditioning`, already consumed in the accepted derivation
    of the `step_003` residual floor and retained in the final theorem scope.
  - `assump:gaussian_smoothing`, specifying the target law and joint
    probability space but not producing the certificate.
  - `assump:independent_initialization`, specifying the trajectory law and
    joint probability space but not producing the certificate.
  - The setting-defined static parameter restrictions
    \(\delta,L_P,\zeta,C_T>0\), \(L_P<\delta/4\),
    \(\zeta<\delta/4\), and \(\kappa\ge1\). These are checkable before a
    trajectory is unfolded and are used only to define a positive explicit
    margin.
- Derived invariants supplied by accepted dependencies:
  - Accepted `step_003` proof/review pair, sketch attempt 1 and unit attempt
    1: on the applicable certificate clauses, for every integer \(t\ge0\),
    \[
    \|T-\widehat T_t\|_F
    \ge
    \frac{\delta-L_P-\zeta}{\kappa^6C_T}\|T\|_F.
    \]
  - Accepted `step_004` proof/review pair, sketch attempt 1 and unit attempt
    1: on clause 3, there exists
    \(\widehat T_\infty\in\mathbb R^{n\times n\times n}\) such that
    \[
    \widehat T_t\to\widehat T_\infty,
    \qquad
    \mathcal L(X_t,Y_t,Z_t)
    \to\|T-\widehat T_\infty\|_F^2<\infty.
    \]
- Local conditional hypotheses:
  - For the pathwise implication, fix an arbitrary realized trajectory in
    exactly the setting-defined event
    \(\mathsf C_2(\delta,L_P,\zeta,C_T)\). This is the explicitly
    conditional antecedent authorized by the formalized goal. It unpacks to
    exactly the four certificate clauses only so the accepted dependency
    outputs apply; no fifth clause, nonemptiness premise, or probability
    lower bound is introduced.
- Accepted dependency proof/review artifacts:
  - `perspective_2/idea_2/proof_steps/step_003/proof.md` and its matching
    accepted `review.md`.
  - `perspective_2/idea_2/proof_steps/step_004/proof.md` and its matching
    accepted `review.md`.

The dimension, rank-window, smoothing, and initialization conditions remain
in the theorem's primitive quantifier scope even though the final pathwise
limit argument uses no additional quantitative content from them. In
particular, no Gram conditioning, factor bound, descent inequality,
fixed-subspace property, basin, quotient regularity, or other hidden ALS
regularity is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | If a real sequence \((a_t)_{t\ge0}\) has a finite limit \(a\) and \(a_t\ge b\) for every \(t\), then \(a\ge b\). | Justifies the exact passage of a horizon-uniform scalar lower bound to an existing finite limit. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, \ref{assump:base_conditioning}, \ref{assump:gaussian_smoothing}, and \ref{assump:independent_initialization}, accepted Proposition~\ref{prop:step-003-ambient-floor}, accepted Lemma~\ref{lem:step-004-finite-variation}, accepted Proposition~\ref{prop:step-004-objective-limit}, Lemma~\ref{lem:step-005-limit-order}, and membership in \(\mathsf C_2\), define \(m=\delta-L_P-\zeta\) and \(\epsilon=(m/(\kappa^6C_T))^2\). Then \(m>\delta/2\), \(\epsilon>0\), the objective has a finite limit, and that limit is at least \(\epsilon\|T\|_F^2\). | Performs the nonnegative squaring and scalar limit passage with all dependence retained. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, \ref{assump:base_conditioning}, \ref{assump:gaussian_smoothing}, and \ref{assump:independent_initialization}, the static margin restrictions, and Proposition~\ref{prop:step-005-pathwise-closure}, the setting-defined joint law satisfies the exact set inclusion from \(\mathsf C_2\) into the finite-limit and relative-loss event, without a lower bound on \(\mathbb P[\mathsf C_2]\). | Converts the pathwise implication into the exact theorem-facing event inclusion without a probability upgrade. |
| `unit_004` | proposition | Under accepted Propositions~\ref{prop:step-003-baseline-floor} and \ref{prop:step-004-objective-limit}, accepted Lemma~\ref{lem:step-004-finite-variation}, Lemma~\ref{lem:step-005-limit-order}, conditional clause 3, \(\delta>0\), \(L_P<\delta/4\), and the recorded specialization \(Q=I\), \(E_\rho=0\), and \(T=D_r\), the stronger limiting floor \((\delta-L_P)^2\|T\|_F^2\) holds. | Verifies the exact/noiseless baseline invariance obligation. |

Atomic step = no. Order preservation under limits, pathwise quantitative
closure, set-theoretic event inclusion, and baseline preservation are
separate audit obligations even though each is short.

## Cited Result Applications

### Accepted `step_003` horizon-uniform ambient residual floor

- Source or name: accepted Proposition (Exact same-target ambient residual
  floor), \(\ref{prop:step-003-ambient-floor}\), from the current matching
  `step_003` proof/review pair.
- Restated statement in current notation: Under
  Assumption~\ref{assump:base_conditioning}, the accepted upstream
  coordinate and coefficient-deficit outputs, and conditional clause 4, for
  every integer \(t\ge0\),
  \[
  \|T-\widehat T_t\|_F
  \ge
  \frac{\delta-L_P-\zeta}{\kappa^6C_T}\|T\|_F,
  \qquad
  \delta-L_P-\zeta>\frac{\delta}{2}>0.
  \]
- Instantiated objects: the same realized target \(T\), represented tensor
  \(\widehat T_t\), ambient Frobenius norm, and certificate parameters used
  by the current step.
- Required assumptions: the accepted `step_003` dependencies and clause 4,
  with the static margin restrictions from `setting.md`.
- Assumption discharge: membership in the full event \(\mathsf C_2\)
  supplies clause 4 and the earlier clauses already consumed by the accepted
  dependency chain. The matching `step_003` review has status `ACCEPTED` for
  sketch attempt 1 and unit attempt 1.
- Conclusion used: the nonnegative norm floor that is squared in
  Proposition~\ref{prop:step-005-pathwise-closure}.

### Accepted `step_004` represented-tensor and objective limit

- Source or name: accepted Lemma (Finite represented-tensor variation gives
  ambient convergence), \(\ref{lem:step-004-finite-variation}\), and
  accepted Proposition (Finite objective limit from represented-tensor
  convergence), \(\ref{prop:step-004-objective-limit}\), from the current
  matching `step_004` proof/review pair.
- Restated statement in current notation: On conditional clause 3, there is
  a tensor \(\widehat T_\infty\) in the same ambient space such that
  \[
  \widehat T_t\to\widehat T_\infty,
  \qquad
  \mathcal L(X_t,Y_t,Z_t)
  \to\|T-\widehat T_\infty\|_F^2<\infty.
  \]
- Instantiated objects: the same \(T\), \(\widehat T_t\), objective, and
  ambient Frobenius norm used by the current step.
- Required assumptions: exactly conditional clause 3; no primitive
  Gaussian, Gram, factor, descent, or Kurdyka--Lojasiewicz condition is
  needed for the convergence derivation.
- Assumption discharge: membership in \(\mathsf C_2\) supplies clause 3.
  The matching `step_004` review has status `ACCEPTED` for sketch attempt 1
  and unit attempt 1.
- Conclusion used: existence and finiteness of the limit of the same scalar
  objective sequence that carries the accepted all-time lower bound.

### Accepted exact/noiseless baseline floor

- Source or name: accepted Proposition (Exact/noiseless baseline residual
  floor), \(\ref{prop:step-003-baseline-floor}\), from the current matching
  `step_003` proof/review pair.
- Restated statement in current notation: Under the recorded specialization
  \(Q=I\), \(E_\rho=0\), and \(T=D_r\), for every integer \(t\ge0\),
  \[
  \|T-\widehat T_t\|_F\ge(\delta-L_P)\|T\|_F.
  \]
- Required assumptions and discharge: the accepted coordinate and
  projector-deficit dependencies under the same conditional entry/path
  clauses; these were checked by the accepted `step_003` review.
- Conclusion used: the stronger pointwise baseline floor in
  Proposition~\ref{prop:step-005-baseline-limit}.

### Local lower-bound limit principle

- Source or name: Lemma (Uniform lower bounds pass to a finite limit),
  \(\ref{lem:step-005-limit-order}\), proved below.
- Restated statement: if \(a_t\to a\in\mathbb R\) and \(a_t\ge b\) for
  every \(t\), then \(a\ge b\).
- Required assumptions: only ordinary convergence and the displayed
  pointwise order.
- Assumption discharge: accepted `step_004` supplies convergence of the
  objective sequence; squaring the accepted `step_003` norm floor supplies
  its pointwise lower bound.
- Conclusion used: the asymptotic loss floor in
  Proposition~\ref{prop:step-005-pathwise-closure} and the baseline floor in
  Proposition~\ref{prop:step-005-baseline-limit}.

### Local pathwise closure result

- Source or name: Proposition (Pathwise closure of the conditional loss
  floor), \(\ref{prop:step-005-pathwise-closure}\), proved below.
- Restated statement: under all five primitive scope assumptions, the current
  accepted `step_003` and `step_004` results, the static margin restrictions,
  and membership in \(\mathsf C_2\), the objective has a finite limit and
  \[
  \lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
  \ge
  \left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2\|T\|_F^2.
  \]
- Required assumptions and discharge: the primitive conditions fix the
  theorem scope and law; membership in \(\mathsf C_2\) supplies the exact
  conditional clauses needed by the accepted dependencies; the proof below
  checks strict positivity, nonnegative squaring, and limit order.
- Conclusion used: the outcome-by-outcome implication in
  Proposition~\ref{prop:step-005-event-inclusion} and the target-step
  assembly.

### Local event-inclusion result

- Source or name: Proposition (Exact conditional event inclusion),
  \(\ref{prop:step-005-event-inclusion}\), proved below.
- Restated statement: under the exact primitive joint-law scope and static
  margin restrictions, every outcome in \(\mathsf C_2\) has a finite
  objective limit at least
  \(((\delta-L_P-\zeta)/(\kappa^6C_T))^2\|T\|_F^2\).
- Required assumptions and discharge: Proposition~\ref{prop:step-005-pathwise-closure}
  supplies the property for an arbitrary outcome in the antecedent event;
  no probability value is needed.
- Conclusion used: the exact final event inclusion in the target-step
  assembly.

### Local exact/noiseless baseline result

- Source or name: Proposition (Exact/noiseless limiting-loss baseline),
  \(\ref{prop:step-005-baseline-limit}\), proved below.
- Restated statement: under the accepted specialized residual floor, the
  accepted finite objective limit, clause 3, and
  \(Q=I\), \(E_\rho=0\), \(T=D_r\), the limiting objective is at least
  \((\delta-L_P)^2\|T\|_F^2\).
- Required assumptions and discharge: the two accepted dependency pairs
  supply the pointwise baseline floor and the finite limit; the proof below
  checks the sign before squaring and applies
  Lemma~\ref{lem:step-005-limit-order}.
- Conclusion used: the baseline-reduction part of the target-step assembly
  and explicit-rate audit.

No external paper theorem is used in this step. Proposition~\ref{prop:step-005-pathwise-closure}
is consumed by Proposition~\ref{prop:step-005-event-inclusion}; both, along
with Proposition~\ref{prop:step-005-baseline-limit}, are consumed by the
target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Uniform lower bounds pass to a finite limit).**
\(\label{lem:step-005-limit-order}\)
Let \((a_t)_{t\ge0}\) be a real sequence, let \(a,b\in\mathbb R\), and
suppose
\[
a_t\longrightarrow a,
\qquad
a_t\ge b\quad\text{for every integer }t\ge0.
\]
Then \(a\ge b\).

**Proof.** Suppose instead that \(a<b\). Set
\(\eta=(b-a)/2>0\). By convergence, there is an integer \(N\) such that
\(|a_t-a|<\eta\) for every \(t\ge N\). For such \(t\),
\[
a_t<a+\eta=\frac{a+b}{2}<b,
\]
contradicting \(a_t\ge b\). Hence \(a\ge b\). \(\square\)

### unit_002: proposition

**Proposition (Pathwise closure of the conditional loss floor).**
\(\label{prop:step-005-pathwise-closure}\)
Under Assumptions~\ref{assump:dimension},
\ref{assump:rank_window}, \ref{assump:base_conditioning},
\ref{assump:gaussian_smoothing}, and
\ref{assump:independent_initialization}, the accepted
Proposition~\ref{prop:step-003-ambient-floor}, accepted
Lemma~\ref{lem:step-004-finite-variation}, accepted
Proposition~\ref{prop:step-004-objective-limit}, and
Lemma~\ref{lem:step-005-limit-order}, suppose a realized trajectory belongs to
\(\mathsf C_2(\delta,L_P,\zeta,C_T)\), where
\(\delta,L_P,\zeta,C_T>0\), \(L_P<\delta/4\), and
\(\zeta<\delta/4\). Define
\[
m:=\delta-L_P-\zeta,
\qquad
\epsilon:=\left(\frac{m}{\kappa^6C_T}\right)^2.
\]
Then \(m>\delta/2>0\), \(\epsilon>0\), and
\[
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
=\|T-\widehat T_\infty\|_F^2<\infty,
\]
with
\[
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge\epsilon\|T\|_F^2.
\]

**Proof.** The two strict parameter restrictions give the visible margin
calculation
\[
m
=\delta-L_P-\zeta
>\delta-\frac{\delta}{4}-\frac{\delta}{4}
=\frac{\delta}{2}>0.
\tag{1}
\]
Since \(\kappa\ge1\) and \(C_T>0\), equation (1) also gives
\(\epsilon>0\).

For every integer \(t\ge0\), accepted
Proposition~\ref{prop:step-003-ambient-floor} gives
\[
\|T-\widehat T_t\|_F
\ge\frac{m}{\kappa^6C_T}\|T\|_F.
\tag{2}
\]
Both sides of (2) are nonnegative: the left side is a norm, and the right
side is nonnegative by (1), \(\kappa\ge1\), \(C_T>0\), and
\(\|T\|_F\ge0\). Squaring (2), only after this sign check, and using the
setting's exact objective definition yields
\[
\mathcal L(X_t,Y_t,Z_t)
=\|T-\widehat T_t\|_F^2
\ge
\left(\frac{m}{\kappa^6C_T}\right)^2\|T\|_F^2
=\epsilon\|T\|_F^2
\quad\text{for every }t\ge0.
\tag{3}
\]
No term is absorbed or dropped in this equality.

Because the same realized trajectory lies in \(\mathsf C_2\), it satisfies
clause 3. Accepted Lemma~\ref{lem:step-004-finite-variation} and accepted
Proposition~\ref{prop:step-004-objective-limit} therefore give
\[
\mathcal L(X_t,Y_t,Z_t)
\longrightarrow
\|T-\widehat T_\infty\|_F^2<\infty.
\tag{4}
\]
Apply Lemma~\ref{lem:step-005-limit-order} to the scalar sequence in (4)
and the horizon-uniform lower bound (3), with
\(b=\epsilon\|T\|_F^2\). This proves the claimed limiting lower bound.

The primitive dimension, rank-window, smoothing, and initialization
conditions preserve the exact theorem domain and law. They are not used to
derive membership in \(\mathsf C_2\), and no property of the ALS update
beyond the accepted dependency conclusions enters the argument. \(\square\)

### unit_003: proposition

**Proposition (Exact conditional event inclusion).**
\(\label{prop:step-005-event-inclusion}\)
Under Assumptions~\ref{assump:dimension},
\ref{assump:rank_window}, \ref{assump:base_conditioning},
\ref{assump:gaussian_smoothing}, and
\ref{assump:independent_initialization}, Proposition~\ref{prop:step-005-pathwise-closure},
and with the setting-defined ALS trajectory and positive parameters satisfying
\(L_P<\delta/4\) and \(\zeta<\delta/4\), let
\[
\epsilon=
\left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2.
\]
Then, under the setting's joint smoothing-and-initialization law,
\[
\mathsf C_2(\delta,L_P,\zeta,C_T)
\subseteq
\left\{
\displaystyle
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\text{ exists and is finite, and }
\displaystyle
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge\epsilon\|T\|_F^2
\right\}.
\tag{5}
\]
This set inclusion makes no assertion that
\(\mathsf C_2(\delta,L_P,\zeta,C_T)\) is nonempty and no assertion on its
probability.

**Proof.** Let an arbitrary outcome of the joint
smoothing-and-initialization experiment belong to
\(\mathsf C_2(\delta,L_P,\zeta,C_T)\). Proposition~\ref{prop:step-005-pathwise-closure}
applies to the realized target and realized trajectory at that outcome. It
proves both properties defining the event on the right-hand side of (5).
Thus every element of the left-hand set is an element of the right-hand set,
which is exactly (5).

This is a deterministic, outcome-by-outcome implication written inside the
primitive joint probability space. It does not invoke a conditional
probability, divide by \(\mathbb P[\mathsf C_2]\), or infer any lower bound
for that probability. Consequently the statement remains valid if
\(\mathsf C_2\) is empty or has probability zero. \(\square\)

### unit_004: proposition

**Proposition (Exact/noiseless limiting-loss baseline).**
\(\label{prop:step-005-baseline-limit}\)
Under accepted Proposition~\ref{prop:step-003-baseline-floor}, accepted
Lemma~\ref{lem:step-004-finite-variation}, accepted
Proposition~\ref{prop:step-004-objective-limit}, and
Lemma~\ref{lem:step-005-limit-order}, suppose the recorded exact/noiseless
coordinate-orthonormal specialization
\[
Q=I,
\qquad E_\rho=0,
\qquad T=D_r
\]
holds, \(\delta>0\), \(L_P<\delta/4\), and the realized trajectory
satisfies the same conditional finite-variation clause 3. Then
\[
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
=\|T-\widehat T_\infty\|_F^2<\infty
\]
and
\[
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge(\delta-L_P)^2\|T\|_F^2.
\]

**Proof.** Accepted Proposition~\ref{prop:step-003-baseline-floor} gives,
for every integer \(t\ge0\),
\[
\|T-\widehat T_t\|_F\ge(\delta-L_P)\|T\|_F.
\]
The static restriction \(L_P<\delta/4\) implies
\(\delta-L_P>3\delta/4>0\), so both sides are nonnegative and may be
squared. Hence
\[
\mathcal L(X_t,Y_t,Z_t)
\ge(\delta-L_P)^2\|T\|_F^2
\quad\text{for every }t\ge0.
\]
Accepted Lemma~\ref{lem:step-004-finite-variation} and accepted
Proposition~\ref{prop:step-004-objective-limit} give the displayed finite
objective limit under clause 3. Lemma~\ref{lem:step-005-limit-order} passes
the pointwise baseline floor to that same limit. Thus removing the smoothing
residual and coordinate distortion preserves the stronger constant relative
floor; it does not replace the baseline conclusion by an absolute remainder,
stopped claim, or vanishing-defect statement. \(\square\)

## Target-Step Assembly

Fix \(\kappa\ge1\) and \(q>0\), then fix arbitrary \(r,n,k\) and an
admissible deterministic base triple under
Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and
\ref{assump:base_conditioning}. Assumptions~\ref{assump:gaussian_smoothing}
and \ref{assump:independent_initialization} supply exactly the joint law in
which the trajectory and the setting-defined event \(\mathsf C_2\) live.

For any fixed positive theorem-facing
\(\delta,L_P,\zeta,C_T\) satisfying
\(L_P<\delta/4\) and \(\zeta<\delta/4\),
Proposition~\ref{prop:step-005-pathwise-closure} combines the accepted
horizon-uniform floor and accepted finite objective limit. It defines
\[
\epsilon
=\left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2>0
\]
and proves, on every realized trajectory in \(\mathsf C_2\),
\[
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\text{ exists and is finite},
\qquad
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge\epsilon\|T\|_F^2.
\]
Proposition~\ref{prop:step-005-event-inclusion} converts precisely this
pathwise implication into the exact event inclusion required by the sketch.
It performs no probability conversion and does not assert either
nonemptiness or a lower bound for \(\mathbb P[\mathsf C_2]\).

The argument is uniform in \(r,n,k\), the admissible deterministic base
triple, time, and the realization. Therefore the theorem-facing scalar
choices \(\delta,L_P,\zeta,C_T\), as well as the setting's \(r_0\) and
\(C_{\rm dim}\), may have exactly the permitted dependence on
\((\kappa,q)\) and no other quantities. The admissible theorem-constant
class is nonempty, for example \(r_0=1\), \(C_{\rm dim}=1\),
\(\delta=1\), \(L_P=\zeta=1/8\), and \(C_T=1\), with \(\epsilon\)
then defined by the displayed formula. These constant functions have only
the permitted \((\kappa,q)\) dependence. This observation only discharges
the scalar and threshold existential quantifiers and does not claim that the
resulting certificate event is nonempty. Thus the stronger parameterized
implication proved above yields the exact existential formulation in
`setting.md`.

Finally, Proposition~\ref{prop:step-005-baseline-limit} combines the
accepted specialized floor and the same convergence producer to preserve
the exact/noiseless coordinate-orthonormal baseline with the stronger
limiting lower bound
\((\delta-L_P)^2\|T\|_F^2\). These named results jointly establish every
part of the binding `step_005` claim and introduce no hidden ALS regularity.

## Explicit Rate Audit

- Exposed variables: \(\kappa,q,r,n,k,\delta,L_P,\zeta,C_T\), the
  intermediate time index \(t\), and
  \[
  \epsilon=
  \left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2.
  \]
  The variables \(r,n,k\) occur only in the theorem scope and realized
  certificate objects, not as factors in \(\epsilon\).
- Hidden constants may depend on: none in the displayed objective floor.
  The theorem-facing choices \(r_0,C_{\rm dim},\delta,L_P,\zeta,C_T\)
  and hence \(\epsilon\) may depend only on \(\kappa,q\), exactly as in
  `setting.md`.
- Hidden constants may not depend on: \(r,n,k,t\), the admissible
  deterministic base triple, or the smoothing/initialization realization.
- Fixed quantities: \(\kappa,q\) and the selected theorem-facing constants
  while \(r,n,k\), the admissible base triple, time, and the realization
  range over the declared scope.
- Probability mode: deterministic implication on each realization in
  \(\mathsf C_2\), expressed as a set inclusion under the joint
  smoothing-and-initialization law. There is no expectation, high-probability
  statement, conditional-probability lower bound, union bound, or assertion
  that \(\mathsf C_2\) is nonempty.
- Horizon mode: horizon-uniform for the accepted residual and squared
  objective floor; asymptotic for the accepted finite objective limit and
  final lower bound.
- Norm mode: ambient tensor Frobenius norm for \(T\),
  \(\widehat T_t\), and their residual; squared ambient Frobenius norm for
  \(\mathcal L\).
- Admissibility conditions and auxiliary tolerances: the exact primitive
  theorem scope, the current matching accepted `step_003` and `step_004`
  proof/review pairs, membership in exactly
  \(\mathsf C_2(\delta,L_P,\zeta,C_T)\), and
  \(L_P<\delta/4\), \(\zeta<\delta/4\), \(C_T>0\). No additional
  event, regularity condition, or tolerance is introduced.
- Term absorption or simplification inequalities:
  \[
  \delta-L_P-\zeta
  >\delta-\frac{\delta}{4}-\frac{\delta}{4}
  =\frac{\delta}{2}>0,
  \]
  \[
  \|T-\widehat T_t\|_F
  \ge
  \frac{\delta-L_P-\zeta}{\kappa^6C_T}\|T\|_F
  \implies
  \mathcal L(X_t,Y_t,Z_t)
  \ge
  \left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2
  \|T\|_F^2.
  \]
  The implication is justified by nonnegativity of both sides before
  squaring. No defect or scale factor is dropped.
- Probability conversion: None. The proof uses set inclusion only.
- Contribution to any Rate Specialization Bridge: this step supplies the
  exact theorem-facing \(\epsilon\) and the all-time-to-asymptotic bridge;
  no separate simplified rate is stated.
- Baseline-reduction check: under \(Q=I\), \(E_\rho=0\), and
  \(T=D_r\), Proposition~\ref{prop:step-005-baseline-limit} proves
  \[
  \lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
  \ge(\delta-L_P)^2\|T\|_F^2,
  \]
  preserving the stronger exact/noiseless constant-relative conclusion
  without a smoothing, coordinate, target-scale, stopping, or probability
  loss.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing objects inherited from `setting.md` are \(T\),
  \(\widehat T_t\), \(\mathcal L\), \(\mathsf C_2\), \(\kappa\),
  \(q\), \(\delta\), \(L_P\), \(\zeta\), and \(C_T\).
- \(\epsilon=((\delta-L_P-\zeta)/(\kappa^6C_T))^2\) is
  `public-facing`. It is defined directly and exactly from setting quantities
  and has no hidden constant.
- \(m=\delta-L_P-\zeta\) is `proof-local`. It abbreviates a repeated
  setting-derived expression, and its strict positivity is proved in
  Proposition~\ref{prop:step-005-pathwise-closure}. It is not an additional
  theorem parameter or assumption.
- \(\widehat T_\infty\) is an accepted dependency object and is
  `public-facing` only as the minimal witness for the finite objective limit.
  Its existence is supplied by the current accepted `step_004` proof/review
  pair, not assumed in this step.
- No named event alias is introduced. The event on the right-hand side of
  the final inclusion is written directly from the setting's objective, so
  event bookkeeping does not enlarge the public notation surface.
- Constant provenance: \(\kappa^6C_T\) and the residual margin are inherited
  exactly from the accepted `step_003` output; \(\epsilon\) is produced only
  by the displayed nonnegative squaring. The stronger baseline factor
  \((\delta-L_P)^2\) is inherited from the accepted specialized residual
  floor and squared after its sign is checked.
- Assumption provenance: all five `assump:` conditions are primitive and
  retain the exact theorem scope. Membership in \(\mathsf C_2\) is the
  explicitly authorized local conditional hypothesis. The horizon-uniform
  residual floor and finite objective limit are accepted derived outputs.
  No generated trajectory fact is reclassified as primitive.
- Generated-output flow: accepted `step_003` residual floor plus accepted
  `step_004` objective limit ->
  Proposition~\ref{prop:step-005-pathwise-closure} ->
  Proposition~\ref{prop:step-005-event-inclusion} -> final theorem. The
  exact/noiseless floor plus the same limit producer ->
  Proposition~\ref{prop:step-005-baseline-limit}. Every consumer follows its
  producer.
- Boundary cases: if \(T=0\), the relative lower bound has right-hand side
  zero and the proof never divides by \(\|T\|_F\). Stationary trajectories
  are covered by the accepted finite-variation result. Empty and
  probability-zero certificate events satisfy the same set inclusion without
  supporting any probability claim. The strict margin remains positive as
  \(L_P\) and \(\zeta\) approach their allowed upper bounds.
- Probability boundary: Assumptions~\ref{assump:gaussian_smoothing} and
  \ref{assump:independent_initialization} supply only the ambient joint law.
  Neither they nor this step supply a producer, nonemptiness result, or lower
  bound for \(\mathsf C_2\).
- ALS-regularity boundary: the proof consumes only the accepted residual
  floor and objective-limit outputs. It does not use or infer Gram
  conditioning, factor boundedness or convergence, descent, a fixed span,
  basin membership, design-rank persistence, quotient geometry, a
  Kurdyka--Lojasiewicz property, or any unstated feature of the ALS map.
- Diagnostic boundary: `global_proof.md` was read only after confirming that
  the paired `global_proof_review.md` has `Global-Proof Review Status =
  ACCEPTED`. Its `step_005` guidance to define the full margin, square only
  after the sign check, pass to the existing limit, and preserve set
  inclusion was used only for planning. The diagnostic was not used as proof
  evidence, a cited result, an assumption source, or authority to change the
  target claim, dependency graph, quantifiers, norm, horizon, probability
  mode, exposed dependence, or conclusion.
