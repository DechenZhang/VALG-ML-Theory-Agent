# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_011`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_011` | Prove conditional path convergence and radius `3`. | `step_004`, `step_010` | `assump:gd_step`; derived `E_size`; explicit `C_path` | All-time closure. | Tail-sum Cauchy argument. | Limit and radius. | Horizon-uniform conditional. | PENDING |

Concretely, work deterministically on the explicitly conditional event

\[
  \mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path},
  \qquad
  \mathcal C_{\rm path}
  =\left\{E_{\rm path}:=\sum_{t\ge0}
      d_{\rm bal}(\theta_{t+1},\theta_t)\le E_\star\right\}.
\]

The step must prove that the setting-defined balanced trajectory converges in
\(d_{\rm bal}\) to a finite \(\theta_\infty\), that
\[
  d_{\rm bal}(\theta_t,\theta_0)\le E_\star,
  \qquad
  d_{\rm bal}(\theta_\infty,\theta_0)\le E_\star,
\]
and that every component in every mode obeys
\[
  \|m_{i,t}\|_2\le3,
  \qquad
  \|m_{i,\infty}\|_2\le3.
\]
The event \(\mathcal C_{\rm path}\) is the sole local conditional hypothesis.
It assumes finite total variation only; it does not assume convergence,
boundedness, radius control, trapping, Gram control, or loss control.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:gd_step`: Assumption~\ref{assump:gd_step} supplies only the
    setting-defined simultaneous balanced-GD trajectory
    \((\theta_t)_{t\ge0}\) and its protocol. It is not used as a convergence,
    boundedness, or finite-path source.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-004-balanced-size-transfer} from
    `step_004`, unit attempt 1, produces the setting-defined event
    \(\mathcal E_{\rm size}\), whose exact deterministic content is
    \[
      \max_{i\in[k],\,m\in\{x,y,z\}}\|m_{i,0}\|_2\le2.
    \]
  - Accepted Propositions~\ref{prop:step-010-conditional-union} and
    \ref{prop:step-010-public-confidence} from `step_010`, unit attempt 1,
    produce the exact event
    \[
      \mathcal E_{\rm init\_norm}
      =\mathcal E_{\rm cond}\cap\mathcal E_{\rm gram}^{\rm norm}
       \cap\mathcal E_{\rm size}\cap\mathcal E_{\rm deficit}
    \]
    with \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\). Thus
    membership in \(\mathcal E_{\rm init\_norm}\) supplies, in particular,
    the already-produced constituent \(\mathcal E_{\rm size}\). The
    probability estimate itself is not used to infer deterministic
    convergence in this step.
- Local conditional hypotheses:
  - The sole local conditional hypothesis is
    \(\mathcal C_{\rm path}=\{E_{\rm path}\le E_\star\}\). It assumes only
    that the nonnegative series of consecutive \(d_{\rm bal}\)-increments is
    finite. It contains no convergence, radius, all-time norm, trapping,
    positivity, Gram, or loss clause.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_004/proof.md` and its current
    `review.md`, accepted for sketch attempt 10 and unit attempt 1;
  - `perspective_3/idea_3/proof_steps/step_010/proof.md` and its current
    `review.md`, accepted for sketch attempt 10 and unit attempt 1.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under Assumption~\ref{assump:gd_step}, on the sole local conditional hypothesis \(\mathcal C_{\rm path}\), if \(\ell_t=d_{\rm bal}(\theta_{t+1},\theta_t)\), then for every \(0\le s<t\), \(d_{\rm bal}(\theta_s,\theta_t)\le\sum_{u=s}^{t-1}\ell_u\); the infinite-series tails tend to zero; and \((\theta_t)\) converges in the complete Euclidean product space \((\mathbb R^{n\times k})^3\) to a finite \(\theta_\infty\). | Converts the explicitly conditional finite total variation into a noncircular all-time convergence conclusion. |
| `unit_002` | proposition | Under Assumption~\ref{assump:gd_step}, Lemma~\ref{lem:step-011-finite-path-limit}, and \(\mathcal C_{\rm path}\), every \(t\ge0\) satisfies \(d_{\rm bal}(\theta_t,\theta_0)\le E_{\rm path}\le E_\star\le1\), and the limit satisfies \(d_{\rm bal}(\theta_\infty,\theta_0)\le E_{\rm path}\le E_\star\). | Exports the exact endpoint and horizon-uniform path radius needed downstream. |
| `unit_003` | proposition | Under Assumption~\ref{assump:gd_step}, the accepted `step_004` and `step_010` interfaces, and Proposition~\ref{prop:step-011-path-radius}, on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), every component, mode, and time, including the limit, has Euclidean norm at most \(2+E_\star\le3\). | Combines the produced initial-size constituent with the path radius to establish the exact radius-\(3\) interface. |

Atomic step = no. Finite-total-variation convergence, endpoint displacement,
and componentwise factor control are separate nontrivial obligations and are
proved in distinct units.

## Cited Result Applications

### Accepted dependency: balanced initial-size event

**Source and restated statement.** Accepted
Proposition~\ref{prop:step-004-balanced-size-transfer} proves the generated
event \(\mathcal E_{\rm size}\) for the actual balanced initialization. By
its setting definition, on this event
\[
  \|m_{i,0}\|_2\le2
  \quad\text{for every }i\in[k],\quad m\in\{x,y,z\}.
\]

**Instantiated objects and discharge.** The columns used below are exactly the
columns of \(X_0,Y_0,Z_0\) from the accepted dependency and the current
setting. No raw initialization column or balancing scalar is introduced in
this step.

### Accepted dependency: exact initialization event

**Source and restated statement.** Accepted
Propositions~\ref{prop:step-010-conditional-union} and
\ref{prop:step-010-public-confidence} use the exact setting identity
\[
  \mathcal E_{\rm init\_norm}
  =\mathcal E_{\rm cond}\cap\mathcal E_{\rm gram}^{\rm norm}
   \cap\mathcal E_{\rm size}\cap\mathcal E_{\rm deficit}
\]
and establish \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\).

**Instantiated objects and discharge.** The deterministic implication used
here is only
\(
  \mathcal E_{\rm init\_norm}\subseteq\mathcal E_{\rm size}
\),
with the exact events from the current setting. The accepted confidence is
retained for later probability assembly; it is not converted into a
trajectory property here.

### Finite-dimensional Euclidean completeness

**Restated result.** Let \(\mathcal H\) be a finite-dimensional real Euclidean
space with norm \(\|\cdot\|_{\mathcal H}\). If for every \(\varepsilon>0\)
there is \(N\) such that
\(\|h_t-h_s\|_{\mathcal H}<\varepsilon\) for all \(s,t\ge N\), then there is
a finite \(h_\infty\in\mathcal H\) with
\(\|h_t-h_\infty\|_{\mathcal H}\to0\).

**Instantiated objects and discharge.** Here
\[
  \mathcal H=(\mathbb R^{n\times k})^3,
  \qquad
  \|(X,Y,Z)\|_{\mathcal H}
  =\bigl(\|X\|_F^2+\|Y\|_F^2+\|Z\|_F^2\bigr)^{1/2},
\]
so the setting metric satisfies
\(d_{\rm bal}(\theta,\theta')=\|\theta-\theta'\|_{\mathcal H}\).
Lemma~\ref{lem:step-011-finite-path-limit} verifies the Cauchy hypothesis from
the tail of the setting-defined nonnegative path series. This is a standard
finite-dimensional fact in exactly the current norm; no quotient-space or
additional completeness assumption is used.

### Local result applications

- Lemma~\ref{lem:step-011-finite-path-limit} supplies the finite endpoint used
  by Proposition~\ref{prop:step-011-path-radius}.
- Proposition~\ref{prop:step-011-path-radius} supplies the horizon-uniform
  displacement used by
  Proposition~\ref{prop:step-011-uniform-factor-radius}.

## Local Derivation

### unit_001: lemma

**Lemma (finite total variation gives a finite balanced-factor limit).**
\label{lem:step-011-finite-path-limit}
Under Assumption~\ref{assump:gd_step}, consider the setting-defined trajectory
\((\theta_t)_{t\ge0}\). On the sole local conditional hypothesis
\(\mathcal C_{\rm path}\), define
\[
  \ell_t:=d_{\rm bal}(\theta_{t+1},\theta_t)\ge0.
\]
Then, for every pair of integers \(0\le s<t\),
\[
  d_{\rm bal}(\theta_s,\theta_t)
  \le \sum_{u=s}^{t-1}\ell_u.                         \tag{1}
\]
The tails \(\sum_{u=s}^{\infty}\ell_u\) tend to zero as
\(s\to\infty\). Consequently, the balanced representatives form a Cauchy
sequence in \((\mathbb R^{n\times k})^3\) and converge in
\(d_{\rm bal}\) to a finite \(\theta_\infty\).

**Proof / justification.** Assumption~\ref{assump:gd_step} is used only to
identify the recursively defined trajectory. The metric formula in the
setting is the Euclidean product-space distance, so repeated application of
its triangle inequality gives
\[
\begin{aligned}
  d_{\rm bal}(\theta_s,\theta_t)
  &\le d_{\rm bal}(\theta_s,\theta_{s+1})
      +d_{\rm bal}(\theta_{s+1},\theta_{s+2})
      +\cdots+d_{\rm bal}(\theta_{t-1},\theta_t)\\
  &=\sum_{u=s}^{t-1}\ell_u,
\end{aligned}
\]
which proves equation (1).

Let
\[
  S_N:=\sum_{u=0}^{N-1}\ell_u,
  \qquad S_0:=0.
\]
On \(\mathcal C_{\rm path}\), the nonnegative partial sums increase to the
finite value
\[
  E_{\rm path}=\sum_{u=0}^{\infty}\ell_u\le E_\star<\infty.
\]
Therefore the exact tail remainder
\[
  R_s:=E_{\rm path}-S_s=\sum_{u=s}^{\infty}\ell_u
\]
is nonnegative and satisfies \(R_s\downarrow0\). Given
\(\varepsilon>0\), choose \(N\) with \(R_N<\varepsilon\). For arbitrary
\(s,t\ge N\), assume without loss of generality that \(s<t\). Equation (1)
and nonnegativity give
\[
  d_{\rm bal}(\theta_s,\theta_t)
  \le\sum_{u=s}^{t-1}\ell_u
  \le R_s\le R_N<\varepsilon.
\]
Thus \((\theta_t)\) is Cauchy in the finite-dimensional Euclidean product
space
\(
  (\mathbb R^{n\times k})^3
\),
which is complete. Hence there is a finite
\(
  \theta_\infty=(X_\infty,Y_\infty,Z_\infty)
\)
such that
\[
  d_{\rm bal}(\theta_t,\theta_\infty)\longrightarrow0.
\]

If \(E_{\rm path}=0\), nonnegativity forces \(\ell_t=0\) for every \(t\).
Because \(d_{\rm bal}\) is a metric on the displayed product space,
\(\theta_{t+1}=\theta_t\) for every \(t\), so the trajectory is constant and
\(\theta_\infty=\theta_0\). At the other boundary
\(E_{\rm path}=E_\star\), the same finite-tail argument applies with equality
in the total budget and requires no strict slack. \(\square\)

### unit_002: proposition

**Proposition (horizon-uniform path and endpoint radius).**
\label{prop:step-011-path-radius}
Under Assumption~\ref{assump:gd_step},
Lemma~\ref{lem:step-011-finite-path-limit}, and the sole local conditional
hypothesis \(\mathcal C_{\rm path}\), every \(t\ge0\) satisfies
\[
  d_{\rm bal}(\theta_t,\theta_0)
  \le\sum_{u=0}^{t-1}\ell_u
  \le E_{\rm path}
  \le E_\star
  \le1,                                                  \tag{2}
\]
where the first sum is empty when \(t=0\). The finite limit produced by
Lemma~\ref{lem:step-011-finite-path-limit} satisfies
\[
  d_{\rm bal}(\theta_\infty,\theta_0)
  \le E_{\rm path}
  \le E_\star.                                          \tag{3}
\]

**Proof / justification.** Applying equation (1) from
Lemma~\ref{lem:step-011-finite-path-limit} with \(s=0\) gives
\[
  d_{\rm bal}(\theta_t,\theta_0)
  =d_{\rm bal}(\theta_0,\theta_t)
  \le\sum_{u=0}^{t-1}\ell_u
  \le\sum_{u=0}^{\infty}\ell_u
  =E_{\rm path}.
\]
The event \(\mathcal C_{\rm path}\) gives
\(E_{\rm path}\le E_\star\). From the setting definition
\[
  E_\star
  =\min\left\{1,
    \sqrt{\frac{\delta_0}{16C_{\rm CP}(\kappa,3)}}\right\},
\]
we also have \(E_\star\le1\). This proves equation (2).

Since \(\theta_t\to\theta_\infty\) in \(d_{\rm bal}\), continuity of the
Euclidean norm, equivalently the reverse triangle inequality, gives
\[
  d_{\rm bal}(\theta_\infty,\theta_0)
  =\lim_{t\to\infty}d_{\rm bal}(\theta_t,\theta_0).
\]
Taking the limit in the already uniform bound
\(d_{\rm bal}(\theta_t,\theta_0)\le E_{\rm path}\) proves equation (3).
Both conclusions remain non-strict when \(E_{\rm path}=E_\star\), while the
case \(E_{\rm path}=0\) reduces to the constant trajectory identified in
Lemma~\ref{lem:step-011-finite-path-limit}. \(\square\)

### unit_003: proposition

**Proposition (uniform component bounds along the path and at the limit).**
\label{prop:step-011-uniform-factor-radius}
Under Assumption~\ref{assump:gd_step}, the accepted
Proposition~\ref{prop:step-004-balanced-size-transfer}, the accepted
Propositions~\ref{prop:step-010-conditional-union} and
\ref{prop:step-010-public-confidence}, and
Proposition~\ref{prop:step-011-path-radius}, on
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), for every
component \(i\in[k]\), every mode
\(M_t\in\{X_t,Y_t,Z_t\}\), and every \(t\ge0\),
\[
  \|m_{i,t}\|_2\le2+E_\star\le3.                       \tag{4}
\]
Writing \(M_\infty\in\{X_\infty,Y_\infty,Z_\infty\}\) for the
corresponding limit block and \(m_{i,\infty}\) for its \(i\)-th column,
\[
  \|m_{i,\infty}\|_2\le2+E_\star\le3.                 \tag{5}
\]

**Proof / justification.** The accepted `step_010` interface uses the exact
setting identity for \(\mathcal E_{\rm init\_norm}\), so on
\(\mathcal E_{\rm init\_norm}\) the accepted `step_004` constituent
\(\mathcal E_{\rm size}\) holds. Hence
\[
  \|m_{i,0}\|_2\le2
\]
for every component and mode.

Fix \(i\), one mode matrix \(M_t\), and \(t\ge0\). The Euclidean norm of one
column is bounded by the Frobenius norm of the full mode-matrix difference,
and that Frobenius norm is one summand of the product norm defining
\(d_{\rm bal}\). Therefore
\[
\begin{aligned}
  \|m_{i,t}\|_2
  &\le \|m_{i,0}\|_2+\|m_{i,t}-m_{i,0}\|_2\\
  &\le \|m_{i,0}\|_2+\|M_t-M_0\|_F\\
  &\le \|m_{i,0}\|_2+d_{\rm bal}(\theta_t,\theta_0)\\
  &\le2+E_\star\le3,
\end{aligned}
\]
where Proposition~\ref{prop:step-011-path-radius} supplies the fourth line and
the setting definition supplies \(E_\star\le1\). This proves equation (4)
simultaneously for every finite time.

The product-space convergence from
Lemma~\ref{lem:step-011-finite-path-limit} implies
\(M_t\to M_\infty\) in Frobenius norm and hence identifies
\(m_{i,\infty}\) as the Euclidean limit of the corresponding columns.
Using the endpoint bound from Proposition~\ref{prop:step-011-path-radius}
directly gives
\[
\begin{aligned}
  \|m_{i,\infty}\|_2
  &\le\|m_{i,0}\|_2+\|m_{i,\infty}-m_{i,0}\|_2\\
  &\le\|m_{i,0}\|_2+\|M_\infty-M_0\|_F\\
  &\le\|m_{i,0}\|_2+d_{\rm bal}(\theta_\infty,\theta_0)\\
  &\le2+E_\star\le3,
\end{aligned}
\]
which proves equation (5). At \(E_{\rm path}=0\), all inequalities reduce to
the unchanged initial columns and \(\theta_\infty=\theta_0\). At
\(E_{\rm path}=E_\star\), the non-strict bound still gives exactly
\(2+E_\star\le3\). \(\square\)

## Target-Step Assembly

Work on the exact event
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\).
Assumption~\ref{assump:gd_step} identifies the trajectory but supplies no
convergence claim. Lemma~\ref{lem:step-011-finite-path-limit} uses only the
sole local conditional hypothesis \(\mathcal C_{\rm path}\) to prove the exact
tail-sum bound
\[
  d_{\rm bal}(\theta_s,\theta_t)
  \le\sum_{u=s}^{t-1}\ell_u,
\]
shows that the tails vanish, and obtains a finite limit
\(\theta_\infty\) by completeness of the fixed Euclidean product space.
Proposition~\ref{prop:step-011-path-radius} then proves the horizon-uniform and
endpoint bounds
\[
  d_{\rm bal}(\theta_t,\theta_0)\le E_\star,
  \qquad
  d_{\rm bal}(\theta_\infty,\theta_0)\le E_\star.
\]

The accepted `step_004` and `step_010` interfaces supply
\(\mathcal E_{\rm size}\) on \(\mathcal E_{\rm init\_norm}\), and hence the
initial column bound \(2\). Proposition~\ref{prop:step-011-uniform-factor-radius}
combines that bound with the exact mode-matrix displacement dominated by
\(d_{\rm bal}\) to prove, for every component, mode, finite time, and the
limit,
\[
  \|m_{i,t}\|_2\le2+E_\star\le3,
  \qquad
  \|m_{i,\infty}\|_2\le2+E_\star\le3.
\]
Thus the exact conditional path-convergence and radius-\(3\) claim is proved
without upgrading \(\mathcal C_{\rm path}\) to an unconditional theorem and
without inserting convergence, trapping, or loss into the certificate.

## Explicit Rate Audit

- Exposed variables: the horizon indices \(s,t\), the nonnegative increments
  \(\ell_t\), the exact path length \(E_{\rm path}\), the setting threshold
  \(E_\star\), the initial radius \(2\), and the exported radius \(3\).
- Hidden constants may depend on: None. The setting-defined quantity
  \(E_\star\) has its displayed dependence on \(\kappa\) through
  \(C_{\rm CP}(\kappa,3)\); no additional constant is introduced.
- Hidden constants may not depend on: \(n,r,k\), the deterministic base
  triple, the realized smoothing or initialization, time, or a finite
  horizon.
- Fixed quantities: a realized trajectory generated by
  Assumption~\ref{assump:gd_step} on
  \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\). The proof is
  deterministic after this event restriction.
- Probability mode: deterministic conditional-on-event. The accepted
  initialization confidence is not converted or strengthened in this step.
- Horizon mode: horizon-uniform for every \(t\ge0\), with an asymptotic finite
  endpoint as \(t\to\infty\).
- Norm mode: \(d_{\rm bal}\), equivalently the Euclidean product norm on
  \((\mathbb R^{n\times k})^3\), together with the Frobenius norm for each mode
  matrix and the Euclidean norm for each column.
- Admissibility conditions and auxiliary tolerances:
  \(E_{\rm path}\le E_\star\le1\) and the accepted constituent
  \(\mathcal E_{\rm size}\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities:
  \[
    d_{\rm bal}(\theta_s,\theta_t)
      \le\sum_{u=s}^{t-1}\ell_u
      \le\sum_{u=s}^{\infty}\ell_u\to0,
  \]
  \[
    d_{\rm bal}(\theta_t,\theta_0)
      \le\sum_{u=0}^{t-1}\ell_u
      \le E_{\rm path}\le E_\star,
  \]
  and
  \[
    \|m_{i,t}\|_2
      \le\|m_{i,0}\|_2+\|M_t-M_0\|_F
      \le2+E_\star\le3,
  \]
  with the identical endpoint inequality for \(m_{i,\infty}\).
- Probability conversion: None. The step is a deterministic implication on
  the exact conditional event.
- Contribution to any Rate Specialization Bridge: exports the finite endpoint,
  the endpoint displacement at most \(E_\star\), and the uniform radius \(3\)
  consumed by `step_012` through `step_015`.
- Baseline-reduction check: if \(E_{\rm path}=0\), every increment vanishes,
  the trajectory is exactly constant, \(\theta_\infty=\theta_0\), and no
  radius or endpoint loss is introduced. If
  \(E_{\rm path}=E_\star\), every conclusion remains valid with non-strict
  equality at the total-budget boundary.

## Blockers

None.

## Notation And Assumption Notes

- \(\mathcal H=(\mathbb R^{n\times k})^3\), with its displayed Euclidean
  product norm, is `proof-local`. It is exactly the ambient space already
  implicit in the setting formula for \(d_{\rm bal}\); it is not a new
  quotient, completion, or theorem-facing object.
- \(\ell_t=d_{\rm bal}(\theta_{t+1},\theta_t)\) is `proof-local` and is
  defined directly from the setting trajectory and metric.
- \(S_N=\sum_{u=0}^{N-1}\ell_u\) and
  \(R_s=\sum_{u=s}^{\infty}\ell_u\) are `proof-local` bookkeeping objects.
  Their finiteness and the fact \(R_s\to0\) are proved in
  Lemma~\ref{lem:step-011-finite-path-limit}; neither is exported.
- \(\theta_\infty\) is `public-facing`. It is a derived object proved to
  exist by Lemma~\ref{lem:step-011-finite-path-limit}, not an assumed limit.
- The generic mode notation \(M_t\in\{X_t,Y_t,Z_t\}\), its column
  \(m_{i,t}\), and the corresponding limit block and column are
  `appendix-local` aliases for setting-defined objects. The public-facing
  output is the uniform factor radius \(3\).
- \(E_{\rm path}\), \(E_\star\), \(d_{\rm bal}\),
  \(\mathcal C_{\rm path}\), \(\mathcal E_{\rm size}\), and
  \(\mathcal E_{\rm init\_norm}\) are `public-facing` and setting defined.
  The constant \(E_\star\le1\) is not chosen in this proof. The radius \(3\)
  has exact provenance \(2+E_\star\le2+1\), proved in
  Proposition~\ref{prop:step-011-uniform-factor-radius}.
- Assumption provenance is complete. Assumption~\ref{assump:gd_step} is the
  sole primitive condition used and supplies only the defined trajectory.
  The events \(\mathcal E_{\rm size}\) and
  \(\mathcal E_{\rm init\_norm}\) are accepted derived outputs. The sole
  local conditional hypothesis is \(\mathcal C_{\rm path}\), which supplies
  only finite total variation. Convergence, endpoint existence, displacement,
  and all-time factor boundedness are all proved in this step.
- The current `global_proof.md` was read only after its paired
  `global_proof_review.md` was verified `ACCEPTED`. Its B11 tail-sum plan was
  used only as planning context. It was not used as evidence, a cited result,
  an assumption source, or authority to change the accepted target claim.
