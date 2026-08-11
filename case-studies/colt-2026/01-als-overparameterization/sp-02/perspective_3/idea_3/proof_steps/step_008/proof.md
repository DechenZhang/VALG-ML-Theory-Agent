# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_008`
- Unit attempt: 2

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_008` | Transfer (Haar) through `L` and prove (LEV) with failure at most `r^(-20)`. | `step_001`, `step_006`, `step_007` | `assump:rank_window`; derived `E_cond` | Exact anisotropic projection formula and thresholds. | Oblique-basis projection and singular values. | Projection energy at most `r/2`. | `3r^(-3/4)<=tau_kappa`, explicit tail conversion. | PENDING |

Concretely, conditional on a realized factor triple in
\(\mathcal E_{\rm cond}\), accepted `step_006` supplies
\[
  \mathscr S_0=LQE,
  \qquad
  L=H_a\otimes H_b\otimes H_c,
  \qquad
  Q=Q_a\otimes Q_b\otimes Q_c,
  \qquad
  d:=\dim(E)\le 3kr,
\]
where the three factors of \(Q\) are independent Haar on \(SO(r)\) and are
independent of the internal subspace \(E\). This step must transfer the
accepted fixed-target Haar estimate through \(L\), specialize it using the
full rank window, and prove the exact raw coefficient-space bound
\[
  \boxed{\|P_{\mathscr S_0}D_r\|_F^2\le \frac r2.}
  \tag{LEV}
\]
The conditional failure probability must be at most \(r^{-20}\). The target
is the setting-defined raw \(D_r\) in coefficient Frobenius norm; no
normalized target, surrogate residual, operator supremum, or physical-space
claim is introduced.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:rank_window} gives
    \(r<k\le\lfloor r^{5/4}\rfloor\).
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-realized-conditioning} supplies
    \(\mathcal E_{\rm cond}\) and, on this generated event,
    \(\sigma(M)\subset[\kappa_1^{-1},\kappa_1]\) for
    \(M\in\{A,B,C\}\), where \(\kappa_1=2\kappa^2\).
  - Accepted Proposition~\ref{prop:step-006-product-shape} and
    Proposition~\ref{prop:step-006-exact-equivariance} supply the independent
    product-Haar orientations, their independence from the measurable internal
    subspace \(E\), the dimension bound \(d\le3kr\), and the exact identity
    \(\mathscr S_0=LQE\). Their accepted elliptic-Gaussian interface supplies
    \(\sigma(H_m)\subset[\kappa_1^{-1},\kappa_1]\) for
    \(m\in\{a,b,c\}\).
  - Accepted Lemma~\ref{lem:step-007-sequential-twirl} and
    Proposition~\ref{prop:step-007-product-tail} supply, for every fixed
    subspace \(E\) of dimension \(d\), every fixed nonzero \(X\), and
    \(0<t\le1\),
    \[
      h(Q;E,X):=\frac{\|P_{QE}X\|_F^2}{\|X\|_F^2},
      \qquad
      \mathbb Eh=\frac d{r^3},
    \]
    and
    \[
      \mathbb P_Q\!\left(h\ge\frac d{r^3}+t\right)
      \le8\exp(-c_Hrt^2),
      \qquad c_H=\frac1{288}.
      \tag{Haar}
    \]
- Local conditional hypotheses: None. Conditioning first on the realized
  factors and then on the internal shapes is the probability disintegration
  licensed by the accepted independence statements, not an additional
  theorem assumption.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_001/proof.md` and its `ACCEPTED`
    unit-attempt-2 review;
  - `perspective_3/idea_3/proof_steps/step_006/proof.md` and its `ACCEPTED`
    unit-attempt-2 review;
  - `perspective_3/idea_3/proof_steps/step_007/proof.md` and its `ACCEPTED`
    unit-attempt-1 review.

The event \(\mathcal E_{\rm cond}\), the Haar orientations, and the internal
subspace are all dependency-produced generated objects. None is promoted to a
primitive condition in this step.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under the accepted exact factorization \(\mathscr S_0=LQE\), if \(U\) has orthonormal columns spanning \(QE\), then for \(d>0\) the orthogonal projection onto \(LQE\) has the exact oblique-basis formula, and for every \(x\), \(\|P_{LQE}x\|_F^2\le\sigma_{\min}(L)^{-2}\|P_{QE}L^{\mathsf T}x\|_F^2\); when \(d=0\), both sides are zero. | Gives the exact anisotropic projection transfer without a residual. |
| `unit_002` | proposition | Under the accepted realized-conditioning and elliptic-factor interfaces and Lemma~\ref{lem:step-008-oblique-projection}, \(\sigma_{\min}(L)\ge\kappa_1^{-3}\), \(\sigma_{\max}(L)\le\kappa_1^3\), and therefore \(\|P_{\mathscr S_0}D_r\|_F^2\le\kappa_1^{12}h(Q;E,L^{\mathsf T}D_r)\|D_r\|_F^2\). | Exposes the exact worst-case \(\kappa_1^{12}\) elliptic loss. |
| `unit_003` | proposition | Under Assumption~\ref{assump:rank_window}, the accepted dimension bound and Haar estimate, and Proposition~\ref{prop:step-008-elliptic-transfer}, set \(\tau_\kappa=(4\kappa_1^{12})^{-1}\). For \(r\ge\lceil(12\kappa_1^{12})^{4/3}\rceil\), one has \(d/r^3\le3r^{-3/4}\le\tau_\kappa\), and with conditional failure at most \(8\exp[-c_Hr/(16\kappa_1^{24})]\), \(h\le2\tau_\kappa\) and the exact raw bound (LEV) holds. | Specializes the fixed-target Haar lemma at maximal \(k\) and transfers it to the raw target. |
| `unit_004` | lemma | With \(a_\kappa=c_H/(16\kappa_1^{24})\), an explicit threshold \(r_{0,\rm LEV}(\kappa)\) makes \(a_\kappa r\ge20\log r+\log8\), hence \(8e^{-a_\kappa r}\le r^{-20}\). | Converts the exponential conditional failure into the exact required polynomial budget. |

Atomic step = no. The oblique projection identity, tensor-product singular
transfer, rank-window specialization, and probability conversion are four
independent nontrivial obligations and are kept separate.

## Cited Result Applications

### Accepted dependency: realized conditioning and elliptic singular intervals

**Source and restated statement.** Accepted
Proposition~\ref{prop:step-001-realized-conditioning} proves the generated
event \(\mathcal E_{\rm cond}\). On this event, every realized mode matrix has
singular values in \([\kappa_1^{-1},\kappa_1]\). The elliptic maps \(H_m\)
appearing in accepted `step_006` are the reciprocal-singular-value maps from
the accepted coefficient Gaussianization interface, so
\[
  \sigma(H_m)\subset[\kappa_1^{-1},\kappa_1],
  \qquad m\in\{a,b,c\}.
  \tag{1}
\]

**Instantiated objects and discharge.** Proposition~\ref{prop:step-008-elliptic-transfer}
applies equation (1) to
\(L=H_a\otimes H_b\otimes H_c\). The reciprocal interval is unchanged
because its endpoints are reciprocal. No additional conditioning event is
introduced.

### Accepted dependency: exact product-Haar tangent factorization

**Source and restated statement.** Accepted
Proposition~\ref{prop:step-006-product-shape} and
Proposition~\ref{prop:step-006-exact-equivariance} give, conditional on every
realized factor triple in \(\mathcal E_{\rm cond}\),
\[
  \mathscr S_0=LQE,
  \qquad d=\dim(E)\le3kr,
  \qquad
  (Q_a,Q_b,Q_c)\sim\operatorname{Haar}(SO(r))^{\otimes3},
\]
with the orientations jointly independent of \(E\).

**Instantiated objects and discharge.** Condition first on the realized
factor triple and then on the three internal shapes. This fixes \(L,E,d\) and
\(X=L^{\mathsf T}D_r\), while the conditional law of \(Q\) remains product
Haar. The identity is with the exact raw tangent range, so the projection
formula below has no span-transfer residual.

### Accepted dependency: fixed-target product-Haar mean and tail

**Source and restated statement.** Accepted
Lemma~\ref{lem:step-007-sequential-twirl} and
Proposition~\ref{prop:step-007-product-tail} prove equation (Haar) uniformly
over every fixed \(E,d\) and fixed nonzero \(X\), with \(c_H=1/288\).

**Instantiated objects and discharge.** This step uses the single fixed tensor
\[
  X=L^{\mathsf T}D_r.
\]
It is nonzero because \(L\) is invertible and \(D_r\ne0\). The deviation is
\(t=\tau_\kappa\), and \(0<\tau_\kappa\le1\) is verified before equation
(Haar) is applied. Uniformity in the conditioned shape permits integration
over the shapes without a union bound or confidence loss.

### Local result applications

- Lemma~\ref{lem:step-008-oblique-projection} supplies the exact projection
  formula and the first singular-value loss.
- Proposition~\ref{prop:step-008-elliptic-transfer} combines both extreme
  singular values of \(L\) and exports the \(\kappa_1^{12}\) comparison.
- Proposition~\ref{prop:step-008-raw-leverage} applies equation (Haar) at the
  rank-window threshold and proves the exact raw bound (LEV).
- Lemma~\ref{lem:step-008-tail-conversion} converts its exponential failure
  to \(r^{-20}\).

## Local Derivation

### unit_001: lemma

**Lemma (Exact oblique-basis projection transfer).**
\label{lem:step-008-oblique-projection}
Under the accepted exact factorization \(\mathscr S_0=LQE\), let
\(E\subset(\mathbb R^r)^{\otimes3}\) have dimension \(d\), let \(L\) be
invertible, and, when \(d>0\), let \(U\) have orthonormal columns spanning
\(QE\). For every coefficient tensor \(x\), define
\[
  X=L^{\mathsf T}x,
  \qquad b=U^{\mathsf T}X.
\]
If \(d>0\), then
\[
  P_{LQE}
  =LU\bigl(U^{\mathsf T}L^{\mathsf T}LU\bigr)^{-1}
    U^{\mathsf T}L^{\mathsf T},                            \tag{2}
\]
and
\[
  \|P_{LQE}x\|_F^2
  =b^{\mathsf T}\bigl(U^{\mathsf T}L^{\mathsf T}LU\bigr)^{-1}b
  \le\sigma_{\min}(L)^{-2}\|P_{QE}X\|_F^2.              \tag{3}
\]
If \(d=0\), then \(QE=LQE=\{0\}\), and both sides of the inequality in
equation (3) are zero.

**Proof / justification.** Suppose first that \(d>0\). The columns of
\(LU\) span \(LQE\). Since \(L\) is invertible and \(U\) has full column
rank, \(LU\) has full column rank. The orthogonal projector onto the range of
a full-column-rank matrix \(A\) is
\(A(A^{\mathsf T}A)^{-1}A^{\mathsf T}\); substituting \(A=LU\) proves
equation (2) directly.

Because an orthogonal projector is symmetric and idempotent,
\[
\begin{aligned}
  \|P_{LQE}x\|_F^2
  &=\langle x,P_{LQE}x\rangle_F\\
  &=b^{\mathsf T}\bigl(U^{\mathsf T}L^{\mathsf T}LU\bigr)^{-1}b.
                                                               \tag{4}
\end{aligned}
\]
For every \(y\in\mathbb R^d\), orthonormality of \(U\) gives
\[
  y^{\mathsf T}U^{\mathsf T}L^{\mathsf T}LUy
  =\|LUy\|_F^2
  \ge\sigma_{\min}(L)^2\|Uy\|_F^2
  =\sigma_{\min}(L)^2\|y\|_2^2.
\]
Hence
\[
  \bigl(U^{\mathsf T}L^{\mathsf T}LU\bigr)^{-1}
  \preceq\sigma_{\min}(L)^{-2}I_d.                         \tag{5}
\]
Moreover,
\[
  \|b\|_2^2=\|U^{\mathsf T}X\|_2^2
  =\|UU^{\mathsf T}X\|_F^2
  =\|P_{QE}X\|_F^2.                                       \tag{6}
\]
Combining equations (4)--(6) proves equation (3). When \(d=0\), both
subspaces are the zero subspace, so the stated zero-case conclusion is
immediate. \(\square\)

### unit_002: proposition

**Proposition (Elliptic transfer with the exact condition-number loss).**
\label{prop:step-008-elliptic-transfer}
Under the generated event \(\mathcal E_{\rm cond}\), the accepted elliptic
singular intervals, the exact factorization \(\mathscr S_0=LQE\), and
Lemma~\ref{lem:step-008-oblique-projection},
\[
  \sigma_{\min}(L)\ge\kappa_1^{-3},
  \qquad
  \sigma_{\max}(L)\le\kappa_1^3.                          \tag{7}
\]
Consequently, for every nonzero coefficient tensor \(x\), with
\(X=L^{\mathsf T}x\),
\[
\begin{aligned}
  \|P_{\mathscr S_0}x\|_F^2
  &\le \sigma_{\min}(L)^{-2}
      h(Q;E,X)\|X\|_F^2\\
  &\le \kappa_1^{12}h(Q;E,X)\|x\|_F^2.                   \tag{8}
\end{aligned}
\]
In particular,
\[
  \|P_{\mathscr S_0}D_r\|_F^2
  \le\kappa_1^{12}h(Q;E,L^{\mathsf T}D_r)\|D_r\|_F^2.
                                                               \tag{9}
\]

**Proof / justification.** The singular values of a tensor product are the
pairwise products of the singular values of its factors. Applying the
accepted intervals in equation (1) to
\(L=H_a\otimes H_b\otimes H_c\) gives
\[
  \sigma_{\min}(L)
  =\prod_{m\in\{a,b,c\}}\sigma_{\min}(H_m)
  \ge\kappa_1^{-3},
\]
and
\[
  \sigma_{\max}(L)
  =\prod_{m\in\{a,b,c\}}\sigma_{\max}(H_m)
  \le\kappa_1^3,
\]
proving equation (7). These are the simultaneous worst cases in which all
three lower singular values equal \(\kappa_1^{-1}\), or all three upper
singular values equal \(\kappa_1\).

Lemma~\ref{lem:step-008-oblique-projection} and
\(\|X\|_F\le\sigma_{\max}(L)\|x\|_F\) give
\[
\begin{aligned}
  \|P_{\mathscr S_0}x\|_F^2
  &\le\sigma_{\min}(L)^{-2}\|P_{QE}X\|_F^2\\
  &=\sigma_{\min}(L)^{-2}h(Q;E,X)\|X\|_F^2\\
  &\le\sigma_{\min}(L)^{-2}\sigma_{\max}(L)^2
       h(Q;E,X)\|x\|_F^2\\
  &\le\kappa_1^{12}h(Q;E,X)\|x\|_F^2,                    \tag{10}
\end{aligned}
\]
because the lower and upper singular-value factors contribute
\(\kappa_1^6\) each. This proves equation (8), and \(x=D_r\) gives equation
(9). If \(d=0\), the same conclusion holds with both projection energies
equal to zero. \(\square\)

### unit_003: proposition

**Proposition (Exact raw target leverage bound).**
\label{prop:step-008-raw-leverage}
Under Assumption~\ref{assump:rank_window}, the accepted dimension bound
\(d\le3kr\), the accepted fixed-target Haar estimate, and
Proposition~\ref{prop:step-008-elliptic-transfer}, define
\[
  \tau_\kappa:=\frac1{4\kappa_1^{12}}.                     \tag{11}
\]
If
\[
  r\ge\left\lceil(12\kappa_1^{12})^{4/3}\right\rceil,     \tag{12}
\]
then, conditional on every realized factor triple in
\(\mathcal E_{\rm cond}\), equation (LEV) holds with conditional failure at
most
\[
  8\exp\!\left(-\frac{c_Hr}{16\kappa_1^{24}}\right).
                                                               \tag{13}
\]

**Proof / justification.** Since \(\kappa\ge1\) and
\(\kappa_1=2\kappa^2\ge1\),
\[
  0<\tau_\kappa\le\frac14\le1,                            \tag{14}
\]
so it is an admissible deviation in equation (Haar). Assumption~\ref{assump:rank_window}
and the accepted dimension bound give, including the maximal allowed rank,
\[
  \frac d{r^3}
  \le\frac{3kr}{r^3}
  =\frac{3k}{r^2}
  \le3r^{-3/4}.                                             \tag{15}
\]
The threshold in equation (12) is exactly the condition
\[
  r^{3/4}\ge12\kappa_1^{12},
\]
and therefore
\[
  3r^{-3/4}\le\frac1{4\kappa_1^{12}}=\tau_\kappa.          \tag{16}
\]

Condition now on the realized factors and the internal shapes. Then
\(E,d\) are fixed, \(Q\) remains product Haar, and
\(X=L^{\mathsf T}D_r\ne0\) is fixed. Applying equation (Haar) with
\(t=\tau_\kappa\), and using equations (15)--(16), shows that outside an
event of conditional probability at most
\[
  8e^{-c_Hr\tau_\kappa^2}
  =8\exp\!\left(-\frac{c_Hr}{16\kappa_1^{24}}\right),       \tag{17}
\]
one has
\[
  h(Q;E,L^{\mathsf T}D_r)
  \le\frac d{r^3}+\tau_\kappa
  \le2\tau_\kappa
  =\frac1{2\kappa_1^{12}}.                                 \tag{18}
\]
Proposition~\ref{prop:step-008-elliptic-transfer} then gives
\[
\begin{aligned}
  \|P_{\mathscr S_0}D_r\|_F^2
  &\le\kappa_1^{12}h(Q;E,L^{\mathsf T}D_r)\|D_r\|_F^2\\
  &\le\frac12\|D_r\|_F^2
   =\frac r2,                                               \tag{19}
\end{aligned}
\]
because the \(r\) summands in \(D_r\) are orthonormal and hence
\(\|D_r\|_F^2=r\). This is exactly (LEV) for the raw target and exact raw
tangent span.

The bound in equation (17) is uniform in the internal shapes. Integrating
over them preserves the same conditional failure probability for every
realized factor triple in \(\mathcal E_{\rm cond}\); no union bound or
operator supremum is used. The case \(d=0\) is deterministic and already
satisfies equation (19). \(\square\)

### unit_004: lemma

**Lemma (Explicit conversion to the polynomial failure budget).**
\label{lem:step-008-tail-conversion}
Let
\[
  a_\kappa:=\frac{c_H}{16\kappa_1^{24}},                   \tag{20}
\]
and define the explicit threshold
\[
  r_{0,\rm LEV}(\kappa)
  :=\left\lceil
    \max\left\{
      3,
      (12\kappa_1^{12})^{4/3},
      \left(\frac{20+\log8}{a_\kappa}\right)^2
    \right\}
  \right\rceil.                                            \tag{21}
\]
For every integer \(r\ge r_{0,\rm LEV}(\kappa)\),
\[
  8e^{-a_\kappa r}\le r^{-20}.                             \tag{22}
\]

**Proof / justification.** For every \(r\ge1\),
\[
  \log r\le\sqrt r.                                       \tag{23}
\]
Indeed, \(f(r)=\sqrt r-\log r\) decreases on \([1,4]\), increases on
\([4,\infty)\), and \(f(4)=2-\log4>0\). The last term in the maximum in
equation (21) gives
\[
  \sqrt r\ge\frac{20+\log8}{a_\kappa}.
\]
Using equation (23) and \(\sqrt r\ge1\),
\[
\begin{aligned}
  a_\kappa r
  &=a_\kappa\sqrt r\,\sqrt r\\
  &\ge(20+\log8)\sqrt r\\
  &\ge20\log r+\log8.                                    \tag{24}
\end{aligned}
\]
Therefore
\[
  8e^{-a_\kappa r}
  \le8e^{-20\log r-\log8}
  =r^{-20},
\]
which is equation (22). The same threshold includes equation (12), so it
simultaneously discharges the mean-dominance and tail-conversion conditions.
\(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-008-oblique-projection} gives the exact orthogonal
projection formula for the anisotropic subspace \(LQE\), including the
degenerate case \(d=0\), and proves
\[
  \|P_{LQE}x\|_F^2
  \le\sigma_{\min}(L)^{-2}\|P_{QE}L^{\mathsf T}x\|_F^2.
\]
Proposition~\ref{prop:step-008-elliptic-transfer} applies the accepted
singular intervals in all three modes and proves
\[
  \sigma_{\min}(L)\ge\kappa_1^{-3},
  \qquad
  \sigma_{\max}(L)\le\kappa_1^3,
\]
so the complete worst-case anisotropic loss is exactly
\(\kappa_1^{12}\).

Proposition~\ref{prop:step-008-raw-leverage} cites
Assumption~\ref{assump:rank_window} to use the maximal-rank inequality
\[
  \frac d{r^3}\le\frac{3k}{r^2}\le3r^{-3/4}
  \le\tau_\kappa,
  \qquad
  \tau_\kappa=\frac1{4\kappa_1^{12}},
\]
and applies the accepted fixed-target Haar estimate at the single exact
tensor \(X=L^{\mathsf T}D_r\). It obtains
\(h\le2\tau_\kappa\), hence
\[
  \|P_{\mathscr S_0}D_r\|_F^2
  \le\kappa_1^{12}(2\tau_\kappa)\|D_r\|_F^2
  =\frac r2.
\]
Finally, Lemma~\ref{lem:step-008-tail-conversion} gives an explicit
\(r_{0,\rm LEV}(\kappa)\) for which the conditional failure in equation
(13) is at most \(r^{-20}\). Uniformity over the conditioned shapes permits
the same bound after integrating them out. These four named results prove
the exact sketch-row claim: (LEV) holds for the raw \(D_r\) and exact raw
\(\mathscr S_0\), with conditional failure at most \(r^{-20}\), without a
surrogate residual or target supremum.

## Explicit Rate Audit

- Exposed variables: \(r,k,d,\kappa,\kappa_1\),
  \(\tau_\kappa=(4\kappa_1^{12})^{-1}\), the accepted universal
  \(c_H=1/288\), and
  \(a_\kappa=c_H/(16\kappa_1^{24})\).
- Hidden constants may depend on: only the universal constant \(c_H\) and
  \(\kappa\) through the displayed deterministic thresholds.
- Hidden constants may not depend on: \(n,r,k\), the deterministic base
  triple, the realized internal shapes, the target direction, time, or the GD
  horizon.
- Fixed quantities: condition first on a realized factor triple in
  \(\mathcal E_{\rm cond}\), then on its internal shapes; \(L,E,d\) and
  \(X=L^{\mathsf T}D_r\) are fixed while the product-Haar orientations are
  drawn.
- Probability mode: conditional high probability under initialization,
  uniformly over every realized factor triple in \(\mathcal E_{\rm cond}\).
  The shape-uniform conditional bound is integrated without a union loss.
- Horizon mode: initialization-only.
- Norm mode: coefficient tensor Frobenius norm and orthogonal projection
  energy. The physical target and physical residual norm are not used.
- Admissibility conditions and auxiliary tolerances:
  Assumption~\ref{assump:rank_window},
  \(r\ge r_{0,\rm LEV}(\kappa)\), and
  \(t=\tau_\kappa\in(0,1]\).
- Term absorption or simplification inequalities:
  \[
    \frac d{r^3}\le\frac{3k}{r^2}
    \le3r^{-3/4}\le\tau_\kappa,
    \qquad
    \kappa_1^{12}(2\tau_\kappa)=\frac12.
  \]
- Probability conversion:
  \[
    8\exp\!\left(-\frac{c_Hr}{16\kappa_1^{24}}\right)
    =8e^{-a_\kappa r}
    \le r^{-20}
  \]
  whenever \(a_\kappa r\ge20\log r+\log8\), which is proved from equation
  (21).
- Contribution to any Rate Specialization Bridge: this step exports the exact
  raw leverage certificate (LEV), which is consumed by `step_009` to build
  the raw normal witness and by the later initialization-event union through
  that dependency path.
- Baseline-reduction check: if \(L=I\), equation (3) becomes the direct exact
  product-Haar projection identity with no elliptic loss. The conservative
  \(\kappa_1^{12}\) factor is introduced only when simultaneously replacing
  the actual lower and upper singular values by their worst allowed bounds.
  The target remains the raw \(D_r\) in both cases.

## Blockers

None.

## Notation And Assumption Notes

- \(L,Q,E,d\), the exact factorization \(\mathscr S_0=LQE\), and the scalar
  energy \(h\) are `public-facing` accepted-dependency objects.
- The bound (LEV) is the sole new `public-facing` output. It preserves the
  exact raw \(D_r\), exact raw tangent span, and coefficient Frobenius norm.
- An orthonormal basis matrix \(U\), the vector \(b=U^{\mathsf T}L^{\mathsf T}x\),
  and the Gram matrix \(U^{\mathsf T}L^{\mathsf T}LU\) are `proof-local`.
  They are used only to derive the exact projector and are not exported.
- \(X=L^{\mathsf T}D_r\) is an `appendix-local` specialization of the
  public-facing fixed-target input from accepted `step_007`; it is nonzero by
  invertibility of \(L\).
- \(\tau_\kappa\), \(a_\kappa\), and
  \(r_{0,\rm LEV}(\kappa)\) are `appendix-local`. Their provenance is
  respectively the exact \(\kappa_1^{12}\) transfer loss, the accepted Haar
  exponent, and the displayed mean/tail dominance inequalities. None is a
  free bounded quantity or primitive assumption.
- \(\mathcal E_{\rm cond}\) is a generated event supplied by accepted
  `step_001`. The internal subspace, product-Haar orientations, dimension
  bound, and exact span identity are generated outputs supplied by accepted
  `step_006`. The fixed-target tail is supplied by accepted `step_007`.
  This step proves the leverage output from those sources and introduces no
  local conditional hypothesis.
- Boundary handling is explicit: \(d=0\) makes both projection energies zero;
  \(k=\lfloor r^{5/4}\rfloor\) is the worst rank case in equation (15); and
  taking all three mode singular values at their lower or upper endpoints
  gives the full \(\kappa_1^{12}\) loss in equation (10).
- There is no residual-to-target gap: both the produced and consumed target
  are \(D_r\), and \(\mathscr S_0=LQE\) is an equality. There is no net,
  quotient surrogate, normalized target, pointwise combinatorial condition,
  or operator supremum.
- `global_proof.md` was not read or used for this step.
