# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: `step_002`
- Unit attempt: 2
- Repair trigger: `proof_steps/step_002/review.md` (unit attempt 1)

## Target Step Claim

- Intended claim: For each target, prove the jointly observable three-mode
  window and competitor pair event has probability between universal
  multiples of `r^(-5/3)(log r)^(-3/2)`.
- Depends on: `step_001`.
- Assumptions used: `assump:random-initialization` (primitive) and `E_sm`
  (derived).
- Technical challenge: correlated competitor coordinates and product tails.
- Intended proof tool or cited result: Gaussian regression, dyadic
  product-tail comparison, and a finite-small-`r` minimum.
- Output target: `E_win`, `p_win`.
- Rate objective: the window-coverage objective; a fixed-horizon per-slot
  probability with no confidence parameter hidden in the rank.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:random-initialization`: conditional on the once-drawn tensor, the
    three raw Gaussian vectors in one proposal slot are independent standard
    Gaussian vectors and are independent of the smoothing draw; slots and
    full runs are also independent. Only the one-slot, three-mode clause is
    used here.
- Derived invariants supplied by accepted dependencies:
  - The accepted unit-attempt-2 proof and review for `step_001`, specifically
    Proposition~\ref{prop:step-001-event}, supply the static event `E_sm`.
    On a fixed realization in this event, the realized columns are unit
    vectors and `q_real <= q_*`. No other conclusion of `step_001` is needed.
- Local conditional hypotheses: None. Conditioning below on the three target
  coordinates is a regular-conditional-probability calculation inside the
  proof, not a theorem-facing generated condition.

For an explicit mapping to the setting's realized columns, define the
appendix-local alias
\[
 g_{(M,\ell)}:=G_M(:,\ell),
 \qquad g_{(U,\ell)}=u_\ell,\quad
 g_{(V,\ell)}=v_\ell,\quad g_{(W,\ell)}=w_\ell.               \tag{0}
\]
Thus every occurrence of `g_(M,ell)` below is a setting-level realized
factor column, not a new generated object.

All probabilities below are over one proposal slot after fixing an arbitrary
realized tensor in `E_sm`. Fix a target `j`. Put
\[
 L:=\log r,\qquad t:=\sqrt{a_*L},\qquad B:=b_*L,
 \qquad m_r:=q_*(t+t^{-1}).                                      \tag{1}
\]
Let
\[
 \mathcal P:=\{\{U,V\},\{U,W\},\{V,W\}\},
\]
and, suppressing the slot index when harmless, define
\[
 \begin{split}
 \mathsf W_j
   &:=\bigcap_{M\in\{U,V,W\}}
       \{t\le |Z_j^{(M)}|\le t+t^{-1}\},\\
 \mathsf C_j
   &:=\bigcap_{\ell\ne j}\ \bigcap_{\{M,N\}\in\mathcal P}
       \{|Z_\ell^{(M)}Z_\ell^{(N)}|\le B\},\\
 E_{\rm win}(j)&:=\mathsf W_j\cap\mathsf C_j.
                                                               \tag{2}
 \end{split}
\]
This is the exact target-window and same-competitor pair-product event used
by the accepted sketch.

The following fixed constants make the finite-`r` part explicit. Define
\[
 \alpha_*:=\sqrt{b_*}-q_*\left(\sqrt{a_*}
        +\frac{1}{\sqrt{a_*}\log 3}\right),
 \qquad \beta_*:=\alpha_*^2,                                  \tag{3}
\]
\[
 r_{\rm fin}:=\max\left\{3,\left\lceil 6^{1/(\beta_*-1)}\right\rceil\right\},
 \qquad D_{\rm fin}:=3(r_{\rm fin}-1),                        \tag{4}
\]
and
\[
 d_*:=\sqrt{b_*\log 3}
      -q_*\left(\sqrt{a_*\log 3}
           +\frac{1}{\sqrt{a_*\log 3}}\right)>0,              \tag{5}
\]
\[
 \eta_{\rm fin}:=\frac{d_*}{\sqrt{(1+q_*)D_{\rm fin}}},
 \quad \pi_{\rm fin}:=\Pr\{|G|\le\eta_{\rm fin}\},
 \quad c_{\rm fin}:=\pi_{\rm fin}^{D_{\rm fin}},
 \quad c_{\rm cmp}:=\min\{1/2,c_{\rm fin}\},                \tag{6}
\]
where `G` is standard normal. These are positive universal constants. Finally
set
\[
 C_{\rm nw}:=\frac{\sqrt{2/\pi}}{\sqrt{a_*}},\qquad
 c_{\rm nw}:=C_{\rm nw}
   \exp\left(-1-\frac{1}{2a_*\log 3}\right),                  \tag{7}
\]
\[
 C_{\rm win}:=C_{\rm nw}^3,qquad
 c_{\rm all}:=c_{\rm cmp}c_{\rm nw}^3.                       \tag{8}
\]

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:random-initialization}, for every fixed target in every fixed realized instance, one target coordinate has absolute-window mass between `c_nw r^(-5/9)(log r)^(-1/2)` and `C_nw r^(-5/9)(log r)^(-1/2)`, and the three-mode target window has the cube of these bounds. | Supplies the exact rare-event power and logarithmic factor. |
| `unit_002` | proposition | Under Assumption~\ref{assump:random-initialization} and the accepted derived event in Proposition~\ref{prop:step-001-event}, conditional on a target coordinate, every within-mode competitor vector equals its exact Gram-regression mean plus an independent centered Gaussian residual; the mean coordinates are at most `q_*|z|`, the residual covariance has operator norm at most `1+q_*`, and the three mode residuals remain independent. | Handles correlated coordinates without assuming independence across competitor labels. |
| `unit_003` | lemma | If two independent Gaussian coordinates have variances at most one and mean magnitudes at most `m_r`, then their shifted product exceeds `b_* log r` with probability at most `r^(-beta_*)`, where `beta_*>21/20`. | Gives a summable-in-label shifted product tail. |
| `unit_004` | proposition | Under Assumption~\ref{assump:random-initialization}, Proposition~\ref{prop:step-001-event}, Proposition~\ref{prop:step-002-regression}, and Lemma~\ref{lem:step-002-shifted-product}, conditional on any target-coordinate triple in the target window, all `3(r-1)` competitor pair bounds hold with probability at least `c_cmp`. | Proves the uniform competitor-event factor, including an explicit finite-small-`r` constant. |
| `unit_005` | proposition | Under Assumption~\ref{assump:random-initialization}, Proposition~\ref{prop:step-001-event}, Lemma~\ref{lem:step-002-narrow-window}, and Proposition~\ref{prop:step-002-competitor}, every target event `E_win(j)` has probability between `c_all r^(-5/3)(log r)^(-3/2)` and `C_win r^(-5/3)(log r)^(-3/2)`; the minimum target probability `p_win` has the same bounds, and the event gives `R_j(h_i^0)<=19/20` and `S_j(h_i^0)<=rR_j(h_i^0)`. | Exports exactly `E_win,p_win` and its target-chart entry interface. |

Atomic step = no. The narrow normal window, conditional correlated-coordinate
law, shifted product tail, all-competitor probability, and exported event are
independent nontrivial claims.

## Cited Result Applications

### Accepted dependency: the smoothed-instance event

- Source or name: accepted Proposition~\ref{prop:step-001-event} from the
  unit-attempt-2 `step_001` proof, certified by its current `ACCEPTED` review.
- Restated statement used here: on `E_sm`, every realized factor matrix has
  unit columns and absolute off-diagonal row mass at most `q_*`; the event is
  fixed before proposal randomness is drawn.
- Instantiated objects: the realized matrices `G_U=U`, `G_V=V`, and `G_W=W`
  and their Gram matrices.
- Assumptions required: the five primitive smoothing assumptions used and
  discharged inside the accepted dependency.
- Conclusion used: for every mode and target,
  `sum_(ell != j)|<g_(M,j),g_(M,ell)>| <= q_*`, and hence each individual
  target-competitor covariance has magnitude at most `q_*`.
- Boundary: no proposal event, target window, trajectory condition, or
  competitor independence is supplied by the dependency.

### Elementary Gaussian facts

No external paper result is used. The following elementary facts are
restated in current notation and proved or checked at their use sites.

1. If a centered jointly Gaussian pair `(X,Y)` has `Var(X)=1`, then
   `Y-Cov(Y,X)X` is jointly Gaussian and uncorrelated with `X`, hence
   independent of `X`. Its covariance is the Schur complement
   `Cov(Y)-Cov(Y,X)Cov(X,Y)`.
2. If `G_1,G_2` are independent standard normals, then
   `Pr(G_1^2+G_2^2>s)=exp(-s/2)` for `s>=0`; this follows by integrating the
   `chi-square_2` density `(1/2)exp(-u/2)`.
3. A centered Gaussian vector with positive-semidefinite covariance `C` has
   the representation `C^(1/2)G`, including when `C` is singular. This is
   immediate by equality of Gaussian covariance matrices (or characteristic
   functions).

The first fact is instantiated and derived in
Proposition~\ref{prop:step-002-regression}; the second in
Lemma~\ref{lem:step-002-shifted-product}; and the third in
Proposition~\ref{prop:step-002-competitor}. In each case Gaussianity and
cross-mode independence come from Assumption~\ref{assump:random-initialization},
while covariance bounds come from Proposition~\ref{prop:step-001-event}.

### Local-result use map

- Lemma~\ref{lem:step-002-narrow-window} supplies the target-window mass to
  Proposition~\ref{prop:step-002-window-event}.
- Proposition~\ref{prop:step-002-regression} supplies both the scalar
  cross-mode laws used by Lemma~\ref{lem:step-002-shifted-product} and the
  full residual covariance used by
  Proposition~\ref{prop:step-002-competitor}.
- Lemma~\ref{lem:step-002-shifted-product} supplies the large-`r` union bound
  in Proposition~\ref{prop:step-002-competitor}.
- Proposition~\ref{prop:step-002-competitor} supplies the conditional factor
  in Proposition~\ref{prop:step-002-window-event}.

## Local Derivation

### unit_001: lemma

**Lemma (two-sided three-mode narrow-window mass).**
\label{lem:step-002-narrow-window}
Under Assumption~\ref{assump:random-initialization}, fix `r>=3`, a realized
instance, one proposal slot, and one target `j`. If
\[
 w_r:=\Pr\{t\le |G|\le t+t^{-1}\},\qquad G\sim N(0,1),
\]
then
\[
 c_{\rm nw}r^{-5/9}L^{-1/2}
 \le w_r\le
 C_{\rm nw}r^{-5/9}L^{-1/2}.                                  \tag{9}
\]
Moreover, the three target coordinates are independent standard normals and
\[
 c_{\rm nw}^3r^{-5/3}L^{-3/2}
 \le \Pr(\mathsf W_j)\le
 C_{\rm nw}^3r^{-5/3}L^{-3/2}.                                \tag{10}
\]

**Proof.** Every realized target column is a unit vector, so its inner product
with a standard Gaussian proposal vector is `N(0,1)`. With
`phi(x)=(2 pi)^(-1/2)exp(-x^2/2)` and using that `phi` decreases on the
positive half-line,
\[
 \frac{2}{t}\phi(t+t^{-1})
 \le w_r=2\int_t^{t+t^{-1}}\phi(x)\,dx
 \le \frac{2}{t}\phi(t).                                     \tag{11}
\]
Because `t^2=a_*L`,
\[
 \frac{2}{t}\phi(t)
 =\frac{\sqrt{2/\pi}}{\sqrt{a_*}}
   r^{-a_*/2}L^{-1/2}
 =C_{\rm nw}r^{-5/9}L^{-1/2},                                 \tag{12}
\]
and
\[
 \frac{\phi(t+t^{-1})}{\phi(t)}
 =\exp\left(-1-\frac{1}{2t^2}\right)
 \ge \exp\left(-1-\frac{1}{2a_*\log3}\right).               \tag{13}
\]
This proves (9). The raw proposal vectors in the three modes are independent
under Assumption~\ref{assump:random-initialization}; cubing (9) proves (10).
\(\square\)

### unit_002: proposition

**Proposition (exact correlated-coordinate regression).**
\label{prop:step-002-regression}
Under Assumption~\ref{assump:random-initialization} and on the accepted
derived event of Proposition~\ref{prop:step-001-event}, fix a realized
instance, a proposal slot, a target `j`, and a mode `M`. Let
`H_M=G_M^T G_M`, let `h_(M,j)=H_M(-j,j)`, and let `Z_(-j)^(M)` be the vector
of the `r-1` competitor coordinates. Then
\[
 Z_{-j}^{(M)}=h_{M,j}Z_j^{(M)}+R_{M,j},                        \tag{14}
\]
where `R_(M,j)` is independent of `Z_j^(M)`, is centered Gaussian, and has
covariance
\[
 C_{M,j}=H_M(-j,-j)-h_{M,j}h_{M,j}^{\mathsf T}\succeq0.       \tag{15}
\]
The three pairs `(Z_j^(M),R_(M,j))` are independent across modes. In
addition,
\[
 \|h_{M,j}\|_1\le q_*,\qquad
 \max_{\ell\ne j}|(h_{M,j})_\ell|\le q_*,\qquad
 \|C_{M,j}\|_{\rm op}\le1+q_*.                              \tag{16}
\]
Consequently, conditional on `Z_j^(M)=z`, every competitor coordinate has
mean of magnitude at most `q_*|z|` and variance at most one.

**Proof.** The coordinate vector is a linear image of the raw Gaussian
proposal vector and is therefore centered jointly Gaussian with covariance
`H_M`. Since `(H_M)_(jj)=1`, set
`R_(M,j):=Z_(-j)^(M)-h_(M,j)Z_j^(M)`. Direct covariance calculation gives
\[
 \operatorname{Cov}(R_{M,j},Z_j^{(M)})
 =H_M(-j,j)-h_{M,j}=0,
\]
so joint Gaussianity makes the residual independent of the target coordinate;
the same calculation gives (15). The three constructions use independent raw
mode vectors, proving cross-mode independence.

Proposition~\ref{prop:step-001-event} gives the first two bounds in (16).
The principal Gram matrix `H_M(-j,-j)` has diagonal one and off-diagonal row
mass at most `q_*`, so Gershgorin gives
`||H_M(-j,-j)||_op<=1+q_*`. Since
`0 <= C_(M,j) <= H_M(-j,-j)` in Loewner order, the operator bound in (16)
follows. Finally, the conditional scalar variance is
`1-|(h_(M,j))_ell|^2<=1`. \(\square\)

### unit_003: lemma

**Lemma (uniform shifted Gaussian product tail).**
\label{lem:step-002-shifted-product}
Let `X=mu+sigma G` and `Y=nu+tau H`, where `G,H` are independent standard
normals, `0<=sigma,tau<=1`, and `|mu|,|nu|<=m_r`. Under the fixed setting
constants `q_*=1/4096`, `a_*=10/9`, and `b_*=19/18`, for every `r>=3`,
\[
 \Pr\{|XY|>b_*\log r\}\le r^{-\beta_*},
 \qquad \beta_*>\frac{21}{20}>1.                              \tag{17}
\]

**Proof.** Write `B=b_*L` and `m=m_r`. The triangle inequality and
`sigma,tau<=1` give the pointwise implication
\[
 \begin{split}
 |XY|>B
 &\Longrightarrow X^2+Y^2>2B\\
 &\Longrightarrow G^2+H^2
   >2(\sqrt B-m)^2.                                           \tag{18}
 \end{split}
\]
Indeed,
`sqrt(X^2+Y^2)<=sqrt(mu^2+nu^2)+sqrt(sigma^2G^2+tau^2H^2)
<=sqrt(2)m+sqrt(G^2+H^2)`. The threshold is positive by the bound on
`beta_*` below. The exact `chi-square_2` tail therefore yields
\[
 \Pr\{|XY|>B\}\le \exp\{-(\sqrt B-m)^2\}.                    \tag{19}
\]
For `L>=log3`,
\[
 \frac{\sqrt B-m}{\sqrt L}
 =\sqrt{b_*}-q_*\sqrt{a_*}-\frac{q_*}{\sqrt{a_*}L}
 \ge\alpha_*,                                                \tag{20}
\]
so (19) is at most `exp(-beta_*L)=r^(-beta_*)`.

It remains to check that the exponent is strictly larger than one without a
decimal assumption. The elementary inequalities
\[
 \sqrt{19/18}>1027/1000,\qquad
 \sqrt{10/9}<19/18,\qquad \log3>1
\]
give
\[
 q_*\left(\sqrt{a_*}+\frac1{\sqrt{a_*}\log3}\right)
 <\frac{37}{73728}<\frac1{1900}.
\]
Thus
\[
 \alpha_*>\frac{1027}{1000}-\frac1{1900}
 =\frac{19503}{19000},
 \qquad
 \beta_*>\left(\frac{19503}{19000}\right)^2>\frac{21}{20}.
                                                                    \tag{21}
\]
This proves (17). \(\square\)

### unit_004: proposition

**Proposition (uniform all-competitor success, including finite ranks).**
\label{prop:step-002-competitor}
Under Assumption~\ref{assump:random-initialization}, on the accepted event of
Proposition~\ref{prop:step-001-event}, and using
Proposition~\ref{prop:step-002-regression} and
Lemma~\ref{lem:step-002-shifted-product}, for every `r>=3`, target `j`, and
target-coordinate triple `z=(z_U,z_V,z_W)` satisfying
`t<=|z_M|<=t+t^(-1)`,
\[
 \Pr\{\mathsf C_j\mid Z_j^{(U)}=z_U,Z_j^{(V)}=z_V,
                 Z_j^{(W)}=z_W\}\ge c_{\rm cmp}.              \tag{22}
\]
This conclusion permits arbitrary dependence among competitor labels within
one mode.

**Proof.** By Proposition~\ref{prop:step-002-regression}, conditional on the
target triple, coordinates from two different modes have independent
Gaussian residuals, variances at most one, and means bounded by
`q_*(t+t^(-1))=m_r`. Lemma~\ref{lem:step-002-shifted-product} and a union
bound over the `3(r-1)` same-label mode pairs give
\[
 \Pr(\mathsf C_j^c\mid z)\le3(r-1)r^{-\beta_*}.               \tag{23}
\]
No independence across `ell` is used. If `r>=r_fin`, definitions (3)--(4)
give
\[
 3(r-1)r^{-\beta_*}\le3r^{1-\beta_*}\le\frac12.              \tag{24}
\]

It remains to obtain a nonzero uniform constant for `3<=r<r_fin`, where a
loose union bound need not be below one. Stack the three residual vectors in
(14) into `R` of dimension `D_r:=3(r-1)`. Its conditional covariance is
block diagonal, and Proposition~\ref{prop:step-002-regression} gives operator
norm at most `1+q_*`. Hence
\[
 R\ \stackrel{d}=\ C^{1/2}G_{D_r},\qquad \|C\|_{\rm op}\le1+q_*,            \tag{25}
\]
for a vector of independent standard normals `G_(D_r)`. On the rectangle
\[
 \mathsf F_r:=\bigcap_{s=1}^{D_r}{|(G_{D_r})_s|\le\eta_{\rm fin}\},
\]
\[
 \|R\|_2\le\sqrt{1+q_*}\sqrt{D_r}\eta_{\rm fin}\le d_*,
 \qquad
 \Pr(\mathsf F_r)=\pi_{\rm fin}^{D_r}
 \ge\pi_{\rm fin}^{D_{\rm fin}}=c_{\rm fin}.                 \tag{26}
\]
To see that this rectangle implies the required products, as a function of
`x=sqrt(L)`,
\[
 d(L):=\sqrt{b_*L}-q_*\left(\sqrt{a_*L}
              +\frac1{\sqrt{a_*L}}\right)
 =(\sqrt{b_*}-q_*\sqrt{a_*})x-\frac{q_*}{\sqrt{a_*}x}
\]
is strictly increasing. Therefore `d(L)>=d(log3)=d_*`. On `mathsf F_r`,
every conditional residual coordinate has magnitude at most `d_*`, and hence
\[
 |Z_\ell^{(M)}|\le m_r+d_*\le m_r+d(L)=\sqrt{b_*L}             \tag{27}
\]
for every mode and competitor. Every same-label cross-mode product is then at
most `b_*L`, so `mathsf F_r` is contained in `mathsf C_j`. Equations
(24)--(27) prove (22) with `c_cmp=min{1/2,c_fin}`. \(\square\)

### unit_005: proposition

**Proposition (exported rare window event and probability).**
\label{prop:step-002-window-event}
Under Assumption~\ref{assump:random-initialization}, on every fixed realized
instance in the accepted event of Proposition~\ref{prop:step-001-event}, and
using Lemma~\ref{lem:step-002-narrow-window} and
Proposition~\ref{prop:step-002-competitor}, define
\[
 p_{{\rm win},j}:=\Pr\{E_{\rm win}(j)\mid\text{fixed instance}\},
 \qquad p_{\rm win}:=\min_{j\in[r]}p_{{\rm win},j}.            \tag{28}
\]
Then for every target `j`,
\[
 c_{\rm all}r^{-5/3}(\log r)^{-3/2}
 \le p_{{\rm win},j}\le
 C_{\rm win}r^{-5/3}(\log r)^{-3/2},                          \tag{29}
\]
and the same two inequalities hold for `p_win`. On `E_win(j)`, normalization
of the raw initializer cancels from target-relative ratios and
\[
 R_j(h_i^0)\le\frac{b_*}{a_*}=\frac{19}{20},
 \qquad S_j(h_i^0)\le(r-1)R_j(h_i^0)\le rR_j(h_i^0).           \tag{30}
\]

**Proof.** Lemma~\ref{lem:step-002-narrow-window} gives the two-sided bound
on `Pr(mathsf W_j)`. Proposition~\ref{prop:step-002-competitor} gives a
conditional competitor-event probability at least `c_cmp` at every target
triple in that window. Integration over those target values gives
\[
 c_{\rm cmp}\Pr(\mathsf W_j)
 \le\Pr(E_{\rm win}(j))\le\Pr(\mathsf W_j),                   \tag{31}
\]
which, with (7)--(8), is exactly (29). Taking the minimum over the finite
target set preserves both universal bounds.

For the deterministic interface, the setting's normalization cancellation
gives, for each competitor `ell` and mode pair `{M,N}`,
\[
 \frac{|\langle g_{M,\ell},h_M^0\rangle
          \langle g_{N,\ell},h_N^0\rangle|}
      {|\langle g_{M,j},h_M^0\rangle
          \langle g_{N,j},h_N^0\rangle|}
 =\frac{|Z_\ell^{(M)}Z_\ell^{(N)}|}
        {|Z_j^{(M)}Z_j^{(N)}|}
 \le\frac{b_*L}{t^2}=\frac{b_*}{a_*}=\frac{19}{20}.           \tag{32}
\]
Taking the maximum gives the first part of (30); summing at most `r-1` terms
in any of the three mode pairs gives the second. \(\square\)

## Target-Step Assembly

Fixing the accepted dependency event first preserves the nested probability
order. Lemma~\ref{lem:step-002-narrow-window} proves that the three independent
target windows contribute exactly
`Theta(r^(-5/3)(log r)^(-3/2))`. Proposition~\ref{prop:step-002-regression}
then gives the exact conditional law of every competitor coordinate, including
the Gram-induced mean, the residual covariance, and cross-mode independence.
Lemma~\ref{lem:step-002-shifted-product} converts those raw controls into the
uniform exponent `beta_*>1`. Proposition~\ref{prop:step-002-competitor}
composes that tail over all same-label mode pairs without assuming competitor-
label independence; its Gaussian rectangle supplies a positive explicit
constant for every finite rank below the large-`r` union threshold.

Finally, Proposition~\ref{prop:step-002-window-event} integrates the uniform
conditional bound, proves the two-sided universal comparison for each target
and for `p_win`, and checks the exact raw-coordinate-to-initial-ratio bridge.
These named results establish the complete `step_002` claim and export only
`E_win`, `p_win`, and their universal comparison constants to `step_003`.

## Explicit Rate Audit

- Exposed variables: `r` and the per-target, per-slot probability; the fixed
  numerical constants `q_*=1/4096`, `a_*=10/9`, and `b_*=19/18` are shown.
- Hidden constants may depend on: only the displayed fixed numerical
  constants. Concretely, they are `c_all` and `C_win` in (8).
- Hidden constants may not depend on: `n`, `k`, `kappa_0`, `rho`, the fixed
  base triple, the realized instance in `E_sm`, the target label, `epsilon`,
  `delta_sm`, `delta_init`, or any generated condition number.
- Fixed quantities: an arbitrary realized instance in `E_sm`, one proposal
  slot, and one proof-only target label are fixed before proposal probability
  is taken.
- Probability mode: conditional probability over one slot's initialization
  randomness, uniformly for every fixed good instance. There is no union over
  target labels in this step and no confidence conversion.
- Horizon mode: fixed time at initialization (`t=0`); no burn, certification,
  restart, or all-time claim is made.
- Norm mode: scalar raw Gaussian coordinates and absolute same-label
  cross-mode products; (32) translates them exactly into the setting's
  target-relative pair ratios.
- Admissibility conditions and auxiliary tolerances: `r>=3`, unit realized
  columns, and the accepted derived inequality `q_real<=q_*`. The constants
  `r_fin,D_fin,eta_fin` are proof devices derived in (3)--(6), not additional
  conditions.
- Term absorption or simplification inequalities: (11)--(13) give the exact
  narrow-window constants; (18)--(21) prove the shifted-tail exponent
  `beta_*>21/20`; (23)--(24) make the large-`r` union at most `1/2`; and
  (25)--(27) give the explicit finite-small-`r` probability `c_fin>0`.
- Probability conversion: the three target modes are multiplied by genuine
  mode independence; competitor labels are handled by a union bound only in
  the large-`r` regime and by the full correlated Gaussian residual vector in
  the finite regime; (31) performs the conditional-to-joint conversion.
- Contribution to any Rate Specialization Bridge: this step exports
  `p_win>=c_all r^(-5/3)(log r)^(-3/2)` to `step_003`. It does not choose `k`
  or absorb any confidence parameter into the rank.
- Baseline-reduction check: when `q_real=0`, all conditional means in (14)
  vanish and the residual covariances are identity for orthogonal realized
  factors. The same event and rate remain valid; the proof only retains a
  conservative universal constant and introduces no error floor or changed
  probability mode.

## Blockers

None.

## Notation And Assumption Notes

- `E_win(j)` and `p_win` are `public-facing` outputs. The target-indexed event
  is proof-only as a label, while its probability is the exact interface
  consumed by `step_003`. The constants `c_all,C_win` are also public-facing
  comparison constants because the rank specialization consumes the lower
  one.
- `mathsf W_j`, `mathsf C_j`, and the mode-pair set `mathcal P` are
  `appendix-local` decompositions of `E_win(j)`. They are defined directly
  from the setting's raw coordinates and fixed thresholds.
- `w_r`, `phi`, `L,t,B,m_r`, `d(L)`, `D_r`, and the standard-normal vectors
  `G_(D_r)` are `proof-local` or `appendix-local` expressions defined directly
  from the setting's raw coordinates and fixed numerical constants. The
  conditional residual covariance `C` and rectangle `mathsf F_r` are likewise
  `proof-local`; they are integration devices, not assumptions or exported
  events.
- `alpha_*,beta_*,r_fin,D_fin,d_*,eta_fin,pi_fin,c_fin,c_cmp,c_nw,C_nw` are
  `proof-local` or `appendix-local` constants proved finite and bounded in
  Lemma~\ref{lem:step-002-shifted-product} and
  Proposition~\ref{prop:step-002-competitor}. None hides dependence on a
  branch parameter or realized geometry.
- `H_M,h_(M,j),C_(M,j),R_(M,j)` are `proof-local` regression objects defined
  from the setting's realized factor matrices and raw Gaussian coordinates.
  Their covariance and operator bounds are proved in
  Proposition~\ref{prop:step-002-regression}; they are not generated
  assumptions.
- `g_(M,ell)` is `appendix-local` and is exactly the alias in (0), with the
  displayed `U/V/W` mapping; it introduces no new factor or target.
- The scalar regression symbols `mu,nu,sigma,tau`, the conditional target
  value `z`, the standard-normal density `phi`, the one-dimensional mass
  `w_r`, the stacked dimension `D_r`, the stacked covariance `C`, and the
  rectangle `mathsf F_r` are all `proof-local`; they are introduced only to
  prove the exported probability and are not downstream interfaces.
- `E_sm` is a derived invariant supplied by the current accepted
  `step_001` proof/review pair. This proof uses only its `q_real<=q_*` clause
  after the tensor is fixed. No trajectory, coverage, boundedness, or basin
  condition is assumed.
- The target-coordinate values used in conditional calculations and the
  Gaussian rectangle `mathsf F_r` are `proof-local` integration events proved
  adequate in Proposition~\ref{prop:step-002-competitor}; neither is exported
  as an assumption.
- The accepted `global_proof.md` was read only because its paired
  `global_proof_review.md` has status `ACCEPTED`. Its step-relevant planning
  suggestion was to separate narrow-window mass, conditional regression,
  shifted product tails, label unions, and finite-small-`r` constants. No
  diagnostic statement was used as evidence, a cited result, an assumption
  source, or authority to change the target claim.
