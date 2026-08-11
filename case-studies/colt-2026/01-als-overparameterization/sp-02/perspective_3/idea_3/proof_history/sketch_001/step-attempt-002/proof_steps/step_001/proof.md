# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 2

## Target Step Claim

- Intended claim: Uniformly prove
  \(\mathbb P(\mathcal E_{\rm cond})\ge 1-r^{-20}\) and the realized
  left-inverse/operator bounds with \(\kappa_1=2\kappa^2\).
- Depends on: None.
- Assumptions used: `assump:base_conditioning`, `assump:dimension`, and
  `assump:gaussian_smoothing`.
- Technical challenge: Uniform perturbation over the three rectangular factor
  matrices.
- Intended proof tool or cited result: The rectangular Gaussian operator-norm
  tail and deterministic singular-value perturbation in the exact Euclidean
  convention of `setting.md`.
- Output target: \(\mathcal E_{\rm cond}\) and
  \(\|M^\dagger\|_{\rm op}\le \kappa_1\) for
  \(M\in\{A,B,C\}\).
- Rate objective: Preserve uniformity over every allowed \(n\) and deterministic
  base triple, with total failure probability at most \(r^{-20}\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:base_conditioning`: every deterministic base column has norm in
    \([\kappa^{-1},\kappa]\), and every column-normalized base factor has all
    singular values in \([\kappa^{-1},\kappa]\).
  - `assump:dimension`: \(q\ge 4\) is fixed, \(r\) is sufficiently large, and
    \(n\ge C(\kappa,q)r^4\log r\), with no upper restriction on \(n\). For this
    step it is enough, and hence harmless for the final theorem, to take
    \(C(\kappa,q)\ge 1\).
  - `assump:gaussian_smoothing`: the three perturbation matrices have mutually
    independent columns distributed as
    \(\mathcal N(0,r^{-2q}I_n/n)\).
- Derived invariants supplied by accepted dependencies: None; this is a root
  step.
- Local conditional hypotheses: None. The deterministic base triple is fixed
  as required by the probability-space convention in `setting.md`; no
  generated event is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\(\ref{assump:base_conditioning}\), every deterministic base factor \(\bar M\in\{\bar A,\bar B,\bar C\}\) satisfies \(\sigma_{\min}(\bar M)\ge\kappa^{-2}\) and \(\|\bar M\|_{\rm op}\le\kappa^2\). | Produces the primitive positive singular-value margin and matching upper operator bound. |
| `unit_002` | lemma | Under Assumptions~\(\ref{assump:dimension}\) and \(\ref{assump:gaussian_smoothing}\), for \(r\ge r_{\rm cond}(\kappa,q)\) and \(C(\kappa,q)\ge1\), all three perturbation matrices have operator norm at most \((2\kappa^2)^{-1}\) on an event of probability at least \(1-r^{-20}\), conditional on every admissible deterministic base triple. | Supplies the exact three-mode perturbation and confidence budget. |
| `unit_003` | proposition | Under Assumption~\(\ref{assump:base_conditioning}\) and the conclusions of Lemmas~\(\ref{lem:step-001-base-conditioning}\) and \(\ref{lem:step-001-gaussian-budget}\), the event \(\mathcal E_{\rm cond}\) holds, every realized factor has full column rank, and \(M^\dagger M=I_r\) with \(\|M^\dagger\|_{\rm op}\le\kappa_1\). | Establishes the exact sketch-row event and makes every coefficient left inverse legal. |
| `unit_004` | proposition | Under Proposition~\(\ref{prop:step-001-realized-conditioning}\), the realized factors and their one-, two-, and three-mode tensor products obey the corresponding \(\kappa_1\)-singular-value transfer bounds in the exact Euclidean/Frobenius conventions. | Exposes the operator interfaces consumed by coefficient and physical-residual steps. |

Atomic step = no. Base rescaling, stochastic perturbation control, left-inverse
legality, and tensor-product transfer are independently auditable claims.

## Cited Result Applications

### Rectangular Gaussian operator-norm tail

- Source or name: Rectangular Gaussian operator-norm inequality.
- Restated statement: If \(G\in\mathbb R^{n\times r}\) has iid
  \(\mathcal N(0,1)\) entries, then for every \(u\ge0\),
  \[
    \mathbb P\!\left(\|G\|_{\rm op}>\sqrt n+\sqrt r+u\right)
    \le e^{-u^2/2}.
  \]
- Instantiated objects: For each mode,
  \(\Xi_M=(r^{-q}/\sqrt n)G_M\), where \(M=\bar M+\Xi_M\).
- Required assumptions and discharge: iid standard Gaussian entries follow
  directly from Assumption~\(\ref{assump:gaussian_smoothing}\); the norm is the
  same Euclidean induced operator norm used in `setting.md`; the result permits
  every rectangular size \(n\times r\).
- Conclusion used: The per-mode probability bound in
  Lemma~\(\ref{lem:step-001-gaussian-budget}\).

### Finite-dimensional singular value decomposition

- Source or name: Singular value decomposition and Moore--Penrose formula.
- Restated statement: If \(M\in\mathbb R^{n\times r}\) has full column rank and
  compact SVD \(M=U\Sigma V^{\mathsf T}\), then
  \(M^\dagger=V\Sigma^{-1}U^{\mathsf T}\),
  \(M^\dagger M=I_r\), and
  \(\|M^\dagger\|_{\rm op}=\sigma_{\min}(M)^{-1}\). Moreover, singular values
  of a Kronecker product are all products of the factor singular values.
- Instantiated objects: \(M\in\{A,B,C\}\) and tensor products of these
  realized factors.
- Required assumptions and discharge: Full column rank is proved in
  Proposition~\(\ref{prop:step-001-realized-conditioning}\); all norms and
  adjoints are Euclidean, and tensor Frobenius norm is Euclidean norm after
  vectorization.
- Conclusion used: Left-inverse legality and the transfer bounds in
  Propositions~\(\ref{prop:step-001-realized-conditioning}\) and
  \(\ref{prop:step-001-transfer}\).

### Local result chain used later in this step

- Lemma~\(\ref{lem:step-001-base-conditioning}\) supplies
  \([\kappa^{-2},\kappa^2]\) base singular/operator bounds from the primitive
  normalized-base convention.
- Lemma~\(\ref{lem:step-001-gaussian-budget}\) supplies the simultaneous
  perturbation event with total failure at most \(r^{-20}\).
- Proposition~\(\ref{prop:step-001-realized-conditioning}\) combines those two
  conclusions and is the sole input to
  Proposition~\(\ref{prop:step-001-transfer}\).

There are no cited papers and no dependency-step results.

## Local Derivation

### unit_001: lemma

**Lemma (conditioning of the unnormalized deterministic bases).**
\(\label{lem:step-001-base-conditioning}\)
Under Assumption~\(\ref{assump:base_conditioning}\), for every
\(\bar M\in\{\bar A,\bar B,\bar C\}\),
\[
  \sigma_{\min}(\bar M)\ge\kappa^{-2},
  \qquad
  \|\bar M\|_{\rm op}\le\kappa^2.
\]

**Proof / justification.** Let
\(D_{\bar M}=\operatorname{diag}(\|\bar m_1\|_2,\ldots,
\|\bar m_r\|_2)\). Every diagonal entry is positive, and the exact convention
of `setting.md` gives
\[
  \bar M=\bar M^\circ D_{\bar M}.
\]
For every \(v\in\mathbb R^r\), Assumption~\(\ref{assump:base_conditioning}\)
therefore yields
\[
\begin{aligned}
  \|\bar Mv\|_2
  &=\|\bar M^\circ D_{\bar M}v\|_2
    \ge \kappa^{-1}\|D_{\bar M}v\|_2
    \ge \kappa^{-2}\|v\|_2,\\
  \|\bar Mv\|_2
  &\le \kappa\|D_{\bar M}v\|_2
    \le \kappa^2\|v\|_2.
\end{aligned}
\]
Taking respectively the infimum and supremum over unit \(v\) proves the two
claims. In particular, the assumption already forces \(n\ge r\) and full
column rank of every deterministic base factor. \(\square\)

### unit_002: lemma

**Lemma (simultaneous Gaussian perturbation budget).**
\(\label{lem:step-001-gaussian-budget}\)
Under Assumptions~\(\ref{assump:dimension}\) and
\(\ref{assump:gaussian_smoothing}\), define
\[
  \kappa_1:=2\kappa^2,
  \qquad
  r_{\rm cond}(\kappa,q)
  :=\max\left\{3,\left\lceil(6\kappa^2)^{1/q}\right\rceil\right\}.
\]
If \(r\ge r_{\rm cond}(\kappa,q)\) and the dimension constant is chosen with
\(C(\kappa,q)\ge1\), then, conditional on every deterministic base triple,
\[
  \mathbb P\left(
    \max_{M\in\{A,B,C\}}\|M-\bar M\|_{\rm op}
    \le\kappa_1^{-1}
  \right)\ge1-r^{-20}.
\]
The same statement holds under the joint smoothing-and-initialization law.

**Proof / justification.** Write
\[
  \Xi_A=[\xi^a_1\ \cdots\ \xi^a_r],\quad
  \Xi_B=[\xi^b_1\ \cdots\ \xi^b_r],\quad
  \Xi_C=[\xi^c_1\ \cdots\ \xi^c_r].
\]
For each mode \(M\), Assumption~\(\ref{assump:gaussian_smoothing}\) gives the
exact representation
\[
  M=\bar M+\Xi_M,
  \qquad
  \Xi_M=\frac{\rho}{\sqrt n}G_M,
  \qquad \rho=r^{-q},
\]
where \(G_M\) has iid standard normal entries. Put
\[
  u_r:=\sqrt{2\log(3r^{20})},
  \qquad
  \tau_{n,r}:=\rho\left(1+\sqrt{\frac rn}+\frac{u_r}{\sqrt n}\right).
\]
The checked rectangular Gaussian inequality gives, for each one of the three
modes,
\[
\begin{aligned}
  \mathbb P\!\left(\|\Xi_M\|_{\rm op}>\tau_{n,r}\right)
  &\le e^{-u_r^2/2}
    =e^{-\log(3r^{20})}
    =\frac{1}{3r^{20}}.
\end{aligned}
\tag{1}
\]

It remains to compare the stochastic threshold with the base margin. Since
\(r\ge3\), \(C(\kappa,q)\ge1\), and
\(n\ge r^4\log r\), one has \(n\ge r\). Also
\[
  u_r^2=2\log 3+40\log r
  \le42\log r
  \le r^4\log r
  \le n,
\]
where \(2\log3\le2\log r\) and \(r^4\ge81>42\). Hence
\[
  \sqrt{r/n}\le1,
  \qquad
  u_r/\sqrt n\le1,
\]
and therefore
\[
  \tau_{n,r}\le3r^{-q}\le\frac{1}{2\kappa^2}=\kappa_1^{-1}.
\tag{2}
\]
The last inequality is exactly the definition of \(r_{\rm cond}(\kappa,q)\).
Applying a union bound to (1), then using (2), gives
\[
  \mathbb P\left(
  \max_{M\in\{A,B,C\}}\|\Xi_M\|_{\rm op}>\kappa_1^{-1}
  \right)
  \le 3\cdot\frac{1}{3r^{20}}=r^{-20}.
\tag{3}
\]
Independence across the three modes is available but is not needed for (3).
The event in (3) is measurable with respect to smoothing alone. Since the
initialization is independent and the base triple is deterministic, adjoining
the initialization leaves its probability unchanged. \(\square\)

### unit_003: proposition

**Proposition (realized conditioning and legal coefficient left inverses).**
\(\label{prop:step-001-realized-conditioning}\)
Under Assumption~\(\ref{assump:base_conditioning}\) and the conclusions of
Lemmas~\(\ref{lem:step-001-base-conditioning}\) and
\(\ref{lem:step-001-gaussian-budget}\), on the simultaneous perturbation event
from Lemma~\(\ref{lem:step-001-gaussian-budget}\), every
\(M\in\{A,B,C\}\) satisfies
\[
  \sigma_{\min}(M)\ge\kappa_1^{-1},
  \qquad
  \|M\|_{\rm op}\le\kappa_1.
\tag{4}
\]
Consequently this event is contained in \(\mathcal E_{\rm cond}\),
\[
  \mathbb P(\mathcal E_{\rm cond}\mid \bar A,\bar B,\bar C)
  \ge1-r^{-20},
\tag{5}
\]
uniformly over every admissible deterministic base triple, and for all three
modes
\[
  M^\dagger M=I_r,
  \qquad
  \|M^\dagger\|_{\rm op}\le\kappa_1.
\tag{6}
\]
Equation (5) also holds under the joint law specified in `setting.md`.

**Proof / justification.** Fix one mode. For every unit
\(v\in\mathbb R^r\), the reverse triangle inequality and
Lemma~\(\ref{lem:step-001-base-conditioning}\) give
\[
\begin{aligned}
  \|Mv\|_2
  &=\|\bar Mv+\Xi_Mv\|_2\\
  &\ge \|\bar Mv\|_2-\|\Xi_Mv\|_2\\
  &\ge \kappa^{-2}-\|\Xi_M\|_{\rm op}.
\end{aligned}
\]
On the simultaneous perturbation event this is at least
\[
  \kappa^{-2}-\frac{1}{2\kappa^2}
  =\frac{1}{2\kappa^2}=\kappa_1^{-1}.
\tag{7}
\]
Taking the infimum over unit \(v\) proves the first part of (4). Similarly,
\[
\begin{aligned}
  \|M\|_{\rm op}
  &\le\|\bar M\|_{\rm op}+\|\Xi_M\|_{\rm op}\\
  &\le\kappa^2+\frac{1}{2\kappa^2}
  \le2\kappa^2=\kappa_1,
\end{aligned}
\tag{8}
\]
where the penultimate inequality uses \(\kappa\ge1\). Equations (7)--(8) are
exactly the defining inequalities of \(\mathcal E_{\rm cond}\). Thus (5)
follows from Lemma~\(\ref{lem:step-001-gaussian-budget}\).

The positive lower bound in (4) gives full column rank. If
\(M=U\Sigma V^{\mathsf T}\) is its compact SVD, then
\[
  M^\dagger=V\Sigma^{-1}U^{\mathsf T},
  \qquad
  M^\dagger M=I_r,
  \qquad
  \|M^\dagger\|_{\rm op}
  =\sigma_{\min}(M)^{-1}\le\kappa_1,
\]
which proves (6) and the legality of all coefficient coordinates in the
setting. \(\square\)

### unit_004: proposition

**Proposition (single-mode and tensor-product transfer bounds).**
\(\label{prop:step-001-transfer}\)
Under Proposition~\(\ref{prop:step-001-realized-conditioning}\), for every
\(M\in\{A,B,C\}\) and \(v\in\mathbb R^r\),
\[
  \kappa_1^{-1}\|v\|_2
  \le\|Mv\|_2
  \le\kappa_1\|v\|_2,
  \qquad
  \|M^\dagger y\|_2\le\kappa_1\|y\|_2
  \quad(y\in\mathbb R^n).
\tag{9}
\]
For \(P_M:=MM^\dagger\), one also has
\[
  P_M^{\mathsf T}=P_M,\qquad P_M^2=P_M,
  \qquad \operatorname{range}(P_M)=\operatorname{range}(M),
  \qquad \|P_M\|_{\rm op}=1.
\]
Moreover, for any ordered choice \(M_1,\ldots,M_s\in\{A,B,C\}\) with
\(1\le s\le3\),
\[
  \sigma_{\min}(M_1\otimes\cdots\otimes M_s)\ge\kappa_1^{-s},
  \qquad
  \|M_1\otimes\cdots\otimes M_s\|_{\rm op}\le\kappa_1^s.
\tag{10}
\]
In particular, identifying a coefficient tensor
\(H\in\mathbb R^{r\times r\times r}\) with its vectorization in the exact
Kronecker convention of `setting.md`,
\[
  \kappa_1^{-3}\|H\|_F
  \le\|(A\otimes B\otimes C)H\|_F
  \le\kappa_1^3\|H\|_F,
\tag{11}
\]
and
\[
  \|A^\dagger\otimes B^\dagger\otimes C^\dagger\|_{\rm op}
  \le\kappa_1^3.
\tag{12}
\]

**Proof / justification.** Equation (9) is the variational definition of the
smallest and largest singular values together with (4) and (6). The compact
SVD used in Proposition~\(\ref{prop:step-001-realized-conditioning}\) gives
\(P_M=UU^{\mathsf T}\), proving the displayed orthogonal-projector identities
and norm. For each factor take a compact SVD
\(M_j=U_j\Sigma_jV_j^{\mathsf T}\). Then
\[
  M_1\otimes\cdots\otimes M_s
  =(U_1\otimes\cdots\otimes U_s)
   (\Sigma_1\otimes\cdots\otimes\Sigma_s)
   (V_1\otimes\cdots\otimes V_s)^{\mathsf T}.
\]
The outer factors are isometries and the diagonal entries of the middle factor
are products of singular values. Proposition~\(\ref{prop:step-001-realized-conditioning}\)
therefore gives (10), and the case \(s=3\) gives (11). Applying multiplicativity
of the Kronecker operator norm to (6) gives (12). These are transfers for the
same realized factors and the same Euclidean/Frobenius norms used downstream;
no normalized or population surrogate is introduced. \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-001-base-conditioning}\) turns the primitive normalized
base convention into the exact unnormalized margin
\([\kappa^{-2},\kappa^2]\). Lemma~\(\ref{lem:step-001-gaussian-budget}\)
uses a per-mode budget \(1/(3r^{20})\), whose three-mode union is exactly at
most \(r^{-20}\), and proves that the perturbation is no larger than half the
base lower margin uniformly over every allowed larger \(n\). Proposition~\(\ref{prop:step-001-realized-conditioning}\)
then proves the exact event \(\mathcal E_{\rm cond}\), full column rank, and
the legal left-inverse bound \(\|M^\dagger\|_{\rm op}\le\kappa_1\). Finally,
Proposition~\(\ref{prop:step-001-transfer}\) records the singular-value and
operator consequences consumed by the coefficient and physical-transfer
steps. Thus the exact `step_001` sketch-row claim and output target are proved.

## Explicit Rate Audit

- Exposed variables: \(\kappa\ge1\), fixed \(q\ge4\), \(r\), \(n\), and
  \(\rho=r^{-q}\). The step is independent of \(k\).
- Hidden constants may depend on: No hidden constants occur in the displayed
  estimates. The threshold \(r_{\rm cond}(\kappa,q)\) is explicit, and the
  final theorem may enlarge it or the dimension constant.
- Hidden constants may not depend on: \(n,r,k\), the deterministic base triple,
  the realized smoothing, or initialization.
- Fixed quantities: \(\kappa,q\) while \(r\) grows.
- Probability mode: High probability under smoothing, conditional on every
  admissible deterministic base triple; equivalently the same bound under the
  joint smoothing-and-independent-initialization law.
- Horizon mode: Initialization only, before the first GD update.
- Norm mode: Euclidean induced operator norm and Euclidean singular values for
  matrices; Frobenius/Euclidean norm for vectorized coefficient tensors.
- Admissibility conditions and auxiliary tolerances:
  \(C(\kappa,q)\ge1\),
  \(r\ge\max\{3,\lceil(6\kappa^2)^{1/q}\rceil\}\), and
  \(u_r=\sqrt{2\log(3r^{20})}\).
- Term absorption or simplification inequalities:
  \[
    u_r^2\le42\log r\le n,
    \qquad
    \tau_{n,r}\le3r^{-q}\le(2\kappa^2)^{-1},
  \]
  followed by (7)--(8).
- Probability conversion:
  \[
    \sum_{M\in\{A,B,C\}}
    \mathbb P(\|\Xi_M\|_{\rm op}>\tau_{n,r})
    \le3(3r^{20})^{-1}=r^{-20}.
  \]
  No independence is used in this union bound. Independence of initialization
  only shows that adjoining it does not change the smoothing-only event
  probability.
- Contribution to any Rate Specialization Bridge: This step supplies one
  \(r^{-20}\) constituent budget for the later
  \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\) union bound.
- Baseline-reduction check: At the zero-smoothing specialization \(\rho=0\),
  \(M=\bar M\) deterministically, so
  \(\sigma_{\min}(M)\ge\kappa^{-2}\ge\kappa_1^{-1}\) and
  \(\|M\|_{\rm op}\le\kappa^2\le\kappa_1\); hence
  \(\mathcal E_{\rm cond}\) holds with probability one and the same legal
  left inverses and transfer bounds remain valid.

## Blockers

None.

## Notation And Assumption Notes

- \(\kappa_1=2\kappa^2\) is a `public-facing` expression already defined in
  `setting.md`; it is the sole conditioning constant exported downstream.
- \(\Xi_M=M-\bar M\) and the standard Gaussian matrix \(G_M\) are
  `proof-local` objects defined directly from
  Assumption~\(\ref{assump:gaussian_smoothing}\).
- \(u_r\), \(\tau_{n,r}\), and \(r_{\rm cond}(\kappa,q)\) are `proof-local`
  constants defined explicitly from setting quantities. Their finiteness and
  all required bounds are proved in
  Lemma~\(\ref{lem:step-001-gaussian-budget}\); none is an additional
  assumption.
- The simultaneous perturbation event in
  Lemma~\(\ref{lem:step-001-gaussian-budget}\) is `proof-local` and is proved
  in this step. The only `public-facing` generated event is the exact
  \(\mathcal E_{\rm cond}\) from `setting.md`.
- Full column rank, Moore--Penrose left-inverse legality, and every transfer
  bound are derived outputs of
  Proposition~\(\ref{prop:step-001-realized-conditioning}\), not primitive or
  conditional hypotheses.
- Exact conventions: \(M^\dagger\) is the Euclidean Moore--Penrose inverse of
  the realized \(n\times r\) matrix; \(M^\dagger M=I_r\); all matrix norms are
  Euclidean induced operator norms; \(P_M=MM^\dagger\) is the Euclidean
  orthogonal projector onto the realized column span; coefficient tensor
  Frobenius norm is the Euclidean norm after vectorization; and (11) uses the
  exact factor ordering \(A\otimes B\otimes C\) from `setting.md`.
- Probability convention: all displayed conditional probabilities fix the
  deterministic base triple. Since the base triple is deterministic in the
  formalized probability space and \(\mathcal E_{\rm cond}\) is independent of
  initialization, (5) is exactly the required joint-law statement, not a new
  conditional theorem hypothesis.
- Boundary cases: equality
  \(\|\Xi_M\|_{\rm op}=(2\kappa^2)^{-1}\) and
  \(\sigma_{\min}(\bar M)=\kappa^{-2}\) still gives the non-strict positive
  bound \(\sigma_{\min}(M)\ge(2\kappa^2)^{-1}\); \(\kappa=1\) is covered by
  (8); arbitrary larger \(n\) only decreases
  \(\sqrt{r/n}+u_r/\sqrt n\); the zero-smoothing specialization is handled in
  the baseline audit; and \(k\) and the GD trajectory do not enter this
  initialization-only event.
- The accepted `global_proof.md` was read only after confirming
  `global_proof_review.md` has status `ACCEPTED`. Its G1 diagnostic suggested
  the perturbation/Weyl organization; every claim above was independently
  derived here, and the diagnostic was not used as evidence, a cited result,
  an assumption source, or authority to change the sketch-row claim.
