# Proof Sketch

## Formalized Setting

This is proof-sketch attempt 2 for `perspective_1/idea_5`, rerun in
`revise_sketch` mode after `proof_history/sketch_002/proof_sketch_review.md`.
The formalized setting is `perspective_1/idea_5/setting.md`; all primitive
assumptions are cited below by their stable ids.  The tensor is

\[
 T=\sum_{j=1}^r \lambda_j u_j\otimes v_j\otimes w_j,
\]

with normalized realized factors and `q_real` and `Gamma` as defined there.
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

- Sketch attempt: 2
- Retry mode: revise_sketch
- Triggering review: `proof_history/sketch_002/proof_sketch_review.md`
- Progress type: `conditional`
- Target rank: `U(r) = Theta(r^(5/3) (log r)^(5/2))`, so beta equals `2/3`
- Baseline obligation: preserve the exact orthogonal equal-weight map and
  zero-residual limit; a finite certification residual is allowed only as an
  intermediate error and is not substituted for the baseline conclusion.
- Attempt-2 repair summary: a pre-cluster per-state oriented certificate
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
all-certified-state support/score/graph classification -> selected
same-state coefficient bridge -> best-scalar transfer -> quotient basin ->
cyclic ALS -> restart and rate specialization`.

The crucial repair relative to `idea_4` is local to the selected-state
interface.  For a certified state, `K_M`, `D_M`, and `P_M` are all computed
from the same state.  After synchronizing projective signs, certification
gives the exact equation

\[
 P_M D_M = G_M K_M + R_M,
 \qquad
 \|R_M(:,a)\|_2\le D_M(a,a)\tau_r .
\]

No post-update pair matrix is paired with pre-update coefficients.  The finite
orthogonal transient therefore remains in `R_M`; only a genuinely stationary
state has `R_M=0`.  The pre-cluster producer is called `step_004b` below and
has no target label or clustering input.

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
   - Hidden constants may depend on: universal numerical constants and at most
     polynomially on `kappa_0`; they may not depend on an unlisted generated
     condition number.
   - Fixed quantities: `q_*`, the target chart thresholds, and the quotient
     tube radius selected in `step_009`.
   - Probability mode: deterministic conditional on the good instance and
     the one-run coverage event, followed by conditional restart amplification.
   - Horizon mode: all active ALS sweeps after basin entry.
   - Norm mode: quotient direction/amplitude norm, row and column l1 mass,
     and relative Frobenius residual.
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
- `E_chart` (a named target chart, fixed point, and ambient norm conversion)
  and `E_cert` (a stored state with `zeta <= tau_r`) are derived by the chart
  contraction in `step_004`, not assumed as initialization properties.
- `E_cert_eq` (the oriented same-state equation, positive contraction norms,
  and projected residual) is derived for every certified slot by `step_004b`
  before any score or cluster selection.
- `E_cluster` (one data-only cluster per target and a per-mode chart radius,
  denominator, and score margin) is derived from all certified states in
  `step_005` using `E_cert_eq`.
- `E_col` and `E_row` (selected dual coefficient masses) are derived by the
  same-state equation in `step_006`; the small-root column bootstrap is closed
  only after `step_005` supplies the chart radius and denominator margin.
- `E_basin` and the active quotient contraction are derived in `step_007`-
  `step_009` from `E_sm`, `E_col`, `E_row`, and `E_best`; no generated basin
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
  interval arithmetic gives `R_10 <= 6.0e-8` and the unsquared mode ratios
  `a_10 <= 1/2048`.  The residual forcing is persistent but bounded by the
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

The chart exported by `step_004` is explicit.  For each covered target `j`,
after the first update define the proof-only projective chart
`C_j(chi_chart)` by the three target correlations being positive, all three
individual off-target ratios being at most `1/2048`, and all three ambient
mode errors being at most `chi_chart=1/128`.  The last implication follows
from the realized Gram row bound and
`||h_M-sign(u_j)||_2 <= 8 q_real + 4 a_t <= 1/256 < chi_chart` at
`t=10`.  On this chart, direct differentiation of the normalized contraction
has Lipschitz constant
`L_chart <= 16(q_*+chi_chart) < 1/4`, and every contraction norm obeys
`31 lambda_j/32 <= d_M(j) <= 33 lambda_j/32`.
Banach's theorem gives a unique projective fixed point `h_j^star` in the
closed chart.  If `zeta_t` is the maximum signed ambient displacement from
`h^t` to `J(h^t)`, then
`zeta_t <= 3 (1/4)^(t-10)`.  Choose
`L_cert >= ceil(log(4/tau_r)/log 4)+1`; this is an allowed universal
`C_cert log r` choice and yields `zeta <= tau_r` in the declared window.
The chart state error and the later selected dual coefficient error are kept
as separate variables.

### `step_004b`: pre-cluster oriented certificate equation

- Claim class: generated same-state normal-equation producer for every
  certified slot; theorem role: source for support classification and all
  later coefficient bridges, before any target label or graph selection.
- Mechanism source: the definition of `zeta` and multilinearity of the exact
  contractions.  For a certified state `h_a`, let `d_{M,a}` be the norm of
  the old-state contraction in mode `M`, and let `epsilon_{M,a}` be its
  minimizing projective sign.  The algorithm's nonzero-contraction branch
  gives `d_{M,a}>0` and the direct identity
  `p_{M,a} d_{M,a} = epsilon_{M,a} G_M K_M(:,a)+R_M(:,a)` with
  `||R_M(:,a)||_2 <= d_{M,a} tau_r`.
- Source-to-claim adequacy: `K_M` is formed from the same stored columns in
  the other two modes, exactly as in `setting.md`; no pre-update or look-ahead
  object occurs.  The projected residual is `R_M` itself.  Before score
  classification the equation retains the sign diagonal
  `Sigma_M=diag(epsilon_{M,a})`; after a later positive-score branch proves
  sign consistency, `Sigma_M` is removed by a product-preserving gauge.
- Residual-to-target adequacy: this producer compares a stored state only to
  its own contraction, so it makes no unsupported claim about target distance.
  Pushing the residual through a target dual basis is deferred to `step_007`
  after a target chart and lambda lower bound exist.
- Key positive/control term: `d_{M,a}>0`, supplied by the algorithm's
  successful contraction branch.  Opposing term is the finite `d tau_r`
  projective residual, with unknown sign but explicit l2 budget.
- Accumulation/scope: one finite residual per mode and selected slot; no sum
  is taken here.  The later dual conversion gives the finite `r tau_r` budget.
- Obligation locality: `step-local`.
- Noncircular closure: `step_004` produces the certified state and its
  contraction norm; `step_004b` produces `E_cert_eq`; `step_005` is its first
  consumer.
- Entry/first-update stress: a finite `q=0` transient has nonzero `R_M`; an
  exact stationary component has `R_M=0`.  If `d_M=0`, the run is declared
  unsuccessful before this output, so no singular certificate is hidden.
- Baseline preserved: the exact q-zero stationary equation is unchanged.
- Producer-consumer provenance: `step_004 -> step_004b -> step_005, step_007`.

### `step_005`: score classification and observable clustering

- Claim class: support-size classification, score gap, graph membership, and
  data-only cluster certificate; theorem role: converts certified states into
  exactly one representative candidate per target.
- Mechanism source: the pre-cluster equation `E_cert_eq`, the chart
  contraction from `step_004`, near-orthogonal Gram rows, and the exact
  orthogonal support calculation.  The proof-only support threshold is
  `s_comp=1/128`: a certified state is called component-like when one target
  has all three mode ratios at most `s_comp`; otherwise its support proxy has
  at least two coordinates of mass at least `1/4` after dual projection.
- Source-to-claim adequacy: the entrywise equation and `s_comp` bootstrap give
  the following uniform alternatives for *every* certified state, not only a
  covered witness.  A component-like state in target `j` has
  `|theta| >= (1-40q_*-8tau_r) lambda_j`, per-mode ambient error at most
  `1/128`, and `31/32 <= d_M/lambda_j <= 33/32`.  A state with support proxy
  at least two has
  `|theta| <= (1/sqrt(2)+40q_*+8tau_r) lambda_max`.  Since
  `(1/sqrt(2)+40q_*+8tau_r)1.01 < 0.73` while
  `0.85(1-40q_*-8tau_r) > 0.84`, the score filter rejects every mixture once
  a covered component exists.  The same constants give within-target graph
  correlation at least `1-32q_*` and cross-target correlation at most
  `q_*+16q_* < 1-64q_*`.
- Sign and theta boundary: a retained state has
  `|theta| >= 0.85(1-40q_*-8tau_r)lambda_min > 0.8 lambda_min`; hence theta is
  never zero on the retained branch.  Taking the contraction inner product
  in `E_cert_eq` gives
  `|theta-epsilon_M d_M| <= d_M tau_r`, so all three minimizing signs equal
  `sign(theta)`.  Flip one mode if theta is negative; the product of the three
  flips is one and the represented tensor is unchanged.  Certified states
  with theta zero or a zero contraction remain legal diagnostics but cannot
  enter the retained pool or the theorem-facing producer.
- Residual-to-target adequacy: every retained state is compared in modewise
  Euclidean correlation to one realized target column; the graph and later
  dual chart consume this same target metric.  The `1/128` chart radius and
  denominator margin are exported explicitly rather than inferred from graph
  edges alone.
- Key control term: the component score margin; opposing terms are Gram
  leakage, weight imbalance, certificate l2 error, and support-two mixing.
  Each is bounded numerically above.
- Accumulation/scope: finite graph over all certified slots; no iterative
  accumulation.  Strict score and graph inequalities precede tie breaking,
  so duplicate states and equal scores cannot change the number of clusters.
- Obligation locality: `step-local`.
- Noncircular closure: `step_004b` is the pre-cluster producer; `step_005`
  alone produces `E_cluster`, the target permutation, the product-preserving
  sign gauge, `s_comp`, and the denominator/chart margins.
- Entry/first-update stress: an exact component fixed point passes the filter;
  an equal-weight two-component fixed point has score `lambda/sqrt(2)` and is
  rejected by the displayed margin.  At q=0 negative component scores are
  handled by the product-preserving flip; a zero-score state is rejected.
- Baseline preserved: component fixed points and exact clustering hold at the
  deterministic rho-zero specialization.
- Producer-consumer provenance: `step_004 -> step_004b -> step_005 ->
  step_006`.

### `step_006`: certified same-state coefficient bridge

- Claim class: generated selected-direction, dual coefficient, row/column
  leakage, and selected-basin seed; theorem role: theorem-critical bridge from
  observable representatives to active ALS.
- Mechanism source: `E_cert_eq`, the true-factor dual bases, the chart radius
  and denominator margin exported by `step_005`, and a spatial Hadamard
  small-gain relation.  This is a direct derivation in the setting convention;
  no cited theorem supplies the row bound.
- Source-to-claim adequacy: for each mode set `H_M=G_M^T G_M`,
  `L_M=G_M H_M^(-1)`, and `B_M=L_M^T P_M`.  After the product-preserving
  signs from `step_005`, write `B_M=A_M+E_M`, with `A_M` diagonal and `E_M`
  zero diagonal.  For `ell != j`, `E_cert_eq` gives the exact relation
  `(E_M)_{ell j} D_M(j,j)/lambda_j =
  (lambda_ell/lambda_j)(H_{M'}B_{M'})_{ell j}
  (H_{M''}B_{M''})_{ell j} +
  (L_M^T R_M)_{ell j}/lambda_j`.
  The chart margins and `Gamma <= 1.01` give
  `31/32 <= D_M(j,j)/lambda_j <= 33/32`.
- Closed column bootstrap: let
  `chi=max_{M,j} sum_{ell != j}|(E_M)_{ell j}|`.  The unit-norm identity gives
  `|A_M(j,j)-1| <= 2(q_*+chi)chi+2 tau_r^2`.  The two factor columns on the
  right side of the entrywise relation have l1 norms at most
  `q_*+2chi+2q_*^2`.  Pushing each certificate column through the dual gives
  `||L_M^T R_M(:,j)/lambda_j||_1 <= 2 r tau_r` and the same bound entrywise.
  Therefore the explicit small-root inequality is
  `chi <= 4(q_*+2chi+2q_*^2)^2 + 4 r tau_r`.  The chart output gives
  `chi <= 1/128` before this closure.  The quadratic has a small root
  `chi_- <= 32 omega`, where
  `omega:=q_*^2+r tau_r`; its large root is above `1/32`, so the chart bound
  selects the small branch.  Since `r tau_r=q_*^2/10^4`,
  `omega <= 1.0001 q_*^2 < 6.0e-8`.
- Row/column residual closure: the same dual calculation gives
  `eta_col <= 64 omega`.  For row mass, the row l1 norm of each factor is at
  most `q_*+2eta_row+2q_*^2`, while its largest entry is at most
  `q_*+2chi+2q_*^2`.  Hence
  `eta_row <= 4(q_*+2chi+2q_*^2)(q_*+2eta_row+2q_*^2)+4r tau_r`.
  With `chi <= 32 omega` and `q_*=1/4096`, the self coefficient is below
  `1/8`; absorption gives `eta_row <= 128 omega`.  This exposes the static
  `q_*^2`, coefficient, and certificate residual classes separately.
- Residual-to-target adequacy: `P_M` is the stored state in the realized
  target basis, and `L_M^T R_M` is the exact residual transfer.  The operator
  estimate uses `||H_M^(-1)||_{1,1},||H_M^(-1)||_{infty,infty} <= 1/(1-q_*)`,
  `D_M/lambda <=33/32`, and each ambient residual column norm at most
  `D_M tau_r`; summing at most `r` coordinates yields both induced l1 bounds
  `2r tau_r`.  Thus every residual is dominated at the required `q_*^2`
  scale, with no pre/post or surrogate bridge.
- Key positive/control term: the diagonal target coefficient and the
  `31/32` denominator.  Opposing terms are two off-target Gram/coefficient
  products, weight imbalance, diagonal norm correction, and projected
  certificate residual; each appears in the displayed inequalities.
- Accumulation/scope: row and column sums range over the finite selected set;
  certificate forcing is additive, sign-unknown, and finite-budgeted by
  `r tau_r`.  The one-step relation is the explicit row inequality above and
  its `1/8` absorption.
- Obligation locality: `step-local`; all raw controls and the small root are
  exposed before later proof work.
- Noncircular closure: `step_005` supplies chart, sign, theta, and denominator
  margins; `E_cert_eq` supplies the residual; the column root is solved before
  the row inequality; `E_col` and `E_row` are exported only afterward.
- Entry/first-update stress: at q=0 a finite transient has nonzero `R_M` and
  the bounds reduce to `O(r tau_r)`; at an exact fixed point `R_M=0` and all
  coefficient errors vanish.  No zero-interference claim is used to erase a
  finite transient.
- Baseline preserved: the exact orthogonal stationary representative is the
  exact CP factor and remains a zero-residual active target.
- Producer-consumer provenance: `step_004b -> step_005 -> step_006`; outputs
  `E_col` and `E_row` feed `step_008`.

### `step_007`: best-scalar target transfer

- Claim class: target-metric initialization bridge; theorem role: transfers the
  selected unit directions and observable amplitudes to the exact CP quotient
  target.
- Mechanism source: the `E_col` and `E_row` dual-coordinate bounds from
  `step_006`, the unit-norm identity, and a direct tensor expansion in the
  realized factor basis.  The source and consumed target are identical; only
  a positive equal-norm gauge and a proof-only permutation/sign convention are
  applied.
- Source-to-claim adequacy: put `omega=q_*^2+r tau_r`.  The dual equations,
  `||E_M||_{col,1}<=64 omega`, and the diagonal unit-norm identity give, for
  every selected target j,
  `|theta_j/lambda_j-1| <= 64 omega` and
  `max_M ||p_{M,j}-u_{M,j}||_2 <= 64 omega`.  The realized tensor norm has the
  explicit lower bound
  `||T||_F^2 >= r lambda_min^2(1-q_*^2)` from the Khatri-Rao floor, while its
  upper bound is `r lambda_max^2(1+q_*^2)`.  The positive equal-norm gauge and
  cube-root map have derivative at most `4 kappa_0` on the norm event, so the
  three factor-amplitude errors are at most `256 kappa_0 omega`.
- Residual-to-target adequacy: expand the initialized tensor into diagonal
  scalar error, three one-factor direction errors, two-factor Gram leakage,
  and the cubic remainder.  The row/column Hadamard bounds give respectively
  `128 omega`, `192 omega`, `192 omega`, and `64 omega` times
  `lambda_max sqrt(r(1+q_*^2))`; dividing by the displayed lower bound yields
  the concrete quotient/tensor constant `C_best=512` (the finite `kappa_0`
  dependence is retained in the factor chart, not hidden in the theorem
  target).  Thus the original Frobenius metric, not a surrogate, satisfies
  `dist_Q(e_best,0) <= 512 omega` and
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
  balanced-chart Frobenius equivalence has constants at most
  `8 kappa_0^2`; therefore contraction in the quotient implies the original
  relative residual bound, with all allowed scale dependence explicit.
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
  exact CP normal equations.  At a stationary representative, `zeta=0`,
  `R_M=0`, and active cyclic ALS leaves the exact factors fixed.
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
  update; finite transients are not claimed to have zero `R_M`.
- Baseline preserved: yes, explicitly.
- Producer-consumer provenance: `step_004, step_008, step_009 -> step_011`.
- Rho-zero specialization clause: this row is a deterministic extension of
  the positive-rho theorem, as stated in `Formalized Goal`.  It sets the
  perturbations to zero, keeps the product-preserving sign gauge, traces a
  finite transient with nonzero `R_M`, and then evaluates the exact stationary
  state with `R_M=0`; no probability statement at `rho=0` is claimed.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm`: norms, realized Gram rows, weights, Khatri-Rao floors | `step_001` | base scale, base Gram slack, base weight slack, Gaussian perturbation, smoothing margin | linear, quadratic, and normalization terms separately controlled; no persistent term | same realized factors and metric | separate margin inequalities plus finite union; Schur product and Gershgorin | `q_*`, `1.01`, and `(2 kappa_0)^(-1)` | `step_002`, `step_003`, `step_004`, `step_008` | None |
| `E_win`: one target window and competitor pair event | `step_002` | independent raw Gaussian coordinates, conditional covariance from `E_sm` | target tail controlled; competitor pair tails controlled by `beta_*`; no hidden event | coordinates are exactly those used by `R_0,S_0` | dyadic product tail and finite small-r universal minimum | `a_*`, `b_*`, `c_all` | `step_003` | None |
| `E_cov`: all-target coverage | `step_003` | `k`, `p_win`, independent slots | finite slot misses only | proof labels are removed before algorithm selection | `k p_win >= 8 log r`, union bound | `C_rank >= 16/c_all` | `step_004`, `step_005`, `step_010` | None |
| `E_RS`: ratios, pair mass, and denominator invariant | `step_004` | `E_sm`, `E_win`, old-state Jacobi formulas | fixed Gram and weight leakage controlled; no unbounded forcing | ratios are target-relative in the realized basis | invariant interval and positive denominator | `q_*`, `Gamma <= 1.01`, `R_0 <= 19/20` | `step_004b` | None |
| `E_chart`: named target chart, fixed point, and norm conversion | `step_004` | `R_10`, unsquared ratios, Gram row mass, `L_chart` | finite transient and persistent q forcing separated | chart error is ambient mode error, distinct from selected coefficient error | `chi_chart=1/128`, `L_chart<1/4`, `L_cert>=ceil(log(4/tau_r)/log4)+1` | `step_004b`, `step_005` | None |
| `E_cert`: stored state with `zeta <= tau_r` | `step_004` | chart contraction and finite certification horizon | successive displacement is the only residual; geometric decay controls it | stored state is itself compared with its own same-state contraction | `zeta_t<=3(1/4)^(t-10)<=tau_r` | `step_004b`, `step_005` | None |
| `E_cert_eq`: oriented per-state certificate equation | `step_004b` | `E_cert`, nonzero contractions, projective signs | ambient l2 residual has unknown sign but exact per-column budget `d tau_r` | compares state only to its same-state contraction; no target claim yet | multilinearity and signed residual identity | `d_M>0`, `norm(R(:,a))_2<=d_M tau_r` | `step_005`, `step_007` | None |
| `E_cluster`: one observable component cluster per target | `step_005` | all certified states, `E_cert_eq`, scores, modewise correlations | Gram, weight, certificate, and mixture errors controlled | graph uses the same direction metric as the target chart | `s_comp=1/128`, `0.85` score gap, `1-64 q_*` edge threshold | `step_006` | None |
| `E_col`: selected dual coefficient column mass | `step_006` | `E_cert_eq`, `E_cluster` chart/denominator, dual Gram inverse | pair products, weight defect, and `r tau_r` residual all controlled | dual coefficients transfer directly to realized target factors | explicit small-root inequality and `chi_-<=32 omega` | `31/32` denominator and `q_*` | `step_007` row closure, `step_008` | None |
| `E_row`: selected dual coefficient row mass | `step_006` | `E_col`, Gram row mass, same-state residual row mass | persistent sign is unknown but absolute row sum is finite; certificate budget is `r tau_r` | exact target-basis row mass is the consumed basin interface | explicit row inequality with self coefficient below `1/8` | `q_*=1/4096`, `eta_row<=128 omega` | `step_007`, `step_008` | None |
| `E_best`: best-scalar balanced initialization | `step_007` | `E_col`, `E_row`, unit norms, score scalar `theta` | direction, amplitude, Gram leakage, and quadratic tensor terms controlled | same realized tensor and Frobenius metric; no surrogate | four-term residual decomposition and `C_best=512` | `512 omega<rho_ALS/4` | `step_008` | None |
| `E_basin`: active inverse and quotient tube | `step_008` | Khatri-Rao floor, dual kernel, normal-equation derivatives | inverse, gauge, and Taylor defects scale with tube radius | raw factors are mapped to the exact CP quotient by equal-norm gauge | per-mode `<1/16`, cyclic `<1/4`, zero padding exact | `rho_ALS=1/1024` | `step_009` | None |
| `E_stop`: arbitrary accuracy | `step_009` | contraction, residual equivalence, active cost | numerical residual controlled geometrically; no confidence term in rank | residual is original relative Frobenius residual | `m>=ceil(log(8 kappa_0^2/epsilon)/log4)` | `C_res=8 kappa_0^2` | `step_010`, final theorem | None |
| `E_restart`: conditional confidence and total runtime | `step_010` | `p_0`, independent restarts, per-run operation count | finite run failures only; no unlisted condition number | returned run is selected by the original residual | `(1-p_0)^J <= delta_init` and explicit cost sum | `p_0>=1/2` | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | primitive assumptions through `step_001` | `step_002`, `step_003`, `step_004`, `step_008` | fixed-instance geometry and conditioning | assumptions -> `step_001` -> each consumer | derived | None |
| `E_win` and `p_win` | `step_002` | `step_003` | per-slot coverage rate | `E_sm` -> `step_002` -> `step_003` | derived | None |
| `E_cov` | `step_003` | `step_004`, `step_005`, `step_010` | one-run success source | `E_sm` -> `E_win` -> `step_003` -> consumers | derived | None |
| `E_RS` and `E_chart` | `step_004` | `step_004b` | chart and certification activation | `E_sm,E_win` -> `step_004` -> `E_RS,E_chart` -> `step_004b` | derived | None |
| `E_cert` | `step_004` | `step_004b`, `step_005` | legal stored-state producer | `E_RS,E_chart` -> `E_cert` -> consumers | derived | None |
| `E_cert_eq` | `step_004b` | `step_005`, `step_007` | same-state oriented normal-equation source | `E_cert` -> `step_004b` -> `E_cert_eq` -> consumers | derived | None |
| `E_cluster` | `step_005` | `step_006` | data-only representative assignment and chart margins | `E_cert_eq` -> score/graph proof -> `E_cluster` -> `step_006` | derived | None |
| `E_col` and `E_row` | `step_006` | `step_007`, `step_008` | same-target basin bridge | `E_cluster,E_cert_eq` -> column root -> row absorption -> consumers | derived | None |
| `E_best` | `step_007` | `step_008` | balanced active initialization | `E_col,E_row` -> `step_007` -> `E_best` -> `step_008` | derived | None |
| `E_basin` and quotient contraction | `step_008` | `step_009` | arbitrary-accuracy active refinement | `E_sm,E_best` -> `step_008` -> `step_009` | derived | None |
| `E_stop` | `step_009` | final assembly | public accuracy and stopping theorem | `E_basin` -> `step_009` -> `E_stop` | derived | None |
| `E_restart` | `step_010` | final assembly | public confidence and runtime theorem | `E_cov,E_stop` -> `step_010` -> theorem | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | On an event of probability at least `1-delta_sm`, prove realized norm retention, `q_real <= q_*`, `Gamma <= 1.01`, and every cyclic Khatri-Rao Gram floor `1-q_*^2`, with the three perturbation scales exposed separately. | None | `assump:base-scale`, `assump:cumulative-gram`, `assump:base-weight-balance`, `assump:gaussian-smoothing`, `assump:smoothing-margin` (primitive) | normalized Gaussian Gram perturbation and row/union bookkeeping | Gaussian concentration, normalization expansion, Schur product, Gershgorin | `E_sm` | Smoothed-instance geometry objective; explicit `n,r,kappa_0,rho,delta_sm` dependence and probability conversion | PENDING |
| `step_002` | For each target, prove the jointly observable three-mode window and competitor pair event has probability between universal multiples of `r^(-5/3)(log r)^(-3/2)`. | `step_001` | `assump:random-initialization` (primitive), `E_sm` (derived) | correlated competitor coordinates and product tails | Gaussian regression, dyadic product-tail comparison, finite-small-r minimum | `E_win`, `p_win` | Window coverage objective; fixed-horizon per-slot probability with no confidence hidden in rank | PENDING |
| `step_003` | Show `k p_win >= 8 log r`, all targets are covered with probability at least `1/2`, and target labels are used only in the proof. | `step_002` | `assump:subquadratic-rank`, `assump:random-initialization` (primitive), `E_win` (derived) | coupon bound without cross-target independence | independent-slot binomial miss bound and union bound | `E_cov`, one-run probability `p_0` | Window/coverage objective; `k=Theta(r^(5/3)(log r)^(5/2))` independent of `delta_init` | PENDING |
| `step_004` | Prove the displayed simultaneous `R,S` recurrences, denominator persistence, the named `chi_chart=1/128` projective chart and fixed point after burn-in, and `zeta <= tau_r` within `L_cert=O(log r)` sweeps for every covered slot. | `step_001`, `step_003` | `E_sm`, `E_cov` (derived), `assump:subquadratic-rank` (primitive) | first-update activation, fixed nonzero Gram forcing, ambient/projective norm conversion | exact old-state contraction expansion, invariant interval, Banach chart contraction | `E_RS`, `E_chart`, `E_cert` | Fixed-horizon objective over `L_burn+L_cert`; explicit `tau_r`, `L_chart`, and horizon choice | PENDING |
| `step_004b` | For every certified slot, before labels or clustering, orient the projective signs symbolically and derive `p_M d_M = Sigma_M G_M K_M + R_M` with `norm(R_M(:,a))_2 <= d_M(a) tau_r`, including the nonzero-contraction branch. | `step_004` | `E_cert` (derived), `assump:random-initialization` (primitive procedure) | signed equation and residual projection without assuming target distance | exact multilinearity and definition of `zeta`; signed normal-equation wrapper | `E_cert_eq` | Certificate objective; finite per-column residual and no target-bias claim | PENDING |
| `step_005` | Using `E_cert_eq`, classify every certified state; prove the `s_comp=1/128` support threshold, theta lower bound, sign consistency, component/mixture score gap, graph separation, and exactly `r` observable clusters with per-mode chart and denominator margins. | `step_004b` | `E_sm`, `E_chart`, `E_cert_eq` (derived) | all-certified-state support classification and negative/zero scores | signed certificate equation, dual support calculation, explicit perturbation inequalities | `E_cluster`, target permutation, signs, `s_comp`, denominator margins | Structural explicit objective; constants `40,8,0.85,1/128,64` and graph threshold | PENDING |
| `step_006` | From the selected-state equation, close the dual-coordinate column bootstrap by the explicit quadratic small-root inequality, then close induced row and column l1 masses `O(q_*^2+r tau_r)` with projected residual bounds. | `step_005` | `E_sm`, `E_cluster`, `E_cert_eq` (derived) | diagonal normalization, dual projection, small-root selection, spatial row closure | exact dual-basis algebra, unit-norm identity, Hadamard l1 inequalities, root/absorption arithmetic | `E_col`, `E_row` | Selected-state structural objective; explicit `omega`, `chi_-`, `eta_row`, and `r tau_r` scales | PENDING |
| `step_007` | Prove the observable best-scalar initialization is within `C_best=512` times `omega=q_*^2+r tau_r` of the exact realized CP quotient target, and give the full four-class residual decomposition and target norm lower bound. | `step_006` | `E_sm`, `E_col`, `E_row` (derived), `assump:base-weight-balance` (primitive) | amplitude/sign synchronization and target-metric transfer | tensor expansion, balanced gauge, Khatri-Rao norm comparison | `E_best` | Basin-entry objective; `512 omega < rho_ALS/4` is checked numerically | PENDING |
| `step_008` | Establish the quotient Hessian kernel, explicit active rank-r inverse branch and zero-padding equivalence, and a tube `norm(e)_Q <= rho_ALS=1/1024` on which cyclic CP-ALS is `<1/4`-contractive. | `step_001`, `step_007` | `E_sm`, `E_best` (derived), `assump:base-scale` (primitive) | source convention mapping, inverse floor, per-mode and cyclic composition | dual-basis kernel proof; direct normal-equation inverse perturbation; Uschmajew DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5 | `E_basin`, quotient contraction `nu<=1/4` | Terminal structural/regularity objective; explicit `rho_ALS`, inverse, per-mode, cyclic, and gauge constants | PENDING |
| `step_009` | Iterate active ALS to relative residual `epsilon` in `m=O(log(1/epsilon))` sweeps, while inactive columns remain zero and the residual metric is the original rank-`k` Frobenius metric. | `step_008` | `E_basin`, `assump:accuracy-confidence` (primitive) | residual equivalence and stopping-time accounting | contraction recurrence and balanced-chart norm comparison | `E_stop`, per-run runtime | Numerical-error explicit objective with exact stopping inequality | PENDING |
| `step_010` | Amplify one-run success to `1-delta_init` with `J=O(log(1/delta_init))` independent restarts and include proposal, filtering, active refinement, unsuccessful-run, and restart costs. | `step_003`, `step_009` | `assump:random-initialization`, `assump:accuracy-confidence` (primitive) | nested probability and no confidence dependence in rank | geometric restart bound and explicit operation count | conditional success and total runtime | Confidence-explicit objective; probability conversion and polynomial runtime bridge | PENDING |
| `step_011` | Specialize the theorem to the deterministic rho-zero orthogonal equal-weight baseline, retaining finite transient certificate residual but verifying zero residual at stationary representatives and arbitrary-accuracy zero-limit. | `step_004`, `step_008`, `step_009` | deterministic limiting specialization of `E_sm`, `E_basin` (derived) | preserving baseline while respecting the positive-rho primitive domain | direct map calculation and exact CP fixed-point substitution | baseline reduction bridge | Baseline invariance objective; no error floor as `epsilon` decreases | PENDING |

## Dependency Notes

The graph is acyclic: static instance outputs precede initialization outputs;
coverage precedes trajectory conclusions; chart construction precedes the
pre-cluster certificate producer; that producer precedes all-certified-state
classification; classification precedes selected coefficient closure; and
the selected bridge precedes local basin, stopping, and restart.  The
proof-only target permutation and product-preserving sign synchronization are
created in `step_005` and are never algorithmic inputs.  Every generated
output has a producer before its first consumer.

The exact same-state equation is the noncircular interface for `step_006`:
the certificate is evaluated in `step_004b` before the state is selected,
`R_M` is formed from that stored state, and `E_col` is closed before `E_row`.
Therefore the row bound cannot silently assume the final basin or a post-update
object.
The local ALS source is likewise consumed only after the branch-local tube,
source convention, kernel, and residual-to-target bridge have been exposed.

## Blockers

None at sketch level.  The hard obligations are localized to `step_004`,
`step_004b`, `step_005`, `step_006`, `step_007`, and `step_008`; each now has a
stated mechanism source, raw-control interface, boundary test, and
same-setting proof route.  In particular, a finite q-zero certification
residual is retained rather than silently set to zero, and the exact
zero-residual claim is deferred to `step_011` under the explicit deterministic
limiting clause.
