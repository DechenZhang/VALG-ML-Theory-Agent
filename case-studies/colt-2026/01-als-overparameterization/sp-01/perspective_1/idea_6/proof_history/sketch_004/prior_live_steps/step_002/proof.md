# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For each target, prove the jointly observable three-mode
  window and competitor pair event has probability between universal
  multiples of `r^(-5/3)(log r)^(-3/2)`.
- Depends on: `step_001`.
- Assumptions used: `assump:random-initialization` (primitive), `E_sm`
  (derived).
- Technical challenge: correlated competitor coordinates and product tails.
- Intended proof tool or cited result: Gaussian regression, dyadic
  product-tail comparison, finite-small-r minimum.
- Output target: `E_win`, `p_win`.
- Rate objective: Window coverage objective; fixed-horizon per-slot
  probability with no confidence hidden in rank.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:random-initialization`: conditional on the once-drawn tensor, the
    raw vectors in a proposal slot are independent standard Gaussian vectors
    across the three modes; slots and full runs are mutually independent and
    independent of the smoothing draw.
- Derived invariants supplied by accepted dependencies:
  - `E_sm`, supplied by the accepted proof and review for `step_001`. On this
    static event, the realized factor columns are unit vectors and
    `q_real<=q_*`; it also supplies norm retention, `Gamma<=1.01`, and
    the cyclic Khatri-Rao floors, although this step uses only the unit-column
    convention and the Gram-row bound.
- Local conditional hypotheses:
  - In the regression and competitor-tail units only, the realized tensor is
    fixed in `E_sm`, a proof-only target `j` is fixed, and the three target raw
    coordinates are conditioned to take values in their declared windows.
    These conditions are integrated out in the final event probability and
    are not exported as theorem assumptions.
- Accepted dependency artifacts:
  - `perspective_1/idea_6/proof_steps/step_001/proof.md`, unit attempt 1,
    `Step Proof Status = COMPLETE`.
  - `perspective_1/idea_6/proof_steps/step_001/review.md`, which records the
    frozen reviewed-proof SHA-256
    `4313048f58f570d9427ed2f59c3962b113c076e5a9381592de4e7e77e23e3458`,
    for the dependency proof SHA-256
    `83ce9b561ae357ace3afd0f3be937b154643ab0b4b008b14bd16a6aabf7b9764`,
    `Step-Review Status = ACCEPTED`.

No trajectory membership, target-chart condition, coverage event, or
independence between different target labels is assumed here.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:random-initialization} and the accepted event `E_sm`, conditioning one realized-mode proposal coordinate on its target value gives an exact Gaussian regression whose competitor means are Gram leakage times that value and whose coordinate variances are at most one; the three conditional mode vectors remain independent. | Supplies the exact static realized-Gram/leakage source for all competitor estimates. |
| `unit_002` | lemma | Under Assumption~\ref{assump:random-initialization}, for every fixed realized unit target column, one target absolute coordinate lies in `[t_r,t_r+t_r^(-1)]` with probability between explicit universal multiples of `r^(-5/9)(log r)^(-1/2)`; the three-mode target event has rate `r^(-5/3)(log r)^(-3/2)`. | Produces the entire polynomial and logarithmic rate. |
| `unit_003` | lemma | Under the regression conclusion of Lemma~\ref{lem:step-002-regression}, if the three target coordinates lie in their windows, then each conditional competing pair violates the threshold `b_* log r` with probability at most `r^(-beta_*)`, where the displayed universal `beta_*>1.053`. | Gives an exponent strictly larger than one for the finite competitor union. |
| `unit_004` | proposition | Under Assumption~\ref{assump:random-initialization}, the accepted event `E_sm`, and the target-window condition, all `3(r-1)` competitor pair inequalities hold with conditional probability at least a universal `c_comp>0`; the large-r union and finite-small-r minimum are both explicit. | Proves that competitor control does not change the target-window order. |
| `unit_005` | proposition | Under Assumption~\ref{assump:random-initialization} and the accepted event `E_sm`, for every slot and target the event `E_win` has the required two-sided probability, and on it the exact initialization obeys `R_0<=19/20` and `S_0<=rR_0`. | Packages `E_win,p_win` and proves the same-target transfer consumed downstream. |

Atomic step = no. Conditional regression, target-window mass, shifted
product tails, the uniform competitor-survival bridge, and transfer to the
trajectory ratios are independent nontrivial claims.

## Cited Result Applications

1. **Accepted dependency: Realized smoothing event.**
   The accepted `step_001` proof and review (SHA-256 values
   `83ce9b561ae357ace3afd0f3be937b154643ab0b4b008b14bd16a6aabf7b9764` and
   `4313048f58f570d9427ed2f59c3962b113c076e5a9381592de4e7e77e23e3458`)
   establish, in the current setting notation, that on one event
   `E_sm` of smoothing probability at least `1-delta_sm`, every `G_M` has unit
   columns and
   \[
      q(G_M)\le q_*,\qquad M\in\{U,V,W\}.                 \tag{1}
   \]
   It also gives the advertised norm, weight, and Khatri-Rao conclusions.
   The dependency review accepts this exact artifact. In the present step,
   (1) is instantiated with `H_M=G_M^T G_M`, so
   `|(H_M)_(ell j)|<=q_*` for every `ell!=j`. The proposal vectors used here
   are sampled only after the tensor is fixed, as required by
   Assumption~\ref{assump:random-initialization}.

2. **Gaussian regression formula.**
   If `(X,Y)` is a jointly centered Gaussian vector, `X` is scalar with
   `Var(X)=1`, `Cov(Y,X)=h`, and `Cov(Y)=K`, then a regular conditional law is
   \[
      Y\mid\{X=x\}=hx+\varepsilon,\qquad
      \varepsilon\sim N(0,K-hh^T).                                  \tag{2}
   \]
   The residual is independent of `X`. Formula (2) follows by checking the
   covariance of `Y-hX` with `X`; joint Gaussianity turns zero covariance
   into independence. It remains valid for singular covariance matrices.
   Lemma~\ref{lem:step-002-regression} applies it to
   `Z^(M)=G_M^T xi^(M)` with `X=Z_j^(M)`.

3. **Two-dimensional Gaussian radial tail.**
   For independent standard normals `G,H` and `u>=0`,
   \[
      Pr\{G^2+H^2>u^2\}=\exp(-u^2/2).                                \tag{3}
   \]
   This is the radial integral of the standard two-dimensional Gaussian
   density. Lemma~\ref{lem:step-002-pair-tail} combines (3) with
   `2|xy|<=x^2+y^2`. This is a direct Gaussian product-tail comparison: the
   usual dyadic product shells are all contained in the same radial tail, so
   the displayed bound incurs no dyadic discretization loss.

4. **Gaussian correlation (Sidak box inequality).**
   If `Y=(Y_1,...,Y_m)` is any centered Gaussian vector, possibly singular,
   and `d_i>=0`, then
   \[
      Pr\{|Y_i|\le d_i\ \hbox{for every }i\}
      \ge \prod_{i=1}^m Pr\{|Y_i|\le d_i\}.                          \tag{4}
   \]
   This is the Gaussian correlation inequality applied successively to the
   symmetric slabs; the singular case follows by adding independent
   variance and taking a limit. If `Var(Y_i)<=1`, each factor in (4) is at
   least `Pr{|G|<=d_i}` for a standard normal `G`. Proposition~\ref{prop:step-002-competitor-survival}
   applies (4) separately to the three conditional mode-residual vectors.

No result from a prior idea branch, proof history, or paper is used.

## Local Derivation

### unit_001: lemma

**Lemma (Realized-Gram Gaussian regression).**
\label{lem:step-002-regression}
Under Assumption~\ref{assump:random-initialization} and the accepted derived
event `E_sm`, fix the realized tensor, one proposal slot, one proof-only
target `j`, and a mode `M in {U,V,W}`. Let
\[
 H_M:=G_M^T G_M,
 \qquad Z^{(M)}:=G_M^T\xi^{(M)},
 \qquad h_{M,j}:=(H_M)_{-j,j}.
\]
Conditionally on `Z_j^(M)=x`,
\[
 Z_{-j}^{(M)}=h_{M,j}x+Y_{M,j},\qquad
 Y_{M,j}\sim N\!\left(0,
 (H_M)_{-j,-j}-h_{M,j}h_{M,j}^T\right).                              \tag{5}
\]
Every coordinate of `Y_(M,j)` has variance at most one. If
`|x|<=t_r+t_r^(-1)`, then for every `ell!=j`,
\[
 \left|E[Z_\ell^{(M)}\mid Z_j^{(M)}=x]\right|
 \le m_r:=q_*\bigl(t_r+t_r^{-1}\bigr).                              \tag{6}
\]
After conditioning on the three target coordinates, the three residual
vectors `Y_(U,j),Y_(V,j),Y_(W,j)` remain mutually independent.

**Proof / justification.**
The realized columns are unit vectors, so
`Z^(M)` is centered Gaussian with covariance `H_M` and
`(H_M)_(jj)=1`. Formula (5) is therefore the checked regression formula (2).
Its `ell`th residual variance is
`1-(H_M)_(ell j)^2<=1`. On `E_sm`, (1) gives
`|(H_M)_(ell j)|<=q_*`; multiplying by the target-window upper endpoint
proves (6).

The raw vectors in distinct modes are independent by
Assumption~\ref{assump:random-initialization}. Each conditioning event and
each regression residual is measurable inside its own mode. Hence
conditioning on the three target coordinates preserves independence of the
three mode-residual vectors. No independence across competitor labels within
one mode is claimed or needed. \(\square\)

### unit_002: lemma

**Lemma (Exact three-target window mass).**
\label{lem:step-002-target-window}
Under Assumption~\ref{assump:random-initialization}, fix the realized unit
target columns `u_j,v_j,w_j` and put
\[
 a_*={10\over9},\qquad t_r=\sqrt{a_*\log r}.
\]
For one mode and `G~N(0,1)`, let
`p_t(r)=Pr{t_r<=|G|<=t_r+t_r^(-1)}`. Define
\[
 C_1:=\sqrt{2\over\pi a_*},\qquad
 c_1:=C_1\exp\!\left(-1-{1\over2a_*\log3}\right).                   \tag{7}
\]
Then, for every `r>=3`,
\[
 c_1 r^{-5/9}(\log r)^{-1/2}
 \le p_t(r)\le
 C_1 r^{-5/9}(\log r)^{-1/2}.                                       \tag{8}
\]
Consequently the three-mode target event
\[
 {\cal A}_{i,j}:=
 \bigcap_{M\in\{U,V,W\}}
 \{t_r\le |Z_{ij}^{(M)}|\le t_r+t_r^{-1}\}                          \tag{9}
\]
has conditional-on-the-realized-tensor probability satisfying
\[
 c_1^3 r^{-5/3}(\log r)^{-3/2}
 \le Pr({\cal A}_{i,j}\mid T)\le
 C_1^3 r^{-5/3}(\log r)^{-3/2}.                                     \tag{10}
\]

**Proof / justification.**
For the standard normal density `phi`, monotonicity on the positive half-line
gives
\[
 {2\over t_r}\phi(t_r+t_r^{-1})
 \le p_t(r)\le {2\over t_r}\phi(t_r).                               \tag{11}
\]
Since
\[
 {1\over2}(t_r+t_r^{-1})^2
 ={a_*\log r\over2}+1+{1\over2a_*\log r},                           \tag{12}
\]
equations (11)-(12), `r>=3`, and `a_*/2=5/9` give (8) with the constants in
(7). Each target coordinate is standard normal because its realized factor
column is unit. The three coordinates are independent across modes by
Assumption~\ref{assump:random-initialization}; cubing (8) proves (10), and
`3a_*/2=5/3` gives the displayed polynomial exponent. \(\square\)

### unit_003: lemma

**Lemma (Shifted Gaussian competitor-product tail).**
\label{lem:step-002-pair-tail}
Under Assumption~\ref{assump:random-initialization}, the accepted event
`E_sm`, and Lemma~\ref{lem:step-002-regression}, condition on target values
`x_U,x_V,x_W` satisfying the three windows in (9). For every competitor
`ell!=j` and every unordered pair of distinct modes `{M,N}`, 
\[
 Pr\!\left\{
 |Z_{i\ell}^{(M)}Z_{i\ell}^{(N)}|>b_*\log r
 \ \middle|\ Z_{ij}^{(L)}=x_L,\ L=U,V,W,T
 \right\}\le r^{-\beta_*},                                         \tag{13}
\]
where
\[
 b_*={19\over18},\qquad
 \beta_*:=\left[
 \sqrt{b_*}-q_*\left(\sqrt{a_*}
       +{1\over\sqrt{a_*}\log3}\right)
 \right]^2>1.053.                                                     \tag{14}
\]

**Proof / justification.**
By Lemma~\ref{lem:step-002-regression}, the two competitor coordinates in
(13) can be represented as
\[
 X=\mu+\sigma G,\qquad Y=\nu+\tau H,                                 \tag{15}
\]
where `G,H` are independent standard normals,
`0<=sigma,tau<=1`, and `|mu|,|nu|<=m_r`. Put `B_r=b_* log r`. If
`|XY|>B_r`, then
\[
 \sqrt{X^2+Y^2}>\sqrt{2B_r}.
\]
The triangle inequality and (15) then imply
\[
 \sqrt{G^2+H^2}
 \ge \sqrt{(\sigma G)^2+(\tau H)^2}
 >\sqrt2\bigl(\sqrt{B_r}-m_r\bigr).                                 \tag{16}
\]
The bracket is positive by the numerical check below. The radial tail (3)
and the setting identity `t_r=sqrt(a_* log r)` give
\[
\begin{aligned}
 Pr\{|XY|>B_r\mid x_U,x_V,x_W,T\}
 &\le \exp\{-(\sqrt{B_r}-m_r)^2\}\\
 &=r^{-\beta_r},\\
 \beta_r
 &:=\left[\sqrt{b_*}-q_*\left(\sqrt{a_*}
       +{1\over\sqrt{a_*}\log r}\right)\right]^2
 \ge\beta_* .                                                       \tag{17}
\end{aligned}
\]

For a certified numerical lower bound, use
`sqrt(19/18)>1.027`, `sqrt(10/9)<1.055`, and
`1/log3<0.911`. Thus the bracket in (14) is larger than
\[
 1.027-{1.055+0.911\over4096}>1.0265,
\]
whose square exceeds `1.053`. This proves both positivity in (16) and
(13). The argument uses no independence across `ell` or across the three
mode pairs. \(\square\)

### unit_004: proposition

**Proposition (Uniform competitor-pair survival).**
\label{prop:step-002-competitor-survival}
Under Assumption~\ref{assump:random-initialization}, the accepted event
`E_sm`, and Lemmas~\ref{lem:step-002-regression} and
\ref{lem:step-002-pair-tail}, condition on any three target values in (9).
Define the competitor event
\[
 {\cal C}_{i,j}:=
 \bigcap_{\ell\ne j}\ 
 \bigcap_{\{M,N\}\subset\{U,V,W\}}
 \{|Z_{i\ell}^{(M)}Z_{i\ell}^{(N)}|\le b_*\log r\}.                 \tag{18}
\]
There is a universal constant `c_comp>0`, depending only on the fixed
numbers `q_*,a_*,b_*`, such that, uniformly over `r>=3`, the fixed tensor,
the target, and its conditioned window values,
\[
 Pr({\cal C}_{i,j}\mid Z_{ij}^{(M)}=x_M, M=U,V,W,T)
 \ge c_{\rm comp}.                                                    \tag{19}
\]

**Proof / justification.**
First define the universal exponent `beta_*` in (14) and the finite cutoff
\[
 r_*:=\left\lceil6^{1/(\beta_*-1)}\right\rceil.                      \tag{20}
\]
For `r>=r_*`, Lemma~\ref{lem:step-002-pair-tail} and a union bound over the
`3(r-1)` competitor pairs give
\[
 Pr({\cal C}_{i,j}^c\mid x_U,x_V,x_W,T)
 \le3(r-1)r^{-\beta_*}
 \le3r^{1-\beta_*}\le{1\over2}.                                    \tag{21}
\]
No independence among those events is used.

It remains to make the lower constant uniform over the finite range
`3<=r<r_*`. Put
\[
 d_r:=\sqrt{b_*\log r}-q_*(t_r+t_r^{-1})
 =\sqrt{\log r}\left[
 \sqrt{b_*}-q_*\left(\sqrt{a_*}
 +{1\over\sqrt{a_*}\log r}\right)\right]>0.                        \tag{22}
\]
For one mode, (5) writes every shifted competitor as its conditional mean,
of magnitude at most `m_r`, plus the centered residual vector `Y_(M,j)`.
If all residual coordinates in all three modes have magnitude at most
`d_r`, then every competitor coordinate has magnitude at most
`d_r+m_r=sqrt(b_* log r)`, and therefore every product in (18) is at most
`b_* log r`.

Each coordinate variance of `Y_(M,j)` is at most one. Applying the checked
Sidak inequality (4) in each mode and then using conditional independence
across modes yields
\[
 Pr({\cal C}_{i,j}\mid x_U,x_V,x_W,T)
 \ge \left[Pr\{|G|\le d_r\}\right]^{3(r-1)},                         \tag{23}
\]
where `G` is standard normal. Define the literal finite-small-r minimum
\[
 c_{\rm box}:=
 \min_{3\le s<r_*}
 \left[Pr\{|G|\le d_s\}\right]^{3(s-1)}>0,
 \qquad
 c_{\rm comp}:=\min\left\{{1\over2},c_{\rm box}\right\}.           \tag{24}
\]
The index set is finite, and each `d_s` is strictly positive by (22), so the
strict positivity in (24) is proved rather than assumed. Equations (21) and
(23)-(24) prove (19) in both ranges. The cutoff and the minimum are proof
constants only; they do not enter the rank, procedure, or runtime. \(\square\)

### unit_005: proposition

**Proposition (Three-mode proposal window and ratio transfer).**
\label{prop:step-002-window}
Under Assumption~\ref{assump:random-initialization} and the accepted derived
event `E_sm`, for slot `i` and target `j` define the raw-coordinate event
\[
 E_{\rm win}(i,j):={\cal A}_{i,j}\cap{\cal C}_{i,j},                 \tag{25}
\]
with (9) and (18), and define
\[
 p_{{\rm win},j}(T):=Pr(E_{\rm win}(i,j)\mid T),
 \qquad p_{\rm win}(T):=\min_{j\in[r]}p_{{\rm win},j}(T).            \tag{26}
\]
The event is measurable from the fixed realized factors and the raw proposal
triple. The target label in (25) is proof-only and is not supplied to the
algorithm. With
\[
 c_{\rm all}:=c_{\rm comp}c_1^3>0,
 \qquad C_{\rm win}:=C_1^3<\infty,                                  \tag{27}
\]
every target, and hence also the lower envelope in (26), satisfies
\[
 c_{\rm all}r^{-5/3}(\log r)^{-3/2}
 \le p_{{\rm win},j}(T)
 \le C_{\rm win}r^{-5/3}(\log r)^{-3/2},
 \qquad
 c_{\rm all}r^{-5/3}(\log r)^{-3/2}
 \le p_{\rm win}(T)
 \le C_{\rm win}r^{-5/3}(\log r)^{-3/2}.                            \tag{28}
\]
Moreover, on `E_win(i,j)`, the initialized target ratios in the setting obey
\[
 R_j(h_i^0)\le {b_*\over a_*}={19\over20},
 \qquad S_j(h_i^0)\le(r-1)R_j(h_i^0)\le rR_j(h_i^0).                 \tag{29}
\]

**Proof / justification.**
Condition on the target values inside `A_(i,j)`. Proposition~\ref{prop:step-002-competitor-survival}
gives conditional probability at least `c_comp` for `C_(i,j)`, uniformly at
every such value. Integrating this conditional lower bound and using
Lemma~\ref{lem:step-002-target-window} gives
\[
 Pr(E_{\rm win}(i,j)\mid T)
 \ge c_{\rm comp}Pr({\cal A}_{i,j}\mid T)
 \ge c_{\rm all}r^{-5/3}(\log r)^{-3/2}.                             \tag{30}
\]
The inclusion `E_win(i,j) subset A_(i,j)` and the upper half of (10) give the
upper bound. These bounds hold for every `j`, so they also hold for their
minimum in (26).

For the deterministic transfer, normalization of each raw proposal vector
cancels from every same-mode ratio. Thus, for example,
\[
 A_{\ell\mid j}(p_i^0)B_{\ell\mid j}(q_i^0)
 ={ |Z_{i\ell}^{(U)}Z_{i\ell}^{(V)}|
    \over |Z_{ij}^{(U)}Z_{ij}^{(V)}|}
 \le {b_*\log r\over t_r^2}={b_*\over a_*}={19\over20}.              \tag{31}
\]
The same argument applies to the `U,W` and `V,W` pairs. Taking their maximum
proves the first inequality in (29); summing at most `r-1` terms proves the
second. The target denominators are nonzero because `t_r>0`.  In addition,
the accepted `E_sm` bound `Gamma<=1.01` gives the initial small-gain margin
needed by the next recurrence step:
\[
  1-\Gamma q_{\rm real}R_j(h_i^0)
  \ge 1-(1.01)(q_*){19\over20}
  >1-q_*={4095\over4096}>{31\over32}.
\tag{32}
\]
This is an exported consequence of the window event, not an extra
admissibility condition. \(\square\)

## Target-Step Assembly

The accepted `step_001` event `E_sm` supplies the
fixed realized unit-column and Gram-row interface before proposal randomness
is drawn. Lemma~\ref{lem:step-002-regression} converts exactly that interface,
without a population or surrogate factor, into conditional competitor means
bounded by `q_*(t_r+t_r^(-1))` and coordinate variances at most one.
Lemma~\ref{lem:step-002-target-window} proves that the three independent
target coordinates contribute precisely
`Theta(r^(-5/3)(log r)^(-3/2))`.

Lemma~\ref{lem:step-002-pair-tail} proves a uniform shifted-product exponent
`beta_*>1`, and Proposition~\ref{prop:step-002-competitor-survival} combines
the large-r finite union with the literal finite-small-r minimum to retain a
universal positive fraction of the target-window mass. Proposition~\ref{prop:step-002-window}
therefore proves the exact two-sided sketch-row rate and exports `E_win` and
the uniform per-target lower envelope `p_win`. Its deterministic coordinate
identity also proves the downstream same-target interface
`R_0<=19/20,S_0<=rR_0`. No cross-target independence, trajectory condition,
confidence-dependent rank choice, or later coverage event enters this step.

## Explicit Rate Audit

- Exposed variables: `r` and the per-slot probability; the setting constants
  `q_*=1/4096`, `a_*=10/9`, and `b_*=19/18` are displayed. The target-window
  level is `t_r=sqrt(a_* log r)`.
- Hidden constants may depend on: only the fixed numerical values
  `q_*,a_*,b_*` and the standard Gaussian law. Explicit valid choices are
  `c_all=c_comp c_1^3` and `C_win=C_1^3`, with every constituent defined in
  (7), (14), and (20)-(24).
- Hidden constants may not depend on: `n,r,k,kappa_0,rho`, the deterministic
  base triple, the realized tensor inside `E_sm`, the target or slot,
  `delta_sm,delta_init,epsilon`, proposal horizons, or later generated
  condition numbers.
- Fixed quantities: the realized tensor and target are fixed when the
  conditional proposal probability is taken; `q_*,a_*,b_*` are the setting's
  universal constants.
- Probability mode: conditional on any once-drawn realized tensor in `E_sm`,
  over one proposal slot. The result is uniform in the target. It is neither
  a smoothing-probability statement nor a union over slots or targets.
- Horizon mode: static, one-slot initialization before the first Jacobi
  commit. There is no time accumulation.
- Norm mode: scalar absolute raw coordinates, realized Gram absolute row
  `l1` leakage for regression means, competitor pair products, and the
  setting's target-relative pair ratios `R_j,S_j`.
- Admissibility conditions and auxiliary tolerances: exactly `r>=3`,
  Assumption~\ref{assump:random-initialization}, and the accepted derived
  event `E_sm`. There is no auxiliary confidence or approximation tolerance.
- Term absorption or simplification inequalities: the one-mode window
  exponent is `a_*/2=5/9`, so three modes give `3a_*/2=5/3`. The shifted
  product comparison gives
  \[
    Pr\{|XY|>b_*\log r\}\le r^{-\beta_*},\qquad \beta_*>1.053,
  \]
  and for `r>=r_*`,
  `3(r-1)r^(-beta_*)<=1/2`. The remaining finite range is controlled by the
  explicit positive minimum (24); no term is dropped as lower order.
- Probability conversion: target coordinates are independent only across
  modes. Conditional competitor coordinates may be correlated across labels;
  the proof uses a union bound at large `r` and the Gaussian box inequality
  at finite `r`, neither of which assumes label independence. The uniform
  conditional competitor lower bound is integrated over the exact target
  window in (30).
- Contribution to any Rate Specialization Bridge: `p_win` is the uniform
  input for `step_003`; multiplying its lower bound by
  `k=Theta(r^(5/3)(log r)^(5/2))` will yield order `log r` without inserting
  either confidence parameter into `k`.
- Baseline-reduction check: at the deterministic orthogonal equal-weight
  specialization, every off-target regression mean is zero. The product-tail
  exponent improves from `beta_*` to `b_*=19/18>1`, while the exact target
  window mass and the transfer `R_0<=19/20,S_0<=rR_0` are unchanged. This
  step introduces no positive residual floor. This is the deterministic
  zero-smoothing limiting specialization used by the setting's baseline
  obligation; it is not an additional value of the primitive `rho>0`
  probability domain.

## Blockers

None.

## Notation And Assumption Notes

- `H_M=G_M^T G_M` is an `appendix-local` translation of the exact realized
  Gram supplied by accepted `E_sm`; it is not a new boundedness assumption.
- `Z^(M)` and its indexed versions are setting-defined raw proposal
  coordinates. Suppressing the slot index inside regression calculations is
  `proof-local` only.
- `h_(M,j)` and `Y_(M,j)` are `proof-local` regression objects derived in
  Lemma~\ref{lem:step-002-regression}. Their covariance and variance bounds
  are proved there from the accepted Gram source.
- `m_r`, `B_r`, `beta_r`, `beta_*`, `d_r`, and `r_*` are `appendix-local`
  expressions defined directly from `r,q_*,a_*,b_*`. Their positivity,
  exponent bound, and cutoff relation are proved in
  Lemma~\ref{lem:step-002-pair-tail} and
  Proposition~\ref{prop:step-002-competitor-survival}.
- `c_1,C_1,c_box,c_comp,c_all,C_win` are `appendix-local` comparison
  constants except that `c_all,C_win` form the minimal `public-facing` rate
  interface. Their provenance is the exact Gaussian integral, the finite
  minimum (24), and the displayed products; none is freely chosen.
- `A_(i,j)` and `C_(i,j)` are `proof-local` pieces of the single
  `public-facing` event `E_win(i,j)`. The family `E_win` and the uniform lower
  envelope `p_win` are the only generated outputs exported to `step_003`.
- The initial denominator margin (32) is a `public-facing` derived
  consequence attached to `E_win` for the next recurrence step; it follows
  from the exported `R_0` bound and the accepted `Gamma,q_real` bounds and is
  not an added primitive condition.
- Conditioning on target coordinates is used only inside local conditional
  lemmas and is integrated in Proposition~\ref{prop:step-002-window}.
  Membership in `E_sm` is the accepted dependency invariant. `E_win`, its
  probability bounds, and the `R_0,S_0` transfer are proved in this step; no
  other generated event or local-validity condition is assumed.
- The accepted `global_proof.md` was read only after verifying that its paired
  `global_proof_review.md` has status `ACCEPTED`. Its step-relevant diagnostic
  suggestion to use conditional Gaussian regression, a product-tail exponent
  above one, and a finite-small-r bridge guided the decomposition. Every such
  statement was independently derived above; the global diagnostic was not
  used as evidence, a cited result, an assumption source, or authority to
  change the target claim.
