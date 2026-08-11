# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_005`
- Unit attempt: 2

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_005` | Prove exact raw/normalized Gram and span identities and quotient-range compatibility. | `step_002` | Definitions from `setting.md` | Exact scaling and gauge range. | Direct algebra. | Raw bridge and exact `S_0`. | Baseline invariance. | PENDING |

Concretely, this step proves, for all three mode pairs,
\[
  G_{\rm raw}^{\beta\gamma}=\left(\frac rn\right)^2
      G_{\rm norm}^{\beta\gamma},\qquad
  G_{\rm raw}^{\alpha\gamma}=\left(\frac rn\right)^2
      G_{\rm norm}^{\alpha\gamma},\qquad
  G_{\rm raw}^{\alpha\beta}=\left(\frac rn\right)^2
      G_{\rm norm}^{\alpha\beta},
\]
the exact range equality
\[
  \mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}=\mathscr S_0,
\]
and the following precise quotient-range compatibility. On the almost-sure
branch on which every component coefficient triple is nonzero, the local
scaling-gauge kernel is exactly two-dimensional for every component, and
quotienting those two directions leaves the range unchanged. On every branch,
including every zero-vector branch, quotienting by the possibly
lower-dimensional canonical gauge image leaves the same range. The bridge is
purely algebraic and keeps the target \(D_r\), the represented coefficient
tensor \(\widehat D_0\), the coefficient residual \(D_r-\widehat D_0\), and
the physical Frobenius metric in their raw conventions.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - None of the six technical `assump:*` conditions is used directly. The
    proof uses only the setting definitions, in particular \(n,r\ge1\) and
    \(\bar\alpha_{i,0}=\sqrt{n/r}\,\alpha_{i,0}\), with the analogous
    identities in the other two modes.
- Derived invariants supplied by accepted dependencies:
  - The accepted Lemma~\ref{lem:step-002-coefficient-gaussianization} and
    Proposition~\ref{prop:step-002-balancing-invariance} from `step_002`
    supply the well-defined raw coefficient vectors on
    \(\mathcal E_{\rm cond}\), the exact setting-defined normalized vectors,
    and exact preservation of the raw \(\widehat D_0\). The Gaussianization
    formula, invertibility of \(H_M\), nonvanishing of the balancing scalars,
    and the standard Gaussian law show that all \(3k\) coefficient vectors
    are nonzero on an almost-sure branch. The dependency's algebraic scalar
    extension also keeps every formula meaningful on the exceptional
    zero-vector branches. The dependency keeps \(D_r\) untouched.
- Local conditional hypotheses: None. Every scaling and range identity below
  is pointwise. The exact two-dimensional identification of each local gauge
  kernel is used only on the dependency-supplied almost-sure nonzero branch.
  Every exceptional branch is handled by the exact kernel and canonical
  gauge-image dimension table in
  Lemma~\ref{lem:step-005-gauge-kernel}; the all-branch quotient uses that
  possibly lower-dimensional image.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_002/proof.md`;
  - `perspective_3/idea_3/proof_steps/step_002/review.md`, whose status is
    `ACCEPTED` for sketch attempt 10 and unit attempt 1.

No normalized Gram event, spectral window, full-row-rank event, Haar
factorization, or probability estimate is assumed or proved here.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under the setting definitions, accepted Lemma~\ref{lem:step-002-coefficient-gaussianization}, and accepted Proposition~\ref{prop:step-002-balancing-invariance}, every raw pair matrix equals \(r/n\) times its normalized counterpart, and hence every raw pair Gram equals \((r/n)^2\) times its normalized counterpart, in all three mode pairs and on every branch. | Proves the exact three-pair Gram identities without a spectral or probabilistic claim. |
| `unit_002` | proposition | Under the setting definitions, accepted Lemma~\ref{lem:step-002-coefficient-gaussianization}, and accepted Proposition~\ref{prop:step-002-balancing-invariance}, the raw and normalized tangent synthesis maps satisfy \(\mathcal T_{\rm raw}=(r/n)\mathcal T_{\rm norm}\); their ranges are exactly \(\mathscr S_0^{\rm raw}\) and \(\mathscr S_0^{\rm norm}\), so both equal \(\mathscr S_0\), and their full kernels agree. | Proves the exact raw/normalized tangent-span equality and fixes the unreduced synthesis convention. |
| `unit_003` | lemma | Under the setting definitions, accepted Lemma~\ref{lem:step-002-coefficient-gaussianization}, and accepted Proposition~\ref{prop:step-002-balancing-invariance}, the local kernel equals the two-dimensional canonical gauge image on the almost-sure nonzero branch; on zero branches, the exact local kernel and gauge-image dimensions are \(2r/2\), \(3r/1\), or \(3r/0\), according to whether exactly one, exactly two, or all three coefficient vectors vanish. | Defines the exact regular and degenerate gauge-null structure needed for quotienting. |
| `unit_004` | proposition | Under the setting definitions, accepted Lemma~\ref{lem:step-002-coefficient-gaussianization}, accepted Proposition~\ref{prop:step-002-balancing-invariance}, and the preceding named local results, both synthesis maps factor through the quotient by the branch-dependent canonical gauge image. The quotient map, the unreduced tangent generator frame, and any complement-based reduced parameter frame have the same image range \(\mathscr S_0\); no injectivity is claimed without quotienting by the full kernel. Moreover \(\widehat D_0\in\mathscr S_0\), while the raw target, coefficient residual, and physical metric remain unchanged. | Proves quotient-range compatibility and exports only the exact interfaces consumed by `step_006` and `step_009`. |

Atomic step = no. Pair-Gram scaling, synthesis-map scaling, identification of
the local gauge kernel, and passage to the global quotient are independent
algebraic obligations and are audited separately.

## Cited Result Applications

### Accepted dependency: balanced coefficient interface and raw invariance

**Source and restated statement.** The accepted
Lemma~\ref{lem:step-002-coefficient-gaussianization} and
Proposition~\ref{prop:step-002-balancing-invariance} state, conditional on a
realized triple in the dependency-produced \(\mathcal E_{\rm cond}\), that the
raw balanced coefficient vectors
\(\alpha_{i,0},\beta_{i,0},\gamma_{i,0}\) are well defined and that the
setting normalization is exactly
\[
  \bar\alpha_{i,0}=\sqrt{\frac nr}\,\alpha_{i,0},\qquad
  \bar\beta_{i,0}=\sqrt{\frac nr}\,\beta_{i,0},\qquad
  \bar\gamma_{i,0}=\sqrt{\frac nr}\,\gamma_{i,0}.
\]
The dependency proves that the coefficient vectors are nonzero on its regular
branch, handles its exceptional zero-vector branch by an exact scalar
extension, preserves
\(\widehat D_0=\sum_i\alpha_{i,0}\otimes\beta_{i,0}\otimes\gamma_{i,0}\),
and does not normalize \(D_r\).

**Instantiated objects and discharge.** Units 1--4 use exactly these raw and
normalized coefficient vectors. The regular-branch nonvanishing is used only
to identify each local kernel as exactly two-dimensional. All range and
quotient conclusions are also proved directly on exceptional branches, so no
branch is removed from the algebra. The dependency's previously proved span
invariance is not used as a substitute for the synthesis-map derivation below.

### Local result applications

- Lemma~\ref{lem:step-005-pair-gram-scaling} supplies the three exact Gram
  identities exported with the raw bridge.
- Proposition~\ref{prop:step-005-synthesis-scaling} supplies the exact
  synthesis-map, range, and kernel equalities used to compare the raw and
  normalized quotient maps.
- Lemma~\ref{lem:step-005-gauge-kernel} supplies the canonical component
  gauge images, the exact almost-sure nonzero-branch kernels, and the complete
  zero-branch kernel/gauge-image dimension table.
- Proposition~\ref{prop:step-005-quotient-range} combines those facts to
  identify the unreduced and quotient ranges and to establish
  \(\widehat D_0\in\mathscr S_0\).

No external paper result or probabilistic result is used.

## Local Derivation

### unit_001: lemma

**Lemma (Exact scaling of all three pair Grams).**
\label{lem:step-005-pair-gram-scaling}
Under the setting definitions, accepted
Lemma~\ref{lem:step-002-coefficient-gaussianization}, and accepted
Proposition~\ref{prop:step-002-balancing-invariance}, define
\[
\begin{aligned}
  K_{\rm raw}^{\beta\gamma}
    &=[\,\beta_{1,0}\otimes\gamma_{1,0}\ \cdots\
          \beta_{k,0}\otimes\gamma_{k,0}\,],\\
  K_{\rm raw}^{\alpha\gamma}
    &=[\,\alpha_{1,0}\otimes\gamma_{1,0}\ \cdots\
          \alpha_{k,0}\otimes\gamma_{k,0}\,],\\
  K_{\rm raw}^{\alpha\beta}
    &=[\,\alpha_{1,0}\otimes\beta_{1,0}\ \cdots\
          \alpha_{k,0}\otimes\beta_{k,0}\,],
\end{aligned}
\]
and define the normalized matrices by replacing every coefficient vector by
its barred version. For every pair
\(pq\in\{\beta\gamma,\alpha\gamma,\alpha\beta\}\), let
\(G_{\rm raw}^{pq}=(K_{\rm raw}^{pq})^{\mathsf T}K_{\rm raw}^{pq}\) and
\(G_{\rm norm}^{pq}=(K_{\rm norm}^{pq})^{\mathsf T}K_{\rm norm}^{pq}\).
Then, pointwise on every branch,
\[
  K_{\rm raw}^{pq}=\frac rn K_{\rm norm}^{pq},
  \qquad
  \boxed{G_{\rm raw}^{pq}=\left(\frac rn\right)^2G_{\rm norm}^{pq}}
  \quad
  \bigl(pq=\beta\gamma,\alpha\gamma,\alpha\beta\bigr).
\]

**Proof / justification.** Put \(c=\sqrt{n/r}>0\). The setting definitions
give \(\bar\alpha_{i,0}=c\alpha_{i,0}\),
\(\bar\beta_{i,0}=c\beta_{i,0}\), and
\(\bar\gamma_{i,0}=c\gamma_{i,0}\). Thus, for example,
\[
  \beta_{i,0}\otimes\gamma_{i,0}
  =c^{-2}(\bar\beta_{i,0}\otimes\bar\gamma_{i,0})
  =\frac rn(\bar\beta_{i,0}\otimes\bar\gamma_{i,0}).
\]
The identical calculation applies to the other two pairs, proving the matrix
identity column by column. Taking transpose times the matrix gives
\[
  (K_{\rm raw}^{pq})^{\mathsf T}K_{\rm raw}^{pq}
  =\left(\frac rn\right)^2
    (K_{\rm norm}^{pq})^{\mathsf T}K_{\rm norm}^{pq}.
\]
No division by a coefficient vector occurs, so the calculation remains valid
when a pair column is zero. This proves the lemma. \(\square\)

### unit_002: proposition

**Proposition (Exact scaling and range of the tangent synthesis maps).**
\label{prop:step-005-synthesis-scaling}
Under the setting definitions, accepted
Lemma~\ref{lem:step-002-coefficient-gaussianization}, and accepted
Proposition~\ref{prop:step-002-balancing-invariance}, let
\[
  \mathcal P=\bigoplus_{i=1}^k
    (\mathbb R^r\oplus\mathbb R^r\oplus\mathbb R^r)
\]
and write \(p=((u_i,v_i,w_i))_{i=1}^k\in\mathcal P\). Define the raw and
normalized tangent synthesis maps into
\(\mathcal H=(\mathbb R^r)^{\otimes3}\) by
\[
\begin{aligned}
  \mathcal T_{\rm raw}p
  &=\sum_{i=1}^k\bigl(
      u_i\otimes\beta_{i,0}\otimes\gamma_{i,0}
      +\alpha_{i,0}\otimes v_i\otimes\gamma_{i,0}
      +\alpha_{i,0}\otimes\beta_{i,0}\otimes w_i\bigr),\\
  \mathcal T_{\rm norm}p
  &=\sum_{i=1}^k\bigl(
      u_i\otimes\bar\beta_{i,0}\otimes\bar\gamma_{i,0}
      +\bar\alpha_{i,0}\otimes v_i\otimes\bar\gamma_{i,0}
      +\bar\alpha_{i,0}\otimes\bar\beta_{i,0}\otimes w_i\bigr).
\end{aligned}
\]
Then, pointwise on every branch,
\[
  \boxed{\mathcal T_{\rm raw}=\frac rn\mathcal T_{\rm norm}},
  \qquad
  \operatorname{range}(\mathcal T_{\rm raw})
    =\mathscr S_0^{\rm raw},
  \qquad
  \operatorname{range}(\mathcal T_{\rm norm})
    =\mathscr S_0^{\rm norm}.
\]
Consequently,
\[
  \boxed{\mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}=\mathscr S_0},
  \qquad
  \ker(\mathcal T_{\rm raw})=\ker(\mathcal T_{\rm norm}).
\]

**Proof / justification.** With \(c=\sqrt{n/r}\), every normalized tangent
summand contains exactly two barred coefficient vectors and therefore equals
\(c^2=n/r\) times the corresponding raw summand. Summing over components
gives \(\mathcal T_{\rm norm}=(n/r)\mathcal T_{\rm raw}\), equivalently the
boxed map identity. The scalar \(r/n\) is nonzero.

Every image of \(\mathcal T_{\rm raw}\) is a finite sum of generators in the
definition of \(\mathscr S_0^{\rm raw}\), so its range is contained in that
span. Conversely, each displayed raw generator is obtained by setting exactly
one of the variables \(u_i,v_i,w_i\) and setting all other variables to zero.
Hence the range is the full displayed span. The normalized case is identical.
Multiplication of a linear map by a nonzero scalar changes neither its range
nor its kernel, proving both final equalities. Zero coefficient vectors merely
remove zero generators from both maps and do not affect any argument. This
proves the proposition. \(\square\)

### unit_003: lemma

**Lemma (Exact component gauge kernels and canonical gauge images).**
\label{lem:step-005-gauge-kernel}
Under the setting definitions, accepted
Lemma~\ref{lem:step-002-coefficient-gaussianization}, and accepted
Proposition~\ref{prop:step-002-balancing-invariance}, let
\[
  a_i=\alpha_{i,0},\qquad b_i=\beta_{i,0},\qquad c_i=\gamma_{i,0},
\]
and let \(\mathcal T_{{\rm raw},i}\) denote the \(i\)-th summand map. Define
the canonical gauge map and its image by
\[
\begin{aligned}
  \Gamma_i(\lambda,\mu)
  &=\lambda(a_i,-b_i,0)+\mu(a_i,0,-c_i),\\
  \mathfrak n_i&=\operatorname{image}(\Gamma_i).
\end{aligned}
\]
Then \(\mathfrak n_i\subseteq\ker(\mathcal T_{{\rm raw},i})\) on every
branch. On the almost-sure branch supplied by
Lemma~\ref{lem:step-002-coefficient-gaussianization}, where
\(a_i,b_i,c_i\ne0\),
\[
  \ker(\mathcal T_{{\rm raw},i})
  =\{(\lambda a_i,\mu b_i,\nu c_i):\lambda+\mu+\nu=0\}
  =\mathfrak n_i,\qquad \dim\mathfrak n_i=2.
\]
On all branches the exact classification is:

| Branch | Local synthesis map | Local kernel | Kernel dimension | \(\dim\mathfrak n_i\) |
| --- | --- | --- | --- | --- |
| \(a_i,b_i,c_i\ne0\) | Full three-term map | \(\{(\lambda a_i,\mu b_i,\nu c_i):\lambda+\mu+\nu=0\}\) | \(2\) | \(2\) |
| \(a_i=0,\ b_i,c_i\ne0\) | \(u\otimes b_i\otimes c_i\) | \(\{0\}\oplus\mathbb R^r\oplus\mathbb R^r\) | \(2r\) | \(2\) |
| \(b_i=0,\ a_i,c_i\ne0\) | \(a_i\otimes v\otimes c_i\) | \(\mathbb R^r\oplus\{0\}\oplus\mathbb R^r\) | \(2r\) | \(2\) |
| \(c_i=0,\ a_i,b_i\ne0\) | \(a_i\otimes b_i\otimes w\) | \(\mathbb R^r\oplus\mathbb R^r\oplus\{0\}\) | \(2r\) | \(2\) |
| \(a_i\ne0,\ b_i=c_i=0\) | \(0\) | \((\mathbb R^r)^3\) | \(3r\) | \(1\) |
| \(b_i\ne0,\ a_i=c_i=0\) | \(0\) | \((\mathbb R^r)^3\) | \(3r\) | \(1\) |
| \(c_i\ne0,\ a_i=b_i=0\) | \(0\) | \((\mathbb R^r)^3\) | \(3r\) | \(1\) |
| \(a_i=b_i=c_i=0\) | \(0\) | \((\mathbb R^r)^3\) | \(3r\) | \(0\) |

The normalized gauge map is
\(\Gamma_i^{\rm norm}=\sqrt{n/r}\,\Gamma_i\), so its image is the same
\(\mathfrak n_i\), and the normalized and raw local kernels agree.

**Proof / justification.** Direct substitution gives
\[
\begin{aligned}
  \mathcal T_{{\rm raw},i}(a_i,-b_i,0)
  &=a_i\otimes b_i\otimes c_i-a_i\otimes b_i\otimes c_i=0,\\
  \mathcal T_{{\rm raw},i}(a_i,0,-c_i)
  &=a_i\otimes b_i\otimes c_i-a_i\otimes b_i\otimes c_i=0.
\end{aligned}
\]
This proves the all-branch inclusion without a nonvanishing assumption.

Now suppose \(a_i,b_i,c_i\ne0\) and
\(\mathcal T_{{\rm raw},i}(u,v,w)=0\). Choose linear functionals
\(b_i^*,c_i^*\) with \(b_i^*(b_i)=c_i^*(c_i)=1\), and let
\(P_{a_i^\perp}\) be orthogonal projection onto \(a_i^\perp\). Applying
\(P_{a_i^\perp}\otimes b_i^*\otimes c_i^*\) gives
\(u=\lambda a_i\). Repeating in the other modes gives
\(v=\mu b_i\) and \(w=\nu c_i\). Substitution yields
\[
  (\lambda+\mu+\nu)a_i\otimes b_i\otimes c_i=0.
\]
The rank-one tensor is nonzero, so \(\lambda+\mu+\nu=0\). Conversely, every
such triple is killed by the map, and
\[
  (\lambda a_i,\mu b_i,\nu c_i)
  =-\mu(a_i,-b_i,0)-\nu(a_i,0,-c_i)
\]
proves equality with \(\mathfrak n_i\). The two
generators are independent because all three coefficient vectors are nonzero.

If exactly one fixed vector is zero, the table's displayed one-term map
survives and vanishes exactly when its free vector is zero; the two columns of
\(\Gamma_i\) remain independent. If exactly two fixed vectors are zero, the
local map is zero and the gauge image is the one-dimensional span of the
surviving block vector. If all three vanish, both maps vanish. These
observations prove the remaining table rows. The normalized conclusions follow
from the common nonzero normalization scalar and
Proposition~\ref{prop:step-005-synthesis-scaling}. \(\square\)

### unit_004: proposition

**Proposition (Gauge quotient, unreduced range, and raw-target compatibility).**
\label{prop:step-005-quotient-range}
Under the setting definitions, accepted
Lemma~\ref{lem:step-002-coefficient-gaussianization}, accepted
Proposition~\ref{prop:step-002-balancing-invariance},
Proposition~\ref{prop:step-005-synthesis-scaling}, and
Lemma~\ref{lem:step-005-gauge-kernel}, embed each \(\mathfrak n_i\) in the
\(i\)-th parameter block and define
\[
  \mathfrak N_{\rm can}=\bigoplus_{i=1}^k\mathfrak n_i\subseteq\mathcal P,
  \qquad \mathcal Q_{\rm can}=\mathcal P/\mathfrak N_{\rm can}.
\]
Then both synthesis maps factor uniquely through the quotient map
\(\pi_{\rm can}:\mathcal P\to\mathcal Q_{\rm can}\):
\[
  \widetilde{\mathcal T}_{\rm raw}([p])=\mathcal T_{\rm raw}p,
  \qquad
  \widetilde{\mathcal T}_{\rm norm}([p])=\mathcal T_{\rm norm}p.
\]
These induced maps satisfy
\[
\begin{aligned}
  \operatorname{range}(\widetilde{\mathcal T}_{\rm raw})
  &=\operatorname{range}(\mathcal T_{\rm raw})
   =\mathscr S_0,\\
  \operatorname{range}(\widetilde{\mathcal T}_{\rm norm})
  &=\operatorname{range}(\mathcal T_{\rm norm})
   =\mathscr S_0,\\
  \widetilde{\mathcal T}_{\rm raw}
  &=\frac rn\widetilde{\mathcal T}_{\rm norm}.
\end{aligned}
\]
On the almost-sure all-nonzero branch,
\(\dim\mathfrak N_{\rm can}=2k\), so this is exactly the accepted
two-gauge-directions-per-component quotient. On every zero branch it is the
quotient by the branch-dependent, possibly lower-dimensional canonical gauge
image. If
\(\mathcal P=\mathfrak N_{\rm can}\oplus\mathcal C_{\rm can}\), call a basis
of \(\mathcal C_{\rm can}\) a reduced parameter frame. Its synthesized
columns have image range \(\mathscr S_0\), but no injectivity or linear
independence is claimed. Furthermore,
\[
  \boxed{\widehat D_0\in\mathscr S_0}.
\]
All these are raw coefficient-space statements: \(D_r\) is unchanged,
\(D_r-\widehat D_0\) is the raw coefficient residual in the Frobenius inner
product on \(\mathcal H\), and the physical loss remains the setting's
\(\|T-S(X,Y,Z)\|_F^2\) with no normalization.

**Proof / justification.** Lemma~\ref{lem:step-005-gauge-kernel} gives
\(\mathfrak n_i\subseteq\ker(\mathcal T_{{\rm raw},i})\) for each component.
Because the global map is the sum of its local maps,
\(\mathfrak N_{\rm can}\subseteq\ker(\mathcal T_{\rm raw})\).
Proposition~\ref{prop:step-005-synthesis-scaling} then gives
\(\mathfrak N_{\rm can}\subseteq\ker(\mathcal T_{\rm norm})\). Hence
the two formulas on cosets are well defined: replacing \(p\) by \(p+g\),
\(g\in\mathfrak N_{\rm can}\), does not change either image.

The quotient map \(\pi_{\rm can}\) is surjective, so every quotient image is an
unreduced image and every unreduced image is the image of the coset of its
parameter. Therefore
\[
  \operatorname{range}(\widetilde{\mathcal T}_{\rm raw})
  =\operatorname{range}(\mathcal T_{\rm raw}),
  \qquad
  \operatorname{range}(\widetilde{\mathcal T}_{\rm norm})
  =\operatorname{range}(\mathcal T_{\rm norm}).
\]
The remaining range and scaling identities follow from
Proposition~\ref{prop:step-005-synthesis-scaling}. If
\(\mathcal P=\mathfrak N_{\rm can}\oplus\mathcal C_{\rm can}\), then for
\(p=g+c\),
\(\mathcal T_{\rm raw}p=\mathcal T_{\rm raw}c\); hence restriction to any
such complement, and thus any reduced parameter frame, has the same image
range as the unreduced generator frame. Additional kernel vectors may remain
in \(\mathcal C_{\rm can}\), so no basis or injectivity claim is made. An
actual tangent-space basis would instead use the full common kernel
\(\ker(\mathcal T_{\rm raw})=\ker(\mathcal T_{\rm norm})\).

For membership of the represented raw coefficient tensor, take
\(p_{\widehat D}=((\alpha_{i,0},0,0))_{i=1}^k\). Then
\[
  \mathcal T_{\rm raw}p_{\widehat D}
  =\sum_{i=1}^k
    \alpha_{i,0}\otimes\beta_{i,0}\otimes\gamma_{i,0}
  =\widehat D_0,
\]
so \(\widehat D_0\in\operatorname{range}(\mathcal T_{\rm raw})=\mathscr S_0\),
including on every zero branch. Neither the quotient nor the coefficient
normalization acts on \(D_r\), and no map in this step acts on the physical
tensor space. This proves every raw-target and metric convention in the
statement. \(\square\)

The global kernel of \(\mathcal T_{\rm raw}\) can contain additional
cross-component linear dependencies. No equality
\(\ker(\mathcal T_{\rm raw})=\mathfrak N_{\rm can}\) is claimed or needed.
On the almost-sure nonzero branch the canonical image removes exactly two
local gauge directions per component; on zero branches its dimension is the
one in Lemma~\ref{lem:step-005-gauge-kernel}. In every case, inclusion in the
full kernel is the precise condition that preserves the range.

## Target-Step Assembly

Lemma~\ref{lem:step-005-pair-gram-scaling} applies the setting normalization
column by column to all three Khatri--Rao pair matrices and proves exactly
\[
  G_{\rm raw}^{pq}=\left(\frac rn\right)^2G_{\rm norm}^{pq},
  \qquad pq\in\{\beta\gamma,\alpha\gamma,\alpha\beta\}.
\]
It makes no claim about eigenvalues, concentration, or a Gram event.

Proposition~\ref{prop:step-005-synthesis-scaling} defines the unreduced raw
and normalized tangent synthesis maps and proves the exact nonzero scalar
identity between them. Their ranges are, by direct two-sided comparison with
the setting generators, precisely \(\mathscr S_0^{\rm raw}\) and
\(\mathscr S_0^{\rm norm}\). This yields
\(\mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}=\mathscr S_0\) without a
surrogate span or metric change.

Lemma~\ref{lem:step-005-gauge-kernel} identifies the exact two-dimensional
local scaling kernel on the dependency-supplied almost-sure nonzero branch and
gives the exact kernel and canonical gauge-image dimensions on every zero
branch.
Proposition~\ref{prop:step-005-quotient-range} then factors both synthesis
maps through the canonical-image quotient. On the nonzero branch this removes
exactly two gauge directions per component; on every branch the quotient,
unreduced generator frame, and complement-based reduced parameter frame have
the same image range \(\mathscr S_0\), with no injectivity claim. The same
proposition proves the exact downstream membership
\(\widehat D_0\in\mathscr S_0\).

Thus the exact sketch-row claim is proved. The interface exported to
`step_006` is only the exact raw/normalized and quotient range
\(\mathscr S_0\); the interface exported to `step_009` is that same raw span,
the exact membership \(\widehat D_0\in\mathscr S_0\), and the unchanged raw
target/residual/Frobenius conventions. No probability, Gram concentration,
full-rank Gaussian-array, Haar, projection-energy, or deficit conclusion is
asserted.

## Explicit Rate Audit

- Exposed variables: \(n,r\) only through the exact nonzero factors
  \(\sqrt{n/r}\), \(r/n\), and \((r/n)^2\); the finite component count \(k\)
  only indexes direct sums and matrix columns.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(n,r,k\), the realized factors, the
  initialization, or any later random orientation.
- Fixed quantities: an arbitrary coefficient realization admitted by accepted
  Lemma~\ref{lem:step-002-coefficient-gaussianization} and accepted
  Proposition~\ref{prop:step-002-balancing-invariance}.
- Probability mode: deterministic, pointwise algebra. The dependency's
  exceptional zero branches are retained rather than discarded, and this
  step spends no failure probability.
- Horizon mode: initialization-only, before any GD update.
- Norm mode: coefficient tensor Frobenius geometry for \(\mathscr S_0\),
  \(D_r\), \(\widehat D_0\), and \(D_r-\widehat D_0\); the physical objective
  remains the unscaled physical tensor Frobenius loss.
- Admissibility conditions and auxiliary tolerances: None beyond the accepted
  coefficient interface and \(n,r>0\).
- Term absorption or simplification inequalities: None; every bridge is an
  equality.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: the normalized Gram window,
  if later available, converts to the raw window only by the exact factor
  \((r/n)^2\). This step proves no window itself.
- Baseline-reduction check: setting the normalization factor to one
  (\(n=r\)) makes raw and normalized pair matrices, Grams, and synthesis maps
  identical. For general \(n,r\), only certificate coordinates change;
  \(D_r\), \(\widehat D_0\), the raw coefficient residual, and the physical
  metric are exactly preserved.

## Blockers

None.

## Notation And Assumption Notes

- The pair matrices and Grams are `public-facing` setting objects. This step
  exports only their three exact scaling identities, not spectral bounds or
  events.
- \(\mathscr S_0\), \(D_r\), and \(\widehat D_0\) are `public-facing`
  setting objects. The exact public downstream interface is
  \[
    \operatorname{range}(\mathcal T_{\rm raw})
    =\operatorname{range}(\mathcal T_{\rm norm})
    =\operatorname{range}(\widetilde{\mathcal T}_{\rm raw})
    =\operatorname{range}(\widetilde{\mathcal T}_{\rm norm})
    =\mathscr S_0,
    \qquad \widehat D_0\in\mathscr S_0.
  \]
- The parameter space \(\mathcal P\), synthesis maps
  \(\mathcal T_{\rm raw},\mathcal T_{\rm norm}\), gauge maps \(\Gamma_i\),
  canonical images \(\mathfrak n_i,\mathfrak N_{\rm can}\), quotient
  \(\mathcal Q_{\rm can}\), quotient map \(\pi_{\rm can}\), and induced maps
  are `appendix-local`. They provide a precise
  proof of the range interface but need not appear in the public theorem.
- The normalization scalar \(\sqrt{n/r}\), local contraction functionals,
  orthogonal projections, the complement \(\mathcal C_{\rm can}\), and the parameter
  \(p_{\widehat D}\) are `proof-local`, directly defined from setting
  quantities. No new constant, threshold, event, radius, or tolerance is
  introduced.
- The canonical global gauge image \(\mathfrak N_{\rm can}\) is distinct from
  the setting's balancing map \(\mathcal G\). It is not asserted to be the
  full global synthesis kernel. A complement basis is only a reduced parameter
  frame; its synthesized columns need not be independent.
- Assumption provenance is complete: coefficient existence and the regular
  versus zero-branch convention are accepted derived outputs of `step_002`;
  every Gram, span, kernel, quotient, and membership statement is proved in
  this step. No generated Gram, rank, Haar, leverage, deficit, or path event is
  assumed.
- Raw/normalized convention: normalization acts only on
  \(\alpha_{i,0},\beta_{i,0},\gamma_{i,0}\) inside certificate geometry.
  It never acts on \(D_r\), never replaces the raw
  \(\widehat D_0\), never changes the coefficient Frobenius pairing with
  \(D_r-\widehat D_0\), and never changes the physical loss metric.
- The accepted `global_proof.md` was consulted only after its paired
  `global_proof_review.md` was confirmed `ACCEPTED`. Its B05 discussion was
  used only to plan the synthesis/gauge split and the exact downstream
  interface. It was not used as proof evidence, a cited result, an assumption
  source, or authority to alter the target claim.
