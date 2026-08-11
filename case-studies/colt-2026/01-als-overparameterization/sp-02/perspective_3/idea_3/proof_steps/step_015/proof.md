# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_015`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_015` | Assemble event inclusion and final conditional probability. | `step_010`, `step_011`, `step_014` | Joint law | Exact event accounting. | Inclusion and conditioning. | Final theorem. | Retain the conditional path factor exactly. | PENDING |

Concretely, this step must first verify that the setting maps
\(S:(\mathbb R^{n\times k})^3\to(\mathbb R^n)^{\otimes3}\) and
\(F:(\mathbb R^{n\times k})^3\to\mathbb R\) are finite-dimensional
polynomial maps. Consequently, convergence in \(d_{\rm bal}\) must imply
\[
  \lim_{t\to\infty}F(\theta_t)=F(\theta_\infty).
\]
Using the accepted convergence and endpoint-loss interfaces, prove the exact
event inclusion
\[
  \mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}
  \subseteq \mathcal F_+,
\]
where \(\mathcal F_+\) is the actual setting-defined
convergence-and-positive-limit event. Finally, under the joint law of the
Gaussian smoothing and independent Gaussian initialization, conditional on
the deterministic base triple, verify that
\(\mathbb P(\mathcal E_{\rm init\_norm})>0\) before conditioning and prove
\[
\begin{aligned}
  \mathbb P(\mathcal F_+)
  &\ge \mathbb P(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path})\\
  &=\mathbb P(\mathcal E_{\rm init\_norm})
    \mathbb P(\mathcal C_{\rm path}\mid
      \mathcal E_{\rm init\_norm})\\
  &\ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}\mid
      \mathcal E_{\rm init\_norm}).
\end{aligned}                                                   \tag{T}
\]
The final conditional factor must be retained exactly, including when it is
zero.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumptions~\ref{assump:base_conditioning},
    \ref{assump:dimension}, \ref{assump:rank_window},
    \ref{assump:gaussian_smoothing}, and
    \ref{assump:independent_initialization} enter only through the accepted
    initialization-confidence interface from `step_010`.
  - Assumption~\ref{assump:gd_step} identifies the exact balanced-GD
    trajectory and enters through the accepted convergence interface from
    `step_011`.
  - The basic setting fixes the finite-dimensional parameter space, the maps
    \(S,F\), the joint smoothing/initialization law, the events
    \(\mathcal E_{\rm init\_norm},\mathcal C_{\rm path},\mathcal F_+\), and
    the deterministic base triple on which the joint law is conditioned.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-010-public-confidence} from
    `step_010`, sketch attempt 10 and unit attempt 1, supplies
    \[
      \mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}
    \]
    under the exact joint law.
  - Accepted Lemma~\ref{lem:step-011-finite-path-limit} from `step_011`,
    sketch attempt 10 and unit attempt 1, supplies, on
    \(\mathcal C_{\rm path}\), a finite
    \(\theta_\infty\in(\mathbb R^{n\times k})^3\) such that
    \(d_{\rm bal}(\theta_t,\theta_\infty)\to0\). In particular, this holds
    on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\).
  - Accepted Proposition~\ref{prop:step-014-positive-physical-loss} from
    `step_014`, sketch attempt 10 and unit attempt 1, supplies, on
    \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\),
    \[
      F(\theta_\infty)
      \ge \epsilon_0(\kappa)\|T\|_F^2>0,
      \qquad
      \epsilon_0(\kappa)
      =\left(\frac{15}{16}\delta_0\right)^2\kappa_1^{-12}>0.
    \]
- Local conditional hypotheses:
  - \(\mathcal C_{\rm path}\) is the sole explicit conditional trajectory
    hypothesis. It is used only as part of the event in the deterministic
    inclusion and is never assigned a positive probability.
- Accepted dependency artifacts:
  - the current `proof.md`/`review.md` pair for `step_010`, sketch attempt 10,
    unit attempt 1, whose review status is `ACCEPTED`;
  - the current `proof.md`/`review.md` pair for `step_011`, sketch attempt 10,
    unit attempt 1, whose review status is `ACCEPTED`;
  - the current `proof.md`/`review.md` pair for `step_014`, sketch attempt 10,
    unit attempt 1, whose review status is `ACCEPTED`.

No convergence, endpoint loss, positive path probability, or unconditional
failure probability is assumed as a primitive condition.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | proposition | Under the basic setting definitions, for each fixed realization of the target \(T\), \(S\) is a degree-three polynomial map and \(F\) is a polynomial of degree at most six on the Euclidean product space whose metric is \(d_{\rm bal}\). Hence \(d_{\rm bal}(\theta_t,\theta_\infty)\to0\) implies \(S(\theta_t)\to S(\theta_\infty)\) and \(F(\theta_t)\to F(\theta_\infty)\). | Supplies the exact asymptotic loss passage required between the accepted parameter limit and endpoint floor. |
| `unit_002` | proposition | Under Assumption~\ref{assump:gd_step}, accepted Lemma~\ref{lem:step-011-finite-path-limit}, accepted Proposition~\ref{prop:step-014-positive-physical-loss}, and Proposition~\ref{prop:step-015-polynomial-continuity}, every outcome in \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\) belongs to the setting-defined event \(\mathcal F_+\). | Establishes the exact deterministic event inclusion with the actual physical loss and asymptotic mode. |
| `unit_003` | proposition | Under Assumption~\ref{assump:dimension}, accepted Proposition~\ref{prop:step-010-public-confidence}, and Proposition~\ref{prop:step-015-event-inclusion}, for \(r\ge2\) the event \(\mathcal E_{\rm init\_norm}\) has positive probability and the exact conditional-probability identity and both inequalities in (T) hold, even when \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})=0\). | Performs the final probability-mode conversion without independence or a lower bound on the path event. |

Atomic step = no. Polynomial continuity, deterministic event inclusion, and
conditional-probability accounting are distinct auditable obligations.

## Cited Result Applications

### Accepted dependency: initialization confidence

Accepted Proposition~\ref{prop:step-010-public-confidence} proves, under the
joint smoothing/initialization law conditional on the deterministic base
triple,
\[
  \mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}.
\]
It uses the exact event from the current setting. For the sufficiently large
\(r\) regime, enlarged if necessary so that \(r\ge2\), this lower bound is
strictly positive. No independence between
\(\mathcal E_{\rm init\_norm}\) and \(\mathcal C_{\rm path}\) is supplied or
used.

### Accepted dependency: finite path limit

Accepted Lemma~\ref{lem:step-011-finite-path-limit} proves, from the sole
finite-total-variation hypothesis \(\mathcal C_{\rm path}\), that the exact
balanced representatives satisfy
\[
  d_{\rm bal}(\theta_t,\theta_\infty)\longrightarrow0
\]
for a finite \(\theta_\infty\in(\mathbb R^{n\times k})^3\). The convergence
is in the same product Frobenius metric used below, not in a quotient or a
surrogate topology.

### Accepted dependency: positive endpoint loss

Accepted Proposition~\ref{prop:step-014-positive-physical-loss} proves on
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\) that
\[
  F(\theta_\infty)
  \ge\left(\frac{15}{16}\delta_0\right)^2
      \kappa_1^{-12}\|T\|_F^2>0.
\]
This is the setting's actual physical objective at the accepted endpoint. It
contains no surrogate target, normalized loss, or omitted residual component.

### Finite-dimensional polynomial continuity

**Restated result.** A map between finite-dimensional Euclidean spaces is
continuous when each output coordinate is a finite sum of finite products of
input coordinates and fixed real coefficients. Consequently, if
\(h_t\to h\) in the Euclidean norm, then the values of such a polynomial map
converge to its value at \(h\).

**Instantiated objects and discharge.** The parameter space is
\((\mathbb R^{n\times k})^3\), its Euclidean product distance is exactly
\(d_{\rm bal}\), and the output spaces are the finite-dimensional tensor
space \((\mathbb R^n)^{\otimes3}\) and \(\mathbb R\). Proposition~\ref{prop:step-015-polynomial-continuity}
displays every relevant coordinate polynomial explicitly.

### Conditional probability on a positive-probability event

**Restated result.** If \(A,B\) are events and \(\mathbb P(A)>0\), then
\[
  \mathbb P(B\mid A):=\frac{\mathbb P(A\cap B)}{\mathbb P(A)},
  \qquad
  \mathbb P(A\cap B)=\mathbb P(A)\mathbb P(B\mid A).
\]
Moreover, event inclusion implies probability monotonicity.

**Instantiated objects and discharge.** Take
\(A=\mathcal E_{\rm init\_norm}\) and
\(B=\mathcal C_{\rm path}\). Positivity of \(\mathbb P(A)\) is proved
before the definition is used in
Proposition~\ref{prop:step-015-conditional-accounting}. Proposition~\ref{prop:step-015-event-inclusion}
supplies the inclusion needed for monotonicity.

### Local result applications

- Proposition~\ref{prop:step-015-polynomial-continuity} supplies the loss
  limit used by Proposition~\ref{prop:step-015-event-inclusion}.
- Proposition~\ref{prop:step-015-event-inclusion} supplies the event
  monotonicity input used by
  Proposition~\ref{prop:step-015-conditional-accounting}.

## Local Derivation

### unit_001: proposition

**Proposition (polynomial continuity of the CP model and objective).**
\label{prop:step-015-polynomial-continuity}
Under the basic setting definitions, fix any realization of the target
\(T\). The map
\[
  S:(\mathbb R^{n\times k})^3\longrightarrow
    (\mathbb R^n)^{\otimes3}
\]
is a homogeneous polynomial map of degree three, and
\(F:(\mathbb R^{n\times k})^3\to\mathbb R\) is a polynomial of degree at
most six. Both maps are continuous in the Euclidean product metric
\(d_{\rm bal}\). In particular, if
\(d_{\rm bal}(\theta_t,\theta_\infty)\to0\), then
\[
  \|S(\theta_t)-S(\theta_\infty)\|_F\to0,
  \qquad
  F(\theta_t)\to F(\theta_\infty).                       \tag{1}
\]

**Proof / justification.** Write tensor coordinates as
\(1\le a,b,c\le n\). From the setting definition,
\[
  [S(X,Y,Z)]_{abc}
  =\sum_{i=1}^k X_{ai}Y_{bi}Z_{ci}.                     \tag{2}
\]
Thus every coordinate of \(S\) is a finite sum of degree-three monomials in
the entries of \((X,Y,Z)\). Hence \(S\) is a homogeneous polynomial map of
degree three.

For the fixed realized target, the objective has the coordinate expression
\[
  F(X,Y,Z)
  =\sum_{a=1}^n\sum_{b=1}^n\sum_{c=1}^n
    \left(T_{abc}-\sum_{i=1}^kX_{ai}Y_{bi}Z_{ci}\right)^2. \tag{3}
\]
Each summand is the square of a polynomial of degree at most three, so (3) is
a polynomial of degree at most six. Coordinate projections are continuous,
and finite sums and products of continuous real-valued functions are
continuous. Equations (2)--(3), together with the finite number of tensor
coordinates, therefore prove continuity of both maps.

Finally, the setting identity
\[
  d_{\rm bal}(\theta,\theta')
  =\bigl(\|X-X'\|_F^2+\|Y-Y'\|_F^2+\|Z-Z'\|_F^2\bigr)^{1/2}
\]
is exactly the Euclidean norm distance on the parameter space. Applying the
just-proved continuity to
\(d_{\rm bal}(\theta_t,\theta_\infty)\to0\) proves (1).
\(\square\)

### unit_002: proposition

**Proposition (endpoint continuity and exact event inclusion).**
\label{prop:step-015-event-inclusion}
Under Assumption~\ref{assump:gd_step}, accepted
Lemma~\ref{lem:step-011-finite-path-limit}, accepted
Proposition~\ref{prop:step-014-positive-physical-loss}, and
Proposition~\ref{prop:step-015-polynomial-continuity}, every outcome in
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\) satisfies
\[
  d_{\rm bal}(\theta_t,\theta_\infty)\to0,
  \qquad
  \lim_{t\to\infty}F(\theta_t)
  =F(\theta_\infty)
  \ge\epsilon_0(\kappa)\|T\|_F^2>0.                    \tag{4}
\]
Consequently,
\[
  \mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}
  \subseteq\mathcal F_+.                                \tag{5}
\]

**Proof / justification.** Fix an arbitrary outcome in
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\). Accepted
Lemma~\ref{lem:step-011-finite-path-limit} produces a finite
\(\theta_\infty\) and proves
\(d_{\rm bal}(\theta_t,\theta_\infty)\to0\). Applying
Proposition~\ref{prop:step-015-polynomial-continuity} to this exact
convergence yields
\[
  \lim_{t\to\infty}F(\theta_t)=F(\theta_\infty).        \tag{6}
\]
On the same outcome, accepted
Proposition~\ref{prop:step-014-positive-physical-loss} gives
\[
  F(\theta_\infty)
  \ge\epsilon_0(\kappa)\|T\|_F^2>0.                    \tag{7}
\]
Combining (6)--(7) proves (4).

The setting-defined event \(\mathcal F_+\) is precisely the event that the
balanced-GD representatives converge in \(d_{\rm bal}\) to a finite limit
and that their objective limit obeys the positive relative floor in (4).
Thus (4) is exactly membership in \(\mathcal F_+\), not membership in a
surrogate endpoint or finite-time event. Since the chosen outcome was
arbitrary, (5) follows. \(\square\)

### unit_003: proposition

**Proposition (exact conditional-probability accounting).**
\label{prop:step-015-conditional-accounting}
Under Assumption~\ref{assump:dimension}, accepted
Proposition~\ref{prop:step-010-public-confidence}, and
Proposition~\ref{prop:step-015-event-inclusion}, work under the setting's
joint smoothing/initialization law conditional on an arbitrary admissible
deterministic base triple. For \(r\ge2\),
\(\mathbb P(\mathcal E_{\rm init\_norm})>0\), the conditional probability
\(\mathbb P(\mathcal C_{\rm path}\mid
\mathcal E_{\rm init\_norm})\) is well defined by event conditioning, and
all three relations in (T) hold. They remain valid when this conditional
probability is zero.

**Proof / justification.** Accepted
Proposition~\ref{prop:step-010-public-confidence} gives
\[
  \mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}.
\]
For \(r\ge2\), \(r^{-10}<1\), and therefore
\[
  \mathbb P(\mathcal E_{\rm init\_norm})
  \ge1-r^{-10}>0.                                       \tag{8}
\]
Assumption~\ref{assump:dimension} permits enlarging the sufficiently-large
\(r\) threshold to include \(r\ge2\), so (8) adds no theorem-facing
restriction. It also verifies the positive denominator before conditioning.

By Proposition~\ref{prop:step-015-event-inclusion} and monotonicity of
probability,
\[
  \mathbb P(\mathcal F_+)
  \ge\mathbb P(\mathcal E_{\rm init\_norm}
    \cap\mathcal C_{\rm path}).                         \tag{9}
\]
Using (8), the definition of conditional probability for the two exact
setting events gives the identity
\[
  \mathbb P(\mathcal E_{\rm init\_norm}
    \cap\mathcal C_{\rm path})
  =\mathbb P(\mathcal E_{\rm init\_norm})
    \mathbb P(\mathcal C_{\rm path}
      \mid\mathcal E_{\rm init\_norm}).                 \tag{10}
\]
The conditional probability in (10) is nonnegative. Multiplying the accepted
lower bound for \(\mathbb P(\mathcal E_{\rm init\_norm})\) by this
nonnegative factor preserves the inequality direction:
\[
\begin{aligned}
  \mathbb P(\mathcal E_{\rm init\_norm})
    \mathbb P(\mathcal C_{\rm path}
      \mid\mathcal E_{\rm init\_norm})
  \ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}
      \mid\mathcal E_{\rm init\_norm}).                \tag{11}
\end{aligned}
\]
Equations (9)--(11) prove (T).

If
\(\mathbb P(\mathcal C_{\rm path}\mid
\mathcal E_{\rm init\_norm})=0\), equation (10) says that the intersection
has probability zero and (11) has zero on both sides. Thus the theorem still
asserts only \(\mathbb P(\mathcal F_+)\ge0\); it does not acquire an
unconditional positive failure probability or any lower bound on the path
event. No independence assertion is used anywhere. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-015-polynomial-continuity} proves directly from
the CP coordinates that \(S\) and \(F\) are finite-dimensional polynomial
maps and converts the accepted \(d_{\rm bal}\)-limit into
\[
  \lim_{t\to\infty}F(\theta_t)=F(\theta_\infty).
\]
Accepted Lemma~\ref{lem:step-011-finite-path-limit} supplies that finite
limit on the exact path event, while accepted
Proposition~\ref{prop:step-014-positive-physical-loss} supplies the actual
physical endpoint floor. Proposition~\ref{prop:step-015-event-inclusion}
combines them to obtain the exact inclusion
\[
  \mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}
  \subseteq\mathcal F_+.
\]

Accepted Proposition~\ref{prop:step-010-public-confidence} and the explicit
large-\(r\) check in
Proposition~\ref{prop:step-015-conditional-accounting} show that the
conditioning event has positive probability. The same proposition then
uses only event monotonicity and the definition of conditional probability to
prove
\[
  \boxed{
  \mathbb P(\mathcal F_+)
  \ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}\mid
      \mathcal E_{\rm init\_norm})}.
\]
The probability space, all-time/asymptotic mode, physical objective, and
setting events are unchanged, and the unresolved conditional factor is
retained exactly even at its zero boundary.

## Explicit Rate Audit

- Exposed variables: \(r\), \(\kappa\),
  \(\epsilon_0(\kappa)=((15/16)\delta_0)^2\kappa_1^{-12}\), the
  initialization confidence \(1-r^{-10}\), and the exact factor
  \(\mathbb P(\mathcal C_{\rm path}\mid
  \mathcal E_{\rm init\_norm})\in[0,1]\).
- Hidden constants may depend on: only the inherited sufficiently-large-\(r\)
  threshold, which may depend on \(\kappa,q\) as allowed by the setting and
  accepted dependencies.
- Hidden constants may not depend on: \(n,r,k\), the deterministic base
  triple, the smoothing or initialization realization, time, the GD horizon,
  or the conditional path probability.
- Fixed quantities: \(\kappa,q\) and an arbitrary admissible deterministic
  base triple while probabilities are taken; a realized target while
  continuity in the parameter is evaluated.
- Probability mode: joint smoothing/initialization probability conditional
  on the deterministic base triple, followed by exact event conditioning on
  the positive-probability event \(\mathcal E_{\rm init\_norm}\). No
  independence or positive lower bound for the path factor is used.
- Horizon mode: all-time convergence of the balanced representatives and the
  asymptotic objective limit.
- Norm mode: \(d_{\rm bal}\), the product Frobenius metric on parameters, and
  the physical tensor Frobenius objective
  \(F(\theta)=\|T-S(\theta)\|_F^2\).
- Admissibility conditions and auxiliary tolerances: the setting regime, the
  accepted generated event \(\mathcal E_{\rm init\_norm}\), the explicit
  conditional event \(\mathcal C_{\rm path}\), and \(r\ge2\), absorbed into
  the allowed asymptotic threshold. No auxiliary tolerance is introduced.
- Term absorption or simplification inequalities:
  \[
    1-r^{-10}>0\quad(r\ge2),
  \]
  and, since the retained conditional factor is nonnegative,
  \[
    \mathbb P(\mathcal E_{\rm init\_norm})
      \mathbb P(\mathcal C_{\rm path}\mid
        \mathcal E_{\rm init\_norm})
    \ge(1-r^{-10})
      \mathbb P(\mathcal C_{\rm path}\mid
        \mathcal E_{\rm init\_norm}).
  \]
- Probability conversion: the exact identity (10), used only after the
  denominator check (8). The final path factor is neither dropped nor
  lower-bounded.
- Contribution to any Rate Specialization Bridge: this is the final public
  probability conversion and asymptotic-continuity bridge.
- Baseline-reduction check: at zero conditional path probability, the exact
  identity gives a zero intersection probability and the final theorem
  reduces to the valid non-strict bound \(\mathbb P(\mathcal F_+)\ge0\).
  No stronger probability conclusion is inserted. At a zero-length realized
  path, the accepted endpoint result and polynomial continuity preserve the
  positive physical-loss conclusion without an asymptotic loss.

## Blockers

None.

## Notation And Assumption Notes

- The finite-dimensional parameter space
  \((\mathbb R^{n\times k})^3\) is `proof-local` when viewed as an abstract
  Euclidean space. Its metric is exactly the public-facing,
  setting-defined \(d_{\rm bal}\); no quotient topology or new completion is
  introduced.
- The coordinate indices \(a,b,c\) in equations (2)--(3) are `proof-local`.
  They expose the polynomial derivation and are not exported.
- \(S,F,T,\theta_t,\theta_\infty,\epsilon_0(\kappa)\), and
  \(\mathcal F_+\) are `public-facing` setting or accepted-dependency
  objects. The explicit formula for \(\epsilon_0(\kappa)\) is inherited from
  accepted Proposition~\ref{prop:step-014-positive-physical-loss}; no new
  constant is chosen here.
- \(\mathcal E_{\rm init\_norm}\) is a `public-facing` generated event
  supplied by accepted `step_010`. Its confidence is a derived output, not a
  primitive condition. Its positive probability is proved in equation (8)
  before event conditioning is used.
- \(\mathcal C_{\rm path}\) is the `public-facing`, explicitly conditional
  finite-path event from the setting. It is not a derived high-probability
  event, and this proof supplies no lower bound for its conditional
  probability.
- Convergence and endpoint existence are derived outputs of accepted
  `step_011`; the physical endpoint floor and strict target positivity are
  derived outputs of accepted `step_014`. Polynomial continuity and the
  exact event inclusion are proved in this step.
- The threshold \(r\ge2\) is `appendix-local`; its provenance is the allowed
  sufficiently-large-\(r\) clause in Assumption~\ref{assump:dimension}. It is
  used only to prove positivity of the conditioning denominator.
- The current `global_proof.md` was consulted only after its paired
  `global_proof_review.md` was verified `ACCEPTED`. Its B15 event-accounting
  outline informed planning only. It was not used as proof evidence, a cited
  result, an assumption source, or authority to change the target claim.
