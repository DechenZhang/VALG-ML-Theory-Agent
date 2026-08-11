# Proof Sketch

## Formalized Setting

This is proof-sketch attempt 8 for `perspective_1/idea_5`, rerun in
`revise_sketch` mode after `proof_history/sketch_014/proof_sketch_review.md`.
The formalized setting is `perspective_1/idea_5/setting.md`; all primitive
assumptions are cited below by their stable ids.  The tensor is

\[
 T=\sum_{j=1}^r \lambda_j u_j\otimes v_j\otimes w_j,
\]

with normalized realized factors and `q_real` and `Gamma` as defined there.
Write `lambda_min:=min_j lambda_j` and `lambda_max:=max_j lambda_j`, so
`lambda_max/lambda_min=Gamma<=1.01` on `E_sm`.
SC-JEP-ALS uses simultaneous old-state Jacobi contractions for `k = U(r)`
proposal slots, stores a state only after the observable projective residual
`zeta` is at most `tau_r`, and carries that stored state itself into active
cyclic CP-ALS.  The remaining `k-r` columns are identically zero and are
never updated.

The primitive assumptions are `assump:base-scale`,
`assump:cumulative-gram`, `assump:base-weight-balance`,
`assump:gaussian-smoothing`, `assump:smoothing-margin`,
`assump:subquadratic-rank`, `assump:random-initialization`, and
`assump:accuracy-confidence`.  Realized geometry, coverage, trajectory
membership, certification, clustering, coefficient masses, basin membership,
and convergence are derived outputs, not assumptions.

## Formalized Goal

In exact-goal mode, uniformly over every deterministic base triple satisfying
the first three primitive base assumptions and every parameter choice
satisfying the remaining assumptions, prove the following nested statement.

1. With probability at least `1-delta_sm` over the once-drawn smoothed
   instance, all realized columns have norm at least `(2 kappa_0)^(-1)`,
   `q_real <= q_*`, `Gamma <= 1.01`, and every cyclic Khatri-Rao Gram has
   smallest eigenvalue at least `1-q_*^2`.  The proof keeps the linear,
   quadratic, and normalization perturbations separate at the scales stated
   in `setting.md`, including row-sum and union factors.
2. Conditional on such an instance, each proposal target has a jointly
   observable three-mode Gaussian window event of probability
   `Theta(r^(-5/3) (log r)^(-3/2))`.  With
   `k = ceil(C_rank r^(5/3) (log r)^(5/2))`, one full run has a universal
   positive probability of covering all targets, certifying them, and
   producing exactly one observable cluster per target.
3. The selected, balanced active initialization lies in a quantitative local
   quotient-ALS basin.  Active cyclic CP-ALS contracts to relative Frobenius
   error `epsilon` in `O(log(1/epsilon))` sweeps.  Independent full-run
   restarts give conditional success probability at least `1-delta_init`
   with polynomial total runtime and without changing `U(r)`.

At the orthogonal equal-weight specialization `q_real=0, Gamma=1`, the
simultaneous map is exactly `(A+,B+,C+)=(BC,AC,AB)`, so `R+ <= R^2` and
`S+ <= R S`; an exact projective fixed point has zero certificate residual,
the exact CP representation is retained, and the final residual tends to
zero as `epsilon` tends to zero.

The primitive theorem domain keeps `rho>0` as required by
`assump:gaussian-smoothing`.  The phrase `rho=0` below is an explicit
deterministic limiting specialization used only for the Baseline Invariance
Obligation: set every perturbation to zero, evaluate the same algebraic map,
and then take the exact stationary representative.  It is not an additional
probability assumption or a replacement of the positive-smoothing theorem.

## Sketch Identity

- Sketch attempt: 8
- Retry mode: revise_sketch
- Triggering review: `proof_history/sketch_014/proof_sketch_review.md`
- Progress type: `conditional`
- Target rank: `U(r) = Theta(r^(5/3) (log r)^(5/2))`, so beta equals `2/3`
- Baseline obligation: preserve the exact orthogonal equal-weight map and
  zero-residual limit; a finite certification residual is allowed only as an
  intermediate error and is not substituted for the baseline conclusion.
- Attempt-8 repair summary: every certified slot now receives a global
  no-label `E_cert_tail` ledger from the raw same-state equation.  The ledger
  fixes `vartheta=1/8`, normalizes weights by `lambda_min`, and expands the
  actual coefficient-vector pair
  `(H_{M'}c_{M'})circ(H_{M''}c_{M''})`.  Cauchy-Schwarz and
  `||H_M-I||_2<=q_*` give the two first-order and cross-term budget
  `eta_G=2q_*+q_*^2`.  Coefficient norms are absorbed exactly into
  `hat alpha_M` (with `0.995<=s_M/(s_{M'}s_{M''})<=1.005`); after the
  first-order scalar cancellation, the remaining
  normalization reserve is `eta_N=5q_*^2`.  With the finite-support
  certificate charge `eta_C=2sqrt(r)tau_r`, set
  `eta_0=eta_G+eta_N+eta_C` and `eta_rel=8eta_0`.  The retained floor is still
  `vartheta_*>1/16`; the coefficient-scale denominator chain gives a product
  factor `104eta_0` while the mode-square cancellation preserves the
  normalized weighted profile error `144eta_0`.  The singleton tail remains
  `a_cert=7q_*+8tau_r`, while the independently summed multi-support score
  tail remains `16eta_0`.  The finite-dimensional conversion is charged once
  as `sqrt(r)tau_r=q_*^2/(10^4sqrt(r))`, so no hidden `r` or probability factor
  is introduced.  A low-score branch is rejected before support
  classification; high-score slots then satisfy the weighted
  singleton-versus-multi-support dichotomy, including threshold straddling.
  The weighted `E_support_wt` output consumes this global ledger, while the
  older `E_chart_l1` remains a covered-trajectory tightening only.
- Attempt-4 repair summary retained: the pair equations retain exact
  `diag(lambda)`, the unequal-weight two-support profile and score are checked,
  `E_support_wt` is named, and raw right-sided sign and barred post-score
  conventions are stated.  The attempt-8 coefficient-vector and
  denominator-aware bound is
  `lambda_max(1/sqrt(2)+160eta_0)`; its rerun gives
  `1.01s_mix<0.794<0.85s_-`, so the gap survives `Gamma<=1.01`.
- Attempt-3 repair summary retained: the classifier uses an l2/support-size
  alternative rather than a false two-coordinate dichotomy; `a_t` and an
  r-uniform ratio-l1 chart are explicit; right-side certificate signs and a
  product-preserving theta gauge are fixed; per-entry dual residual bounds
  prevent an `r^2 tau_r` row charge; and the quotient norm uses relative
  amplitudes so `C_best` is kappa-independent.
- Attempt-2 repair summary retained: a pre-cluster per-state oriented certificate
  equation is produced before support classification; `E_chart` is separated
  from selected coefficient error; all-certified-state support/score margins,
  the small-root column bootstrap, dual residual row/column conversion,
  product-preserving signs, numerical best-scalar/tube constants, exact active
  rank-r reduction, and the rho-zero baseline specialization are exported.

## Proof Roadmap

The selected framework is the same-state projective normal-equation and
spatial row/column small-gain framework in
`perspective_1/idea_5/technical_survey.md`.  The dynamic order is:

`primitive smoothing -> realized geometry -> Gaussian window and coverage ->
simultaneous ratio contraction/chart -> pre-cluster oriented certificate ->
global all-certified tail ledger -> weighted support/score graph classification -> selected
same-state coefficient bridge -> best-scalar transfer -> quotient basin ->
cyclic ALS -> restart and rate specialization`.

The crucial repair relative to `idea_4` is local to the selected-state
interface.  For a certified state, `K_M^raw`, `D_M`, and `P_M^raw` are all computed
from the same state.  Before score orientation, retain the column-sign
diagonal on the right and bind the convention as

\[
 P_M^{\rm raw} D_M = G_M K_M^{\rm raw}\Sigma_M + R_M^{\rm raw},
 \qquad
 \Sigma_M=\operatorname{diag}(\varepsilon_{M,a}),
 \qquad
 \|R_M^{\rm raw}(:,a)\|_2\le D_M(a,a)\tau_r .
\]

Here `K_M^{raw}` is
`diag(lambda)((G_{M'}^T P_{M'}^raw) circ (G_{M''}^T P_{M''}^raw))`, and `Sigma_M`
acts columnwise on the right.  After
the positive-score/product-preserving orientation, redefine all pair matrices
from the oriented columns and write the binding post-score equation

\[
 \bar P_M D_M=G_M\bar K_M+\bar R_M,
 \qquad
 \|\bar R_M(:,a)\|_2\le D_M(a,a)\tau_r .
\]

Binding convention for the symbols shared with `setting.md` is the following:
the setting-level `P,Q,S,K,D,theta` remain the raw algorithm objects defined
there and are never rebound.  In this sketch write
`P_M^raw:=P_M`, `K_M^raw:=K_M`, and `R_M^raw` for the corresponding signed
certificate residual.  The proof-only oriented copies `bar P_M,bar K_M,bar R_M`
are obtained after score filtering and product-preserving sign absorption;
`D_M` is unchanged by that orientation.  The raw observable score is `theta`,
the initialized z column keeps its setting-level sign, and only the proof-only
scalar `bar theta=abs(theta)` is used by coefficient, row/column, and
best-scalar claims.  No downstream proof step silently replaces a setting
object by a barred copy, and no pre-update pair matrix is introduced.

The shared notation contract is summarized here so every later consumer uses
one object identity:

| stage | direction matrix | pair matrix | sign placement | residual | scalar |
| --- | --- | --- | --- | --- | --- |
| raw certificate | `P_M^raw` | `K_M^raw=diag(lambda)(...)` | right-side `Sigma_M` | `R_M^raw` | `theta` |
| post-score proof state | `bar P_M` | `bar K_M=diag(lambda)(...)` | absorbed into columns | `bar R_M` | `bar theta=abs(theta)` |
| setting algorithm state | `P_M=P_M^raw` | `K_M=K_M^raw` | raw `Sigma_M` is exposed in the certificate | `R_M^raw` | `theta` |

The barred row is a proof-only representation of the same initialized rank-one
terms; it is not a second update or a look-ahead state.

The setting's normalized residual symbol `\mathcal R_M` is the signed residual
after its columnwise certificate-sign choice.  Expanding that choice before
absorption gives the displayed right-sided `Sigma_M` equation; absorbing it
into the proof-only bars gives the equation consumed by `step_006`.

No post-update pair matrix is paired with pre-update coefficients.  The finite
orthogonal transient therefore remains in `R_M^{raw}` (or `bar R_M` after
orientation); only a genuinely stationary state has zero residual.  The
pre-cluster producer is called `step_004b` below and
has no target label or clustering input.  The trajectory chart exports the
ratio-l1 variable `a_t`, while the selected-state bridge uses the separate
dual coefficient mass `chi`.

## Rate Objectives

1. **Smoothed-instance geometry.**
   - Objective type: fixed-time, confidence-explicit, and
     structural-parameter explicit.
   - Exposed variables: `n, r, kappa_0, rho, delta_sm` and the fixed
     exponents `d_kappa, d_rho`.
   - Hidden constants may depend on: universal Gaussian constants and the
     declared finite regime exponents only.
   - Hidden constants may not depend on: the base triple, an unlisted
     condition number, the realized perturbations, `delta_init`, or `epsilon`.
   - Fixed quantities: `q_*=1/4096`, `a_*=10/9`, `b_*=19/18`.
   - Probability mode: one high-probability event over the once-drawn
     smoothed instance.
   - Horizon mode: static, before proposal randomness is sampled.
   - Norm mode: Euclidean column norm, normalized Gram row/column l1 mass,
     weight ratio, and Khatri-Rao spectral norm.
   - Required bridge or simplification obligations: separately dominate the
     linear directional, quadratic, and normalization terms using
     `assump:smoothing-margin`, then apply the finite union bound and Schur
     product spectral comparison.
   - Baseline invariance obligations: the zero-interference orthogonal event
     is retained as `q_real=0, Gamma=1`.

2. **Window coverage and proposal certification.**
   - Objective type: fixed-horizon, confidence-explicit, and
     structural-parameter explicit.
   - Exposed variables: `r, k, q_real, Gamma, tau_r, L_burn, L_cert`.
   - Hidden constants may depend on: universal tail, regression, and coupon
     constants after `q_*`, `a_*`, and `b_*` are fixed.
   - Hidden constants may not depend on: the base triple, `n`, `rho`,
     `epsilon`, or either confidence parameter.
   - Fixed quantities: `tau_r=q_*^2/(10^4 r)` and the two `O(log r)` horizons.
   - Probability mode: deterministic trajectory conclusions conditional on the
     instance and a positive one-run window-coverage event; restarts are
     handled separately.
   - Horizon mode: all proposal states in the declared finite window.
   - Norm mode: target-relative coordinate ratios, projective Euclidean
     residual, and induced coefficient l1 masses.
   - Required bridge or simplification obligations: prove the two-sided
     window probability, the pair-tail union, chart contraction, and
     `zeta <= tau_r` before the stored state is exported.
   - Baseline invariance obligations: at `q=0`, simultaneous squaring and the
     exact stationary state remain available.

3. **Selected-state bridge and local refinement.**
   - Objective type: structural-parameter explicit, regularity-explicit,
     numerical-error explicit, and horizon-uniform after entry.
   - Exposed variables: `n, r, k, kappa_0, rho^(-1), epsilon`.
   - Hidden constants may depend on: universal numerical constants, `q_*`, and
     the fixed weight ratio bound; the quotient target constants do not depend
     on `kappa_0`.  Raw arithmetic/runtime bounds expose polynomial
     `kappa_0` dependence separately and do not hide a generated condition
     number.
   - Fixed quantities: `q_*`, the target chart thresholds, relative amplitude
     coordinates, and the quotient tube radius selected in `step_008`.
   - Probability mode: deterministic conditional on the good instance and
     the one-run coverage event, followed by conditional restart amplification.
   - Horizon mode: all active ALS sweeps after basin entry.
   - Norm mode: quotient direction norm, relative amplitude norm, row and
     column l1 mass, and relative Frobenius residual.
   - Required bridge or simplification obligations: retain the full residual
     decomposition, prove the row and column small-gain inequalities with
     `r tau_r`, verify the exact Khatri-Rao inverse branch, and state the
     auxiliary stopping choice and probability conversion.
   - Baseline invariance obligations: the exact CP point is a fixed point of
     active cyclic ALS and has no error floor.

4. **Runtime and confidence specialization.**
   - Objective type: confidence-explicit and numerical-error explicit.
   - Exposed variables: `n,r,k,kappa_0,rho^(-1),epsilon,delta_init`.
   - Hidden constants may depend on: universal implementation constants and
     the finite regime exponents only.
   - Hidden constants may not depend on: either confidence parameter or an
     unlisted trajectory condition number.
   - Fixed quantities: proposal constants and the active rank `r`.
   - Probability mode: `Pr(E_sm) >= 1-delta_sm` and, conditional on `E_sm`,
     `Pr(success) >= 1-delta_init`.
   - Horizon mode: first residual-hitting time plus `J` independent restarts.
   - Norm mode: relative Frobenius norm.
   - Required bridge or simplification obligations: choose `m` active sweeps
     from the proven contraction, verify all technical inequalities, and show
     `J = O(log(1/delta_init))` preserves polynomial runtime.
   - Baseline invariance obligations: for every `epsilon>0`, the exact
     orthogonal case has no positive residual floor.

## Assumption Provenance Objectives

- `E_sm` (realized norms, Gram rows, weights, and Khatri-Rao floors) is a
  derived static event produced by `step_001` from
  `assump:base-scale`, `assump:cumulative-gram`,
  `assump:base-weight-balance`, `assump:gaussian-smoothing`, and
  `assump:smoothing-margin`.
- `E_win` and `E_cov` (window entries and all-target coverage) are derived
  from `assump:random-initialization` after conditioning on `E_sm`; target
  labels are proof-only and are not algorithm inputs.
- `E_RS` (finite ratios, denominators, and pair mass) is derived from the
  old-state simultaneous map and `E_sm`, `E_win`; it is not a basin assumption.
- `E_chart` (a named target chart, fixed point, ambient norm conversion),
  `E_chart_l1` (the r-uniform ratio-l1 mass `a_t`), and `E_cert` (a stored
  state with `zeta <= tau_r`) are derived by the self-map and contraction in
  `step_004`, not assumed as initialization properties.
- `E_cert_eq` (the oriented same-state equation, positive contraction norms,
  and projected residual) is derived for every certified slot by `step_004b`
  before any score or cluster selection.
- `E_cert_tail` (the scale-free threshold, retained core, singleton tail,
  multi-support tail score, and low-score flag) is derived alongside
  `E_cert_eq` in `step_004b` for every certified slot.  It uses no `E_cov`,
  target label, or covered-slot chart.
- `E_support_wt` (the weighted all-certified support/score classifier) is
  derived in `step_005` from `E_cert_eq`, `E_cert_tail`, and `E_sm`; it feeds `E_cluster` and
  `E_gauge` without treating the persistent weight imbalance as certificate
  noise.  `E_cluster` (one data-only cluster per target and a per-mode chart
  radius, denominator, and score margin) and `E_gauge` (post-score oriented
  columns and positive scalar) are then derived from this weighted output.
- `E_col`, `E_row_residual`, and `E_row` (selected dual coefficient masses
  and per-entry projected residual) are derived by the same-state equation in
  `step_006`; the small-root column bootstrap is closed only after `step_005`
  supplies the global `a_cert` tail and denominator margin.  `E_chart_l1` is
  optional covered-slot tightening, never a global premise.
- `E_gauge` (oriented columns and positive recomputed scalar) is derived in
  `step_005` after the theta lower bound; it is not a primitive sign choice.
- `E_quotient` (relative amplitude quotient coordinates) is derived in
  `step_007` from the product-one equal-norm gauge and is the only amplitude
  interface consumed by the local ALS tube.
- `E_quotient`, `E_basin`, and the active quotient contraction are derived in
  `step_007`-`step_009` from `E_sm`, `E_col`, `E_row`, and `E_best`; no generated basin
  condition is placed in the theorem assumptions.

## Mechanism-Source And Boundary Stress

### `step_001`: realized geometry and conditioning

- Claim class: generated static norm, Gram, weight, and positive Khatri-Rao
  spectral-floor event; theorem role: supplies every later deterministic
  interface.
- Mechanism source: direct Gaussian norm and directional concentration in the
  normalized-column convention of `setting.md`, plus the Schur-product
  identity and Gershgorin.  The source is primitive-source derivation, not an
  assumed realized event.
- Source-to-claim adequacy: the linear term is bounded by
  `C kappa_0 rho sqrt(log(9r^2/delta_sm)/n)`, the quadratic term by
  `C kappa_0^2 rho^2 sqrt(log(9r^2/delta_sm)/n)`, and normalization by
  `C kappa_0^2 rho^2`; the two scalar margins in
  `assump:smoothing-margin` dominate each class separately.  The normalized
  Gram convention agrees with the setting, and the Schur-product off-diagonal
  row sum is at most `q_*^2`.
- Residual-to-target adequacy: the produced factors are exactly the realized
  factors consumed by all later steps; no transformed or surrogate target is
  introduced.
- Key positive/control term or structural source: base norm lower bound,
  base Gram slack `q_*/4`, and base weight slack `1+1/800`.
- Opposing defects: linear directional, quadratic, normalization, and finite
  union-tail errors; each has its own displayed source and margin.
- Closure/dominance relation: sum the separately dominated terms only after
  their individual bounds, giving `q_real <= q_*`, `Gamma <= 1.01`, and the
  stated norm floor.
- Accumulation/scope: finite static union, allocated once before proposal
  randomness; no trajectory accumulation.
- Obligation locality: `step-local`.
- Noncircular closure: primitive assumptions -> `E_sm`; consumers are
  `step_002`, `step_003`, `step_004`, and `step_008`.
- Entry/first-update stress: at the orthogonal zero-smoothing boundary the
  event reduces to exact norms and zero Gram mass; it does not claim that a
  random proposal is already aligned.
- Baseline preserved: yes.  Null regime tested: `rho=0` and orthogonal base;
  if norm/Gram control vanished, normalization or Khatri-Rao invertibility
  could fail, so the explicit primitive margins are necessary.
- Producer-consumer provenance: `assump:*` -> `step_001` -> all dynamic steps.

### `step_002`-`step_004`: window, coverage, and simultaneous recurrence

- Claim class: generated target-chart entry, fixed-horizon recurrence, and
  coverage event; theorem role: activates the proposal mechanism.
- Mechanism source: independent Gaussian initialization, correlated Gaussian
  regression under `E_sm`, and the exact old-state contraction expansion.
  Source convention matches the raw coordinate definitions in `setting.md`.
- Source-to-claim adequacy: the three target coordinates lie in
  `[t_r,t_r+t_r^(-1)]` in absolute value; conditional competitor means are at
  most `q_*(t_r+t_r^(-1))`, and a dyadic product tail gives exponent
  `beta_* > 1`.  Thus the per-slot event has universal lower and upper
  comparisons `c_all r^(-5/3)(log r)^(-3/2)` and
  `C_win r^(-5/3)(log r)^(-3/2)`.  The exact contraction expansion gives the
  following recurrences with the same old state in all three modes:
  `R_(t+1) <= ((Gamma R_t+q_real)/(1-Gamma q_real R_t))^2` and
  `S_(t+1) <= ((Gamma R_t+q_real)(Gamma(1+q_real)S_t+q_real)) /
  (1-Gamma q_real R_t)^2`.
- Residual-to-target adequacy: ratios are defined against the realized target
  factors, so the entry object and consumed chart share the target metric.
- Key control term: the target coefficient product dominates all competing
  pair products; `R_0 <= 19/20`, `S_0 <= r R_0`, and denominator slack is
  `1-Gamma q_real R_t`.
- Opposing defects: fixed Gram leakage `q_real`, weight ratio `Gamma`, and
  finite initial pair mass.  They are controlled by the recurrence and its
  invariant interval, not by an assumed basin.
- Accumulation/scope: finite horizon `L_burn`; after the tenth burn sweep,
  interval arithmetic gives `R_10 <= 6.0e-8`; with `t_b=L_burn` the same
  recurrence gives `R_tb <= 6.0e-8`; choose the universal burn
  constant so that
  `L_burn >= 10+ceil(log(16r/q_*)/log 4000)`.  The pair-mass recurrence and
  the defined ratio-l1 bridge then give `S_(L_burn) <= q_*/16` and
  `a_(L_burn) <= 1/1024`.
  The residual forcing is persistent but bounded by the
  fixed `q_real` term; it is not claimed to vanish unless `q_real=0`.
- Obligation locality: `step-local` after the explicit chart construction
  below is supplied.
- Noncircular closure: `E_sm` and `E_win` produce the denominator invariant;
  the invariant produces `E_RS`; `E_RS` supplies the input to the named chart
  and fixed-point construction in `step_004`.
- Entry/first-update stress: the first simultaneous update is evaluated from
  the old state and obeys `1-Gamma q_real R_0 >= 31/32`.  At `q=0`, the first
  update is exactly `(BC,AC,AB)` in ratios.  If this denominator source
  vanished, certification could be undefined, so the margin is checked
  before any certificate is exported.
- Baseline preserved: exact squaring and eventual exact fixed point remain.
- Producer-consumer provenance: `step_001 -> step_002 -> step_003 -> step_004`.

The chart exported by `step_004` is explicit.  Let
`H_M=G_M^T G_M` and `L_M=G_M H_M^(-1)`.  For a proof-only target `j`, orient
the target correlation positively and define the trajectory dual column
`b_{M,j}^t=L_M^T h_{M,j}^t`; define
  `a_t=max_{M,j} sum_{ell != j}|b_{M,ell j}^t|`.  This is an l1 mass, not a
max-entry or ambient l2 proxy.  The simultaneous contraction expansion gives
the explicit bridge
`a_(t+1) <= 2(Gamma S_t+q_real)/(1-Gamma q_real R_t)` after the first update.
Put `t_b:=L_burn`; the burn choice above gives
`S_(t_b) <= q_*/16` and `a_(t_b) <= 1/1024` using the denominator lower bound.

For every covered target define the closed chart `C_j` by
`a(h)<=a_chart:=1/512`, positive target correlations, and
`||h_M-sign(u_j)||_2<=chi_chart:=1/128` in every mode.  The dual expansion
and `||G_M||_2<=sqrt(1+q_*)` give the norm conversion
`||h_M-sign(u_j)||_2 <= 2 a(h)+4q_*`; hence the `t_b` state is in `C_j`.
For every `h in C_j`, the same expansion gives
`a(J(h)) <= 2(q_*+2a(h)^2) <= 1/1024 <= a_chart`, and
`||J_M(h)-sign(u_j)||_2 <= 2a(J(h))+4q_* <= chi_chart`.
Thus `J(C_j) subset C_j`, which is the required self-map relation rather
than only a Lipschitz assertion.  Direct differentiation of the normalized
contraction on `C_j` has
`L_chart <= 16(q_*+a_chart+chi_chart) < 1/4`, and every contraction norm obeys
`31 lambda_j/32 <= d_M(j) <= 33 lambda_j/32`.
Banach's theorem gives a unique projective fixed point `h_j^star` in the
closed chart.  If `zeta_t` is the maximum signed ambient displacement from
`h^t` to `J(h^t)`, the initial chart diameter bound and self-map contraction
give `zeta_t <= 3 (1/4)^(t-t_b)`.  Choose
`L_cert >= ceil(log(4/tau_r)/log 4)+1`; this is an allowed universal
`C_cert log r` choice and yields `zeta <= tau_r` in the declared window.
The chart l1 mass `a_t` and the later selected dual coefficient error `chi`
are separate generated quantities.

### `step_004b`: pre-cluster oriented certificate equation

- Claim class: generated same-state normal-equation producer for every
  certified slot; theorem role: source for support classification and all
  later coefficient bridges, before any target label or graph selection.
- Mechanism source: the definition of `zeta` and multilinearity of the exact
  contractions.  For a certified state `h_a`, let `d_{M,a}` be the norm of
  the old-state contraction in mode `M`, and let `epsilon_{M,a}` be its
  minimizing projective sign.  The algorithm's nonzero-contraction branch
  gives `d_{M,a}>0` and the direct identity
  `p_{M,a} d_{M,a} = epsilon_{M,a} G_M K_M^raw(:,a)+R_M^raw(:,a)` with
  `||R_M^raw(:,a)||_2 <= d_{M,a} tau_r`.
- Source-to-claim adequacy: `K_M^raw` is formed from the same stored columns in
  the other two modes, exactly as in `setting.md`, with
  `K_M^raw=diag(lambda)((G_{M'}^T P_{M'}^raw) circ
  (G_{M''}^T P_{M''}^raw))`; no
  pre-update or look-ahead object occurs.  The projected residual is
  `R_M^raw` itself.  Before score classification the matrix form is
  `P_M^raw D_M = G_M K_M^raw Sigma_M + R_M^raw`, where
  `Sigma_M=diag(epsilon_{M,a})` multiplies on the right and hence acts
  columnwise.  It never multiplies `G_M` on the left.  After the positive-score
  branch proves sign consistency, define the algorithm-compatible directions
  `bar P_U=P_U^raw`, `bar P_V=P_V^raw`, and
  `bar P_W=diag(sign(theta_a)) P_W^raw`; this is exactly the sign already placed
  in the initialized z factor, so the represented rank-one tensor is unchanged.
  The three remaining orientation signs `gamma_{M,a}` are chosen with
  `gamma_{U,a} gamma_{V,a} gamma_{W,a}=1` to make all target correlations
  positive.  Recompute the scalar as
  `bar theta_a=<T,bar p_a otimes bar q_a otimes bar s_a>=|theta_a|`.
  Redefining `bar K_M` from the `bar P` columns absorbs the right sign matrices
  and gives `bar P_M D_M=G_M bar K_M+bar R_M` with no hidden sign convention.
  All selected-state coefficient equations below use these barred objects.
- Global all-certified tail producer `E_cert_tail`: this ledger is evaluated
  from the raw equation before the post-score definitions just described.  It
  covers every certified slot, including slots outside the covered target
  charts, and uses no target label.  Put
  `eta_G:=2q_*+q_*^2`, `eta_N:=5q_*^2`, and
  `eta_C:=2sqrt(r)tau_r`; define the dimension-aware reserve
  `eta_0:=eta_G+eta_N+eta_C` and `eta_rel:=8 eta_0`,
  `mu_i:=lambda_i/lambda_min in [1,Gamma]`, and let
  `sigma:=|theta|`.  First emit the label `LOW` when
  `sigma<s_gate lambda_min` with `s_gate:=0.7`.  `LOW` is a proof-only branch,
  not an added algorithmic filter; `step_005` shows that the existing
  `0.85 sigma_max` rule removes it on the coverage event.  Otherwise the raw
  coefficient vectors are nonzero; normalize
  `x_M:=abs(c_M^raw)/||c_M^raw||_2`, where
  `c_M^raw=L_M^T P_M^raw`.  Set the fixed support threshold
  `vartheta:=1/8` and the retained-coordinate floor
  `vartheta_*:=vartheta-8 eta_rel`; in the declared regime
  `vartheta_*>1/16`.  Moreover,
  `d_M>=sigma` by Cauchy-Schwarz, and put
  `a_M:=d_M/lambda_min`.  The Khatri-Rao/Gram row bound in `E_sm` gives
  `0.7<=a_M<=Gamma(1+q_*)<1.02`.  Now write
  `H_M:=G_M^T G_M=I+F_M`, `c_M:=L_M^T P_M^raw`,
  `s_M:=||c_M||_2`, and `tilde x_M:=c_M/s_M` so that `x_M=abs(tilde x_M)`.
  Since `G_M^T P_M^raw=H_Mc_M`, the exact same-state pair vector is
  
  `K_M^raw(:,a)=lambda_min diag(mu)
  ((H_{M'}c_{M'})circ(H_{M''}c_{M''}))`.

  The certificate puts `P_M^raw` within `tau_r` of the span of `G_M`, so
  `p_M=G_Mc_M+p_M^perp`, `||p_M^perp||_2<=tau_r`, and
  `(1-tau_r^2)/(1+q_*)<=s_M^2<=1/(1-q_*)`.  In particular
  `|s_M-1|<=q_*` in the declared regime.  Define the exact normalized
  contraction scale
  `hat alpha_M:=a_M s_M/(s_{M'}s_{M''})`; the preceding bounds give
  `0.995<=s_M/(s_{M'}s_{M''})<=1.005` and hence
  `0.69<=hat alpha_M<=1.03`.  For the threshold ledger write
  `alpha_M:=hat alpha_M`.

  Expand the coefficient vectors, not Gram matrices:
  
  `((H_{M'}c_{M'})circ(H_{M''}c_{M''}))/(s_{M'}s_{M''})
  =tilde x_{M'}circ tilde x_{M''}+g_M`,
  
  where
  `g_M:=(F_{M'}tilde x_{M'})circ tilde x_{M''}
  +tilde x_{M'}circ(F_{M''}tilde x_{M''})
  +(F_{M'}tilde x_{M'})circ(F_{M''}tilde x_{M''})`.
  Schur/Gershgorin gives
  `||F_M||_2<=sqrt(||F_M||_{row,1}||F_M||_{col,1})<=q_*`.  Hence, by
  Cauchy-Schwarz,
  `||(F_{M'}tilde x_{M'})circ tilde x_{M''}||_1<=q_*`,
  `||tilde x_{M'}circ(F_{M''}tilde x_{M''})||_1<=q_*`, and
  `||(F_{M'}tilde x_{M'})circ(F_{M''}tilde x_{M''})||_1<=q_*^2`.
  Therefore the coefficient-vector Gram budget is exactly
  `||g_M||_1<=eta_G=2q_*+q_*^2`, with no hidden factor of `r`.

  Multiplying the raw certificate equation by `L_M^T` and dividing by the
  coefficient norms gives the source-compatible normalized relation
  `hat alpha_M tilde x_M=diag(mu)(tilde x_{M'}circ tilde x_{M''}+g_M)+r_M`,
  where
  `r_M:=L_M^T R_M^raw/(lambda_min s_{M'}s_{M''})` and
  `||r_M||_2<=((1-q_*)^(-1/2)1.02/(0.995)^2)tau_r<2tau_r`.
  The factors `s_{M'}s_{M''}/s_M` are scalars and have
  been absorbed into `hat alpha_M`; this is the normalization cancellation,
  so no first-order `q_*` term is charged to a coordinate shape.  If the
  scalar is expanded with `s_M=1+nu_M`, `|nu_M|<=q_*`, the exact remainder
  after removing its linear part is
  `|nu_{M'}nu_{M''}-nu_{M'}nu_M-nu_{M''}nu_M+nu_M^2|/(1-q_*)
  <=4q_*^2/(1-q_*)<5q_*^2`.  We retain this conservative scalar reserve as
  `eta_N:=5q_*^2`; it is not a second vector leakage.

  Dividing by `mu_i` removes weight imbalance from the shape ratios; when the
  discarded products are summed as the weighted `tail_score`, the factor
  `mu_i<=Gamma` is restored explicitly, producing the `2.02eta_0` and
  `8.08eta_0` bounds below rather than hiding `Gamma` in `q_*`.

  On every finite support `T`, the certificate term contributes only
  `||(r_M)_T||_1<=sqrt(|T|)||(r_M)_T||_2
  <=sqrt(r)2tau_r=eta_C`.  This is the only l2-to-l1 conversion in the
  ledger; no `O(tau_r)` l1 claim is made after summing coordinates.  Thus the
  un-divided additive defect is at most `eta_0`; the looser propagation
  envelope below is `eta_rel=8eta_0` and includes reciprocal-denominator
  slack.  Since
  `sqrt(r)tau_r=q_*^2/(10^4sqrt(r))<=q_*^2/10^4`, this dimension term is
  absorbed by the displayed q reserve without changing rank, confidence, or
  probability.
  Define the no-label core and its tails by
  `I_vartheta:={i:min_M |x_{M,i}|>=vartheta}`,
  `tail_M:=sum_{i notin I_vartheta}|x_{M,i}|`, and
  `tail_score:=sum_{i notin I_vartheta}mu_i
  |x_{U,i}x_{V,i}x_{W,i}|`.  Summing the three coordinate residual
  inequalities after multiplying by the two other coordinates gives the
  following explicit threshold ledger.  The denominator and ratio calculation
  is made before any support conclusion.  For a retained coordinate put
  `g_{M,i}:=|x_{M',i}x_{M'',i}|`.  Divide the normalized relation by
  `mu_i` before taking coordinate ratios; its additive error is bounded by
  `eta_0` and the main coefficient is `alpha_M/mu_i`.  The bounds
  `alpha_M>=0.69` and `mu_i<=Gamma<=1.01` give
  `alpha_M/mu_i>=0.68`.  Thus the non-LOW score and
  `|x_{M,i}|>=vartheta_*` imply
  `g_{M,i}>=0.68vartheta_*-eta_0>0`.  Since
  `eta_C<=2q_*^2/10^4`, the declared worst case obeys
  `eta_0<=2q_*+6.0002q_*^2<4.89e-4` and `vartheta_*>0.0937`, so the
  denominator calculation is
  explicit:
  `d_0:=eta_0/(0.68vartheta_*-eta_0)<=16eta_0<1/128`, and
  `|e_{M,i}/g_{M,i}|<=d_0`.
  Write `xi_{M,i}:=e_{M,i}/g_{M,i}`.  For two retained indices `i,l`, every
  division is legal and gives
  `|x_{M,i}|/|x_{M,l}|=(mu_i/mu_l)
  (|x_{M',i}x_{M'',i}|/|x_{M',l}x_{M'',l}|)
  ((1+xi_{M,i})/(1+xi_{M,l}))`.
  Multiplying the three mode equations cancels
  `alpha_U alpha_V alpha_W` and the two-factor ratios.  Since
  `d_0<1/128`, and
  `|(1+u)^(-1)-1|<=2|u|` gives a single ratio factor with deviation at most
  `(2d_0)/(1-d_0)<=33eta_0`.  Multiplying the three mode factors and
  retaining the quadratic terms gives a product factor `1+Delta_{i,l}` with
  `|Delta_{i,l}|<=104eta_0` (the bound is below `101eta_0` at the extremal
  values).  Solving the product identity for the square of the mode-M ratio
  cancels its own ratio factor, leaving the inverse of the other two factors;
  hence the unnormalized squared-profile deviation is at most
  `(1+33eta_0)^2-1<68eta_0`.  Substitution into the unit-norm identity yields
  a common scale
  `kappa_I^(-2)=sum_{ell in I_vartheta}mu_ell^(-2)` and
  `delta_{M,i}:=mu_i^2 x_{M,i}^2/kappa_I^2-1` with
  `|delta_{M,i}|<=144eta_0`.  The reciprocal denominator is
  explicit: if
  `Z_M=sum_{ell in I_vartheta}mu_ell^(-2)(1+Delta_{M,ell})` and
  `Z=sum_{ell in I_vartheta}mu_ell^(-2)`, then
  `|Z_M/Z-1|<=68eta_0`; since `68eta_0<1/16`,
  `|Z/Z_M-1|<=68eta_0/(1-68eta_0)<72eta_0`.  Combining this reciprocal
  loss with the `<68eta_0` mode-square loss is below `140eta_0`; we export
  the conservative `144eta_0` profile reserve.  This is the only profile
  comparison used below; it uses the retained floor and the non-LOW score,
  rather than an implicit target-chart denominator.
  Before that division, the same residual ledger gives the propagation
  inequalities
  `mu_i|x_{V,i}x_{W,i}|>=alpha_U(|x_{U,i}|-eta_rel)` and its two cyclic
  analogues whenever the right side is positive.  Hence a coordinate above
  `vartheta+8eta_rel` forces the other two modes across the threshold unless
  a second core coordinate is present; this is the quantitative
  threshold-straddling step, not an appeal to a target chart.
  (a) if `I_vartheta={j}`, the three top indices coincide,
  `min_M |x_{M,j}|>=1-64 eta_0`, and
  the coordinate sums give, with the three defect classes kept separate,
  `max_M tail_M<=2Gamma(eta_G+eta_N)+2eta_C
  +eta_rel^2/(4 vartheta_*^2)
  <=2.02eta_0+eta_rel^2/(4 vartheta_*^2)
  <=1.43e-3<a_cert:=7q_*+8tau_r<1/512` at the extremal reserve.
  The first term uses
  `sum_i|x_{M',i}x_{M'',i}|<=1` before charging Gram, normalization, and
  certificate budgets; the second is the product of two discarded-coordinate
  defects, each divided only by the retained floor.  Thus no coordinatewise
  `r tau_r` sum is hidden in the singleton claim, and the same calculation
  gives `max_M||x_{M,I^c}||_2<=a_cert`.  Keeping the two first-order Gram
  terms and the signed certificate term in the score sum gives the exported
  component bounds
  `s_-:=1-96eta_0-8tau_r` and `s_+:=1+96eta_0+8tau_r`;
  (b) if `|I_vartheta|>=2`, every retained coordinate is at least
  `vartheta_*`, and the same coordinate sums give
  `tail_score<=8Gamma(eta_G+eta_N)+8eta_C+2eta_rel^2/vartheta_*
  <=8.08eta_0+2eta_rel^2/vartheta_*<=4.29e-3<16eta_0`; on `I_vartheta` the
  denominator-aware profile
  `|mu_i^2 x_{M,i}^2/kappa_I^2-1|<=144eta_0` holds, with
  `kappa_I:=(sum_{i in I_vartheta}mu_i^(-2))^(-1/2)`;
  (c) at the threshold-straddling boundary, if the top indices do not
  coincide or `I_vartheta` is empty, the same coordinate inequalities give
  either `min_M ||x_M||_infty<=vartheta+8 eta_rel` and hence
  `sigma<=lambda_max(vartheta+8 eta_rel+16 eta_0)<s_gate lambda_min`,
  or a second retained index enters `I_vartheta`, reducing to (b).  Thus a
  high-score slot cannot disappear between the singleton and multi-support
  cases.  The proof uses only `E_cert_eq`, `E_sm`, unit normalization, and the
  displayed scale-free `mu_i`; it is independent of `E_cov` and `E_chart_l1`.
  The exported fields are the LOW flag or the common singleton/core set,
  `vartheta_*`, `tail_M`, `tail_score`, `kappa_I`, and the normalized weight
  ratio bounds.  This is the global chart/tail input consumed by `step_005`.
- Residual-to-target adequacy: this producer compares a stored state only to
  its own contraction, so it makes no unsupported claim about target distance.
  Pushing the residual through a target dual basis is deferred to `step_006`
  after a target chart and lambda lower bound exist.
- Key positive/control term: `d_{M,a}>0`, supplied by the algorithm's
  successful contraction branch.  Opposing term is the finite `d tau_r`
  projective residual, with unknown sign but explicit l2 budget.
- Accumulation/scope: one finite residual per mode and selected slot; no sum
  is taken here.  The later dual conversion gives the finite `r tau_r` budget.
- Obligation locality: `step-local`.
- Noncircular closure: `step_004` produces the certified state and its
  contraction norm; `step_004b` produces `E_cert_eq` and the independent
  `E_cert_tail` ledger; `step_005` is the first classifier consumer.
- Entry/first-update stress: a finite `q=0` transient has nonzero `R_M^raw` (or
  `bar R_M` after orientation); an exact stationary component has zero
  residual.  If `d_M=0`, the run is declared
  unsuccessful before this output, so no singular certificate is hidden.
- Baseline preserved: the exact q-zero stationary equation is unchanged.
- Producer-consumer provenance: `step_004 -> step_004b -> E_cert_eq,
  E_cert_tail -> step_005 -> step_006,step_007`.

### `step_005`: score classification and observable clustering

- Claim class: weighted support-size classification, score gap, graph
  membership, and data-only cluster certificate; theorem role: converts
  certified states into exactly one representative candidate per target.
- Mechanism source: the all-certified no-label ledger `E_cert_tail`, the raw
  weighted pair equations in `E_cert_eq`, near-orthogonal Gram rows, and the
  exact weighted orthogonal support calculation.  The older `E_chart_l1` is
  used only to tighten a covered trajectory; it is not an input to this
  all-certified classification.  Every high-score slot therefore has the
  scale-free vectors `x_M`, weights `mu_i`, threshold `vartheta=1/8`, and
  core/tail fields produced before this step.
- Source-to-claim adequacy: `E_cert_tail` first marks `LOW` slots with
  `|theta|<0.7 lambda_min`; on the coverage event these fail the observable
  `0.85 sigma_max` filter, so no label or chart is needed for them.  For every
  remaining slot, the explicit threshold ledger gives exactly two branches.
  (I) `I_vartheta={j}` with common top index, singleton tail
  `max_M sum_{ell != j}|x_{M,ell}|<=a_cert<1/512`, and
  `min_M|x_{M,j}|>=1-64 eta_0`.  Combining the tail with the Gram conversion
  gives `2a_cert+4q_*<1/128`, the exported per-mode ambient radius, and
  `s_- lambda_j<=|theta|<=s_+ lambda_j`, where
  `s_-:=1-96eta_0-8tau_r` and `s_+:=1+96eta_0+8tau_r`.
  (II) `|I_vartheta|=m>=2`, with retained floor `vartheta_*>1/16`,
  `tail_score<=16 eta_0`, and the scale-free profile relation
  `|mu_i^2 x_{M,i}^2/kappa_I^2-1|<=144 eta_0` on the core.  Summing the core
  score and the signed-independent tail budget yields the explicit dominance
  relation
  `|theta|/lambda_min<=kappa_I+144eta_0+tail_score
  <=Gamma/sqrt(m)+160eta_0`, and therefore
  `|theta|<=lambda_max(1/sqrt(m)+160eta_0)`, hence
  `|theta|<=s_mix lambda_max` with
  `s_mix:=1/sqrt(2)+160eta_0`.  The explicit threshold-straddling
  clause in `E_cert_tail` proves that a high-score slot with mismatched top
  indices either enters branch (II) or falls into `LOW`; there is no omitted
  third branch.  At the exact orthogonal limit,
  `x_{M,i}^2=mu_i^(-2)/(sum_{ell in I}mu_ell^(-2))` and
  `|theta|=lambda_min(sum_{i in I}mu_i^(-2))^(-1/2)`, which is the exact
  `S_I` formula for every support size.
  Numerically, `s_->0.953`, `s_+<1.047`, and `s_mix*1.01<0.794`.  Every
  certified score is at most `s_+ lambda_max`, while coverage supplies
  `sigma_max>=s_- lambda_min`; hence branch II is below
  `0.794 lambda_max<=0.802 lambda_min<0.85 s_- lambda_min` and is rejected.
  Conversely `s_-/(1.01s_+)>0.901>0.85`, so every component witness passes.
  The weight ratio enters only through the explicit scale-free `mu` and
  `lambda_max/lambda_min` factors.
- Graph and target interface: branch-I states assigned to the same target have
  absolute mode correlations at least `1-32q_*`; states assigned to distinct
  targets have correlations at most
  `q_*+4a_cert+16q_*<1/32<1-64q_*`.  The output
  `E_support_wt` records the branch label, common support, `s_mix`, `s_-`,
  `s_+`, `a_cert`, `tail_score`, and the exact weighted stationary score
  formula.  `E_cluster` therefore includes the proof-only permutation, the
  all-certified normalized tail `sum_{ell != j}|x_{M,ell}|<=a_cert` and the
  realized dual l1 bound
  `sum_{ell != j}|c_{M,ell}|<=a_cert+4q_*<1/256` (or the tighter covered
  chart bound), the ambient radius `1/128`, and the denominator margin.
  These are r-uniform interfaces, not max-entry surrogates.
- Sign and theta boundary: a retained state has
  `|theta| >= 0.85 s_- lambda_min > 0.81 lambda_min > 0.8 lambda_min`; hence
  theta is never zero on the retained branch.  Taking the contraction inner
  product in the raw equation gives
  `|theta-epsilon_M d_M| <= d_M tau_r`, so all three minimizing signs equal
  `sign(theta)`.  If theta is negative, first absorb that sign into the third
  initialized direction (`bar P_W=sign(theta)P_W^raw`), which preserves the
  represented initialized tensor because its z amplitude carries the same
  sign.  Then choose the remaining orientation tuple `gamma` with product one
  so all three target correlations are positive.  The recomputed scalar is
  `bar theta=|theta|`; certified states with theta zero or a zero contraction
  remain legal diagnostics but cannot enter the retained pool or the
  theorem-facing producer.
- Residual-to-target adequacy: every retained state is compared in modewise
  Euclidean correlation to one realized target column; the graph and later
  dual chart consume this same target metric.  The `1/128` chart radius and
  denominator margin are exported explicitly rather than inferred from graph
  edges alone.
- Key control term: the weighted pair-product relation and the direct
  component-versus-mixture score margin; opposing terms are Gram leakage and
  certificate l2 error.  Weight imbalance is retained exactly in
  `diag(lambda)` and appears only in the explicit `lambda_max/lambda_min`
  comparison.
- Accumulation/scope: finite graph over all certified slots; no iterative
  accumulation.  Strict score and graph inequalities precede tie breaking,
  so duplicate states and equal scores cannot change the number of clusters.
- Obligation locality: `step-local`.
- Noncircular closure: `step_004b` is the pre-cluster producer; `step_005`
  first produces `E_support_wt`, then produces `E_cluster`, the target
  permutation, the product-preserving sign gauge, `s_comp`, and the
  denominator/chart margins.
- Entry/first-update stress: an exact component fixed point passes the filter;
  every exact m-support fixed point has weighted score
  `S_I=(sum_{i in I}lambda_i^(-2))^(-1/2)` and is rejected for `m>=2` by the
  displayed bound.  In particular, for the allowed orthogonal boundary
  `lambda=(1,1.01)`, the two-support profile is
  `(0.504975,0.495025)` and `S_I=0.710616>s_gate lambda_min`, so it exercises
  branch II rather than being discarded as LOW; the component witness score
  is above `0.95 lambda_min` before the `0.85` filter; this is an explicit
  unequal-weight check.  At
  the threshold-straddling boundary, the ledger gives
  `sigma/lambda_min<1.01(1/8+8eta_rel+16eta_0)<0.17<0.7`, so it is in the
  LOW branch rather than an unaccounted support case.  At `q=0` negative component scores are handled by the product-preserving
  orientation below; a zero-score state is rejected.
- Baseline preserved: component fixed points and exact clustering hold at the
  deterministic rho-zero specialization.
- Producer-consumer provenance: `step_004 -> step_004b -> step_005 ->
  E_support_wt -> E_cluster,E_gauge -> step_006,step_007`.

### `step_006`: certified same-state coefficient bridge

- Claim class: generated selected-direction, dual coefficient, row/column
  leakage, and selected-basin seed; theorem role: theorem-critical bridge from
  observable representatives to active ALS.
- Mechanism source: `E_cert_eq`, the weighted classifier `E_support_wt`, the
  true-factor dual bases, the chart radius and denominator margin exported by
  `step_005`, and a spatial Hadamard small-gain relation.  This is a direct
  derivation in the setting convention;
  no cited theorem supplies the row bound.
- Source-to-claim adequacy: for each mode set `H_M=G_M^T G_M`,
  `L_M=G_M H_M^(-1)`, and `bar B_M=L_M^T bar P_M`.  After the
  product-preserving signs from `step_005`, write `bar B_M=A_M+E_M`, with
  `A_M` diagonal and `E_M`
  zero diagonal.  For `ell != j`, `E_cert_eq` gives the exact relation
  `(E_M)_{ell j} D_M(j,j)/lambda_j =
  (lambda_ell/lambda_j)(H_{M'}bar B_{M'})_{ell j}
  (H_{M''}bar B_{M''})_{ell j} +
  (L_M^T bar R_M)_{ell j}/lambda_j`.
  The chart margins and `Gamma <= 1.01` give
  `31/32 <= D_M(j,j)/lambda_j <= 33/32`.
- Closed column bootstrap: let
  `chi=max_{M,j} sum_{ell != j}|(E_M)_{ell j}|`.  The `E_cert_tail` singleton
  tail and `E_support_wt` chart interfaces give the initial small branch
  `chi<=a_cert+4q_*<1/256`, uniformly
  in r.  The unit-norm identity gives
  `|A_M(j,j)-1| <= 2(q_*+chi)chi+2 tau_r^2`.  The two factor columns on the
  right side of the entrywise relation have l1 norms at most
  `q_*+2chi+2q_*^2`.  Pushing each certificate column through the dual gives
  the per-entry estimate
  `|(L_M^T bar R_M)_{ell j}/lambda_j| <= 2 tau_r`; consequently its column l1
  mass is at most `2r tau_r`, and its row l1 mass is also at most `2r tau_r`
  by summing the per-entry estimate over the `r` columns.  The row estimate
  does not sum a column-l1 bound over columns and therefore has no `r^2 tau_r`
  loss.
  Therefore the explicit small-root inequality is
  `chi <= 4(q_*+2chi+2q_*^2)^2 + 4 r tau_r`.  The quadratic has a small root
  `chi_- <= 32 omega`, where
  `omega:=q_*^2+r tau_r`; its large root is above `1/32`, so the chart bound
  selects the small branch.  Since `r tau_r=q_*^2/10^4`,
  `omega <= 1.0001 q_*^2 < 6.0e-8`.
- Attempt-8 threshold constant rerun: the coefficient-vector Gram expansion
  and exact scalar normalization cancellation leave the denominator-aware
  profile margins intact.  The singleton input still satisfies
  `a_cert+4q_*<11q_*+8tau_r<1/256`, strictly below the old small-root cutoff.
  At `r=1`, `eta_0<4.89e-4`, `tail_M<1.43e-3<a_cert`,
  `tail_score<4.29e-3<16eta_0`, `s_mix*1.01<0.794`, and
  `0.794 lambda_max<0.802 lambda_min<0.85s_-lambda_min` with
  `s_->0.953`; the component ratio is `s_-/(1.01s_+)>0.901`.
  Hence the same quadratic gives `chi_-<=32omega`, the residual conversion
  remains `2r tau_r`, and the row self coefficient below remains `1/8`.
  No threshold or tail term is carried into `omega`, so `C_best=512` and
  `rho_ALS=1/1024` in `step_007`-`step_008` are unchanged.
- Row/column residual closure: the same dual calculation gives
  `eta_col <= 64 omega`.  For row mass, the row l1 norm of each factor is at
  most `q_*+2eta_row+2q_*^2`, while its largest entry is at most
  `q_*+2chi+2q_*^2`.  Hence
  `eta_row <= 4(q_*+2chi+2q_*^2)(q_*+2eta_row+2q_*^2)+4r tau_r`.
  With `chi <= 32 omega` and `q_*=1/4096`, the self coefficient is below
  `1/8`; absorption gives `eta_row <= 128 omega`.  This exposes the static
  `q_*^2`, coefficient, and certificate residual classes separately.
- Residual-to-target adequacy: `bar P_M` is the oriented stored state in the
  realized target basis, and `L_M^T bar R_M` is the exact residual transfer.  The operator
  estimate uses `||H_M^(-1)||_{1,1},||H_M^(-1)||_{infty,infty} <= 1/(1-q_*)`,
  `D_M/lambda <=33/32`, and each ambient residual column norm at most
  `D_M tau_r`.  Each dual row has Euclidean norm at most
  `1/sqrt(1-q_*)`, giving the per-entry `2 tau_r` bound above; separately
  summing entries gives both induced l1 bounds `2r tau_r`.  Thus every
  residual is dominated at the required `q_*^2` scale, with no pre/post or
  surrogate bridge.
- Exported residual interface `E_row_residual`: for every mode, target row
  `ell`, and selected column `j`,
  `|(L_M^T bar R_M)_{ell j}/lambda_j| <= 2 tau_r`; hence
  `max_j sum_ell |...| <= 2r tau_r` and
  `max_ell sum_j |...| <= 2r tau_r`.  The first is a column l1 bound and the
  second is a row l1 bound obtained from the per-entry source, not by summing
  the first bound again.  This output is consumed by the row small-gain and
  best-scalar steps.
- Key positive/control term: the diagonal target coefficient and the
  `31/32` denominator.  Opposing terms are two off-target Gram/coefficient
  products, the bounded `lambda_ell/lambda_j` ratio, diagonal norm correction,
  and projected certificate residual; each appears in the displayed
  inequalities.
- Accumulation/scope: row and column sums range over the finite selected set;
  certificate forcing is additive, sign-unknown, and finite-budgeted by
  `r tau_r`.  The one-step relation is the explicit row inequality above and
  its `1/8` absorption.
- Obligation locality: `step-local`; all raw controls and the small root are
  exposed before later proof work.
- Noncircular closure: `step_005` supplies `E_support_wt`, chart, sign, theta,
  and denominator margins; `E_cert_eq` supplies the residual; the column root is solved before
  the row inequality; `E_col` and `E_row` are exported only afterward.
- Entry/first-update stress: at q=0 a finite transient has nonzero `R_M^raw`
  (or `bar R_M` after orientation) and the bounds reduce to `O(r tau_r)`; at
  an exact fixed point the residual is zero and all
  coefficient errors vanish.  No zero-interference claim is used to erase a
  finite transient.
- Baseline preserved: the exact orthogonal stationary representative is the
  exact CP factor and remains a zero-residual active target.
- Producer-consumer provenance: `step_004b -> step_005 -> step_006`; outputs
  `E_col`, `E_row_residual`, and `E_row` feed `step_007` and `step_008`.

### `step_007`: best-scalar target transfer

- Claim class: target-metric initialization bridge; theorem role: transfers the
  selected unit directions and observable amplitudes to the exact CP quotient
  target.
- Mechanism source: the `E_col` and `E_row` dual-coordinate bounds from
  `step_006`, the unit-norm identity, and a direct tensor expansion in the
  realized factor basis.  The source and consumed target are identical; only
  a positive equal-norm gauge and a proof-only permutation/sign convention are
  applied.  Define the quotient coordinates before any numerical comparison:
  for a raw active column `x_{M,j}`, let
  `alpha_{M,j}=||x_{M,j}||_2/lambda_j^(1/3)-1`; the amplitude coordinate is
  relative, not absolute.  Set
  `norm(e)_Q=max{direction column error, dual row/column l1 error,
  max|alpha_{M,j}|}` after the product-one equal-norm gauge.
- Binding sign/scalar convention: the direction columns in this step are the
  barred representatives from `step_005`, and
  `bar theta_j=<T,bar p_{U,j} otimes bar p_{V,j} otimes bar p_{W,j}>=|theta_j|`.
  The raw `theta_j` is used only to choose the sign already carried by the
  initialized z column; no later amplitude estimate mixes raw and barred
  scalars.
- Source-to-claim adequacy: put `omega=q_*^2+r tau_r`.  The dual equations,
  `||E_M||_{col,1}<=64 omega`, and the diagonal unit-norm identity give, for
  every selected target j,
  `|bar theta_j/lambda_j-1| <= 64 omega` and
  `max_M ||bar p_{M,j}-u_{M,j}||_2 <= 64 omega`.  The realized tensor norm has the
  explicit lower bound
  `||T||_F^2 >= r lambda_min^2(1-q_*^2)` from the Khatri-Rao floor, while its
  upper bound is `r lambda_max^2(1+q_*^2)`.  The scalar ratio bound is relative
  to `lambda_j`, so the cube-root inequality
  `|(1+x)^(1/3)-1| <= 2|x|` for `|x|<=1/2` gives the raw amplitude error
  `| ||x_{M,j}||_2-lambda_j^(1/3) | <= 128 omega lambda_j^(1/3)`.
  Dividing by the target amplitude therefore gives
  `|alpha_{M,j}|<=128 omega` with no `kappa_0` factor.  Absolute raw norms may
  still carry polynomial `kappa_0` in implementation cost, but that scale is
  not used in the quotient target transfer.
- Residual-to-target adequacy: expand the initialized tensor into diagonal
  scalar error, three one-factor direction errors, two-factor Gram leakage,
  and the cubic remainder.  The row/column Hadamard bounds give respectively
  `128 omega`, `192 omega`, `192 omega`, and `64 omega` times
  `lambda_max sqrt(r(1+q_*^2))`; dividing by the displayed lower bound and
  using `lambda_max/lambda_min<=1.01` yields the concrete relative
  quotient/tensor constant `C_best=512`, independent of `kappa_0`.  Thus the
  original Frobenius metric, not a surrogate, satisfies
  `norm(e_best)_Q <= 512 omega` and
  `||T-T_init||_F/||T||_F <= 512 omega`.
- Numerical specialization: `omega <= 1.0001 q_*^2 < 6.0e-8`, hence
  `C_best omega < 3.1e-5`.  This is below
  `rho_ALS/4 = 1/4096 ~= 2.44e-4` for the explicit tube in `step_008`.
- Key positive/control term: nonzero realized column norms and near-balanced
  weights.  Opposing terms are sign, scalar, pair leakage, and cubic
  remainders, each controlled at `omega` in the displayed decomposition.
- Accumulation/scope: one finite tensor expansion; no recursive forcing.
- Obligation locality: `step-local`.
- Noncircular closure: `step_006` produces all direction and row/column
  controls before this scalar transfer; no basin fact is used to derive them.
- Entry/first-update stress: at the exact orthogonal CP state,
  `theta_j=lambda_j` and the balanced map is exactly the target.  A zero
  `theta` branch was excluded by `step_005`; if the norm source vanished,
  cube-root balancing would be undefined, which `E_sm` excludes.
- Baseline preserved: yes.
- Producer-consumer provenance: `step_006 -> step_007 -> step_008`.

### `step_008`: quotient basin and cyclic contraction

- Claim class: nonsingular active normal equations, quotient-Hessian kernel,
  basin entry, and linear convergence; theorem role: terminal theorem closure.
- Mechanism source: realized Khatri-Rao Gram floor from `step_001`, the
  explicit `E_best` transfer from `step_007`, and direct current-notation
  normal-equation estimates.  Uschmajew, DOI `10.1137/110843587`, Assumption
  1, Lemma 3.2, and Theorems 3.3 and 3.5 is used only for the quotient
  interpretation and the local block-Gauss--Seidel conclusion.  It does not
  supply a numeric radius, random entry, or the zero-padding reduction.
- Active rank-r equivalence: write the rank-k Khatri-Rao design as
  `[K_active,0]`.  Its Gram is block diagonal with active block
  `K_active^T K_active` and a zero block.  The prescribed Moore--Penrose
  selection maps the zero block to zero and is exactly the ordinary inverse
  update on the active block.  Thus the theorem-facing dynamics are the
  active rank-r map while the output still has rank at most k.
- Current-notation inverse and kernel: in the equal-norm quotient chart, each
  active pair Gram is `H_{M'}(e) circ H_{M''}(e)`.  The static floor is
  `1-q_*^2`; for `norm(e)_Q <= rho_ALS:=1/1024`, direct Hadamard perturbation
  gives difference at most `1/32`, so the inverse floor is `31/32` and its
  operator norm is at most `32/31`.  Dual-basis projection of the exact
  differential shows that the only Jacobian kernel directions are
  componentwise scalings with three log-scale increments summing to zero.
  This discharges Uschmajew Assumption 1 in the branch's Euclidean and exact
  CP conventions.
- Per-mode update bound: for an active mode update `Phi_M`, the direct inverse
  identity and the Hadamard product expansion give
  `||Phi_M(e)-Phi_M(e')||_Q <=
  [8q_*+16(norm(e)_Q+norm(e')_Q)] norm(e-e')_Q`.
  The equal-norm gauge changes by at most `4 norm(e-e')_Q`; this factor is
  already included in the constant 16.  At the declared tube the bracket is
  at most `8/4096+16/512 < 1/16`.
- Cyclic composition: applying the three per-mode bounds in the fixed order
  and retaining every cross-mode difference gives
  `||Phi_cyc(e)-Phi_cyc(e')||_Q <= (3/16) norm(e-e')_Q < 1/4
  norm(e-e')_Q`.  The exact target is a fixed point, so there is no additive
  `q_*^2` floor.  `E_best` gives
  `norm(e_best)_Q <= 512 omega < rho_ALS/4`, so the tube is invariant.
- Residual-to-target adequacy: the quotient norm is defined on the same raw
  factors and componentwise scaling class as the original rank-k loss.  The
  balanced-chart Frobenius equivalence is written in relative amplitude
  coordinates: its constants are at most `8 Gamma^2(1+q_*^2)/(1-q_*^2)`,
  hence at most 9 under `Gamma<=1.01`.  The absolute raw-factor scales cancel
  against `lambda_j^(1/3)` in `alpha_{M,j}`; `kappa_0` remains only in the
  arithmetic/runtime cost and not in the basin radius or `C_best` target
  transfer.  Therefore contraction in `norm(e)_Q` implies the original
  relative residual bound uniformly over the allowed polynomial scale regime.
- Key positive/control term: Khatri-Rao spectral floor and quotient Hessian
  positive margin.  Opposing terms are inverse perturbations, cross-mode
  coefficient leakage, gauge changes, and Taylor remainders; the displayed
  per-mode inequality bounds each by the tube radius and `q_*`.
- Closure/dominance relation: inverse branch remains ordinary inverse,
  per-mode bracket is below `1/16`, and the three-mode composition is below
  `1/4`; hence the tube is invariant and errors contract geometrically.
- Accumulation/scope: all active sweeps use the same invariant tube and a
  contractive recurrence; no forcing accumulates because the exact target is a
  fixed point.  Zero-padded inactive columns are projected to zero by the
  prescribed algorithm and do not enter the active normal equations.
- Obligation locality: `step-local` after the direct wrapper exposes source
  mapping, radius, inverse, kernel, per-mode, and cyclic interfaces.
- Noncircular closure: `step_007` produces basin entry; `step_008` proves the
  inverse, quotient kernel, zero-padding equivalence, tube preservation, and
  contraction; `step_009` consumes these outputs for stopping.
- Entry/first-update stress: at the exact CP point the first active update is
  exactly itself; at an allowed near-boundary state in the tube the inverse
  floor remains positive.  If the Khatri-Rao source vanished, the quotient
  Hessian could be singular beyond scaling, so the static floor is checked
  before the local claim.
- Baseline preserved: exact orthogonal factors are fixed and arbitrary
  accuracy remains possible.
- Producer-consumer provenance: `step_001, step_007 -> step_008 -> step_009`.

### `step_009`: stopping and relative-error conversion

- Claim class: explicit relative-error stopping; theorem role: turns quotient
  contraction into the original Frobenius stopping rule.
- Mechanism source: the `1/4` quotient contraction and relative residual
  equivalence in the balanced chart.
- Source-to-claim adequacy: the balanced-chart equivalence is bounded by
  `C_res=8 kappa_0^2`.  Choose
  `m >= ceil(log(8 kappa_0^2/epsilon)/log 4)` active sweeps; the residual is
  at most `8 kappa_0^2 4^(-m)` times `||T||_F`.  This is an explicit
  numerical-error bridge, not a hidden stopping condition.  Every active and
  stopping cost is polynomial in the exposed variables.
- Residual-to-target adequacy: the residual is measured in the original
  Frobenius norm, and the balanced chart equivalence has constants depending
  only polynomially on `kappa_0`.
- Accumulation/scope: finite stopping time; no all-time probabilistic upgrade
  is claimed.
- Obligation locality: `step-local`.
- Noncircular closure: contraction is produced before stopping; no restart
  event is used by this step.
- Entry/first-update stress: in the exact baseline, starting at the exact
  factors gives residual zero and the stopping rule terminates for every
  positive `epsilon`.
- Baseline preserved: yes, including the zero residual limit.
- Producer-consumer provenance: `step_008 -> step_009 -> step_010`.

### `step_010`: restart amplification and runtime

- Claim class: conditional confidence conversion and polynomial runtime; theorem
  role: upgrades positive one-run success to the requested initialization
  probability.
- Mechanism source: independent full-run raw Gaussian triples from
  `assump:random-initialization`, conditional on the fixed tensor, together
  with the one-run lower bound `p_0 >= 1/2` from `step_003` and `step_009`.
- Source-to-claim adequacy: `Pr(all J runs fail | E_sm) <= (1-p_0)^J`; choose
  `J >= log(delta_init)/log(1-p_0)`.  Proposal contractions, scores, graph
  edges, active solves, unsuccessful runs, and restarts are all charged.  A
  conservative one-run bound is
  `T_run <= C[k(L_burn+L_cert)n^3+k n^3+k^2 n+
  r(n^2+r^2)m]`, so
  `T_total <= (1+C_rep log(1/delta_init)) T_run`; no confidence factor is
  inserted into `k`.
- Residual-to-target adequacy: the returned run is selected by the original
  rank-`k` Frobenius residual, so the consumed target is unchanged.
- Key positive/control term: independent restart trials; the only opposing
  term is finite run failure.
- Accumulation/scope: finite independent product, not an all-time event.
- Obligation locality: `step-local`.
- Noncircular closure: `step_003` and `step_009` produce per-run success
  before this conversion.
- Entry/first-update stress: `J=1` is allowed for large failure tolerance;
  the exact baseline still succeeds on its first exact run.
- Baseline preserved: yes.
- Producer-consumer provenance: `step_003, step_009 -> step_010 -> theorem`.

### `step_011`: exact orthogonal baseline bridge

- Claim class: baseline invariance and exact/noiseless specialization; theorem
  role: verifies that the theorem does not replace the zero-error conclusion
  by an error-floor surrogate.
- Mechanism source: direct substitution into the exact simultaneous map and
  exact CP normal equations.  At a stationary representative, `zeta=0` and
  the oriented residual `bar R_M=0`, so active cyclic ALS leaves the exact
  factors fixed.
- Source-to-claim adequacy: the map gives `(A+,B+,C+)=(BC,AC,AB)`, and the
  exact CP factors solve every active least-squares normal equation because
  the Khatri-Rao Gram is the identity.  Thus arbitrary positive `epsilon` is
  allowed.
- Residual-to-target adequacy: produced and consumed tensors are identical;
  no limiting surrogate is used.
- Key positive/control term: exact diagonal coefficient; no opposing defect.
- Accumulation/scope: stationary exact state, so no accumulated error.
- Obligation locality: `step-local`.
- Noncircular closure: direct baseline substitution, independent of the noisy
  row bridge.
- Entry/first-update stress: the exact fixed point is unchanged on the first
  update; finite transients are not claimed to have zero `R_M^raw` (or
  `bar R_M` after orientation).
- Baseline preserved: yes, explicitly.
- Producer-consumer provenance: `step_004, step_008, step_009 -> step_011`.
- Rho-zero specialization clause: this row is a deterministic extension of
  the positive-rho theorem, as stated in `Formalized Goal`.  It sets the
  perturbations to zero, keeps the product-preserving sign gauge, traces a
  finite transient with nonzero `R_M^raw`, and then evaluates the exact
  stationary state with `bar R_M=0`; no probability statement at `rho=0` is
  claimed.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm`: norms, realized Gram rows, weights, Khatri-Rao floors | `step_001` | base scale, base Gram slack, base weight slack, Gaussian perturbation, smoothing margin | linear, quadratic, and normalization terms separately controlled; no persistent term | same realized factors and metric | separate margin inequalities plus finite union; Schur product and Gershgorin | `q_*`, `1.01`, and `(2 kappa_0)^(-1)` | `step_002`, `step_003`, `step_004`, `step_008` | None |
| `E_win`: one target window and competitor pair event | `step_002` | independent raw Gaussian coordinates, conditional covariance from `E_sm` | target tail controlled; competitor pair tails controlled by `beta_*`; no hidden event | coordinates are exactly those used by `R_0,S_0` | dyadic product tail and finite small-r universal minimum | `a_*`, `b_*`, `c_all` | `step_003` | None |
| `E_cov`: all-target coverage | `step_003` | `k`, `p_win`, independent slots | finite slot misses only | proof labels are removed before algorithm selection | `k p_win >= 8 log r`, union bound | `C_rank >= 16/c_all` | `step_004`, `step_005`, `step_010` | None |
| `E_RS`: ratios, pair mass, and denominator invariant | `step_004` | `E_sm`, `E_win`, old-state Jacobi formulas | fixed Gram and weight leakage controlled; no unbounded forcing | ratios are target-relative in the realized basis | invariant interval and positive denominator | `q_*`, `Gamma <= 1.01`, `R_0 <= 19/20` | `step_004b` | None |
| `E_chart`: named target chart, fixed point, and norm conversion | `step_004` | `R_tb`, unsquared ratios, Gram row mass, `L_chart` | finite transient and persistent q forcing separated | chart error is ambient mode error, distinct from selected coefficient error | self-map and Banach contraction with separate ambient conversion | `chi_chart=1/128`, `L_chart<1/4`, `L_cert>=ceil(log(4/tau_r)/log4)+1` | `step_004b`, `step_005` (covered-slot tightening) | None |
| `E_chart_l1`: covered-trajectory dual mass | `step_004` | `S_tb`, dual basis, denominator margin | ratio mass is l1 by definition; no sqrt(r) conversion is used | covered-slot chart tightening only; it is not a global all-certified assumption | `a_(t+1)<=2(Gamma S_t+q)/(1-Gamma qR_t)`, `a_tb<=1/1024` | `a_chart=1/512` | `step_004b` (covered-slot tightening) | None |
| `E_cert`: stored state with `zeta <= tau_r` | `step_004` | chart contraction and finite certification horizon | successive displacement is the only residual; geometric decay controls it | stored state is itself compared with its own same-state contraction | geometric displacement decay before export | `zeta_t<=3(1/4)^(t-tb)<=tau_r` | `step_004b`, `step_005` | None |
| `E_cert_eq`: oriented per-state certificate equation | `step_004b` | `E_cert`, nonzero contractions, projective signs | ambient l2 residual has unknown sign but exact per-column budget `d tau_r` | compares state only to its same-state contraction; no target claim yet | raw right-sided `Sigma_M`, then barred post-score equation | `d_M>0`, `norm(R_M^raw(:,a))_2<=d_M tau_r` | `step_005`, `step_006` | None |
| `E_cert_tail`: global no-label support/tail ledger | `step_004b` | `E_cert_eq`, `E_sm`, unit normalization, scale-free `mu`, `eta_G`, `eta_N`, `eta_C`, `hat alpha_M` | low-score, singleton-tail, multi-support, and threshold-straddling cases are all finite and sign-agnostic; certificate l2 charge is converted once by `sqrt(r)tau_r` | no target chart or label is used; score and directions remain in the realized basis | coefficient-vector Gram terms `2q_*+q_*^2`, exact norm-scalar cancellation with `eta_N=5q_*^2`, `0.69<=hat alpha_M<=1.03`, retained-floor ratio product `104eta_0`, reciprocal profile `144eta_0`, `max tail<=2.02eta_0+eta_rel^2/(4vartheta_*^2)`, and `tail_score<=16eta_0` | `s_gate=0.7`, `vartheta=1/8`, `vartheta_*>1/16`, `a_cert<1/512`, straddle score `<0.17` | `step_005` | None |
| `E_support_wt`: weighted all-certified support and score classifier | `step_005` | `E_cert_eq`, `E_cert_tail`, `E_sm`, weighted pair products | Gram and certificate defects are perturbative; `Gamma-1` remains in `diag(lambda)` and is not hidden in `q_*` | exact weighted support score and the same realized-factor direction metric | threshold ledger, `tail_score<=16eta_0`, profile `144eta_0`, and direct `lambda_max/sqrt(m)` score bound | `s_mix*1.01<0.794`, `s_->0.953`, `s_+<1.047`, exact `S_I` boundary | `E_cluster`, `E_gauge`, `step_006`, `step_007` | None |
| `E_gauge`: post-score oriented columns and positive scalar | `step_005` | `E_support_wt`, theta lower bound, certificate signs, raw setting state | sign is discrete; theta-negative branch is handled before product-one gauge | raw initialized tensor is unchanged; `bar theta=abs(theta)` is proof-only | absorb raw right signs into proof-only `bar K` after `bar P_W=sign(theta)P_W^raw`; then product-one gamma | `abs(theta)>0.8 lambda_min` | `step_006`, `step_007` | None |
| `E_cluster`: one observable component cluster per target | `step_005` | `E_cert_tail`, `E_support_wt`, all certified states, `E_cert_eq`, scores, modewise correlations | Gram, singleton tail, and certificate defects controlled; no unweighted profile claim is used | graph uses the same direction metric as the target chart | weighted score/graph inequalities precede tie breaking, then proof-only barred copies are formed | weighted `0.85` gap, cross-target `<1/32`, `1-64 q_*` edge threshold | `step_006` | None |
| `E_col`: selected dual coefficient column mass | `step_006` | `E_cert_eq`, `E_cert_tail`, `E_support_wt`, `E_cluster` chart/denominator, dual Gram inverse | weighted pair products, Gram leakage, and `r tau_r` residual all controlled | dual coefficients transfer directly to realized target factors | explicit small-root inequality and `chi_-<=32 omega` | `31/32` denominator and `q_*` | `step_007` row closure, `step_008` | None |
| `E_row_residual`: per-entry and induced residual masses | `step_006` | dual row l2 norm, `D/lambda` bounds, ambient `d tau_r` certificate | per-entry residual is `<=2 tau_r`; row/column sums are each `<=2r tau_r`, not `r^2 tau_r` | exact projected residual transfer in target dual basis | sum per-entry bound separately over one index | `H^-1` floor and `33/32` contraction ratio | `E_row`, `step_007`, `step_008` | None |
| `E_row`: selected dual coefficient row mass | `step_006` | `E_col`, Gram row mass, same-state residual row mass | persistent sign is unknown but absolute row sum is finite; certificate budget is `r tau_r` | exact target-basis row mass is the consumed basin interface | explicit row inequality with self coefficient below `1/8` | `q_*=1/4096`, `eta_row<=128 omega` | `step_007`, `step_008` | None |
| `E_best`: best-scalar balanced initialization | `step_007` | `E_col`, `E_row`, `E_gauge`, unit norms, score scalar `bar theta` | direction, relative amplitude, Gram leakage, and quadratic tensor terms controlled | same realized tensor and Frobenius metric; no surrogate | four-term residual decomposition in relative quotient coordinates and `C_best=512` | `512 omega<rho_ALS/4`, independent of `kappa_0` | `step_008` | None |
| `E_quotient`: relative-amplitude quotient norm | `step_007` | product-one equal-norm gauge, relative amplitudes `alpha`, `E_col`, `E_row` | absolute `kappa_0` scale cancels after division by `lambda_j^(1/3)` | exact CP scaling quotient and original metric share the same target | relative amplitude coordinate and `Gamma<=1.01` bound | `norm(e)_Q` definition, no hidden condition number | `step_008`, `step_009` | None |
| `E_basin`: active inverse and quotient tube | `step_008` | Khatri-Rao floor, dual kernel, normal-equation derivatives | inverse, gauge, and Taylor defects scale with tube radius | raw factors are mapped to the exact CP quotient by equal-norm gauge | per-mode `<1/16`, cyclic `<1/4`, zero padding exact | `rho_ALS=1/1024` | `step_009` | None |
| `E_stop`: arbitrary accuracy | `step_009` | contraction, residual equivalence, active cost | numerical residual controlled geometrically; no confidence term in rank | residual is original relative Frobenius residual | `m>=ceil(log(8 kappa_0^2/epsilon)/log4)` | `C_res=8 kappa_0^2` | `step_010`, final theorem | None |
| `E_restart`: conditional confidence and total runtime | `step_010` | `p_0`, independent restarts, per-run operation count | finite run failures only; no unlisted condition number | returned run is selected by the original residual | `(1-p_0)^J <= delta_init` and explicit cost sum | `p_0>=1/2` | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | primitive assumptions through `step_001` | `step_002`, `step_003`, `step_004`, `step_008` | fixed-instance geometry and conditioning | assumptions -> `step_001` -> each consumer | derived | None |
| `E_win` and `p_win` | `step_002` | `step_003` | per-slot coverage rate | `E_sm` -> `step_002` -> `step_003` | derived | None |
| `E_cov` | `step_003` | `step_004`, `step_005`, `step_010` | one-run success source | `E_sm` -> `E_win` -> `step_003` -> consumers | derived | None |
| `E_RS` and `E_chart` | `step_004` | `step_004b`, `step_005` (covered slots) | chart, certification, and covered-slot activation | `E_sm,E_win` -> `step_004` -> `E_RS,E_chart` -> covered consumers | derived | None |
| `E_chart_l1` | `step_004` | `step_004b` | covered-trajectory l1 tightening only | `E_sm,E_win` -> `step_004` -> `E_chart_l1` -> covered-slot tightening | derived | None |
| `E_cert` | `step_004` | `step_004b`, `step_005` | legal stored-state producer | `E_RS,E_chart` -> `E_cert` -> consumers | derived | None |
| `E_cert_eq` | `step_004b` | `step_005`, `step_006` | same-state oriented normal-equation source | `E_cert` -> `step_004b` -> `E_cert_eq` -> consumers | derived | None |
| `E_cert_tail` | `step_004b` | `step_005` | global no-label low/singleton/multi-support tail ledger for every certified slot, including finite-support residual conversion, coefficient-vector Gram budget, exact scalar normalization cancellation, and denominator-aware profile | `E_cert_eq,E_sm` -> coefficient expansion `eta_G=2q_*+q_*^2` -> scalar remainder `eta_N=5q_*^2` -> `sqrt(r)tau_r` conversion -> ratio product `104eta_0` -> `E_cert_tail` -> `step_005` | derived | None |
| `E_support_wt` | `step_005` | `E_cluster`, `E_gauge`, `step_006`, `step_007` | weighted support branch, exact weighted stationary score, profile `144eta_0`, and numerical score margins | `E_cert_eq,E_cert_tail,E_sm` -> weighted pair equations -> `E_support_wt` -> consumers | derived | None |
| `E_gauge` | `step_005` | `step_006`, `step_007` | post-score product-preserving orientation and positive scalar | `E_cert_eq` -> `E_support_wt` -> `E_gauge` -> consumers | derived | None |
| `E_cluster` | `step_005` | `step_006` | data-only representative assignment and chart margins | `E_cert_eq` -> `E_support_wt` -> score/graph proof -> `E_cluster` -> `step_006` | derived | None |
| `E_col`, `E_row_residual`, and `E_row` | `step_006` | `step_007`, `step_008` | same-target basin bridge | `E_cluster,E_cert_tail,E_cert_eq` -> column root -> per-entry residual -> row absorption -> consumers | derived | None |
| `E_best` and `E_quotient` | `step_007` | `step_008`, `step_009` | balanced active initialization and relative quotient norm | `E_col,E_row,E_gauge` -> `step_007` -> `E_best,E_quotient` -> consumers | derived | None |
| `E_basin` and quotient contraction | `step_008` | `step_009` | arbitrary-accuracy active refinement | `E_sm,E_best` -> `step_008` -> `step_009` | derived | None |
| `E_stop` | `step_009` | final assembly | public accuracy and stopping theorem | `E_basin` -> `step_009` -> `E_stop` | derived | None |
| `E_restart` | `step_010` | final assembly | public confidence and runtime theorem | `E_cov,E_stop` -> `step_010` -> theorem | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | On an event of probability at least `1-delta_sm`, prove realized norm retention, `q_real <= q_*`, `Gamma <= 1.01`, and every cyclic Khatri-Rao Gram floor `1-q_*^2`, with the three perturbation scales exposed separately. | None | `assump:base-scale`, `assump:cumulative-gram`, `assump:base-weight-balance`, `assump:gaussian-smoothing`, `assump:smoothing-margin` (primitive) | normalized Gaussian Gram perturbation and row/union bookkeeping | Gaussian concentration, normalization expansion, Schur product, Gershgorin | `E_sm` | Smoothed-instance geometry objective; explicit `n,r,kappa_0,rho,delta_sm` dependence and probability conversion | PENDING |
| `step_002` | For each target, prove the jointly observable three-mode window and competitor pair event has probability between universal multiples of `r^(-5/3)(log r)^(-3/2)`. | `step_001` | `assump:random-initialization` (primitive), `E_sm` (derived) | correlated competitor coordinates and product tails | Gaussian regression, dyadic product-tail comparison, finite-small-r minimum | `E_win`, `p_win` | Window coverage objective; fixed-horizon per-slot probability with no confidence hidden in rank | PENDING |
| `step_003` | Show `k p_win >= 8 log r`, all targets are covered with probability at least `1/2`, and target labels are used only in the proof. | `step_002` | `assump:subquadratic-rank`, `assump:random-initialization` (primitive), `E_win` (derived) | coupon bound without cross-target independence | independent-slot binomial miss bound and union bound | `E_cov`, one-run probability `p_0` | Window/coverage objective; `k=Theta(r^(5/3)(log r)^(5/2))` independent of `delta_init` | PENDING |
| `step_004` | Prove the displayed simultaneous `R,S` recurrences, denominator persistence, the named `chi_chart=1/128` projective chart and fixed point after burn-in, the ratio-l1 variable `a_t`, and `zeta <= tau_r` within `L_cert=O(log r)` sweeps for every covered slot. | `step_001`, `step_003` | `E_sm`, `E_cov` (derived), `assump:subquadratic-rank` (primitive) | first-update activation, fixed nonzero Gram forcing, ambient/projective norm conversion, chart self-map | exact old-state contraction expansion, invariant interval, Banach chart contraction, dual l1 recurrence | `E_RS`, `E_chart`, `E_chart_l1`, `E_cert` | Fixed-horizon objective over `L_burn+L_cert`; explicit `tau_r`, `a_t`, `L_chart`, and horizon choice | PENDING |
| `step_004b` | For every certified slot, before labels or clustering, derive the raw right-sided column sign equation `P_M^raw D_M=G_M K_M^raw Sigma_M+R_M^raw` with `norm(R_M^raw(:,a))_2 <= d_M(a) tau_r`, split coefficient-vector Gram, scalar normalization, and certificate defects, state the proof-only barred post-score equation, and emit the global threshold/tail ledger. | `step_004` | `E_cert` (derived), `assump:random-initialization` (primitive procedure) | signed equation, exact `(Hc) circ (Hc)` coefficient expansion, scalar cancellation, finite-support l2-to-l1 conversion, and tail projection without assuming target distance | exact multilinearity, definition of `zeta`, weighted same-state wrapper, operator/Cauchy bounds, retained-floor ratio chain, and threshold ledger | `E_cert_eq`, `E_cert_tail` | Certificate objective; finite per-column residual, explicit `sqrt(r)tau_r` charge, no-target-bias claim, and no-label all-certified support scope | PENDING |
| `step_005` | Using `E_cert_eq` and the global `E_cert_tail` ledger, retain `diag(lambda)` in the pair equations and prove the weighted support/score classifier, the direct `m>=2` score bound, theta lower bound, sign/gauge consistency, component/mixture gap, graph separation, and exactly `r` observable clusters with per-mode dual l1 chart and denominator margins. | `step_004`, `step_004b` | `E_sm`, `E_chart`, `E_cert_tail`, `E_cert_eq` (derived); `E_chart_l1` only as covered-slot tightening | all-certified-state support classification, threshold-straddling states, unequal-weight stationary profiles, and negative/zero scores | explicit `vartheta` threshold, `vartheta_*` floor, `a_cert` tail, coefficient-vector Gram budget, exact scalar cancellation, denominator profile `144eta_0`, exact `S_I`, and perturbation inequalities | `E_support_wt`, `E_cluster`, `E_gauge`, target permutation, `s_comp`, denominator margins | Structural explicit objective; constants `1/8,1/16,7,16,68,72,96,104,144,160,0.85`, `s_mix*1.01<0.794`, and graph threshold | PENDING |
| `step_006` | From the selected-state equation, close the dual-coordinate column bootstrap by the explicit quadratic small-root inequality; derive per-entry projected residual `<=2 tau_r`, induced row/column residual masses `<=2r tau_r`, then close induced coefficient row and column l1 masses `O(q_*^2+r tau_r)`. | `step_004`, `step_005` | `E_sm`, `E_cert_tail`, `E_support_wt`, `E_cluster`, `E_cert_eq` (derived) | diagonal normalization, dual projection, small-root selection, per-entry residual conversion, spatial row closure | exact dual-basis algebra, unit-norm identity, Hadamard l1 inequalities, root/absorption arithmetic | `E_col`, `E_row_residual`, `E_row` | Selected-state structural objective; explicit `omega`, `chi_-`, per-entry `tau_r`, and `eta_row` scales | PENDING |
| `step_007` | Prove the observable best-scalar initialization is within `C_best=512` times `omega=q_*^2+r tau_r` in the explicitly defined relative-amplitude quotient norm, give the four-class residual decomposition and target norm lower bound, and show the kappa factor cancels. | `step_005`, `step_006` | `E_sm`, `E_col`, `E_row`, `E_gauge` (derived), `assump:base-weight-balance` (primitive) | amplitude/sign synchronization and target-metric transfer | tensor expansion, product-one balanced gauge, relative cube-root map, Khatri-Rao norm comparison | `E_best`, `E_quotient` | Basin-entry objective; `512 omega < rho_ALS/4` independent of `kappa_0` | PENDING |
| `step_008` | Establish the quotient Hessian kernel, explicit active rank-r inverse branch and zero-padding equivalence, and a tube `norm(e)_Q <= rho_ALS=1/1024` on which cyclic CP-ALS is `<1/4`-contractive. | `step_001`, `step_007` | `E_sm`, `E_best`, `E_quotient` (derived), `assump:base-scale` (primitive) | source convention mapping, inverse floor, per-mode and cyclic composition | dual-basis kernel proof; direct normal-equation inverse perturbation; Uschmajew DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5 | `E_basin`, quotient contraction `nu<=1/4` | Terminal structural/regularity objective; explicit `rho_ALS`, inverse, per-mode, cyclic, and gauge constants | PENDING |
| `step_009` | Iterate active ALS to relative residual `epsilon` in `m=O(log(1/epsilon))` sweeps, while inactive columns remain zero and the residual metric is the original rank-`k` Frobenius metric. | `step_008` | `E_basin`, `assump:accuracy-confidence` (primitive) | residual equivalence and stopping-time accounting | contraction recurrence and balanced-chart norm comparison | `E_stop`, per-run runtime | Numerical-error explicit objective with exact stopping inequality | PENDING |
| `step_010` | Amplify one-run success to `1-delta_init` with `J=O(log(1/delta_init))` independent restarts and include proposal, filtering, active refinement, unsuccessful-run, and restart costs. | `step_003`, `step_009` | `assump:random-initialization`, `assump:accuracy-confidence` (primitive) | nested probability and no confidence dependence in rank | geometric restart bound and explicit operation count | conditional success and total runtime | Confidence-explicit objective; probability conversion and polynomial runtime bridge | PENDING |
| `step_011` | Specialize the theorem to the deterministic rho-zero orthogonal equal-weight baseline, retaining finite transient certificate residual but verifying zero residual at stationary representatives and arbitrary-accuracy zero-limit. | `step_004`, `step_008`, `step_009` | deterministic limiting specialization of `E_sm`, `E_basin` (derived) | preserving baseline while respecting the positive-rho primitive domain | direct map calculation and exact CP fixed-point substitution | baseline reduction bridge | Baseline invariance objective; no error floor as `epsilon` decreases | PENDING |

## Dependency Notes

The graph is acyclic: static instance outputs precede initialization outputs;
coverage precedes trajectory conclusions; chart construction precedes the
pre-cluster certificate producer; that producer emits the global `E_cert_tail`
ledger before the weighted all-certified-state classifier and `E_cluster`;
classification precedes
selected coefficient closure; and
the selected bridge precedes local basin, stopping, and restart.  The
proof-only target permutation and product-preserving sign synchronization are
created in `step_005` and are never algorithmic inputs.  Every generated
output has a producer before its first consumer.

The exact same-state equation and global tail ledger are the noncircular
interfaces for `step_006`:
the certificate is evaluated in `step_004b` before the state is selected,
`R_M^raw` (and then `bar R_M`) is formed from that stored state; `E_cert_tail`
is emitted for every certified slot without `E_cov` or labels.  The coefficient
source is now the exact vector identity
`(H_{M'}c_{M'})circ(H_{M''}c_{M''})`, with the two Cauchy first-order terms,
the `q_*^2` cross term, and the scalar `hat alpha_M` cancellation exposed
before `E_cert_tail` is exported.  Thus the `E_cert_tail` flow row is derived,
not a hidden matrix-Hadamard premise, and `E_col` is closed before the
per-entry `E_row_residual` and induced `E_row`.  Therefore the row bound cannot
silently assume the final basin or a post-update object.  The product-one
`E_gauge` is produced only after the theta lower bound, and the relative
amplitude `E_quotient` is produced only after that gauge.
The local ALS source is likewise consumed only after the branch-local tube,
source convention, kernel, and residual-to-target bridge have been exposed.

## Blockers

None at sketch level.  The hard obligations are localized to `step_004`,
`step_004b`, `step_005`, `step_006`, `step_007`, and `step_008`; each now has a
stated mechanism source, raw-control interface, boundary test, and
same-setting proof route.  In particular, a finite q-zero certification
residual is retained rather than silently set to zero; the all-certified
threshold/tail alternatives have explicit raw controls and no covered-chart
premise; and the exact
zero-residual claim is deferred to `step_011` under the explicit deterministic
limiting clause.
