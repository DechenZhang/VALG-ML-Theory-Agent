# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_009`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_009` | Construct raw `W_0` and prove `E_deficit`. | `step_005`, `step_008` | Derived exact span and (LEV) | Same-target normal witness. | Pythagoras and `Dhat_0 in S_0`. | `W_0`, `E_deficit`. | Margin `delta_0 sqrt(r)`. | PENDING |

Concretely, from the exact raw membership
\(\widehat D_0\in\mathscr S_0\) and
\[
  \|P_{\mathscr S_0}D_r\|_F^2\le \frac r2,
  \tag{LEV}
\]
this step must define the raw witness
\[
  W_0=\frac{P_{\mathscr S_0^\perp}D_r}
  {\|P_{\mathscr S_0^\perp}D_r\|_F}
\]
and prove the setting-defined event \(\mathcal E_{\rm deficit}\), with
\(\delta_0=1/8\). No normalization or transformation is applied to
\(D_r\), \(\widehat D_0\), \(W_0\), \(\mathscr S_0\), or the Frobenius
geometry.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - No technical `assump:*` condition is used directly. The setting fixes an
    integer \(r\ge1\), the raw tensor \(D_r\), the raw represented tensor
    \(\widehat D_0\), the raw tangent span \(\mathscr S_0\), and
    \(\delta_0=1/8\).
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-005-quotient-range} supplies the exact
    all-branch membership \(\widehat D_0\in\mathscr S_0\), while preserving
    the raw target, raw residual, and coefficient Frobenius inner product.
  - Accepted Proposition~\ref{prop:step-008-raw-leverage} and
    Lemma~\ref{lem:step-008-tail-conversion} supply (LEV) for the exact raw
    \(D_r\) and exact raw \(\mathscr S_0\), conditionally on every realized
    factor triple in \(\mathcal E_{\rm cond}\), with failure at most
    \(r^{-20}\).
- Local conditional hypotheses: None. The proof below is the deterministic
  implication \((\mathrm{LEV})\Rightarrow\mathcal E_{\rm deficit}\); its
  probability statement only inherits the accepted failure bound.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_005/proof.md` and its `ACCEPTED`
    sketch-attempt-10, unit-attempt-2 review;
  - `perspective_3/idea_3/proof_steps/step_008/proof.md` and its `ACCEPTED`
    sketch-attempt-10, unit-attempt-2 review.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under the setting definitions, accepted Proposition~\ref{prop:step-005-quotient-range}, and accepted Proposition~\ref{prop:step-008-raw-leverage}, if (LEV) holds, then \(\widehat D_0\in\mathscr S_0\) and \(\|P_{\mathscr S_0^\perp}D_r\|_F^2\ge r/2>0\). | Restates the exact same-target membership, proves the normal-energy lower bound, and excludes the zero denominator, including equality in (LEV). |
| `unit_002` | proposition | Under the setting definitions and Lemma~\ref{lem:step-009-normal-energy}, if (LEV) holds, then the displayed raw \(W_0\) is well defined, has unit Frobenius norm, is orthogonal to \(\mathscr S_0\), and satisfies \(\langle D_r-\widehat D_0,W_0\rangle\ge\delta_0\|D_r\|_F\); hence \((\mathrm{LEV})\Rightarrow\mathcal E_{\rm deficit}\). | Constructs the exact raw witness, proves the deficit event, and transfers the accepted conditional failure bound without a new budget. |

Atomic step = no. Nonvanishing of the normal projection is logically prior to
normalizing it, so the denominator check and witness construction are kept as
two units.

## Cited Result Applications

### Accepted dependency: exact raw membership

**Source and restated statement.** Accepted
Proposition~\ref{prop:step-005-quotient-range} proves, on every branch,
\[
  \widehat D_0\in\mathscr S_0.
  \tag{1}
\]
It also proves that \(D_r\), \(D_r-\widehat D_0\), and the coefficient
Frobenius geometry remain raw.

**Instantiated objects and discharge.** Equation (1) is used for the exact
cancellation of \(\widehat D_0\) against the normal witness. No normalized
target, quotient representative, or transformed residual is imported.

### Accepted dependency: exact raw leverage

**Source and restated statement.** Accepted
Proposition~\ref{prop:step-008-raw-leverage}, together with accepted
Lemma~\ref{lem:step-008-tail-conversion}, proves
\[
  \|P_{\mathscr S_0}D_r\|_F^2\le \frac r2
\]
for the exact raw objects. For every realized factor triple in
\(\mathcal E_{\rm cond}\), this holds with conditional failure at most
\(r^{-20}\) for the accepted sufficiently-large-\(r\) regime.

**Instantiated objects and discharge.** The present proof uses only this
projection-energy conclusion and its already-spent failure budget. It does not
reopen the Haar, anisotropic-transfer, rank-window, or tail argument.

### Local result application

Lemma~\ref{lem:step-009-normal-energy} supplies the positive denominator and
the exact membership used by
Proposition~\ref{prop:step-009-raw-witness}.

No external paper result or additional standard theorem is used.

## Local Derivation

### unit_001: lemma

**Lemma (Exact membership and nonzero raw normal energy).**
\label{lem:step-009-normal-energy}
Under the setting definitions, accepted
Proposition~\ref{prop:step-005-quotient-range}, and accepted
Proposition~\ref{prop:step-008-raw-leverage}, if (LEV) holds, then
\[
  \widehat D_0\in\mathscr S_0,
  \qquad
  \|P_{\mathscr S_0^\perp}D_r\|_F^2\ge\frac r2>0.
  \tag{2}
\]
Thus the denominator in the setting-required definition of \(W_0\) is
nonzero.

**Proof / justification.** The membership in equation (2) is exactly
equation (1), supplied by the accepted raw-span dependency. The tensors
\(e_j\otimes e_j\otimes e_j\), \(j\in[r]\), are orthonormal, so
\[
  \|D_r\|_F^2
  =\left\|\sum_{j=1}^r e_j\otimes e_j\otimes e_j\right\|_F^2
  =r.
  \tag{3}
\]
Orthogonal Pythagorean decomposition in the raw coefficient space gives
\[
\begin{aligned}
  \|P_{\mathscr S_0^\perp}D_r\|_F^2
  &=\|D_r\|_F^2-\|P_{\mathscr S_0}D_r\|_F^2\\
  &\ge r-\frac r2
   =\frac r2.
  \tag{4}
\end{aligned}
\]
Because \(r\ge1\), the right-hand side is strictly positive. Equality in
(LEV) merely makes equation (4) an equality and still leaves normal energy
\(r/2>0\). Conversely, a zero denominator would make the left-hand side of
equation (4) zero, contradicting \(r/2>0\). \(\square\)

### unit_002: proposition

**Proposition (Raw unit normal witness and tangent deficit).**
\label{prop:step-009-raw-witness}
Under the setting definitions and
Lemma~\ref{lem:step-009-normal-energy}, if (LEV) holds, define exactly
\[
  W_0:=\frac{P_{\mathscr S_0^\perp}D_r}
  {\|P_{\mathscr S_0^\perp}D_r\|_F}.
  \tag{5}
\]
Then
\[
  \|W_0\|_F=1,
  \qquad
  W_0\perp\mathscr S_0,
  \qquad
  \langle D_r-\widehat D_0,W_0\rangle
  \ge\delta_0\|D_r\|_F,
  \tag{6}
\]
where \(\delta_0=1/8\). Consequently,
\[
  (\mathrm{LEV})\quad\Longrightarrow\quad
  \mathcal E_{\rm deficit}.
  \tag{7}
\]

**Proof / justification.** Lemma~\ref{lem:step-009-normal-energy} makes the
denominator in equation (5) strictly positive, so the impossible
zero-denominator branch does not occur under (LEV). By construction,
\(W_0\) has unit Frobenius norm and lies in \(\mathscr S_0^\perp\).
The exact membership \(\widehat D_0\in\mathscr S_0\) gives
\(\langle\widehat D_0,W_0\rangle=0\). Therefore
\[
\begin{aligned}
  \langle D_r-\widehat D_0,W_0\rangle
  &=\left\langle D_r,
    \frac{P_{\mathscr S_0^\perp}D_r}
    {\|P_{\mathscr S_0^\perp}D_r\|_F}\right\rangle_F\\
  &=\frac{\|P_{\mathscr S_0^\perp}D_r\|_F^2}
    {\|P_{\mathscr S_0^\perp}D_r\|_F}\\
  &=\|P_{\mathscr S_0^\perp}D_r\|_F\\
  &\ge\sqrt{\frac r2}
   =\frac1{\sqrt2}\|D_r\|_F
   \ge\frac18\|D_r\|_F
   =\delta_0\|D_r\|_F.
  \tag{8}
\end{aligned}
\]
The second equality uses the orthogonal decomposition of \(D_r\), equation
(3) gives \(\|D_r\|_F=\sqrt r\), and
\(1/\sqrt2\ge1/8\). Thus equation (6) is exactly the witness condition in
the setting-defined event, proving equation (7). \(\square\)

For every realized factor triple in \(\mathcal E_{\rm cond}\), the accepted
conditional estimate from `step_008` and the deterministic inclusion in
equation (7) give
\[
\begin{aligned}
  \mathbb P_{\rm init}(\mathcal E_{\rm deficit}^{c}\mid A,B,C)
  &\le
  \mathbb P_{\rm init}\!\left(
    \|P_{\mathscr S_0}D_r\|_F^2>\frac r2\,\middle|\,A,B,C
  \right)\\
  &\le r^{-20}.
  \tag{9}
\end{aligned}
\]
This spends no new failure probability.

## Target-Step Assembly

Lemma~\ref{lem:step-009-normal-energy} combines the accepted exact membership
\(\widehat D_0\in\mathscr S_0\), the raw identity
\(\|D_r\|_F^2=r\), Pythagoras, and (LEV) to prove
\[
  \|P_{\mathscr S_0^\perp}D_r\|_F^2\ge r/2>0.
\]
This handles equality in (LEV), uses \(r\ge1\), and excludes the only
potential zero-denominator branch.

Proposition~\ref{prop:step-009-raw-witness} then normalizes that exact raw
normal component, proves unit norm and orthogonality, cancels
\(\widehat D_0\) by its exact same-span membership, and obtains
\[
  \langle D_r-\widehat D_0,W_0\rangle
  =\|P_{\mathscr S_0^\perp}D_r\|_F
  \ge\sqrt{r/2}
  \ge\delta_0\|D_r\|_F.
\]
Hence \((\mathrm{LEV})\Rightarrow\mathcal E_{\rm deficit}\) deterministically,
and equation (9) inherits the accepted conditional \(r^{-20}\) failure bound
without a union bound or additional budget. This is exactly the sketch-row
claim, with the raw target, raw tangent span, raw represented tensor, raw
witness, and Frobenius metric unchanged.

## Explicit Rate Audit

- Exposed variables: \(r\), the fixed setting constant \(\delta_0=1/8\),
  and the inherited conditional failure \(r^{-20}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(n,r,k\), the deterministic base
  triple, the realized factors, the initialization, time, or the GD horizon.
- Fixed quantities: for the probability statement, fix a realized factor
  triple in \(\mathcal E_{\rm cond}\); the remaining probability is over the
  initialization randomness in the accepted `step_008` disintegration.
- Probability mode: deterministic event inclusion plus inherited conditional
  high probability. No independence, union bound, or new failure event is
  introduced.
- Horizon mode: initialization-only.
- Norm mode: exact raw coefficient tensor Frobenius norm and inner product.
- Admissibility conditions and auxiliary tolerances: the accepted
  sufficiently-large-\(r\) regime for (LEV); no new tolerance.
- Term absorption or simplification inequalities:
  \[
    r-\frac r2=\frac r2,
    \qquad
    \sqrt{\frac r2}=\frac1{\sqrt2}\sqrt r
      \ge\frac18\sqrt r=\delta_0\|D_r\|_F.
  \]
- Probability conversion: equation (9), which is only the complement form of
  the deterministic inclusion in equation (7).
- Contribution to any Rate Specialization Bridge: exports the exact
  \(\mathcal E_{\rm deficit}\) constituent to `step_010` and the raw witness
  and margin to `step_013`.
- Baseline-reduction check: at equality in (LEV), the normal energy is exactly
  \(r/2\), still strictly positive for \(r\ge1\), and the raw margin remains
  \(\|D_r\|_F/\sqrt2\), stronger than the required
  \(\delta_0\|D_r\|_F\). No target or metric is changed.

## Blockers

None.

## Notation And Assumption Notes

- \(D_r\), \(\widehat D_0\), \(\mathscr S_0\), \(\delta_0\), and
  \(\mathcal E_{\rm deficit}\) are `public-facing` setting objects.
- \(W_0\) is the sole new `public-facing` generated object. Its formula is
  exactly equation (5), and its existence is proved by
  Lemma~\ref{lem:step-009-normal-energy}; it is not a normalized or
  transformed target.
- The normal component \(P_{\mathscr S_0^\perp}D_r\) is `proof-local` until
  normalized into \(W_0\). It is expressed entirely in setting notation and
  introduces no new constant, event, radius, or tolerance.
- (LEV) is a `public-facing` accepted dependency output, not a primitive
  assumption. The exact membership \(\widehat D_0\in\mathscr S_0\) is an
  accepted derived invariant from `step_005`. The deficit event is proved in
  this step. There is no local conditional hypothesis.
- \(\mathbb P_{\rm init}(\cdot\mid A,B,C)\) in equation (9) is `proof-local`
  notation for the same remaining-initialization conditional law used by the
  accepted `step_008` output. It does not change the branch probability
  space.
- The paired `global_proof.md` and `global_proof_review.md` were consulted
  only after confirming that the review status is `ACCEPTED`. Block B09 was
  used only to plan the two-unit decomposition and boundary check; it was not
  used as proof evidence, a cited result, an assumption source, or authority
  to alter the target claim.
