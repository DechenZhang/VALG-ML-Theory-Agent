# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_011
- Unit attempt: 1
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted dependency step_010 proof/review SHA-256: 0e5a33ae48c86f832c42f0de46d2956550ba92ce8cf322afaf35783bdcb91024 / 9e6e6f07bfe64756c3c2af3c2fcb5deaa88914eb5dda5aca2ef90492229682b9

## Target Step Claim

The accepted sketch row is:

> Starting from E_land, define the quotient block outputs and chronological
> Refresh_s states e_U,e_V,e_W; prove literal-ALS equivalence, exact
> target-span invariance, and a strict full-sweep contraction of Psi^q in
> d_Q.

The step uses the exact cyclic U/V/W active ALS order, with
\(\rho_{\rm ALS}=1/1024\), and exports the generated event
\(E_{\rm basin}\) with
\[
 d_Q(\Psi^q(e),0)\le \ell d_Q(e,0),
 \qquad \ell:=8q_*+32\rho_{\rm ALS}=17/512<1/16.
\]
The chronological states are quotient-equivalent to the literal post-block
ALS states; no predecessor comparator or post-solve landing object is used.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- assump:base-scale (the deterministic scale regime from setting.md),
  together with the setting's exact active CP-ALS update and positive-norm
  canonical balancing rule. The numerical contraction argument below does
  not introduce any additional primitive condition.
- The fixed definitions \(r\ge3\), \(q_*=1/4096\), and
  \(\rho_{\rm ALS}=1/1024\) from the setting.

### Derived invariants supplied by accepted dependencies

- The accepted static event E_sm (transitively supplied by the accepted
  step-001 artifact, proof SHA-256
  467b0960c46a1487155b3ed5354d069fa7e6a477cf6a7efac6d779aefc801207,
  review SHA-256
  da31328ff1cb174d8f36bbc82f910454291fa18ddb198f1427b8a94904231f7c,
  and consumed by step-010) gives, for
  \(G_M\in\{U,V,W\}\),
  \[
  H_M:=G_M^\top G_M,
  \quad \|H_M-I\|_{\rm row,1}\vee\|H_M-I\|_{\rm col,1}
       \le q:=q_{\rm real}\le q_*,
  \quad \Gamma\le1.01.
  \tag{A1}
  \]
  The same accepted event gives the target Khatri--Rao Gram floor and unit
  columns. Symmetry of \(H_M\) makes the row and column bounds equivalent.
- The accepted step-010 artifact supplies the generated E_land state and
  its proof-only target permutation/sign chart. In particular, every active
  direction is in \({\rm range}(G_M)\), every active norm and every
  represented product is positive, and
  \[
  e^{\rm land}=(C_U^{\rm land},C_V^{\rm land},C_W^{\rm land},s^{\rm land}),
  \qquad d_Q(e^{\rm land},0)\le4096\omega<\rho_{\rm ALS}/3.
  \tag{A2}
  \]
  The one frozen-input transaction and the product-preserving rebalance in
  that artifact establish the initial exact target-span representation.
- At any intermediate state, exact target-span membership is proved below
  from the unfolding range identity; it is not assumed as a primitive event.

### Local conditional hypotheses

None. The radius condition \(d_Q(e,0)\le\rho_{\rm ALS}\) is a local
condition in the block lemmas and is maintained by the induction in
Proposition~\ref{prop:step-011-chronological-contraction}; it is not exported
as an assumption of the final event.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | In the generated target permutation/sign chart, every nonzero active exact-span state has a unique quotient coordinate \(e=(C_U,C_V,C_W,s)\); the balanced scales are \(D_M=D_\lambda^{1/3}\operatorname{diag}(e^{s/3})\). | Fixes the current notation and the target quotient state. |
| unit_002 | proposition | On a full-rank target-span block, positive product-one rescaling is exactly equivariant with literal ALS, and the canonical Refresh_s representative is quotient-equivalent to the literal post-block state. | Proves scale equivariance and literal-ALS chronology. |
| unit_003 | lemma | If a target-span state has \(d_Q(e,0)=x\le\rho_{\rm ALS}\), the held-mode Gram/cross-Gram defects obey the explicit off-diagonal Hadamard bounds, and every cyclic design Gram is invertible with both induced inverse norms at most \(64/63\). | Supplies the quantitative local normal-equation reserve. |
| unit_004 | proposition | Under the unit-003 reserve, one exact mode solve followed by product-preserving balancing maps held direction defects to a new direction and scale defect at most \((8q_*+32\rho_{\rm ALS})x\), while preserving exact target-span membership and the sign chart. | Gives the one-block contraction estimate. |
| unit_005 | proposition | Starting from E_land, the chronological U/V/W states remain in the radius-\(\rho_{\rm ALS}\) chart and the full map \(\Psi^q\) contracts by \(\ell=17/512\), with a no-forcing geometric recurrence and exact literal-orbit equivalence. | Exports E_basin and the exact target step claim. |

## Cited Result Applications

1. **Accepted step-010 landing interface.** In current notation, the
   hash-matched dependency states the Moore--Penrose range inclusion, the
   positive active norms on E_land_pre, the joint commit, the single
   product-preserving rebalance, and (A2). These conclusions are consumed
   only after their producer and are not reproved or promoted to primitive
   assumptions here.

2. **Accepted static geometry interface.** The accepted step-001 result,
   proof/review hashes as recorded above and as used by step-009, is restated
   in current notation by (A1): unit target
   columns, \(q\le q_*\), \(\Gamma\le1.01\), and the target Khatri--Rao
   Gram floor. The current proof uses no other conclusion of that step.

3. **Uschmajew, Local Convergence of the Alternating Least Squares
   Algorithm for Canonical Tensor Approximation, SIAM J. Matrix Anal. Appl.
   (2012), DOI 10.1137/110843587.** The result is used only as a
   qualitative quotient-interpretation wrapper: for nonzero active factors
   and nonsingular block normal equations, cyclic ALS is naturally viewed
   modulo the componentwise product-one scaling kernel and has a
   block-Gauss--Seidel chronology. In the present setting nonzero factors and
   nonsingular block equations are checked locally in
   Lemma~\ref{lem:step-011-gram-reserve}; the target-span map, the Refresh_s
   identity, all numerical constants, and the contraction are derived directly
   below. No radius, theorem constant, or existence neighborhood is imported
   from the cited paper.

4. **Elementary current-notation tools.** For induced row/column
   \(\ell_1\)-norms, submultiplicativity, the Neumann inverse bound, and the
   Khatri--Rao Gram identity are used after their hypotheses are displayed.
   For matrices with unit diagonal, the following direct inequality will be
   used repeatedly:
   \[
   \|A\circ B\|_\nu
   \le \|A-\operatorname{diag}(A)\|_\nu
          \max_{i\ne j}|B_{ij}|
       +\max_i|A_{ii}B_{ii}|,
   \qquad \nu\in\{{\rm row},{\rm col}\}.
   \tag{C1}
   \]
   It follows by separating the diagonal term in each row or column sum.

## Local Derivation

Throughout this derivation, \(M'\) and \(M''\) denote the two modes other
than \(M\). The proof-local alias
\[
\varrho:=\rho_{\rm ALS}=1/1024
\]
is used to avoid confusing the chart radius with the smoothing scale
\(\rho\) in setting.md.

### unit_001: lemma

**Lemma (target-span quotient representation and balanced scales; label
lem:step-011-quotient-chart).** Under E_sm, E_land, and
assump:base-scale, let an active state have nonzero columns in the exact
target spans, and orient its columns by the landing permutation/sign chart.
If its represented component products are positive, then there are unique
matrices \(C_M\) and a unique vector \(s\) such that
\[
 P_M=G_M(I+C_M),\qquad
 s_j=\log(\gamma_j/\lambda_j),
 \qquad \gamma_j=\prod_M\|X_M(:,j)\|_2.
 \tag{1}
\]
After the product-preserving equal-norm representative is chosen,
\[
 D_M=\operatorname{diag}(\|X_M(:,j)\|_2)
      =D_\lambda^{1/3}E,
 \qquad E:=\operatorname{diag}(e^{s_j/3}),
 \tag{2}
\]
for all three modes. The exact target state is \(0=(0,0,0,0)\).

**Proof / justification.** From (A1), every \(G_M^\top G_M\) is positive
definite by Gershgorin, so the coefficient matrix in
\(P_M=G_MB_M\) is unique. Set \(C_M=B_M-I\). The landing signs and
permutation fix the column chart; later positive normalizations preserve it
when the coefficient error is below one. The positive product definition
gives the unique logarithm \(s\). Equal-norm balancing replaces the three
norms by \(\gamma_j^{1/3}\), which is positive and preserves each rank-one
product, yielding (2). No factor outside the target span is introduced by
this scaling.

### unit_002: proposition

**Proposition (scale equivariance and literal refresh identity; label
prop:step-011-refresh-equivariance).** Under the hypotheses of
Lemma~\ref{lem:step-011-quotient-chart}, suppose the held design for a mode
\(M\) has full column rank. Let positive diagonal matrices
\(R_U,R_V,R_W\) satisfy \(R_UR_VR_W=I\). Rescaling a literal state by
\(X_M\mapsto X_MR_M\) changes the mode-\(M\) ALS output to
\(\widetilde X_M\mapsto\widetilde X_MR_M\), and hence leaves its quotient
coordinates unchanged. Consequently, if \(e^t\) is the balanced quotient
representative of a literal state, then the three records
\[
 e\longmapsto e_U\longmapsto e_V\longmapsto e_W
 \tag{3}
\]
defined by the setting's Refresh_s operation are quotient-equivalent to
the literal U/V/W post-block states, in that chronological order.

**Proof / justification.** Write the literal mode design as
\(H_M=X_{M'}\odot X_{M''}\). Under the product-one rescaling,
\(H_M\mapsto H_MR_{M'}R_{M''}=H_MR_M^{-1}\). Full column rank lets the
Moore--Penrose solve be written as the ordinary normal-equation solve, so
\[
\begin{aligned}
T_{(M)}H_MR_M^{-1}
 \big((R_M^{-1})H_M^\top H_MR_M^{-1}\big)^{-1}
 &=T_{(M)}H_M(H_M^\top H_M)^{-1}R_M\\
 &=\widetilde X_MR_M.
\end{aligned}
\tag{4}
\]
Thus positive product-one scaling is a gauge symmetry of the literal update.
The canonical equal-norm map changes only positive scales and preserves every
rank-one product, so it produces the same quotient point. The U record uses
the old V,W and writes the new U product log globally; the V record then uses
that new U and old W, and the W record uses the two current fields. Applying
(4) successively proves that (3) is exactly the quotient image of the
literal chronological orbit. This is the block-Gauss--Seidel chronology
described qualitatively by the cited Uschmajew wrapper, but the identity is
the displayed current-notation calculation.

### unit_003: lemma

**Lemma (two-orientation dynamic Gram reserve; label
lem:step-011-gram-reserve).** Under E_sm, let
\(e=(C_U,C_V,C_W,s)\) be an exact target-span balanced state with
\(x:=d_Q(e,0)\le\varrho\). For each mode set
\[
 A_M:=I+C_M,\quad P_M:=G_MA_M,\quad
 L_M:=G_M^\top P_M=H_MA_M,\quad
 F_M:=P_M^\top P_M=A_M^\top H_MA_M.
\tag{5}
\]
Then, for \(\nu\in\{{\rm row},{\rm col}\}\), simultaneously for all
three modes,
\[
\begin{aligned}
 \|F_M-H_M\|_\nu&\le2.01x,\\
 \|(L_M-F_M)-\operatorname{diag}(L_M-F_M)\|_\nu&\le1.01x,\\
 \max_j|L_{M,jj}-F_{M,jj}|&\le x^2/2,\\
 \max_{i\ne j}|(L_M)_{ij}|&\le q+1.01x,\\
 \max_{i\ne j}|(F_M)_{ij}|&\le q+2.01x.
\end{aligned}
\tag{6}
\]
For a block M define
\[
 Q_M:=L_{M'}\circ L_{M''},\quad
 J_M:=F_{M'}\circ F_{M''},\quad
 K_M:=H_{M'}\circ H_{M''}.
\tag{7}
\]
Then
\[
 \|Q_M-J_M\|_\nu\le2.1qx+4.1x^2,
 \qquad
 \|J_M-I\|_\nu\le q^2+4.1qx+4.1x^2<1/64,
\tag{8}
\]
and therefore \(J_M\) is positive definite and
\[
 \|J_M^{-1}\|_{\rm row,1}\vee\|J_M^{-1}\|_{\rm col,1}\le64/63.
\tag{9}
\]

**Proof / justification.** Write \(H=H_M\), \(A=I+C\), and note from
the definition of \(d_Q\) that both induced norms of C and every
\(\|GC(:,j)\|_2\) are at most x. Since \(\|H-I\|_\nu\le q\),
\(\|H\|_\nu\le1+q\), and \(x\le1/1024\),
\[
 \|F-H\|_\nu
 \le (1+q)x+(1+q)x+(1+q)x^2\le2.01x.
\tag{10}
\]
Here we used \(F-H=HC+C^\top H+C^\top HC\). Also
\[
 L-F=HA-A^\top HA=-C^\top HA,
\tag{11}
\]
so its induced norm is at most \((1+q)(1+x)x\le1.01x\).
Unit columns of P give the exact diagonal identity
\[
 L_{jj}-F_{jj}=L_{jj}-1=-\tfrac12\|GC(:,j)\|_2^2,
\tag{12}
\]
which proves the second and third lines of (6). The expansion
\(L-H=HC\) gives the fourth line of (6); the expansion in (10) gives the
fifth line.

For (8), apply the direct diagonal/off-diagonal inequality (C1) to
\[
 Q-J=(L_{M'}-F_{M'})\circ L_{M''}
       +F_{M'}\circ(L_{M''}-F_{M''}).
\tag{13}
\]
The first term is at most
\(1.01x(q+1.01x)+x^2/2\), and the second is at most
\((q+2.01x)(1.01x)+x^2/2\). Their sum is at most
\(2.02qx+4.051x^2\), hence the first bound in (8). Similarly, with
\(R_M=F_M-H_M\), whose diagonal is zero,
\[
 J-K=R_{M'}\circ F_{M''}+H_{M'}\circ R_{M''}
\tag{14}
\]
has norm at most \(4.1qx+4.1x^2\). The target Gram satisfies
\(\|K-I\|_\nu\le q^2\), because its off-diagonal entries are products of
the two target off-diagonal entries. This proves the second inequality in
(8). Finally \(q\le q_*\le\varrho/4\) and \(x\le\varrho\), so
\[
q^2+4.1qx+4.1x^2
\le(1/16+4.1/4+4.1)\varrho^2<1/64.
\tag{15}
\]
The Neumann series in either induced norm gives (9); because J is the Gram
of \(P_{M'}\odot P_{M''}\), it is symmetric positive semidefinite, and
the same bound gives its positive spectral floor. Thus the Moore--Penrose
update is the ordinary update throughout the chart.

### unit_004: proposition

**Proposition (one chronological block contraction; label
prop:step-011-block-contraction).** Under the hypotheses and conclusions
of Lemmas~\ref{lem:step-011-quotient-chart} and
\ref{lem:step-011-gram-reserve}, fix a mode M and let
\(x=d_Q(e,0)\le\varrho\). Form the literal exact ALS update from the two
held modes, then apply the product-preserving equal-norm representative.
The new mode direction and its refreshed product log satisfy, in both
induced orientations and in the Euclidean column part of \(d_Q\),
\[
 \|C_M^+\|_{\rm row,1}\vee\|C_M^+\|_{\rm col,1}
 \vee\max_j\|G_MC_M^+(:,j)\|_2
 \vee\|s_M^+\|_\infty
 \le \ell x,
 \qquad \ell:=8q_*+32\varrho.
\tag{16}
\]
The output is in \({\rm range}(G_M)\), has positive target orientation, and
has positive active norm.

**Proof / justification.** In the balanced representative, write
\(D_M=D_\lambda^{1/3}E\) as in (2) and
\(D_{-M}=D_{M'}D_{M''}=D_\lambda^{2/3}E^2\). The unfolding identity and
the full-rank conclusion of Lemma~\ref{lem:step-011-gram-reserve} give the
current normal-equation formula
\[
 \widetilde X_M
 =G_MD_\lambda Q_MJ_M^{-1}D_{-M}^{-1}
 =G_M\Xi_M D_\lambda^{1/3}E^{-2},
 \qquad
 \Xi_M:=D_\lambda Q_MJ_M^{-1}D_\lambda^{-1}.
\tag{17}
\]
Indeed, \(T_{(M)}=G_MD_\lambda(G_{M'}\odot G_{M''})^\top\) and
\((G_{M'}\odot G_{M''})^\top(P_{M'}\odot P_{M''})=Q_M\).
Using \(Q_MJ_M^{-1}-I=(Q_M-J_M)J_M^{-1}\), (8)--(9), and
\(\Gamma\le1.01\), diagonal similarity gives, for either \(\nu\),
\[
 \|\Xi_M-I\|_\nu
 \le1.01\frac{64}{63}(2.1qx+4.1x^2)
 \le2.2qx+4.3x^2.
\tag{18}
\]
Set \(\beta:=2.2qx+4.3x^2\). Since
\(2.2q_*+4.3\varrho<1/128\), we have \(\beta<1/128\). For each column
\(\xi_j=\Xi_M(:,j)\), let \(a_j=\|G_M\xi_j\|_2\). The column bound in
(18) gives \(|a_j-1|\le\beta\), hence \(a_j>0\) and the target inner
product is positive. The normalized coefficient field is
\[
 C_M^+=\Xi_M\operatorname{diag}(a_j^{-1})-I.
\tag{19}
\]
Consequently, in either induced orientation,
\[
 \|C_M^+\|_\nu
 \le {2\beta\over1-\beta}
 \le4.5qx+8.8x^2,
\tag{20}
\]
and the same bound holds for each Euclidean column error after applying
G_M. The elementary logarithm bound on \([1-\beta,1+\beta]\) gives
\[
 |s_{M,j}^+|=|\log a_j|
 \le {\beta\over1-\beta}
 \le2.3qx+4.4x^2.
\tag{21}
\]
Since \(q\le q_*\) and \(x\le\varrho\), each right side in (20)--(21)
is at most
\[
 (8q_*+32\varrho)x=\ell x.
\tag{22}
\]
The unfolding range inclusion, valid even for a singular design, puts the
output in \({\rm range}(G_M)\); the positive normalizer just proved makes
the normalized direction and rebalance well-defined. This proves (16).

### unit_005: proposition

**Proposition (chronological contraction and target-span invariant; label
prop:step-011-chronological-contraction).** On E_sm intersected with
the accepted E_land event, let \(e^0=e^{\rm land}\) and define the setting's
chronological states
\[
 e_U=(C_U^+,C_V^0,C_W^0,s_U^+),\quad
 e_V=(C_U^+,C_V^+,C_W^0,s_V^+),\quad
 e_W=(C_U^+,C_V^+,C_W^+,s_W^+),
 \qquad \Psi^q(e^0):=e_W.
\tag{23}
\]
Then every state in every subsequent sweep is in the exact target-span chart,
all three block solves are nondegenerate and quotient-equivalent to the
literal ALS states, and
\[
 d_Q(e^{t+1},0)\le\ell d_Q(e^t,0),
 \qquad \ell=8q_*+32\rho_{\rm ALS}=17/512<1/16.
\tag{24}
\]
In particular \(d_Q(e^t,0)\le\varrho\) for all t, and the recurrence has
no additive forcing:
\[
 d_Q(e^t,0)\le\ell^t d_Q(e^{\rm land},0),
 \quad
 d_Q(e^t,0)-d_Q(e^{t+1},0)\ge(1-\ell)d_Q(e^t,0),
 \quad
 \sum_{t\ge0}d_Q(e^t,0)\le{d_Q(e^{\rm land},0)\over1-\ell}.
\tag{25}
\]

**Proof / justification.** By (A2), the entry radius is below
\(\varrho/3\). Suppose a current full state has error x at most
\(\varrho\). Proposition~\ref{prop:step-011-block-contraction} applied to
the U block gives
\[
  \text{each of the four component seminorms of }(C_U^+,s_U^+)
  \text{ is at most }\ell x,
\tag{26}
\]
where the unlabelled norm in (26) denotes every component norm appearing in
\(d_Q(\cdot,0)\). The unchanged V,W fields and their scale registers are
still at most x, so e_U remains in the radius-\(\varrho\) chart. Apply
the same proposition to V, using the new U field and the old W field; its
held error is at most x, so the new V field and \(s_V^+\) are at most
\(\ell x\), and e_V is still in the chart. The W block uses the two
current fields and gives at most \(\ell x\) (in fact at most \(\ell^2x\))
for its new field and scale. Thus every component of e_W is at most
\(\ell x\), which proves (24) for one sweep and simultaneously proves the
inductive chart invariance. Proposition~\ref{prop:step-011-refresh-equivariance}
identifies each record with the literal chronological ALS state, while the
unfolding range argument in Proposition~\ref{prop:step-011-block-contraction}
preserves exact target-span membership before the next consumer. Induction
over sweeps now gives the first inequality in (25); subtracting the next
term and summing the geometric series gives the remaining two statements.

Finally,
\[
 8q_*+32\rho_{\rm ALS}
 ={8\over4096}+{32\over1024}
 ={17\over512}< {1\over16},
\tag{27}
\]
so the contraction is strict with the fixed sketch constant. A singular or
zero-normalizer tape outside the maintained chart receives no quantitative
conclusion and follows the setting's observable unsuccessful/cap branch.

## Target-Step Assembly

Lemma~\ref{lem:step-011-quotient-chart} supplies the unique exact-span
quotient coordinates and the balanced scale convention consumed by every
block. Proposition~\ref{prop:step-011-refresh-equivariance} proves that
positive product-one scaling is a genuine gauge symmetry of each full-rank
literal normal-equation solve and that the setting's chronological
Refresh_s records are the quotient representatives of the literal U/V/W
orbit. Lemma~\ref{lem:step-011-gram-reserve} derives, rather than assumes,
the dynamic pair-Gram reserve from the accepted realized interference bound
and the current radius; it also proves that every design used on the good
trajectory is full rank. Proposition~\ref{prop:step-011-block-contraction}
then derives the exact coefficient identity, scale cancellation
\(s_M^+=\log a_j\), positive normalizers, target orientation, and all three
parts of the one-block \(d_Q\) bound. Finally,
Proposition~\ref{prop:step-011-chronological-contraction} composes the held
input bounds in the actual U/V/W order, proves target-span invariance before
each consumer, and exports the no-forcing recurrence (24)--(25). Therefore
the generated event E_basin and \(\Psi^q\) satisfy the exact sketch-row
claim, with no predecessor comparator, post-solve landing input, or hidden
basin assumption.

At the exact orthogonal equal-weight certified state,
\(H_M=I\), \(C_M=0\), and \(s=0\). Hence \(Q_M=J_M=I\),
\(\Xi_M=I\), \(a_j=1\), every Refresh_s register remains zero, and all
three cyclic updates are stationary. The quotient error and the represented
tensor residual are exactly zero, preserving the required baseline rather
than replacing it by the finite-radius bound.

## Explicit Rate Audit

- **Exposed variables:** \(q=q_{\rm real}\le q_*=1/4096\),
  \(\Gamma\le1.01\), \(\rho_{\rm ALS}=1/1024\), the current quotient
  radius \(x=d_Q(e,0)\), the positive realized weights \(\lambda_j\), and
  the entry quantity \(4096\omega\). The horizon appears through the
  all-sweep index t.
- **Hidden constants may depend on:** only the displayed fixed numerical
  margins (1.01, 2.01, 4.1, 4.3, 8.8, 64/63, and chart constants).
- **Hidden constants may not depend on:** n, r beyond the exposed q and
  radius, \(\kappa_0\), the smoothing scale, \(\epsilon\), either confidence
  parameter, a target label, a generated comparator, or a condition number.
- **Fixed quantities:** one realized tensor on E_sm, one active rank-r
  quotient state, and the fixed cyclic U/V/W order. Inactive k-r columns
  remain exactly zero.
- **Probability mode:** deterministic conditional on the accepted derived
  events E_sm and E_land; no new probability conversion is made here.
- **Horizon mode:** horizon-uniform after the generated entry, by the
  inductive recurrence; off-event or singular tapes are finite observable
  cap branches and are not assigned an all-time claim.
- **Norm mode:** the quotient metric \(d_Q\), induced row/column l1 norms,
  Euclidean target-column errors, and the original positive product logs.
- **Admissibility conditions and auxiliary tolerances:**
  \(x\le\rho_{\rm ALS}\), \(q\le q_*\), \(\Gamma\le1.01\), and the
  positive-scale chart from E_land. The explicit inequalities are
  (10)--(22), including \(\|J-I\|<1/64\), \(\beta<1/128\), and
  \(\ell=17/512<1/16\).
- **Term absorption or simplification:** all Hadamard products retain their
  diagonal term and off-diagonal term separately in (C1), (13), and (14);
  no persistent additive defect is dropped. The final replacement of the
  sharper block constants by \(8q_*+32\rho_{\rm ALS}\) is justified by
  \(q\le q_*\) and \(x\le\rho_{\rm ALS}\).
- **Probability conversion:** none.
- **Contribution to Rate Specialization Bridge:** exports the
  horizon-uniform geometric quotient recurrence and a finite geometric budget
  \(d_Q(e^{\rm land},0)/(1-\ell)\) for the residual-transfer step.
- **Baseline reduction:** the exact orthogonal/equal-weight state is mapped
  identically by every block, with zero quotient error and zero represented
  residual for every positive accuracy target.

## Blockers

None.

## Notation And Assumption Notes

- \(\varrho\) is a proof-local alias for the setting-defined
  \(\rho_{\rm ALS}\); the smoothing scale \(\rho\) is never renamed or
  conflated with it. \(H_M,L_M,F_M,Q_M,J_M,K_M,A_M,\Xi_M,D_M,E\), and
  \(a_j\) are proof-local translations of the setting's target Gram,
  cross-Gram, normalized direction, and scale objects. The public-facing
  outputs are the Refresh_s identities, exact-span invariant, \(\Psi^q\),
  and \(\ell\)-contraction.
- The constants 1.01, 2.01, 4.1, 4.3, 8.8, 64/63, and 1/128 are proved or
  bounded in Lemma~\ref{lem:step-011-gram-reserve} and
  Proposition~\ref{prop:step-011-block-contraction}; they are not free
  bounded quantities. \(q_*,\rho_{\rm ALS},\omega\), and \(\Gamma\) are
  setting-defined or accepted-derived quantities.
- E_sm, E_land, exact-span membership, full-rank block designs, positive
  normalizers, chart membership, and contraction are generated invariants.
  The first two are supplied by accepted dependencies; the latter facts are
  proved in this step and then consumed only after their producer.
- The paired global_proof.md/global_proof_review.md was consulted only
  for the planning cue to use chronological held-input composition and a
  no-forcing potential. The diagnostic artifact is not evidence, an
  assumption source, a cited theorem, or authority to alter the target row.
