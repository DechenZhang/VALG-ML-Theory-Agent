# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_001`
- Unit attempt: 1
- Setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Accepted sketch SHA-256: `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4`
- Accepted sketch-review SHA-256: `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9`
- Accepted global diagnostic SHA-256: `bb35e66556b216cac02945e249c92fac526b5b021104daa0f32b0ce7691a22fc`
- Accepted global-review SHA-256: `c990e29c701a493a71e87aef1aa5c099ed26c6f8132a03f15bc0c7e5fb3c0146`

## Target Step Claim

The exact accepted sketch row is:

- Intended claim: Prove \(F_{j_*}=1\Rightarrow F\neq0\),
  \(\sup_\Theta\lVert B\rVert_{\mathrm{op}}\leq\widehat\Lambda_{B,T}\), and, when
  \(F_0=0\), \(F'=B_FF\),
  \(\gamma_F'=(I-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F\), and
  \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda_{B,T}\).
- Depends on: None
- Assumptions used: Primitive: `assump:parameter-regime`,
  `assump:balcan-common-chain`, `assump:anchored-derivative-closure`
- Technical challenge: Preserve the exact \(T,m,N\) coefficient-height dependence and obtain a genuine
  normalization denominator from the anchor without assuming projective regularity.
- Intended proof tool or cited result: Direct coefficient evaluation, Frobenius/operator comparison,
  homogeneous block extraction, and normalized-vector differentiation in the exact Balcan \(p=1\) convention.
- Output target: Static certificate, nonvanishing, and homogeneous projective interface.
- Rate objective: R1 and R5: literal certificate; degree-zero additional \(q,M,\Delta\) dependence; exact monic
  and \(1/\delta\) specializations retained.
- Row-local review status: `PENDING`. Sketch-level acceptance is supplied by the current accepted
  `proof_sketch_review.md`, as required by the workflow contract.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: \(N\geq1\), \(m\geq0\), \(T>0\),
    \(\Theta\subseteq[-T,T]\), and all displayed matrix coefficients are finite fixed data. This supplies the
    index ranges and the bound on \(\theta\).
  - `assump:balcan-common-chain`: the feature tuple uses the exact common-chain convention at \(p=1\). This
    supplies the branch's feature convention and differentiability; no numerical estimate below depends on
    \(q,M,\Delta\) once \(B\) is fixed.
  - `assump:anchored-derivative-closure`: \(Q_{j_*}\equiv1\) for a fixed
    \(j_*\in\{1,\ldots,N\}\), and \(\widetilde F'=B\widetilde F\) on \(U\), with \(B\) and its coefficient
    list fixed in advance.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: The condition \(F_0\equiv0\) is used only for the homogeneous conclusions
  explicitly conditioned on it in the target row. It is a static specialization of the setting-defined tuple,
  not a generated invariant. The \(q=0\), \(m=0\), constant-matrix, constant-feature, \(N=1\), endpoint,
  zero-height, stationary-projective, monic, and one-entry-shear cases are likewise static or boundary
  specializations used only to audit the accepted row; none is used to prove the general certificate.
- Accepted dependency step proof/review artifacts: None.

No projective-speed, lower-norm, matrix-norm, boundedness, event, or regularity conclusion is assumed. In
particular, the only lower-norm source is the literal anchor, and the bound on \(B\) is proved below from its
coefficients.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, for every \(\theta\in\Theta\), \(F_{j_*}(\theta)=1\), \(\lVert F(\theta)\rVert_2\geq1\), and hence \(F(\theta)\neq0\); consequently \(\gamma_F\) is well-defined and differentiable along \(\Theta\). | Supplies the genuine normalization denominator and nonvanishing interface. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-derivative-closure}, for every \(\theta\in\Theta\), \(\lVert B(\theta)\rVert_{\mathrm{op}}\leq\lVert B(\theta)\rVert_{\mathrm F}\leq\widehat\Lambda_{B,T}\); therefore \(\sup_{\theta\in\Theta}\lVert B(\theta)\rVert_{\mathrm{op}}\leq\widehat\Lambda_{B,T}\), with the literal displayed dependence on \(T,m,N\) and \((b_{rs,\ell})\). | Proves the static coefficient-height certificate. |
| `unit_003` | lemma | Under Assumption~\ref{assump:anchored-derivative-closure}, if \(F_0\equiv0\) and \(B_F\) is the block of \(B\) indexed by \(1,\ldots,N\), then \(F'=B_FF\) on \(\Theta\). | Extracts the exact homogeneous derivative closure without assuming away off-block entries. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and Lemmas~\ref{lem:step-001-anchor}, \ref{lem:step-001-height}, and \ref{lem:step-001-homogeneous-block}, if \(F_0\equiv0\), then \(\gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F\) on \(\Theta\) and \(\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}\). | Proves the normalized-vector identity, finiteness, and projective certificate. |
| `unit_005` | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Lemmas~\ref{lem:step-001-anchor}, \ref{lem:step-001-height}, and \ref{lem:step-001-homogeneous-block}, and Proposition~\ref{prop:step-001-projective}, the conclusions remain valid for \(q=0\), \(m=0\), constant \(B\), constant \(\widetilde F\), \(N=1\), endpoints of \(\Theta\), zero certificate height, and stationary \(\gamma_F\); moreover the literal height is \((\sum_{k=1}^d k^2)^{1/2}\) for the augmented monic shift and \(1/\delta\) for the displayed one-entry shear. | Discharges every accepted boundary, stationary, and baseline-scale obligation without a hidden constant. |

Atomic step = no. The matrix estimate, block extraction, normalized differentiation, and boundary reductions are
independent nontrivial subclaims and are therefore separated above.

## Cited Result Applications

No external paper result or dependency result is used. The elementary standard facts used below are restated in
current notation here; the operator/Frobenius comparison, block-norm comparison, projector bound, and
normalized-vector identity are then derived explicitly. The local results used later in this step are also
restated for auditability.

| Result used later | Restated current-notation conclusion | Instantiated objects | Required assumptions and discharge | Later use |
| ----------------- | ------------------------------------- | -------------------- | ---------------------------------- | --------- |
| Finite-dimensional Cauchy--Schwarz inequality | For real vectors \(u,v\) of the same finite dimension, \(\lvert\sum_s u_sv_s\rvert^2\leq(\sum_s\lvert u_s\rvert^2)(\sum_s\lvert v_s\rvert^2)\). | Each row \((B_{rs}(\theta))_{s=0}^N\) and \(x=(x_s)_{s=0}^N\). | Both are real \((N+1)\)-vectors because `assump:parameter-regime` has finite \(N\) and the supplied coefficients are real. No additional hypothesis is required. | Lemma~\ref{lem:step-001-height}. |
| One-variable product and chain rules | If \(F\) is differentiable and \(r=\lVert F\rVert_2>0\), then \((r^2)'=2\langle F,F'\rangle\) and \((F/r)'=F'/r-Fr'/r^2\). | The setting-defined differentiable curve \(F\) and \(r=\lVert F\rVert_2\). | Differentiability follows from `assump:balcan-common-chain` and the closure identity; Lemma~\ref{lem:step-001-anchor} proves \(r\geq1\). | Proposition~\ref{prop:step-001-projective}. |
| Zero-derivative criterion on an interval | If a differentiable real-valued function on an interval has derivative zero everywhere, it is constant on that interval. | Each coordinate of \(\widetilde F\) on the open interval \(U\). | `assump:parameter-regime` makes \(U\) an interval, and `assump:anchored-derivative-closure` supplies differentiability. | The \(\widehat\Lambda_{B,T}=0\) case in Proposition~\ref{prop:step-001-boundary}. |
| Lemma~\ref{lem:step-001-anchor} (Anchor nonvanishing) | \(F_{j_*}=1\), so \(\lVert F\rVert_2\geq1\) and \(\gamma_F\) is defined on \(\Theta\). | The setting-defined \(F,j_*\), and Euclidean norm. | The anchor is exactly `assump:anchored-derivative-closure`; \(j_*\) is legal because `assump:parameter-regime` has \(N\geq1\); differentiability follows from the common-chain/closure interface. | Proposition~\ref{prop:step-001-projective} and the boundary audit. |
| Lemma~\ref{lem:step-001-height} (Literal coefficient-height matrix certificate) | Pointwise \(\lVert B\rVert_{\mathrm{op}}\leq\widehat\Lambda_{B,T}\), hence the same supremum bound. | The actual polynomial matrix \(B\), actual \(\theta\)-coordinate, and Euclidean norms. | `assump:parameter-regime` gives \(\lvert\theta\rvert\leq T\); `assump:anchored-derivative-closure` supplies the fixed coefficient list defining \(B\). Every norm comparison is proved in the lemma. | Proposition~\ref{prop:step-001-projective} and the boundary/baseline audit. |
| Lemma~\ref{lem:step-001-homogeneous-block} (Homogeneous block extraction) | If \(F_0=0\), then the lower rows of \(\widetilde F'=B\widetilde F\) give \(F'=B_FF\). | The original augmented tuple and the lower principal block \(B_F\). | The local homogeneous condition kills the first coordinate; the closure identity is exactly `assump:anchored-derivative-closure`. | Proposition~\ref{prop:step-001-projective}. |
| Proposition~\ref{prop:step-001-projective} (Normalized derivative and projective certificate) | \(\gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F\) and \(\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}\). | The setting-defined normalized curve, homogeneous block, and projective-speed supremum. | Its statement lists all primitive and prior local inputs; its proof checks the denominator, projector norm, block norm, and supremum. | Target-step assembly and Proposition~\ref{prop:step-001-boundary}. |
| Proposition~\ref{prop:step-001-boundary} (Boundary and baseline consistency) | In each declared degenerate, constant, stationary, or endpoint regime, the relevant general conclusions remain valid; the two required baseline heights are \((\sum_{k=1}^d k^2)^{1/2}\) and \(1/\delta\). | The general certificate, the actual augmented monomial tuple, and the actual one-entry shear tuple. | Direct specialization of Lemmas~\ref{lem:step-001-anchor}, \ref{lem:step-001-height}, and \ref{lem:step-001-homogeneous-block} and Proposition~\ref{prop:step-001-projective}; no later step is used. | Exact-rate audit and target-step assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Anchor nonvanishing).** \(\label{lem:step-001-anchor}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
\ref{assump:anchored-derivative-closure}, for every \(\theta\in\Theta\),

\[
F_{j_*}(\theta)=1,
\qquad
\|F(\theta)\|_2\geq1,
\qquad
F(\theta)\neq0.
\]

Consequently \(\gamma_F=F/\|F\|_2\) is well-defined and differentiable along \(\Theta\).

**Proof / justification.** By the anchored closure assumption, \(Q_{j_*}\equiv1\). Therefore, using the
setting definition of an output feature,

\[
F_{j_*}(\theta)
=Q_{j_*}(\theta,\eta_1(\theta),\ldots,\eta_q(\theta))
=1
\]

for every \(\theta\in U\), and in particular for every \(\theta\in\Theta\). Thus

\[
\|F(\theta)\|_2^2
=\sum_{i=1}^N F_i(\theta)^2
\geq F_{j_*}(\theta)^2
=1.
\]

The common-chain presentation makes the outputs differentiable on \(U\); equivalently, the displayed closure
identity already supplies their derivatives there. Since the denominator is bounded below by one on a
neighborhood of every point of \(\Theta\), normalization is differentiable, including at the endpoints of
\(\Theta\). This proves the lemma. \(\square\)

### unit_002: lemma

**Lemma (Literal coefficient-height matrix certificate).**
\(\label{lem:step-001-height}\)

Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:anchored-derivative-closure}, for every \(\theta\in\Theta\),

\[
\|B(\theta)\|_{\mathrm{op}}
\leq \|B(\theta)\|_{\mathrm F}
\leq \widehat\Lambda_{B,T}.
\]

Consequently

\[
\sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
\leq\widehat\Lambda_{B,T}.
\]

**Proof / justification.** Retain the setting-defined \(T_*:=\max\{1,T\}\), and introduce only for this proof

\[
c_{rs}:=\sum_{\ell=0}^{m}|b_{rs,\ell}|T_*^\ell,
\qquad 0\leq r,s\leq N.
\]

For \(\theta\in\Theta\), \(|\theta|\leq T\leq T_*\). Because \(\ell\) is a nonnegative integer and
\(T_*\geq1\), \(|\theta|^\ell\leq T_*^\ell\) also for \(\ell=0\). Hence, entry by entry,

\[
\begin{aligned}
|B_{rs}(\theta)|
&=\left|\sum_{\ell=0}^{m}b_{rs,\ell}\theta^\ell\right|\\
&\leq\sum_{\ell=0}^{m}|b_{rs,\ell}|\,|\theta|^\ell\\
&\leq\sum_{\ell=0}^{m}|b_{rs,\ell}|T_*^\ell
=c_{rs}.
\end{aligned}
\]

Summing the squared entrywise bounds over exactly the \((N+1)^2\) entries gives

\[
\|B(\theta)\|_{\mathrm F}^2
=\sum_{r=0}^{N}\sum_{s=0}^{N}|B_{rs}(\theta)|^2
\leq\sum_{r=0}^{N}\sum_{s=0}^{N}c_{rs}^2
=\sum_{r=0}^{N}\sum_{s=0}^{N}
\left(\sum_{\ell=0}^{m}|b_{rs,\ell}|T_*^\ell\right)^2
=\widehat\Lambda_{B,T}^2.
\]

For completeness, the operator/Frobenius comparison is also direct. For any
\(x=(x_0,\ldots,x_N)\in\mathbb R^{N+1}\), applying the scalar Cauchy--Schwarz inequality separately in each
row yields

\[
\begin{aligned}
\|B(\theta)x\|_2^2
&=\sum_{r=0}^{N}\left|\sum_{s=0}^{N}B_{rs}(\theta)x_s\right|^2\\
&\leq\sum_{r=0}^{N}
\left(\sum_{s=0}^{N}|B_{rs}(\theta)|^2\right)
\left(\sum_{s=0}^{N}|x_s|^2\right)\\
&=\|B(\theta)\|_{\mathrm F}^2\|x\|_2^2.
\end{aligned}
\]

Taking the supremum over unit vectors proves
\(\|B(\theta)\|_{\mathrm{op}}\leq\|B(\theta)\|_{\mathrm F}\). Combining the two pointwise inequalities and
then taking the supremum over \(\Theta\) proves the lemma. No coefficient, power, matrix entry, or dimensional
factor has been absorbed. \(\square\)

### unit_003: lemma

**Lemma (Homogeneous block extraction).**
\(\label{lem:step-001-homogeneous-block}\)

Under Assumption~\ref{assump:anchored-derivative-closure}, if \(F_0\equiv0\) and \(B_F(\theta)\) denotes the
\(N\times N\) block \((B_{rs}(\theta))_{1\leq r,s\leq N}\), then

\[
F'(\theta)=B_F(\theta)F(\theta)
\qquad\text{for every }\theta\in\Theta.
\]

**Proof / justification.** In the homogeneous specialization,

\[
\widetilde F(\theta)=
\begin{pmatrix}0\\F(\theta)\end{pmatrix},
\qquad
\widetilde F'(\theta)=
\begin{pmatrix}0\\F'(\theta)\end{pmatrix}.
\]

The exact closure identity therefore reads

\[
\begin{pmatrix}0\\F'(\theta)\end{pmatrix}
=B(\theta)
\begin{pmatrix}0\\F(\theta)\end{pmatrix}.
\]

Taking rows \(1,\ldots,N\), the column-zero terms are multiplied by \(F_0(\theta)=0\), while the remaining
columns are exactly \(B_F(\theta)F(\theta)\). Thus \(F'=B_FF\). No vanishing of any off-block entry of \(B\)
has been assumed. \(\square\)

### unit_004: proposition

**Proposition (Normalized derivative and projective certificate).**
\(\label{prop:step-001-projective}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
\ref{assump:anchored-derivative-closure}, and Lemmas~\ref{lem:step-001-anchor},
\ref{lem:step-001-height}, and \ref{lem:step-001-homogeneous-block}, if \(F_0\equiv0\), then for every
\(\theta\in\Theta\),

\[
\gamma_F'(\theta)
=\bigl(I_N-\gamma_F(\theta)\gamma_F(\theta)^{\mathsf T}\bigr)
B_F(\theta)\gamma_F(\theta),
\]

and

\[
\Gamma_{\mathrm{proj}}(F)
=\sup_{\theta\in\Theta}\|\gamma_F'(\theta)\|_2
\leq\widehat\Lambda_{B,T}.
\]

**Proof / justification.** Fix \(\theta\in\Theta\), and write
\(r(\theta):=\|F(\theta)\|_2\) within this proof. Lemma~\ref{lem:step-001-anchor} gives \(r(\theta)\geq1\), so
all following divisions are valid. Differentiating \(r^2=\langle F,F\rangle\) gives

\[
2rr'=2\langle F,F'\rangle,
\qquad
r'=\frac{\langle F,F'\rangle}{r}.
\]

Therefore direct differentiation of \(\gamma_F=F/r\) gives

\[
\begin{aligned}
\gamma_F'
&=\frac{F'}{r}-\frac{F r'}{r^2}\\
&=\frac{F'}{r}-\frac{F\langle F,F'\rangle}{r^3}\\
&=\bigl(I_N-\gamma_F\gamma_F^{\mathsf T}\bigr)\frac{F'}{r}.
\end{aligned}
\]

By Lemma~\ref{lem:step-001-homogeneous-block},
\(F'=B_FF=rB_F\gamma_F\). Substitution proves the exact identity

\[
\gamma_F'
=\bigl(I_N-\gamma_F\gamma_F^{\mathsf T}\bigr)B_F\gamma_F.
\]

It remains to prove the norm bound without hiding a dimensional constant. Since \(\|\gamma_F\|_2=1\), for every
\(v\in\mathbb R^N\),

\[
\left\|\bigl(I_N-\gamma_F\gamma_F^{\mathsf T}\bigr)v\right\|_2^2
=\|v\|_2^2-|\langle\gamma_F,v\rangle|^2
\leq\|v\|_2^2.
\]

Thus the projector has Euclidean operator norm at most one. Also, if \(x\in\mathbb R^N\), embed it as
\(\bar x=(0,x)\in\mathbb R^{N+1}\), and let \(\pi\) discard coordinate zero. Then

\[
B_F(\theta)x=\pi B(\theta)\bar x,
\]

so

\[
\|B_F(\theta)x\|_2
\leq\|B(\theta)\bar x\|_2
\leq\|B(\theta)\|_{\mathrm{op}}\|\bar x\|_2
=\|B(\theta)\|_{\mathrm{op}}\|x\|_2.
\]

Taking the supremum over unit \(x\) proves
\(\|B_F(\theta)\|_{\mathrm{op}}\leq\|B(\theta)\|_{\mathrm{op}}\). Hence the exact identity and
Lemma~\ref{lem:step-001-height} yield, pointwise,

\[
\begin{aligned}
\|\gamma_F'(\theta)\|_2
&\leq
\|I_N-\gamma_F(\theta)\gamma_F(\theta)^{\mathsf T}\|_{\mathrm{op}}
\|B_F(\theta)\|_{\mathrm{op}}
\|\gamma_F(\theta)\|_2\\
&\leq\|B(\theta)\|_{\mathrm{op}}\\
&\leq\widehat\Lambda_{B,T}.
\end{aligned}
\]

The right-hand side is finite deterministic instance data. Taking the supremum over \(\theta\in\Theta\) both
proves finiteness of \(\Gamma_{\mathrm{proj}}(F)\) and gives the claimed bound. \(\square\)

### unit_005: proposition

**Proposition (Boundary and baseline consistency).**
\(\label{prop:step-001-boundary}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
\ref{assump:anchored-derivative-closure}, Lemmas~\ref{lem:step-001-anchor},
\ref{lem:step-001-height}, and \ref{lem:step-001-homogeneous-block}, and
Proposition~\ref{prop:step-001-projective}, all conclusions of those results remain valid without modification
under the static specializations \(q=0\), \(m=0\), constant \(B\), constant \(\widetilde F\), \(N=1\), or
\(\widehat\Lambda_{B,T}=0\), at both endpoints of \(\Theta\), and for a stationary \(\gamma_F\) in the
homogeneous branch. In particular,

\[
F_{j_*}=1,
\qquad
F\neq0,
\qquad
\sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
\leq\widehat\Lambda_{B,T}
\]

still hold. Whenever \(F_0\equiv0\), the same regimes also satisfy

\[
F'=B_FF,
\qquad
\gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
\qquad
\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
\]

In addition:

1. If \(N=d\geq1\), \(m=0\), and the only nonzero entries of the constant augmented monomial shift are
   \(B_{0d}=d\) and \(B_{k+1,k}=k\) for \(1\leq k\leq d-1\), then
   \[
   \widehat\Lambda_{B,T}=\left(\sum_{k=1}^d k^2\right)^{1/2}.
   \]
2. If \(N=2\), \(m=0\), \(0<\delta\leq1\), and the only nonzero entry of the constant shear is
   \(B_{2,1}=1/\delta\), then \(\widehat\Lambda_{B,T}=1/\delta\).

**Proof / justification.** If \(q=0\), the chain is empty and \(M=0\); none of the calculations in
Lemmas~\ref{lem:step-001-anchor}--\ref{lem:step-001-homogeneous-block} or
Proposition~\ref{prop:step-001-projective} uses a chain coordinate. Thus the proof remains unchanged and the
additional dependence on \(q,M,\Delta\), after \(B\) is fixed, is exactly degree zero.

If \(m=0\), then \(B(\theta)=(b_{rs,0})_{r,s=0}^N\) is constant and the defining certificate becomes exactly

\[
\widehat\Lambda_{B,T}
=\left(\sum_{r=0}^{N}\sum_{s=0}^{N}|b_{rs,0}|^2\right)^{1/2}
=\|B\|_{\mathrm F},
\]

because \(T_*^0=1\). This also covers any constant \(B\) presented with a larger formal value of \(m\) and
zero higher coefficients. When \(N=1\), the anchor forces the sole feature to be \(F_1=1\), so
\(\gamma_F=1\) and \(I_1-\gamma_F\gamma_F^{\mathsf T}=0\); the normalized identity and the zero projective
speed therefore hold exactly. All derivatives used above exist on the open interval \(U\supseteq\Theta\), so
the same calculations apply at both endpoints of \(\Theta\).

If \(\widetilde F\) is constant, then \(\widetilde F'=0\); in the homogeneous branch the anchored nonzero
vector \(F\) and its normalization \(\gamma_F\) are constant, so \(\Gamma_{\mathrm{proj}}(F)=0\). More
generally, a stationary homogeneous normalized curve, meaning \(\gamma_F'\equiv0\) on \(\Theta\), has
\(\Gamma_{\mathrm{proj}}(F)=0\leq\widehat\Lambda_{B,T}\) directly from the setting definition. This stationary
specialization does not require \(B=0\): the exact projector identity permits nonzero radial motion
\(B_F\gamma_F\in\operatorname{span}\{\gamma_F\}\), which its Euclidean projector annihilates.

If \(\widehat\Lambda_{B,T}=0\), the defining sum of squares first gives
\(\sum_{\ell=0}^m|b_{rs,\ell}|T_*^\ell=0\) for every \((r,s)\). Every term in each of these sums is
nonnegative and \(T_*>0\), so every coefficient \(b_{rs,\ell}\) is zero, and hence \(B\equiv0\). The closure
identity gives \(\widetilde F'=0\) on the interval \(U\), so the tuple is
constant; in the homogeneous branch \(\gamma_F'=0\) and \(\Gamma_{\mathrm{proj}}(F)=0\). Thus the zero right-hand
side is valid rather than a degenerate failure of the bound.

For item 1, take the actual augmented monic tuple

\[
\widetilde F(\theta)=(\theta^d,1,\theta,\ldots,\theta^{d-1}),
\qquad d\geq1.
\]

This is the \(q=0\), \(M=0\), \(N=d\), \(\Delta=d\) specialization. Its derivative is given by the constant
shift with \(B_{0d}=d\) and \(B_{k+1,k}=k\) for \(1\leq k\leq d-1\), because
\((\theta^d)'=dF_d\) and \((F_{k+1})'=kF_k\). Thus \(m=0\), and the nonzero coefficient magnitudes are exactly
\(d,1,2,\ldots,d-1\). The literal formula gives

\[
\widehat\Lambda_{B,T}^2
=d^2+\sum_{k=1}^{d-1}k^2
=\sum_{k=1}^d k^2.
\]

The sum over \(1\leq k\leq d-1\) is empty when \(d=1\), so that boundary case gives height one. This proves
only the certificate specialization allocated to this row; it does not import the later affine-monic sweep.

For item 2, the actual tuple \(\widetilde F=(0,1,\theta/\delta)\) has
\(q=0\), \(M=0\), \(\Delta=1\), \(N=2\), and \(m=0\), and it has derivative closure under the constant
one-entry shear \(B_{2,1}=1/\delta\), with all other entries zero. The same literal formula gives

\[
\widehat\Lambda_{B,T}^2=|1/\delta|^2=1/\delta^2,
\]

and \(\delta>0\) gives \(\widehat\Lambda_{B,T}=1/\delta\). These are algebraic reductions of the certificate
itself: they do not assume the later monomial-instance or counter-example conclusions. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-001-anchor} proves the exact anchor implication
\(F_{j_*}=1\Rightarrow F\neq0\) and supplies the normalization denominator. Lemma~\ref{lem:step-001-height}
proves, from the literal coefficient list and \(|\theta|\leq T_*\),

\[
\sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
\leq\widehat\Lambda_{B,T}
\]

with the exact \(T,m,N\) dependence in the accepted row. Under the row's homogeneous condition
\(F_0\equiv0\), Lemma~\ref{lem:step-001-homogeneous-block} gives \(F'=B_FF\), and
Proposition~\ref{prop:step-001-projective} composes that identity with the proved nonvanishing and matrix bound to
give

\[
\gamma_F'
=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
\qquad
\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
\]

Proposition~\ref{prop:step-001-boundary} verifies that the accepted null, boundary, and baseline-scale regimes
including constant and stationary curves do not change these conclusions or introduce a hidden constant. These
named results jointly establish every clause of the exact `step_001` row. No dependency result or global
diagnostic statement is used as mathematical authority.

## Explicit Rate Audit

- Exposed variables: \(T\), \(m\), \(N\), every coefficient \(b_{rs,\ell}\),
  \(T_*=\max\{1,T\}\), and the exactly defined \(\widehat\Lambda_{B,T}\). The conditional baseline checks expose
  \(d\) and \(\delta\) only in their displayed specializations. The parameters \(q,M,\Delta\) are disclosed and
  have exactly degree-zero additional dependence once \(B\) is fixed.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: Any instance parameter, feature degree, law, interval, norm margin,
  coefficient, or specialization parameter.
- Fixed quantities: The deterministic common-chain presentation, \(B\), its coefficient list, \(T\), and
  \(\Theta\). The homogeneous identity is conditioned only on the static specialization \(F_0\equiv0\).
- Probability mode: Deterministic; no probability or confidence parameter occurs in this step.
- Horizon mode: Pointwise for every \(\theta\in\Theta\), followed by the literal supremum over \(\Theta\). This is
  a static uniform bound, not an asymptotic, iterative, or stopping-time statement.
- Norm mode: Euclidean vector norm, its induced operator norm, and the Euclidean Frobenius norm.
- Admissibility conditions and auxiliary tolerances: Exactly \(N\geq1\), \(q\geq0\), \(m\geq0\), \(T>0\),
  \(\Theta\subseteq[-T,T]\), the three named primitive assumptions, and \(F_0\equiv0\) only for homogeneous
  outputs. There is no auxiliary tolerance or unrecorded lower-norm margin.
- Term absorption or simplification inequalities: No term is dropped or absorbed. The complete chain is
  \[
  |B_{rs}(\theta)|
  \leq\sum_{\ell=0}^m|b_{rs,\ell}|T_*^\ell,
  \quad
  \|B(\theta)\|_{\mathrm{op}}
  \leq\|B(\theta)\|_{\mathrm F}
  \leq\widehat\Lambda_{B,T},
  \]
  and
  \[
  \|\gamma_F'(\theta)\|_2
  \leq\|B_F(\theta)\|_{\mathrm{op}}
  \leq\|B(\theta)\|_{\mathrm{op}}
  \leq\widehat\Lambda_{B,T}.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step supplies the deterministic R1 certificate consumed
  by later affine and homogeneous rate steps. It performs no probability-rate specialization itself.
- Baseline-reduction check: For the constant augmented monomial shift, the certificate is exactly
  \((\sum_{k=1}^d k^2)^{1/2}\), including \(d=1\). For the constant one-entry shear, it is exactly
  \(1/\delta\). For a constant tuple or stationary normalized curve, the projective quantity is exactly zero;
  in the zero-height case the closure forces the tuple itself to be constant. All reductions follow from the
  same exact identities, with no conservative loss, asymptotic notation, or hidden factor.

## Blockers

None

## Notation And Assumption Notes

- `public-facing`: \(B_F=(B_{rs})_{1\leq r,s\leq N}\) in the homogeneous specialization. It is directly defined
  from the setting matrix and is the minimal block needed by downstream homogeneous consumers.
- `public-facing`: \(T_*\), \(\widehat\Lambda_{B,T}\), \(\gamma_F\), and
  \(\Gamma_{\mathrm{proj}}(F)\) are setting-defined objects, not new helper notation. Their finiteness and bounds
  are derived here rather than assumed.
- `proof-local`: \(c_{rs}=\sum_{\ell=0}^m|b_{rs,\ell}|T_*^\ell\) is a direct expression from the original
  coefficients and \(T_*\). It is used only to expose entrywise coefficient evaluation and is not exported.
- `proof-local`: \(r=\|F\|_2\), \(\bar x=(0,x)\), and the lower-coordinate projection \(\pi\) are temporary
  expressions used in Proposition~\ref{prop:step-001-projective}. The lower bound \(r\geq1\) is proved by
  Lemma~\ref{lem:step-001-anchor}; it is not a free bounded quantity.
- `appendix-local`: the two explicit constant-matrix patterns in
  Proposition~\ref{prop:step-001-boundary} audit the accepted baseline scales. They export no new theorem-facing
  assumption or helper dictionary. Their parameters \(d\) and \(\delta\) are the formalized-goal
  specializations, not free constants introduced by this proof.
- Constant provenance: Every quantity in \(\widehat\Lambda_{B,T}\) is directly defined from the original setting
  data. The only lower margin is the literal value one proved from the primitive anchor. No radius, threshold,
  finite-tube quantity, or unspecified constant is introduced.
- Assumption provenance: \(F_0\equiv0\) is a static local specialization stated in the accepted target. Anchor
  nonvanishing, matrix boundedness, projective boundedness, and the zero-certificate behavior are all proved in
  this step. The constant-feature and stationary-projective conditions occur only in the conditional boundary
  audit and are not used to establish an unconditional target conclusion. There is no generated event,
  recurrence, stability condition, boundedness premise, or accepted dependency invariant.
- Diagnostic boundary: `global_proof.md` with SHA-256
  `bb35e66556b216cac02945e249c92fac526b5b021104daa0f32b0ce7691a22fc` was consulted only after verifying that
  the paired `global_proof_review.md` has SHA-256
  `c990e29c701a493a71e87aef1aa5c099ed26c6f8132a03f15bc0c7e5fb3c0146` and status `ACCEPTED`. Its
  step-relevant planning reminder was to separate the anchor's lower/nonvanishing role from the coefficient
  height's upper-bound role and to check the off-block and block-norm interfaces. It was not used as evidence, a
  cited result, an assumption source, or authority to change the target claim; every such point is independently
  proved in the named local units above.
- Stale-history boundary: The archived sketch-attempt-1 same-step proof/review was consulted only as the
  permitted latest same-step diagnostic for stable unit IDs and boundary checks. Neither `proof_history/` nor
  its stale acceptance is current evidence, and no stale artifact identity is asserted by this proof.
