# Proof Step

## Step Identity

- Sketch attempt: 4
- Step ID: step_002
- Unit attempt: 1

## Target Step Claim

- Intended claim: For each target, prove the jointly observable three-mode
  window and competitor pair event has probability between universal multiples
  of r^(-5/3)(log r)^(-3/2).
- Depends on: step_001.
- Assumptions used: assump:random-initialization (primitive), E_sm
  (derived).
- Technical challenge: correlated competitor coordinates and product tails.
- Intended proof tool or cited result: Gaussian regression, dyadic
  product-tail comparison, finite-small-r minimum.
- Output target: E_win, p_win.
- Rate objective: fixed-horizon per-slot probability, with no confidence
  hidden in rank.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:random-initialization: conditional on the once-drawn tensor, raw
    Gaussian triples are mutually independent across slots and modes and
    independent of the smoothing draw.  Only one fixed slot is used here.
- Derived invariants supplied by accepted dependencies:
  - E_sm from the accepted step_001 proof (SHA-256
    7fab685e663df565c7e1ec99484ed86f5393e35aa0398047c23a866c29fc3362) and
    accepted review (SHA-256
    2acfd5b7208c925aa28de3a57045bf6c3a0ad25cb3a0512e0e920fce1904a177).
    For T in E_sm, G_U=U, G_V=V, G_W=W have unit columns and
    sum_{ell != j}|<g_{Mj},g_{Mell}>| <= q_* for every M,j.
- Local conditional hypotheses:
  - A fixed T in E_sm, target j, slot i, and target values in the declared
    windows are used only inside regular conditional laws and are integrated
    out below.  They are not public assumptions.
- No proof-history or sketch-attempt-2 artifact is used as evidence.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution |
| --- | --- | --- | --- |
| unit_001 | lemma | Under assump:random-initialization and E_sm, conditioning on one target coordinate gives the exact realized-Gram Gaussian regression law, competitor shifts at most q_*(t_r+t_r^(-1)), residual variances at most one, and cross-mode residual independence. | Correlated-coordinate interface. |
| unit_002 | lemma | The three independent target coordinates have window mass between universal multiples of r^(-5/3)(log r)^(-3/2). | Target tail rate. |
| unit_003 | lemma | Each distinct-mode competitor product exceeds b_* log r with probability at most r^(-beta_*), where beta_*>1. | Summable product tails. |
| unit_004 | proposition | The complete competitor event has a universal positive conditional probability, including all finite small ranks, without within-mode label independence. | Uniform survival factor. |
| unit_005 | proposition | E_win has the required two-sided probability rate and exports p_win, R_0 <= 19/20, and S_0 <= r R_0. | Exact target-step interface. |

Atomic step = no.  The five units contain independent nontrivial
regression, tail, finite-r, and assembly claims.

## Cited Result Applications

### Accepted step_001 geometry

The accepted dependency supplies, on E_sm, unit columns G_M and
H_M=G_M^T G_M with H_M(j,j)=1 and
sum_{ell != j}|H_M(ell,j)| <= q_*.  This is the only dependency conclusion
used.  The proof and review hashes are recorded above.

### Gaussian regression

If (X,Y) is centered jointly Gaussian, Var(X)=1, Cov(Y,X)=h, and
Cov(Y)=K, then Y | X=x = h x + E with
E distributed as N(0,K-h h^T), independent of X.  The statement remains
valid for singular residual covariance.  We instantiate X=Z_{ij}^{(M)},
Y=Z_{i,-j}^{(M)}, h=H_M(-j,j), K=H_M(-j,-j); unit-column variance and the
row bound are supplied by E_sm.

### Radial Gaussian tail

For independent standard normals G,H and u >= 0,
Pr(G^2+H^2 > u^2)=exp(-u^2/2).  It is applied after the triangle inequality
in unit_003; independence is only across distinct modes.

### Gaussian correlation box inequality

For any centered (possibly singular) Gaussian vector Y and d_l >= 0,
Pr(|Y_l| <= d_l for every l) >= product_l Pr(|Y_l| <= d_l).
If Var(Y_l) <= 1, each factor is at least Pr(|G| <= d_l) for G standard
normal.  This is the Gaussian correlation inequality applied successively
to symmetric slabs.  It is applied to the centered residual vector in each
mode; no same-mode label independence is assumed.

### Elementary normal-window integral

For t,w>0, monotonicity of phi(x)=(2 pi)^(-1/2) exp(-x^2/2) on the positive
half-line gives 2w phi(t+w) <= 2 integral_t^{t+w} phi(x) dx <= 2w phi(t).

### Local-result flow

The regression lemma feeds the pair-tail lemma and the finite-r proposition;
the target-window lemma and finite-r proposition feed the final assembly.

## Local Derivation

Fix T in E_sm and set G_U=U, G_V=V, G_W=W and H_M=G_M^T G_M.
For a proposal slot i write Z_i^(M)=G_M^T xi_i^(M).  Put

\[
a_*:=10/9,\quad b_*:=19/18,\quad t_r:=\sqrt{a_*\log r},
\quad B_r:=b_*\log r,\quad m_r:=q_*(t_r+t_r^{-1}).
\]

### unit_001: lemma

**Lemma (Realized-Gram Gaussian regression).**
\label{lem:p1-i6-s002-regression}

Under Assumption~\ref{assump:random-initialization} and accepted E_sm, fix
T, i, j, and M.  Conditional on Z_{ij}^{(M)}=x,
\[
Z_{i,-j}^{(M)}=h_{M,j}x+Y_{M,j},\qquad
Y_{M,j}\sim N(0,H_M(-j,-j)-h_{M,j}h_{M,j}^T),
\tag{1}
\]
where h_{M,j}=H_M(-j,j), and Y_{M,j} is independent of the target
coordinate.  Every residual coordinate has variance at most one.  If
|x| <= t_r+t_r^(-1), every competitor conditional mean has magnitude at most
m_r.  After conditioning on all three target coordinates, the three mode
residual vectors remain independent.

**Proof.** The raw vector is standard Gaussian, so Z_i^(M) is centered
Gaussian with covariance H_M and target variance one.  The cited regression
identity gives (1), including a singular Schur complement.  A residual
coordinate has variance 1-H_M(ell,j)^2 <= 1; E_sm gives
|H_M(ell,j)| <= q_*.  This proves the mean bound.  Independence of the raw
vectors in distinct modes is preserved by modewise conditioning and
regression.  No independence within a mode is used. \(\square\)

### unit_002: lemma

**Lemma (Exact three-target window mass).**
\label{lem:p1-i6-s002-target-window}

Under Assumption~\ref{assump:random-initialization} and the accepted
unit-column conclusion of E_sm, for G standard normal let
p_t(r)=Pr(t_r <= |G| <= t_r+t_r^(-1)).  Define
\[
C_t:=\sqrt{2/(\pi a_*)},\qquad
c_t:=C_t\exp(-1-(2a_*\log3)^{-1}).
\tag{2}
\]
For every r >= 3,
\[
c_t r^{-5/9}(\log r)^{-1/2}\le p_t(r)\le
C_t r^{-5/9}(\log r)^{-1/2}.
\tag{3}
\]
The three-mode target event A_{i,j} has probability between c_t^3 and C_t^3
times r^{-5/3}(log r)^(-3/2).

**Proof.** The cited density bound with w=t_r^(-1) gives
\[
\frac{2}{t_r}\phi(t_r+t_r^{-1})\le p_t(r)\le
\frac{2}{t_r}\phi(t_r).
\tag{4}
\]
Moreover
\[
\frac12(t_r+t_r^{-1})^2
=\frac{a_*}{2}\log r+1+\frac{1}{2a_*\log r}.
\tag{5}
\]
Using r >= 3 and a_*/2=5/9 yields (3).  Each target coordinate is standard
normal and the three modes are independent, so cubing gives the final
statement and 3a_*/2=5/3. \(\square\)

### unit_003: lemma

**Lemma (Shifted Gaussian competitor-product tail).**
\label{lem:p1-i6-s002-pair-tail}

Under Assumption~\ref{assump:random-initialization}, the accepted E_sm
interface, and Lemma~\ref{lem:p1-i6-s002-regression}, condition on three
target values in the windows.  For every ell != j and every unordered
distinct mode pair {M,N},
\[
\Pr\{|Z_{i\ell}^{(M)}Z_{i\ell}^{(N)}|>B_r\mid
 Z_{ij}^{(L)}=x_L,\ L\in\{U,V,W\},T\}\le r^{-\beta_*},
\tag{6}
\]
where
\[
\beta_*:=\left[\sqrt{b_*}-q_*
\left(\sqrt{a_*}+\frac{1}{\sqrt{a_*}\log3}\right)\right]^2>1.053>1.
\tag{7}
\]

**Proof.** Regression represents the two coordinates as
X=mu+sigma G and Y=nu+tau H, with independent standard G,H,
0 <= sigma,tau <= 1, and |mu|,|nu| <= m_r.  Since
2|XY| <= X^2+Y^2, the event |XY|>B_r implies
\[
G^2+H^2>2(\sqrt{B_r}-m_r)^2.
\tag{8}
\]
Indeed apply the Euclidean triangle inequality and
||(sigma G,tau H)|| <= (G^2+H^2)^(1/2).  Also
\[
\sqrt{B_r}-m_r\ge\sqrt{\log r}\left[\sqrt{b_*}-q_*
\left(\sqrt{a_*}+\frac{1}{\sqrt{a_*}\log3}\right)\right].
\tag{9}
\]
The bracket is positive.  For example sqrt(19/18)>1.027,
sqrt(10/9)<1.055, and log(3)>1.098 give beta_*>1.053.  The radial tail
now gives exp(-(sqrt(B_r)-m_r)^2) <= r^(-beta_*). \square

### unit_004: proposition

**Proposition (Uniform competitor-pair survival).**
\label{prop:p1-i6-s002-survival}

Under Assumption~\ref{assump:random-initialization}, accepted E_sm, and the
preceding lemmas, let B_{i,j} be the event that
|Z_{iell}^{(M)}Z_{iell}^{(N)}| <= B_r for every ell != j and all three
unordered distinct mode pairs.  Under the hypotheses above there is a
universal c_pair>0 such that, for every r >= 3 and every target triple in
the windows,
\[
\Pr(B_{i,j}\mid Z_{ij}^{(L)}=x_L,\ L\in\{U,V,W\},T)\ge c_{\rm pair}.
\tag{10}
\]

**Proof.** There are 3(r-1) pair constraints.  With
\[
r_*:=\left\lceil6^{1/(\beta_*-1)}\right\rceil\vee3,
\tag{11}
\]
the union bound and (6) give probability at least 1/2 for r >= r_*.
For 3 <= r < r_*, set d_r=sqrt(B_r)-m_r>0, by (9).  In mode M require
|Y_{M,j,ell}| <= d_r for all ell != j.  This implies
|Z_{iell}^{(M)}| <= sqrt(B_r), hence B_{i,j}.  The Gaussian correlation box
inequality and Lemma~\ref{lem:p1-i6-s002-regression} variance bounds give
\[
\Pr\{|Y_{M,j,ell}|\le d_r\ \forall ell\ne j\mid x_M,T\}
\ge [\Pr\{|G|\le d_r\}]^{r-1}.
\tag{12}
\]
The three residual vectors are independent, so define
\[
c_{\rm pair}:=\min\left\{\frac12,\min_{3\le r<r_*}
[\Pr\{|G|\le d_r\}]^{3(r-1)}\right\}>0.
\tag{13}
\]
The inner set is finite and every d_r is positive (an empty inner set has
minimum one).  This proves (10), including singular and arbitrarily
correlated same-mode residuals. \square

### unit_005: proposition

**Proposition (Three-mode window event and rate envelope).**
\label{prop:p1-i6-s002-assembly}

Under Assumption~\ref{assump:random-initialization} and accepted E_sm, define
\[
A_{i,j}:=\bigcap_{M\in\{U,V,W\}}\{t_r\le|Z_{ij}^{(M)}|
\le t_r+t_r^{-1}\},\qquad E_{\rm win}(i,j):=A_{i,j}\cap B_{i,j}.
\tag{14}
\]
For p_{i,j}(T)=Pr_init(E_win(i,j) | T), every T in E_sm, target j, and
slot i satisfy
\[
c_{\rm win}r^{-5/3}(\log r)^{-3/2}\le p_{i,j}(T)\le
C_{\rm win}r^{-5/3}(\log r)^{-3/2},
\tag{15}
\]
where c_win=c_pair c_t^3 and C_win=C_t^3.  The public lower envelope is
\[
p_{\rm win}(r):=c_{\rm win}r^{-5/3}(\log r)^{-3/2}.
\tag{16}
\]
Every witness also satisfies R_j(h_i^0) <= 19/20 and
S_j(h_i^0) <= r R_j(h_i^0).

**Proof.** Integrating the conditional survival bound (10) over A_{i,j}
gives c_pair Pr(A_{i,j}|T) <= p_{i,j}(T); event inclusion gives the upper
bound.  Unit_002 then proves (15)-(16).  Normalization cancels in same-mode
ratios, so
\[
A_{\ell|j}(p_i^0)=|Z_{iell}^{(U)}|/|Z_{ij}^{(U)}|,
\quad B_{\ell|j}(q_i^0)=|Z_{iell}^{(V)}|/|Z_{ij}^{(V)}|,
\quad C_{\ell|j}(s_i^0)=|Z_{iell}^{(W)}|/|Z_{ij}^{(W)}|.
\tag{17}
\]
On A_{i,j}, every denominator pair is at least t_r^2=a_*\log r; on
B_{i,j}, every numerator pair is at most B_r=b_*\log r.  Thus every pair
ratio is at most b_*/a_*=19/20, proving the R bound, and summing at most
r-1 terms proves S <= rR.  The target label is proof-only; E_win is a raw
coordinate event and no label is supplied to the observable filter.
\square

## Target-Step Assembly

For any fixed T in E_sm, target j, and slot i, accepted step_001 supplies
the unit-column and row-sum interface.  Lemma
\ref{lem:p1-i6-s002-regression} supplies exact conditional shifts and
variance bounds; Lemma~\ref{lem:p1-i6-s002-target-window} supplies the
three-target mass; Lemma~\ref{lem:p1-i6-s002-pair-tail} gives a tail exponent
strictly above one for each of 3(r-1) pairs.  Proposition
\ref{prop:p1-i6-s002-survival} handles the large-r union and the finite
small-r correlated Gaussian case.  Proposition
\ref{prop:p1-i6-s002-assembly} integrates in the correct order and proves
the exact two-sided rate, defines E_win and p_win, and exports the ratio
interface.  No cross-target independence or later trajectory claim is used.

## Explicit Rate Audit

- Exposed variables: r; the rate is r^(-5/3)(log r)^(-3/2).
- Hidden constants may depend on: only fixed numerical q_*, a_*, b_* and
  the finite universal minimum in (13).
- Hidden constants may not depend on: n,k,kappa_0,rho,epsilon,
  delta_sm,delta_init, the base triple, T in E_sm, i, or j.
- Fixed quantities: one realized instance, one slot, three modes, and the
  fixed numerical thresholds.
- Probability mode: conditional on the once-drawn instance, over one raw
  Gaussian proposal triple.  The smoothing probability is supplied by E_sm.
- Horizon mode: fixed one-slot initialization; no slot, target, sweep, or
  restart union is performed here.
- Norm mode: scalar absolute coordinates, scalar products, and
  target-relative ratios.
- Admissibility and auxiliary tolerances: r >= 3, assump:random-initialization,
  and E_sm.  Positivity of d_r is proved in (9).
- Simplification inequalities: (5), (8)-(9), (11), and the finite minimum
  (13) explicitly account for endpoint, shift, union, and small-r effects.
- Probability conversion: conditional survival is integrated over the target
  window; no confidence parameter is hidden in p_win.
- Rate bridge: p_win is the lower envelope consumed by step_003; its coupon
  and target union are not asserted here.
- Baseline reduction: in the orthogonal equal-weight limit q_real=0 and
  Gamma=1, regression shifts vanish and residual covariances are identity;
  the formulas reduce to the independent-coordinate calculation with no
  positive interference floor.  This is a limiting algebraic check, not a
  probability assertion at rho=0.

## Blockers

None.

## Notation And Assumption Notes

- G_M,H_M,Z_i^(M), t_r,B_r,m_r,d_r,beta_* and r_* are proof-local,
  setting-derived objects.  A_{i,j} and B_{i,j} are appendix-local events.
- E_win, p_win, c_win, and C_win are public-facing outputs; p_{i,j}(T),
  c_t,C_t,c_pair are proof-local or appendix-local bookkeeping.
- E_sm is a derived dependency output, never a primitive assumption.
  Conditional target values are local hypotheses integrated out in the
  assembly.  Within-mode coordinates may be correlated or singular.
- The accepted global diagnostic and review (SHA-256
  2efd283cab1d4dd948afc3bb10932f0ef5702749f1750e33f5d6280a7dde154a and
  aa928f6a1ea0b9e541efcaabe9747921a369f8533598c117aaf646cb68ef892a) were
  used only for planning the regression/product-tail split, not as evidence
  or authority.
- This artifact is bound to sketch SHA-256
  47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b and
  accepted sketch-review SHA-256
  eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9.
