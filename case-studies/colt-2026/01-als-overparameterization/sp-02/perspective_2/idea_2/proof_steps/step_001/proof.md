# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Under `assump:base_conditioning`, the fixed coefficient map
  \[
  Q=\Lambda_A\otimes\Lambda_B\otimes\Lambda_C
  \]
  obeys
  \[
  0<\|Q\|_{\rm op}
  =\|\Lambda_A\|_{\rm op}\|\Lambda_B\|_{\rm op}
    \|\Lambda_C\|_{\rm op}
  \le \kappa^6.
  \]
  The setting-defined product gauge preserves both each represented ambient
  rank-one tensor and its coefficient rank-one tensor. Consequently, for every
  integer \(t\ge 0\), including the raw initialization,
  \[
  Q\widehat T_t=C_t\in\mathcal S_t,
  \qquad
  Q(T-\widehat T_t)=D_r+E_\rho-C_t.
  \]
- Dependencies: None.
- Assumptions used: `assump:base_conditioning`; all other objects and the
  positive/zero gauge branches are definitions from `setting.md`.
- Technical challenge: derive the exact \(\kappa^6\) coordinate distortion in
  coefficient Frobenius geometry, align the modewise tensor-product convention
  with \(p_{i,t}\), and verify the zero-factor gauge branch without assuming
  nonzero or bounded ALS factors.
- Intended proof tool or cited result: direct minimum-singular-value estimates,
  the finite-dimensional singular-value decomposition, and multilinearity of
  tensor-product maps. No theorem-critical external paper result is used.
- Output target: the fixed operator comparison
  \(\|Q R\|_F\le\kappa^6\|R\|_F\) and the exact same-target coefficient
  identity consumed by `step_003`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:base_conditioning`: for each
    \(\bar M\in\{\bar A,\bar B,\bar C\}\), every column norm is in
    \([\kappa^{-1},\kappa]\), and every singular value of
    \(\widetilde M=\bar M D_{\bar M}^{-1}\) is in
    \([\kappa^{-1},\kappa]\).
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts: None.

The ALS update, the factor iterates, the product-preserving gauge, and the
coefficient objects are setting-defined data. No clause of
\(\mathsf C_2(\delta,L_P,\zeta,C_T)\) is used in this step, and no generated
trajectory regularity is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:base_conditioning}, each base matrix is full column rank and its setting-defined left coordinate map satisfies \(\Lambda_M\bar M=I_r\) and \(\|\Lambda_M\|_{\rm op}\le\kappa^2\). | Supplies the modewise coordinate bounds and well-definedness of \(Q\). |
| `unit_002` | lemma | Under Assumption~\ref{assump:base_conditioning} and Lemma~\ref{lem:step-001-base-coordinate}, the setting-ordered tensor-product map sends pure tensors modewise and has \(0<\|Q\|_{\rm op}=\prod_M\|\Lambda_M\|_{\rm op}\le\kappa^6\). | Supplies the exact Frobenius operator bound and the rank-one object mapping. |
| `unit_003` | lemma | Under Assumption~\ref{assump:base_conditioning} and Lemma~\ref{lem:step-001-tensor-map}, each positive product-one gauge action and the zero-component gauge rule preserve both the ambient and coefficient rank-one tensors. | Verifies gauge compatibility, including the zero-factor boundary. |
| `unit_004` | proposition | Under Assumption~\ref{assump:base_conditioning} and Lemmas~\ref{lem:step-001-tensor-map}--\ref{lem:step-001-gauge}, every \(t\ge0\) satisfies \(Q\widehat T_t=C_t\in\mathcal S_t\) and \(Q(T-\widehat T_t)=D_r+E_\rho-C_t\), including \(\mathcal S_t=\{0\}\) and rank-changing spans. | Exports the exact same-target identity consumed downstream. |

Atomic step = no. The coordinate bound, tensor-product norm calculation, gauge
case split, and exact residual assembly are independent nontrivial subclaims.

## Cited Result Applications

### Finite-dimensional singular-value decomposition

- Source or name: finite-dimensional singular-value decomposition and its
  induced Euclidean operator-norm characterization.
- Restated statement in current notation: If
  \(M\in\mathbb R^{n\times r}\) has full column rank, then an economy SVD
  \(M=U\Sigma V^{\mathsf T}\) has \(U^{\mathsf T}U=I_r\),
  \(V^{\mathsf T}V=I_r\), and positive diagonal
  \(\Sigma=\operatorname{diag}(\sigma_1(M),\ldots,\sigma_r(M))\). Moreover,
  \[
  (M^{\mathsf T}M)^{-1}M^{\mathsf T}
  =V\Sigma^{-1}U^{\mathsf T},
  \qquad
  \big\|(M^{\mathsf T}M)^{-1}M^{\mathsf T}\big\|_{\rm op}
  =\sigma_{\min}(M)^{-1}.
  \]
  More generally, every rectangular linear map \(L\) admits a full SVD
  \(L=U_L\Sigma_LV_L^{\mathsf T}\) with square orthogonal \(U_L,V_L\), a
  rectangular diagonal \(\Sigma_L\), and
  \(\|L\|_{\rm op}=\max_j\sigma_j(L)\).
- Instantiated objects: \(M=\bar A,\bar B,\bar C\) in
  Lemma~\ref{lem:step-001-base-coordinate}; SVDs of
  \(\Lambda_A,\Lambda_B,\Lambda_C\) in
  Lemma~\ref{lem:step-001-tensor-map}.
- Required assumptions: finite-dimensional Euclidean spaces and, for the
  inverse formula, full column rank.
- Assumption discharge: finite dimensionality is part of the setting;
  Lemma~\ref{lem:step-001-base-coordinate} proves full column rank directly
  from Assumption~\ref{assump:base_conditioning} before applying the inverse
  formula.
- Conclusion used: the exact norm formula for each \(\Lambda_M\), and the
  diagonal singular-value representation used to calculate the tensor-product
  operator norm.

No external paper theorem and no dependency-step result is invoked. For local
result use, Lemma~\ref{lem:step-001-base-coordinate} is consumed by
Lemma~\ref{lem:step-001-tensor-map}; Lemma~\ref{lem:step-001-tensor-map} is
consumed by Lemma~\ref{lem:step-001-gauge} and
Proposition~\ref{prop:step-001-same-target}; and the latter two results are
consumed in the target-step assembly. Their assumptions and conclusions are
restated in the local lemma map and immediately before their proofs below.

## Local Derivation

### unit_001: lemma

**Lemma (Conditioned left coordinate maps).**
\(\label{lem:step-001-base-coordinate}\)
Under Assumption~\ref{assump:base_conditioning}, for every
\(\bar M\in\{\bar A,\bar B,\bar C\}\), the matrix \(\bar M\) has full column
rank and its setting-defined coordinate map
\(\Lambda_M=(\bar M^{\mathsf T}\bar M)^{-1}\bar M^{\mathsf T}\) satisfies
\[
\sigma_{\min}(\bar M)\ge\kappa^{-2},
\qquad
\Lambda_M\bar M=I_r,
\qquad
\|\Lambda_M\|_{\rm op}
=\sigma_{\min}(\bar M)^{-1}\le\kappa^2.
\]

**Proof.** By definition,
\(\bar M=\widetilde M D_{\bar M}\). Assumption~\ref{assump:base_conditioning}
gives
\[
\sigma_{\min}(\widetilde M)\ge\kappa^{-1},
\qquad
\sigma_{\min}(D_{\bar M})
=\min_{j\in[r]}\|\bar m_j\|_2\ge\kappa^{-1}.
\]
For every \(v\in\mathbb R^r\),
\[
\|\bar Mv\|_2
=\|\widetilde M D_{\bar M}v\|_2
\ge \sigma_{\min}(\widetilde M)\|D_{\bar M}v\|_2
\ge \kappa^{-2}\|v\|_2.
\]
Thus \(\sigma_{\min}(\bar M)\ge\kappa^{-2}>0\), so \(\bar M\) has full
column rank and \(\bar M^{\mathsf T}\bar M\) is invertible. Direct
multiplication gives \(\Lambda_M\bar M=I_r\). Applying the restated SVD norm
identity to this now-verified full-column-rank matrix gives
\[
\|\Lambda_M\|_{\rm op}=\sigma_{\min}(\bar M)^{-1}\le\kappa^2.
\]
This proves the lemma. \(\square\)

### unit_002: lemma

**Lemma (Modewise tensor operator in Frobenius geometry).**
\(\label{lem:step-001-tensor-map}\)
Under Assumption~\ref{assump:base_conditioning} and
Lemma~\ref{lem:step-001-base-coordinate}, the setting-ordered map
\(Q=\Lambda_A\otimes\Lambda_B\otimes\Lambda_C\) satisfies, for every
\(x,y,z\in\mathbb R^n\),
\[
Q(x\otimes y\otimes z)
=(\Lambda_Ax)\otimes(\Lambda_By)\otimes(\Lambda_Cz),
\]
and, as a map from ambient Frobenius tensor space to coefficient Frobenius
tensor space,
\[
0<\|Q\|_{\rm op}
=\|\Lambda_A\|_{\rm op}\|\Lambda_B\|_{\rm op}
 \|\Lambda_C\|_{\rm op}
\le\kappa^6.
\]
Consequently, every ambient tensor \(R\in\mathbb R^{n\times n\times n}\)
obeys \(\|QR\|_F\le\kappa^6\|R\|_F\).

**Proof.** The pure-tensor formula is the defining action of the tensor product
of the three linear maps, with the mode order fixed in `setting.md`.

For the norm calculation, take full singular-value decompositions
\(\Lambda_M=U_M\Sigma_MV_M^{\mathsf T}\), for
\(M\in\{A,B,C\}\), with \(U_M\) and \(V_M\) square orthogonal and
\(\Sigma_M\) rectangular diagonal. Under the canonical identification of a third-order array
with the Hilbert tensor product of its three Euclidean mode spaces,
\[
Q=(U_A\otimes U_B\otimes U_C)
  (\Sigma_A\otimes\Sigma_B\otimes\Sigma_C)
  (V_A^{\mathsf T}\otimes V_B^{\mathsf T}\otimes V_C^{\mathsf T}).
\]
The two outer tensor-product maps are isometries on the relevant Frobenius
spaces: this follows on pure tensors from
\(\|u\otimes v\otimes w\|_F=\|u\|_2\|v\|_2\|w\|_2\), and hence on the whole
finite-dimensional tensor space by expansion in orthonormal product bases.
The middle map is diagonal in product singular-vector bases. Its diagonal
entries are exactly
\(\sigma_a(\Lambda_A)\sigma_b(\Lambda_B)\sigma_c(\Lambda_C)\), so its largest
singular value is
\[
\max_{a,b,c}
\sigma_a(\Lambda_A)\sigma_b(\Lambda_B)\sigma_c(\Lambda_C)
=\prod_{M\in\{A,B,C\}}\|\Lambda_M\|_{\rm op}.
\]
Each \(\Lambda_M\) has rank \(r\ge1\) by
Lemma~\ref{lem:step-001-base-coordinate}, so this product is positive. The
same lemma bounds each factor by \(\kappa^2\), yielding
\(0<\|Q\|_{\rm op}\le\kappa^6\). The final inequality is the definition of
the induced operator norm. \(\square\)

### unit_003: lemma

**Lemma (Gauge invariance of ambient and coefficient components).**
\(\label{lem:step-001-gauge}\)
Under Assumption~\ref{assump:base_conditioning} and
Lemma~\ref{lem:step-001-tensor-map}, let \((x,y,z)\in(\mathbb R^n)^3\), let
\(p=(\Lambda_Ax)\otimes(\Lambda_By)\otimes(\Lambda_Cz)\), and apply the
setting-defined componentwise gauge to obtain \((x^+,y^+,z^+)\). Then
\[
x^+\otimes y^+\otimes z^+=x\otimes y\otimes z
\]
and
\[
(\Lambda_Ax^+)\otimes(\Lambda_By^+)\otimes(\Lambda_Cz^+)=p.
\]
Both conclusions hold in the positive-norm branch and in every zero-factor
branch.

**Proof.** Put \(u=\|x\|_2\), \(v=\|y\|_2\), and \(w=\|z\|_2\).

If \(u,v,w>0\), define \(g=(uvw)^{1/3}\) and
\[
s_x=g/u,\qquad s_y=g/v,\qquad s_z=g/w.
\]
The gauge gives \((x^+,y^+,z^+)=(s_xx,s_yy,s_zz)\), and
\[
s_xs_ys_z=\frac{g^3}{uvw}=1.
\]
Multilinearity therefore gives
\[
x^+\otimes y^+\otimes z^+
=(s_xs_ys_z)(x\otimes y\otimes z)=x\otimes y\otimes z.
\]
Linearity of the coordinate maps gives the identical calculation in
coefficient space:
\[
(\Lambda_Ax^+)\otimes(\Lambda_By^+)\otimes(\Lambda_Cz^+)
=(s_xs_ys_z)p=p.
\]

If \(uvw=0\), at least one of \(x,y,z\) is the zero vector. Hence the original
ambient rank-one tensor is zero. The corresponding coordinate vector is also
zero by linearity, so \(p=0\). The gauge replaces the full triple by
\((0,0,0)\), making both post-gauge tensors zero as well. These cases exhaust
all nonnegative triples \((u,v,w)\), proving the lemma without a nonzero-factor
assumption. \(\square\)

### unit_004: proposition

**Proposition (Exact same-target coefficient interface).**
\(\label{prop:step-001-same-target}\)
Under Assumption~\ref{assump:base_conditioning} and
Lemmas~\ref{lem:step-001-tensor-map}--\ref{lem:step-001-gauge}, every integer
\(t\ge0\) satisfies
\[
Q\widehat T_t=C_t\in\mathcal S_t
\]
and
\[
Q(T-\widehat T_t)=D_r+E_\rho-C_t.
\]
The statements hold at the ungauged raw initialization, after every gauged
sweep, when one or more component factors or coefficient features vanish, when
\(\mathcal S_t=\{0\}\), and when \(\dim(\mathcal S_t)\) changes with \(t\).

**Proof.** For each \(i\in[k]\),
Lemma~\ref{lem:step-001-tensor-map} and the setting definitions give
\[
Q(x_{i,t}\otimes y_{i,t}\otimes z_{i,t})
=(\Lambda_Ax_{i,t})\otimes(\Lambda_By_{i,t})\otimes(\Lambda_Cz_{i,t})
=p_{i,t}.
\]
Linearity of \(Q\) over the finite CP sum yields
\[
Q\widehat T_t
=\sum_{i=1}^kQ(x_{i,t}\otimes y_{i,t}\otimes z_{i,t})
=\sum_{i=1}^kp_{i,t}
=C_t.
\]
Because \(\mathcal S_t=\operatorname{span}\{p_{i,t}:i\in[k]\}\), this finite
sum belongs to \(\mathcal S_t\). This remains true if some \(p_{i,t}=0\), if
the features are linearly dependent, or if all of them vanish, in which case
\(C_t=0\in\mathcal S_t=\{0\}\).

The setting defines \(E_\rho=QT-D_r\), so \(QT=D_r+E_\rho\). Subtracting the
already established identity for \(Q\widehat T_t\) gives
\[
Q(T-\widehat T_t)
=QT-Q\widehat T_t
=D_r+E_\rho-C_t.
\]
This uses the same realized target \(T\) and the same represented tensor
\(\widehat T_t\) as the ambient residual; no projected, whitened, base-only, or
fixed-subspace surrogate has been substituted.

At \(t=0\), the calculation applies directly to the raw iid factor draw; no
gauge property is needed. At every later time, the same calculation applies to
the post-gauge factors, and Lemma~\ref{lem:step-001-gauge} additionally shows
that passing from the raw relaxed sweep to the stored gauged iterate changes
neither the ambient component sum nor its coefficient component sum. The
argument is pointwise in \(t\) and does not use the rank or continuity of
\(\mathcal S_t\). \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-001-base-coordinate} derives from
Assumption~\ref{assump:base_conditioning} the exact modewise coordinate norm
formula and the bounds \(\|\Lambda_M\|_{\rm op}\le\kappa^2\).
Lemma~\ref{lem:step-001-tensor-map} composes these three bounds in the setting's
Frobenius tensor-product convention to obtain
\[
0<\|Q\|_{\rm op}
=\|\Lambda_A\|_{\rm op}\|\Lambda_B\|_{\rm op}\|\Lambda_C\|_{\rm op}
\le\kappa^6,
\qquad
\|QR\|_F\le\kappa^6\|R\|_F.
\]
Lemma~\ref{lem:step-001-gauge} verifies that both the positive product-one
branch and every zero-factor branch preserve the represented and coefficient
rank-one tensors. Proposition~\ref{prop:step-001-same-target} then gives, for
every \(t\ge0\),
\[
Q\widehat T_t=C_t\in\mathcal S_t,
\qquad
Q(T-\widehat T_t)=D_r+E_\rho-C_t.
\]
These are exactly the operator, gauge, coefficient-span, and same-target
outputs required by the binding `step_001` sketch claim. No dependency result
or certificate clause is needed.

## Explicit Rate Audit

- Exposed variables: \(\kappa\) in the exact structural bound
  \(\|Q\|_{\rm op}\le\kappa^6\), and \(t\ge0\) in the all-time identities.
  The dimensions \(r,n,k\) determine the object sizes but introduce no factor
  in the bound; \(q,\delta,L_P,\zeta,C_T\) do not enter this step.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(r,n,k,t\), the admissible base triple,
  or the smoothing/initialization realization.
- Fixed quantities: the setting's mode ordering, \(\kappa\), and a deterministic
  base triple satisfying Assumption~\ref{assump:base_conditioning}.
- Probability mode: deterministic and pointwise for every target/trajectory
  realization. No conditioning on \(\mathsf C_2\), expectation, or probability
  conversion is used.
- Horizon mode: pointwise all-time, including \(t=0\); there is no accumulated
  error or horizon-dependent constant.
- Norm mode: Euclidean induced operator norm for each \(\Lambda_M\); induced
  operator norm between ambient and coefficient Frobenius tensor spaces for
  \(Q\); Frobenius norms for tensors.
- Admissibility conditions and auxiliary tolerances:
  Assumption~\ref{assump:base_conditioning} and \(\kappa\ge1\); no auxiliary
  tolerance is introduced.
- Term absorption or simplification inequalities:
  \[
  \sigma_{\min}(\bar M)
  \ge\sigma_{\min}(\widetilde M)\sigma_{\min}(D_{\bar M})
  \ge\kappa^{-2},
  \]
  followed by
  \[
  \|Q\|_{\rm op}
  =\prod_{M\in\{A,B,C\}}\|\Lambda_M\|_{\rm op}
  \le(\kappa^2)^3=\kappa^6.
  \]
  No term is dropped or hidden.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: for every ambient residual
  \(R\), the step exports the exact comparison
  \(\|QR\|_F\le\kappa^6\|R\|_F\), which `step_003` applies to
  \(R=T-\widehat T_t\).
- Baseline-reduction check: in the recorded exact/noiseless
  coordinate-orthonormal specialization \(Q=I\), \(E_\rho=0\), and
  \(T=D_r\), Proposition~\ref{prop:step-001-same-target} reduces exactly to
  \[
  T-\widehat T_t=D_r-C_t,
  \qquad C_t\in\mathcal S_t,
  \]
  and the actual coordinate distortion is \(\|Q\|_{\rm op}=1\). Thus this
  step preserves the baseline interface without a conservative remainder.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing, setting-defined objects: \(\Lambda_A,\Lambda_B,\Lambda_C\),
  \(Q\), \(D_r\), \(E_\rho\), \(\widehat T_t\), \(p_{i,t}\), \(C_t\), and
  \(\mathcal S_t\). The minimal downstream interface exported by this proof is
  \(0<\|Q\|_{\rm op}\le\kappa^6\),
  \(Q\widehat T_t=C_t\in\mathcal S_t\), and the exact residual identity.
- Proof-local notation: generic \(\bar M\), \(D_{\bar M}\),
  \(\widetilde M\), and \(\Lambda_M\) range over the three setting-defined
  modes; \(u,v,w,g,s_x,s_y,s_z\) are used only in the gauge case split; the SVD
  factors \(U_M,\Sigma_M,V_M\) and the generic ambient tensor \(R\) are used
  only for the operator calculation. No proof-local object is exported as a
  theorem assumption.
- Constant provenance: \(\kappa^2\) is proved in
  Lemma~\ref{lem:step-001-base-coordinate} directly from the two
  \(\kappa^{-1}\) lower singular-value factors in
  Assumption~\ref{assump:base_conditioning}; \(\kappa^6\) is proved in
  Lemma~\ref{lem:step-001-tensor-map} as the product of the three modewise
  bounds. There are no free constants, thresholds, radii, or tolerances.
- Assumption provenance: `assump:base_conditioning` is a primitive condition.
  Full column rank and the coordinate-map bounds are proved in this step.
  Gauge invariance and the exact coefficient identity are also proved in this
  step. No generated event, boundedness, stability, recurrence, or invariant
  condition is assumed, and the four clauses of \(\mathsf C_2\) are not used.
- Boundary provenance: the positive and zero gauge branches are exhaustive;
  the raw entry, vanished factors, vanished coefficient features,
  \(\mathcal S_t=\{0\}\), linear dependence, and changes in
  \(\dim(\mathcal S_t)\) are handled inside
  Lemma~\ref{lem:step-001-gauge} and
  Proposition~\ref{prop:step-001-same-target}.
- Diagnostic boundary: `global_proof.md` was read only because the paired
  `global_proof_review.md` has `Global-Proof Review Status = ACCEPTED`. Its
  step-specific suggestion to expose the singular-value calculation, the
  Frobenius tensor-product convention, and both gauge branches was used only
  for planning. The diagnostic was not used as proof evidence, a cited result,
  an assumption source, or authority to change the binding sketch claim.
