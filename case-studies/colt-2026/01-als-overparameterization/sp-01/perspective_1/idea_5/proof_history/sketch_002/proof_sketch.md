# Proof Sketch

## Formalized Setting

This is the first proof-sketch attempt for `perspective_1/idea_5`.  The
formalized setting is `perspective_1/idea_5/setting.md`; all primitive
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

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial sketch
- Progress type: `conditional`
- Target rank: `U(r) = Theta(r^(5/3) (log r)^(5/2))`, so beta equals `2/3`
- Baseline obligation: preserve the exact orthogonal equal-weight map and
  zero-residual limit; a finite certification residual is allowed only as an
  intermediate error and is not substituted for the baseline conclusion.

## Proof Roadmap

The selected framework is the same-state projective normal-equation and
spatial row/column small-gain framework in
`perspective_1/idea_5/technical_survey.md`.  The dynamic order is:

`primitive smoothing -> realized geometry -> Gaussian window and coverage ->
simultaneous ratio contraction -> projective certification -> score/graph
selection -> same-state coefficient bridge -> quotient basin -> cyclic ALS ->
restart and rate specialization`.

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
state has `R_M=0`.

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
- `E_cert` (a stored state with `zeta <= tau_r`) is derived by the local chart
  contraction in `step_004`, not assumed as an initialization property.
- `E_cluster` (one data-only cluster per target) is derived from the score and
  graph inequalities in `step_005`.
- `E_col` and `E_row` (selected dual coefficient masses) are derived by the
  same-state equation in `step_006`; the local coefficient lemma may use a
  member-local chart hypothesis only after `step_005` has discharged it.
- `E_basin` and the active quotient contraction are derived in `step_007`-
  `step_009` from `E_sm`, `E_col`, and `E_row`; no generated basin condition is
  placed in the theorem assumptions.

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
  `step_002`, `step_003`, `step_007`, and `step_008`.
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
- Accumulation/scope: finite horizon `L_burn`; after entering the chart, the
  map has Lipschitz constant below `1/4`, so consecutive displacements are
  geometrically summable and certification reaches `tau_r` in `L_cert`.
- Obligation locality: `step-local` after the chart contraction source is
  explicitly supplied.
- Noncircular closure: `E_sm` and `E_win` produce the denominator invariant;
  the invariant produces `E_RS`; `E_RS` produces the chart contraction and
  `E_cert`.  No claim uses `E_cert` to prove its own activation.
- Entry/first-update stress: the first simultaneous update is evaluated from
  the old state and obeys the denominator lower bound.  At `q=0`, the first
  update is exactly `(BC,AC,AB)` in ratios.  If the contraction source vanished
  at a boundary, the finite-window certification claim would be false, so the
  explicit chart Lipschitz margin is checked before export.
- Baseline preserved: exact squaring and eventual exact fixed point remain.
- Producer-consumer provenance: `step_001 -> step_002 -> step_003 -> step_004`.

### `step_005`: score classification and observable clustering

- Claim class: support-size classification, score gap, graph membership, and
  data-only cluster certificate; theorem role: converts certified states into
  exactly one representative candidate per target.
- Mechanism source: the certified equation itself, near-orthogonal Gram rows,
  and the orthogonal support calculation.  A state with support size `m` has
  score at most `(1/sqrt(m)+C q_*) lambda_max + C tau_r`; a component state
  has score at least `(1-C q_*) lambda_j-C tau_r`.
- Source-to-claim adequacy: `0.85` is strictly between the perturbed mixture
  upper bound and component lower bound; graph within-target correlations are
  at least `1-64q_*`, while cross-target correlations are strictly below that
  threshold.  This source addresses the score and graph claims directly.
- Residual-to-target adequacy: each retained state is compared in modewise
  Euclidean correlation to a realized target column; the graph consumes the
  same metric, with no surrogate factor.
- Key control term: the component score margin; opposing terms are Gram
  leakage, weight imbalance, and `tau_r`, all smaller than the fixed margin.
- Accumulation/scope: finite graph over certified slots; no iterative
  accumulation.  Ties are resolved after strict inequalities and cannot alter
  the number of components.
- Obligation locality: `step-local`.
- Noncircular closure: `step_004` produces certification; `step_005` alone
  produces `E_cluster`; later steps consume it.
- Entry/first-update stress: an exact component fixed point passes the filter;
  an equal-weight two-component fixed point has score `lambda/sqrt(2)` and is
  rejected.  If the score source vanished, a mixture could pass, so the
  explicit margin is indispensable.
- Baseline preserved: component fixed points and exact clustering hold at
  `q=0`.
- Producer-consumer provenance: `step_004 -> step_005 -> step_006`.

### `step_006`: certified same-state coefficient bridge

- Claim class: generated selected-direction, dual coefficient, row/column
  leakage, and best-scalar basin seed; theorem role: theorem-critical bridge
  from observable representatives to active ALS.
- Mechanism source: exact same-state certificate and true-factor dual bases,
  a member-local column bootstrap, and a spatial Hadamard small-gain relation.
  This is a direct derivation in the setting convention; no cited theorem is
  used for the row bound.  Before writing the equation, the certificate signs
  are synchronized: taking the contraction inner product with each mode and
  using the nonzero score shows that all three projective signs equal the sign
  of `theta` up to `2 tau_r`; a product-preserving column sign gauge then makes
  the target diagonal entries positive.
- Source-to-claim adequacy: let `H_M=G_M^T G_M`,
  `D_M^dual=G_M H_M^(-1)`, and `B_M=(D_M^dual)^T P_M`.  Write
  `B_M=A_M+E_M`, where `A_M` is diagonal and `E_M` has zero diagonal.  The
  synchronized certificate gives, for every `ell != j`, the exact entrywise
  relation
  `(B_M)_{ell j} D_M(j,j)/lambda_j =
  (lambda_ell/lambda_j)(H_{M'}B_{M'})_{ell j}
  (H_{M''}B_{M''})_{ell j} + \widetilde R_M(ell,j)/lambda_j`,
  where `\widetilde R_M=H_M^(-1)G_M^T R_M`.  The diagonal unit-norm
  identity gives `|A_M-I| <= C(q_* chi+chi^2+tau_r^2)`.
  A component-chart bootstrap gives
  `chi := max column l1(E_M) <= 32(q_*^2+r tau_r)`.
  The row/column Hadamard bounds then give
  `eta_col <= 64(q_*^2+r tau_r)` and
  `eta_row <= 128(q_*^2+r tau_r)` after absorbing
  `C q_* eta_row` with `C q_* < 1/4`.
- Residual-to-target adequacy: the produced object is `P_M` in the realized
  factor basis and the consumed object is the same realized target basis.
  The orthogonal component of each selected column is bounded by `tau_r` from
  the certificate; the dual residual has both row and column l1 mass at most
  `C r tau_r`.  Since `r tau_r=q_*^2/10^4`, every residual is dominated at the
  required `q_*^2` scale.  No pre/post or transformed-object bridge remains.
- Key positive/control term: diagonal target coefficient in the contraction,
  with lower denominator `D_M(j,j)/lambda_j >= 31/32`.  Opposing terms are two
  off-target Gram/coefficient products, weight imbalance, diagonal norm
  correction, and `\widetilde R_M`; each is separately charged.
- Closure/dominance relation: column bootstrap first fixes `chi`; then
  `eta_row <= C(q_*+chi)(q_*+eta_row)+C r tau_r`, so the self-term is absorbed
  by `1-C(q_*+chi)>3/4`.  This is a spatial, same-state closure.
- Accumulation/scope: row and column sums range over the finite selected set;
  certificate forcing is additive but finite-budgeted with budget `r tau_r`.
  Its sign is not assumed; absolute values are taken before summation.
- Obligation locality: `step-local`; the exact equation and all raw controls
  are exposed here, while later proof only carries out entrywise arithmetic.
- Noncircular closure: `step_005` supplies component-chart membership and
  denominator slack; the certificate supplies `R_M`; the column bootstrap
  precedes the row inequality; `E_row` is exported only after absorption.
- Entry/first-update stress: at `q=0` a finite transient has nonzero `R_M`,
  and the bound becomes `eta <= C r tau_r`; at an exact fixed point `R_M=0`
  and all coefficient errors vanish.  Thus the source does not falsely
  activate from zero interference alone.
- Baseline preserved: the exact orthogonal stationary representative is the
  exact CP factor and remains a zero-residual active target.
- Producer-consumer provenance: `step_005 -> step_006`; outputs `E_col`,
  `E_row` feed `step_007`; the selected directions and scalar feed the same
  step.

### `step_007`: best-scalar target transfer

- Claim class: target-metric initialization bridge; theorem role: transfers the
  selected unit directions and observable amplitudes to the exact CP quotient
  target.
- Mechanism source: the `E_col` and `E_row` dual-coordinate bounds from
  `step_006`, the unit-norm identity, and a direct tensor expansion in the
  realized factor basis.  The source and consumed target are identical; only
  a positive equal-norm gauge and a proof-only permutation/sign convention are
  applied.
- Source-to-claim adequacy: the certificate signs imply that the three
  projective signs agree with `sign(theta)` up to an error below `2 tau_r`.
  A product-preserving sign gauge therefore makes target correlations
  positive.  The scalar expansion gives
  `|theta_j/lambda_j-1| <= C(q_*^2+r tau_r)`, and the balanced cube-root map is
  Lipschitz on the norm event.
- Residual-to-target adequacy: produced columns and the consumed target are
  measured in the original Frobenius metric.  Direction, amplitude,
  pair-Gram, and quadratic tensor residuals are each bounded by the exported
  row/column masses, yielding `C_best(q_*^2+r tau_r)`.
- Key positive/control term: nonzero realized column norms and near-balanced
  weights.  Opposing terms are sign, scalar, and pair leakage, each controlled
  at `q_*^2+r tau_r`.
- Accumulation/scope: one finite tensor expansion; no recursive forcing.
- Obligation locality: `step-local`.
- Noncircular closure: `step_006` produces all direction and row/column
  controls before this scalar transfer.
- Entry/first-update stress: at the exact orthogonal CP state,
  `theta_j=lambda_j` and the balanced map is exactly the target.  If the norm
  source vanished, cube-root balancing would be undefined; `E_sm` excludes it.
- Baseline preserved: yes.
- Producer-consumer provenance: `step_006 -> step_007 -> step_008`.

### `step_008`: quotient basin and cyclic contraction

- Claim class: nonsingular active normal equations, quotient-Hessian kernel,
  basin entry, and linear convergence; theorem role: terminal theorem closure.
- Mechanism source: realized Khatri-Rao Gram floor from `step_001`, the
  same-target coefficient and residual bounds from `step_006`, and a direct
  current-notation normal-equation perturbation estimate.  Uschmajew,
  DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5 is
  used only for the quotient interpretation and local block-map conclusion.
  Source-object mapping: the source's exact CP factors are
  `(lambda_j^(1/3)u_j,lambda_j^(1/3)v_j,lambda_j^(1/3)w_j)` after the branch's
  positive equal-norm gauge; source inner products and metric are Euclidean,
  and source ALS updates are exact least squares, matching the active branch.
  The source does not claim a random-entry event, a numerical radius, or the
  inactive zero columns; those are discharged directly here.
- Source-to-claim adequacy: full column rank follows from each realized Gram
  floor and Khatri-Rao floor.  Dual-basis projection isolates each component,
  so the Jacobian kernel is exactly the componentwise scaling tangent.  In the
  quotient tube `||e||_Q <= rho_ALS=1/1024`, direct inverse perturbation gives
  `||Phi_cyc(e)-Phi_cyc(e')||_Q <=
  [48q_*+64(||e||_Q+||e'||_Q)] ||e-e'||_Q <= 1/4 ||e-e'||_Q`.
  The exact target is a fixed point, so there is no additive `q_*^2` floor.
- Residual-to-target adequacy: best-scalar initialization has quotient error
  at most `C_best(q_*^2+r tau_r)`, and the chosen constants verify
  `C_best(q_*^2+r tau_r) <= rho_ALS/4`.  The same realized tensor, metric, and
  scaling quotient are consumed by the local map.
- Key positive/control term: Khatri-Rao spectral floor at least `1-q_*^2`
  and the quotient Hessian positive margin.  Opposing terms are inverse
  perturbations, cross-mode coefficient leakage, gauge changes, and Taylor
  remainders; each is bounded by the tube radius and `q_*`.
- Closure/dominance relation: the displayed Lipschitz coefficient is below
  `1/4`, so the tube is invariant and errors contract geometrically.  The
  Moore-Penrose branch equals the ordinary inverse throughout the tube.
- Accumulation/scope: all active sweeps use the same invariant tube and a
  contractive recurrence; no forcing accumulates because the exact target is a
  fixed point.  Zero-padded inactive columns are projected to zero by the
  prescribed algorithm and do not enter the active normal equations.
- Obligation locality: `step-local` after the direct wrapper exposes the
  source mapping and radius.
- Noncircular closure: `step_007` produces basin entry; `step_008` proves the
  inverse, quotient kernel, tube preservation, and contraction; `step_009`
  consumes these outputs for stopping.
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
- Source-to-claim adequacy: choose
  `m >= ceil(log(C_res/epsilon)/log 4)` active sweeps; the residual is at
  most `C_res 4^(-m)` times the initial target scale.  Every active and
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
  edges, active solves, unsuccessful runs, and restarts are all charged, with
  no confidence factor inserted into `k`.
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

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm`: norms, realized Gram rows, weights, Khatri-Rao floors | `step_001` | base scale, base Gram slack, base weight slack, Gaussian perturbation, smoothing margin | linear, quadratic, and normalization terms separately controlled; no persistent term | same realized factors and metric | separate margin inequalities plus finite union; Schur product and Gershgorin | `q_*`, `1.01`, and `(2 kappa_0)^(-1)` | `step_002`, `step_003`, `step_007` | None |
| `E_win`: one target window and competitor pair event | `step_002` | independent raw Gaussian coordinates, conditional covariance from `E_sm` | target tail controlled; competitor pair tails controlled by `beta_*`; no hidden event | coordinates are exactly those used by `R_0,S_0` | dyadic product tail and finite small-r universal minimum | `a_*`, `b_*`, `c_all` | `step_003` | None |
| `E_cov`: all-target coverage | `step_003` | `k`, `p_win`, independent slots | finite slot misses only | proof labels are removed before algorithm selection | `k p_win >= 8 log r`, union bound | `C_rank >= 16/c_all` | `step_004`, `step_005`, `step_009` | None |
| `E_RS`: ratios, pair mass, and denominator invariant | `step_004` | `E_sm`, `E_win`, old-state Jacobi formulas | fixed Gram and weight leakage controlled; no unbounded forcing | ratios are target-relative in the realized basis | invariant interval and positive denominator | `q_*`, `Gamma <= 1.01`, `R_0 <= 19/20` | `step_005` | None |
| `E_cert`: stored state with `zeta <= tau_r` | `step_004` | chart Lipschitz constant and finite certification horizon | successive displacement is the only residual; geometric decay controls it | stored state is itself compared with its own same-state contraction | `L_cert >= log(2/tau_r)/log 4` | `step_005`, `step_006` | None |
| `E_cluster`: one observable component cluster per target | `step_005` | certified states, scores, modewise correlations | Gram, weight, and certificate errors controlled; mixture support is separated | graph uses the same direction metric as the target chart | `0.85` score gap and `1-64 q_*` edge threshold | `step_006` | None |
| `E_col`: selected dual coefficient column mass | `step_006` | same-state equation, component-chart membership, dual Gram inverse | pair products, weight defect, and `r tau_r` residual all controlled | dual coefficients transfer directly to realized target factors | column bootstrap absorbs its small root | `31/32` denominator and `q_*` | `step_006` row closure, `step_007` | None |
| `E_row`: selected dual coefficient row mass | `step_006` | `E_col`, Gram row mass, same-state residual row mass | persistent sign is unknown but absolute row sum is finite; certificate budget is `r tau_r` | exact target-basis row mass is the consumed basin interface | `eta <= C(q+chi)(q+eta)+C r tau_r`, absorb `Cq eta` | `C q_* < 1/4` | `step_007`, `step_009` | None |
| `E_best`: best-scalar balanced initialization | `step_007` | `E_col`, `E_row`, unit norms, score scalar `theta` | direction, amplitude, Gram leakage, and quadratic tensor terms controlled | same realized tensor and Frobenius metric; no surrogate | explicit expansion bounds relative to `norm_T` | `C_best(q_*^2+r tau_r) <= rho_ALS/4` | `step_008` | None |
| `E_basin`: active inverse and quotient tube | `step_008` | Khatri-Rao floor, dual kernel, normal-equation derivatives | inverse, gauge, and Taylor defects scale with tube radius | raw factors are mapped to the exact CP quotient by equal-norm gauge | direct inverse perturbation and `1/4` Lipschitz bound | `rho_ALS=1/1024` | `step_009` | None |
| `E_stop`: arbitrary accuracy | `step_009` | contraction, residual equivalence, active cost | numerical residual controlled geometrically; no confidence term in rank | residual is original relative Frobenius residual | `m=O(log(1/epsilon))` | contraction and residual equivalence | `step_010`, final theorem | None |
| `E_restart`: conditional confidence and total runtime | `step_010` | `p_0`, independent restarts, per-run operation count | finite run failures only; no unlisted condition number | returned run is selected by the original residual | `(1-p_0)^J <= delta_init` and explicit cost sum | `p_0>=1/2` | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | primitive assumptions through `step_001` | `step_002`, `step_003`, `step_004`, `step_007` | fixed-instance geometry and conditioning | assumptions -> `step_001` -> each consumer | derived | None |
| `E_win` and `p_win` | `step_002` | `step_003` | per-slot coverage rate | `E_sm` -> `step_002` -> `step_003` | derived | None |
| `E_cov` | `step_003` | `step_004`, `step_005`, `step_009` | one-run success source | `E_sm` -> `E_win` -> `step_003` -> consumers | derived | None |
| `E_RS` | `step_004` | `step_005` | chart and certification activation | `E_sm,E_win` -> `step_004` -> `step_005` | derived | None |
| `E_cert` | `step_004` | `step_005`, `step_006` | legal stored-state producer | `E_RS` -> chart contraction -> `E_cert` -> consumers | derived | None |
| `E_cluster` | `step_005` | `step_006` | data-only representative assignment | `E_cert` -> score/graph proof -> `E_cluster` -> `step_006` | derived | None |
| `E_col` and `E_row` | `step_006` | `step_007`, `step_008` | same-target basin bridge | `E_cluster,E_cert` -> same-state equation -> `step_006` -> consumers | derived | None |
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
| `step_004` | Prove the displayed simultaneous `R,S` recurrences, denominator persistence, chart contraction after burn-in, and a state with `zeta <= tau_r` within `L_cert=O(log r)` sweeps for every covered slot. | `step_001`, `step_003` | `E_sm`, `E_cov` (derived), `assump:subquadratic-rank` (primitive) | first-update activation, fixed nonzero Gram forcing, and finite certification | exact old-state contraction expansion, invariant interval, contraction mapping | `E_RS`, `E_cert` | Fixed-horizon objective over `L_burn+L_cert`; explicit `tau_r` and horizon choice | PENDING |
| `step_005` | Classify every certified high-score state as a unique component chart, prove the score gap and graph separation, and show the observable rule returns exactly `r` clusters. | `step_004` | `E_sm`, `E_cert` (derived) | approximate fixed-point support classification and ties | certified normal equations, orthogonal support calculation, perturbation inequalities | `E_cluster` and proof-only target permutation/signs | Structural explicit objective; fixed score and graph margins | PENDING |
| `step_006` | From the same-state certificate, derive dual-coordinate diagonal/off-diagonal equations, a member-local column bootstrap, and induced row and column l1 masses `O(q_*^2+r tau_r)` for selected representatives. | `step_005` | `E_sm`, `E_cluster`, `E_cert` (derived) | diagonal normalization, dual projection, and spatial row closure | exact dual-basis algebra, unit-norm identity, Hadamard l1 inequalities, small gain | `E_col`, `E_row`, selected direction bridge | Selected-state structural objective; explicit `r tau_r` residual scale | PENDING |
| `step_007` | Prove the observable best-scalar initialization is within `C_best(q_*^2+r tau_r)` of the exact realized CP quotient target and has relative tensor residual at the same scale. | `step_006` | `E_sm`, `E_col`, `E_row` (derived), `assump:base-weight-balance` (primitive) | amplitude/sign synchronization and target-metric transfer | tensor expansion, balanced gauge, Khatri-Rao norm comparison | `E_best` | Basin-entry objective; target-scale residual and hidden `kappa_0` dependence explicit | PENDING |
| `step_008` | Establish the quotient Hessian kernel, explicit active inverse branch, and a tube `norm(e)_Q <= rho_ALS=1/1024` on which cyclic CP-ALS is `1/4`-contractive. | `step_001`, `step_007` | `E_sm`, `E_best` (derived), `assump:base-scale` (primitive) | source convention mapping and quantitative local radius | dual-basis kernel proof; direct normal-equation inverse perturbation; Uschmajew DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5 | `E_basin`, quotient contraction `nu<=1/4` | Terminal structural/regularity objective; explicit radius and norm mode | PENDING |
| `step_009` | Iterate active ALS to relative residual `epsilon` in `m=O(log(1/epsilon))` sweeps, while inactive columns remain zero and the residual metric is the original rank-`k` Frobenius metric. | `step_008` | `E_basin`, `assump:accuracy-confidence` (primitive) | residual equivalence and stopping-time accounting | contraction recurrence and balanced-chart norm comparison | `E_stop`, per-run runtime | Numerical-error explicit objective with exact stopping inequality | PENDING |
| `step_010` | Amplify one-run success to `1-delta_init` with `J=O(log(1/delta_init))` independent restarts and include proposal, filtering, active refinement, unsuccessful-run, and restart costs. | `step_003`, `step_009` | `assump:random-initialization`, `assump:accuracy-confidence` (primitive) | nested probability and no confidence dependence in rank | geometric restart bound and explicit operation count | conditional success and total runtime | Confidence-explicit objective; probability conversion and polynomial runtime bridge | PENDING |
| `step_011` | Specialize the theorem to the exact orthogonal equal-weight baseline and verify zero certificate residual at stationary representatives and arbitrary-accuracy zero-limit. | `step_004`, `step_008`, `step_009` | exact specialization of `E_sm`, `E_basin` (derived) | preserving baseline while allowing finite transient certificate error | direct map calculation and exact CP fixed-point substitution | baseline reduction bridge | Baseline invariance objective; no error floor as `epsilon` decreases | PENDING |

## Dependency Notes

The graph is acyclic: static instance outputs precede initialization outputs;
coverage precedes trajectory conclusions; certification precedes clustering;
clustering precedes the same-state coefficient bridge; that bridge precedes
local basin and contraction; and only the contraction output is consumed by
stopping and restart specialization.  The proof-only target permutation and
sign synchronization are created in `step_005` and are never algorithmic
inputs.  Every generated output has a producer before its first consumer.

The exact same-state equation is the noncircular interface for `step_006`:
the certificate is evaluated before the state is selected, `R_M` is then
formed from that stored state, and `E_col` is closed before `E_row`.  Therefore
the row bound cannot silently assume the final basin or a post-update object.
The local ALS source is likewise consumed only after the branch-local tube,
source convention, kernel, and residual-to-target bridge have been exposed.

## Blockers

None at sketch level.  The hard obligations are localized to `step_002`,
`step_005`, `step_006`, and `step_008`; each has a stated mechanism source,
raw-control interface, boundary test, and same-setting proof route.  In
particular, a finite `q=0` certification residual is retained rather than
silently set to zero, and the exact zero-residual claim is deferred to
`step_011`.
