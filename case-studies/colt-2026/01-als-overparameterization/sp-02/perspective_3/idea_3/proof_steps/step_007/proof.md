# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_007`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_007` | Prove exact product-Haar mean and tail (Haar) for every fixed `E,X`. | `step_006` | Derived fixed internal shape | Product-group concentration. | Sequential Haar averaging, the `2sqrt(3)` Lipschitz bound, and standard `SO(r)` log-Sobolev inequality. | Fixed-target projection lemma. | Tail `8exp(-c_H r t^2)`. | PENDING |

Concretely, let
\[
  \mathcal H=(\mathbb R^r)^{\otimes3},
\]
fix a deterministic subspace \(E\subset\mathcal H\) of dimension \(d\),
and fix \(X\in\mathcal H\setminus\{0\}\). For independent Haar matrices
\(Q_a,Q_b,Q_c\in SO(r)\), set
\[
  Q=Q_a\otimes Q_b\otimes Q_c,
  \qquad
  h(Q)=\frac{\|P_{QE}X\|_F^2}{\|X\|_F^2}.
\]
The exact target is
\[
  \mathbb E h=\frac d{r^3},
  \qquad
  \operatorname{Lip}(h)\le2\sqrt3,
\]
where the Lipschitz constant uses the unnormalized product
Hilbert--Schmidt geodesic metric, together with a universal \(c_H>0\) such
that, for \(0<t\le1\),
\[
  \mathbb P\!\left(h\ge\frac d{r^3}+t\right)
  \le 8\exp(-c_Hrt^2).                                      \tag{Haar}
\]
The statement must be uniform in the fixed objects \(E,d,X\), so it can be
applied after conditioning on the internal shapes produced by `step_006`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:dimension} states that \(r\) is sufficiently
    large. This step uses only the consequence \(r\ge3\), which is the range
    in which the displayed positive Ricci lower bound is available.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-006-product-shape} supplies, after
    conditioning on the realized factors, independent Haar
    \(Q_a,Q_b,Q_c\in SO(r)\), jointly independent of the measurable internal
    subspace \(E\), with \(d=\dim(E)\le3kr\).
  - Accepted Proposition~\ref{prop:step-006-exact-equivariance} identifies
    this same \(E\) and product orientation inside the exact raw tangent
    factorization \(\mathscr S_0=LQE\). The equality is not otherwise used
    in the present fixed-target lemma.
- Local conditional hypotheses: None. Fixing \(E\) and \(X\ne0\) is part of
  the quantified lemma statement, not a generated-event assumption.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_006/proof.md`;
  - `perspective_3/idea_3/proof_steps/step_006/review.md`, status `ACCEPTED`
    for sketch attempt 10 and unit attempt 2.

The proof below is deterministic in \(E\) and \(X\) except for the product
Haar draw. Its constants do not use \(d\le3kr\); that dependency output is
reserved for the threshold specialization in `step_008`.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under Assumption~\ref{assump:dimension}, using only \(r\ge3\), if \(E\subset(\mathbb R^r)^{\otimes3}\) is fixed with \(\dim(E)=d\), \(X\ne0\) is fixed, and the three factors are independent Haar on \(SO(r)\), then \(\mathbb Eh=d/r^3\). | Gives the exact fixed-target mean by three current-notation one-mode twirls. |
| `unit_002` | lemma | For fixed \(E\) and \(X\ne0\), the map \(h\) is \(2\sqrt3\)-Lipschitz for the product bi-invariant metric whose squared speed is \(\sum_m\|K_m\|_F^2\). | Fixes the precise, unnormalized metric convention consumed by concentration. |
| `unit_003` | proposition | Under Assumption~\ref{assump:dimension}, using \(r\ge3\), Lemma~\ref{lem:step-007-lipschitz}, the exact Ricci identity \(\operatorname{Ric}=(r-2)g/4\), and the metric-matched Bakry--Emery log-Sobolev criterion imply \(\mathbb P(h-\mathbb Eh\ge t)\le\exp(-rt^2/288)\), hence (Haar) with \(c_H=1/288\). | Discharges curvature, tensorization, log-Sobolev, Herbst, and all constants in the exact product metric. |

Atomic step = no. The exact mean, the tensor-action derivative bound, and
the metric-normalized concentration source are independent nontrivial
obligations and are proved separately.

## Cited Result Applications

### Accepted dependency: independent product-Haar orientations and internal shape

**Source and restated statement.** Accepted
Proposition~\ref{prop:step-006-product-shape} states that, conditional on the
realized factor triple, the orientations satisfy
\[
  (Q_a,Q_b,Q_c)\sim\operatorname{Haar}(SO(r))^{\otimes3}
\]
and are jointly independent of the measurable internal subspace \(E\), whose
dimension obeys \(d\le3kr\). Accepted
Proposition~\ref{prop:step-006-exact-equivariance} states that this is the
same product orientation and subspace appearing in \(\mathscr S_0=LQE\).

**Instantiated objects and discharge.** Condition on all internal shapes.
Then \(E\) is deterministic and the conditional law of the three
orientations remains product Haar. The estimates proved below are uniform in
the resulting fixed \(E,d,X\), so the conditional application spends no
additional failure probability and uses no data-dependent supremum.

### Standard geometric fact: curvature of a bi-invariant compact Lie group

**Restated statement in the present convention.** Let a compact Lie group
carry the bi-invariant metric induced at the identity by an
\(\operatorname{Ad}\)-invariant inner product. For left-invariant tangent
vectors \(K,L,M\),
\[
  \nabla_KL=\frac12[K,L],
  \qquad
  R(K,L)M=-\frac14[[K,L],M].                                \tag{1}
\]
For \(SO(r)\) with
\[
  \langle K,L\rangle_F=-\operatorname{tr}(KL)
  \quad(K,L\in\mathfrak{so}(r)),                            \tag{2}
\]
the Killing form is
\[
  \operatorname{tr}(\operatorname{ad}_K\operatorname{ad}_L)
  =(r-2)\operatorname{tr}(KL),                              \tag{3}
\]
and consequently
\[
  \operatorname{Ric}_{SO(r)}=\frac{r-2}{4}g.                \tag{4}
\]

**Assumption discharge and conclusion used.** Equation (2) is exactly the
unnormalized Hilbert--Schmidt metric required by the sketch: there is no
factor \(1/2\), \(1/r\), or dimension normalization. The calculation of
equations (1)--(4), including the normalization in equation (3), is displayed
again inside Proposition~\ref{prop:step-007-product-tail}. The product metric
therefore has the same Ricci lower bound \((r-2)/4\).

### Standard analytic fact: Bakry--Emery log-Sobolev criterion

**Restated statement in the present convention.** If a connected complete
Riemannian manifold with normalized Riemannian volume \(\mu\) satisfies
\(\operatorname{Ric}\ge\rho g\) for some \(\rho>0\), then every smooth
real-valued \(f\) satisfies
\[
  \operatorname{Ent}_\mu(f^2)
  \le \frac2\rho\int\|\nabla f\|_g^2\,d\mu.                \tag{5}
\]
Here
\(\operatorname{Ent}_\mu(Y)=\int Y\log Y\,d\mu
-(\int Y\,d\mu)\log(\int Y\,d\mu)\).

**Assumption discharge and conclusion used.** For \(r\ge3\),
\(SO(r)^3\) is compact and connected, its normalized Riemannian volume is
product Haar, and equation (4) gives
\(\rho=(r-2)/4>0\). Product tensorization is already contained in the product
Ricci calculation, so equation (5) applies directly to the three-factor
metric, with no extra factor of three. Applying equation (5) to
\(f=\exp(\lambda(h-\mathbb Eh)/2)\) yields the Herbst bound derived explicitly
in Proposition~\ref{prop:step-007-product-tail}. No theorem number or
paper-specific source label is asserted.

### Local result applications

- Lemma~\ref{lem:step-007-sequential-twirl} supplies the exact mean
  \(d/r^3\).
- Lemma~\ref{lem:step-007-lipschitz} supplies the metric-matched bound
  \(L=2\sqrt3\).
- Proposition~\ref{prop:step-007-product-tail} combines the exact curvature
  normalization, equation (5), and the Lipschitz bound to prove (Haar).

## Local Derivation

### unit_001: lemma

**Lemma (Sequential \(SO(r)\) twirling gives the exact projection mean).**
\label{lem:step-007-sequential-twirl}
Under Assumption~\ref{assump:dimension}, using only \(r\ge3\), let
\(E\subset\mathcal H=(\mathbb R^r)^{\otimes3}\) be a fixed subspace of
dimension \(d\), let \(X\in\mathcal H\setminus\{0\}\), and let
\(Q_a,Q_b,Q_c\) be independent Haar matrices in \(SO(r)\). Then
\[
  \mathbb E\frac{\|P_{(Q_a\otimes Q_b\otimes Q_c)E}X\|_F^2}
  {\|X\|_F^2}
  =\frac d{r^3}.                                             \tag{6}
\]

**Proof / justification.** We first prove the one-mode identity in the exact
real representation used here. Let \(V=\mathbb R^r\), let \(W\) be any
finite-dimensional real inner-product space, and let
\(A\in\operatorname{End}(V\otimes W)\). Define
\[
  \mathcal T_V(A)
  =\int_{SO(r)}(U\otimes I_W)A(U^{\mathsf T}\otimes I_W)\,dU. \tag{7}
\]
Haar invariance shows that \(\mathcal T_V(A)\) commutes with
\(S\otimes I_W\) for every \(S\in SO(r)\).

For completeness, the commutant of the natural real \(SO(r)\)-action is
scalar when \(r\ge3\). Indeed, if \(C\in\operatorname{End}(V)\) commutes
with \(SO(r)\), then for every unit vector \(u\), the vector \(Cu\) is fixed
by the subgroup that fixes \(u\) and rotates \(u^\perp\). The fixed space of
that subgroup is \(\operatorname{span}\{u\}\), so every unit vector is an
eigenvector of \(C\). Applying linearity to two independent vectors and their
sum shows that all eigenvalues coincide; hence \(C\) is scalar. Taking matrix
coefficients of \(\mathcal T_V(A)\) between arbitrary vectors of \(W\) now
gives
\[
  \mathcal T_V(A)=I_V\otimes B
\]
for some \(B\in\operatorname{End}(W)\). Partial trace over \(V\) is unchanged
by the conjugations in equation (7), whereas
\(\operatorname{Tr}_V(I_V\otimes B)=rB\). Therefore
\[
  \boxed{\mathcal T_V(A)
  =\frac{I_V}{r}\otimes\operatorname{Tr}_V(A).}             \tag{8}
\]

Let \(P_E\) be the orthogonal projector onto \(E\). Since the tensor product
of orthogonal maps is orthogonal,
\[
  P_{(Q_a\otimes Q_b\otimes Q_c)E}
  =(Q_a\otimes Q_b\otimes Q_c)P_E
   (Q_a^{\mathsf T}\otimes Q_b^{\mathsf T}\otimes Q_c^{\mathsf T}). \tag{9}
\]
Apply equation (8) successively in modes \(a,b,c\). Independence permits the
three iterated Haar integrals, and the commuting mode actions give
\[
\begin{aligned}
  \mathbb E[QP_EQ^{\mathsf T}]
  &=\frac{I_r}{r}\otimes\frac{I_r}{r}\otimes\frac{I_r}{r}
    \operatorname{Tr}(P_E)\\
  &=\frac d{r^3}I_{\mathcal H}.                              \tag{10}
\end{aligned}
\]
Thus
\[
  \mathbb Eh
  =\frac{\langle X,\mathbb E[QP_EQ^{\mathsf T}]X\rangle}
         {\|X\|_F^2}
  =\frac d{r^3},
\]
which proves equation (6).

If \(d=0\), then \(P_E=0\) and \(h=0\) identically, in agreement with the
formula. The proof uses only \(\operatorname{Tr}(P_E)=d\), so it remains
valid at every actual endpoint, including \(d=3kr\) whenever a subspace of
that dimension is supplied. No separate inequality \(3kr<r^3\) is assumed;
the existence of \(E\subset\mathcal H\) already enforces \(d\le r^3\).
\(\square\)

### unit_002: lemma

**Lemma (Metric-exact Lipschitz bound for product rotations).**
\label{lem:step-007-lipschitz}
Fix \(E\subset\mathcal H\) and \(X\in\mathcal H\setminus\{0\}\). Equip each
\(SO(r)\) factor with the bi-invariant metric whose identity inner product is
\[
  \langle K,L\rangle_F=-\operatorname{tr}(KL),
  \qquad K,L\in\mathfrak{so}(r),
\]
and equip \(SO(r)^3\) with the product metric. Then
\[
  \boxed{\operatorname{Lip}(h)\le2\sqrt3}.                  \tag{11}
\]
Equivalently, a product tangent vector with skew generators
\((K_a,K_b,K_c)\) has squared speed
\(\sum_m\|K_m\|_F^2\), with no normalization factor, and the directional
derivative of \(h\) is at most \(2\sqrt3\) times that speed.

**Proof / justification.** By left invariance, a product geodesic through
\((Q_a,Q_b,Q_c)\) can be written
\[
  Q_m(s)=e^{sK_m}Q_m,
  \qquad K_m\in\mathfrak{so}(r),
\]
and its speed is exactly
\[
  \left(\|K_a\|_F^2+\|K_b\|_F^2+\|K_c\|_F^2\right)^{1/2}.  \tag{12}
\]
The three tensor-mode generators commute, so the induced tensor action is
\[
\begin{aligned}
  Q(s)&=e^{s\mathcal K}Q,\\
  \mathcal K
  &=K_a\otimes I_r\otimes I_r
    +I_r\otimes K_b\otimes I_r
    +I_r\otimes I_r\otimes K_c.                             \tag{13}
\end{aligned}
\]
This gives the explicit tensor-generator estimate
\[
\begin{aligned}
  \|\mathcal K\|_{\rm op}
  &\le \|K_a\|_{\rm op}+\|K_b\|_{\rm op}+\|K_c\|_{\rm op}\\
  &\le \|K_a\|_F+\|K_b\|_F+\|K_c\|_F\\
  &\le \sqrt3
  \left(\|K_a\|_F^2+\|K_b\|_F^2+\|K_c\|_F^2\right)^{1/2}. \tag{14}
\end{aligned}
\]

Write \(P=P_{QE}\). Along the geodesic,
\[
  P(s)=e^{s\mathcal K}Pe^{-s\mathcal K},
  \qquad P'(0)=[\mathcal K,P].                               \tag{15}
\]
Consequently,
\[
\begin{aligned}
  |h'(0)|
  &=\frac{|\langle X,[\mathcal K,P]X\rangle|}{\|X\|_F^2}\\
  &\le\|[\mathcal K,P]\|_{\rm op}
  \le2\|\mathcal K\|_{\rm op}\\
  &\le2\sqrt3
  \left(\|K_a\|_F^2+\|K_b\|_F^2+\|K_c\|_F^2\right)^{1/2}. \tag{16}
\end{aligned}
\]
Here \(\|P\|_{\rm op}\le1\), including the case \(E=\{0\}\). The bound
holds at every point and along every geodesic. Integrating equation (16)
along a minimizing geodesic proves equation (11) for exactly the metric in
the statement. \(\square\)

### unit_003: proposition

**Proposition (Ricci--log-Sobolev--Herbst tail in the unnormalized product
metric).**
\label{prop:step-007-product-tail}
Under Assumption~\ref{assump:dimension}, using only \(r\ge3\), and under the
hypotheses of Lemma~\ref{lem:step-007-sequential-twirl}, one has for every
\(t>0\)
\[
  \mathbb P(h-\mathbb Eh\ge t)
  \le \exp\!\left(-\frac{(r-2)t^2}{96}\right)
  \le \exp\!\left(-\frac{rt^2}{288}\right).                \tag{17}
\]
In particular, for \(0<t\le1\), equation (Haar) holds with the explicit
universal choice
\[
  \boxed{c_H=\frac1{288}}.                                  \tag{18}
\]

**Proof / justification.** We first verify the metric normalization rather
than importing a scale-free concentration slogan. On
\(\mathfrak{so}(r)\), use the inner product in equation (2). The matrices
\[
  F_{ij}=\frac{E_{ij}-E_{ji}}{\sqrt2},
  \qquad 1\le i<j\le r,
\]
form an orthonormal basis. The Koszul formula for left-invariant fields and
the \(\operatorname{Ad}\)-invariance of equation (2) give
\[
  \nabla_KL=\frac12[K,L],
  \qquad
  R(K,L)M=-\frac14[[K,L],M].                                \tag{19}
\]
Hence
\[
  \operatorname{Ric}(K,K)
  =\frac14\sum_{i<j}\|[K,F_{ij}]\|_F^2
  =-\frac14\operatorname{tr}(\operatorname{ad}_K^2).       \tag{20}
\]
A direct summation in the displayed matrix-unit basis gives, for
\(K,L\in\mathfrak{so}(r)\),
\[
  \operatorname{tr}(\operatorname{ad}_K\operatorname{ad}_L)
  =(r-2)\operatorname{tr}(KL).                              \tag{21}
\]
Since \(\operatorname{tr}(K^2)=-\|K\|_F^2\), equations
(20)--(21) yield the exact identity
\[
  \operatorname{Ric}_{SO(r)}(K,K)
  =\frac{r-2}{4}\|K\|_F^2.                                 \tag{22}
\]
This calculation is tied to the unnormalized basis \(F_{ij}\); replacing
the metric by \(-\operatorname{tr}(KL)/2\) or by a dimension-normalized
metric would change equation (22), but no such replacement is made here.

For the product metric and
\(\mathbf K=(K_a,K_b,K_c)\), Ricci curvature adds over factors:
\[
\begin{aligned}
  \operatorname{Ric}_{SO(r)^3}(\mathbf K,\mathbf K)
  &=\sum_{m\in\{a,b,c\}}
    \frac{r-2}{4}\|K_m\|_F^2\\
  &=\rho\|\mathbf K\|_g^2,
  \qquad \rho=\frac{r-2}{4}.                               \tag{23}
\end{aligned}
\]
Thus the standard Bakry--Emery criterion, equation (5), applies to normalized
product Haar measure. Let
\[
  Y=h-\mathbb Eh,
  \qquad
  \psi(\lambda)=\log\mathbb E e^{\lambda Y},
  \qquad \lambda>0.
\]
Apply equation (5) to \(f=e^{\lambda Y/2}\). By
Lemma~\ref{lem:step-007-lipschitz}, \(\|\nabla h\|_g\le L\) with
\(L=2\sqrt3\), so
\[
\begin{aligned}
  \operatorname{Ent}(e^{\lambda Y})
  &\le \frac2\rho\frac{\lambda^2}{4}
    \mathbb E[e^{\lambda Y}\|\nabla h\|_g^2]\\
  &\le \frac{\lambda^2L^2}{2\rho}\mathbb E e^{\lambda Y}. \tag{24}
\end{aligned}
\]
On the other hand,
\[
  \frac{\operatorname{Ent}(e^{\lambda Y})}
       {\mathbb E e^{\lambda Y}}
  =\lambda\psi'(\lambda)-\psi(\lambda).                   \tag{25}
\]
Dividing equations (24)--(25) by \(\lambda^2\), integrating the derivative
of \(\psi(\lambda)/\lambda\) from \(0\) to \(\lambda\), and using
\(\mathbb EY=0\), gives
\[
  \psi(\lambda)\le\frac{\lambda^2L^2}{2\rho}.             \tag{26}
\]
Chernoff's bound and optimization at \(\lambda=\rho t/L^2\) now give
\[
\begin{aligned}
  \mathbb P(Y\ge t)
  &\le\inf_{\lambda>0}
    \exp\!\left(-\lambda t+\frac{\lambda^2L^2}{2\rho}\right)\\
  &=\exp\!\left(-\frac{\rho t^2}{2L^2}\right)
   =\exp\!\left(-\frac{(r-2)t^2}{96}\right),              \tag{27}
\end{aligned}
\]
because \(L^2=12\) and \(\rho=(r-2)/4\). For \(r\ge3\),
\(r-2\ge r/3\), proving the second inequality in equation (17). Finally,
\[
  \exp(-rt^2/288)
  \le8\exp(-c_Hrt^2)
  \quad\text{with}\quad c_H=1/288,                         \tag{28}
\]
which proves equation (18) and (Haar). The derivation actually holds for all
\(t>0\); restricting to \(0<t\le1\) gives exactly the sketch interface.

When \(d=0\), \(h=0\) and the left side of equation (17) is zero for every
\(t>0\), so the conclusion also holds without invoking curvature. No case
\(X=0\) is introduced: the accepted row quantifies over nonzero \(X\), which
is necessary for the displayed normalization. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-006-product-shape} permits conditioning
on the internal shapes while retaining independent Haar
\(Q_a,Q_b,Q_c\in SO(r)\). For every resulting fixed \(E\) and every fixed
nonzero \(X\), Lemma~\ref{lem:step-007-sequential-twirl} proves
\[
  \mathbb Eh=\frac d{r^3}
\]
by three exact current-notation twirls. Lemma~\ref{lem:step-007-lipschitz}
computes the tensor generator and proves
\(\operatorname{Lip}(h)\le2\sqrt3\) in the unnormalized product
Hilbert--Schmidt geodesic metric. Proposition~\ref{prop:step-007-product-tail}
computes \(\operatorname{Ric}=(r-2)g/4\) in that same metric, applies the
metric-matched log-Sobolev inequality and Herbst argument, and obtains
\[
  \mathbb P\!\left(h\ge\frac d{r^3}+t\right)
  \le\exp(-rt^2/288)
  \le8\exp(-c_Hrt^2),
  \qquad c_H=1/288,
\]
for \(0<t\le1\).

These conclusions are uniform in fixed \(E,d,X\), include \(d=0\) and every
actual upper endpoint such as \(d=3kr\), and use only \(r\ge3\) from the
large-\(r\) setting. The proof introduces no operator norm over targets, net,
data-dependent supremum, \(O(r)\) surrogate, transformed target, or claim
about \(LQE\). Thus the three named results establish exactly the accepted
`step_007` row and nothing stronger in object scope.

## Explicit Rate Audit

- Exposed variables: \(r\), \(d=\dim(E)\), and the deviation \(t\), with
  exact mean \(d/r^3\), Lipschitz constant \(2\sqrt3\), and tail exponent
  \(c_Hrt^2\). The upstream parameter \(k\) appears only through the accepted
  bound \(d\le3kr\), which is not specialized in this step.
- Hidden constants may depend on: only universal numerical constants. The
  proof makes the universal choice \(c_H=1/288\).
- Hidden constants may not depend on: \(n,r,k\), the realized factors, the
  internal Gaussian shapes, \(E,d,X\), the target direction, or time.
- Fixed quantities: condition on the realized factors and internal shapes;
  then hold \(E,d,X\) fixed while drawing the three product-Haar orientations.
- Probability mode: one-sided conditional high probability under the single
  initialization orientation draw. Uniformity permits later integration over
  shapes without a union bound.
- Horizon mode: initialization-only; there is no iteration or accumulated
  forcing term.
- Norm mode: tensor Frobenius norm for projection energy; unnormalized
  Hilbert--Schmidt geodesic metric on each \(SO(r)\) factor and the squared-sum
  product metric on \(SO(r)^3\).
- Admissibility conditions and auxiliary tolerances: \(r\ge3\), fixed
  \(E\subset\mathcal H\), fixed \(X\ne0\), and \(0<t\le1\). No relation
  between \(d\) and \(3kr\) is needed for this lemma beyond the accepted
  dependency when it is applied downstream.
- Term absorption or simplification inequalities:
  \[
    \frac{(r-2)t^2}{96}\ge\frac{rt^2}{288}
    \quad(r\ge3),
    \qquad
    e^{-rt^2/288}\le8e^{-c_Hrt^2}
    \quad(c_H=1/288).
  \]
- Probability conversion: conditioning on \(E\) preserves product Haar by
  accepted `step_006`; the deterministic-in-\(E\) bound is uniform, so no
  confidence loss occurs.
- Contribution to any Rate Specialization Bridge: `step_008` may combine
  \(d/r^3\le3k/r^2\) with a chosen constant \(t\). This step does not perform
  that rank-window or anisotropy specialization.
- Baseline-reduction check: for \(E=\{0\}\), \(h=0\) exactly; for
  \(E=\mathcal H\), \(h=1\) exactly and \(d/r^3=1\). More generally the
  result concerns the exact fixed \(X\) and exact orthogonal projection onto
  \(QE\), with no surrogate or normalization of the target.

## Blockers

None.

## Notation And Assumption Notes

- \(\mathcal H=(\mathbb R^r)^{\otimes3}\), the fixed subspace \(E\), its
  dimension \(d\), the fixed nonzero tensor \(X\), the product orientation
  \(Q\), and the scalar energy \(h\) are `public-facing`; they are the minimal
  interface consumed by `step_008`.
- The orthogonal projector \(P_E\), one-mode twirl \(\mathcal T_V\), and
  partial traces are `appendix-local`; they prove the mean without enlarging
  the downstream interface.
- The skew generators \(K_m\), tensor generator \(\mathcal K\), matrix-unit
  basis \(F_{ij}\), centered variable \(Y\), and log moment generating
  function \(\psi\) are `proof-local`.
- The metric convention, the bound \(2\sqrt3\), and the universal constant
  \(c_H=1/288\) are `public-facing` parts of the fixed-target lemma. The
  curvature parameter \(\rho=(r-2)/4\) and intermediate exponent
  \((r-2)/96\) are `appendix-local` and are proved in
  Proposition~\ref{prop:step-007-product-tail}.
- Constant provenance is explicit: \(2\sqrt3\) comes from the tensor-generator
  triangle inequality and Cauchy--Schwarz in equation (14); \((r-2)/4\)
  comes from the unnormalized metric curvature calculation in equations
  (19)--(22); and \(c_H=1/288\) comes from equations (27)--(28). No free
  threshold, radius, event, or bounded quantity is introduced.
- Assumption provenance is complete. Product-Haar orientation and independence
  from the generated internal subspace are supplied by accepted `step_006`.
  The exact mean, Lipschitz bound, curvature normalization, log-Sobolev
  application, and tail are proved or discharged in this step. There is no
  local conditional hypothesis and no generated event is treated as
  primitive.
- Boundary handling is explicit. Assumption~\ref{assump:dimension} supplies
  the theorem's large-\(r\) regime, while the proof works for every
  \(r\ge3\). The case \(d=0\) is deterministic. The case \(d=3kr\), when
  realized, needs no extra ambient-dimension inequality. The scope remains
  \(X\ne0\), exactly as in the accepted row.
- Object-target convention is exact: \(E,QE,X\) all live in the coefficient
  tensor space with its Frobenius inner product. There is no supremum over
  \(X\), no net, no quotient target, and no application of the elliptic map
  \(L\); those would change the fixed-target interface.
- The accepted `global_proof.md` was consulted only after its paired
  `global_proof_review.md` was confirmed `ACCEPTED`. Its B07 discussion was
  used only as planning guidance for the sequential twirl, tensor-generator,
  and metric-normalization checks. It was not used as proof evidence, a cited
  result, an assumption source, or authority to change the target claim.
