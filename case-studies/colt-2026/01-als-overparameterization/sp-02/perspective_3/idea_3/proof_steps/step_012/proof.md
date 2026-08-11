# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_012`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_012` | Prove exact raw Taylor remainder. | `step_001`, `step_011` | Derived conditioning and radius | Multilinear remainder. | Trilinearity and Cauchy. | Taylor interface. | `C_CP(kappa,3)`. | PENDING |

Concretely, for the exact setting map
\[
  \Psi_{A,B,C}(X,Y,Z)
  =\sum_{i=1}^k
    (A^\dagger x_i)\otimes(B^\dagger y_i)\otimes(C^\dagger z_i),
\]
this step must prove, on \(\mathcal E_{\rm cond}\), that whenever the
columns of the base point \(\theta=(X,Y,Z)\) have Euclidean norm at most
\(R\) and
\(d_{\rm bal}(\theta',\theta)\le1\),
\[
  \left\|\Psi_{A,B,C}(\theta')-\Psi_{A,B,C}(\theta)
  -D\Psi_{A,B,C}(\theta)[\theta'-\theta]\right\|_F
  \le C_{\rm CP}(\kappa,R)
       d_{\rm bal}(\theta',\theta)^2,
  \qquad
  C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R).
\]
It must then specialize this interface at the single endpoint pair
\((\theta_0,\theta_\infty)\) on
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), using the
accepted radius \(R=3\) and endpoint displacement at most
\(E_\star\le1\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions: None are used directly. The required conditioning
  and trajectory facts are accepted derived outputs of the two declared
  dependencies.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-realized-conditioning} from
    `step_001`, sketch attempt 10 and unit attempt 2, proves that on
    \(\mathcal E_{\rm cond}\), each of \(A,B,C\) has full column rank and
    \[
      \|A^\dagger\|_{\rm op},\ \|B^\dagger\|_{\rm op},\
      \ \|C^\dagger\|_{\rm op}\le\kappa_1,
      \qquad \kappa_1=2\kappa^2.
    \]
  - Accepted Lemma~\ref{lem:step-011-finite-path-limit} and
    Propositions~\ref{prop:step-011-path-radius} and
    \ref{prop:step-011-uniform-factor-radius} from `step_011`, sketch
    attempt 10 and unit attempt 1, prove on
    \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\) that the
    setting trajectory has a finite endpoint \(\theta_\infty\),
    \[
      d_{\rm bal}(\theta_\infty,\theta_0)
      \le E_{\rm path}\le E_\star\le1,
    \]
    and every column of \(\theta_0\) and \(\theta_\infty\) has norm at most
    \(3\). Only the base-point radius at \(\theta_0\) will be used here.
- Local conditional hypotheses:
  - In the generic remainder proposition, the base point obeys the local
    column-radius condition \(R\ge0\), and the displacement obeys
    \(d_{\rm bal}(\theta',\theta)\le1\). Both are discharged by the accepted
    `step_011` output in the endpoint specialization.
  - The endpoint conclusion retains the setting's sole trajectory
    certificate \(\mathcal C_{\rm path}\). It is used only through the
    accepted `step_011` conclusions and is not upgraded to an unconditional
    hypothesis.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_001/proof.md` and its current
    `review.md`, accepted for sketch attempt 10 and unit attempt 2;
  - `perspective_3/idea_3/proof_steps/step_011/proof.md` and its current
    `review.md`, accepted for sketch attempt 10 and unit attempt 1.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under the accepted realized-conditioning interface, on \(\mathcal E_{\rm cond}\), the exact trilinear expansion of \(\Psi_{A,B,C}(\theta')\) about \(\theta\) consists of the value, exactly three first-derivative terms per component, and a remainder containing exactly three quadratic tensors and one cubic tensor per component. | Identifies the exact raw coefficient remainder without generic smoothness or asymptotic notation. |
| `unit_002` | proposition | Under the accepted realized-conditioning interface and Lemma~\ref{lem:step-012-exact-expansion}, on \(\mathcal E_{\rm cond}\), if only the base columns have radius at most \(R\) and \(d=d_{\rm bal}(\theta',\theta)\le1\), then each quadratic family is at most \(\kappa_1^3Rd^2\), the cubic family is at most \(\kappa_1^3d^3\le\kappa_1^3d^2\), and the full raw coefficient remainder is at most \(C_{\rm CP}(\kappa,R)d^2\). | Proves the exact constant \(C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R)\). |
| `unit_003` | proposition | Under the accepted realized-conditioning and path-radius interfaces and Proposition~\ref{prop:step-012-raw-remainder}, on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the pair \((\theta_0,\theta_\infty)\) satisfies the raw endpoint remainder bound with \(R=3\), \(d\le E_\star\le1\), and hence remainder at most \(C_{\rm CP}(\kappa,3)E_\star^2\le\delta_0/16\). | Exports the one-endpoint raw Frobenius remainder consumed by `step_013`. |

Atomic step = no. The exact polynomial identity, its deterministic norm bound,
and the conditional endpoint specialization are distinct obligations. These
are the only three local proof units.

## Cited Result Applications

### Accepted dependency: realized-factor conditioning

**Source and restated statement.** Accepted
Proposition~\ref{prop:step-001-realized-conditioning} proves that on the
setting-defined event \(\mathcal E_{\rm cond}\), the realized matrices
\(A,B,C\) have full column rank and
\[
  \|M^\dagger\|_{\rm op}\le\kappa_1
  \quad\text{for }M\in\{A,B,C\},
  \qquad \kappa_1=2\kappa^2.
\]

**Instantiated objects and discharge.** These are exactly the three left
inverses in the setting map \(\Psi_{A,B,C}\). No inverse in a different
coordinate system and no surrogate coefficient map is used.

### Accepted dependency: finite endpoint, displacement, and radius

**Source and restated statement.** Accepted
Lemma~\ref{lem:step-011-finite-path-limit} and
Propositions~\ref{prop:step-011-path-radius} and
\ref{prop:step-011-uniform-factor-radius} prove that on
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the actual
balanced representatives converge to a finite \(\theta_\infty\), and
\[
  d_{\rm bal}(\theta_\infty,\theta_0)
  \le E_{\rm path}\le E_\star\le1,
  \qquad
  \max_{i,m}\|m_{i,0}\|_2\le3.
\]
The accepted result actually gives the sharper initial radius \(2\) and
radius \(3\) at every time and at the endpoint; the present step uses only
the displayed base radius \(3\).

**Instantiated objects and discharge.** The base point is exactly
\(\theta_0\), the comparison point is exactly \(\theta_\infty\), and the
metric is the setting's product Frobenius metric \(d_{\rm bal}\). Because
\(\mathcal E_{\rm init\_norm}\subseteq\mathcal E_{\rm cond}\), the accepted
conditioning interface applies on the same event.

### Finite-sum Cauchy--Schwarz and rank-one Frobenius identity

**Restated statements.** For nonnegative finite sequences \((a_i)\) and
\((b_i)\),
\[
  \sum_i a_i b_i
  \le\left(\sum_i a_i^2\right)^{1/2}
      \left(\sum_i b_i^2\right)^{1/2}.
\]
For Euclidean vectors \(u,v,w\), direct expansion of the entries gives
\[
  \|u\otimes v\otimes w\|_F^2
  =\sum_{a,b,c}u_a^2v_b^2w_c^2
  =\|u\|_2^2\|v\|_2^2\|w\|_2^2.
\]

**Instantiated objects and discharge.** The sequences are column norms of
the physical increments \(\Delta X,\Delta Y,\Delta Z\), and the rank-one
tensors are the four exact remainder families in
Lemma~\ref{lem:step-012-exact-expansion}. All sums are finite over
\(i\in[k]\).

### Local result applications

- Lemma~\ref{lem:step-012-exact-expansion} supplies the four exact remainder
  families used by Proposition~\ref{prop:step-012-raw-remainder}.
- Proposition~\ref{prop:step-012-raw-remainder} supplies the generic bound
  specialized by Proposition~\ref{prop:step-012-endpoint-remainder}.

## Local Derivation

### unit_001: lemma

**Lemma (exact trilinear coefficient expansion).**
\label{lem:step-012-exact-expansion}
Under the accepted realized-conditioning interface, on
\(\mathcal E_{\rm cond}\), let
\(\theta=(X,Y,Z)\) and \(\theta'=(X',Y',Z')\), and write
\[
  \Delta X=X'-X,\qquad \Delta Y=Y'-Y,\qquad \Delta Z=Z'-Z.
\]
For every \(i\in[k]\), define the exact raw coefficient columns
\[
  \alpha_i=A^\dagger x_i,\quad
  \beta_i=B^\dagger y_i,\quad
  \gamma_i=C^\dagger z_i
\]
and their increments
\[
  \Delta\alpha_i=A^\dagger(x_i'-x_i),\quad
  \Delta\beta_i=B^\dagger(y_i'-y_i),\quad
  \Delta\gamma_i=C^\dagger(z_i'-z_i).
\]
Then
\[
\begin{aligned}
  D\Psi_{A,B,C}(\theta)[\theta'-\theta]
  =\sum_{i=1}^k\bigl(&
      \Delta\alpha_i\otimes\beta_i\otimes\gamma_i
      +\alpha_i\otimes\Delta\beta_i\otimes\gamma_i\\
      &+\alpha_i\otimes\beta_i\otimes\Delta\gamma_i
    \bigr),                                                \tag{1}
\end{aligned}
\]
and, after subtracting the value and all three derivative terms per
component, the remainder is exactly
\[
\begin{aligned}
  &\Psi_{A,B,C}(\theta')-\Psi_{A,B,C}(\theta)
       -D\Psi_{A,B,C}(\theta)[\theta'-\theta]\\
  &\quad=\sum_{i=1}^k\bigl(
      \Delta\alpha_i\otimes\Delta\beta_i\otimes\gamma_i
      +\Delta\alpha_i\otimes\beta_i\otimes\Delta\gamma_i
      +\alpha_i\otimes\Delta\beta_i\otimes\Delta\gamma_i
      +\Delta\alpha_i\otimes\Delta\beta_i\otimes
        \Delta\gamma_i
    \bigr).                                                \tag{2}
\end{aligned}
\]
Thus equation (2) contains exactly three quadratic tensors and one cubic
tensor for each component, and contains no constant or first-order term.

**Proof / justification.** Linearity of the fixed left inverses gives
\[
  A^\dagger x_i'=\alpha_i+\Delta\alpha_i,
  \quad B^\dagger y_i'=\beta_i+\Delta\beta_i,
  \quad C^\dagger z_i'=\gamma_i+\Delta\gamma_i.
\]
Substitution into the exact setting map yields
\[
  \Psi_{A,B,C}(\theta')
  =\sum_{i=1}^k
    (\alpha_i+\Delta\alpha_i)
    \otimes(\beta_i+\Delta\beta_i)
    \otimes(\gamma_i+\Delta\gamma_i).
\]
Expanding each trilinear product gives eight tensors: the base tensor, the
three tensors linear in one increment, the three tensors quadratic in two
increments, and the tensor cubic in all three increments. The coefficient
of a scalar perturbation parameter in the three linear tensors is precisely
the Frechet derivative in equation (1). Subtracting the base value and
equation (1) leaves exactly equation (2). This is an algebraic identity, with
no limiting argument, generic smoothness estimate, or remainder notation.
\(\square\)

### unit_002: proposition

**Proposition (quadratic raw Taylor bound from a base-column radius).**
\label{prop:step-012-raw-remainder}
Under the accepted realized-conditioning interface and
Lemma~\ref{lem:step-012-exact-expansion}, work on
\(\mathcal E_{\rm cond}\). Let \(R\ge0\) and suppose only that the columns
of the base point \(\theta=(X,Y,Z)\) satisfy
\[
  \max_{i\in[k]}
  \max\{\|x_i\|_2,\|y_i\|_2,\|z_i\|_2\}\le R.             \tag{3}
\]
For any \(\theta'=(X',Y',Z')\), put
\[
  d=d_{\rm bal}(\theta',\theta)
   =\bigl(\|\Delta X\|_F^2+\|\Delta Y\|_F^2
           +\|\Delta Z\|_F^2\bigr)^{1/2},
\]
and assume \(0\le d\le1\). Then the three quadratic families in equation
(2) each have Frobenius norm at most \(\kappa_1^3Rd^2\), the cubic family
has Frobenius norm at most \(\kappa_1^3d^3\le\kappa_1^3d^2\), and
\[
  \left\|\Psi_{A,B,C}(\theta')-\Psi_{A,B,C}(\theta)
  -D\Psi_{A,B,C}(\theta)[\theta'-\theta]\right\|_F
  \le \kappa_1^3(1+3R)d^2
  =C_{\rm CP}(\kappa,R)d^2.                               \tag{4}
\]
No column-radius condition on \(\theta'\) is required.

**Proof / justification.** On \(\mathcal E_{\rm cond}\), accepted
Proposition~\ref{prop:step-001-realized-conditioning} gives
\[
  \|A^\dagger\|_{\rm op},\ \|B^\dagger\|_{\rm op},\
  \ \|C^\dagger\|_{\rm op}\le\kappa_1.                   \tag{5}
\]
Consequently, for every component,
\[
\begin{aligned}
  \|\Delta\alpha_i\|_2&\le\kappa_1\|\Delta x_i\|_2,
  &\|\alpha_i\|_2&\le\kappa_1R,\\
  \|\Delta\beta_i\|_2&\le\kappa_1\|\Delta y_i\|_2,
  &\|\beta_i\|_2&\le\kappa_1R,\\
  \|\Delta\gamma_i\|_2&\le\kappa_1\|\Delta z_i\|_2,
  &\|\gamma_i\|_2&\le\kappa_1R.                         \tag{6}
\end{aligned}
\]
Denote the three quadratic sums in their displayed order in equation (2) by
\(Q_{xy},Q_{xz},Q_{yz}\), and denote the cubic sum by \(C_{xyz}\). The
triangle inequality, the rank-one Frobenius identity, equation (6), and
Cauchy--Schwarz give each quadratic family explicitly:
\[
\begin{aligned}
  \|Q_{xy}\|_F
  &\le\sum_{i=1}^k
       \|\Delta\alpha_i\|_2\|\Delta\beta_i\|_2\|\gamma_i\|_2\\
  &\le\kappa_1^3R
       \sum_{i=1}^k\|\Delta x_i\|_2\|\Delta y_i\|_2
   \le\kappa_1^3R\|\Delta X\|_F\|\Delta Y\|_F
   \le\kappa_1^3Rd^2,                                    \tag{7}\\
  \|Q_{xz}\|_F
  &\le\sum_{i=1}^k
       \|\Delta\alpha_i\|_2\|\beta_i\|_2\|\Delta\gamma_i\|_2\\
  &\le\kappa_1^3R
       \sum_{i=1}^k\|\Delta x_i\|_2\|\Delta z_i\|_2
   \le\kappa_1^3R\|\Delta X\|_F\|\Delta Z\|_F
   \le\kappa_1^3Rd^2,                                    \tag{8}\\
  \|Q_{yz}\|_F
  &\le\sum_{i=1}^k
       \|\alpha_i\|_2\|\Delta\beta_i\|_2\|\Delta\gamma_i\|_2\\
  &\le\kappa_1^3R
       \sum_{i=1}^k\|\Delta y_i\|_2\|\Delta z_i\|_2
   \le\kappa_1^3R\|\Delta Y\|_F\|\Delta Z\|_F
   \le\kappa_1^3Rd^2.                                    \tag{9}
\end{aligned}
\]
For the cubic family, let
\(a_i=\|\Delta x_i\|_2\),
\(b_i=\|\Delta y_i\|_2\), and
\(c_i=\|\Delta z_i\|_2\). Two finite-sum inequalities give
\[
\begin{aligned}
  \sum_{i=1}^k a_ib_ic_i
  &\le\left(\sum_i a_i^2\right)^{1/2}
       \left(\sum_i b_i^2c_i^2\right)^{1/2}\\
  &\le\left(\sum_i a_i^2\right)^{1/2}
       \left(\sum_i b_i^2\right)^{1/2}
       \left(\sum_i c_i^2\right)^{1/2},                  \tag{10}
\end{aligned}
\]
where the second line also follows directly from
\(\sum_i b_i^2c_i^2\le(\sum_i b_i^2)(\sum_i c_i^2)\).
Therefore
\[
\begin{aligned}
  \|C_{xyz}\|_F
  &\le\kappa_1^3\sum_{i=1}^k a_ib_ic_i\\
  &\le\kappa_1^3
       \|\Delta X\|_F\|\Delta Y\|_F\|\Delta Z\|_F
   \le\kappa_1^3d^3
   \le\kappa_1^3d^2,                                     \tag{11}
\end{aligned}
\]
where the last inequality uses exactly \(d\le1\). Applying the triangle
inequality to the four exact families in equation (2) and using
equations (7)--(11) yields
\[
  3\kappa_1^3Rd^2+\kappa_1^3d^2
  =\kappa_1^3(1+3R)d^2,
\]
which is equation (4).

Only the unperturbed coefficients \(\alpha_i,\beta_i,\gamma_i\) occur in
the three quadratic terms, one per term. The comparison point
\(\theta'\) enters exclusively through \(\Delta X,\Delta Y,\Delta Z\).
This is why equation (3) is needed only at the base point and no radius for
\(\theta'\) is used.

If \(d=0\), all three physical increments and hence all coefficient
increments vanish, so equation (2) is exactly zero and equation (4) holds
with equality. If \(d=1\), the only degree reduction used above is
\(d^3\le d^2\), which is equality at that boundary; all other estimates
remain non-strict. Thus both boundary values are included. \(\square\)

### unit_003: proposition

**Proposition (one-endpoint raw coefficient remainder).**
\label{prop:step-012-endpoint-remainder}
Under the accepted realized-conditioning interface, the accepted
Lemma~\ref{lem:step-011-finite-path-limit} and
Propositions~\ref{prop:step-011-path-radius} and
\ref{prop:step-011-uniform-factor-radius}, and
Proposition~\ref{prop:step-012-raw-remainder}, on the exact conditional event
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\),
\[
\begin{aligned}
  &\left\|\Psi_{A,B,C}(\theta_\infty)
      -\Psi_{A,B,C}(\theta_0)
      -D\Psi_{A,B,C}(\theta_0)[\theta_\infty-\theta_0]
    \right\|_F\\
  &\qquad\le C_{\rm CP}(\kappa,3)
      d_{\rm bal}(\theta_\infty,\theta_0)^2
   \le C_{\rm CP}(\kappa,3)E_\star^2
   \le\frac{\delta_0}{16}.                               \tag{12}
\end{aligned}
\]
This is a raw coefficient-space Frobenius bound for the single endpoint
pair; it makes no physical-coordinate change and contains no sum over time.

**Proof / justification.** On
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), accepted
Proposition~\ref{prop:step-011-uniform-factor-radius} gives
\[
  \max_{i\in[k]}
  \max\{\|x_{i,0}\|_2,\|y_{i,0}\|_2,\|z_{i,0}\|_2\}
  \le3.                                                    \tag{13}
\]
This is the required base-point condition with \(R=3\). No endpoint column
bound is needed for Proposition~\ref{prop:step-012-raw-remainder}.
Accepted Proposition~\ref{prop:step-011-path-radius} gives
\[
  d_{\rm bal}(\theta_\infty,\theta_0)
  \le E_{\rm path}\le E_\star\le1.                       \tag{14}
\]
Moreover, the definition of \(\mathcal E_{\rm init\_norm}\) includes
\(\mathcal E_{\rm cond}\), so the accepted left-inverse bounds hold for the
same realization. Proposition~\ref{prop:step-012-raw-remainder}, with
\(\theta=\theta_0\), \(\theta'=\theta_\infty\), \(R=3\), and equation
(14), gives the first two inequalities in equation (12). Finally, the exact
setting definition
\[
  E_\star
  =\min\left\{1,
       \sqrt{\frac{\delta_0}{16C_{\rm CP}(\kappa,3)}}
    \right\}
\]
implies
\[
  C_{\rm CP}(\kappa,3)E_\star^2\le\frac{\delta_0}{16},
\]
which proves the last inequality.

At the zero-path boundary, accepted `step_011` gives
\(\theta_\infty=\theta_0\), and every term on the left of equation (12)
vanishes exactly. At the unit-displacement boundary, the generic estimate
already includes \(d=1\); no strict radius or displacement inequality is
used. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-012-exact-expansion} expands the exact setting map
\(\Psi_{A,B,C}\) in the raw coefficient coordinates induced by the realized
left inverses. After removing \(\Psi_{A,B,C}(\theta)\) and the exact Frechet
derivative, it leaves exactly three quadratic tensors and one cubic tensor
per component. Proposition~\ref{prop:step-012-raw-remainder} applies the
accepted \(\kappa_1\) left-inverse bounds, the base physical column radius,
the rank-one Frobenius identity, and finite-sum Cauchy--Schwarz. Each
quadratic family is bounded by \(\kappa_1^3Rd^2\), while the cubic family is
bounded by \(\kappa_1^3d^3\le\kappa_1^3d^2\). Their sum is exactly
\[
  C_{\rm CP}(\kappa,R)d^2
  =\kappa_1^3(1+3R)d^2.
\]

On \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the accepted
`step_011` interface supplies the finite endpoint, base radius \(R=3\), and
\(d_{\rm bal}(\theta_\infty,\theta_0)\le E_\star\le1\), while accepted
`step_001` supplies the left-inverse bounds on the constituent event
\(\mathcal E_{\rm cond}\). Proposition~\ref{prop:step-012-endpoint-remainder}
therefore exports the exact one-endpoint raw coefficient remainder
\[
  \left\|\Psi_{A,B,C}(\theta_\infty)-\Psi_{A,B,C}(\theta_0)
      -D\Psi_{A,B,C}(\theta_0)[\theta_\infty-\theta_0]\right\|_F
  \le C_{\rm CP}(\kappa,3)E_\star^2
  \le\delta_0/16.
\]
This is precisely the Taylor interface and constant required by the accepted
sketch row and consumed by `step_013`. It is a single endpoint estimate, not
a time accumulation, and it remains in the exact raw coefficient Frobenius
norm.

## Explicit Rate Audit

- Exposed variables: \(\kappa\), \(\kappa_1=2\kappa^2\), the base radius
  \(R\), the displacement \(d=d_{\rm bal}(\theta',\theta)\), and, in the
  endpoint specialization, \(R=3\), \(E_\star\), and \(\delta_0\).
- Hidden constants may depend on: None. The complete constant is the explicit
  \(C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R)\).
- Hidden constants may not depend on: \(n,r,k\), the deterministic base
  triple, the realized initialization, the internal component index, time,
  or a horizon.
- Fixed quantities: one realization of \(A,B,C\) on
  \(\mathcal E_{\rm cond}\), one base point \(\theta\), and one comparison
  point \(\theta'\). The theorem-facing specialization fixes the single pair
  \((\theta_0,\theta_\infty)\).
- Probability mode: deterministic on the stated derived event; the endpoint
  conclusion is conditional on
  \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\). No probability
  conversion occurs here.
- Horizon mode: one endpoint. There is no sum, union, supremum, or accumulation
  over time.
- Norm mode: raw coefficient tensor Frobenius norm for the remainder,
  physical matrix Frobenius norms in \(d_{\rm bal}\), and physical Euclidean
  norms for the base columns. No physical residual norm is substituted for
  the raw coefficient norm.
- Admissibility conditions and auxiliary tolerances: the derived event
  \(\mathcal E_{\rm cond}\), a base column radius \(R\ge0\), and
  \(0\le d\le1\). At the endpoint these are discharged by
  \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), \(R=3\), and
  \(d\le E_\star\le1\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities:
  \[
    \|Q_{xy}\|_F,\ \|Q_{xz}\|_F,\ \|Q_{yz}\|_F
      \le\kappa_1^3Rd^2,
    \qquad
    \|C_{xyz}\|_F\le\kappa_1^3d^3\le\kappa_1^3d^2,
  \]
  and
  \[
    C_{\rm CP}(\kappa,3)E_\star^2\le\delta_0/16.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: equation (12) supplies the
  exact endpoint error that `step_013` absorbs against the raw normal margin.
- Baseline-reduction check: if \(d=0\), the trilinear identity gives an
  exactly zero remainder. In particular, at \(E_{\rm path}=0\), accepted
  `step_011` gives \(\theta_\infty=\theta_0\), so the full zero-path raw
  deficit is preserved without Taylor loss. The boundary \(d=1\) is included
  because \(d^3\le d^2\) remains valid with equality.

## Blockers

None.

## Notation And Assumption Notes

- \(\Psi_{A,B,C}\), \(d_{\rm bal}\), \(\kappa_1\),
  \(C_{\rm CP}(\kappa,R)\), \(E_\star\), and \(\delta_0\) are
  `public-facing` and defined directly in `setting.md`. The endpoint
  remainder inequality in equation (12) is the sole new public-facing
  interface exported to `step_013`.
- \(\Delta X,\Delta Y,\Delta Z\), the base coefficient columns
  \(\alpha_i,\beta_i,\gamma_i\), and their increments are `appendix-local`.
  Every one is an explicit image of a setting-defined physical column under
  the exact setting left inverse; no new coordinate convention is introduced.
- \(Q_{xy},Q_{xz},Q_{yz},C_{xyz}\) and the scalar column-norm sequences
  \((a_i),(b_i),(c_i)\) are `proof-local` names for the four displayed sums.
  They are not exported.
- The radius \(R\) and displacement \(d\) are `appendix-local` parameters in
  Proposition~\ref{prop:step-012-raw-remainder}. Their provenance is the
  proposition's explicit local conditions. At the public endpoint they are
  discharged by accepted `step_011` with \(R=3\) and \(d\le E_\star\le1\).
- The left-inverse bound \(\kappa_1\) and event
  \(\mathcal E_{\rm cond}\) are accepted derived outputs from `step_001`;
  neither is assumed as a primitive condition here. The endpoint, displacement,
  and radius are accepted derived outputs from `step_011`.
- The only theorem-facing conditional hypothesis remains
  \(\mathcal C_{\rm path}\). The generic radius and unit-displacement
  conditions are local hypotheses discharged before the endpoint conclusion
  is exported. No generated convergence, boundedness, or conditioning fact is
  promoted to a primitive assumption.
- Constant provenance is exact: each left inverse contributes one factor
  \(\kappa_1\); each quadratic family contributes the base radius \(R\);
  the cubic family contributes no radius and is reduced using \(d\le1\).
  Three quadratic families plus one cubic family yield
  \(\kappa_1^3(3R+1)\) with no hidden factor.
- Only the base point needs a column radius because each quadratic tensor in
  equation (2) contains exactly one base coefficient and the cubic tensor
  contains none. No bound on the comparison point is used.
- No generic smoothness theorem, big-O notation, time summation, physical
  coordinate transformation, or external citation is used. The current
  `global_proof.md` was not read.
