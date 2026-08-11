# Proof Sketch

## Formalized Setting

This is sketch attempt 1 for `perspective_1/idea_7` in exact-goal mode.  The
binding artifacts are `idea.md` (SHA-256
`05998a11a0c11afcbdc8a342616a301608dd9e135122790bd443cc997c052aaa`),
`setting.md` (SHA-256
`1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`), and
`proof_tracker.md` (SHA-256
`28dff7bdb70963da352168b76386ab57ca2a57caf4f31a9d4d23a4e87ba185e6`).
No proof step or review artifact from another idea is evidence.  The
idea-6 sketch is used only as diagnostic context for compatible proposal,
certificate, score, and selected-state interfaces.

The realized tensor is

\[
 T=\sum_{j=1}^r \lambda_j u_j\otimes v_j\otimes w_j,
\]

with `q_real`, `Gamma`, and the rank-`k` CP least-squares objective exactly as
defined in `setting.md`.  The primitive setting assumptions are
`assump:base-scale`, `assump:cumulative-gram`,
`assump:base-weight-balance`, `assump:gaussian-smoothing`,
`assump:smoothing-margin`, `assump:subquadratic-rank`,
`assump:random-initialization`, and `assump:accuracy-confidence`.
Realized geometry, proposal coverage, trajectory ratios, certification,
clustering, selected-state bounds, landing reserves, target-span membership,
quotient basin membership, and convergence are generated outputs, never
primitive assumptions.

The proposal prefix is the simultaneous old-state Jacobi map with horizons
`L_burn` and `L_cert`, tolerance `tau_r=q_*^2/(10^4 r)`, high-score filter,
observable graph clustering, minimum-residual representatives, observable
best-scalar seed, and zero-padded inactive columns.  The active transition is
the sole new interface: freeze `(X^0,Y^0,Z^0)`, form all three designs
`H_U^0=Z^0 odot Y^0`, `H_V^0=Z^0 odot X^0`, and
`H_W^0=Y^0 odot X^0`, certify all three normalized pair Grams and positive
scale congruences, evaluate all three Moore--Penrose solves from that same
frozen input, commit them jointly, and rebalance once.  No landing output,
post-solve scale, or generated predecessor is an input to another landing
call.  In particular, this sketch contains no mode-specific predecessor
comparator dependency.

## Formalized Goal

In exact-goal mode, choose universal constants
`C_rank,C_burn,C_cert,C_stop,C_rep` so that, uniformly over every deterministic
base triple satisfying the three base assumptions and every parameter choice
satisfying the remaining assumptions, the following nested conclusion holds.

1. With probability at least `1-delta_sm` over the once-drawn smoothed
   instance, realized columns have norm at least `(2 kappa_0)^(-1)`,
   `q_real <= q_*`, `Gamma <= 1.01`, and every target Khatri--Rao Gram has
   smallest eigenvalue at least `1-q_*^2`.  The linear directional,
   quadratic, and normalization perturbations are exposed separately at the
   scales required by `setting.md`, including row-sum and finite-union
   factors.
2. Conditional on that instance, a target/slot jointly observable window has
   all three target raw coordinates in
   `[t_r,t_r+t_r^(-1)]` in absolute value and every competing pair product at
   most `b_* log r`, with probability
   `Theta(r^(-5/3)(log r)^(-3/2))`.  The chosen `k=U(r)` gives a universal
   positive one-run all-target coverage probability.  The displayed `R,S`
   recurrences, denominator persistence, finite burn/certification, and
   `zeta <= tau_r` are derived on covered slots.

For a covered target, the exact recurrence obligations are

\[
 R_{t+1}\leq\left(\frac{\Gamma R_t+q_{\rm real}}
 {1-\Gamma q_{\rm real}R_t}\right)^2,
\qquad
 S_{t+1}\leq\frac{(\Gamma R_t+q_{\rm real})
 \{\Gamma(1+q_{\rm real})S_t+q_{\rm real}\}}
 {(1-\Gamma q_{\rm real}R_t)^2},
\]

whenever `Gamma R_t<1`, with `R_0<=19/20` and `S_0<=rR_0`.
3. The no-label score/cluster rule returns one representative per target.
   The same-state coefficient equation, two-orientation row/column closure,
   best-scalar bridge, and the generated seed bounds
   `||C_M^0||_(row/col,1) <= 48 omega`,
   `max_j ||N_M^0(:,j)|| <= tau_r`, and `||s^0||_infty <= 128 omega` hold.
4. Before any landing solve, all three frozen normalized pair Grams satisfy
   the exact `delta_L,delta_F,delta_FL,alpha_0,eta_J,eta_QJ,eta_A` bounds in
   `setting.md`, in both induced orientations.  Their full Grams are positive
   diagonal congruences by the exact seed scales
   `exp(s_j^0/3)`.  The three independent output formulas have positive
   normalizers, the joint commit has zero perpendicular fields, and the one
   canonical rebalance produces exact target-span entry with
   `d_Q(e^land,0) <= 4096 omega < rho_ALS/3`.

The frozen landing bridge uses the binding definitions

\[
 c_0=48\omega,\quad
 \delta_L=(1+q_*)c_0,\quad
 \delta_F=2(1+q_*)c_0+(1+q_*)c_0^2+r\tau_r^2,
\]
\[
 \delta_{FL}=(1+q_*)c_0+(1+q_*)c_0^2+r\tau_r^2,\quad
 \alpha_0=q_*+\delta_F,
 \quad \eta_J=\alpha_0^2,
\]
\[
 \eta_{QJ}=2\delta_{FL}+delta_L^2+\delta_F^2,
 \qquad \eta_A=\eta_{QJ}/(1-\eta_J).
\]

For each mode, `F_M^0=(P_M^0)^T P_M^0`,
`J_M^0=F_{M'}^0 circ F_{M''}^0`, and
`Q_M^0=(G_{M'}^T P_{M'}^0) circ (G_{M''}^T P_{M''}^0)`.  The target
certificate must produce `||J_M^0-I||_(row/col,1)<=eta_J<=1/64`,
`||(J_M^0)^(-1)||_(row/col,1)<=1/(1-eta_J)`, and
`||Q_M^0-J_M^0||_(row/col,1)<=eta_QJ` before any mode is solved.  The full
design identity and independent ordinary-inverse output are

\[
 (H_M^0)^T H_M^0=D_{-M}^0J_M^0D_{-M}^0,
 \qquad
 \widetilde X_M=G_M D_\lambda Q_M^0(J_M^0)^{-1}(D_{-M}^0)^{-1},
\]

with `D_{-M}^0=D_lambda^(2/3)(E^0)^2` and
`E^0=diag(exp(s^0/3))`.  Thus all three solves use the same frozen seed and
their positive output normalizers are certified before the joint commit.
5. From that generated exact-span state, chronological quotient `Refresh_s`
   records are equivalent to literal cyclic ALS states, the target-span chart
   is invariant, and the full U/V/W sweep contracts strongly enough to reach
   the original relative Frobenius residual `epsilon` before `m_cap`.  The
   pre-registered cap handles every off-event or nonhitting tape, independent
   restarts amplify the one-run success to at least `1-delta_init`, and the
   returned rank is at most `k=U(r)` with no additive error floor.

The exact orthogonal equal-weight specialization is part of the goal.  At an
exact certified component seed, all frozen normalized pair and cross Grams
agree, the three landing outputs are the exact target factors, the common
product error is zero, the rebalance is the identity in quotient, cyclic ALS
is fixed, and the residual is zero for every positive `epsilon`.

## Sketch Identity

- Branch: `perspective_1/idea_7`.
- Sketch attempt: 1.
- Retry mode: initial sketch.
- Triggering artifact: none (fresh idea branch).
- Binding setting SHA-256: `1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`.
- Binding idea SHA-256: `05998a11a0c11afcbdc8a342616a301608dd9e135122790bd443cc997c052aaa`.
- Binding tracker SHA-256: `28dff7bdb70963da352168b76386ab57ca2a57caf4f31a9d4d23a4e87ba185e6`.
- Technical survey: `perspective_1/idea_7/technical_survey.md`, Framework 1
  selected; Framework 2 is a terminal backup only.
- Progress type: `conditional`.
- Target rank: `U(r)=Theta(r^(5/3)(log r)^(5/2))`, strictly subquadratic.
- Probability contract: one once-drawn instance event at level
  `1-delta_sm`, then conditional independent initialization/restart success at
  level `1-delta_init`.
- Baseline obligation: preserve the exact orthogonal equal-weight fixed point
  and zero-residual limit; an intermediate certificate tolerance may not be
  substituted for this conclusion.
- Central repair: every landing design, pair-Gram reserve, scale congruence,
  and output-normalizer reserve is derived from the same frozen selected seed
  before any of the three solves.  The outputs are committed together and a
  single rebalance is applied.  No chronological predecessor comparator is
  introduced.
- Evidence boundary: only the binding `idea.md`, `setting.md`,
  `proof_tracker.md`, and the selected technical-survey sources are roadmap
  context.  Prior idea-6 artifacts are negative/compatibility diagnostics,
  not proof evidence.

## Proof Roadmap

The selected framework is the same-state projective normal-equation and
row/column small-gain method, extended by a synchronized frozen-input Jacobi
landing bridge.  The parent source *Guarantees for Alternating Least Squares
in Overparameterized Tensor Decompositions* supplies the frozen-input
pseudoinverse/range identity.  The quotient interpretation of the terminal
cyclic phase is supported by Uschmajew's ALS local-convergence paper, but all
current-notation radii, inverse bounds, and contraction constants are direct
derivations in the present setting.

The roadmap order is:

`static smoothing -> window probability -> all-target coverage -> simultaneous
R,S recurrence and certification -> pre-cluster same-state certificate ->
weighted score/cluster selection -> selected coefficient row/column closure ->
best-scalar seed quotient -> all-three frozen Gram/reserve bridge -> joint
landing, exact-span and rebalance -> chronological cyclic quotient contraction
-> stopping/cap/restarts -> baseline specialization`.

The landing bridge is intentionally a single block.  Step `step_009` consumes
only the generated seed fields and emits all three pre-solve reserve records
simultaneously.  Step `step_010` consumes those records and evaluates the three
independent coefficient formulas from the frozen seed; its output is one joint
state.  There is no edge of the form "solve U, compare to a U-produced
predecessor, then solve V".  The cyclic phase begins only after `step_010`.

## Rate Objectives

1. **Smoothed-instance geometry.**
   - Objective type: fixed-time, structural-parameter explicit, and confidence-explicit.
   - Exposed variables: `n,r,kappa_0,rho,delta_sm`, and the fixed finite exponents `d_kappa,d_rho`.
   - Hidden constants may depend on: universal Gaussian constants and the declared finite regime exponents.
   - Hidden constants may not depend on: the base triple, a generated condition number, `epsilon`, or `delta_init`.
   - Fixed quantities: `q_*=1/4096`, `a_*=10/9`, `b_*=19/18`.
   - Probability mode: one static event over the once-drawn smoothed instance.
   - Horizon mode: before proposal randomness.
   - Norm mode: Euclidean column norm, row/column induced l1 Gram mass, weight ratio, and Khatri--Rao spectral floor.
   - Required bridge or simplification obligations: separately bound linear, quadratic, and normalization terms, apply the declared smoothing margins, and perform the finite union bound.
   - Baseline invariance obligations: retain the zero-interference orthogonal specialization.

2. **Window, coverage, and certification.**
   - Objective type: fixed-horizon, structural-parameter explicit, and confidence-explicit.
   - Exposed variables: `r,k,t_r,tau_r,L_burn,L_cert,q_real,Gamma`.
   - Hidden constants may depend on: universal Gaussian tail and coupon constants only.
   - Hidden constants may not depend on: `n,rho,epsilon`, either confidence parameter, or a generated basin radius.
   - Fixed quantities: `tau_r=q_*^2/(10^4r)` and both `O(log r)` horizons.
   - Probability mode: conditional deterministic trajectory statements on the window/coverage event, followed by restart amplification.
   - Horizon mode: all proposal commits through `L_prop`.
   - Norm mode: target-relative ratios, projective residual, and pair-product l1 mass.
   - Required bridge or simplification obligations: two-sided window probability, competitor pair-tail, denominator persistence, recurrence contraction, and finite `zeta` threshold.
   - Baseline invariance obligations: simultaneous squaring and exact stationary representatives at zero interference.

3. **Selected seed and synchronized landing.**
   - Objective type: structural-parameter explicit, regularity-explicit, numerical-error explicit, and fixed one-sweep.
   - Exposed variables: `r,n,k,kappa_0,rho^(-1),q_*,tau_r,omega`.
   - Hidden constants may depend on: universal numerical choices and the declared polynomial base-scale regime, but not on generated comparators or condition numbers.
   - Hidden constants may not depend on: `epsilon`, `delta_init`, a post-solve scale, or a chronological predecessor state.
   - Fixed quantities: `c_0=48omega`, `rho_ALS=1/1024`, and the displayed delta/eta definitions from `setting.md`.
   - Probability mode: deterministic conditional on `E_sm` and a covered certified run.
   - Horizon mode: one frozen-input landing transaction with all three solves evaluated before the joint commit.
   - Norm mode: row/column induced l1, column Euclidean perpendicular norm, normalizer scalar, and quotient `d_Q`.
   - Required bridge or simplification obligations: derive both orientations of every bound, positive scale congruence, ordinary-inverse equivalence, direct `Q-J` cancellation, normalizer floors, exact range membership, and residual-to-target transfer after rebalance.
   - Baseline invariance obligations: all three outputs and the rebalance are exact at an orthogonal equal-weight component seed.

4. **Cyclic refinement and stopping.**
   - Objective type: horizon-uniform after generated entry, regularity-explicit, and numerical-error explicit.
   - Exposed variables: `rho_ALS,epsilon,kappa_0,m_cap` and the quotient contraction factor.
   - Hidden constants may depend on: `q_*`, fixed chart constants, and universal normal-equation constants only.
   - Hidden constants may not depend on: a generated comparator, tube, or condition number.
   - Fixed quantities: `rho_ALS=1/1024`, `8q_*+32rho_ALS<1/16`, and the original relative Frobenius residual metric.
   - Probability mode: deterministic on the generated landing/basin path; observable timeout otherwise.
   - Horizon mode: all cyclic sweeps up to `m_cap`.
   - Norm mode: quotient `d_Q` and relative Frobenius norm.
   - Required bridge or simplification obligations: exact scale equivariance, `Refresh_s` object identity, target-span invariance, full-sweep contraction, and conversion to the original residual.
   - Baseline invariance obligations: no positive error floor as `epsilon` decreases.

5. **Runtime, confidence, and restart specialization.**
   - Objective type: confidence-explicit and numerical-error explicit.
   - Exposed variables: `n,r,k,kappa_0,rho^(-1),epsilon,delta_init`.
   - Hidden constants may depend on: implementation constants and fixed polynomial regime exponents only.
   - Hidden constants may not depend on: either confidence parameter or an unlisted condition number.
   - Fixed quantities: the proposal horizons, one landing transaction, `m_cap=ceil(C_stop log(8 kappa_0^2/epsilon))`, and `J=max(1,ceil(C_rep log(1/delta_init)))`.
   - Probability mode: `Pr(E_sm)>=1-delta_sm`; conditional restart success at least `1-delta_init`.
   - Horizon mode: finite proposal work plus at most `m_cap` cyclic sweeps per completed run.
   - Norm mode: original relative Frobenius residual.
   - Required bridge or simplification obligations: dense observed-tensor cost, observable timeout branch, one-run success lower bound, geometric restart bound, and polynomial total runtime.
   - Baseline invariance obligations: exact orthogonal residual is zero before any cap is binding.

## Assumption Provenance Objectives

- `E_sm` (realized column norms, normalized Gram rows, `Gamma`, and target
  Khatri--Rao floors) is produced by `step_001` from the five primitive
  geometry/smoothing assumptions.  It is a static event and is not inserted
  into any setting assumption.
- `E_win` and `E_cov` (joint Gaussian windows and all-target coverage) are
  produced by `step_002` and `step_003` from `E_sm` and
  `assump:random-initialization`; target labels are proof-only.
- `E_RS`, `E_chart`, `E_chart_l1`, and `E_cert` (finite ratios, denominator
  persistence, chart contraction, and stored `zeta <= tau_r`) are produced by
  `step_004` from the old-state simultaneous map.  They are not basin or
  initialization assumptions.
- `E_cert_eq` and `E_cert_tail` (the signed same-state equation, projected
  residual, and all-certified weighted tail ledger) are produced by `step_005`
  before score filtering or clustering.  No covered-slot label or future
  landing output is used.
- `E_support`, `E_cluster`, and `E_gauge` are produced by `step_006` from the
  all-certified ledger and `E_sm`.  The target permutation and signs are
  proof-only transformations of observable representatives.
- `E_col`, `E_row_residual`, and `E_row` are produced by `step_007` from the
  selected same-state equation, with the small-root bootstrap and per-entry
  residual conversion shown before any landing claim.
- `E_seed` is produced by `step_008`: the balanced observable seed has the
  exact orthogonal decomposition `P_M^0=G_M(I+C_M^0)+N_M^0`, the row/column
  `48omega` fields, perpendicular column budget `tau_r`, and product log
  bound `128omega`.
- `E_land_pre` is produced by `step_009` from `E_sm` and `E_seed`.  It
  contains all three normalized pair-Gram, cross-Gram, inverse, scale, and
  normalizer reserves at once.  It is a generated certificate, not an
  algorithmic acceptance test.
- `E_land` is produced by `step_010` from `E_land_pre` and the one frozen
  seed.  It contains the three ordinary-inverse coefficient identities,
  positive output norms, exact target-span membership, the joint commit, and
  the single-rebalance quotient bound.
- `E_basin` is produced by `step_011` from `E_land` using only the generated
  exact-span state.  It includes scale-equivariant quotient block maps,
  chronological `Refresh_s` equivalence, chart invariance, and full-sweep
  contraction.
- `E_stop` is produced by `step_012` on `E_basin`; it is not assumed on an
  arbitrary observable cluster-gate tape.
- `E_run_cap` and `E_restart` are produced by `step_012` from the observable
  finite cap, Moore--Penrose update rule, and independent restart randomness.
  A noncovered or singular tape may time out, but it always completes its
  declared finite work.
- `E_baseline` is produced by `step_013` by direct substitution in the
  deterministic orthogonal equal-weight specialization.  It preserves the
  exact fixed point and zero-residual conclusion rather than a finite-error
  surrogate.

## Mechanism-Source And Boundary Stress

### `step_001`: realized geometry and conditioning

- Claim class: generated static norm, Gram, weight, and positive spectral-floor
  event; theorem role: supplies the deterministic instance interface.
- Mechanism source: direct Gaussian norm and directional concentration in the
  normalized-column convention of `setting.md`, followed by normalization
  expansion, Schur-product comparison, and Gershgorin.  This is a
  primitive-source derivation, not a cited realized-event assumption.
- Source-to-claim adequacy: the linear term is controlled at
  `kappa_0 rho sqrt(log(9r^2/delta_sm)/n)`, the quadratic term at
  `kappa_0^2 rho^2 sqrt(log(9r^2/delta_sm)/n)`, and normalization at
  `kappa_0^2 rho^2`; `assump:smoothing-margin` dominates each class before
  summation.  The normalized Gram convention matches the target factors.
- Residual-to-target adequacy: the produced factors are exactly the realized
  factors consumed downstream; no whitened or surrogate target is used.
- Key positive/control term or structural source: base norm lower bound,
  `bar q <= q_*/4`, and base weight ratio `1+1/800`.
- Opposing defect terms: linear, quadratic, normalization, and finite-union
  tails, each charged to its own margin.
- Closure/dominance/absorption relation: dominate each contribution first,
  then sum to obtain `q_real <= q_*`, `Gamma <= 1.01`, and the norm floor.
- Accumulation behavior / scope compatibility: finite static union, charged
  once before proposal randomness; no repeated-scope forcing.
- Obligation locality classification: `step-local`.
- Noncircular closure status: primitive assumptions -> `E_sm`; consumers are
  `step_002`, `step_004`, `step_006`, `step_009`, and `step_011`.
- Entry-state / first-update stress result: at the orthogonal zero-interference
  boundary the event becomes exact norm/Gram identities; it does not claim a
  random proposal is aligned.
- Baseline conclusion preserved: yes, `q_real=0` and `Gamma=1` remain allowed.
- Producer-consumer provenance: `step_001` is the sole producer of `E_sm`.
- Null or boundary regime tested: `rho` tending to zero and exact orthogonal
  bases; no lower-floor mechanism vanishes in a way that invalidates the
  stated static conclusion.
- Target conclusion false or obstruction present if source vanishes: without
  the norm and Gram margins, the Khatri--Rao inverse floor can fail.
- Repair route if source unsupported: `sketch/interface defect`; retain the
  three separate concentration terms or stop before any downstream claim.

### `step_002`-`step_003`: window and coverage

- Claim class: generated probabilistic coverage event; theorem role: supplies
  the one-run success witness.
- Mechanism source: independent raw Gaussian triples, correlated Gaussian
  regression under `E_sm`, product-tail comparison, and a binomial miss bound.
- Source-to-claim adequacy: the exact target window has three one-dimensional
  widths `t_r^(-1)` and the competitor pair event is bounded by `b_* log r`;
  the resulting probability is between universal multiples of
  `r^(-5/3)(log r)^(-3/2)`.  Slots are independent conditional on the fixed
  tensor.  The Gaussian convention is the raw `N(0,I_n)` convention in
  `setting.md`; normalization is applied only after the coordinate event.
- Residual-to-target adequacy: proof target labels identify a window only for
  analysis; the algorithm uses no label and consumes the observable stored
  state.
- Key positive/control term or structural source: `k=C_rank r^(5/3)(log r)^(5/2)`.
- Opposing defect terms: correlated competitor tails and the union over `r`
  targets; both are included in the comparison constants and coupon bound.
- Closure/dominance/absorption relation: choose `C_rank` so the per-target
  miss is at most `exp(-c log r)`, then union over targets.
- Accumulation behavior / scope compatibility: finite slot/target union only;
  no all-time claim.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `E_sm` and independent slot randomness produce
  `E_win`, then `E_cov`; no certification or landing conclusion is used.
- Entry-state / first-update stress result: a valid window is an entry to the
  ratio recurrence; if no target coordinate is nonzero the slot is discarded,
  which is an observable failure branch.
- Baseline conclusion preserved: yes; zero interference only simplifies the
  regression and pair-tail bounds.
- Producer-consumer provenance: `step_002 -> step_003 -> step_004` and
  `step_012`.
- Null or boundary regime tested: a zero contraction or no covered target is a
  declared unsuccessful run, not an implicit theorem event.
- Target conclusion false or obstruction present if source vanishes: without a
  positive coverage probability, restart amplification cannot reach
  `1-delta_init`.
- Repair route if unsupported: `sketch/interface defect` in the probability
  constants, not a new initialization assumption.

### `step_004`: simultaneous ratio recurrence and certification

- Claim class: generated denominator persistence, contraction, and finite
  stationarity certificate; theorem role: produces `E_RS`, `E_chart`, and
  `E_cert`.
- Mechanism source: exact multilinear expansion of the old-state Jacobi map,
  the realized Gram row-sum bound, and an invariant interval beginning at
  `R_0 <= 19/20`; no future ALS output is used.
- Source-to-claim adequacy: derive exactly
  `R_{t+1} <= ((Gamma R_t+q_real)/(1-Gamma q_real R_t))^2` and the displayed
  `S` recurrence before taking a scalar envelope.  The denominator margin is
  checked at every induction step, then a contraction factor below one gives
  `O(log r)` burn/certification.
- Residual-to-target adequacy: `zeta` is the same projective Euclidean
  residual used by the algorithm; the stored state, not a look-ahead image,
  is exported.
- Key positive/control term or structural source: the target coordinate in
  each contraction and `1-Gamma q_real R_t > 0`.
- Opposing defect terms: off-target pair products and accumulated pair mass,
  controlled by `q_real`, `R_t`, and `S_t`.
- Closure/dominance/absorption relation: the invariant interval keeps the
  denominator positive; the scalar recurrence then geometrically shrinks
  `R,S` until `zeta <= tau_r`.
- Accumulation behavior / scope compatibility: finite burn plus finite
  certification horizon; each step absorbs the current pair mass and the
  declared horizon is `O(log r)`.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the recurrence itself produces denominator
  persistence; no basin or landing state is assumed.
- Entry-state / first-update stress result: the extreme window starts at
  `R_0 <= 19/20`, `S_0 <= rR_0`; the first simultaneous commit is explicitly
  checked before any certification decision.
- Baseline conclusion preserved: at `q_real=0`, the map squares ratios and an
  exact component is stationary.
- Producer-consumer provenance: `step_004` produces `E_cert` for `step_005`.
- Null or boundary regime tested: a vanishing target denominator sets `R,S=+
  infinity` and causes failure rather than an invalid recurrence.
- Target conclusion false or obstruction present if source vanishes: without
  denominator persistence there is no legal finite certificate.
- Repair route if unsupported: `sketch/interface defect`; expose the first
  update and tighten the fixed interval, without changing the procedure.

### `step_005`: same-state equation and global certificate ledger

- Claim class: generated signed coefficient equation, residual projection, and
  all-certified support/score ledger; theorem role: supplies the classifier
  with a pre-cluster, no-label producer.
- Mechanism source: multiply the definition of `zeta` by the same contraction
  norm, retain the right-side sign diagonal, and expand the exact coefficient
  vector `(H_{M'}c_{M'}) circ (H_{M''}c_{M''})`.
- Source-to-claim adequacy: the raw equation is
  `P_M^raw D_M=G_M K_M^raw Sigma_M+R_M^raw` with per-column residual at
  most `d_M tau_r`; after product-preserving orientation it becomes the
  barred equation used downstream.  The two first-order Gram leaks, their
  cross term, scalar normalization reserve, and finite `sqrt(r)tau_r` charge
  are all explicit before the tail ledger is exported.
- Residual-to-target adequacy: the barred columns are the same represented
  rank-one terms as the raw observable columns; signs are a proof-only gauge,
  so the consumed target remains `G_M`.
- Key positive/control term or structural source: the retained target
  coefficient floor and exact contraction norm `D_M`.
- Opposing defect terms: Gram leakage `q_*`, scalar normalization, and
  certificate residual `tau_r`; each has a separate budget.
- Closure/dominance/absorption relation: normalize by `lambda_min`, cancel the
  scalar first-order term, and retain the finite support charge before setting
  the classifier thresholds.
- Accumulation behavior / scope compatibility: one stored state per slot;
  the all-certified ledger is finite and is not summed over future ALS sweeps.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the equation is produced directly from the
  certified state before clustering; `step_006` consumes only this output.
- Entry-state / first-update stress result: an exact stationary component has
  zero projected residual; a merely certified transient may have nonzero
  residual, which is retained rather than silently zeroed.
- Baseline conclusion preserved: exact orthogonal stationary representatives
  retain the exact coefficient equation and zero residual.
- Producer-consumer provenance: `step_004 -> step_005 -> step_006` and
  `step_007`.
- Null or boundary regime tested: zero score is marked low and rejected by the
  existing observable filter; no positive score is assumed.
- Target conclusion false or obstruction present if source vanishes: without
  the retained floor and scalar cancellation, score classification can merge
  multi-support states.
- Repair route if unsupported: `sketch/interface defect`; split the tail by
  defect class rather than adding a target-label assumption.

### `step_006`: weighted score, clustering, and gauge

- Claim class: structural support/score separation and observable clustering;
  theorem role: produces one representative per target and the proof-only
  permutation/sign chart.
- Mechanism source: weighted support dichotomy from `step_005`, the realized
  weight ratio `Gamma <= 1.01`, and the absolute modewise graph threshold
  `1-64q_*`.
- Source-to-claim adequacy: keep `D_lambda` in every coefficient equation;
  compare singleton and multi-support scores with the explicit `0.85`
  retained-score gap, including threshold-straddling and unequal weights.
- Residual-to-target adequacy: each graph component is an observable cluster;
  the target permutation is introduced only for analysis and maps the selected
  representative to the exact realized target column.
- Key positive/control term or structural source: singleton score lower bound
  and modewise target-coordinate denominator.
- Opposing defect terms: multi-support score tail, singleton tail, weight
  imbalance, and finite certificate residual.
- Closure/dominance/absorption relation: the weighted score gap dominates all
  tails, then graph separation yields exactly `r` components and one selected
  representative each.
- Accumulation behavior / scope compatibility: finite certified-slot graph;
  no repeated-scope accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `E_support` is produced before graph formation;
  no selected-state coefficient or landing property is used to classify slots.
- Entry-state / first-update stress result: an exact component seed is a
  singleton graph vertex; a low-score/no-certified branch is an observable
  run failure.
- Baseline conclusion preserved: orthogonal equal-weight components are
  separated exactly and the gauge can be chosen product-one.
- Producer-consumer provenance: `step_005 -> step_006 -> step_007,step_008`.
- Null or boundary regime tested: ties are broken by the observable minimum
  `zeta` rule and then score; no latent label is consulted.
- Target conclusion false or obstruction present if source vanishes: without a
  score gap, the graph may have fewer or more than `r` clusters.
- Repair route if unsupported: `sketch/interface defect`; strengthen only the
  ledger arithmetic under unchanged filter thresholds.

### `step_007`: selected coefficient and row/column closure

- Claim class: generated dual-coordinate coefficient and induced row/column
  mass bounds; theorem role: supplies the seed fields without assuming a
  quotient tube.
- Mechanism source: the selected same-state equation, true-factor dual bases,
  unit-norm identities, and Hadamard row/column l1 inequalities.
- Source-to-claim adequacy: close the column mass by an explicit small-root
  quadratic inequality, convert each projected certificate residual to a
  per-entry `2 tau_r` bound, and sum once to obtain both induced orientations
  at scale `O(q_*^2+r tau_r)`.
- Residual-to-target adequacy: the coefficients and residuals refer to the
  selected representatives themselves; no post-landing or transformed object
  is consumed.
- Key positive/control term or structural source: diagonal target coefficient
  and the retained target-coordinate denominator.
- Opposing defect terms: off-diagonal Gram leakage, scalar coefficient error,
  and per-entry certificate residuals; the latter are charged once, not as an
  `r^2 tau_r` row sum.
- Closure/dominance/absorption relation: choose the small root of the column
  inequality, substitute it into the row and column inequalities, and absorb
  the quadratic term into the fixed `q_*` margin.
- Accumulation behavior / scope compatibility: finite selected-state ledger;
  the `r tau_r` term is a one-time charge before landing.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `E_row` depends only on the selected stored
  state and `E_cert_eq`; it does not use landing or cyclic invariants.
- Entry-state / first-update stress result: at an exact orthogonal component
  the off-diagonal source and residual vanish; the small-root branch is zero.
- Baseline conclusion preserved: yes, the exact coefficient equation remains
  unchanged.
- Producer-consumer provenance: `step_006 -> step_007 -> step_008`.
- Null or boundary regime tested: if a selected target denominator vanishes,
  the preceding score/gauge gate fails and no row closure is claimed.
- Target conclusion false or obstruction present if source vanishes: an
  uncontrolled row mass would invalidate every frozen pair-Gram reserve.
- Repair route if unsupported: `sketch/interface defect`; retain per-entry
  residuals and separate row from column closure.

### `step_008`: observable best-scalar seed and quotient entry data

- Claim class: generated balanced seed decomposition and quotient transfer;
  theorem role: exports `E_seed` for the synchronized landing bridge.
- Mechanism source: observable best-scalar initialization, product-one sign
  gauge, tensor expansion, target Gram comparison, and relative cube-root
  amplitude coordinates.
- Source-to-claim adequacy: prove the exact orthogonal decomposition
  `P_M^0=G_M(I+C_M^0)+N_M^0` with `G_M^T N_M^0=0`, both row/column field bounds
  `48 omega`, perpendicular columns at most `tau_r`, and `||s^0||_infty <=
  128 omega`.  The positive scale convention is
  `D_M^0=D_lambda^(1/3) E^0`, `E^0=diag(exp(s^0/3))`.
- Residual-to-target adequacy: the produced seed is the exact observable
  active rank-`r` representation consumed by the landing designs; the proof
  permutation/sign gauge changes no represented rank-one term.
- Key positive/control term or structural source: selected target-coordinate
  floor, `E_row`, and the balanced product `gamma_j^0=|theta_j|`.
- Opposing defect terms: row/column coefficient leakage, perpendicular
  residual, and scale log error; each is retained in the displayed budgets.
- Closure/dominance/absorption relation: combine the two orientations and the
  balanced cube-root map only after the selected-state bounds close; this
  yields the stated `48, tau_r, 128` constants.
- Accumulation behavior / scope compatibility: one initialization bridge;
  there is no iterative accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `E_seed` is produced before any landing solve;
  its consumers are exactly `step_009` and `step_013`.
- Entry-state / first-update stress result: an exact component seed gives
  `C_M^0=N_M^0=s^0=0`; a finite certificate transient retains its nonzero
  residual rather than being declared exact.
- Baseline conclusion preserved: yes, the exact orthogonal/equal-weight seed
  is mapped to the exact quotient origin.
- Producer-consumer provenance: `step_007 -> step_008 -> step_009`.
- Null or boundary regime tested: a zero observable `theta_a` rejects the run;
  no logarithm or positive scale is formed on that branch.
- Target conclusion false or obstruction present if source vanishes: without
  a positive target-coordinate floor, the seed scale congruence and quotient
  transfer are undefined.
- Repair route if unsupported: `sketch/interface defect`; add a bridge from
  the selected score margin, never a primitive scale assumption.

### `step_009`: simultaneous frozen Gram and reserve certificate

- Claim class: generated positivity/nondegeneracy and exported pre-solve
  interface; theorem role: legal producer for all three landing calls.
- Mechanism source: direct expansion of the frozen seed decomposition, target
  Gram row/column mass, and the orthogonal perpendicular fields.  No cited
  theorem is used for the numerical bounds.
- Source-to-claim adequacy: for each `M`, define
  `F_M^0=(P_M^0)^T P_M^0`, `J_M^0=F_{M'}^0 circ F_{M''}^0`, and
  `Q_M^0=(G_{M'}^T P_{M'}^0) circ (G_{M''}^T P_{M''}^0)`.  Derive, before
  inversion, the exact `delta_L`, `delta_F`, and `delta_FL` bounds in both
  induced orientations, then `||Q_M^0-J_M^0|| <= eta_QJ`,
  `||J_M^0-I|| <= eta_J <= 1/64`, and the two Neumann inverse reserves.
- Residual-to-target adequacy: `J_M^0` is the normalized pair Gram of the
  exact frozen design; the full design is the same target object under the
  positive congruence
  `(H_M^0)^T H_M^0=D_{-M}^0 J_M^0 D_{-M}^0`, with
  `D_{-M}^0=D_lambda^(2/3)(E^0)^2`.  No surrogate Gram is consumed.
- Key positive/control term or structural source: identity diagonal of each
  pair Gram and `1-eta_J` Neumann margin.
- Opposing defect terms: two direction fields, target Gram off-diagonal mass,
  mixed perpendicular terms, and shared perpendicular `r tau_r^2` charge;
  every class appears in `delta_F`, `delta_FL`, or `eta_QJ`.
- Closure/dominance/absorption relation: obtain `eta_A=eta_QJ/(1-eta_J)`
  before any solve; use `Gamma eta_A <= 128 omega < 1/64` to reserve both
  induced orientations and preserve positivity.
- Accumulation behavior / scope compatibility: all three records are formed
  from the one frozen seed in a finite simultaneous pass; no record is updated
  by another landing output, so no repeated-scope forcing exists.
- Obligation locality classification: `step-local` (the direct constant
  arithmetic is still pending proof).
- Noncircular closure status: `E_seed` and `E_sm` are the only producers;
  `E_land_pre` is emitted before any of `step_010`'s three solves.
- Entry-state / first-update stress result: at the exact orthogonal seed,
  `F=J=Q=I` and all reserves are exact; on a singular off-event tape the
  Moore--Penrose rule remains defined but the quantitative ordinary-inverse
  branch is not asserted.
- Baseline conclusion preserved: yes, the identity pair Gram and positive
  scale congruence are exact.
- Producer-consumer provenance: `step_008 -> step_009 -> step_010`; there is
  one producer record per mode and no chronological predecessor edge.
- Null or boundary regime tested: if `eta_J >= 1`, the reserve cannot be
  exported; this is recorded as a step-level failure, not hidden in an
  assumption.
- Target conclusion false or obstruction present if source vanishes: without
  the positive floor, the three landing outputs may be nonunique or have zero
  normalizers.
- Repair route if unsupported: `sketch/interface defect`; tighten the direct
  pair-Gram expansion or record a blocker rather than adding a generated
  reserve as a primitive condition.

### `step_010`: joint landing, exact span, and one rebalance

- Claim class: generated target-span membership, positive normalizers, and
  quotient basin entry; theorem role: sole producer of the cyclic-phase entry.
- Mechanism source: frozen-input ordinary-inverse identities, range inclusion
  `range(T_(M)) subseteq range(G_M)`, and exact column normalization/rebalance.
  These are direct current-setting unfolding identities (the parent paper is
  provenance for the algorithmic convention, not an imported theorem label),
  so the source convention is the displayed tensor unfolding and Khatri--Rao
  design in `setting.md`.  The pseudoinverse is the legal algorithmic
  definition on every tape; ordinary-inverse formulas are used only after
  `E_land_pre`.
- Source-to-claim adequacy: for all modes independently,
  `tilde X_M=G_M B_M` with
  `B_M=D_lambda Q_M^0 (J_M^0)^(-1)(D_{-M}^0)^(-1)`.  Derive
  `||D_lambda Q_M^0(J_M^0)^(-1)D_lambda^(-1)-I|| <= Gamma eta_A` and
  `(1-Gamma eta_A) ell_{M,j}^0 <= tilde d_{M,j} <=
  (1+Gamma eta_A) ell_{M,j}^0` before the joint commit.  The exact range
  identity separately covers singular tapes.
- Residual-to-target adequacy: every `tilde X_M` lies in the exact consumed
  target span `range(G_M)`; the positive-norm rebalance preserves each
  represented rank-one product exactly.  The residual fields after the
  landing solve are zero in all modes, so the quotient target is the same
  target, not a transformed surrogate.
- Key positive/control term or structural source: positive diagonal scale
  `D_{-M}^0`, inverse floor `1-eta_J`, and normalizer floor
  `1-Gamma eta_A`.
- Opposing defect terms: coefficient congruence error and normalization
  error; both are bounded by `Gamma eta_A` and then by `4096 omega` after
  the single rebalance.
- Closure/dominance/absorption relation: evaluate all three outputs from the
  frozen data, bound their directions and products independently, commit
  jointly, then apply one product-preserving equal-norm map. No output is
  reused during the landing pass.
- Accumulation behavior / scope compatibility: one transaction, so the only
  accumulated defect is the finite sum of three modewise `O(omega)` terms;
  the `4096` budget absorbs it once before cyclic refinement.
- Obligation locality classification: `step-local` (exact `4096` arithmetic
  and residual transfer remain to be checked).
- Noncircular closure status: `E_land_pre -> three independent formulas ->
  E_land`; there is no U-to-V or V-to-W producer-consumer path.
- Entry-state / first-update stress result: exact component seed gives all
  three target factors and rebalance identity before cyclic ALS; zero
  normalizer on an off-event tape triggers observable run failure.
- Baseline conclusion preserved: explicitly, `s^land=0`, `C_M^land=0`, and
  residual zero at the exact orthogonal/equal-weight seed.
- Producer-consumer provenance: `step_010` is the only producer consumed by
  `step_011` and `step_012`.
- Null or boundary regime tested: singular design uses the Moore--Penrose
  output but cannot enter the quantitative basin unless the generated reserve
  holds; zero active output norm is an observable unsuccessful branch.
- Target conclusion false or obstruction present if source vanishes: without
  simultaneous exact-span output, the cyclic contraction would consume an
  unproved predecessor or a non-target perpendicular field.
- Repair route if unsupported: `sketch/interface defect`; add a direct
  same-target residual bridge or route to idea/theorem-contract review if the
  `4096 omega` target cannot be met under the fixed goal.

### `step_011`: chronological cyclic quotient contraction

- Claim class: generated target-span invariant, scale-equivariant recurrence,
  and convergence; theorem role: supplies `E_basin` and the successful
  trajectory contraction.
- Mechanism source: direct current-notation cyclic normal equations on the
  exact target span, pair-Gram inverse perturbation under `q_real <= q_*`, and
  the positive product-one quotient.  Uschmajew DOI `10.1137/110843587` is a
  quotient-interpretation wrapper only; its existential neighborhood is not
  imported as an assumption.
- Source-to-claim adequacy: define the mode-coordinate maps
  `U_M^q` with two held quotient inputs, then the literal chronology
  `e -> e_U -> e_V -> e_W` where each `Refresh_s` overwrites the one common
  product register before the next solve.  Derive exact scale equivariance,
  quotient equivalence to literal ALS, and a full-sweep factor bounded by
  `8q_*+32rho_ALS < 1/16` on the generated target-span tube.
- Residual-to-target adequacy: every refreshed state is a representation of
  the literal active rank-`r` factors with the same rank-one products; the
  inactive `k-r` columns remain exactly zero.  The quotient-to-Frobenius
  conversion uses the original tensor and factors, not a surrogate loss.
- Key positive/control term or structural source: target-span invariance,
  `1-q_*^2` Khatri--Rao floor, and the strict numerical chart radius
  `rho_ALS=1/1024`.
- Opposing defect terms: held-mode direction errors, pair-Gram off-diagonal
  mass, and common-product log error; each is multiplied by the explicit
  small-gain coefficient before chronological composition.
- Closure/dominance/absorption relation: a U output depends only on old V/W
  quotient coordinates; after `Refresh_s^U`, the V estimate uses the new U
  field and old W; after `Refresh_s^V`, W uses the two current fields.  The
  three inequalities compose to a full-sweep contraction below `1/16` (and
  hence below `1/4`) without any predecessor comparator.
- Accumulation behavior / scope compatibility: the quotient error recurrence
  has the one-step relation `d_Q(e^{t+1},e^*) <= ell d_Q(e^t,e^*)` with
  potential drop `(1-ell)d_Q(e^t,e^*)`; its geometric sum is at most
  `d_Q(e^0,e^*)/(1-ell)`, so the declared all-sweeps scope has finite budget
  and no persistent additive forcing.  Exact target-span membership is
  preserved by each unfolding range identity.
- Obligation locality classification: `step-local` for the direct normal
  equation and composition; `sketch/interface defect` if a uniform constant
  cannot be obtained on the generated radius.
- Noncircular closure status: `E_land` produces the first target-span state;
  each exact block range identity produces the next target-span state before
  its consumer; `E_basin` is therefore a noncircular induction.
- Entry-state / first-update stress result: the allowed entry is
  `e^land` with `d_Q(e^land,0)<rho_ALS/3`.  At the exact orthogonal seed the
  first U/V/W updates are stationary and `s_U=s_V=s_W=0`; if the target-span
  source vanished, a false contraction could be claimed, so the range trace
  is explicit.
- Baseline conclusion preserved: exact target factors are fixed and the
  quotient error remains zero for every cyclic sweep.
- Producer-consumer provenance: `step_010 -> step_011 -> step_012`; within
  `step_011`, only chronological refreshed full states are consumed.
- Null or boundary regime tested: a Moore--Penrose singular branch outside
  `E_land` is not asserted to contract and is handled by the cap.
- Target conclusion false or obstruction present if source vanishes: without
  exact-span invariance or a positive pair-Gram floor, arbitrary-accuracy
  convergence and no-error-floor claims fail.
- Repair route if unsupported: `sketch/interface defect` if a direct
  current-notation bound repairs it; otherwise `idea/theorem-contract defect`
  only if the fixed target radius or contraction goal must change.

### `step_012`: stopping, finite cap, runtime, and restarts

- Claim class: generated stopping/rate specialization and all-tape finite
  termination; theorem role: supplies `E_stop`, `E_run_cap`, and `E_restart`.
- Mechanism source: the geometric quotient recurrence from `step_011`, the
  original residual test, the pre-registered observable cap, and independent
  full-run proposal randomness.
- Source-to-claim adequacy: choose `m_cap=ceil(C_stop log(8 kappa_0^2/epsilon))`
  so a covered run reaches the original residual threshold before the cap;
  on every other tape, either the residual hits or the counter returns an
  observable unsuccessful result.  The finite dense cost uses only `T` and
  current factors.
- Residual-to-target adequacy: the stopping test is exactly the setting's
  relative Frobenius residual; no quotient proxy is returned as the theorem
  output.
- Key positive/control term or structural source: full-sweep contraction and
  `J=Theta(log(1/delta_init))` independent restarts.
- Opposing defect terms: failed proposal gates, singular Moore--Penrose
  branches, and nonhitting tapes; all are stopped by finite declared work.
- Closure/dominance/absorption relation: `E_cov -> E_stop` gives a one-run
  success lower bound; `E_run_cap` makes every run finite; the failure product
  `(1-p_0)^J` is absorbed below `delta_init` by the restart choice.
- Accumulation behavior / scope compatibility: finite cap per run and finite
  restart count; no all-time computational claim.
- Obligation locality classification: `step-local`.
- Noncircular closure status: cap configuration precedes active refinement;
  restart amplification consumes only completed-run outcomes and does not
  assume basin membership on failed tapes.
- Entry-state / first-update stress result: a covered landing enters the
  residual recurrence at sweep zero; an off-event tape can stop immediately
  or time out, so it cannot block the next restart.
- Baseline conclusion preserved: exact orthogonal residual is zero at the
  first test, independent of `m_cap`.
- Producer-consumer provenance: `step_003` supplies the one-run probability,
  `step_011` supplies `E_stop`, and `step_012` supplies the final confidence
  and runtime interface.
- Null or boundary regime tested: `epsilon` in `(0,1)` and
  `delta_init` in `(0,1)`; `J` is clamped below by one.
- Target conclusion false or obstruction present if source vanishes: without
  finite termination or a positive one-run success probability, the nested
  probability/runtime theorem is not established.
- Repair route if unsupported: `sketch/interface defect`; adjust only cap
  arithmetic or dense cost accounting, not the algorithmic success rule.

### `step_013`: exact orthogonal equal-weight baseline

- Claim class: exact/noiseless specialization and baseline invariance; theorem
  role: preserves the inherited zero-error conclusion.
- Mechanism source: direct substitution of orthogonal equal-weight factors in
  the frozen designs, ordinary inverses, joint landing formulas, rebalance,
  and cyclic normal equations.
- Source-to-claim adequacy: all normalized pair/cross Grams are identity,
  all `Q_M^0=J_M^0=I`, each landing output equals the target factor, and the
  common product log error and all refreshed registers are zero.
- Residual-to-target adequacy: the produced factors equal the consumed target
  factors exactly in the original CP representation, so the Frobenius residual
  is exactly zero rather than merely `O(omega)`.
- Key positive/control term or structural source: exact orthogonality and
  equal weights; no perturbative lower bound is needed.
- Opposing defect terms: none at the stationary baseline; a finite transient
  certificate is not substituted for the exact component state.
- Closure/dominance/absorption relation: direct identities imply a fixed point
  at every landing and cyclic update; no residual accumulation occurs.
- Accumulation behavior / scope compatibility: stationary zero forcing for all
  sweeps and all accuracy requests.
- Obligation locality classification: `step-local`.
- Noncircular closure status: direct specialization independent of the
  positive-rho event; it is a baseline bridge, not a premise for other steps.
- Entry-state / first-update stress result: the exact component seed is
  stationary before the first landing solve; the first update returns itself.
- Baseline conclusion preserved: explicitly yes, including arbitrary-accuracy
  zero-residual limit.
- Producer-consumer provenance: `step_013` is consumed by final assembly only.
- Null or boundary regime tested: deterministic rho-zero limit is discussed
  as a specialization, not as a replacement for `assump:gaussian-smoothing`.
- Target conclusion false or obstruction present if source vanishes: if the
  exact identity fails, the required baseline invariance is lost and the idea
  must be rejected rather than weakened.
- Repair route if unsupported: `idea/theorem-contract defect`; no weaker
  finite-error baseline is acceptable.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` realized geometry | `step_001` primitive-source derivation | base scales, base cumulative Gram, base weight ratio, Gaussian perturbation, smoothing margin | linear, quadratic, normalization tails controlled separately; no uncontrolled class | realized `U,V,W,lambda` are exactly the downstream target | separate concentration bounds then finite union and Schur/Gershgorin | `q_*`, norm floor `(2kappa_0)^(-1)`, `Gamma<=1.01` | `step_002`, `step_004`, `step_006`, `step_009`, `step_011` | None; direct derivation path is fixed |
| `E_win,E_cov` coverage | `step_002` -> `step_003` | independent raw Gaussian slots, `E_sm`, `k=U(r)` | competitor pair tails and target union controlled by Gaussian comparison/coupon bound | labels are proof-only; consumed state is observable stored state | `k p_win` chosen above the logarithmic coupon threshold | universal positive `p_0` | `step_004`, `step_012` | None |
| `E_cert_eq,E_cert_tail` | `step_005` | stored certified state, exact same-state map, `tau_r`, `E_sm` | Gram leakage, scalar normalization, certificate residual; each has an explicit budget | barred state is a sign/permutation representation of the same rank-one terms | scalar first-order cancellation plus finite `sqrt(r)tau_r` charge | retained coefficient floor and threshold `1/8` | `step_006`, `step_007` | None; source equation is produced before clustering |
| `E_support,E_cluster,E_gauge` | `step_006` | weighted tail ledger, score filter, graph inner products | singleton/multi-support tails and `Gamma-1` controlled; ties are observable | selected columns map to exact target columns under proof-only permutation/sign gauge | weighted score gap dominates tails; graph radius below `64q_*` | `0.85` score retention and exactly `r` components | `step_007`, `step_008` | None |
| `E_row` selected coefficient mass | `step_007` | same-state equation, dual bases, `E_support` | off-diagonal Gram and per-entry residual; no `r^2 tau_r` charge | selected raw state remains the consumed target object | small-root quadratic then row/column absorption | `omega=q_*^2+r tau_r` | `step_008` | None |
| `E_seed` balanced seed decomposition | `step_008` | `E_row`, best scalar, product-one gauge, `E_sm` | direction fields, perpendicular fields, product log error | exact seed terms are consumed by all three frozen designs | relative cube-root transfer and two-orientation bounds | `48omega`, `tau_r`, `128omega` | `step_009`, `step_013` | None |
| `E_land_pre` all-three reserve interface | `step_009` | `E_seed`, target Gram rows, `q_real`, `Gamma` | `C^0`, `N^0`, mixed/shared perpendicular charges; all controlled in both orientations | normalized `J_M^0` and full `H_M^0` describe the same frozen design via positive congruence | `eta_QJ` before inversion, Neumann `1-eta_J`, then `eta_A` | `eta_J<=1/64`, `Gamma eta_A<=128omega` | `step_010` | None if the direct `delta` arithmetic closes; otherwise explicit step-local blocker |
| `E_land` joint target-span landing | `step_010` | `E_land_pre`, frozen `X^0,Y^0,Z^0`, exact unfolding range | coefficient congruence and normalizer errors; singular/off-event branch is observable | each produced mode is in `range(G_M)`; rebalance preserves each represented product exactly | independent three-mode formulas, then one rebalance and `4096omega` sum | `d_Q(e^land,0)<rho_ALS/3`, positive normalizers | `step_011`, `step_012` | None if `4096omega` residual transfer closes; otherwise explicit step-local blocker |
| `E_basin` quotient recurrence | `step_011` | `E_land`, exact-span range, `q_real`, pair-Gram floor | held direction and product-log defects; no persistent forcing | refreshed state is quotient-equivalent to literal active factors | exact scale cancellation and chronological small-gain composition | `rho_ALS=1/1024`, factor `<1/16` | `step_012` | None if direct normal-equation bound closes; source citation is only a wrapper |
| `E_stop` residual accuracy | `step_012` on `E_basin` | quotient contraction, balanced chart norm conversion, original residual test | finite initial error and geometric tail; no additive floor | consumed metric is the original Frobenius residual | choose `m_cap` to absorb the geometric tail below `epsilon` | `m_cap=ceil(C_stop log(8kappa_0^2/epsilon))` | final theorem, `E_restart` | None |
| `E_run_cap,E_restart` | `step_012` | observable cap, Moore--Penrose branch, independent restarts | failed gate, singular solve, timeout; all finite and observable | successful output is the original rank-`k` CP tensor | `(1-p_0)^J <= delta_init`, dense cost per capped run | `J=max(1,ceil(C_rep log(1/delta_init)))` | final theorem | None |
| `E_baseline` | `step_013` direct specialization | exact orthogonality, equal weights, exact component seed | no defect at stationary state | produced and consumed factors coincide exactly | direct identity, no absorption needed | residual exactly zero | final theorem baseline clause | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | `step_001` from primitive smoothing assumptions | `step_002`, `step_004`, `step_006`, `step_009`, `step_011` | once-drawn instance event | primitive assumptions -> `step_001` -> each consumer | derived | None |
| `E_win` and per-target `p_win` | `step_002` | `step_003` | window probability | `E_sm` + independent Gaussian regression -> `E_win` | derived | None |
| `E_cov` and one-run lower bound `p_0` | `step_003` | `step_004`, `step_012` | all-target coverage and restart witness | `E_win` + independent slots + coupon bound -> `E_cov,p_0` | derived | None |
| `E_RS,E_chart,E_chart_l1,E_cert` | `step_004` | `step_005` | finite stored certified states | `E_cov` + old-state recurrence -> `E_cert` | derived | None |
| `E_cert_eq,E_cert_tail` | `step_005` | `step_006`, `step_007` | no-label support/score input | `E_cert` -> same-state equation/tail ledger -> consumers | derived | None |
| `E_support,E_cluster,E_gauge` | `step_006` | `step_007`, `step_008` | exactly one selected representative per target | `E_cert_tail` + weighted score gap -> graph/gauge outputs | derived | None |
| `E_col,E_row_residual,E_row` | `step_007` | `step_008` | selected coefficient mass | `E_cert_eq,E_support` -> dual bootstrap -> row/column closure | derived | None |
| `E_seed` | `step_008` | `step_009`, `step_013` | frozen active landing input and baseline chart | `E_row,E_gauge` -> balanced best-scalar seed decomposition | derived | None |
| `E_land_pre` (`delta`/`eta` bounds, inverse reserves, scale congruences) | `step_009` | `step_010` | legal simultaneous landing-call interface | `E_sm,E_seed` -> all three frozen Gram expansions before any solve | derived | None unless direct reserve arithmetic fails; then step-local blocker |
| `E_land` (three coefficient outputs, positive normalizers, exact-span joint state, rebalance) | `step_010` | `step_011`, `step_012` | cyclic entry and rank-`r` active reduction | `E_land_pre` -> three independent solves -> joint commit -> one rebalance | derived | None unless `4096omega` bridge fails; then step-local blocker |
| `E_basin` (`Refresh_s` chronology and `Psi^q` contraction) | `step_011` | `step_012` | arbitrary-accuracy local refinement | `E_land` -> exact-span cyclic maps -> `e_U,e_V,e_W` -> `Psi^q` | derived | None unless direct contraction cannot be shown; then step-local blocker |
| `E_stop` | `step_012` | final assembly | residual `<=epsilon` on covered run | `E_basin` -> geometric recurrence -> residual test before cap | derived | None |
| `E_run_cap` | `step_012` cap and Moore--Penrose procedure | `E_restart`, final assembly | finite cost for every tape | primitive cap -> observable success or timeout -> completed run | derived | None |
| `E_restart` | `step_012` | final assembly | conditional `1-delta_init` success and runtime | `p_0` + independent completed runs + cap -> failure product | derived | None |
| `E_baseline` | `step_013` direct specialization | final assembly | exact orthogonal equal-weight clause | deterministic specialization -> exact landing/cyclic fixed point | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | On a single event of probability at least `1-delta_sm`, derive realized norm retention, `q_real<=q_*`, `Gamma<=1.01`, and every target Khatri--Rao Gram floor `1-q_*^2`, exposing the linear, quadratic, normalization, row-sum, and union contributions separately. | None | `assump:base-scale`, `assump:cumulative-gram`, `assump:base-weight-balance`, `assump:gaussian-smoothing`, `assump:smoothing-margin` (primitive) | normalized Gaussian perturbation and finite-union bookkeeping | direct Gaussian concentration, normalization expansion, Schur product, Gershgorin | `E_sm` | Smoothed-instance geometry objective; explicit `n,r,kappa_0,rho,delta_sm` and probability conversion | PENDING |
| `step_002` | For each target, prove the jointly observable three-mode window and competitor pair event with probability between universal multiples of `r^(-5/3)(log r)^(-3/2)`. | `step_001` | `assump:random-initialization` (primitive), `E_sm` (derived) | correlated Gaussian coordinates and product tails | Gaussian regression and product-tail comparison | `E_win`, `p_win` | Window objective; fixed-horizon per-slot probability with no confidence hidden in `k` | PENDING |
| `step_003` | Use `k=U(r)` independent slots to obtain a universal positive all-target coverage probability and define the proof-only event `E_cov`; labels remain absent from the algorithm. | `step_002` | `assump:subquadratic-rank`, `assump:random-initialization` (primitive), `E_win` (derived) | coupon bound over target events without assuming target independence | binomial miss bound and union bound | `E_cov`, `p_0` | Window/coverage objective; rank `Theta(r^(5/3)(log r)^(5/2))` | PENDING |
| `step_004` | Derive the exact displayed `R,S` recurrences, denominator persistence, chart self-map, and finite burn/certification horizon yielding a stored state with `zeta<=tau_r` for every covered slot. | `step_001`, `step_003` | `E_sm`, `E_cov` (derived), `assump:subquadratic-rank` (primitive) | first-update activation, ratio-to-projective conversion, and noncircular denominator induction | exact simultaneous Jacobi expansion, invariant interval, contraction mapping, dual l1 recurrence | `E_RS`, `E_chart`, `E_chart_l1`, `E_cert` | Certification objective; explicit `R_0,S_0,tau_r,L_burn,L_cert` | PENDING |
| `step_005` | For every certified slot, derive the raw right-sided signed same-state equation and the barred post-score equation, then emit the all-certified weighted threshold/tail ledger before labels or clustering. | `step_004` | `E_cert` (derived), `E_sm` (derived) | exact coefficient-vector expansion, scalar cancellation, and finite residual conversion | multilinearity, Cauchy--Schwarz, retained coefficient floor, weighted ledger | `E_cert_eq`, `E_cert_tail` | Certificate objective; explicit `sqrt(r)tau_r` and no-label scope | PENDING |
| `step_006` | Prove weighted singleton-versus-multi-support score separation, the `0.85` filter gap, graph separation, exactly `r` observable clusters, and a product-one sign/permutation gauge. | `step_005` | `E_sm`, `E_cert_eq`, `E_cert_tail` (derived) | unequal weights, threshold straddling, and graph ties | weighted score inequalities and observable inner-product graph | `E_support`, `E_cluster`, `E_gauge` | Structural objective; explicit score/filter/graph margins | PENDING |
| `step_007` | From the selected same-state equation, close the dual-coordinate column bootstrap and both induced row/column coefficient masses, including per-entry projected residual at most `2 tau_r`. | `step_005`, `step_006` | `E_sm`, `E_cert_eq`, `E_support`, `E_cluster` (derived) | small-root selection, diagonal normalization, and avoiding an `r^2 tau_r` loss | true-factor dual algebra, Hadamard l1 inequalities, root/absorption arithmetic | `E_col`, `E_row_residual`, `E_row` | Selected-state objective; explicit `omega=q_*^2+r tau_r` | PENDING |
| `step_008` | Transfer the observable balanced best-scalar seed into the exact decomposition `P_M^0=G_M(I+C_M^0)+N_M^0`, with row/column field at most `48 omega`, perpendicular columns at most `tau_r`, and `||s^0||_infty<=128 omega`. | `step_006`, `step_007` | `E_sm`, `E_gauge`, `E_row`, `assump:base-weight-balance` (primitive) | amplitude/sign synchronization and residual-to-target transfer | tensor expansion, product-one balanced gauge, relative cube-root map | `E_seed` | Seed-entry objective; `C_best` and `128/48/tau_r` bounds independent of generated condition numbers | PENDING |
| `step_009` | Before any landing solve, derive simultaneously for all `M in {U,V,W}` the `delta_L,delta_F,delta_FL,alpha_0,eta_J,eta_QJ,eta_A` bounds, both induced inverse reserves, the positive scale congruences, and the output-normalizer reserve. | `step_001`, `step_008` | `E_sm`, `E_seed` (derived) | two-orientation frozen pair-Gram expansion, direct `Q-J` cancellation, and positive diagonal congruence | direct expansion with `C^0,N^0`, Schur/Hadamard l1 bounds, Neumann series | `E_land_pre` | Landing objective; fixed `eta_J<=1/64`, `Gamma eta_A<=128omega`, and positive normalizers | PENDING |
| `step_010` | Evaluate the three exact frozen-input Moore--Penrose solutions independently, use ordinary inverses only on `E_land_pre`, prove exact target-span membership and positive normalizers, commit all modes together, and after one rebalance obtain `d_Q(e^land,0)<=4096omega<rho_ALS/3`. | `step_009` | `E_land_pre`, `E_seed` (derived); `assump:accuracy-confidence` only for the observable failure branch | coefficient congruence transfer, simultaneous commit identity, and target-scale residual bridge | frozen-input Jacobi pseudoinverse identity, unfolding range inclusion, column normalization, product-preserving rebalance | `E_land`, `e^land` | Landing objective; one fixed transaction, no post-solve input, explicit `4096omega` bridge | PENDING |
| `step_011` | Starting from `E_land`, define the quotient block outputs and chronological `Refresh_s` states `e_U,e_V,e_W`; prove literal-ALS equivalence, exact target-span invariance, and a strict full-sweep contraction of `Psi^q` in `d_Q`. | `step_010` | `E_land`, `E_sm` (derived), `assump:base-scale` (primitive) | scale equivariance, held-input codomains, and sequential composition without predecessor comparators | direct current-notation normal-equation perturbation; Uschmajew DOI `10.1137/110843587` only for quotient interpretation | `E_basin`, `Psi^q` | Cyclic objective; `rho_ALS=1/1024`, factor `<1/16`, horizon-uniform after entry | PENDING |
| `step_012` | Convert the quotient recurrence to original residual stopping, configure the finite cap for every tape, charge dense runtime, and amplify the covered-run success to at least `1-delta_init` over `J` independent restarts. | `step_003`, `step_011` | `assump:random-initialization`, `assump:accuracy-confidence` (primitive), `E_cov`, `E_basin` (derived) | cap/nonhitting separation, Moore--Penrose singular branches, nested probability, and runtime accounting | geometric residual recurrence, observable counter, dense unfolding cost, restart product bound | `E_stop`, `E_run_cap`, `E_restart` | Runtime/confidence objective; `m_cap=ceil(C_stop log(8kappa_0^2/epsilon))`, `J=O(log(1/delta_init))` | PENDING |
| `step_013` | Under the deterministic orthogonal equal-weight specialization, verify that all three frozen landing outputs and every cyclic refresh equal the exact target factors with common product error zero and residual exactly zero. | `step_008`, `step_010`, `step_011`, `step_012` | deterministic limiting specialization of `E_sm`, `E_seed`, `E_land`, `E_basin` (derived) | preserving the exact baseline while keeping positive-rho assumptions binding for the main theorem | direct substitution in pair Grams, pseudoinverse formulas, rebalance, and cyclic normal equations | `E_baseline` | Baseline invariance objective; no error floor for any `epsilon>0` | PENDING |

## Dependency Notes

The dependency graph is acyclic.  Static smoothing (`step_001`) precedes all
probabilistic and deterministic trajectory claims.  Window probability and
coverage (`step_002`-`step_003`) precede ratio certification (`step_004`).  The
same-state equation and all-certified tail ledger (`step_005`) are produced
before score/cluster selection (`step_006`), so no target label or selected
coefficient is used to create its own classifier.  The selected coefficient
and row/column closure (`step_007`) precede the balanced seed (`step_008`).

The synchronized landing path is deliberately flat: `step_009` reads only
`E_sm` and `E_seed` and writes all three mode reserve records before any solve;
`step_010` reads those records and the one frozen seed, computes the three
outputs independently, and writes one joint `E_land`.  There is no dependency
from an output of the U solve to the V design, no dependency from V to W, and
no mode-specific predecessor-comparator object.  The first downstream consumer is the
cyclic quotient module (`step_011`), after exact target-span membership has
already been generated in all modes.

Within `step_011`, the only repeated states are the literal chronological
full states `e_U,e_V,e_W`; each `Refresh_s` overwrites the common product
register before the next block and is proved quotient-equivalent to the
literal ALS intermediate.  Thus the full-sweep map is a legal composition,
not a comparison of mismatched current/predecessor objects.  `step_012`
consumes `E_basin` only on the covered success path, while its cap branch
handles every other observable tape without assuming basin membership.
`step_013` is a terminal specialization and has no downstream proof
consumer.  Every generated output has a producer before its first consumer,
and every step row is `PENDING` for this initial sketch attempt.

## Blockers

No idea-level or theorem-contract change is asserted by this initial sketch.
The following are explicit step-local obligations, not hidden assumptions;
they remain open because no step proof has yet been written.

- `B1 (step_009)`: the direct two-orientation arithmetic must verify the
  displayed `delta`/`eta` constants and `Gamma eta_A <= 128 omega` from the
  exact `48 omega`/`tau_r` seed fields.  If this cannot be shown from the
  frozen seed, the missing exported reserve is a `sketch/interface defect`,
  not a reason to introduce a generated condition as a primitive assumption.
- `B2 (step_010)`: the three independent coefficient formulas must jointly
  imply the exact `4096 omega` quotient entry after one rebalance, including
  residual-to-target adequacy at the consumed target scale.  A failure here
  would route to `REVISE_SKETCH`; weakening the target radius or landing
  procedure is outside this attempt.
- `B3 (step_011)`: a direct current-notation cyclic normal-equation estimate
  must establish the stated `<1/16` full-sweep factor on the generated
  target-span tube.  The cited ALS paper is not treated as a source for the
  numerical radius.  If the estimate requires a new primitive mechanism or a
  changed theorem scope, that is an `idea/theorem-contract defect` for review.
- `B4 (step_012)`: the cap and dense-runtime arithmetic must show that every
  observable tape completes finite work while the cap is nonbinding on the
  covered success path.  This is a procedural accounting obligation and does
  not authorize a basin claim on failed tapes.
