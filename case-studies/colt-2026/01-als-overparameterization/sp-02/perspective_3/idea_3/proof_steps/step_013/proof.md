# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_013`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_013` | Preserve the raw coefficient margin at the limit. | `step_009`, `step_011`, `step_012` | Derived witness, path, and Taylor outputs | Endpoint absorption. | `W_0` orthogonality. | Coefficient floor. | `(15/16)delta_0 sqrt(r)`. | PENDING |

Concretely, on the exact conditional event
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), this step must
prove
\[
  \left\langle D_r-\Psi_{A,B,C}(\theta_\infty),W_0\right\rangle_F
  \ge \frac{15}{16}\delta_0\sqrt r,
  \qquad
  \left\|D_r-\Psi_{A,B,C}(\theta_\infty)\right\|_F
  \ge \frac{15}{16}\delta_0\sqrt r.
\]
The target, coefficient map, witness, and norm remain exactly the raw objects
from `setting.md`. This step contains one endpoint absorption and no
time-accumulation or physical-coordinate transfer.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - No technical `assump:*` condition is used directly. The setting fixes an
    integer \(r\ge1\), the raw coefficient map \(\Psi_{A,B,C}\), the raw
    target \(D_r\), the raw tangent span \(\mathscr S_0\), and
    \(\delta_0=1/8\).
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-009-raw-witness} from `step_009`,
    sketch attempt 10 and unit attempt 1, supplies a raw witness \(W_0\) with
    \[
      \|W_0\|_F=1,
      \qquad W_0\perp\mathscr S_0,
      \qquad
      \langle D_r-\widehat D_0,W_0\rangle_F
      \ge\delta_0\|D_r\|_F=\delta_0\sqrt r.
    \]
  - Accepted Lemma~\ref{lem:step-011-finite-path-limit} and
    Proposition~\ref{prop:step-011-path-radius} from `step_011`, sketch
    attempt 10 and unit attempt 1, supply the finite endpoint
    \(\theta_\infty\) on
    \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), with
    \(d_{\rm bal}(\theta_\infty,\theta_0)\le E_\star\). They also supply the
    exact zero-path identity \(\theta_\infty=\theta_0\) when
    \(E_{\rm path}=0\).
  - Accepted Lemma~\ref{lem:step-012-exact-expansion} and
    Proposition~\ref{prop:step-012-endpoint-remainder} from `step_012`, sketch
    attempt 10 and unit attempt 1, supply the exact derivative formula and the
    single-endpoint raw remainder bound
    \[
      \left\|\Psi_{A,B,C}(\theta_\infty)-\Psi_{A,B,C}(\theta_0)
      -D\Psi_{A,B,C}(\theta_0)[\theta_\infty-\theta_0]\right\|_F
      \le C_{\rm CP}(\kappa,3)E_\star^2
      \le\frac{\delta_0}{16}.
    \]
- Local conditional hypotheses:
  - The sole theorem-facing conditional hypothesis remains
    \(\mathcal C_{\rm path}=\{E_{\rm path}\le E_\star\}\). It is consumed
    only through the accepted endpoint and remainder outputs. No convergence,
    tangent cancellation, coefficient margin, or physical-loss conclusion is
    assumed through this certificate.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_009/proof.md` and its `ACCEPTED`
    sketch-attempt-10, unit-attempt-1 review;
  - `perspective_3/idea_3/proof_steps/step_011/proof.md` and its `ACCEPTED`
    sketch-attempt-10, unit-attempt-1 review;
  - `perspective_3/idea_3/proof_steps/step_012/proof.md` and its `ACCEPTED`
    sketch-attempt-10, unit-attempt-1 review.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under the exact setting definitions and the accepted `step_009`, `step_011`, and `step_012` interfaces, on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), if \(\Delta\theta=\theta_\infty-\theta_0\), then \(D\Psi_{A,B,C}(\theta_0)[\Delta\theta]\in\mathscr S_0\) and hence \(\langle D\Psi_{A,B,C}(\theta_0)[\Delta\theta],W_0\rangle_F=0\). | Proves the exact raw tangent-range membership and derivative cancellation from the defining generators of \(\mathscr S_0\). |
| `unit_002` | proposition | Under the accepted `step_009`, `step_011`, and `step_012` interfaces and Lemma~\ref{lem:step-013-tangent-cancellation}, on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the exact endpoint decomposition gives both \(\langle D_r-\Psi_{A,B,C}(\theta_\infty),W_0\rangle_F\ge(15/16)\delta_0\sqrt r\) and \(\|D_r-\Psi_{A,B,C}(\theta_\infty)\|_F\ge(15/16)\delta_0\sqrt r\). | Absorbs the sole endpoint remainder without assigning it a sign and exports the raw coefficient floor. |

Atomic step = no. Exact derivative-range membership is logically distinct
from the endpoint remainder absorption, so they are exposed as two units.

## Cited Result Applications

### Accepted dependency: raw normal witness and initial margin

**Source and restated statement.** Accepted
Proposition~\ref{prop:step-009-raw-witness} supplies, on the generated deficit
event contained in \(\mathcal E_{\rm init\_norm}\), the exact raw witness
\(W_0\) satisfying
\[
  \|W_0\|_F=1,
  \qquad W_0\perp\mathscr S_0,
  \qquad
  \langle D_r-\widehat D_0,W_0\rangle_F
  \ge\delta_0\sqrt r.
  \tag{1}
\]

**Instantiated objects and discharge.** These are the unnormalized target,
tangent span, represented initial coefficient tensor, witness, and Frobenius
inner product from the setting. The exact setting identity
\[
  \Psi_{A,B,C}(\theta_0)
  =\sum_{i=1}^k\alpha_{i,0}\otimes\beta_{i,0}\otimes\gamma_{i,0}
  =\widehat D_0                                             \tag{2}
\]
translates equation (1) directly to the base point of the endpoint expansion.

### Accepted dependency: finite path endpoint

**Source and restated statement.** Accepted
Lemma~\ref{lem:step-011-finite-path-limit} and
Proposition~\ref{prop:step-011-path-radius} prove, on
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), that the actual
balanced representatives converge to a finite \(\theta_\infty\) and that
\(d_{\rm bal}(\theta_\infty,\theta_0)\le E_\star\). If
\(E_{\rm path}=0\), then \(\theta_\infty=\theta_0\).

**Instantiated objects and discharge.** The endpoint and base point below are
exactly this \(\theta_\infty\) and the setting initialization \(\theta_0\).
No finite-time sequence or additional limit is introduced.

### Accepted dependency: derivative formula and endpoint remainder

**Source and restated statement.** Accepted
Lemma~\ref{lem:step-012-exact-expansion} gives the exact Frechet derivative of
the raw coefficient map. Accepted
Proposition~\ref{prop:step-012-endpoint-remainder} gives, for the same
endpoint pair on the same conditional event,
\[
  \left\|\Psi_{A,B,C}(\theta_\infty)-\Psi_{A,B,C}(\theta_0)
  -D\Psi_{A,B,C}(\theta_0)[\theta_\infty-\theta_0]\right\|_F
  \le\frac{\delta_0}{16}.                                \tag{3}
\]

**Instantiated objects and discharge.** Equation (3) is already in the exact
raw coefficient Frobenius norm paired with \(W_0\). It is one endpoint
estimate and has no time sum. Its base-radius, displacement, conditioning,
and \(E_\star\) conditions were discharged inside the accepted dependency.

### Frobenius Cauchy--Schwarz

**Restated statement.** For coefficient tensors \(U,V\),
\[
  |\langle U,V\rangle_F|\le\|U\|_F\|V\|_F.
  \tag{4}
\]

**Instantiated objects and discharge.** Equation (4) is applied first with
\(U=R_\infty\), \(V=W_0\), and then with
\(U=D_r-\Psi_{A,B,C}(\theta_\infty)\), \(V=W_0\). Both tensors lie in the
same finite-dimensional raw coefficient Frobenius space, and equation (1)
gives \(\|W_0\|_F=1\).

### Local result application

Lemma~\ref{lem:step-013-tangent-cancellation} supplies the exact zero
first-order pairing used by
Proposition~\ref{prop:step-013-preserved-raw-margin}.

No external paper result or physical-coordinate comparison is used.

## Local Derivation

### unit_001: lemma

**Lemma (raw tangent-range cancellation at initialization).**
\label{lem:step-013-tangent-cancellation}
Under the exact setting definitions and the accepted `step_009`, `step_011`,
and `step_012` interfaces, work on
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\). Let
\[
  \Delta\theta=\theta_\infty-\theta_0
  =(\Delta X,\Delta Y,\Delta Z).
\]
Then
\[
  D\Psi_{A,B,C}(\theta_0)[\Delta\theta]\in\mathscr S_0,
  \qquad
  \left\langle D\Psi_{A,B,C}(\theta_0)[\Delta\theta],W_0\right\rangle_F=0.
  \tag{5}
\]

**Proof / justification.** Write \(\Delta x_i,\Delta y_i,\Delta z_i\) for
the columns of the three increment matrices. The exact derivative formula
from accepted Lemma~\ref{lem:step-012-exact-expansion}, specialized at
\(\theta_0\), is
\[
\begin{aligned}
  D\Psi_{A,B,C}(\theta_0)[\Delta\theta]
  =\sum_{i=1}^k\bigl(&
    (A^\dagger\Delta x_i)\otimes\beta_{i,0}\otimes\gamma_{i,0}\\
    &+\alpha_{i,0}\otimes(B^\dagger\Delta y_i)\otimes\gamma_{i,0}\\
    &+\alpha_{i,0}\otimes\beta_{i,0}\otimes(C^\dagger\Delta z_i)
  \bigr).                                                 \tag{6}
\end{aligned}
\]
Each of \(A^\dagger\Delta x_i\), \(B^\dagger\Delta y_i\), and
\(C^\dagger\Delta z_i\) lies in \(\mathbb R^r\). By the exact raw tangent
definition in `setting.md`, the three summands in equation (6) belong,
respectively, to the three generator families whose span is
\(\mathscr S_0\). Their finite sum therefore lies in \(\mathscr S_0\).
Accepted Proposition~\ref{prop:step-009-raw-witness} gives
\(W_0\perp\mathscr S_0\), which proves the second equality in equation (5).
No quotient representative, normalized target, or closure of the tangent
space is used. \(\square\)

### unit_002: proposition

**Proposition (preserved positive raw coefficient margin).**
\label{prop:step-013-preserved-raw-margin}
Under the accepted `step_009`, `step_011`, and `step_012` interfaces and
Lemma~\ref{lem:step-013-tangent-cancellation}, on
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), define the exact
endpoint remainder
\[
  R_\infty:=\Psi_{A,B,C}(\theta_\infty)-\Psi_{A,B,C}(\theta_0)
  -D\Psi_{A,B,C}(\theta_0)[\Delta\theta].                \tag{7}
\]
Then
\[
  \left\langle D_r-\Psi_{A,B,C}(\theta_\infty),W_0\right\rangle_F
  \ge\frac{15}{16}\delta_0\sqrt r,                      \tag{8}
\]
and consequently
\[
  \left\|D_r-\Psi_{A,B,C}(\theta_\infty)\right\|_F
  \ge\frac{15}{16}\delta_0\sqrt r.                      \tag{9}
\]

**Proof / justification.** Rearranging equation (7) gives the exact raw
coefficient identity
\[
  D_r-\Psi_{A,B,C}(\theta_\infty)
  =D_r-\Psi_{A,B,C}(\theta_0)
   -D\Psi_{A,B,C}(\theta_0)[\Delta\theta]-R_\infty.
  \tag{10}
\]
By equation (2), \(\Psi_{A,B,C}(\theta_0)=\widehat D_0\). Pairing equation
(10) with \(W_0\), using the exact cancellation in
Lemma~\ref{lem:step-013-tangent-cancellation}, the initial margin in equation
(1), and equation (4), gives
\[
\begin{aligned}
  \left\langle D_r-\Psi_{A,B,C}(\theta_\infty),W_0\right\rangle_F
  &=\langle D_r-\widehat D_0,W_0\rangle_F
    -\langle R_\infty,W_0\rangle_F\\
  &\ge\delta_0\sqrt r-|\langle R_\infty,W_0\rangle_F|\\
  &\ge\delta_0\sqrt r-\|R_\infty\|_F.                 \tag{11}
\end{aligned}
\]
No sign is assigned to the remainder pairing. The accepted endpoint estimate
in equation (3) and \(r\ge1\) imply
\[
  \|R_\infty\|_F
  \le\frac{\delta_0}{16}
  \le\frac{\delta_0\sqrt r}{16}.                        \tag{12}
\]
Substituting equation (12) into equation (11) proves equation (8). Finally,
Frobenius Cauchy--Schwarz and \(\|W_0\|_F=1\) give
\[
  \left\|D_r-\Psi_{A,B,C}(\theta_\infty)\right\|_F
  \ge
  \left|\left\langle
    D_r-\Psi_{A,B,C}(\theta_\infty),W_0
  \right\rangle_F\right|
  \ge\frac{15}{16}\delta_0\sqrt r,
\]
because the pairing is positive by equation (8). This proves equation (9).

If \(E_{\rm path}=0\), accepted `step_011` gives
\(\theta_\infty=\theta_0\), so \(\Delta\theta=0\) and
\(R_\infty=0\). Equation (10) then retains the complete initial margin
\(\langle D_r-\widehat D_0,W_0\rangle_F\ge\delta_0\sqrt r\), rather than
only the conservative factor \(15/16\). If \(E_{\rm path}=E_\star\), the
accepted non-strict bound in equation (3) still gives equation (12). If the
initial deficit inequality in equation (1) holds with equality, equation
(11) still yields the claimed floor after the worst-sign remainder. For
\(r=1\), the second inequality in equation (12) is equality, so the same
\(15/16\) conclusion holds without a large-r simplification. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-013-tangent-cancellation} expands the exact raw
coefficient derivative at \(\theta_0\) and places each of its three families
inside a defining generator family of \(\mathscr S_0\). The accepted raw
witness is orthogonal to this exact span, so the complete first-order term
cancels.

Proposition~\ref{prop:step-013-preserved-raw-margin} then uses the exact
identity \(\Psi_{A,B,C}(\theta_0)=\widehat D_0\), the accepted initial raw
margin, and the accepted single-endpoint remainder. It controls the remainder
pairing by absolute value and proves
\[
  \langle D_r-\Psi_{A,B,C}(\theta_\infty),W_0\rangle_F
  \ge\delta_0\sqrt r-\frac{\delta_0}{16}
  \ge\frac{15}{16}\delta_0\sqrt r.
\]
Unit norm of \(W_0\) converts this positive pairing into the same lower bound
for the exact raw coefficient residual norm. The argument is deterministic
on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), uses one endpoint
remainder rather than a time sum, and makes no physical-coordinate transfer.

## Explicit Rate Audit

- Exposed variables: \(r\ge1\), \(\delta_0=1/8\),
  \(C_{\rm CP}(\kappa,3)\), \(E_\star\), and the retained coefficient margin
  \((15/16)\delta_0\sqrt r\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(n,r,k\), the deterministic base
  triple, the realized smoothing or initialization, time, or a horizon.
- Fixed quantities: one realization in
  \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), its accepted
  witness \(W_0\), and its single accepted endpoint \(\theta_\infty\).
- Probability mode: deterministic conditional-on-event. No probability
  conversion or new failure event occurs.
- Horizon mode: one asymptotic endpoint after convergence has already been
  produced. No finite-time bound is accumulated.
- Norm mode: the exact raw coefficient tensor Frobenius norm and inner
  product.
- Admissibility conditions and auxiliary tolerances: the derived event
  \(\mathcal E_{\rm init\_norm}\), the sole explicit conditional certificate
  \(\mathcal C_{\rm path}\), and the setting condition \(r\ge1\). The
  setting-defined \(E_\star\) is not chosen or changed here.
- Term absorption or simplification inequalities:
  \[
    |\langle R_\infty,W_0\rangle_F|
    \le\|R_\infty\|_F
    \le C_{\rm CP}(\kappa,3)E_\star^2
    \le\frac{\delta_0}{16}
    \le\frac{\delta_0\sqrt r}{16},
  \]
  followed by
  \[
    \delta_0\sqrt r-\frac{\delta_0\sqrt r}{16}
    =\frac{15}{16}\delta_0\sqrt r.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: exports only the positive
  raw coefficient floor consumed by `step_014`; the physical transfer itself
  is outside this step.
- Baseline-reduction check: at \(E_{\rm path}=0\),
  \(\theta_\infty=\theta_0\), the derivative and remainder vanish, and the
  complete initial margin \(\delta_0\sqrt r\) is retained. Equality at
  \(E_{\rm path}=E_\star\), equality in the initial deficit bound, and
  \(r=1\) all remain covered by non-strict displayed inequalities.

## Blockers

None.

## Notation And Assumption Notes

- \(D_r\), \(\Psi_{A,B,C}\), \(\widehat D_0\), \(\mathscr S_0\),
  \(W_0\), \(\theta_0\), \(\theta_\infty\), \(\delta_0\), \(E_\star\),
  \(\mathcal E_{\rm init\_norm}\), and \(\mathcal C_{\rm path}\) are
  `public-facing` setting or accepted-dependency objects.
- \(\Delta\theta=(\Delta X,\Delta Y,\Delta Z)\) and its component columns
  are `appendix-local` aliases for the difference of the accepted endpoint
  and the setting initialization. They introduce no new condition or bound.
- \(R_\infty\) is `appendix-local`. It is exactly the accepted endpoint
  Taylor remainder, and its bound is inherited from accepted
  Proposition~\ref{prop:step-012-endpoint-remainder}; it is not exported to
  the theorem statement.
- The coefficient floor in equations (8)--(9) is the sole new
  `public-facing` output. It introduces no new constant: \(15/16\) comes from
  the setting choice \(E_\star\), the accepted \(\delta_0/16\) remainder,
  and the elementary inequality \(\sqrt r\ge1\).
- Assumption provenance is complete. The witness and initial margin are
  accepted derived outputs from `step_009`; endpoint existence and the
  zero-path identity are accepted derived outputs from `step_011`; and the
  derivative formula and endpoint remainder are accepted derived outputs from
  `step_012`. The only conditional hypothesis is the setting's explicit
  \(\mathcal C_{\rm path}\). Derivative cancellation and the final raw margin
  are proved in this step.
- The paired `global_proof.md` and `global_proof_review.md` were consulted
  only after the latter was verified `ACCEPTED`. Block B13 supplied planning
  context for the two-unit decomposition and boundary checks; it was not used
  as proof evidence, a cited result, an assumption source, or authority to
  change the target claim.
