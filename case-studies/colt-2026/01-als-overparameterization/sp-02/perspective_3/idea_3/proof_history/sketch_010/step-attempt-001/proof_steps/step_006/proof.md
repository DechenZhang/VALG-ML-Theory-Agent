# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_006` | Prove `S_0=LQE`, independent product-Haar `SO(r)` orientations, and `dim(E)<=3kr`, with reflection bits absorbed into the shape. | `step_002`, `step_005` | `assump:independent_initialization`; derived Gaussianization | Measurable orbit disintegration. | Orthogonal invariance and free-action disintegration. | Haar/internal-shape factorization. | Mean leverage scale `3k/r^2`. | PENDING |

Concretely, conditional on any realized factor triple for which the accepted
`step_002` interface holds, write
\[
  Z_M=[z_1^M\ \cdots\ z_k^M]\in\mathbb R^{r\times k},
  \qquad M\in\{A,B,C\},
\]
for the three independent standard Gaussian arrays supplied by that
dependency. This step must construct measurable random matrices
\(Q_a,Q_b,Q_c\in SO(r)\) and a measurable internal subspace
\(E\subset(\mathbb R^r)^{\otimes3}\) such that the three orientations are
independent Haar, are jointly independent of \(E\), and, with
\[
  L=H_a\otimes H_b\otimes H_c,
  \qquad Q=Q_a\otimes Q_b\otimes Q_c,
\]
one has the exact raw coefficient-space identity
\[
  \mathscr S_0=LQE:=\{LQe:e\in E\},
  \qquad \dim(E)\le 3kr.
\]
The determinant/reflection bit from each initial \(O(r)\) orientation must be
stored in the corresponding internal shape. No projection-energy,
concentration, normalized-target, or physical-space claim belongs to this
step.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:independent_initialization`: conditional on the realized factors,
    the accepted Gaussianization dependency supplies independent standard
    Gaussian arrays in all three coefficient modes.
  - The setting parameter clause (r<k), recorded in
    `assump:rank_window`, is used only to ensure that the first (r) columns
    exist and to include the boundary (k=r+1). The construction actually
    needs only (k\ge r), and it uses no upper bound on (k).
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-002-coefficient-gaussianization} supplies,
    conditional on any realized triple in \(\mathcal E_{\rm cond}\),
    deterministic invertible matrices (H_M), independent arrays
    (z_i^M\stackrel{\rm iid}{\sim}\mathcal N(0,I_r)), and the exact formulas
    \[
      \bar\zeta_i^M=\frac{s_i^m}{\sqrt r}H_Mz_i^M,
      \qquad
      \zeta_i^M=\frac{s_i^m}{\sqrt n}H_Mz_i^M.
    \]
  - Accepted Proposition~\ref{prop:step-002-balancing-invariance} supplies
    nonzero pair-scalar invariance of every raw and normalized tangent block.
    Thus the balancing scalars, although possibly dependent on the Gaussian
    arrays, do not occur in the exported tangent range.
  - Accepted Proposition~\ref{prop:step-005-synthesis-scaling} and
    Proposition~\ref{prop:step-005-quotient-range} supply
    \[
      \mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}=\mathscr S_0
    \]
    and show that the unreduced, canonical-quotient, and complement-based
    parameter frames all synthesize this same range.
- Local conditional hypotheses: None. Full rank of a Gaussian square block,
  nonzero Gaussian columns, and all orientation/shape independence statements
  are proved below rather than assumed.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_002/proof.md`;
  - `perspective_3/idea_3/proof_steps/step_002/review.md`, status `ACCEPTED`
    for sketch attempt 10 and unit attempt 1;
  - `perspective_3/idea_3/proof_steps/step_005/proof.md`;
  - `perspective_3/idea_3/proof_steps/step_005/review.md`, status `ACCEPTED`
    for sketch attempt 10 and unit attempt 2.

Use the mode abbreviations
\[
  H_a:=H_A,\qquad H_b:=H_B,\qquad H_c:=H_C,
\]
and similarly identify the arrays (Z_A,Z_B,Z_C) with modes (a,b,c).

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under Assumption~\ref{assump:independent_initialization}, the setting condition (k\ge r), and the accepted Gaussianization interface, the positive-diagonal QR decomposition of the first (r) columns of one standard Gaussian (r\times k) array produces a measurable Haar (O(r)) orientation independent of the complete rotated shape, including the rotated remaining (k-r) columns; the singular first-block branch is null and admits an exact measurable extension. | Gives an explicit orientation/shape decomposition without an abstract orbit section. |
| `unit_002` | proposition | Under Lemma~\ref{lem:step-006-gaussian-qr-shape}, a fixed reflection splits the Haar (O(r)) orientation into an independent Haar (SO(r)) orientation and determinant bit; multiplying the shape by that reflection bit preserves exact factorization and makes the (SO(r)) orientation independent of the reflected shape. | Absorbs the disconnected-component bit into the internal shape. |
| `unit_003` | proposition | Under Assumption~\ref{assump:independent_initialization}, the accepted Gaussianization interface, and Proposition~\ref{prop:step-006-reflection-absorption}, applying the construction independently in the three modes gives independent product-Haar (SO(r)) orientations jointly independent of a measurable internal tangent subspace (E), and (\dim(E)\le3kr). | Produces the exact random object consumed by the fixed-target Haar step. |
| `unit_004` | proposition | Under the accepted balancing/span and quotient-range dependencies and Proposition~\ref{prop:step-006-product-shape}, the raw tangent range obeys (\mathscr S_0=(H_a\otimes H_b\otimes H_c)(Q_a\otimes Q_b\otimes Q_c)E) exactly; all balancing and normalization scalars disappear only through already-proved nonzero range invariance. | Assembles the exact object-target-compatible factorization. |

Atomic step = no. Gaussian QR independence, reflection-bit absorption,
three-mode measurable shape construction, and the final raw-span equivariance
are independent nontrivial claims and are audited separately.

## Cited Result Applications

### Accepted dependency: Gaussianized coefficient arrays and scalar invariance

**Source and restated statement.** Accepted
Lemma~\ref{lem:step-002-coefficient-gaussianization} and
Proposition~\ref{prop:step-002-balancing-invariance} state that, conditional
on a realized triple in \(\mathcal E_{\rm cond}\), the arrays
\(Z_M=[z_1^M\ \cdots\ z_k^M]\) are independent over modes and have iid
\(\mathcal N(0,1)\) entries, the matrices (H_M) are deterministic and
invertible, and
\[
\begin{aligned}
  \mathscr S_0
  =\operatorname{span}_{i\in[k]}\{&
    u\otimes H_bz_i^B\otimes H_cz_i^C,
    H_az_i^A\otimes v\otimes H_cz_i^C,\\
   &H_az_i^A\otimes H_bz_i^B\otimes w:
    u,v,w\in\mathbb R^r\}.
                                                        \tag{1}
\end{aligned}
\]
Both the raw factors (1/\sqrt n) and the normalized factors (1/\sqrt r),
together with the balancing pair scalars, multiply entire tangent blocks by
nonzero numbers and hence do not change (1).

**Instantiated objects and discharge.** The proof below applies QR only to
the dependency-produced standard Gaussian arrays (Z_M). It never asserts
that the balancing scalars are independent of their orientations. Their
removal from the range is exactly the accepted algebraic conclusion above.

### Accepted dependency: exact raw and quotient range

**Source and restated statement.** Accepted
Proposition~\ref{prop:step-005-synthesis-scaling} and
Proposition~\ref{prop:step-005-quotient-range} state that the raw and
normalized tangent synthesis maps, their canonical quotient maps, and any
complement-based reduced parameter frame all have image range
\(\mathscr S_0\). The target (D_r), represented tensor
\(\widehat D_0\), coefficient residual, and physical Frobenius metric remain
raw.

**Instantiated objects and discharge.** Equation (1) is therefore the exact
raw coefficient tangent range consumed downstream, not a normalized or
quotient surrogate. The internal subspace (E) below is allowed to use the
unreduced (3kr)-parameter synthesis map because the accepted quotient
result proves equality of image ranges.

### Standard compact-group fact: uniqueness of Haar measure

**Restated result.** On a compact group (G), every finite left-invariant
Borel measure is a nonnegative scalar multiple of normalized Haar measure.
Consequently, if random variables ((U,R)in G\times\mathcal R) satisfy
\((U,R)\stackrel d=(VU,R)\) for every deterministic (V\in G), then (U)
is Haar and independent of (R).

**Assumption discharge and conclusion used.** In
Lemma~\ref{lem:step-006-gaussian-qr-shape}, positive-diagonal QR is equivariant
under left multiplication, while a standard Gaussian matrix is left
orthogonally invariant. For a Borel shape event (B), the finite measure
\(A\mapsto\mathbb P(U\in A,R\in B)\) is therefore left invariant. Haar
uniqueness gives exactly the product factorization needed for independence.
The same fact on (SO(r)) identifies the orientation after the determinant
bit is removed.

### Local result applications

- Lemma~\ref{lem:step-006-gaussian-qr-shape} supplies a measurable
  (O(r))-orientation independent of the full rotated Gaussian shape.
- Proposition~\ref{prop:step-006-reflection-absorption} converts this to a
  Haar (SO(r)) orientation while placing the reflection bit in the shape.
- Proposition~\ref{prop:step-006-product-shape} applies that construction
  independently across modes, defines (E), proves its measurability, and
  proves (\dim(E)\le3kr).
- Proposition~\ref{prop:step-006-exact-equivariance} combines the accepted
  dependency range (1) with the three exact matrix factorizations to prove
  (\mathscr S_0=LQE).

## Local Derivation

### unit_001: lemma

**Lemma (Gaussian block QR separates orientation from the full rotated
shape).**
\label{lem:step-006-gaussian-qr-shape}
Under Assumption~\ref{assump:independent_initialization}, the setting
condition (k\ge r), and the accepted Gaussianization interface, let
\(Z\in\mathbb R^{r\times k}\) have iid \(\mathcal N(0,1)\) entries. Write
\[
  Z=[G\ W],\qquad G\in\mathbb R^{r\times r},
  \qquad W\in\mathbb R^{r\times(k-r)}.
\]
There are Borel functions (O(Z)\in O(r)) and
\(R(Z)\in\mathbb R^{r\times k}\) such that
\[
  Z=O(Z)R(Z)                                                   \tag{2}
\]
for every (Z), and, under the Gaussian law,
\[
  O(Z)\sim\operatorname{Haar}(O(r)),
  \qquad O(Z)\ \perp\!\!\!\perp\ R(Z).                       \tag{3}
\]
On the full-probability event \(\Omega_{\rm qr}=\{\det G\ne0\}\), if
\[
  G=O_0R_0
\]
is the unique QR decomposition with (R_0) upper triangular and strictly
positive diagonal, then the construction is explicitly
\[
  O(Z)=O_0,\qquad
  Y=O_0^{\mathsf T}W,\qquad
  R(Z)=[R_0\ Y].                                               \tag{4}
\]
Thus the orientation is independent not only of the triangular factor but of
the complete shape containing all rotated remaining Gaussian columns.

**Proof / justification.** The determinant is a nonzero polynomial in the
entries of (G), and the Gaussian law has a density, so
\[
  \mathbb P(\Omega_{\rm qr}^c)=0.                              \tag{5}
\]
On \(\Omega_{\rm qr}\), positive-diagonal QR is unique. Moreover,
\(R_0\) is the unique upper-triangular positive-diagonal Cholesky factor of
\(G^{\mathsf T}G\), and
\[
  O_0=GR_0^{-1}.                                               \tag{6}
\]
The Cholesky map is continuous on the positive-definite cone, so (O_0,R_0)
are Borel functions of (G) there. On \(\Omega_{\rm qr}^c\), set
\(O(Z)=I_r\), and on all branches set
\[
  R(Z)=O(Z)^{\mathsf T}Z.
\]
This is a Borel extension and proves (2) pointwise. On
\(\Omega_{\rm qr}\) it agrees with (4).

For a deterministic (U\in O(r)), the positive-diagonal QR decomposition of
\(UG\) is
\[
  UG=(UO_0)R_0.                                                \tag{7}
\]
Because (UG\stackrel d=G), (7) implies
\[
  (O_0,R_0)\stackrel d=(UO_0,R_0).                            \tag{8}
\]
For every Borel set (B) in the triangular-factor space, the finite measure
\[
  \mu_B(A)=\mathbb P(O_0\in A,R_0\in B)
\]
on (O(r)) is left invariant by (8). Haar uniqueness therefore gives
\[
  \mu_B(A)=\operatorname{Haar}_{O(r)}(A)\,
            \mathbb P(R_0\in B),                             \tag{9}
\]
so (O_0) is Haar and independent of (R_0).

It remains to include the unused columns in the shape. The Gaussian block
(W) is independent of (G), hence of ((O_0,R_0)). Conditional on
((O_0,R_0)=(o,t)), orthogonal invariance of every column of (W) gives
\[
  o^{\mathsf T}W\stackrel d=W,                                \tag{10}
\]
and this conditional law does not depend on (o) or (t). More explicitly,
for bounded Borel (f) and (g), define
\(h(t)=\mathbb E[g(t,W)]\). Then
\[
\begin{aligned}
  \mathbb E[f(O_0)g(R_0,O_0^{\mathsf T}W)]
  &=\mathbb E[f(O_0)h(R_0)]\\
  &=\mathbb E[f(O_0)]\,\mathbb E[h(R_0)]\\
  &=\mathbb E[f(O_0)]\,
    \mathbb E[g(R_0,O_0^{\mathsf T}W)].                      \tag{11}
\end{aligned}
\]
Thus (O_0) is independent of ((R_0,Y)), proving (3)--(4). The measurable
extension changes the variables only on the null event (5), so the Haar and
independence laws remain exact. Since invertibility of (G) implies full row
rank of (Z), every rank-deficient branch is contained in the same null
event. The argument also covers (k=r+1), where (W) has exactly one column.
\(\square\)

### unit_002: proposition

**Proposition (Reflection-bit absorption gives an independent Haar
orientation in (SO(r))).**
\label{prop:step-006-reflection-absorption}
Under Lemma~\ref{lem:step-006-gaussian-qr-shape}, fix
\[
  J=\operatorname{diag}(-1,1,\ldots,1)\in O(r),
  \qquad \det J=-1,
\]
and write (Z=O_0R) for the lemma's factorization. Define the measurable
determinant bit, orientation, and reflected shape by
\[
  \varepsilon=\mathbf 1_{\{\det O_0=-1\}},\qquad
  Q=O_0J^{\varepsilon},\qquad
  \widetilde R=J^{\varepsilon}R.                              \tag{12}
\]
Then
\[
  Q\in SO(r),\qquad Z=Q\widetilde R,                           \tag{13}
\]
(Q) is Haar on (SO(r)), and
\[
  Q\ \perp\!\!\!\perp\ \widetilde R.                       \tag{14}
\]
The bit \(\varepsilon\) is stored entirely in \(\widetilde R\).

**Proof / justification.** Since (J^2=I_r), (12) gives
\[
  \det Q=(\det O_0)(-1)^{\varepsilon}=1,
  \qquad
  Q\widetilde R=O_0J^{\varepsilon}J^{\varepsilon}R=O_0R=Z,
\]
which proves (13) on every branch.

Normalized Haar measure on (O(r)) assigns mass (1/2) to each determinant
component because right multiplication by (J) interchanges them. On the
component (det O_0=1), (Q=O_0); on the component (det O_0=-1), right
multiplication by (J) maps that component bijectively and measure
preservingly onto (SO(r)). Hence
\[
  Q\sim\operatorname{Haar}(SO(r)),\qquad
  Q\ \perp\!\!\!\perp\ \varepsilon.                         \tag{15}
\]
Lemma~\ref{lem:step-006-gaussian-qr-shape} gives (O_0\perp\!\!\!\perp R).
The measurable bijection (O_0\leftrightarrow(Q,\varepsilon)) therefore
gives ((Q,\varepsilon)\perp\!\!\!\perp R). Combining this with (15), for
bounded Borel (f,g),
\[
\begin{aligned}
  \mathbb E[f(Q)g(J^{\varepsilon}R)]
  &=\mathbb E\!\left[g(J^{\varepsilon}R)
      \mathbb E[f(Q)\mid\varepsilon,R]\right]\\
  &=\mathbb E[f(Q)]\,\mathbb E[g(J^{\varepsilon}R)],
\end{aligned}
\]
which proves (14). Thus absorbing the reflection does not leave a determinant
bit correlated with the exposed (SO(r)) orientation. \(\square\)

### unit_003: proposition

**Proposition (Independent product-Haar orientations and measurable internal
tangent shape).**
\label{prop:step-006-product-shape}
Under Assumption~\ref{assump:independent_initialization}, the setting
condition (k\ge r), the accepted Gaussianization interface, and
Proposition~\ref{prop:step-006-reflection-absorption}, there are measurable
factorizations
\[
  Z_A=Q_aR_A,\qquad Z_B=Q_bR_B,\qquad Z_C=Q_cR_C,              \tag{16}
\]
such that, conditional on the realized factors,
\[
  (Q_a,Q_b,Q_c)\sim
  \operatorname{Haar}(SO(r))^{\otimes3},
  \qquad
  (Q_a,Q_b,Q_c)\ \perp\!\!\!\perp\ (R_A,R_B,R_C).           \tag{17}
\]
Writing (r_i^M) for column (i) of (R_M), define
\[
\begin{aligned}
  E=\operatorname{span}_{i\in[k]}\{&
    u\otimes r_i^B\otimes r_i^C,
    r_i^A\otimes v\otimes r_i^C,
    r_i^A\otimes r_i^B\otimes w:\
   &u,v,w\in\mathbb R^r\}.
                                                               \tag{18}
\end{aligned}
\]
Then (E) is a measurable random subspace,
\[
  (Q_a,Q_b,Q_c)\ \perp\!\!\!\perp\ E,
  \qquad \boxed{\dim(E)\le3kr}.                              \tag{19}
\]

**Proof / justification.** Conditional on the realized factor triple, the
three arrays (Z_A,Z_B,Z_C) are independent standard Gaussian arrays by the
accepted Gaussianization lemma. Apply
Proposition~\ref{prop:step-006-reflection-absorption} separately to each
array. Each pair ((Q_m,R_M)) is a measurable function of its own mode array,
so the three pairs are independent. Within each pair the orientation is Haar
and independent of its shape. The joint law consequently factors as
\[
  \bigotimes_{m\in\{a,b,c\}}
    \left(\operatorname{Haar}_{SO(r)}\otimes\mathcal L(R_M)\right),
\]
which is exactly (17), not merely pairwise independence.

For measurability of (18), define the internal synthesis map
\[
\begin{aligned}
  \mathcal T_R((u_i,v_i,w_i)_{i=1}^k)
  =\sum_{i=1}^k(&u_i\otimes r_i^B\otimes r_i^C
    +r_i^A\otimes v_i\otimes r_i^C\\
    &+r_i^A\otimes r_i^B\otimes w_i).
                                                               \tag{20}
\end{aligned}
\]
In standard bases, the matrix (V_R) of \(\mathcal T_R\) has entries that
are polynomial in the entries of (R_A,R_B,R_C), and
\(E=\operatorname{range}(V_R)\). Its orthogonal projector is the Borel
function
\[
  P_E=V_RV_R^\dagger,
  \qquad
  V_R^\dagger=lim_{j\to\infty}
    (V_R^{\mathsf T}V_R+j^{-1}I)^{-1}V_R^{\mathsf T},          \tag{21}
\]
where the limit follows directly from a singular-value decomposition. Thus
the random subspace is measurable. Since it is a function only of the three
shapes, (17) proves the independence in (19).

Finally, the domain of \(\mathcal T_R\) has dimension (3kr), so
\[
  \dim(E)=\operatorname{rank}(\mathcal T_R)\le3kr.
\]
This remains true if some shape column vanishes or if cross-component
dependencies enlarge the synthesis kernel. It makes no injectivity or exact
dimension claim. At (k=r+1), each QR shape contains one rotated remaining
column, and the same construction and bound apply without modification.
\(\square\)

### unit_004: proposition

**Proposition (Exact raw tangent equivariance).**
\label{prop:step-006-exact-equivariance}
Under accepted Lemma~\ref{lem:step-002-coefficient-gaussianization}, accepted
Proposition~\ref{prop:step-002-balancing-invariance}, accepted
Propositions~\ref{prop:step-005-synthesis-scaling} and
\ref{prop:step-005-quotient-range}, and
Proposition~\ref{prop:step-006-product-shape}, define
\[
  L=H_a\otimes H_b\otimes H_c,
  \qquad Q=Q_a\otimes Q_b\otimes Q_c.                         \tag{22}
\]
Then (L) and (Q) are invertible coefficient-tensor operators and
\[
  \boxed{
  \mathscr S_0
  =(H_a\otimes H_b\otimes H_c)
   (Q_a\otimes Q_b\otimes Q_c)E
  =LQE.}                                                       \tag{23}
\]
This is equality with the exact raw tangent range from the setting and the
accepted quotient convention.

**Proof / justification.** By (16), for every component and mode,
\[
  z_i^A=Q_ar_i^A,\qquad z_i^B=Q_br_i^B,
  \qquad z_i^C=Q_cr_i^C.                                     \tag{24}
\]
Let (E_i^a,E_i^b,E_i^c) denote the three component subspaces displayed in
(18). For the first one,
\[
\begin{aligned}
  LQ E_i^a
  &=\{H_aQ_au\otimes H_bQ_br_i^B\otimes H_cQ_cr_i^C:
      u\in\mathbb R^r\}\\
  &=\{u'\otimes H_bz_i^B\otimes H_cz_i^C:
      u'\in\mathbb R^r\},                                   \tag{25}
\end{aligned}
\]
because (H_aQ_a) is invertible. The same argument in the other two free
modes gives
\[
\begin{aligned}
  LQ E_i^b
    &=\{H_az_i^A\otimes v'\otimes H_cz_i^C:v'\in\mathbb R^r\},\\
  LQ E_i^c
    &=\{H_az_i^A\otimes H_bz_i^B\otimes w':w'\in\mathbb R^r\}.
                                                               \tag{26}
\end{aligned}
\]
Taking the span over (i) and comparing (25)--(26) with the accepted exact
range formula (1) proves (23).

For completeness, the actual raw first-mode tangent block contains the
factor (s_i^ys_i^z/n), while its normalized counterpart contains
\(s_i^ys_i^z/r\); the analogous factors occur in the other two modes. The
accepted balancing-invariance proposition proves that every such factor is
nonzero, including its exact scalar convention on the no-op zero branch, so
each multiplies a whole block by a bijective scalar. Thus no balancing scalar,
normalization scalar, or independence assertion about those scalars is hidden
in (23). The accepted `step_005` propositions then identify this unreduced
range with the raw, normalized, and quotient ranges. The fixed coefficient
target (D_r), \(\widehat D_0\), and every physical-space object are not acted
on or redefined in this proof. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-006-gaussian-qr-shape} applies positive-diagonal QR to
the first (r) columns of each dependency-produced standard Gaussian mode
array. It proves explicitly that the QR orientation is Haar on (O(r)) and
independent of the complete rotated shape
\([R_0\ O_0^{\mathsf T}W]\), not only of the triangular factor. The singular
first-block and rank-deficient branches are null; the piecewise definition
still gives a measurable exact factorization on those branches.

Proposition~\ref{prop:step-006-reflection-absorption} writes each Haar
(O(r)) orientation as (Q_mJ^{\varepsilon_m}), with (Q_m) Haar on
(SO(r)), and replaces the shape by (J^{\varepsilon_m}R_M). It proves both
the exact identity (Z_M=Q_mR_M) after this replacement and independence of
the exposed orientation from the reflected shape. Therefore no untracked
determinant bit remains outside the internal shape.

Proposition~\ref{prop:step-006-product-shape} uses independence of the three
Gaussian mode arrays to obtain the product law
\(operatorname{Haar}(SO(r))^{\otimes3}\), jointly independent of all three
shapes. It defines the measurable internal tangent subspace (E) from those
shapes and proves
\[
  (Q_a,Q_b,Q_c)\perp\!\!\!\perp E,
  \qquad \dim(E)\le3kr.
\]
The proof explicitly includes the boundary (k=r+1), null rank branch, and
possible rank loss of the internal synthesis map.

Finally, Proposition~\ref{prop:step-006-exact-equivariance} applies the
accepted `step_002` balancing/span invariance and the accepted `step_005`
raw/normalized and quotient-range equality to the exact identities
\(z_i^M=Q_mr_i^M\). It proves block by block that
\[
  \mathscr S_0
  =(H_a\otimes H_b\otimes H_c)
   (Q_a\otimes Q_b\otimes Q_c)E.
\]
These named results establish every clause of the exact sketch row. No
projection of (D_r), Haar mean, concentration inequality, leverage bound,
or tangent-deficit conclusion is asserted.

## Explicit Rate Audit

- Exposed variables: (r,k) through the exact deterministic bound
  (d:=\dim(E)\le3kr), and hence the downstream algebraic scale
  \[
    \frac d{r^3}\le\frac{3k}{r^2}.
  \]
- Hidden constants may depend on: None.
- Hidden constants may not depend on: (n,r,k), the realized factors, the
  shapes, or the orientations.
- Fixed quantities: conditional on a realized factor triple, the matrices
  (H_a,H_b,H_c) are fixed; after conditioning further on the internal
  shapes, (E) is fixed while the orientations retain product Haar law.
- Probability mode: exact conditional distributional identity and almost-sure
  Gaussian full-rank statement at initialization. Null-set extensions are
  defined measurably and do not spend a positive failure budget.
- Horizon mode: initialization-only.
- Norm mode: coefficient tensor Euclidean/Frobenius geometry; this step uses
  subspace dimension but proves no norm or projection bound.
- Admissibility conditions and auxiliary tolerances: only (k\ge r), already
  implied by the setting's (r<k); no tolerance or large-(r) threshold is
  introduced.
- Term absorption or simplification inequalities: None; all factorization and
  span statements are equalities.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: only
  (d/r^3\le3k/r^2). The Haar mean and tail using this scale belong to
  `step_007` and are not used here.
- Baseline-reduction check: if (H_a=H_b=H_c=I_r), (23) reduces exactly to
  \(\mathscr S_0=QE\). Balancing and coefficient normalization leave the raw
  span unchanged, so no weaker surrogate replaces the setting's baseline.

## Blockers

None.

## Notation And Assumption Notes

- (Z_M=[z_1^M\ \cdots\ z_k^M]), (H_M), and the correspondence
  (A,B,C\leftrightarrow a,b,c) are `public-facing` accepted-dependency
  objects or aliases.
- (Q_a,Q_b,Q_c), (Q=Q_a\otimes Q_b\otimes Q_c),
  (L=H_a\otimes H_b\otimes H_c), and the internal subspace (E) are
  `public-facing`: they are the minimal interface consumed by `step_007` and
  `step_008`.
- The first square blocks (G_M), remaining blocks (W_M), positive-diagonal
  triangular factors, initial (O(r)) orientations, determinant bits
  \(\varepsilon_M\), fixed reflection (J), and reflected shape matrices
  (R_M) are `appendix-local`. They explicitly construct the public-facing
  orientations and (E) but need not appear in the main theorem.
- The internal synthesis map \(\mathcal T_R\), its standard-basis matrix
  (V_R), pseudoinverse regularization in (21), and component subspaces
  (E_i^m) are `proof-local`. They prove measurability and the dimension bound
  without exporting a helper dictionary.
- No new constant, threshold, radius, event, or tolerance is introduced. The
  number (3kr) is the dimension of the setting-derived unreduced parameter
  domain, and (3k/r^2) follows by division by (r^3).
- Assumption provenance is complete: the iid Gaussian arrays and their mode
  independence come from accepted `step_002` under
  Assumption~\ref{assump:independent_initialization}; the event that each
  first (r\)-column block is invertible is proved in
  Lemma~\ref{lem:step-006-gaussian-qr-shape}; orientation/shape independence,
  determinant-bit independence, measurability, and the dimension bound are
  proved in this step. No Haar orientation, internal shape, full-rank event,
  or tangent factorization is assumed.
- Boundary handling is explicit. The minimum allowed (k=r+1) leaves one
  rotated remainder column. A singular first block or rank-deficient full
  array lies in a proved null event and receives a measurable exact
  factorization. A zero Gaussian coefficient or no-op balancing branch is
  already covered by the accepted scalar extension and block-range equality;
  the dimension bound remains valid if an internal block is zero.
- Object-target convention: (E,Q,L,mathscr S_0) all live in the coefficient
  tensor space \((\mathbb R^r)^{\otimes3}\). This step does not act on
  (D_r), \(\widehat D_0\), the physical target (T), or the physical loss,
  and it makes no projection or concentration claim.
- The accepted `global_proof.md` was consulted only after its paired
  `global_proof_review.md` was confirmed `ACCEPTED`. Its B06 discussion was
  used only as planning guidance for the orientation/shape interface. It was
  not used as proof evidence, a cited result, an assumption source, or
  authority to change the target claim.
