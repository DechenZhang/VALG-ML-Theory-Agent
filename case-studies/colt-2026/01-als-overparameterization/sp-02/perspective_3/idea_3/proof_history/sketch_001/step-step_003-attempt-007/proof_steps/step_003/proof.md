# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 7

## Target Step Claim

- Intended claim: Conditional on `step_001`--`step_002`, prove
  \[
    \left\|J^*J-\operatorname{diag}(J_i^*J_i)\right\|_{\rm op}
    \le C_\kappa\left(\sqrt{\frac{k}{r^2}}
      +\sqrt{\frac{\log r}{r}}\right)\le\frac12
    \tag{TF}
  \]
  on the gauge quotient, prove
  \[
    \|J^*D_r\|_2^2
    \le C_\kappa\left(\frac{k}{r}+\log r\right),
    \tag{TC}
  \]
  construct a unit tensor \(W_0\perp\mathscr S_0\), and establish
  \(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\).
- Depends on: `step_001`, `step_002`.
- Assumptions used: `assump:rank_window` and
  `assump:independent_initialization`, together with the accepted realized
  conditioning, angular representation, and tangent-span identity.
- Technical challenge: the exact two-dimensional CP gauge must be removed,
  and the off-component Terracini Gram contains dependent structured
  cross-mode rank-one blocks. The operator calculation must retain variance
  \(k/r^2\), rather than the \(k/r\) scale obtained by taking scalar block
  norms before exploiting the random input and output directions.
- Intended proof tool or cited result: direct gauge-fixed Terracini algebra;
  conditioned angular-Gaussian moments; leave-one-component-out decoupling
  and matrix concentration for (TF); scalar Bernstein for (TC); and the
  finite-dimensional projection formula.
- Output target: the exact raw-target tangent deficit with
  \(\delta_0=1/8\), without normalizing \(D_r\), \(\widehat D_0\), or the
  coefficient residual.
- Rate objective: use \(k/r^2\le r^{-3/4}\), preserve conditional failure at
  most \(r^{-20}\) uniformly over every realized triple in
  \(\mathcal E_{\rm cond}\), and keep constants independent of \(n,k,r\) and
  the realized conditioned factors.

## Step Proof Status

PARTIAL_BLOCKED

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:rank_window`: \(r<k\le\lfloor r^{5/4}\rfloor\).
  - `assump:independent_initialization`: the three mode/component arrays are
    independent Gaussian before balancing.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\(\ref{prop:step-001-realized-conditioning}\): on
    \(\mathcal E_{\rm cond}\), every \(M\in\{A,B,C\}\) has
    \[
      \kappa_1^{-1}\le \sigma_{\min}(M)
      \le \|M\|_{\rm op}\le\kappa_1,\qquad \kappa_1=2\kappa^2.
    \]
  - Lemma~\(\ref{lem:step-002-balanced-gaussianization}\): conditional on a
    fixed realized triple in \(\mathcal E_{\rm cond}\), normalized coefficient
    vectors have the exact form
    \[
      \bar\zeta_i^M=\frac{s_i^m}{\sqrt r}H_Mz_i^M,\qquad
      H_M=V_M\Sigma_M^{-1},\qquad z_i^M\sim N(0,I_r),
    \]
    with independence across components and modes.
  - Proposition~\(\ref{prop:step-002-exact-scale}\):
    \(\mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}=\mathscr S_0\), while
    \(D_r\), \(\widehat D_0\), and the residual remain in raw coefficient
    coordinates.
- Local conditional hypotheses:
  - The angular calculations fix an arbitrary realized
    \((A,B,C)\in\mathcal E_{\rm cond}\). All proved bounds are uniform over
    that fixed triple.
  - The isotropic angular specialization \(H_A=H_B=H_C=I_r\) is used only
    in Lemmas~\(\ref{lem:step-003-fixed-input-crossmode}\),
    \(\ref{lem:step-003-quotient-lower}\), and
    \(\ref{lem:step-003-top-alignment}\), and in the route-obstruction clause
    (21l) and all-confidence obstruction (21m)--(21t) of Lemma~
    \(\ref{lem:step-003-terracini-chaos}\), as a diagnostic lower-bound,
    alignment, and tail-quantifier stress test. It is not assumed in the
    theorem-facing target assembly.
  - Proposition~\(\ref{prop:step-003-deficit-from-frame}\) assumes the local
    event (TF) only to expose the exact downstream implication. Because
    `unit_005` does not prove (TF), this conditional proposition is not used
    as an unconditional step conclusion.

No normalized-Gram event, radial event, deficit event, trajectory event, or
final-loss conclusion is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\(\ref{assump:independent_initialization}\) and accepted Proposition~\(\ref{prop:step-001-realized-conditioning}\) and Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), conditional on a fixed realized triple in \(\mathcal E_{\rm cond}\), the coefficient directions are independent elliptic angular Gaussian vectors and satisfy uniform centered linear-form moments depending only on \(\kappa\). | Supplies the anisotropic angular law and coordinate moments used by the quotient, (TC), and the (TF) stress test. |
| `unit_002` | proposition | Under Assumption~\(\ref{assump:independent_initialization}\), accepted Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), accepted Proposition~\(\ref{prop:step-002-exact-scale}\), and Lemma~\(\ref{lem:step-003-angular-moments}\), conditional on a fixed realized triple in \(\mathcal E_{\rm cond}\), the kernel of each unprojected Terracini map is exactly the two-dimensional CP gauge, its quotient Gram spectrum lies in \([1,3]\), its range is the raw tangent space, and every off-component block has the displayed exact form. | Proves the quotient geometry and the nonvacuous within-component lower source. |
| `unit_003` | lemma | Under Assumptions~\(\ref{assump:rank_window}\) and \(\ref{assump:independent_initialization}\), accepted Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), Proposition~\(\ref{prop:step-003-quotient}\), and Lemma~\(\ref{lem:step-003-angular-moments}\), conditional on a fixed realized triple in \(\mathcal E_{\rm cond}\), the event \(\mathcal E_{\rm TC}\) defined by (TC) has failure at most \(r^{-25}\) for sufficiently large \(r\). | Completely proves target correlation at scale \(k/r+\log r\). |
| `unit_004` | proposition | Under Assumption~\(\ref{assump:independent_initialization}\), accepted Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), Proposition~\(\ref{prop:step-003-quotient}\), and Lemma~\(\ref{lem:step-003-angular-moments}\), conditional on a fixed realized triple in \(\mathcal E_{\rm cond}\), the same-mode off-component blocks are exactly three pair-direction Gram deviations tensored with \(I_r\), with block-row quadratic variance \(O_\kappa(k/r^2)\); the cross-mode blocks are six explicit rank-one operator chaoses with the two-stage factorization (20a). | Preserves the intended variance source and identifies the exact cross-mode source-to-claim gap. |
| `unit_007` | lemma | Under Assumption~\(\ref{assump:independent_initialization}\), accepted Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), Lemma~\(\ref{lem:step-003-angular-moments}\), and Proposition~\(\ref{prop:step-003-offblock-split}\), conditional on a fixed realized triple in \(\mathcal E_{\rm cond}\), every deterministic input \(Y\) satisfies \(\mathbb E\|E^{ab}Y\|_F^2\le \kappa_1^8(k-1)r^{-2}\|Y\|_F^2\), and likewise for the other five cross-mode arrays. In the isotropic angular specialization, a one-column input attains mean square \((k-1)/r^2\) and response at least \(\sqrt{k-1}/(\sqrt2r)\) with probability at least \(1/36\). | Proves the previously hidden fixed-input mean-square assertion and the natural scale for an unprojected cross-mode block, without claiming quotient/full-operator sharpness. |
| `unit_008` | lemma | In the isotropic angular specialization, under Assumption~\(\ref{assump:rank_window}\), the actual projected full off-component operator \(\Pi\widetilde E\Pi\) satisfies \(\|\Pi\widetilde E\Pi\|_{\rm op}\ge \sqrt{k-1}/(2r)\) with probability at least \(1/144\). | Repairs the attempt-3 sharpness overstatement by proving a quotient/full-operator lower bound at the target leading scale. |
| `unit_009` | lemma | In the isotropic angular specialization, a canonical input chosen from a top right singular vector of \(A_p\) and inserted through one output slice of \(Q_{B,C}\) has root-mean-square gain \(\Theta(\sqrt{k}/r)\) on the usual high-probability event \(\|A_p\|_{\rm op}=O(\sqrt{k/r})\). | Explicitly tests data-dependent top-singular alignment: the natural one-slice alignment pays the two angular weights and does not itself expose an extra \(\sqrt{k/r}\) factor. |
| `unit_005` | lemma | Under Assumptions~\(\ref{assump:rank_window}\) and \(\ref{assump:independent_initialization}\), accepted Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), Proposition~\(\ref{prop:step-003-quotient}\), Lemma~\(\ref{lem:step-003-angular-moments}\), Proposition~\(\ref{prop:step-003-offblock-split}\), and Lemma~\(\ref{lem:step-003-fixed-input-crossmode}\), conditional on a fixed realized triple in \(\mathcal E_{\rm cond}\), every cross-mode array has the exact full-multi-column representation \(E^{ab}(E^{ab})^*=\sum_jR_j^{bc}\otimes p_j^a(p_j^a)^{\mathsf T}\), and both full-angular-law operator-variance orientations are bounded by \(\kappa_1^8(k-1)/r^2\). In the allowed isotropic specialization, explicit spherical-cap events show that the proposed all-\(t\) tails (21), (21j), and (21k) are false: the full quotient norm, same-mode norm, and cross-mode squared norm can be order \(k\), \(k\), and \(k^2\), respectively, with probability \(e^{-O(rk)}\). | Preserves the exact adaptive covariance reduction and target-scale second moments, and proves that any valid wrapper must either restrict the confidence range needed by (TF) or include the large-deviation terms \(t/r\) in norm and \(t^2/r^2\) in squared norm. The theorem-needed \(t=30\log r\) tail remains unproved. |
| `unit_010` | lemma | Under Assumptions~\(\ref{assump:rank_window}\) and \(\ref{assump:independent_initialization}\), accepted Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), and Proposition~\(\ref{prop:step-003-quotient}\), conditional on a fixed realized triple in \(\mathcal E_{\rm cond}\), the ACG directions admit a trace-one elliptical-Gaussian representation \(p_i^M=u_i^M/q_i^M\). With failure at most \(6k\exp[-r/(256\kappa_1^4)]\), every \(q_i^M\in[1/2,2]\), and on that event the complete normalized off-component operator satisfies the exact conjugation \(\widetilde E=D\widetilde E_GD\) with \(\|D\|_{\rm op}\le4\). | Removes the ACG normalization from the only unresolved tail: \(\|\Pi\widetilde E\Pi\|_{\rm op}\le16\|\widetilde E_G\|_{\rm op}\). The sole remaining claim is the explicit theorem-range Gaussian trace moment (21z). |
| `unit_006` | proposition | Under Assumption~\(\ref{assump:rank_window}\), accepted Proposition~\(\ref{prop:step-002-exact-scale}\), Proposition~\(\ref{prop:step-003-quotient}\), and on the explicit event intersection \(\mathcal E_{\rm TF}(30\log r)\cap\mathcal E_{\rm TC}\), the projection formula constructs unit \(W_0\perp\mathscr S_0\) and proves raw deficit at least \(\sqrt{r/2}\). | Shows that no deterministic or event-bookkeeping gap remains after the unresolved (TF) event is supplied. |

Atomic step = no. Angular moments, quotient geometry, target correlation,
off-block concentration, quotient/full-operator sharpness, data-dependent
alignment, elliptic-radial normalization transfer, and projection-to-deficit
assembly are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: realized conditioning

- Source or name: Proposition~\(\ref{prop:step-001-realized-conditioning}\)
  in the accepted `step_001` proof and review.
- Restated statement in current notation: on \(\mathcal E_{\rm cond}\), every
  compact SVD \(M=U_M\Sigma_MV_M^{\mathsf T}\) has
  \(\sigma(\Sigma_M)\subset[\kappa_1^{-1},\kappa_1]\). Thus
  \(H_M=V_M\Sigma_M^{-1}\) has singular values in the same interval.
- Instantiated objects: \(M=A,B,C\) and the three coefficient-direction laws.
- Assumption discharge: the dependency proof/review is current and accepted;
  this step fixes only a realization in its proved event.
- Conclusion used: angular moment constants depending only on \(\kappa\).

### Accepted dependency: coefficient Gaussianization and span transfer

- Source or name: Lemma~\(\ref{lem:step-002-balanced-gaussianization}\) and
  Proposition~\(\ref{prop:step-002-exact-scale}\) in the accepted
  `step_002` proof and review.
- Restated statement in current notation: after removing its nonzero scalar,
  every coefficient direction has law
  \[
    p_i^M=\frac{H_Mz_i^M}{\|H_Mz_i^M\|_2},
  \]
  where all \(z_i^M\) are independent standard Gaussian vectors across
  components and modes. Rescaling these vectors does not change the raw
  tangent span \(\mathscr S_0\).
- Assumption discharge: Assumption~\(\ref{assump:independent_initialization}\)
  supplies the primitive randomness; the accepted dependency proves the exact
  representation. Gaussian images are nonzero almost surely.
- Conclusion used: all local units below and the exact raw-span assembly.

### Spherical coordinate moments

- Source or name: orthogonal invariance of a standard Gaussian vector.
- Restated statement: if \(z\sim N(0,I_r)\), \(s=z/\|z\|_2\), \(v\) is a
  deterministic unit vector, and \(m\ge1\), then
  \[
    \mathbb E|\langle v,s\rangle|^{2m}
    =\frac{(2m-1)!!}{r(r+2)\cdots(r+2m-2)}
    \le\left(\frac{2m}{r}\right)^m.
  \]
- Instantiated objects: \(z_i^M/\|z_i^M\|_2\), after rotating the numerator
  \(H_M^{\mathsf T}u\).
- Assumption discharge: the accepted Gaussianization supplies the standard
  Gaussian vectors.
- Conclusion used: Lemma~\(\ref{lem:step-003-angular-moments}\).

### Scalar Bernstein inequality

- Source or name: Bernstein's inequality for bounded independent variables.
- Restated statement: if independent \(0\le X_i\le1\) satisfy
  \(\mu=\sum_i\mathbb EX_i\), then for every \(u>0\),
  \[
    \mathbb P\left(\sum_iX_i>
      \mu+\sqrt{2\mu u}+\frac u3\right)\le e^{-u}.
  \]
- Instantiated objects: the \(k\) independent Hadamard-product energies for
  each of the three mode pairs.
- Assumption discharge: component independence follows from the primitive
  initialization law; boundedness follows from unit norms; the mean follows
  from Lemma~\(\ref{lem:step-003-angular-moments}\).
- Conclusion used: (TC).

### Projection through a full-column-rank frame

- Source or name: finite-dimensional least-squares projection formula.
- Restated statement: if \(J:H\to\mathcal V\) is injective, then
  \(P_{\operatorname{range}J}=J(J^*J)^{-1}J^*\), and
  \[
    \|P_{\operatorname{range}J}v\|^2
    =\langle J^*v,(J^*J)^{-1}J^*v\rangle.
  \]
- Instantiated objects: the quotient Terracini frame on
  \(\bigoplus_i\mathcal H_i\), conditionally on (TF).
- Assumption discharge: Proposition~\(\ref{prop:step-003-quotient}\) gives
  block-diagonal lower eigenvalue one; (TF) would leave lower eigenvalue
  \(1/2\), hence injectivity.
- Conclusion used: Proposition~\(\ref{prop:step-003-deficit-from-frame}\).

### Fixed-input cross-mode mean square

- Source or name: Lemma~\(\ref{lem:step-003-fixed-input-crossmode}\), proved
  below in current notation.
- Restated statement: for every deterministic
  \(Y\in\mathbb R^{r\times k}\), conditional on a fixed realized triple in
  \(\mathcal E_{\rm cond}\),
  \[
    \mathbb E\|E^{ab}Y\|_F^2
    \le \kappa_1^8\frac{k-1}{r^2}\|Y\|_F^2,
  \]
  with the analogous estimate for the other five cross-mode arrays.
- Instantiated objects: the exact factorization (20a), the ACG direction
  matrices \(A_p,B_p,C_p\), and an input fixed independently of all
  initialization directions.
- Assumption discharge: centering, unit norms, component/mode independence,
  and the covariance bound are supplied by Lemma~
  \(\ref{lem:step-003-angular-moments}\); the exact repeated-block
  factorization is supplied by Proposition~
  \(\ref{prop:step-003-offblock-split}\).
- Conclusion used: the fixed-input variance assertion inside the attempted
  proof of Lemma~\(\ref{lem:step-003-terracini-chaos}\). The result is not
  used as an operator-norm bound, because the maximizing input may depend on
  all direction arrays.

### Paley--Zygmund inequality

- Source or name: the elementary second-moment lower-tail inequality.
- Restated statement: if \(Z\ge0\), \(0<\mathbb EZ<\infty\), and
  \(\mathbb EZ^2<\infty\), then for \(0<\vartheta<1\),
  \[
    \mathbb P(Z\ge\vartheta\mathbb EZ)
    \ge (1-\vartheta)^2\frac{(\mathbb EZ)^2}{\mathbb EZ^2}.
  \]
- Instantiated objects: the squared response \(Z=\|E^{ab}Y\|_F^2\) for the
  isotropic one-column input in Lemma~
  \(\ref{lem:step-003-fixed-input-crossmode}\), with
  \(\vartheta=1/2\).
- Assumption discharge: nonnegativity is immediate; equations (20i)--(20k)
  compute finite first and second moments explicitly.
- Conclusion used: the constant-probability unprojected-block lower-tail
  statement (20e).

### Gaussian norm and chi lower tail for the alignment stress test

- Source or name: rectangular Gaussian operator-norm tail and chi-square
  lower-tail bound.
- Restated statement: if \(G\in\mathbb R^{r\times k}\) has iid standard
  Gaussian entries, then
  \[
    \mathbb P\bigl(\|G\|_{\rm op}>\sqrt r+\sqrt k+u\bigr)
    \le e^{-u^2/2}.
  \]
  If \(g\sim N(0,I_r)\), then the chi-square multiplicative tail gives
  \(\mathbb P(\|g\|_2<\sqrt{r/2})\le2e^{-r/32}\).
- Instantiated objects: in the isotropic angular specialization,
  \(p_j^a=g_j/\|g_j\|_2\), so
  \(A_p=G\operatorname{diag}(\|g_j\|_2^{-1})\).
- Assumption discharge: the isotropic specialization takes independent
  uniform sphere columns, which have this normalized-Gaussian
  representation; \(k\le r^{5/4}\) makes the union of the \(k\) chi lower
  tails smaller than \(r^{-30}\) for sufficiently large \(r\).
- Conclusion used: the high-probability bound
  \(\|A_p\|_{\rm op}\le5\sqrt{k/r}\) in Lemma~
  \(\ref{lem:step-003-top-alignment}\).

### Gaussian quadratic-form concentration

- Source or name: the Laurent--Massart Gaussian quadratic-form tail.
- Restated statement: if \(z\sim N(0,I_r)\), \(K\succeq0\), and \(x>0\),
  then
  \[
  \begin{aligned}
   \mathbb P\!\left(z^{\mathsf T}Kz-\operatorname{tr}K
      >2\sqrt{\operatorname{tr}(K^2)x}+2\|K\|_{\rm op}x\right)&\le e^{-x},\\
   \mathbb P\!\left(\operatorname{tr}K-z^{\mathsf T}Kz
      >2\sqrt{\operatorname{tr}(K^2)x}\right)&\le e^{-x}.
  \end{aligned}
  \]
- Instantiated objects: \(K=H_M^{\mathsf T}H_M\) for each of the three
  modes and all \(k\) independent component Gaussians.
- Assumption discharge: accepted realized conditioning gives
  \[
    \frac{\|K\|_{\rm op}}{\operatorname{tr}K}
    \le\frac{\kappa_1^4}{r},\qquad
    \operatorname{tr}(K^2)\le\|K\|_{\rm op}\operatorname{tr}K.
  \]
- Conclusion used: the simultaneous elliptic-radial event in
  Lemma~\(\ref{lem:step-003-radial-transfer}\).

### Quotient and alignment stress results used later

- Lemma~\(\ref{lem:step-003-quotient-lower}\) supplies an actual lower bound
  for the projected full off-component operator, rather than an
  unprojected-block surrogate.
- Lemma~\(\ref{lem:step-003-top-alignment}\) supplies the exact one-slice
  data-dependent alignment calculation used to delimit the remaining
  uniform-supremum blocker.
- Lemma~\(\ref{lem:step-003-radial-transfer}\) supplies the exact
  normalized-to-Gaussian conjugation, covariance bound, radial failure budget,
  and contractive quotient transfer used to identify (21z) as the sole
  remaining theorem-range statement.

### Unresolved result application

No cited theorem or accepted dependency supplies the sharp tails (21j)--(21k)
that the prior route sought after Lemma~
\(\ref{lem:step-003-terracini-chaos}\). Proposition~
\(\ref{prop:step-003-offblock-split}\) first rewrites one cross-mode array as
\[
  E^{ab}Y=A_p\left[
    \left((B_p^{\mathsf T}Y)\circ
    (C_p^{\mathsf T}C_p-I_k)\right)^{\mathsf T}\right],
\tag{20a}
\]
where \(Y=[y_1\ \cdots\ y_k]\in\mathbb R^{r\times k}\), and the other
five arrays have the corresponding mode permutations. Conditional on the
realized physical factors, each direction matrix has columns
\[
  p_i^M=\frac{H_Mz_i^M}{\|H_Mz_i^M\|_2},
  \qquad z_i^M\sim N(0,I_r),
\]
with condition number controlled by \(\kappa\). Thus (20a) identifies a
two-stage anisotropic Gaussian operator factorization, and quotient
projection is contractive, so an unprojected bound would suffice.

Lemma~\(\ref{lem:step-003-fixed-input-crossmode}\) proves the fixed-input
mean-square scale. Lemma~\(\ref{lem:step-003-terracini-chaos}\) below goes
strictly beyond that statement: after grouping by the input component, it
proves the exact identity
\[
  E^{ab}(E^{ab})^*
  =\sum_{j=1}^kR_j^{bc}\otimes p_j^a(p_j^a)^{\mathsf T},
\tag{20aa}
\]
where each \(R_j^{bc}\succeq0\) is an explicit function of \(B_p,C_p\).
Because \(\|E^{ab}\|_{\rm op}^2\) is exactly the norm of the right-hand side,
(20aa) already includes the supremum over every data-dependent multi-column
input. It is not a fixed-vector or one-slice surrogate. The same lemma also
computes both unconditional operator-variance orientations and bounds them by
\(\kappa_1^8(k-1)/r^2\).

The remaining theorem-facing result is therefore a current-notation wrapper
at the confidence value \(t=30\log r\), or on any range containing that
value. Uniformly over the conditioned ACG laws, it must give an upper tail at
squared scale \(k/r^2+t/r\) for the positive-semidefinite sum in (20aa), for
all six mode permutations, and an upper tail at scale
\(\sqrt{k}/r+\sqrt{t/r}\) for each same-mode product-direction Gram
deviation. The ACG normalizers
\(\sqrt r/\|H_Mz_i^M\|_2\) depend on their own Gaussian columns. Thus a
usable theorem must allow operator weights \(R_j^{bc}\) generated by the two
other ACG arrays and must retain their full matrix geometry; replacing
\(R_j^{bc}\) by \(\|R_j^{bc}\|_{\rm op}\) discards the directions across
which the third ACG array acts and does not recover the sharp leading term.

No KMR-, Gordon-, or generic-chaos theorem is invoked here: no available
statement has been restated and discharged for the complete weighted
covariance sum (20aa), all six coupled cross-mode arrays, the same-mode
deviations, the fixed-factor conditional probability, and the required
polynomial-confidence tail. Moreover, Lemma~
\(\ref{lem:step-003-terracini-chaos}\) proves that the stronger all-confidence
formulas (21j)--(21k), with no large-deviation correction, are false even for
the isotropic allowed triple. Treating either those false formulas or an
unchecked replacement theorem as available would violate the
source-to-claim contract.

Unit attempt 7 removes the column-normalization issue rather than treating it
as part of an unchecked chaos theorem. Lemma~
\(\ref{lem:step-003-radial-transfer}\) below reduces the complete normalized
nine-array operator, on an event whose complement is exponentially small in
\(r\), to the same operator \(\widetilde E_G\) built from independent centered
Gaussian vectors with trace-one covariances \(\Omega_M\) satisfying
\(\|\Omega_M\|_{\rm op}\le\kappa_1^4/r\). Thus the exact remaining
theorem-range statement is the following single trace-moment estimate. With
\[
  p_0=\lceil31\log r\rceil,
\]
one needs a finite \(C_G(\kappa)\), independent of \(r,k\) and the fixed
realized factor triple, such that
\[
 \mathbb E\!\left[\operatorname{tr}|\widetilde E_G|^{2p_0}
       \mid A,B,C\right]
 \le 3kr\left[
 C_G(\kappa)\left(
   \frac{\sqrt k}{r}+\sqrt{\frac{p_0}{r}}+\frac{p_0}{r}
 \right)\right]^{2p_0}.
\tag{21z}
\]
This is a theorem-range, not all-confidence, assertion. Markov's inequality
would then give failure at most \(3kr e^{-2p_0}\le r^{-40}\) after increasing
the threshold by a factor \(e\). Since \(p_0\le r\) for sufficiently large
\(r\), \(p_0/r\le\sqrt{p_0/r}\); Lemma~
\(\ref{lem:step-003-radial-transfer}\) would therefore turn (21z) into (TF)
with an additional radial failure at most \(r^{-30}\).

The variance identities (21g)--(21h) check only the two quadratic
contractions of the Gaussian chaos and do not imply (21z). A valid
Latala/trace-word proof must also bound every repeated-component or
high-influence contraction. The one-component event (21l) and the cap events
(21m)--(21t) show why omitting those contraction norms would produce a false
variance-only all-confidence theorem. No checked source in the current inputs
states (21z) with those additional contraction hypotheses already verified,
and no complete trace-word enumeration is supplied here. Consequently (21z),
rather than ACG normalization or a data-dependent supremum, is the precise
remaining local result.

## Local Derivation

### unit_001: lemma

**Lemma (uniform moments for conditioned elliptic angular laws).**
\(\label{lem:step-003-angular-moments}\)
Under Assumption~\(\ref{assump:independent_initialization}\), accepted
Proposition~\(\ref{prop:step-001-realized-conditioning}\), and accepted
Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), conditional on every
fixed realized triple in \(\mathcal E_{\rm cond}\), define
\[
  p_i^a=\frac{\bar\alpha_{i,0}}{\|\bar\alpha_{i,0}\|_2},\quad
  p_i^b=\frac{\bar\beta_{i,0}}{\|\bar\beta_{i,0}\|_2},\quad
  p_i^c=\frac{\bar\gamma_{i,0}}{\|\bar\gamma_{i,0}\|_2}.
\tag{1}
\]
These vectors are defined almost surely and independent across components and
modes. For \(M=A,B,C\), the corresponding direction has exact law
\[
  p=\frac{H_Mz}{\|H_Mz\|_2},\qquad z\sim N(0,I_r),
\tag{2}
\]
is centrally symmetric, and for every deterministic unit \(u\) and integer
\(m\ge1\),
\[
  \mathbb E|\langle u,p\rangle|^{2m}
  \le \kappa_1^{4m}
     \frac{(2m-1)!!}{r(r+2)\cdots(r+2m-2)}
  \le\left(\frac{2\kappa_1^4m}{r}\right)^m.
\tag{3}
\]
In particular,
\[
  \mathbb Ep=0,\qquad
  \|\mathbb E(pp^{\mathsf T})\|_{\rm op}\le\frac{\kappa_1^4}{r},\qquad
  \mathbb Ep_\ell^2\le\frac{\kappa_1^4}{r}.
\tag{4}
\]

**Proof / justification.** Equation (2) follows from the accepted exact
Gaussianization because its scalar multiplier disappears on normalization.
Independence is inherited from the independent \(z_i^M\). The map in (2) is
odd, so central symmetry gives \(\mathbb Ep=0\).

For unit \(u\), put
\(v=H_M^{\mathsf T}u/\|H_M^{\mathsf T}u\|_2\). The accepted singular-value
interval gives
\[
  |\langle u,p\rangle|
  =\frac{|\langle H_M^{\mathsf T}u,z\rangle|}{\|H_Mz\|_2}
  \le\kappa_1^2\frac{|\langle v,z\rangle|}{\|z\|_2}.
\tag{5}
\]
The spherical moment identity proves (3). Taking \(m=1\) and the supremum over
unit \(u\) proves (4). \(\square\)

### unit_002: proposition

**Proposition (exact gauge quotient and Terracini blocks).**
\(\label{prop:step-003-quotient}\)
Under Assumption~\(\ref{assump:independent_initialization}\), accepted
Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted
Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), accepted
Proposition~\(\ref{prop:step-002-exact-scale}\), and
Lemma~\(\ref{lem:step-003-angular-moments}\), conditional on a fixed realized
triple \((A,B,C)\in\mathcal E_{\rm cond}\), let
\(p_i^a,p_i^b,p_i^c\) be the almost surely defined unit directions in (1).
Define on \(\mathcal V_i=(\mathbb R^r)^3\)
\[
  \widetilde J_i(h^a,h^b,h^c)
  =h^a\otimes p_i^b\otimes p_i^c
   +p_i^a\otimes h^b\otimes p_i^c
   +p_i^a\otimes p_i^b\otimes h^c,
\tag{6}
\]
\[
  \mathcal K_i=\{(s p_i^a,t p_i^b,u p_i^c):s+t+u=0\},\qquad
  \mathcal H_i=\mathcal K_i^\perp,
\tag{7}
\]
and \(J_i=\widetilde J_i|_{\mathcal H_i}\). Then
\[
  \ker\widetilde J_i=\mathcal K_i,\qquad
  I_{\mathcal H_i}\preceq J_i^*J_i\preceq3I_{\mathcal H_i}.
\tag{8}
\]
For \(J=\bigoplus_iJ_i\),
\[
  \operatorname{range}J=\mathscr S_0.
\tag{9}
\]
For \(i\ne j\), writing
\(a_{ij}=\langle p_i^a,p_j^a\rangle\), and analogously \(b_{ij},c_{ij}\),
\[
\widetilde J_i^*\widetilde J_j=
\begin{pmatrix}
b_{ij}c_{ij}I_r & c_{ij}p_j^a(p_i^b)^{\mathsf T}
  & b_{ij}p_j^a(p_i^c)^{\mathsf T}\\
c_{ij}p_j^b(p_i^a)^{\mathsf T} & a_{ij}c_{ij}I_r
  & a_{ij}p_j^b(p_i^c)^{\mathsf T}\\
b_{ij}p_j^c(p_i^a)^{\mathsf T}
  & a_{ij}p_j^c(p_i^b)^{\mathsf T} & a_{ij}b_{ij}I_r
\end{pmatrix}.
\tag{10}
\]
If \(\Pi_i\) projects orthogonally onto \(\mathcal H_i\), the quotient block is
\(\Pi_i\widetilde J_i^*\widetilde J_j\Pi_j\).

**Proof / justification.** Write
\(h^a=s_ap_i^a+h_\perp^a\), and similarly in the other modes. The four tensor
terms formed by the common core and the three perpendicular variations are
mutually orthogonal, so
\[
  \|\widetilde J_ih\|_F^2
  =\|h_\perp^a\|_2^2+\|h_\perp^b\|_2^2+\|h_\perp^c\|_2^2
   +(s_a+s_b+s_c)^2.
\tag{11}
\]
This proves the kernel. Orthogonality to the gauge plane forces
\(s_a=s_b=s_c=s\) on \(\mathcal H_i\), where
\[
  \|h\|_2^2=\sum_m\|h_\perp^m\|_2^2+3s^2,\qquad
  \|J_ih\|_F^2=\sum_m\|h_\perp^m\|_2^2+9s^2.
\]
This proves (8). Quotienting the kernel preserves the component tangent range;
nonzero direction rescaling and accepted
Proposition~\(\ref{prop:step-002-exact-scale}\) identify the sum of these
ranges with the raw \(\mathscr S_0\), proving (9). Taking the nine tensor inner
products in (6) gives (10). \(\square\)

### unit_003: lemma

**Lemma (raw diagonal-core target correlation).**
\(\label{lem:step-003-target-correlation}\)
Under Assumptions~\(\ref{assump:rank_window}\) and
\(\ref{assump:independent_initialization}\), accepted
Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted
Lemma~\(\ref{lem:step-002-balanced-gaussianization}\),
Proposition~\(\ref{prop:step-003-quotient}\), and
Lemma~\(\ref{lem:step-003-angular-moments}\), there are
\(C_{\rm TC}(\kappa)\) and \(r_{\rm TC}(\kappa)\) such that, uniformly
conditional on every fixed realized triple in \(\mathcal E_{\rm cond}\),
the event
\[
  \mathcal E_{\rm TC}
  =\left\{\|J^*D_r\|_2^2\le
    C_{\rm TC}(\kappa)\left(\frac{k}{r}+\log r\right)\right\}
\tag{12a}
\]
satisfies
\[
  \mathbb P\left(\mathcal E_{\rm TC}^c\mid A,B,C\right)\le r^{-25}.
\tag{12}
\]

**Proof / justification.** Direct contraction with
\(D_r=\sum_{\ell=1}^re_\ell^{\otimes3}\) gives
\[
  \widetilde J_i^*D_r=
  (p_i^b\odot p_i^c,\ p_i^a\odot p_i^c,\ p_i^a\odot p_i^b).
\tag{13}
\]
Quotient projection only decreases this norm. For one pair set
\[
  X_i^{bc}=\|p_i^b\odot p_i^c\|_2^2
  =\sum_{\ell=1}^r(p_{i,\ell}^b)^2(p_{i,\ell}^c)^2.
\tag{14}
\]
Mode independence and (4) give
\[
  \mathbb EX_i^{bc}\le
  r\left(\frac{\kappa_1^4}{r}\right)^2
  =\frac{\kappa_1^8}{r}.
\tag{15}
\]
Also \(0\le X_i^{bc}\le1\), and these variables are independent over \(i\).
Apply scalar Bernstein with \(u=30\log r\). Since
\(\sqrt{2\mu u}\le\mu+u/2\), with failure at most \(r^{-30}\),
\[
  \sum_{i=1}^kX_i^{bc}
  \le2\kappa_1^8\frac{k}{r}+25\log r.
\tag{16}
\]
The same holds for \(ac\) and \(ab\). A union bound costs at most
\(3r^{-30}\le r^{-25}\). Summing the three estimates and using (13) proves
(12), for example with \(C_{\rm TC}(\kappa)=6\kappa_1^8+75\).
\(\square\)

### unit_004: proposition

**Proposition (off-component split and the \(k/r^2\) variance source).**
\(\label{prop:step-003-offblock-split}\)
Under Assumption~\(\ref{assump:independent_initialization}\), accepted
Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted
Lemma~\(\ref{lem:step-002-balanced-gaussianization}\),
Proposition~\(\ref{prop:step-003-quotient}\), and
Lemma~\(\ref{lem:step-003-angular-moments}\), conditional on a fixed realized
triple \((A,B,C)\in\mathcal E_{\rm cond}\), let
\[
  \widetilde E=\widetilde J^*\widetilde J
   -\operatorname{diag}(\widetilde J_i^*\widetilde J_i).
\tag{17}
\]
Before quotient projection, the three same-mode blocks are
\[
  E^{aa}=
  \left((B_p^{\mathsf T}B_p)\circ(C_p^{\mathsf T}C_p)-I_k\right)
  \otimes I_r,
\tag{18}
\]
and its \(bb\) and \(cc\) analogues, where
\(B_p=[p_1^b\ \cdots\ p_k^b]\), and similarly in the other modes. For every
fixed component \(i\),
\[
  \sum_{j\ne i}
  \mathbb E[(b_{ij}c_{ij})^2\mid p_i^b,p_i^c,A,B,C]
  \le\kappa_1^8\frac{k-1}{r^2}.
\tag{19}
\]
The six cross-mode arrays include
\[
  (E^{ab})_{ij}=c_{ij}p_j^a(p_i^b)^{\mathsf T},\qquad
  (E^{ba})_{ij}=c_{ij}p_j^b(p_i^a)^{\mathsf T},
  \qquad i\ne j,
\tag{20}
\]
and the four analogous \(ac,ca,bc,cb\) arrays from (10). Moreover, for every
\(Y=[y_1\ \cdots\ y_k]\in\mathbb R^{r\times k}\), the first array has the
exact two-stage factorization
\[
  E^{ab}Y=A_p\left[
    \left((B_p^{\mathsf T}Y)\circ
    (C_p^{\mathsf T}C_p-I_k)\right)^{\mathsf T}\right],
\]
and the other five arrays have the corresponding mode permutations.

**Proof / justification.** Formula (18) is the \(aa\) entry of (10), assembled
over components. Conditional on \(p_i^b,p_i^c\), component and mode
independence plus (4) give
\[
  \mathbb E[(b_{ij}c_{ij})^2\mid p_i^b,p_i^c,A,B,C]
  \le\frac{\kappa_1^4}{r}\frac{\kappa_1^4}{r},
\]
which proves (19). Formula (20) is the \(ab\) and \(ba\) part of (10).
For the factorization, the \(i\)-th output column on the right is
\[
  \sum_{j\ne i}p_j^a
  \langle p_i^b,y_j\rangle\langle p_i^c,p_j^c\rangle,
\]
which is exactly \(\sum_{j\ne i}(E^{ab})_{ij}y_j\). The other five identities
follow by permuting the modes.
Crucially,
\(\|(E^{ab})_{ij}\|_{\rm op}=|c_{ij}|\), whose squared mean is only
\(O_\kappa(1/r)\). The additional \(1/r\) needed by (TF) can arise only when
the random output vector \(p_j^a\) and input functional
\((p_i^b)^{\mathsf T}\) remain inside the operator-chaos calculation.
\(\square\)

### unit_007: lemma

**Lemma (fixed-input cross-mode mean square and raw-block lower tail).**
\(\label{lem:step-003-fixed-input-crossmode}\)
Under Assumption~\(\ref{assump:independent_initialization}\), accepted
Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted
Lemma~\(\ref{lem:step-002-balanced-gaussianization}\),
Lemma~\(\ref{lem:step-003-angular-moments}\), and
Proposition~\(\ref{prop:step-003-offblock-split}\), conditional on every fixed
realized triple \((A,B,C)\in\mathcal E_{\rm cond}\), the following holds for
every deterministic \(Y=[y_1\ \cdots\ y_k]\in\mathbb R^{r\times k}\).
Define
\[
 Q_{B,C}(Y)=
 \left[((B_p^{\mathsf T}Y)\circ
 (C_p^{\mathsf T}C_p-I_k))^{\mathsf T}\right].
\tag{20b}
\]
Then
\[
 \mathbb E\|Q_{B,C}(Y)\|_F^2
 \le \kappa_1^8\frac{k-1}{r^2}\|Y\|_F^2,
\tag{20c}
\]
and, because \(E^{ab}Y=A_pQ_{B,C}(Y)\),
\[
 \mathbb E\|E^{ab}Y\|_F^2
 =\mathbb E\|Q_{B,C}(Y)\|_F^2
 \le \kappa_1^8\frac{k-1}{r^2}\|Y\|_F^2.
\tag{20d}
\]
The same conclusion holds for \(E^{ba},E^{ac},E^{ca},E^{bc},E^{cb}\) after
permuting the modes.

The leading scale in (20d) cannot be improved even in the isotropic angular
specialization \(H_A=H_B=H_C=I_r\). In that specialization, fix a component
\(j_0\), a deterministic unit vector \(u\in\mathbb R^r\), and take
\(y_{j_0}=u\), \(y_j=0\) for \(j\ne j_0\). With \(m=k-1\),
\[
 \mathbb E\|E^{ab}Y\|_F^2=\frac{m}{r^2},
 \qquad
 \mathbb P\left(
   \|E^{ab}Y\|_F\ge\frac{\sqrt m}{\sqrt2\,r}
 \right)\ge\frac1{36}.
\tag{20e}
\]
Consequently an unprojected cross-mode block already has natural fixed-input
scale \(\sqrt{k}/r\).  This statement alone makes no claim about the quotient
projection or the complete self-adjoint nine-array operator.  That missing
scope is repaired separately in Lemma~
\(\ref{lem:step-003-quotient-lower}\); (20e) itself remains only an
unprojected-block stress test and is not a contradiction to (TF).

**Proof / justification.** The entries of (20b) are
\[
 (Q_{B,C}(Y))_{ji}
 =\mathbf 1_{\{i\ne j\}}
   \langle p_i^b,y_j\rangle\langle p_i^c,p_j^c\rangle.
\tag{20f}
\]
Therefore, using mode independence and the covariance part of
Lemma~\(\ref{lem:step-003-angular-moments}\),
\[
\begin{aligned}
 \mathbb E\|Q_{B,C}(Y)\|_F^2
 &=\sum_{j=1}^k\sum_{i\ne j}
   \mathbb E\langle p_i^b,y_j\rangle^2\,
   \mathbb E\langle p_i^c,p_j^c\rangle^2\\
 &\le\sum_{j=1}^k\sum_{i\ne j}
   \frac{\kappa_1^4}{r}\|y_j\|_2^2
   \frac{\kappa_1^4}{r}\\
 &=\kappa_1^8\frac{k-1}{r^2}\|Y\|_F^2.
\end{aligned}
\tag{20g}
\]
For the second angular factor, for example, conditioning on \(p_j^c\) gives
\[
 \mathbb E[\langle p_i^c,p_j^c\rangle^2\mid p_j^c,A,B,C]
 \le \frac{\kappa_1^4}{r}\|p_j^c\|_2^2
 =\frac{\kappa_1^4}{r}.
\]

The matrix \(A_p\) is independent of \(Q_{B,C}(Y)\). Its columns are
independent, centered, and have unit norm, so
\[
 \mathbb E(A_p^{\mathsf T}A_p)=I_k.
\tag{20h}
\]
Conditioning on \(Q_{B,C}(Y)\) and applying (20h) proves
\[
 \mathbb E[\|A_pQ_{B,C}(Y)\|_F^2\mid Q_{B,C}(Y),A,B,C]
 =\|Q_{B,C}(Y)\|_F^2,
\]
which establishes (20d). This calculation retains the random output
directions instead of paying \(\|A_p\|_{\rm op}\), and the ACG
column-normalization dependence is already covered by the proved angular
covariance bound.

For (20e), the one-column input makes the output columns orthogonal in their
component index and gives exactly
\[
 Z:=\|E^{ab}Y\|_F^2
 =\sum_{i\ne j_0}
 \langle p_i^c,p_{j_0}^c\rangle^2
 \langle p_i^b,u\rangle^2.
\tag{20i}
\]
Conditional on \(p_{j_0}^c\), the \(m\) summands are independent. For a
uniform vector \(s\) on \(S^{r-1}\) and every deterministic unit \(v\),
\[
 \mathbb E\langle s,v\rangle^2=\frac1r,
 \qquad
 \mathbb E\langle s,v\rangle^4=\frac{3}{r(r+2)}.
\tag{20j}
\]
Thus
\[
 \mathbb EZ=\frac m{r^2},
 \qquad
 \mathbb EZ^2
 \le \frac{m^2+8m}{r^4}.
\tag{20k}
\]
Indeed, the diagonal contribution is at most \(9m/r^4\), while the
off-diagonal contribution is exactly \(m(m-1)/r^4\). The elementary
Paley--Zygmund inequality
\(
 \mathbb P(Z\ge\tfrac12\mathbb EZ)
 \ge(\mathbb EZ)^2/(4\mathbb EZ^2)
\)
therefore yields
\[
 \mathbb P\left(Z\ge\frac m{2r^2}\right)
 \ge\frac{m}{4(m+8)}\ge\frac1{36}.
\]
This proves (20e). \(\square\)

### unit_008: lemma

**Lemma (quotient/full-operator lower bound at the leading scale).**
\(\label{lem:step-003-quotient-lower}\)
Under Assumption~\(\ref{assump:rank_window}\) and Proposition~
\(\ref{prop:step-003-quotient}\), consider the isotropic angular
specialization in which all \(p_i^a,p_i^b,p_i^c\) are independent uniform
vectors on \(\mathbb S^{r-1}\).  Let
\(\Pi=\bigoplus_{i=1}^k\Pi_i\).  For \(r\ge2\),
\[
 \mathbb P\left(
   \|\Pi\widetilde E\Pi\|_{\rm op}
   \ge \frac{\sqrt{k-1}}{2r}
 \right)\ge\frac1{144}.
\tag{20l}
\]
Thus the leading \(\sqrt{k}/r\) scale is necessary for the actual quotient
and complete off-component operator in this specialization.  The lemma is a
lower-bound stress test; it neither contradicts nor proves the upper tail
(21).

**Proof / justification.** Fix \(j_0=1\).  Choose, measurably from
\(p_{j_0}^b\), a unit vector \(u\perp p_{j_0}^b\); for example normalize the
projection of \(e_1\) onto \((p_{j_0}^b)^\perp\), using \(e_2\) on the null
exception.  That exception has probability zero.  Define a unit quotient
input \(h\in\bigoplus_i\mathcal H_i\) by
\[
 h_{j_0}=(0,u,0),\qquad h_i=0\quad(i\ne j_0).
\tag{20m}
\]
Indeed all three parallel coefficients of \(h_{j_0}\) are zero, so
\(h_{j_0}\in\mathcal H_{j_0}\), and hence \(\Pi h=h\).

For \(i\ne j_0\), formula (10) shows that the first-mode component of
\((\widetilde Eh)_i\) is
\[
 c_{i j_0}p_{j_0}^a\langle p_i^b,u\rangle.
\tag{20n}
\]
Projection onto \(\mathcal H_i=\mathcal K_i^\perp\) can change a first-mode
component only by a vector parallel to \(p_i^a\).  Therefore its perpendicular
part is unchanged, and
\[
 \|\Pi\widetilde E\Pi h\|_2^2
 \ge Z:=\sum_{i\ne j_0}
 c_{i j_0}^2\langle p_i^b,u\rangle^2
 \left(1-a_{i j_0}^2\right).
\tag{20o}
\]

Condition on the three directions of component \(j_0\), and hence on \(u\).
The \(m=k-1\) summands \(X_i\) in (20o) are then independent.  Spherical
second moments and mode independence give
\[
 \mathbb E[X_i\mid p_{j_0}^a,p_{j_0}^b,p_{j_0}^c]
 =\frac1r\frac1r\left(1-\frac1r\right)
 =\frac{r-1}{r^3}.
\tag{20p}
\]
Using the spherical fourth moment
\(3/(r(r+2))\) for the first two factors and
\((1-a_{i j_0}^2)^2\le1\),
\[
 \mathbb E[X_i^2\mid p_{j_0}^a,p_{j_0}^b,p_{j_0}^c]
 \le\frac9{r^2(r+2)^2}\le\frac9{r^4}.
\tag{20q}
\]
Consequently, conditionally and hence unconditionally,
\[
 \mathbb EZ=\frac{m(r-1)}{r^3},\qquad
 \mathbb EZ^2\le\frac{m^2+8m}{r^4}.
\tag{20r}
\]
Paley--Zygmund at level \(1/2\) yields
\[
 \mathbb P\left(Z\ge\frac12\mathbb EZ\right)
 \ge\frac14\frac{m}{m+8}\left(1-\frac1r\right)^2
 \ge\frac1{144}.
\tag{20s}
\]
On this event, \(r\ge2\) gives
\[
 Z\ge\frac{m(r-1)}{2r^3}\ge\frac{m}{4r^2}.
\]
Since \(h\) is a unit quotient input, (20o) proves (20l). \(\square\)

### unit_009: lemma

**Lemma (canonical data-dependent top-singular alignment test).**
\(\label{lem:step-003-top-alignment}\)
Under Assumption~\(\ref{assump:rank_window}\), in the same isotropic angular
specialization, let \(A_p=[p_1^a\ \cdots\ p_k^a]\).  For all sufficiently
large \(r\), with probability at least \(1-2r^{-30}\) over \(A_p\), there is
an index \(i_0\), a vector \(\bar v\in\mathbb R^k\) with
\(\bar v_{i_0}=0\), and a data-dependent input \(Y\) of the form below such
that, conditionally on \(A_p,p_{i_0}^b,p_{i_0}^c\),
\[
 \frac{\sqrt{\mathbb E_C\|(E^{ab}Y)_{i_0}\|_2^2}}
      {\sqrt{\mathbb E_C\|Y\|_F^2}}
 \in\left[\frac{\sqrt k}{2r},\frac{8\sqrt k}{r}\right].
\tag{20t}
\]
Here \(\mathbb E_C\) integrates only the independent directions
\(p_j^c\), \(j\ne i_0\).  Thus the canonical attempt to align one column of
\(Q_{B,C}(Y)\) with a top right singular direction of \(A_p\) has exactly the
target leading scale: the full-space amplification
\(\|A_p\|_{\rm op}=\Theta(\sqrt{k/r})\) is offset by the two angular weights.
This one-slice calculation does not control the fully adaptive multi-column
class \(\mathcal Q_{B,C}\).

**Proof / justification.** Write \(p_j^a=g_j/\|g_j\|_2\) with independent
standard Gaussian \(g_j\), and let \(G=[g_1\ \cdots\ g_k]\).  The checked
Gaussian and chi tails give, with failure at most \(2r^{-30}\),
\[
 \min_j\|g_j\|_2\ge\sqrt{r/2},\qquad
 \|G\|_{\rm op}\le\sqrt r+\sqrt k+\sqrt{60\log r}\le3\sqrt k.
\tag{20u}
\]
Hence on this event
\[
 \|A_p\|_{\rm op}\le5\sqrt{k/r}.
\tag{20v}
\]
Conversely, \(\|A_p\|_F^2=k\) and \(\operatorname{rank}(A_p)\le r\), so
deterministically \(\sigma:=\|A_p\|_{\rm op}\ge\sqrt{k/r}\).

Let \(v\) be a unit top right singular vector.  Choose \(i_0\) with
\(|v_{i_0}|\le k^{-1/2}\), and put
\(\bar v=v-v_{i_0}e_{i_0}\).  For \(r\ge4\) and \(k>r\),
\[
 \|A_p\bar v\|_2
 \ge\sigma-k^{-1/2}\ge\frac12\sqrt{k/r},
 \qquad 1-k^{-1}\le\|\bar v\|_2^2\le1.
\tag{20w}
\]
Set \(d_j=\langle p_{i_0}^c,p_j^c\rangle\), \(d_{i_0}=0\), and choose
\[
 y_j=\bar v_jd_jp_{i_0}^b\quad(j\ne i_0),qquad y_{i_0}=0.
\tag{20x}
\]
This input is allowed to depend on \(A_p,B_p,C_p\).  The exact factorization
(20a) gives, for its \(i_0\)-th output column,
\[
 (Q_{B,C}(Y))_{j i_0}=\bar v_jd_j^2,qquad
 (E^{ab}Y)_{i_0}=A_p\operatorname{diag}(d_j^2)\bar v.
\tag{20y}
\]
Conditional on \(A_p,p_{i_0}^b,p_{i_0}^c\), the \(d_j\), \(j\ne i_0\), are
independent with
\(\mathbb Ed_j^2=1/r\) and
\(\mathbb Ed_j^4=3/(r(r+2))\).  Therefore
\[
 \mathbb E_C\|Y\|_F^2=\frac{\|\bar v\|_2^2}{r},
\]
and, with \(\Delta_r=2(r-1)/(r^2(r+2))\),
\[
 \mathbb E_C\|(E^{ab}Y)_{i_0}\|_2^2
 =\frac{\|A_p\bar v\|_2^2}{r^2}
  +\Delta_r\|\bar v\|_2^2.
\tag{20z}
\]
Dividing the two identities, then using (20v)--(20w), gives
\[
 \frac{k}{4r^2}
 \le
 \frac{\mathbb E_C\|(E^{ab}Y)_{i_0}\|_2^2}
      {\mathbb E_C\|Y\|_F^2}
 \le\frac{64k}{r^2},
\]
which proves (20t).  The construction tests the feared top-singular
alignment directly, but its rowwise one-slice form does not exclude a more
efficient alignment spread over many columns of \(Q_{B,C}(Y)\). \(\square\)

### unit_005: lemma

**Lemma (full multi-column covariance reduction and all-confidence
obstruction).**
\(\label{lem:step-003-terracini-chaos}\)
Under Assumptions~\(\ref{assump:rank_window}\) and
\(\ref{assump:independent_initialization}\), accepted
Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted
Lemma~\(\ref{lem:step-002-balanced-gaussianization}\),
Proposition~\(\ref{prop:step-003-quotient}\),
Lemma~\(\ref{lem:step-003-angular-moments}\),
Proposition~\(\ref{prop:step-003-offblock-split}\), and
Lemma~\(\ref{lem:step-003-fixed-input-crossmode}\), conditional on every fixed
realized triple \((A,B,C)\in\mathcal E_{\rm cond}\), the following exact
full-operator reduction holds.  Put
\[
 G_b=B_p^{\mathsf T}B_p,\qquad
 G_c=C_p^{\mathsf T}C_p,\qquad C_0=G_c-I_k,\qquad
 d_j^c=C_0e_j,\qquad D_j^c=\operatorname{diag}(d_j^c),
\]
\[
 R_j^{bc}=D_j^cG_bD_j^c\succeq0,
 \qquad
 S_j^{bc}=B_p(D_j^c)^2B_p^{\mathsf T}\succeq0.
\tag{21b}
\]
Then
\[
 \|R_j^{bc}\|_{\rm op}=\|S_j^{bc}\|_{\rm op}
\tag{21c}
\]
and, with output ordered by component and then coefficient coordinate,
\[
 E^{ab}(E^{ab})^*
 =\sum_{j=1}^kR_j^{bc}\otimes p_j^a(p_j^a)^{\mathsf T}.
\tag{21d}
\]
Consequently (21d) is an exact representation of the fully adaptive
multi-column operator norm, not a deterministic-input moment bound.

Let
\[
 \Gamma_M=\mathbb E[p_i^M(p_i^M)^{\mathsf T}\mid A,B,C],
 \qquad M\in\{a,b,c\},
\tag{21e}
\]
where the physical factor matched to the mode is fixed.  Then
\(\operatorname{tr}\Gamma_M=1\) and
\(\|\Gamma_M\|_{\rm op}\le\kappa_1^4/r\).  Conditional on \(B_p,C_p\),
\[
 \mathbb E_{A_p}[E^{ab}(E^{ab})^*\mid B_p,C_p,A,B,C]
 =\bigl(G_b\circ C_0^2\bigr)\otimes\Gamma_a.
\tag{21f}
\]
Writing \(\tau_c=\operatorname{tr}(\Gamma_c^2)\le\kappa_1^4/r\), full
expectation over the three angular arrays, still conditional on the fixed
physical factors, gives both operator-variance
orientations exactly:
\[
 \mathbb E[E^{ab}(E^{ab})^*\mid A,B,C]
 =(k-1)\tau_c I_k\otimes\Gamma_a,
\]
\[
 \mathbb E[(E^{ab})^*E^{ab}\mid A,B,C]
 =(k-1)\tau_c I_k\otimes\Gamma_b.
\tag{21g}
\]
In particular, each norm in (21g) is at most
\[
 \kappa_1^8\frac{k-1}{r^2}.
\tag{21h}
\]
The same identities hold for the other five cross-mode arrays after
permuting modes.

The attempted sufficient wrapper in unit attempt 5 asked for finite constants
\(C_{\rm TF}(\kappa)\), \(C_{\rm dec}(\kappa)\), and
\(r_{\rm TF}(\kappa)\) such that, for every
\(r\ge r_{\rm TF}(\kappa)\), \(r<k\le r^{5/4}\), and \(t\ge1\),
\[
  \mathcal E_{\rm TF}(t)=\left\{
  \left\|\left(\bigoplus_i\Pi_i\right)\widetilde E
       \left(\bigoplus_i\Pi_i\right)\right\|_{\rm op}
 \le C_{\rm TF}(\kappa)\left(\frac{\sqrt k}{r}+\sqrt{\frac tr}\right)
 \right\}.
\tag{21a}
\]
and
\[
  \mathbb P\left(\mathcal E_{\rm TF}(t)^c\mid A,B,C\right)
  \le C_{\rm dec}(\kappa)e^{-t}.
\tag{21}
\]
Here \(\widetilde E\) is exactly (17), including (18) and all six arrays
(20).  The exact theorem-facing use is only \(t=30\log r\).  The stronger
all-\(t\) event (21) and route through (21j)--(21k), stated below, are
impossible without a large-deviation correction. More precisely, in the
allowed isotropic specialization and for all sufficiently large \(r\),
\[
 \mathbb P\left(
 \|G_b\circ(C_p^{\mathsf T}C_p)-I_k\|_{\rm op}\ge\frac{k-1}{16}
 \right)\ge e^{-40rk},
\]
and
\[
 \mathbb P\left(
 \left\|\sum_jR_j^{bc}\otimes p_j^a(p_j^a)^{\mathsf T}\right\|_{\rm op}
 \ge\frac{25(k-1)^2}{1024}
 \right)\ge e^{-60rk}.
\]
The same cap event also gives
\[
 \mathbb P\left(
 \left\|\left(\bigoplus_i\Pi_i\right)\widetilde E
 \left(\bigoplus_i\Pi_i\right)\right\|_{\rm op}
 \ge\frac{3(k-1)}{64}
 \right)\ge e^{-60rk}.
\]
Consequently no finite constants depending only on \(\kappa\) can make
(21), (21j), or (21k) valid for every \(t\ge1\).

**Proof / justification.** For \(Y=[y_1\ \cdots\ y_k]\), define the operator
\(L_j^{ab}\) by
\[
 (L_j^{ab}Y)_i
 =\mathbf1_{\{i\ne j\}}c_{ij}p_j^a
   \langle p_i^b,y_j\rangle.
\tag{21i}
\]
Formula (20) gives \(E^{ab}=\sum_jL_j^{ab}\).  Each \(L_j^{ab}\) reads only
the \(j\)-th input block.  Hence, if \(j\ne\ell\),
\(L_j^{ab}(L_\ell^{ab})^*=0\).  The \((i,i')\) output block of
\(L_j^{ab}(L_j^{ab})^*\) is
\[
 c_{ij}c_{i'j}\langle p_i^b,p_{i'}^b\rangle
 p_j^a(p_j^a)^{\mathsf T},
\]
which is precisely the \((i,i')\) block of
\(R_j^{bc}\otimes p_j^a(p_j^a)^{\mathsf T}\).  Summing over \(j\) proves
(21d).  Also
\[
 R_j^{bc}=(B_pD_j^c)^{\mathsf T}(B_pD_j^c),\qquad
 S_j^{bc}=(B_pD_j^c)(B_pD_j^c)^{\mathsf T},
\]
so their nonzero spectra agree, proving (21c).

The direction \(p_j^a\) is independent of \(B_p,C_p\), and the \(a\)-mode
directions are iid conditional on the fixed physical factors.  Taking their
expectation in (21d) gives
\[
 \sum_jR_j^{bc}\otimes\Gamma_a
 =\left(G_b\circ\sum_jd_j^c(d_j^c)^{\mathsf T}\right)\otimes\Gamma_a
 =(G_b\circ C_0^2)\otimes\Gamma_a,
\]
which proves (21f).  Lemma~\(\ref{lem:step-003-angular-moments}\) gives
\(\|\Gamma_M\|_{\rm op}\le\kappa_1^4/r\), while unit norm gives
\(\operatorname{tr}\Gamma_M=1\) and hence
\(\tau_c=\operatorname{tr}(\Gamma_c^2)\le\kappa_1^4/r\).

For the first identity in (21g), the diagonal entries of
\(G_b\circ C_0^2\) have expectation \((k-1)\tau_c\).  Every off-diagonal
entry has expectation zero because \(G_b(i,i')\), \(i\ne i'\), is independent
of the \(c\)-mode array and has mean zero by central symmetry.  Thus
\[
 \mathbb E[G_b\circ C_0^2\mid A,B,C]=(k-1)\tau_c I_k.
\]
For the other orientation, \((E^{ab})^*E^{ab}\) has diagonal input block
\(S_j^{bc}\).  Off-diagonal input blocks contain
\(\langle p_j^a,p_\ell^a\rangle\) and have mean zero for \(j\ne\ell\).
Moreover
\[
 \mathbb E S_j^{bc}
 =\sum_{i\ne j}\mathbb E[c_{ij}^2]
   \mathbb E[p_i^b(p_i^b)^{\mathsf T}]
 =(k-1)\tau_c\Gamma_b.
\]
This proves (21g), and (21h) follows from the covariance bounds.  All steps
are invariant under mode permutation.

Unit attempt 5 proposed upgrading (21f)--(21h) through the all-confidence
cross-mode statement
\[
 \mathbb P\left(
 \left\|\sum_jR_j^{bc}\otimes p_j^a(p_j^a)^{\mathsf T}\right\|_{\rm op}
 >C_{\rm cov}(\kappa)\left(\frac{k}{r^2}+\frac tr\right)
 \ \middle|\ A,B,C\right)
 \le C_{\rm cov,dec}(\kappa)e^{-t},
\tag{21j}
\]
with the five permuted analogues, and the all-confidence same-mode statement
\[
 \mathbb P\left(
 \|G_b\circ(C_p^{\mathsf T}C_p)-I_k\|_{\rm op}
 >C_{\rm sm}(\kappa)\left(\frac{\sqrt k}{r}+\sqrt{\frac tr}\right)
 \ \middle|\ A,B,C\right)
 \le C_{\rm sm,dec}(\kappa)e^{-t},
\tag{21k}
\]
and its two mode permutations.

These statements would imply the required cross-mode norm because
\(\sqrt{x+y}\le\sqrt x+\sqrt y\).  A union bound over nine arrays and the
operator norm bound for a \(3\times3\) block matrix would then prove (21): if
every mode-block norm is at most \(u\), then each output-mode norm is at most
\(u(\|x_a\|+\|x_b\|+\|x_c\|)\), so the full norm is at most \(3u\|x\|\).
Quotient projection is contractive.

Neither accepted dependency nor a checked cited theorem proves (21j)--(21k)
for the column-normalized ACG law.  The exact reduction also explains why
ordinary componentwise bounded-increment concentration is insufficient.  In
the isotropic specialization, the variable \(Z\) from (20i) satisfies
\[
 u^{\mathsf T}S_{j_0}^{bc}u=Z,
 \qquad
 \mathbb P\left(
   \|L_{j_0}^{ab}\|_{\rm op}
   \ge\frac{\sqrt{k-1}}{\sqrt2r}
 \right)\ge\frac1{36}.
\tag{21l}
\]
Thus a route that replaces each matrix weight by its operator norm
already pays the entire leading scale in one component and cannot by itself
produce the required logarithm-free leading term at polynomial confidence.
This is a rigorous obstruction to that proof route.  The following cap
argument is stronger: it disproves the all-\(t\) formulations (21), (21j),
and (21k) while leaving the theorem-needed value \(t=30\log r\) open.

Take the allowed isotropic fixed-factor specialization
\(H_A=H_B=H_C=I_r\).  For example, each fixed realized factor may have the
first \(r\) coordinate vectors as its columns; then its compact SVD has
\(\Sigma=V=I_r\), it belongs to \(\mathcal E_{\rm cond}\), and its
coefficient directions are uniform on \(\mathbb S^{r-1}\).  If
\(s=g/\|g\|_2\) for
\(g\sim N(0,I_r)\), then, for all sufficiently large \(r\),
\[
 \mathbb P\left(s_1\ge\frac5{\sqrt{40}}\right)\ge e^{-20r}.
\tag{21m}
\]
Indeed, on
\[
 5\sqrt r\le g_1\le6\sqrt r,
 \qquad \|g_{2:r}\|_2\le2\sqrt r,
\]
one has \(s_1\ge5/\sqrt{40}\).  Independence, the Gaussian density, and
Markov's inequality give
\[
\begin{aligned}
 \mathbb P(5\sqrt r\le g_1\le6\sqrt r)
 &\ge \frac{\sqrt r}{\sqrt{2\pi}}e^{-18r},\\
 \mathbb P(\|g_{2:r}\|_2\le2\sqrt r)
 &\ge1-\frac{r-1}{4r}\ge\frac34,
\end{aligned}
\]
which proves (21m) after a finite numerical threshold.  Any two unit vectors
\(u,v\) in this cap satisfy
\[
 \langle u,v\rangle
 \ge \frac58-\left(1-\frac58\right)=\frac14.
\tag{21n}
\]

Let \(\mathcal A_{bc}\) be the event that all \(2k\) directions
\(p_i^b,p_i^c\) lie in the cap.  By independence and (21m),
\(\mathbb P(\mathcal A_{bc})\ge e^{-40rk}\).  On this event, every
off-diagonal entry of
\(G_b\circ(C_p^{\mathsf T}C_p)-I_k\) is at least \(1/16\).  Testing against
\(k^{-1/2}{\bf1}\) gives
\[
 \left\|G_b\circ(C_p^{\mathsf T}C_p)-I_k\right\|_{\rm op}
 \ge\frac{k-1}{16},
 \qquad
 \mathbb P\left(\left\|G_b\circ(C_p^{\mathsf T}C_p)-I_k\right\|_{\rm op}
 \ge\frac{k-1}{16}\right)\ge e^{-40rk}.
\tag{21o}
\]
Suppose finite positive constants \(C_{\rm sm},C_{\rm sm,dec}\) made (21k)
valid for every \(t\ge1\).  Put \(k=r+1\), which belongs to the rank window
for large \(r\), and
\[
 t_{\rm sm}=\frac{r(k-1)^2}{4096C_{\rm sm}^2}.
\tag{21p}
\]
Then
\(C_{\rm sm}\sqrt{t_{\rm sm}/r}=(k-1)/64\), and, for all sufficiently
large \(r\),
\(C_{\rm sm}\sqrt{k}/r\le(k-1)/64\).  Thus the cap event in (21o) is
contained in the tail event in (21k), so (21k) would imply
\[
 e^{-40rk}\le C_{\rm sm,dec}e^{-t_{\rm sm}}.
\]
But \(t_{\rm sm}/(rk)=(k-1)^2/(4096C_{\rm sm}^2k)\to\infty\), a
contradiction.  Hence (21k), with its quantifier over every \(t\ge1\), is
false even in the isotropic specialization.

The cross-mode all-confidence statement fails for the same reason.  Let
\(\mathcal A_{abc}\) be the event that all \(3k\) directions lie in the cap;
then \(\mathbb P(\mathcal A_{abc})\ge e^{-60rk}\).  Take the unit input
\(Y=[e_1/\sqrt k\ \cdots\ e_1/\sqrt k]\).  Formula (20) and (21n) give,
for every output component \(i\),
\[
 \left\langle e_1,(E^{ab}Y)_i\right\rangle
 =\frac1{\sqrt k}\sum_{j\ne i}c_{ij}
   \langle p_i^b,e_1\rangle\langle e_1,p_j^a\rangle
 \ge\frac{5(k-1)}{32\sqrt k}.
\]
Consequently, on \(\mathcal A_{abc}\),
\[
 \|E^{ab}\|_{\rm op}^2
 =\left\|\sum_jR_j^{bc}\otimes p_j^a(p_j^a)^{\mathsf T}\right\|_{\rm op}
 \ge\frac{25(k-1)^2}{1024},
\tag{21q}
\]
with probability at least \(e^{-60rk}\).  If finite positive
\(C_{\rm cov},C_{\rm cov,dec}\) made (21j) valid for every \(t\ge1\), take
again \(k=r+1\) and set
\[
 t_{\rm cov}=\frac{25r(k-1)^2}{4096C_{\rm cov}}.
\tag{21r}
\]
For sufficiently large \(r\), the threshold in (21j) is at most half the
lower bound in (21q), whereas
\(t_{\rm cov}/(rk)=25(k-1)^2/(4096C_{\rm cov}k)\to\infty\).  This contradicts
\(e^{-60rk}\le C_{\rm cov,dec}e^{-t_{\rm cov}}\).  Thus (21j) is also false
with the all-\(t\) quantifier.

The full quotient event (21) has the same all-confidence obstruction, so the
failure is not an artifact of bounding its nine blocks separately. On
\(\mathcal A_{abc}\), define
\[
 h_i=\frac1{\sqrt{3k}}(p_i^a,p_i^b,p_i^c),\qquad i\in[k].
\]
The three parallel coefficients of each \(h_i\) are equal, hence
\(h_i\in\mathcal H_i\), and \(\|h\|_2=1\). Moreover, if
\(u_i=p_i^a\otimes p_i^b\otimes p_i^c\), then
\(\widetilde J_i h_i=\sqrt{3/k}\,u_i\). Therefore (21n) gives
\[
 \left\|\left(\bigoplus_i\Pi_i\right)\widetilde E
 \left(\bigoplus_i\Pi_i\right)\right\|_{\rm op}
 \ge \langle h,\widetilde Eh\rangle
 =\frac3k\sum_{i\ne j}a_{ij}b_{ij}c_{ij}
 \ge\frac{3(k-1)}{64}
\tag{21s}
\]
with probability at least \(e^{-60rk}\). If (21) held for every \(t\ge1\),
take \(k=r+1\) and
\[
 t_{\rm TF}=\frac{9r(k-1)^2}{65536C_{\rm TF}^2}.
\tag{21t}
\]
For sufficiently large \(r\), the threshold in (21a) is at most half the
lower bound in (21s), while \(t_{\rm TF}/(rk)\to\infty\). This contradicts
\(e^{-60rk}\le C_{\rm dec}e^{-t_{\rm TF}}\). Thus the all-\(t\) form of
(21) is itself false.

The obstruction identifies the missing large-deviation scale.  Either the
tail wrapper must be restricted to a range containing the only consumed
value \(t=30\log r\), or an all-confidence version must contain terms at
least compatible with
\[
 \frac{k}{r^2}+\frac tr+\frac{t^2}{r^2}
 \quad\hbox{in (21j)},
 \qquad
 \frac{\sqrt k}{r}+\sqrt{\frac tr}+\frac tr
 \quad\hbox{in (21k)}.
\tag{21u}
\]
For \(t=30\log r\) and sufficiently large \(r\), the added terms satisfy
\(t^2/r^2\le t/r\) and \(t/r\le\sqrt{t/r}\), so (21u) does not weaken the
theorem-facing (TF) rate.  No target-range weighted-ACG covariance or
product-direction Gram tail is proved here. Lemma~
\(\ref{lem:step-003-radial-transfer}\) below subsequently removes the ACG
normalizers and reduces that missing target-range claim to (21z).

Taking \(t=30\log r\) in a valid target-range replacement for (21) would
give
\[
  C_{\rm TF}(\kappa)
  \left(r^{-3/8}+\sqrt{30\log r/r}\right)\le\frac12
\tag{22}
\]
for sufficiently large \(r\), by \(k\le r^{5/4}\).  Because neither the
target-range replacement nor the corrected all-confidence wrapper is proved,
(22) cannot be used. \(\square\)

### unit_010: lemma

**Lemma (exact elliptic-radial transfer to a Gaussian Terracini chaos).**
\(\label{lem:step-003-radial-transfer}\)
Under Assumptions~\(\ref{assump:rank_window}\) and
\(\ref{assump:independent_initialization}\), accepted
Proposition~\(\ref{prop:step-001-realized-conditioning}\), accepted
Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), and
Proposition~\(\ref{prop:step-003-quotient}\), conditional on every fixed
realized triple \((A,B,C)\in\mathcal E_{\rm cond}\), define, for the factor
matched to mode \(M\in\{a,b,c\}\),
\[
 \vartheta_M=\operatorname{tr}(H_M^{\mathsf T}H_M),\qquad
 u_i^M=\frac{H_Mz_i^M}{\sqrt{\vartheta_M}},\qquad
 q_i^M=\|u_i^M\|_2.
\tag{21v}
\]
Then the \(u_i^M\)'s are independent centered Gaussian vectors with
covariances
\[
 \Omega_M=\frac{H_MH_M^{\mathsf T}}{\vartheta_M},\qquad
 \operatorname{tr}\Omega_M=1,qquad
 \|\Omega_M\|_{\rm op}\le\frac{\kappa_1^4}{r},
\tag{21w}
\]
and \(p_i^M=u_i^M/q_i^M\) almost surely. The simultaneous radial event
\[
 \mathcal R_{\rm ell}
 =\left\{\frac12\le q_i^M\le2: i\in[k],\ M\in\{a,b,c\}\right\}
\tag{21x}
\]
satisfies
\[
 \mathbb P(\mathcal R_{\rm ell}^c\mid A,B,C)
 \le6k\exp\!\left(-\frac{r}{256\kappa_1^4}\right)
 \le r^{-30}
\tag{21y}
\]
for all sufficiently large \(r\), uniformly over the fixed realized triple.

Let \(\widetilde J_G\) be the map obtained from (6) by replacing every
\(p_i^M\) by \(u_i^M\), and put
\[
 \widetilde E_G=\widetilde J_G^*\widetilde J_G
 -\operatorname{diag}((\widetilde J_{G,i})^*\widetilde J_{G,i}).
\]
On the direct sum of the three mode blocks of component \(i\), let the
positive block-diagonal operator \(D\) act by
\[
 D_i(h^a,h^b,h^c)=\left(
 \frac{h^a}{q_i^bq_i^c},
 \frac{h^b}{q_i^aq_i^c},
 \frac{h^c}{q_i^aq_i^b}
 \right).
\tag{21x-a}
\]
Then, without any event restriction,
\[
 \widetilde J=\widetilde J_GD,qquad
 \widetilde E=D\widetilde E_GD.
\tag{21x-b}
\]
Consequently, on \(\mathcal R_{\rm ell}\),
\[
 \|D\|_{\rm op}\le4,qquad
 \left\|\left(\bigoplus_i\Pi_i\right)\widetilde E
       \left(\bigoplus_i\Pi_i\right)\right\|_{\rm op}
 \le16\|\widetilde E_G\|_{\rm op}.
\tag{21x-c}
\]
Thus (21z) is sufficient for the exact theorem-range (TF) event; no ACG
normalizer, radial conditioning, or quotient-conjugation issue remains.

**Proof / justification.** Accepted Gaussianization gives
\(p_i^M=H_Mz_i^M/\|H_Mz_i^M\|_2=u_i^M/q_i^M\), with independence across
all components and modes. Accepted realized conditioning puts every singular
value of \(H_M\) in \([\kappa_1^{-1},\kappa_1]\). Hence
\[
 \frac r{\kappa_1^2}\le\vartheta_M\le r\kappa_1^2,
 \qquad
 \frac{\|H_M\|_{\rm op}^2}{\vartheta_M}
 \le\frac{\kappa_1^4}{r},
\]
which proves (21w).

For one \((i,M)\), apply the restated Gaussian quadratic-form tail to
\(K=H_M^{\mathsf T}H_M\) and
\(x=r/(256\kappa_1^4)\). Since
\[
 \frac{\operatorname{tr}(K^2)}{(\operatorname{tr}K)^2}
 \le\frac{\|K\|_{\rm op}}{\operatorname{tr}K}
 \le\frac{\kappa_1^4}{r},
\]
the normalized lower deviation is at most \(1/8\), and the normalized upper
deviation is at most
\[
 2\sqrt{\frac{\kappa_1^4x}{r}}
 +2\frac{\kappa_1^4x}{r}
 =\frac18+\frac1{128}<\frac34.
\]
Therefore \(q_i^M\in[1/2,2]\) except on an event of probability at most
\(2\exp[-r/(256\kappa_1^4)]\). A union bound over \(3k\) pairs gives the
first inequality in (21y). Assumption~\(\ref{assump:rank_window}\) gives
\(k\le r^{5/4}\), so the exponential term is at most \(r^{-30}\) after a
finite threshold depending only on \(\kappa\).

For the algebraic transfer, the first term of
\(\widetilde J_GD_i(h^a,h^b,h^c)\) is
\[
 \frac{h^a}{q_i^bq_i^c}\otimes u_i^b\otimes u_i^c
 =h^a\otimes p_i^b\otimes p_i^c,
\]
and the other two terms are identical after cyclic permutation. This proves
\(\widetilde J=\widetilde J_GD\). Conjugation also carries each individual
within-component Gram block to its normalized counterpart, so subtracting
the block diagonal proves the second identity in (21x-b). On
\(\mathcal R_{\rm ell}\), every scalar block of \(D\) is at most \(4\).
Finally, orthogonal quotient projection is contractive; it need not commute
with \(D\). Therefore
\[
 \|\Pi\widetilde E\Pi\|_{\rm op}
 \le\|D\widetilde E_GD\|_{\rm op}
 \le16\|\widetilde E_G\|_{\rm op},
\]
which proves (21x-c). \(\square\)

### unit_006: proposition

**Proposition (raw tangent deficit conditional on the frame estimate).**
\(\label{prop:step-003-deficit-from-frame}\)
Under Assumption~\(\ref{assump:rank_window}\), accepted
Proposition~\(\ref{prop:step-002-exact-scale}\),
Proposition~\(\ref{prop:step-003-quotient}\), and
Lemma~\(\ref{lem:step-003-target-correlation}\), conditional on a fixed
realized triple \((A,B,C)\in\mathcal E_{\rm cond}\), if the realized
initialization belongs to the explicit intersection
\[
  \mathcal E_{\rm TF}(30\log r)\cap\mathcal E_{\rm TC}
\tag{23a}
\]
and \(r\) is sufficiently large that (22) holds, then
\[
  \|P_{\mathscr S_0}D_r\|_F^2\le\frac r2,\qquad
  \|P_{\mathscr S_0^\perp}D_r\|_F\ge\sqrt{\frac r2}.
\tag{23}
\]
Consequently
\[
  W_0=\frac{P_{\mathscr S_0^\perp}D_r}
  {\|P_{\mathscr S_0^\perp}D_r\|_F}
\tag{24}
\]
is a unit tensor orthogonal to \(\mathscr S_0\), and
\[
  \langle D_r-\widehat D_0,W_0\rangle
  \ge\sqrt{\frac r2}\ge\delta_0\|D_r\|_F,\qquad \delta_0=\frac18.
\tag{25}
\]

**Proof / justification.** Proposition~\(\ref{prop:step-003-quotient}\) gives
the block-diagonal lower bound \(I\). On
\(\mathcal E_{\rm TF}(30\log r)\), (22) and Weyl's inequality give
\(J^*J\succeq I/2\), hence \(\|(J^*J)^{-1}\|_{\rm op}\le2\). The projection
formula and membership in \(\mathcal E_{\rm TC}\) imply
\[
\begin{aligned}
  \|P_{\mathscr S_0}D_r\|_F^2
  &=\langle J^*D_r,(J^*J)^{-1}J^*D_r\rangle\\
  &\le2C_{\rm TC}(\kappa)\left(\frac{k}{r}+\log r\right)\\
  &\le2C_{\rm TC}(\kappa)(r^{1/4}+\log r)\le\frac r2
\end{aligned}
\tag{26}
\]
after a finite threshold. Since \(\|D_r\|_F^2=r\), Pythagoras gives (23).
Also \(\widehat D_0\in\mathscr S_0\): each of its summands is a first-mode
tangent generator with \(u=\alpha_{i,0}\). Thus (24)--(25) follow. The exact
raw \(D_r\) and \(\widehat D_0\) are never normalized. \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-003-angular-moments}\) proves the exact independent
anisotropic angular laws and moments. Proposition~
\(\ref{prop:step-003-quotient}\) removes exactly the gauge kernel, proves the
within-block Gram interval \([1,3]\), identifies the raw tangent range, and
derives all off-component blocks. Lemma~
\(\ref{lem:step-003-target-correlation}\) completely proves (TC), including
the raw \(D_r\), scale \(k/r+\log r\), and failure \(r^{-25}\). Proposition~
\(\ref{prop:step-003-offblock-split}\) proves the same-mode structure and
\(k/r^2\) variance source and isolates the cross-mode operator chaoses.
Lemma~\(\ref{lem:step-003-fixed-input-crossmode}\) then proves the exact
fixed-input mean-square bound for all six cross-mode arrays, handles the ACG
normalization through already proved moments, and limits its own sharpness
claim to an unprojected block. Lemma~
\(\ref{lem:step-003-quotient-lower}\) repairs that scope by proving a
constant-probability \(\sqrt{k}/r\) lower bound for the actual projected full
operator in the isotropic angular model. Lemma~
\(\ref{lem:step-003-top-alignment}\) then tests the exact two-stage
factorization with a data-dependent top-singular input: the canonical
one-slice alignment remains at \(\Theta(\sqrt{k}/r)\), but the calculation
does not control simultaneous alignment across the whole random class.
Lemma~\(\ref{lem:step-003-terracini-chaos}\) removes that random-class
ambiguity algebraically: (21d) is exactly \(E^{ab}(E^{ab})^*\), so its norm
already equals the full adaptive multi-column supremum, and (21g)--(21h)
prove both full-angular-law operator-variance orientations at scale
\(k/r^2\). Equations (21m)--(21t) then prove a new obstruction: the proposed
all-confidence full quotient tail (21), weighted ACG covariance tail (21j),
and product-direction Gram tail (21k) are false even for the isotropic allowed
triple. The cap event has
probability \(e^{-O(rk)}\) while producing cross-mode squared norm
\(\Omega(k^2)\) and same-mode norm \(\Omega(k)\), so a pure
\(e^{-t}\), \(\sqrt{t/r}\)-scale tail cannot persist to all \(t\).

Lemma~\(\ref{lem:step-003-radial-transfer}\) makes the repair target sharper.
It proves, with additional failure at most \(r^{-30}\), that the entire
normalized operator is bounded by sixteen times the unnormalized
trace-one-covariance Gaussian operator \(\widetilde E_G\). Thus neither ACG
normalization nor the data-dependent operator supremum remains unresolved.
The sole missing producer is the fixed-moment Gaussian trace estimate (21z)
at \(p_0=\lceil31\log r\rceil\). Its \(p_0/r\) correction is compatible with
the cap obstruction and is absorbed by \(\sqrt{p_0/r}\) in the theorem range.

The exact step does not close because Lemma~
\(\ref{lem:step-003-terracini-chaos}\) and Lemma~
\(\ref{lem:step-003-radial-transfer}\) do not prove (21z), and hence do not
prove a valid theorem-range replacement for (21). The all-\(t\) sufficient
wrapper cannot be retained as written. If (21z) were proved, Markov's
inequality, (21x-c), and \(p_0/r\le\sqrt{p_0/r}\) would give (22) after
enlarging \(C_{\rm TF}(\kappa)\) by the fixed factor
\(16e\sqrt{31/30}\), which
would establish (TF) on \(\mathcal E_{\rm TF}(30\log r)\), and Proposition~
\(\ref{prop:step-003-deficit-from-frame}\) would construct \(W_0\) and prove
\(\mathcal E_{\rm deficit}\) on the explicit intersection
\(\mathcal E_{\rm TF}(30\log r)\cap\mathcal E_{\rm TC}\). The required
conditional confidence conversion would be
\[
\begin{aligned}
 &\mathbb P\left(
   (\mathcal E_{\rm TF}(30\log r)\cap\mathcal E_{\rm TC})^c
   \mid A,B,C\right)\\
 &\qquad\le 2r^{-30}+r^{-25}
 \le r^{-20},
\end{aligned}
\tag{27}
\]
after a finite numerical threshold. Here the two \(r^{-30}\) terms are the
Gaussian trace-moment tail and the proved radial-transfer tail. Without
(21z), neither (TF) nor the deficit event is exported.

## Explicit Rate Audit

- Exposed variables: \(\kappa,r,k\), \(r<k\le r^{5/4}\), confidence powers
  \(20,25,30\), the (TF) scale
  \(\sqrt{k}/r+\sqrt{\log r/r}\), the (TC) scale \(k/r+\log r\), and
  \(\delta_0=1/8\).
- Hidden constants may depend on: only \(\kappa\), through
  \(\kappa_1=2\kappa^2\) and the conditioned angular moments.
- Hidden constants may not depend on: \(n,r,k\), the deterministic base triple,
  the realized triple in \(\mathcal E_{\rm cond}\), balancing radii, the
  normalized-Gram realization, or the GD horizon.
- Fixed quantities: \(\kappa\) and the setting's fixed \(q\) while
  \(r\to\infty\); the realized factors while taking conditional initialization
  probability.
- Probability mode: initialization-high-probability, uniformly conditional on
  every realized triple in \(\mathcal E_{\rm cond}\). (TC) has failure at most
  \(r^{-25}\). The elliptic-radial reduction has failure at most \(r^{-30}\),
  while the Gaussian trace-moment producer for (TF) is unresolved.
- Horizon mode: initialization only.
- Norm mode: Euclidean quotient-domain norms, Terracini-Gram operator norm,
  and tensor Frobenius norm.
- Admissibility conditions and auxiliary tolerances:
  \(r<k\le r^{5/4}\), \(u=30\log r\) in scalar Bernstein,
  \(p_0=\lceil31\log r\rceil\) in the unresolved Gaussian trace moment, and
  finite thresholds enforcing \(3r^{-30}\le r^{-25}\), (21y), (22), and
  (26).
- Term absorption or simplification inequalities:
  \[
    \sqrt{2\mu u}\le\mu+u/2,\qquad k/r\le r^{1/4},
  \]
  \[
    C_\kappa(\sqrt{k}/r+\sqrt{31\log r/r})\le1/2
  \]
  would be valid for large \(r\) after the unproved (21z), while
  \[
    2C_{\rm TC}(\kappa)(r^{1/4}+\log r)\le r/2
  \]
  is the proved projection-energy absorption once (TF) is available.
- Fixed-input scale and sharpness:
  \[
    \sup_{\|Y\|_F=1}\mathbb E\|E^{ab}Y\|_F^2
    \le \kappa_1^8\frac{k-1}{r^2},
  \]
  while in the isotropic specialization one deterministic unit input has
  response at least \(\sqrt{k-1}/(\sqrt2r)\) with probability at least
  \(1/36\). This is only an unprojected-block statement. The stronger quotient
  stress test proves
  \[
    \mathbb P\!\left(
      \|\Pi\widetilde E\Pi\|_{\rm op}\ge\frac{\sqrt{k-1}}{2r}
    \right)\ge\frac1{144}
  \]
  in the isotropic angular model. The top-singular one-slice construction has
  conditional root-mean-square gain between
  \(\sqrt{k}/(2r)\) and \(8\sqrt{k}/r\) on its stated high-probability event.
  These results validate the quotient leading scale and test one adaptive
  alignment, but they do not control the data-dependent supremum.
- Full-operator covariance reduction: equation (21d) gives
  \[
    \|E^{ab}\|_{\rm op}^2
    =\left\|\sum_jR_j^{bc}\otimes
      p_j^a(p_j^a)^{\mathsf T}\right\|_{\rm op},
  \]
  so no supremum or measurability upgrade remains hidden. Equations
  (21g)--(21h) prove that both full-angular-law operator-variance orientations
  are at most \(\kappa_1^8(k-1)/r^2\). Equations (21m)--(21t) prove that the
  proposed all-\(t\) component tails at squared scale \(k/r^2+t/r\) and
  unsquared scale \(\sqrt{k}/r+\sqrt{t/r}\) are false, and (21s)--(21t) show
  the same obstruction for the full quotient event (21). A globally
  compatible rate needs, at
  minimum, the large-deviation scales represented in (21u), or the tail
  quantifier must be restricted. Lemma~
  \(\ref{lem:step-003-radial-transfer}\) additionally proves the exact
  reduction \(\widetilde E=D\widetilde E_GD\), with \(\|D\|\le4\) outside a
  failure event of probability at most \(r^{-30}\). Therefore (21z) is the
  sole remaining theorem-range estimate. At \(p_0=\lceil31\log r\rceil\),
  its large-deviation term satisfies \(p_0/r\le\sqrt{p_0/r}\), so the
  theorem-facing (TF) rate itself is not weakened.
- Probability conversion: the three (TC) pairs cost
  \(3r^{-30}\le r^{-25}\). The proved radial event costs at most \(r^{-30}\).
  If (21z) held, Markov at factor \(e\) would cost
  \(3kr e^{-2p_0}\le r^{-40}\), hence at most \(r^{-30}\). Equation (27)
  would then give the exact intersection budget; no independence between
  (TF), (TC), the radial event, or the normalized-Gram event is used.
- Contribution to any Rate Specialization Bridge: this step is intended to
  supply the fourth initialization constituent used by `step_004`; that
  export is blocked only by (21z).
- Baseline-reduction check: direction normalization changes only generator
  scales, so the tangent span remains exactly raw. Both (TC) and the deficit
  assembly use unscaled \(D_r\) and \(\widehat D_0\), preserving the
  arbitrary-large-\(n\) baseline.

## Blockers

1. **Missing local result:** the sole unresolved assertion is the
   theorem-range Gaussian trace moment (21z) for
   \(p_0=\lceil31\log r\rceil\). Lemma~
   \(\ref{lem:step-003-terracini-chaos}\) (`unit_005`) already proves the
   exact adaptive full-operator representation and both variance orientations,
   while Lemma~\(\ref{lem:step-003-radial-transfer}\) (`unit_010`) proves
   the exact reduction from every normalized ACG array to
   \(\widetilde E_G\), with radial failure at most \(r^{-30}\). A proof of
   (21z) would give all nine arrays simultaneously, preserve the
   logarithm-free leading term, and yield the required conditional failure by
   Markov. This remains a same-setting `/proof-step step_003` repair;
   `/proof-sketch` is required only if the fixed-moment event itself is false
   or needs a changed claim, assumption, dependency, or output interface.
2. **Why the proved inputs do not imply (21z):** equations (21g)--(21h)
   control the two quadratic variance contractions, but a degree-four
   Gaussian operator chaos also has repeated-component and high-influence
   contraction partitions. No checked Latala, Banach-valued
   Hanson--Wright, or trace-word theorem in the current inputs has been
   restated with every such contraction norm bounded for this exact
   three-mode block kernel. The component lower event (21l) shows why a
   norm-first increment bound cannot be substituted, and the cap events
   (21m)--(21t) prove that a variance-only pure subgaussian all-confidence
   statement is false. The corrected \(p_0/r\) term in (21z) is compatible
   with those obstructions, but its full contraction enumeration remains
   unproved.
3. **Failed target assembly:** without (21z), (TF) and the lower bound on
   \(J^*J\) are unavailable. Proposition~
   \(\ref{prop:step-003-deficit-from-frame}\) remains conditional on
   \(\mathcal E_{\rm TF}(30\log r)\cap\mathcal E_{\rm TC}\), so \(W_0\) and
   \(\mathcal E_{\rm deficit}\) cannot be exported with failure \(r^{-20}\).
   The event intersection and prefactor-aware conversion (27) are now
   explicit; only the Gaussian trace-moment producer of
   \(\mathcal E_{\rm TF}\) is missing.

## Notation And Assumption Notes

- \(p_i^a,p_i^b,p_i^c\) are `appendix-local` objects defined from setting
  coefficient vectors. Their ACG representation and moments are proved in
  Lemma~\(\ref{lem:step-003-angular-moments}\); no generated Gram or radial
  event is conditioned upon.
- \(H_M,z_i^M\) are `proof-local` dependency objects translated from
  accepted Lemma~\(\ref{lem:step-002-balanced-gaussianization}\).
- \(\vartheta_M,u_i^M,q_i^M,\Omega_M,\mathcal R_{\rm ell},D\), and
  \(\widetilde E_G\) are `proof-local` objects defined in (21v)--(21x-b).
  Lemma~\(\ref{lem:step-003-radial-transfer}\) proves their covariance,
  radial probability, exact conjugation, and operator transfer. The event
  \(\mathcal R_{\rm ell}\) is a generated event proved in this step, not a
  primitive or conditional theorem hypothesis.
- \(\mathcal K_i,\mathcal H_i,\Pi_i,J_i,J\) are `appendix-local`
  quotient-frame objects. Their kernel, spectrum, range, and block formulas
  are proved in Proposition~\(\ref{prop:step-003-quotient}\).
- \(a_{ij},b_{ij},c_{ij}\), \(\widetilde E\), and its mode blocks are
  `proof-local` abbreviations for (10) and (17)--(20).
- \(Q_{B,C}(Y)\) is a `proof-local` first-stage image defined in (20b).
  Lemma~\(\ref{lem:step-003-fixed-input-crossmode}\) proves its mean-square
  bound only for inputs fixed independently of the initialization directions.
  It is not used to bound the random supremum.
- \(G_b,G_c,C_0,d_j^c,D_j^c,R_j^{bc},S_j^{bc}\), and \(L_j^{ab}\) are
  `proof-local` objects defined in (21b) and (21i). Their positive
  semidefiniteness, equal nonzero spectra, full-operator identity, and
  covariance formulas are proved in Lemma~
  \(\ref{lem:step-003-terracini-chaos}\); none is assumed to satisfy a tail.
- \(\Gamma_a,\Gamma_b,\Gamma_c\) and \(\tau_c\) are `proof-local` conditional
  angular covariances defined in (21e). Unit norm gives trace one, Lemma~
  \(\ref{lem:step-003-angular-moments}\) gives operator norm at most
  \(\kappa_1^4/r\), and hence \(\tau_c\le\kappa_1^4/r\).
- The isotropic cap, \(\mathcal A_{bc}\), \(\mathcal A_{abc}\),
  \(t_{\rm sm}\), \(t_{\rm cov}\), and \(t_{\rm TF}\) in (21m)--(21t) are
  `proof-local`
  diagnostic objects. Their probabilities and thresholds are explicitly
  derived from a Gaussian interval lower bound, Markov's inequality,
  component/mode independence, and the exact block formula (20); they are not
  theorem assumptions or exported events.
- The selected quotient input \(h\), its perpendicular direction \(u\), and
  the response variable \(Z\) in Lemma~
  \(\ref{lem:step-003-quotient-lower}\) are `proof-local` diagnostic objects.
  Their unit-norm, quotient-membership, moment, and probability properties are
  proved in that lemma; none is exported as a theorem condition.
- The top singular vector \(v\), truncated vector \(\bar v\), selected index
  \(i_0\), angular weights \(d_j\), and input \(Y\) in Lemma~
  \(\ref{lem:step-003-top-alignment}\) are `proof-local` diagnostic objects.
  The constant \(5\) is proved from the checked Gaussian/chi event,
  \(\Delta_r=2(r-1)/(r^2(r+2))\) is directly computed from spherical moments,
  and the constants \(1/2,8\) in (20t) are proved in (20u)--(20z).
- \(\mathcal E_{\rm TC}\) is an `appendix-local` generated event proved by
  Lemma~\(\ref{lem:step-003-target-correlation}\).
- \(\mathcal E_{\rm TF}(t)\) is an `appendix-local` proposed generated event
  whose proposed producer Lemma~\(\ref{lem:step-003-terracini-chaos}\) proves
  the exact covariance reduction and disproves the all-\(t\) event (21) and
  sufficient tails (21j)--(21k). Lemma~
  \(\ref{lem:step-003-radial-transfer}\) reduces its theorem-range production
  to (21z), but (21z) remains unproved; the event is used
  only as a local conditional premise in Proposition~
  \(\ref{prop:step-003-deficit-from-frame}\).
- \(C_{\rm TC}(\kappa)=6\kappa_1^8+75\) is an `appendix-local` proved
  constant. \(C_{\rm TF}(\kappa)\), \(C_{\rm dec}(\kappa)\), and
  \(r_{\rm TF}(\kappa)\) occur only inside the explicitly unresolved statement
  (21). Likewise \(C_{\rm cov}\), \(C_{\rm cov,dec}\), \(C_{\rm sm}\), and
  \(C_{\rm sm,dec}\) in (21j)--(21k) are universally quantified hypothetical
  constants used in the contradiction; none is used as an established
  bounded quantity. The moment order
  \(p_0=\lceil31\log r\rceil\) is an explicitly defined theorem-range
  parameter. \(C_G(\kappa)\) in (21z) is an unresolved proposed constant, not
  an established bound.
- \(W_0\) is the intended `public-facing` generated output. Here it is
  constructed only in a conditional proposition and is not exported because
  (TF) is missing.
- Assumption provenance: conditioning and Gaussianization are accepted derived
  outputs; angular moments, quotient geometry, (TC), the off-block split, and
  the fixed-input cross-mode mean square are proved here. The exact
  full-multi-column covariance identity and both variance orientations are
  also proved here. The isotropic quotient lower bound and top-alignment
  calculation are local diagnostic specializations, not theorem-facing
  assumptions. The cap probability, same-mode lower event, cross-mode lower
  event, full-quotient lower event, and contradiction confidence levels in
  (21m)--(21t) are proved in
  `unit_005`. The elliptic-radial event and Gaussian conjugation are proved in
  `unit_010`. The Gaussian trace moment (21z), and therefore (TF), remains a
  named blocker and is not promoted to an assumption.
- Boundary cases: Gaussian coefficient images are nonzero almost surely. The
  quotient removes exactly two gauge directions. At \(k=r^{5/4}\), the
  intended (TF) scale is
  \(r^{-3/8}+\sqrt{\log r/r}=o(1)\), while the proved (TC) scale is
  \(r^{1/4}+\log r=o(r)\). The conditional normal margin
  \(\sqrt{r/2}\) is stronger than \(\delta_0\sqrt r\). In the isotropic
  specialization, the projected full operator is at least
  \(\sqrt{k-1}/(2r)\) with probability \(1/144\), so a valid upper theorem
  cannot improve the leading order below \(\sqrt{k}/r\). The stronger cap
  stress shows that an all-confidence tail also needs a linear
  large-deviation scale. At \(p_0=\lceil31\log r\rceil\), the candidate
  correction \(p_0/r\) is dominated by \(\sqrt{p_0/r}\), so this obstruction
  does not alter the theorem-facing rate.
- Attempt 7 read `global_proof.md` only after confirming that the paired
  `global_proof_review.md` has status `ACCEPTED`. Its G3 note was used only as
  planning context that (TF) is the localized hard step. It was not used as
  proof evidence, a cited result, an assumption source, or authority to change
  the target claim. All mathematical claims use only the setting, accepted
  sketch, accepted dependencies, the triggering attempt-6 proof/review,
  restated standard facts, and local derivations.
