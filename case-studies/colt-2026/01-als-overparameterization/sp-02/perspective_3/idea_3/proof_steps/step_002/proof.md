# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_002` | Prove exact coefficient Gaussianization, balancing-scalar invariance of `S_0`, and product invariance of `Dhat_0`. | `step_001` | `assump:independent_initialization`; derived `E_cond` | Exact law after balancing. | SVD Gaussianization and scalar algebra. | `H_M,z_i^M,s_i^m` representation. | Fixed-target leverage input. | PENDING |

Concretely, conditional on any realized factor triple in
\(\mathcal E_{\rm cond}\), this step must prove, for
\(M\in\{A,B,C\}\) and its corresponding physical mode
\(m\in\{x,y,z\}\),
\[
  \bar\zeta_i^M=\frac{s_i^m}{\sqrt r}H_Mz_i^M,
\]
where the arrays \(z_i^M\) are independent standard Gaussian vectors across
all modes and components, every singular value of \(H_M\) lies in
\([\kappa_1^{-1},\kappa_1]\), every balancing scalar is nonzero almost surely,
and
\[
  s_i^x s_i^y s_i^z=1.
\]
It must also prove, block by block, that the pair scalars induced by balancing
do not change the tangent span \(\mathscr S_0\), and that the triple scalar
does not change the raw coefficient tensor \(\widehat D_0\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:independent_initialization`: before balancing, all entries of
    \(X_0^{\rm raw},Y_0^{\rm raw},Z_0^{\rm raw}\) are iid
    \(\mathcal N(0,1/n)\), and initialization is independent of smoothing.
- Derived invariants supplied by accepted dependencies:
  - The accepted Proposition~\ref{prop:step-001-realized-conditioning} from
    `step_001` proves \(\mathcal E_{\rm cond}\). On that event, for every
    \(M\in\{A,B,C\}\),
    \[
      \sigma_{\min}(M)\ge\kappa_1^{-1},\qquad
      \|M\|_{\rm op}\le\kappa_1,\qquad
      \|M^\dagger\|_{\rm op}\le\kappa_1,
      \qquad \kappa_1=2\kappa^2.
    \]
- Local conditional hypotheses: None. Conditioning on a realized triple in
  the dependency-produced event \(\mathcal E_{\rm cond}\) is the exact target
  interface, not a new assumption.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_001/proof.md`;
  - `perspective_3/idea_3/proof_steps/step_001/review.md`, whose status is
    `ACCEPTED` for sketch attempt 10 and unit attempt 2.

For notation, pair the factor matrices, physical modes, and coefficient
coordinates as
\[
  (A,x,\alpha),\qquad (B,y,\beta),\qquad (C,z,\gamma).
\]
Write \(\widetilde x_i,\widetilde y_i,\widetilde z_i\) for the columns before
balancing, and set
\[
  \widetilde\zeta_i^A=A^\dagger\widetilde x_i,
  \quad \widetilde\zeta_i^B=B^\dagger\widetilde y_i,
  \quad \widetilde\zeta_i^C=C^\dagger\widetilde z_i.
\]
After balancing, write
\(\zeta_i^A=\alpha_{i,0}\),
\(\zeta_i^B=\beta_{i,0}\), and
\(\zeta_i^C=\gamma_{i,0}\), with
\(\bar\zeta_i^M=\sqrt{n/r}\,\zeta_i^M\).

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under Assumption~\ref{assump:independent_initialization}, the standardized raw columns have the independent Gaussian radius/direction law; the balancing map is multiplication by explicit positive scalars \(s_i^x,s_i^y,s_i^z\) off a null zero branch, extends with scalars equal to one on that branch, and satisfies \(s_i^xs_i^ys_i^z=1\) exactly. | Proves nonvanishing, zero-branch handling, direction preservation, and the exact product-one identity. |
| `unit_002` | lemma | Under Assumption~\ref{assump:independent_initialization}, the accepted realized-conditioning proposition, and Lemma~\ref{lem:step-002-balancing-scalars}, conditional on any realized triple in \(\mathcal E_{\rm cond}\), compact SVDs produce deterministic invertible \(H_M\) and iid \(z_i^M\sim\mathcal N(0,I_r)\) such that \(\bar\zeta_i^M=(s_i^m/\sqrt r)H_Mz_i^M\) and \(\sigma(H_M)\subset[\kappa_1^{-1},\kappa_1]\). | Proves the exact balanced coefficient Gaussianization with all normalization factors and independence conventions. |
| `unit_003` | proposition | Under Assumption~\ref{assump:independent_initialization}, the accepted realized-conditioning proposition, and Lemmas~\ref{lem:step-002-balancing-scalars} and \ref{lem:step-002-coefficient-gaussianization}, every raw and normalized tangent block is a nonzero scalar multiple of the corresponding unbalanced elliptic-Gaussian block, so all have the same range and hence the same \(\mathscr S_0\); moreover balancing leaves \(\widehat D_0\) exactly unchanged while \(D_r\) remains untouched. | Proves the exact tangent-span and raw coefficient-product invariances exported downstream. |

Atomic step = no. The raw polar/balancing law, the conditional compact-SVD
Gaussianization, and the block/product invariance are logically distinct and
are audited separately.

## Cited Result Applications

### Accepted dependency: realized-factor conditioning

**Source and restated statement.** The accepted
Proposition~\ref{prop:step-001-realized-conditioning} in `step_001` states that
on the generated event \(\mathcal E_{\rm cond}\), every realized mode matrix
has full column rank and
\[
  \sigma_{\min}(M)\ge\kappa_1^{-1},\qquad
  \|M\|_{\rm op}\le\kappa_1,
  \qquad M\in\{A,B,C\}.
\]
Consequently \(M^\dagger\) exists and
\(\|M^\dagger\|_{\rm op}\le\kappa_1\).

**Instantiated objects and discharge.** This step conditions on exactly the
event produced by that proposition. The compact SVDs and pseudoinverses below
are therefore legal for the same realized matrices \(A,B,C\). No statement
from the global diagnostic is used as evidence.

### Gaussian polar decomposition

**Restated result.** If \(g\sim\mathcal N(0,I_n)\), then
\(\chi=\|g\|_2>0\) almost surely and, on that event,
\(\omega=g/\chi\) is uniform on \(S^{n-1}\), independent of \(\chi\). For an
independent family of standard Gaussian vectors, the corresponding
radius-direction pairs are independent.

**Instantiated objects and discharge.** Apply the result to
\(g_i^x=\sqrt n\,\widetilde x_i\),
\(g_i^y=\sqrt n\,\widetilde y_i\), and
\(g_i^z=\sqrt n\,\widetilde z_i\). Assumption~\ref{assump:independent_initialization}
gives exactly the required iid standard Gaussian law. The result is also
derived directly from the radial Gaussian density in
Lemma~\ref{lem:step-002-balancing-scalars}.

### Orthogonal images of a standard Gaussian and compact SVD

**Restated result.** If \(g\sim\mathcal N(0,I_n)\) and
\(U\in\mathbb R^{n\times r}\) satisfies \(U^{\mathsf T}U=I_r\), then
\(U^{\mathsf T}g\sim\mathcal N(0,I_r)\). Applying deterministic linear maps
separately to independent Gaussian vectors preserves their independence. If
\(M=U\Sigma V^{\mathsf T}\) is a full-column-rank compact SVD, with
\(U^{\mathsf T}U=V^{\mathsf T}V=I_r\) and positive diagonal \(\Sigma\), then
\[
  M^\dagger=V\Sigma^{-1}U^{\mathsf T}.
\]

**Instantiated objects and discharge.** Conditional on \(A,B,C\), the compact
SVD factors are deterministic. Apply the Gaussian statement to the distinct
raw vectors \(g_i^m\), and define
\(z_i^M=U_M^{\mathsf T}g_i^m\) and
\(H_M=V_M\Sigma_M^{-1}\). Full column rank is supplied by the accepted
dependency. These are the exact objects used in
Lemma~\ref{lem:step-002-coefficient-gaussianization}.

### Local result applications

- Lemma~\ref{lem:step-002-balancing-scalars} supplies the exact scalar
  representation, nonzero pair factors, product-one identity, and zero-branch
  convention used by the two later local results.
- Lemma~\ref{lem:step-002-coefficient-gaussianization} supplies the exact
  \(H_M,z_i^M,s_i^m\) formula used by
  Proposition~\ref{prop:step-002-balancing-invariance} to compare every
  tangent block and every coefficient rank-one product.

## Local Derivation

### unit_001: lemma

**Lemma (Gaussian radii and exact balancing scalars).**
\label{lem:step-002-balancing-scalars}
Under Assumption~\ref{assump:independent_initialization}, define, for every
component \(i\),
\[
  g_i^x=\sqrt n\,\widetilde x_i,
  \qquad g_i^y=\sqrt n\,\widetilde y_i,
  \qquad g_i^z=\sqrt n\,\widetilde z_i,
  \qquad \chi_i^m=\|g_i^m\|_2.
\]
Then the \(g_i^m\) are independent \(\mathcal N(0,I_n)\) vectors over all
\(i\) and \(m\). Almost surely, every \(\chi_i^m\) is positive, the directions
\(\omega_i^m=g_i^m/\chi_i^m\) are independent uniform sphere vectors and are
independent of all radii, and the balancing map satisfies
\[
  x_{i,0}=s_i^x\widetilde x_i,qquad
  y_{i,0}=s_i^y\widetilde y_i,qquad
  z_{i,0}=s_i^z\widetilde z_i,
\]
where, on the positive-radius branch,
\[
  s_i^x=\left(\frac{\chi_i^y\chi_i^z}{(\chi_i^x)^2}\right)^{1/3},
  \quad
  s_i^y=\left(\frac{\chi_i^x\chi_i^z}{(\chi_i^y)^2}\right)^{1/3},
  \quad
  s_i^z=\left(\frac{\chi_i^x\chi_i^y}{(\chi_i^z)^2}\right)^{1/3}.
\]
On the setting's zero-factor branch, define
\(s_i^x=s_i^y=s_i^z=1\). With this extension every scalar is nonzero, the
displayed scalar representation agrees with \(\mathcal G\) on every branch,
and
\[
  s_i^x s_i^y s_i^z=1
\]
identically.

**Proof / justification.** Assumption~\ref{assump:independent_initialization}
gives the stated joint standard Gaussian law after multiplication by
\(\sqrt n\). The density of one \(g_i^m\) is a function only of its Euclidean
radius. In polar coordinates its measure is proportional to
\[
  e^{-\chi^2/2}\chi^{n-1}\,d\chi\,d\sigma(\omega),
\]
where \(d\sigma\) is uniform surface measure. This factorization proves the
radius-direction independence and uniformity. The singleton \(\{0\}\) has
Gaussian measure zero; a finite union over the \(3k\) raw columns therefore
shows that all radii are positive almost surely.

On that probability-one branch, the three raw physical norms are
\(\chi_i^x/\sqrt n,\chi_i^y/\sqrt n,\chi_i^z/\sqrt n\), so their geometric
mean is
\[
  q_i=\frac{(\chi_i^x\chi_i^y\chi_i^z)^{1/3}}{\sqrt n}.
\]
The balancing definition gives
\(s_i^x=q_i/(\chi_i^x/\sqrt n)\), and similarly in the other modes, which is
exactly the displayed formula. In particular, balancing changes only radii:
\(x_{i,0}=q_i\omega_i^x\), and analogously for \(y,z\), so all raw directions
are preserved. Direct multiplication gives
\[
  (s_i^x s_i^y s_i^z)^3
  =\frac{(\chi_i^y\chi_i^z)(\chi_i^x\chi_i^z)
          (\chi_i^x\chi_i^y)}
         {(\chi_i^x\chi_i^y\chi_i^z)^2}
  =1.
\]
All three scalars are positive, hence their product is one rather than another
cube root of one. If any raw factor is zero, the setting leaves the entire raw
triple unchanged; assigning all three scalars the value one represents that
branch exactly and preserves the product identity. This proves the lemma.
\(\square\)

### unit_002: lemma

**Lemma (compact-SVD Gaussianization of the balanced coefficients).**
\label{lem:step-002-coefficient-gaussianization}
Under Assumption~\ref{assump:independent_initialization}, the accepted
Proposition~\ref{prop:step-001-realized-conditioning}, and
Lemma~\ref{lem:step-002-balancing-scalars}, condition on any realized triple
\((A,B,C)\in\mathcal E_{\rm cond}\). For each
\(M\in\{A,B,C\}\), choose a compact SVD
\[
  M=U_M\Sigma_MV_M^{\mathsf T},
  \qquad U_M^{\mathsf T}U_M=V_M^{\mathsf T}V_M=I_r,
  \qquad \Sigma_M\succ0,
\]
and define
\[
  H_M=V_M\Sigma_M^{-1},
  \qquad z_i^M=U_M^{\mathsf T}g_i^m,
\]
using the mode pairing \((A,x),(B,y),(C,z)\). Then, under the conditional
initialization law, the full family
\(\{z_i^M:M\in\{A,B,C\},i\in[k]\}\) is independent with
\(z_i^M\sim\mathcal N(0,I_r)\), every \(H_M\) is invertible and satisfies
\[
  \sigma(H_M)\subset[\kappa_1^{-1},\kappa_1],
\]
and the raw, balanced, and normalized coefficient vectors obey the exact
identities
\[
  \widetilde\zeta_i^M=\frac1{\sqrt n}H_Mz_i^M,
  \qquad
  \zeta_i^M=\frac{s_i^m}{\sqrt n}H_Mz_i^M,
  \qquad
  \boxed{\bar\zeta_i^M=\frac{s_i^m}{\sqrt r}H_Mz_i^M}.
\]
No independence between \(s_i^m\) and \(z_i^M\) is asserted or needed.

**Proof / justification.** Conditional on the realized factors, all SVD
matrices are deterministic, while the standardized raw initialization vectors
remain independent standard Gaussians because initialization is independent
of smoothing. Since \(U_M^{\mathsf T}U_M=I_r\),
\[
  \mathbb E[z_i^M(z_i^M)^{\mathsf T}\mid A,B,C]
  =U_M^{\mathsf T}U_M=I_r,
\]
and each \(z_i^M\) is Gaussian. Distinct \((M,i)\) use distinct independent
raw vectors, proving independence across all modes and components.

The compact-SVD pseudoinverse formula gives
\[
  M^\dagger=V_M\Sigma_M^{-1}U_M^{\mathsf T}.
\]
Because \(\widetilde m_i=g_i^m/\sqrt n\),
\[
  \widetilde\zeta_i^M
  =M^\dagger\widetilde m_i
  =\frac1{\sqrt n}V_M\Sigma_M^{-1}U_M^{\mathsf T}g_i^m
  =\frac1{\sqrt n}H_Mz_i^M.                 \tag{1}
\]
Lemma~\ref{lem:step-002-balancing-scalars} gives
\(m_{i,0}=s_i^m\widetilde m_i\) on every branch under its scalar extension.
Linearity of \(M^\dagger\) therefore yields
\[
  \zeta_i^M=s_i^m\widetilde\zeta_i^M
  =\frac{s_i^m}{\sqrt n}H_Mz_i^M.           \tag{2}
\]
Multiplication by the setting's coefficient normalization
\(\sqrt{n/r}\) gives the boxed formula, with no omitted factor.

The singular values of \(H_M=V_M\Sigma_M^{-1}\) are exactly the reciprocals
of the singular values of \(M\). On \(\mathcal E_{\rm cond}\),
\(\sigma(M)\subset[\kappa_1^{-1},\kappa_1]\), and this interval is invariant
under reciprocal, proving the claimed bounds for \(H_M\). Repeated singular
values, permutations, or SVD sign choices only apply orthogonal changes to
the standard Gaussian coordinates and do not alter their joint law or the
singular values of \(H_M\). Thus any fixed compact-SVD convention, and in
particular any measurable convention used downstream, gives the same stated
interface. Finally, the scalars are functions of the full raw radii and may be
dependent on the projected Gaussian coordinates; every later invariance is
algebraic and does not require otherwise. This proves the lemma. \(\square\)

### unit_003: proposition

**Proposition (exact tangent-block and coefficient-product invariance).**
\label{prop:step-002-balancing-invariance}
Under Assumption~\ref{assump:independent_initialization}, the accepted
Proposition~\ref{prop:step-001-realized-conditioning}, and
Lemmas~\ref{lem:step-002-balancing-scalars} and
\ref{lem:step-002-coefficient-gaussianization}, condition on any realized
triple in \(\mathcal E_{\rm cond}\). For each component define the three
elliptic-Gaussian baseline tangent blocks
\[
  \begin{aligned}
  \mathcal B_i^x
  &=\{u\otimes H_Bz_i^B\otimes H_Cz_i^C:u\in\mathbb R^r\},\\
  \mathcal B_i^y
  &=\{H_Az_i^A\otimes v\otimes H_Cz_i^C:v\in\mathbb R^r\},\\
  \mathcal B_i^z
  &=\{H_Az_i^A\otimes H_Bz_i^B\otimes w:w\in\mathbb R^r\}.
  \end{aligned}
\]
Then every tangent block in the setting, both raw and normalized, has exactly
the corresponding baseline range. More precisely,
\[
  \begin{aligned}
  \{u\otimes\beta_{i,0}\otimes\gamma_{i,0}:u\in\mathbb R^r\}
    &=\frac{s_i^ys_i^z}{n}\mathcal B_i^x=\mathcal B_i^x,\\
  \{\alpha_{i,0}\otimes v\otimes\gamma_{i,0}:v\in\mathbb R^r\}
    &=\frac{s_i^xs_i^z}{n}\mathcal B_i^y=\mathcal B_i^y,\\
  \{\alpha_{i,0}\otimes\beta_{i,0}\otimes w:w\in\mathbb R^r\}
    &=\frac{s_i^xs_i^y}{n}\mathcal B_i^z=\mathcal B_i^z,
  \end{aligned}                                             \tag{3}
\]
and
\[
  \begin{aligned}
  \{u\otimes\bar\beta_{i,0}\otimes\bar\gamma_{i,0}:u\in\mathbb R^r\}
    &=\frac{s_i^ys_i^z}{r}\mathcal B_i^x=\mathcal B_i^x,\\
  \{\bar\alpha_{i,0}\otimes v\otimes\bar\gamma_{i,0}:v\in\mathbb R^r\}
    &=\frac{s_i^xs_i^z}{r}\mathcal B_i^y=\mathcal B_i^y,\\
  \{\bar\alpha_{i,0}\otimes\bar\beta_{i,0}\otimes w:w\in\mathbb R^r\}
    &=\frac{s_i^xs_i^y}{r}\mathcal B_i^z=\mathcal B_i^z.
  \end{aligned}                                             \tag{4}
\]
Consequently,
\[
  \mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}
  =\operatorname{span}_{i\in[k]}
    (\mathcal B_i^x\cup\mathcal B_i^y\cup\mathcal B_i^z)
  =\mathscr S_0.                                            \tag{5}
\]
Moreover balancing preserves the exact raw coefficient tensor componentwise:
\[
  \widehat D_0
  =\sum_{i=1}^k\alpha_{i,0}\otimes\beta_{i,0}\otimes\gamma_{i,0}
  =\sum_{i=1}^k\widetilde\zeta_i^A\otimes
                    \widetilde\zeta_i^B\otimes
                    \widetilde\zeta_i^C
  =\frac1{n^{3/2}}\sum_{i=1}^k
       H_Az_i^A\otimes H_Bz_i^B\otimes H_Cz_i^C.           \tag{6}
\]
The normalization is certificate-only:
\[
  \sum_{i=1}^k\bar\alpha_{i,0}\otimes\bar\beta_{i,0}
                    \otimes\bar\gamma_{i,0}
  =\left(\frac nr\right)^{3/2}\widehat D_0,                \tag{7}
\]
so neither \(\widehat D_0\) nor the fixed raw target \(D_r\) is replaced by a
normalized tensor.

**Proof / justification.** Lemma~\ref{lem:step-002-coefficient-gaussianization}
gives
\[
  \beta_{i,0}=\frac{s_i^y}{\sqrt n}H_Bz_i^B,
  \qquad
  \gamma_{i,0}=\frac{s_i^z}{\sqrt n}H_Cz_i^C.
\]
Substitution into the first raw tangent family yields the first equality in
(3). The other two follow by the same substitution in their displayed modes.
The normalized coefficient formula replaces each denominator \(\sqrt n\) by
\(\sqrt r\), giving (4). By
Lemma~\ref{lem:step-002-balancing-scalars}, every pair product appearing in
(3)--(4) is nonzero; also \(n,r>0\). Multiplication of a linear subspace by a
nonzero scalar is a bijection of that subspace, proving the second equality in
each line. Taking the span over all components and all three mode blocks proves
(5). This argument remains valid when a displayed baseline block happens to
be the zero subspace.

For each component, the same Gaussianization and the exact product-one identity
give
\[
  \begin{aligned}
  \alpha_{i,0}\otimes\beta_{i,0}\otimes\gamma_{i,0}
  &=\frac{s_i^xs_i^ys_i^z}{n^{3/2}}
      H_Az_i^A\otimes H_Bz_i^B\otimes H_Cz_i^C\\
  &=\frac1{n^{3/2}}
      H_Az_i^A\otimes H_Bz_i^B\otimes H_Cz_i^C\\
  &=\widetilde\zeta_i^A\otimes
    \widetilde\zeta_i^B\otimes
    \widetilde\zeta_i^C.
  \end{aligned}
\]
Summing proves (6). Repeating the calculation with the normalized formula
gives the factor \(r^{-3/2}\), which compared with (6) is exactly
\((n/r)^{3/2}\), proving (7). The target \(D_r\) is fixed by the realized
factor model and is not an initialization output, so neither balancing nor the
coefficient normalization acts on it. Thus the tangent range and the raw
coefficient target remain exactly the objects specified in `setting.md`.
\(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-002-balancing-scalars} derives the exact raw
radius-direction law and the balancing multipliers from
Assumption~\ref{assump:independent_initialization}. It proves that the zero
branch is null, supplies an exact scalar extension on that branch, and proves
that all balancing scalars are nonzero with
\(s_i^xs_i^ys_i^z=1\).

Conditional on the accepted dependency-produced event
\(\mathcal E_{\rm cond}\),
Lemma~\ref{lem:step-002-coefficient-gaussianization} applies compact SVDs to
the raw initialization and proves, with all factors displayed,
\[
  \bar\zeta_i^M=\frac{s_i^m}{\sqrt r}H_Mz_i^M,
  \qquad z_i^M\stackrel{\rm iid}{\sim}\mathcal N(0,I_r),
  \qquad \sigma(H_M)\subset[\kappa_1^{-1},\kappa_1].
\]
The independence is simultaneous across every mode and component, conditional
on the realized factors. The lemma explicitly records that the balancing
scalars may depend on the Gaussian arrays, which creates no gap because the
remaining conclusions are exact scalar identities.

Proposition~\ref{prop:step-002-balancing-invariance} then shows that every
individual tangent block is multiplied only by a nonzero pair scalar, including
the fixed \(1/n\) or \(1/r\) normalization factor. Hence every block range,
and therefore \(\mathscr S_0\), is unchanged. The same proposition uses the
triple-product identity to prove exact componentwise and summed preservation
of \(\widehat D_0\), while keeping \(D_r\) and the raw residual convention
untouched. These three named results prove the exact sketch-row claim and
export precisely the \(H_M,z_i^M,s_i^m\) interface required by later steps.
No Gram concentration, quotient-range statement, Haar factorization, or Haar
disintegration is asserted here.

## Explicit Rate Audit

- Exposed variables: \(n,r,\kappa\) through
  \(\kappa_1=2\kappa^2\), the exact scales \(n^{-1/2}\) and \(r^{-1/2}\), and
  the finite component range \(i\in[k]\).
- Hidden constants may depend on: None. Every multiplicative factor in this
  step is exact.
- Hidden constants may not depend on: \(n,r,k\), the realized factor triple,
  the deterministic base triple, or any initialization radius or direction.
- Fixed quantities: condition on an arbitrary realized \((A,B,C)\) in
  \(\mathcal E_{\rm cond}\); \(H_A,H_B,H_C\) are then fixed while the
  initialization is sampled.
- Probability mode: conditional almost sure under initialization. The
  \(z_i^M\) arrays have an exact conditional iid Gaussian law. The only
  exceptional raw zero-vector set has conditional probability zero, and the
  scalar convention extends the algebra to that set.
- Horizon mode: initialization-only, before the first GD update.
- Norm mode: Euclidean norms for raw radii, matrix singular values for
  \(H_M\), and coefficient tensor Frobenius geometry for
  \(\mathscr S_0\) and \(\widehat D_0\).
- Admissibility conditions and auxiliary tolerances: exactly
  \((A,B,C)\in\mathcal E_{\rm cond}\); there is no new threshold or tolerance.
- Term absorption or simplification inequalities: None. All conclusions use
  equalities; the singular interval is transferred exactly by reciprocal.
- Probability conversion: a finite union of \(3k\) Gaussian singleton-zero
  events still has probability zero. No polynomial failure budget is spent in
  this step.
- Contribution to any Rate Specialization Bridge: supplies the exact
  fixed-target-leverage input for `step_003` through `step_006`; it does not
  prove their concentration or Haar conclusions.
- Baseline-reduction check: before balancing, set every \(s_i^m=1\) and the
  representation reduces exactly to
  \(\widetilde\zeta_i^M=n^{-1/2}H_Mz_i^M\). Balancing preserves each physical
  rank-one product and each raw coefficient rank-one product exactly, while
  normalization changes only the certificate coordinates by the displayed
  deterministic factors. Thus the raw \(D_r\), \(\widehat D_0\), tangent
  range, and residual target are preserved without a surrogate or remainder.

## Blockers

None.

## Notation And Assumption Notes

- The mode dictionary \((A,x,\alpha),(B,y,\beta),(C,z,\gamma)\) only resolves
  the distinction between a factor matrix \(M\), its physical initialization
  mode \(m\), and its coefficient vector \(\zeta^M\).
- \(\kappa_1=2\kappa^2\) is `public-facing` and inherited from the setting and
  the accepted `step_001` dependency. No new conditioning constant is
  introduced.
- \(H_M=V_M\Sigma_M^{-1}\), \(z_i^M=U_M^{\mathsf T}g_i^m\), and
  \(s_i^m\) are `public-facing` because they are the exact downstream
  Gaussianization interface required by `step_003` through `step_006`.
  Their provenance is respectively the compact SVD of a dependency-conditioned
  factor, the primitive raw Gaussian initialization, and the setting-defined
  balancing map.
- The compact-SVD factors \(U_M,\Sigma_M,V_M\) are `appendix-local`.
  Full column rank and all singular bounds come from the accepted dependency;
  no SVD choice is an additional assumption.
- The standardized raw vectors \(g_i^m\), radii \(\chi_i^m\), directions
  \(\omega_i^m\), raw coefficients \(\widetilde\zeta_i^M\), and baseline
  blocks \(\mathcal B_i^m\) are `proof-local`. Each is explicitly defined from
  setting objects or the compact-SVD representation and exports no additional
  theorem-facing dictionary.
- \(\bar\zeta_i^M\), \(\mathscr S_0\), and \(\widehat D_0\) are
  `public-facing` setting objects. The proof distinguishes the normalization
  identity (7) from product invariance (6): \(\widehat D_0\) is built from
  unnormalized balanced coefficients and is not silently replaced by the
  tensor of normalized coefficients.
- The zero-factor branch is a `proof-local` convention required by the exact
  definition of \(\mathcal G\). Its nullity is proved from the primitive
  Gaussian law; assigning all three scalars one makes every algebraic identity
  valid even there.
- Assumption provenance is complete: iid raw vectors and their independence
  from smoothing are primitive under
  Assumption~\ref{assump:independent_initialization};
  \(\mathcal E_{\rm cond}\), full column rank, and the singular/pseudoinverse
  bounds are accepted derived outputs of `step_001`; positivity of radii,
  nonvanishing of balancing factors, the coefficient law, and both invariances
  are proved in this step. No generated Gram, Haar, rank, or tangent-deficit
  event is assumed.
- The scalars \(s_i^m\) depend on full raw radii and need not be independent
  of \(z_i^M\). The exact pair-range and triple-product cancellations are the
  complete downstream reason this dependence is harmless.
- Baseline/raw-target preservation is exact: balancing leaves each physical
  and coefficient rank-one product unchanged; normalized coordinates are used
  only for certificate geometry; \(D_r\), \(\widehat D_0\), and the physical
  residual metric remain raw.
- The accepted `global_proof.md` was consulted only after its paired
  `global_proof_review.md` was confirmed `ACCEPTED`. Its B02 discussion was
  used only to plan the compact-SVD/scalar split and the downstream interface.
  It was not used as proof evidence, a cited result, an assumption source, or
  authority to alter the target claim.
