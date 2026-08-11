# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_014`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_014` | Transfer the margin to physical loss. | `step_001`, `step_013` | Derived conditioning and raw margin | Same-target projection. | Projection identity and singular values. | Relative physical floor. | Positive `epsilon_0(kappa)`. | PENDING |

On \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the exact
target is to prove
\[
  (P_A\otimes P_B\otimes P_C)(T-S(\theta_\infty))
  =(A\otimes B\otimes C)
    (D_r-\Psi_{A,B,C}(\theta_\infty)),                    \tag{T1}
\]
\[
  \|T-S(\theta_\infty)\|_F
  \ge \kappa_1^{-3}\frac{15}{16}\delta_0\sqrt r,
  \qquad
  \|T\|_F\le\kappa_1^3\sqrt r,                           \tag{T2}
\]
and hence
\[
  F(\theta_\infty)
  \ge \epsilon_0(\kappa)\|T\|_F^2>0,
  \qquad
  \epsilon_0(\kappa)
  :=\left(\frac{15}{16}\delta_0\right)^2\kappa_1^{-12}.
  \tag{T3}
\]
The physical residual and target in (T1)--(T3) are the actual setting
objects, not surrogates.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - No technical `assump:*` condition is used directly. The basic setting
    fixes \(r\ge1\), \(T,S,D_r,\Psi_{A,B,C}\),
    \(P_M=MM^\dagger\), \(\kappa_1=2\kappa^2\),
    \(\delta_0=1/8\), and \(F(\theta)=\|T-S(\theta)\|_F^2\).
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-realized-conditioning} from
    `step_001`, sketch attempt 10 and unit attempt 2, supplies, on
    \(\mathcal E_{\rm cond}\), full column rank of \(A,B,C\) and
    \[
      \sigma_{\min}(M)\ge\kappa_1^{-1},
      \qquad \|M\|_{\rm op}\le\kappa_1
      \quad(M\in\{A,B,C\}).                               \tag{1}
    \]
    By definition,
    \(\mathcal E_{\rm init\_norm}\subseteq\mathcal E_{\rm cond}\).
  - Accepted Proposition~\ref{prop:step-013-preserved-raw-margin} from
    `step_013`, sketch attempt 10 and unit attempt 1, supplies, on
    \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\),
    \[
      \|D_r-\Psi_{A,B,C}(\theta_\infty)\|_F
      \ge\frac{15}{16}\delta_0\sqrt r.                   \tag{2}
    \]
- Local conditional hypotheses:
  - The sole theorem-facing conditional hypothesis is
    \(\mathcal C_{\rm path}\), consumed only through (2). No physical-loss,
    projection, convergence, or additional path condition is assumed here.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_001/proof.md` and its `ACCEPTED`
    sketch-attempt-10, unit-attempt-2 review;
  - `perspective_3/idea_3/proof_steps/step_013/proof.md` and its `ACCEPTED`
    sketch-attempt-10, unit-attempt-1 review.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under the setting definitions and accepted Proposition~\ref{prop:step-001-realized-conditioning}, on \(\mathcal E_{\rm cond}\), for every \(\theta\), \(P_A\otimes P_B\otimes P_C\) is an orthogonal projection, its action on the actual residual is exactly \((A\otimes B\otimes C)(D_r-\Psi_{A,B,C}(\theta))\), and the residual norm has the corresponding Pythagorean decomposition. | Proves the same-target identity and shows that only a nonnegative orthogonal physical component is discarded. |
| `unit_002` | proposition | Under accepted Propositions~\ref{prop:step-001-realized-conditioning} and \ref{prop:step-013-preserved-raw-margin}, and Lemma~\ref{lem:step-014-mode-span-projection}, on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the tensor-product singular bounds give (T2), \(0<\|T\|_F\), and (T3). | Transfers the raw margin through the exact projected residual and performs the correctly directed relative normalization. |

Atomic step = no. The object-level projection identity and the quantitative
singular-value/normalization transfer are the two independent proof units.

## Cited Result Applications

### Accepted dependency: realized-factor conditioning

Accepted Proposition~\ref{prop:step-001-realized-conditioning} supplies (1)
for the realized \(n\times r\) mode matrices in the physical operator norm.
The event inclusion
\(\mathcal E_{\rm init\_norm}\subseteq\mathcal E_{\rm cond}\) discharges its
use below. Its probability estimate is neither reused nor converted.

### Accepted dependency: preserved raw coefficient margin

Accepted Proposition~\ref{prop:step-013-preserved-raw-margin} supplies (2)
for the exact raw tensor \(D_r-\Psi_{A,B,C}(\theta_\infty)\) on the unchanged
conditional event. It is not a normalized, quotient, population, or
finite-time residual.

### Locally proved operator facts

Lemma~\ref{lem:step-014-mode-span-projection} proves the exact tensor-product
projection identity and Pythagorean decomposition in current notation.
Proposition~\ref{prop:step-014-positive-physical-loss} proves the required
tensor-product singular bounds directly from compact singular-value
decompositions and then applies them to (2). No external paper result is used.

## Local Derivation

### unit_001: lemma

**Lemma (exact mode-span projection of the physical residual).**
\label{lem:step-014-mode-span-projection}
Under the basic setting definitions and accepted
Proposition~\ref{prop:step-001-realized-conditioning}, work on
\(\mathcal E_{\rm cond}\). For every \(\theta=(X,Y,Z)\), let
\[
  \mathcal P:=P_A\otimes P_B\otimes P_C,
  \qquad \mathcal L:=A\otimes B\otimes C.
\]
Then \(\mathcal P\) is the orthogonal projection onto
\(\operatorname{range}(A)\otimes\operatorname{range}(B)\otimes
\operatorname{range}(C)\),
\[
  \mathcal P(T-S(\theta))
  =\mathcal L(D_r-\Psi_{A,B,C}(\theta)),                   \tag{3}
\]
and
\[
  \|T-S(\theta)\|_F^2
  =\|\mathcal P(T-S(\theta))\|_F^2
   +\|(I-\mathcal P)(T-S(\theta))\|_F^2.                 \tag{4}
\]

**Proof / justification.** By (1), every mode matrix has full column rank, so
\[
  P_M=M(M^{\mathsf T}M)^{-1}M^{\mathsf T}
\]
is self-adjoint and idempotent, satisfies \(P_MM=M\), and obeys
\(P_Mx=M(M^\dagger x)\). Tensoring self-adjointness and idempotence shows that
\(\mathcal P\) is the stated orthogonal projection.

Because the target factors are columns of \(A,B,C\),
\[
  \mathcal PT=T=\mathcal LD_r.                            \tag{5}
\]
For the model columns, with
\(\alpha_i=A^\dagger x_i\), \(\beta_i=B^\dagger y_i\), and
\(\gamma_i=C^\dagger z_i\),
\[
\begin{aligned}
  \mathcal P S(\theta)
  &=\sum_{i=1}^k P_Ax_i\otimes P_By_i\otimes P_Cz_i\\
  &=\sum_{i=1}^k A\alpha_i\otimes B\beta_i\otimes C\gamma_i
   =\mathcal L\Psi_{A,B,C}(\theta).                       \tag{6}
\end{aligned}
\]
Subtracting (6) from (5) proves (3). The tensor in parentheses on the right
of (3) lies in \((\mathbb R^r)^{\otimes3}\), while both sides lie in
\((\mathbb R^n)^{\otimes3}\), so the mode dimensions agree.

Finally, \(\mathcal P(T-S(\theta))\) and
\((I-\mathcal P)(T-S(\theta))\) are orthogonal because
\(\mathcal P(I-\mathcal P)=0\). Pythagoras gives (4). Thus the only discarded
quantity is the explicitly nonnegative second squared norm in (4).
\(\square\)

### unit_002: proposition

**Proposition (positive relative physical loss).**
\label{prop:step-014-positive-physical-loss}
Under accepted Propositions~\ref{prop:step-001-realized-conditioning} and
\ref{prop:step-013-preserved-raw-margin}, and
Lemma~\ref{lem:step-014-mode-span-projection}, work on
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\). Then, for every
\(H\in(\mathbb R^r)^{\otimes3}\),
\[
  \kappa_1^{-3}\|H\|_F
  \le\|(A\otimes B\otimes C)H\|_F
  \le\kappa_1^3\|H\|_F.                                  \tag{7}
\]
Moreover, (T2)--(T3) hold, with
\(\epsilon_0(\kappa)>0\) and \(\|T\|_F>0\).

**Proof / justification.** Take compact singular-value decompositions
\(M=U_M\Sigma_MV_M^{\mathsf T}\) for \(M=A,B,C\). Then
\[
\begin{aligned}
  A\otimes B\otimes C
  ={}&(U_A\otimes U_B\otimes U_C)
      (\Sigma_A\otimes\Sigma_B\otimes\Sigma_C)\\
     &\quad\cdot(V_A\otimes V_B\otimes V_C)^{\mathsf T}.  \tag{8}
\end{aligned}
\]
The first factor is an isometry into the physical tensor space, the last is
orthogonal, and the middle diagonal entries are
\(\sigma_i(A)\sigma_j(B)\sigma_\ell(C)\). Thus (1) gives (7), including the
exact lower product \(\kappa_1^{-3}\) and upper product \(\kappa_1^3\).

The \(r\) tensors \(e_j\otimes e_j\otimes e_j\) are orthonormal, so
\(\|D_r\|_F=\sqrt r\). Since
\(T=(A\otimes B\otimes C)D_r\), equation (7) gives
\[
  0<\kappa_1^{-3}\sqrt r
  \le\|T\|_F\le\kappa_1^3\sqrt r.                         \tag{9}
\]
In particular, (T2)'s target upper bound holds and the target is nonzero.

Apply (3)--(4) at \(\theta=\theta_\infty\), then (7), and finally the
accepted raw margin (2):
\[
\begin{aligned}
  \|T-S(\theta_\infty)\|_F
  &\ge\|\mathcal P(T-S(\theta_\infty))\|_F\\
  &=\|(A\otimes B\otimes C)
      (D_r-\Psi_{A,B,C}(\theta_\infty))\|_F\\
  &\ge\kappa_1^{-3}
      \|D_r-\Psi_{A,B,C}(\theta_\infty)\|_F\\
  &\ge\kappa_1^{-3}\frac{15}{16}\delta_0\sqrt r.         \tag{10}
\end{aligned}
\]
This proves the residual part of (T2). Combining (9) and (10) in the required
direction gives
\[
  \|T-S(\theta_\infty)\|_F
  \ge\frac{15}{16}\delta_0\kappa_1^{-6}\|T\|_F.          \tag{11}
\]
Both sides are nonnegative. Squaring (11) and using the exact definition of
\(F\) proves (T3). Since \(\delta_0=1/8\) and
\(\kappa_1=2\kappa^2>0\), \(\epsilon_0(\kappa)>0\); (9) then makes the
right side of (T3) strictly positive.

At equality in the allowed singular bounds, all displayed inequalities remain
valid with a positive lower product. If the orthogonal term in (4) vanishes,
the projected term still has the floor (10); if it is nonzero, it only
increases the physical norm. A zero raw residual is excluded by (2), and a
zero target is excluded by (9). Zero model columns cause no exception because
(5)--(6) use only linear projections. At \(E_{\rm path}=0\), accepted
`step_013` retains the full raw margin \(\delta_0\sqrt r\), so the same
calculation preserves the stronger baseline constant
\(\delta_0^2\kappa_1^{-12}\). \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-014-mode-span-projection} proves (T1) directly for the
actual residual and shows by (4) that projection discards only a nonnegative
orthogonal squared norm. Proposition~\ref{prop:step-014-positive-physical-loss}
combines the accepted raw floor with the exact tensor singular products,
proves both bounds in (T2), checks the normalization direction before
squaring, and proves (T3). The event scope, target, residual, Frobenius norm,
and conditional mode are unchanged.

## Explicit Rate Audit

- Exposed variables: \(r\ge1\), \(\kappa\ge1\),
  \(\kappa_1=2\kappa^2\), \(\delta_0=1/8\), the absolute floor in (T2), and
  \(\epsilon_0(\kappa)=((15/16)\delta_0)^2\kappa_1^{-12}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(n,r,k,q\), the base triple,
  realization, time, or horizon.
- Fixed quantities: one realization in
  \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\) and its accepted
  endpoint, with fixed \(\kappa\).
- Probability mode: deterministic conditional-on-event; no new event or
  probability conversion occurs.
- Horizon mode: one accepted asymptotic endpoint; no accumulation occurs.
- Norm mode: raw coefficient Frobenius norm, physical tensor Frobenius norm,
  and Euclidean mode-matrix singular values.
- Admissibility conditions and auxiliary tolerances: the generated
  \(\mathcal E_{\rm init\_norm}\), the explicit certificate
  \(\mathcal C_{\rm path}\), and the accepted conditioning and raw-margin
  interfaces. No new tolerance is introduced.
- Term absorption or simplification inequalities: equations (9)--(11) show
  explicitly that
  \[
    \kappa_1^{-3}\frac{15}{16}\delta_0\sqrt r
    \ge\frac{15}{16}\delta_0\kappa_1^{-6}\|T\|_F,
  \]
  whose square gives exactly the \(\kappa_1^{-12}\) relative factor.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: exports the explicit
  relative-loss constant for `step_015`; the conditional path factor is not
  changed.
- Baseline-reduction check: at \(E_{\rm path}=0\), the full accepted raw
  margin yields the stronger relative constant
  \(\delta_0^2\kappa_1^{-12}\), so the baseline is preserved.

## Blockers

None.

## Notation And Assumption Notes

- \(T,S,D_r,\Psi_{A,B,C},P_A,P_B,P_C,\theta_\infty,\kappa_1,\delta_0\),
  \(\mathcal E_{\rm init\_norm}\), and \(\mathcal C_{\rm path}\) are
  `public-facing` setting or accepted-dependency objects.
- \(\mathcal P=P_A\otimes P_B\otimes P_C\) and
  \(\mathcal L=A\otimes B\otimes C\) are `appendix-local` abbreviations for
  setting-defined operators. Their domains and codomains are explicit in
  Lemma~\ref{lem:step-014-mode-span-projection}.
- The compact-SVD factors \(U_M,\Sigma_M,V_M\) are `proof-local`; they are
  used only to derive (7).
- \(\epsilon_0(\kappa)\) is the sole new `public-facing` constant. It is
  defined directly from setting constants, is strictly positive for every
  \(\kappa\ge1\), and has no hidden dependence.
- Assumption provenance is complete: conditioning is an accepted derived
  output from `step_001`, the raw endpoint floor is an accepted derived output
  from `step_013`, and the only conditional hypothesis is
  \(\mathcal C_{\rm path}\). Projection legality, the exact identity, tensor
  bounds, target nonvanishing, and the physical floor are proved here.
- Boundary cases are covered by (2), (4), and (9): \(r=1\), equality in the
  singular bounds, a zero orthogonal component, zero model columns, zero raw
  residual, and zero target introduce no gap or reversed inequality.
- The accepted `global_proof.md` was read only after its paired
  `global_proof_review.md` was confirmed `ACCEPTED`. Block B14 informed the
  two-unit organization and boundary audit only; it is not proof evidence, a
  cited result, an assumption source, or authority to change the target.
