# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_008
- Unit attempt: 1
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted step_006 proof/review SHA-256: ea92dd21a1780968e93c54c6078fefa05404e117a45f255d9747ce2d6da0f34b / c1ac10f07c01cd32a005ddce367a168fc4361a2524a017e90f90a00589e5ce21
- Accepted step_007 proof/review SHA-256: 67447235b30c97cb32359a421ff0e2ff040d889f5c1f350cf0dea5c0c576be7e / 56f5685e8e9e03c8e8a5a9dda8c0d32fcc0a3e0b6298be7d33c214437ae82c19

## Target Step Claim

The accepted sketch row is:

> From the selected same-state equation and the product-one gauge, form the
> observable best-scalar, equal-norm active seed. In the proof-only target
> chart its normalized factors must have the exact decomposition
> $P_M^0=G_M(I+C_M^0)+N_M^0$, with $G_M^\top N_M^0=0$,
> $\|C_M^0\|_{\rm row,1}\vee\|C_M^0\|_{\rm col,1}\le48\omega$,
> $\max_j\|N_M^0(:,j)\|_2\le\tau_r$, and the relative product-log bound
> $\|s^0\|_\infty\le128\omega$. The exact positive scale identity
> $D_M^0=D_\lambda^{1/3}E^0$ must be exported before any landing solve.

The step consumes the generated support/cluster/gauge interfaces from step
006 and the selected coefficient row/column closure from step 007. It exports
E_seed; no landing output, post-solve scale, or cyclic invariant is used.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- assump:base-weight-balance is a primitive setting condition. Its realized
  consequence is used only through the accepted E_sm interface below.
- assump:subquadratic-rank supplies $r\ge3$, so all fixed numerical
  definitions are valid.

Derived invariants supplied by accepted dependencies:

- E_sm (accepted step 001) supplies, for every realized mode
  $G_M\in\{U,V,W\}$,
  \[
  H_M:=G_M^\top G_M,\qquad
  \|H_M-I\|_{\rm row,1}\vee\|H_M-I\|_{\rm col,1}
  \le q:=q_{\rm real}\le q_*,
  \qquad \Gamma:=\lambda_{\max}/\lambda_{\min}\le1.01.
  \]
  Thus $H_M$ is positive definite and
  $\|G_M^\dagger\|_2\le(1-q)^{-1/2}$.
- E_support and E_gauge (accepted step 006) supply one selected
  representative for each realized target after a proof-only permutation, a
  product-preserving sign chart, and the unchanged correlation tails
  \[
  \max_{M,\ell\ne j}|c_{M,\ell j}|\le x_*:=2\eta_{\rm score}(r),
  \qquad
  \sum_{\ell\ne j}|c_{M,\ell j}|\le
  \ell_*:=\frac{\eta_{\rm score}(r)}
  {1-(14/5)\eta_{\rm score}(r)}. \tag{A}
  \]
  These hold for every selected target column $j$, with endpoint bounds
  $x_*\le3q_*$ and $\ell_*\le(31/20)q_*$. The score-preserving orientation
  has
  \[
  \sigma_j:=|\theta_j|
  =\sum_{\ell=1}^r\lambda_\ell
  c_{U,\ell j}c_{V,\ell j}c_{W,\ell j}>0. \tag{B}
  \]
- E_col and E_row (accepted step 007) supply the selected, oriented matrices
  $P_M=[p_{M,j}]$ in the exact target spans,
  \[
  P_M=G_M A_M,\qquad
  \|A_M-I\|_{\rm row,1}\le7\omega,\qquad
  \|A_M-I\|_{\rm col,1}\le44\omega, \tag{C}
  \]
  where each column of $P_M$ has Euclidean norm one. The accepted step-007
  interface refers to the same stored representatives as (A)--(B); no
  landing object is imported.
- E_gauge also supplies the observable-to-chart identity: after applying the
  proof-only target permutation and product-one signs, the normalized
  directions of the setting's equal-norm seed are exactly the oriented
  columns $P_M$. This changes no represented rank-one term.

Local conditional hypotheses: none. Target indices and all signs are
proof annotations. Positivity of the scalar is obtained from the observable
zero-score failure branch and the score-preserving orientation in (B), not
assumed as a primitive condition.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | Under E_sm, E_gauge, and E_row, the normalized observable seed directions equal the selected oriented directions and have the exact target-span decomposition with $N_M^0=0$ and row/column coefficient fields at most $48\omega$. | Directional and perpendicular parts of E_seed. |
| unit_002 | lemma | Under E_sm, E_support, and E_row, $|c_{M,jj}-1|\le2\omega$ and $|\sigma_j/\lambda_j-1|\le9\omega$ for every selected target. | Best-scalar transfer without a latent target or landing object. |
| unit_003 | proposition | Under the first two units, $\gamma_j^0=\sigma_j$, $D_M^0=D_\lambda^{1/3}E^0$, and $\|s^0\|_\infty\le128\omega$. | Balanced scale and quotient-entry interface E_seed. |

## Cited Result Applications

1. Observable support and gauge (accepted step 006): in current notation,
   one representative is selected per realized target, a proof-only
   permutation and a product-one sign gauge preserve each represented
   rank-one term, and the retained-pool tail bounds are exactly (A). The
   score-preserving orientation gives (B). The graph remains label-free.
2. Selected coefficient closure (accepted step 007): the accepted
   two-orientation result gives (C), the exact target-span identity
   $P_M=G_MA_M$, and unit columns. No landing, basin, or cyclic conclusion is
   imported.
3. Elementary current-notation tools: orthogonal projection for a
   full-column-rank $G_M$, induced row/column $\ell_1$ inequalities,
   Cauchy--Schwarz, and
   $|\log(1+u)|\le |u|/(1-|u|)$ for $|u|<1$. Each use is instantiated below.

## Local Derivation

Put
\[
 q:=q_{\rm real},\qquad t:=r\tau_r,\qquad
 \omega:=q_*^2+t,\qquad \beta:=44\omega. \tag{1}
\]
The setting gives $t=q_*^2/10^4$, hence
$\omega=(1+10^{-4})q_*^2<10^{-6}$ and $\beta<10^{-4}$. All numerical
inequalities below are uniform in $r,n,\kappa_0,\rho$ and the confidence
parameters.

### unit_001: lemma

**Lemma (observable seed decomposition; label
lem:step-008-seed-decomp).** Under E_sm, E_gauge, and E_row, after the
proof-only permutation and product-one sign chart, let $P_M^0$ be the
normalized active seed factors. Then, for every mode $M$,
\[
 P_M^0=G_M(I+C_M^0)+N_M^0,\qquad G_M^\top N_M^0=0, \tag{2}
\]
with
\[
 N_M^0=0,\qquad
 \|C_M^0\|_{\rm row,1}\vee\|C_M^0\|_{\rm col,1}\le48\omega. \tag{3}
\]

**Proof / justification.**

For selected representative $j$, the setting forms
\[
 x_j^0=|\theta_j|^{1/3}p_{U,j},\quad
 y_j^0=|\theta_j|^{1/3}p_{V,j},\quad
 z_j^0=\operatorname{sgn}(\theta_j)|\theta_j|^{1/3}p_{W,j}. \tag{4}
\]
The score-preserving orientation from E_gauge has the same rank-one product
as (4) with scalar $\sigma_j=|\theta_j|$. Hence the two triples of unit
directions differ only by a product-one sign gauge. Applying that proof-only
gauge and the target permutation gives
\[
 P_M^0=P_M, \tag{5}
\]
where $P_M$ is the oriented selected matrix in the accepted step-007
interface. This is an identity of the actual observable seed, not a new
algorithmic state; represented rank-one terms are unchanged.

By E_sm, $\lambda_{\min}(H_M)\ge1-q>0$, so $G_M$ has full column rank. The
accepted E_row conclusion gives $P_M=G_MA_M$ with (C). The orthogonal
decomposition relative to the exact target span is unique:
\[
 A_M:=G_M^\dagger P_M,\qquad
 N_M^0:=(I-G_MG_M^\dagger)P_M. \tag{6}
\]
Because $P_M\in{\rm range}(G_M)$, (6) gives $N_M^0=0$ and
$P_M^0=G_M(I+C_M^0)$ with $C_M^0=A_M-I$. Thus (C) implies
\[
 \|C_M^0\|_{\rm row,1}\le7\omega\le48\omega,\qquad
 \|C_M^0\|_{\rm col,1}\le44\omega\le48\omega.
\]
The requested perpendicular-column bound follows from the stronger identity
$\max_j\|N_M^0(:,j)\|_2=0\le\tau_r$. QED.

### unit_002: lemma

**Lemma (best-scalar transfer; label lem:step-008-best-scalar).** Under
E_sm, E_support, and E_row, with the oriented matrices in
Lemma~lem:step-008-seed-decomp, for every target column $j$,
\[
 |c_{M,jj}-1|\le2\omega\quad(M\in\{U,V,W\}),\qquad
 \left|\frac{\sigma_j}{\lambda_j}-1\right|\le9\omega. \tag{7}
\]
Here $c_M=G_M^\top P_M^0$ and $\sigma_j=|\theta_j|>0$ is the observable
best-scalar in (B).

**Proof / justification.**

Fix $M,j$, write $H=H_M=I+E$, $A=A_M$, and let
\[
 a:=A_{jj},\qquad \alpha:=A(:,j)-e_j.
\]
From (C), $\|\alpha\|_1\le\beta$, so $a>0$ and
$|a-1|\le\beta<1/100$. Put $z:=A(:,j)/a=e_j+u$. Then $u_j=0$ and
\[
 B:=\|u\|_1\le\frac{\beta}{1-\beta}\le45\omega. \tag{8}
\]
The column $P_M^0(:,j)=G_M(az)$ has norm one. Since the diagonal of $H$
is one and the diagonal of $E$ is zero,
\[
 1=a^2 z^\top H z,\qquad
 |z^\top H z-1|\le2qB+(1+q)B^2=:d. \tag{9}
\]
Indeed, $\|u\|_2^2\le B^2$, $|e_j^\top Eu|\le q\|u\|_\infty\le qB$,
and $|u^\top Eu|\le q\|u\|_1\|u\|_\infty\le qB^2$. Substituting
$B\le45\omega$, $q\le q_*$, and $\omega<10^{-6}$ gives
\[
 d\le90q_*\omega+(1+q_*)2025\omega^2<\frac{\omega}{20}<\frac1{20}. \tag{10}
\]
The elementary inverse-square-root bound
$|(1+v)^{-1/2}-1|\le2|v|$ for $|v|\le1/2$, applied to (9), yields
$|a-1|\le2d<\omega/10$, and in particular $|a-1|\le\omega$. Now
$c_M=HA$ and $E_{jj}=0$, so
\[
 c_{M,jj}-1=(a-1)+e_j^\top E\alpha.
\]
Consequently, using $\|\alpha\|_\infty\le\beta$,
\[
 |c_{M,jj}-1|\le\omega+q\beta
 \le(1+44q_*)\omega<2\omega. \tag{11}
\]

It remains to transfer this diagonal control to the scalar. By the accepted
support ledger (A), every off-target column satisfies the same $x_*,\ell_*$
bounds after the sign gauge. Write $c_{M,jj}=1+\delta_M$, so
$|\delta_M|\le2\omega$. Then
\[
 \left|\prod_M c_{M,jj}-1\right|
 \le3(2\omega)+3(2\omega)^2+(2\omega)^3
 <7\omega. \tag{12}
\]
Using (B), $\lambda_\ell/\lambda_j\le\Gamma$, and two off-target maxima
together with one off-target $\ell_1$ sum, we obtain
\[
\begin{aligned}
 \left|\frac{\sigma_j}{\lambda_j}-1\right|
 &\le 7\omega+
 \Gamma\sum_{\ell\ne j}
 |c_{U,\ell j}c_{V,\ell j}c_{W,\ell j}|\\
 &\le 7\omega+\Gamma x_*^2\ell_*.
\end{aligned} \tag{13}
\]
The endpoint bounds $x_*\le3q_*$, $\ell_*\le(31/20)q_*$,
$\Gamma\le1.01$, and $\omega\ge q_*^2$ give
\[
 \Gamma x_*^2\ell_*
 \le1.01\cdot9\cdot\frac{31}{20}q_*^3
 <\omega, \tag{14}
\]
so the scalar bound in (7) follows. In particular
$\sigma_j/\lambda_j>0$, consistently with the observable nonzero-score
branch. QED.

### unit_003: proposition

**Proposition (balanced scale and quotient entry; label
prop:step-008-seed-interface).** Under the conclusions of
Lemmas~lem:step-008-seed-decomp and lem:step-008-best-scalar, the
setting's equal-norm seed satisfies
\[
 \gamma_j^0:=d_{U,j}^0d_{V,j}^0d_{W,j}^0=\sigma_j,\qquad
 s_j^0:=\log(\gamma_j^0/\lambda_j),\qquad
 \|s^0\|_\infty\le128\omega, \tag{15}
\]
and, with $E^0={\rm diag}(e^{s_j^0/3})$,
\[
 D_U^0=D_V^0=D_W^0=D_\lambda^{1/3}E^0,\qquad
 e^{-128\omega/3}\le\frac{d_{M,j}^0}{\lambda_j^{1/3}}
 \le e^{128\omega/3}. \tag{16}
\]

**Proof / justification.**

The three factors in (4) all have norm $\sigma_j^{1/3}$; the sign in the
third factor does not change its norm. Therefore their product of norms is
exactly $\gamma_j^0=\sigma_j$. By Lemma~lem:step-008-best-scalar, write
$\sigma_j/\lambda_j=1+u_j$ with $|u_j|\le9\omega<1/2$. Then
\[
 |s_j^0|=|\log(1+u_j)|
 \le\frac{|u_j|}{1-|u_j|}
 \le18\omega<128\omega. \tag{17}
\]
The definition of equal-norm balancing now gives
\[
 d_{M,j}^0=(\sigma_j)^{1/3}
 =\lambda_j^{1/3}e^{s_j^0/3},
\]
which is (16) and the displayed diagonal identity. QED.

## Target-Step Assembly

The accepted step-006 graph/gauge result first identifies, purely for proof,
one selected representative per realized target and a product-preserving
orientation. Lemma~lem:step-008-seed-decomp checks that the normalized
observable best-scalar seed is exactly this oriented selected state. Because
the selected state is already in the exact realized target span, its
orthogonal complement is identically zero; the accepted row/column closure
then gives the public $48\omega$ directional interface in both induced
orientations and the stronger $N^0=0\le\tau_r$ bound.

Lemma~lem:step-008-best-scalar uses only the same selected-state correlations,
the target Gram margin, and the accepted off-target ledger. It first derives
the diagonal correlation error, then bounds the weighted off-target score
contribution before taking a logarithm. This proves the observable ratio
estimate without a latent scale or any post-landing object. Proposition
prop:step-008-seed-interface converts the ratio to the exact relative
product-log coordinate and records the positive scale congruence. Together
these named results produce
\[
 E_{\rm seed}:\quad
 P_M^0=G_M(I+C_M^0)+N_M^0,\quad G_M^\top N_M^0=0,\quad
 \|C_M^0\|_{\rm row,1}\vee\|C_M^0\|_{\rm col,1}\le48\omega,\quad
 \max_j\|N_M^0(:,j)\|_2\le\tau_r,\quad
 \|s^0\|_\infty\le128\omega.
\]
This event is emitted before any frozen design or landing solve. Its only
consumer is the synchronized landing bridge (and the separate exact-baseline
specialization); no chronological predecessor, post-solve normalizer, or
cyclic invariant enters the proof.

## Explicit Rate Audit

- Exposed variables: $r,q_*,q=q_{\rm real},\Gamma,\tau_r,\omega$,
  $\eta_{\rm score}(r)$, the realized $\lambda_j$, and the selected finite
  representative set. The seed step is conditional on accepted interfaces
  and introduces no new probability parameter.
- Hidden constants may depend only on the displayed universal numerical
  margins and the fixed definition of $q_*$. They may not depend on
  $n,\kappa_0,\rho,\epsilon,\delta_{\rm sm},\delta_{\rm init}$, a generated
  condition number, a landing output, or a target label.
- Fixed quantities: the realized target $G_M,D_\lambda$, the prescribed
  $\tau_r=q_*^2/(10^4r)$, and one selected representative per target.
- Probability mode: deterministic conditional on E_sm, E_support, E_gauge,
  E_col, and E_row; no probability conversion is made.
- Horizon mode: one finite seed-transfer transaction before all landing
  calls; no later ALS sweep is included and no error is accumulated over time.
- Norm mode: Euclidean target-span columns, induced row/column $\ell_1$
  coefficient fields, perpendicular Euclidean columns, and the
  $\ell_\infty$ product-log coordinate.
- Admissibility and auxiliary tolerances: $q\le q_*$, $\Gamma\le1.01$,
  $\eta_{\rm score}(r)<1/2000$, and the prescribed $\tau_r$. The only
  absorptions are (8)--(14) and (17), all with explicit endpoint
  inequalities.
- Baseline reduction: in the exact orthogonal equal-weight specialization,
  the actual certified component has $c_{M,jj}=1$, all off-target
  correlations and residuals zero, and $\sigma_j=\lambda_j$. Hence
  $C_M^0=N_M^0=s^0=0$ and the exact stationary seed is retained. The
  prescribed positive tolerance need not be set to zero; the actual residual
  is zero, so the original zero-residual baseline is preserved.

## Blockers

None.

## Notation And Assumption Notes

- $H_M,G_M,P_M,A_M,c_M,\sigma_j$ are translated current-setting or
  accepted-dependency objects. The target permutation and sign chart are
  proof-only and do not alter the observable procedure or represented tensor.
- $q,t,\omega,\beta,x_*,\ell_*$ are setting-derived or accepted-ledger
  quantities. $a,z,u,B,d,\alpha,\delta_M$ are proof-local helpers whose
  bounds are proved in named local units. The public-facing exports are only
  $C_M^0,N_M^0,s^0,D_M^0,E^0$ and E_seed.
- The constants $48,128$ and the intermediate $2,9,45$ are numerical bounds
  proved in the named local units; no free bounded constant is introduced.
- Generated conditions E_sm, E_support, E_gauge, E_col, and E_row are
  accepted derived outputs, not primitive assumptions. The seed event is
  proved here before its landing consumers. The paired accepted
  global_proof.md/global_proof_review.md was consulted only for the planning
  cue to make the best-scalar bridge precede the frozen Gram bridge; it is not
  evidence, a cited-result source, an assumption source, or authority to
  change the target claim.
- The product-one sign chart is source-compatible with the setting's
  sgn(theta_j) in the third seed factor because both triples represent the
  same rank-one term with positive scalar sigma_j=|theta_j|; their residual
  sign difference has product one. Thus the decomposition is for the actual
  seed consumed downstream, not a surrogate direction.

