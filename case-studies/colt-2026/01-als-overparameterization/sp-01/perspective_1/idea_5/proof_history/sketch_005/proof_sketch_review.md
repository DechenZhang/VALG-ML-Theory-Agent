# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_5`
- Sketch attempt: `2`
- Retry mode in the sketch: `revise_sketch`
- Proposal: stationarity-certified simultaneous Jacobi extreme-start
  proposal, oriented pre-cluster certificate, observable clustering, and
  active cyclic ALS carry-over
- Progress type: `conditional`
- Target rank: `U(r) = Theta(r^(5/3) (log r)^(5/2))`
- Reviewed current `setting.md`, `idea.md`, `proof_sketch.md`,
  `proof_tracker.md`, `technical_survey.md`, and the archived attempt-1
  review/failure lineage.
- Repair lineage: attempt 2 correctly adds `step_004b` before clustering,
  separates trajectory chart error from selected coefficient error, adds a
  score threshold and numerical constants, and states the active rank-r
  reduction.  Those repairs are treated as substantive, not merely metadata.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The conditional source-facing goal is preserved: the same
  asymmetric CP least-squares objective, arbitrary relative error, separate
  instance and initialization probabilities, polynomial runtime, exact
  rank exponent, and orthogonal zero-limit all remain in the setting.  The
  certificate/carry-over procedure is the declared algorithmic delta.
- Dependency audit: The prior `step_005` to `step_006` producer cycle is
  repaired by `step_004b`, and the generated flow is now forward.  The new
  table entry for `step_004b` has a dimension/side ambiguity for `Sigma_M`,
  and the chart-to-dual-l1 interface used to select the small root is still
  not actually exported.
- High-risk coverage: Static smoothing, window tails, simultaneous ratio
  recurrence, finite certification, score margins, sign/theta nonzero
  handling, dual small-root arithmetic, active zero padding, and runtime
  accounting are substantially more concrete.  The support dichotomy is
  false in an allowed exact baseline, and the target-scale row residual and
  chart l1 controls remain unresolved.
- Explicit-rate coverage: `tau_r`, burn/certification horizons, `omega`,
  `C_best=512`, `rho_ALS=1/1024`, stopping constant, restart count, and a
  polynomial operation bound are exposed.  The numerical basin claim still
  needs an explicit definition of the quotient norm and a proof that the
  displayed amplitude bound with `kappa_0` is compatible with the
  kappa-independent `C_best` specialization.
- Assumption and citation plausibility: Primitive assumptions are cited by
  stable ids.  The Uschmajew DOI and theorem labels are used only for the
  quotient/local mechanism, with its numeric-radius and zero-padding limits
  acknowledged.  The remaining issues are direct-derivation/interface
  defects, not unsupported citations or a changed theorem contract.

## Early Obstruction Audit

- Limiting-case stress: The exact orthogonal equal-weight map and stationary
  component still pass, and the sketch honestly retains a finite q-zero
  certificate residual.  However, the allowed orthogonal baseline also has
  fixed points with arbitrary support size.  For a set of `m` orthogonal
  equal-weight components, taking each of `p,q,s` to be the normalized equal
  sum over that set gives a projective fixed point with score
  `lambda/sqrt(m)`.  For `m >= 32`, every dual coefficient is below `1/4`,
  contradicting the stated alternative that every non-component state has
  two coordinates of mass at least `1/4`.  The score filter can still reject
  this state, but the stated proof witness cannot classify it.
- Theorem-critical bridge support: `E_sm`, `E_win`, `E_cov`, and the
  simultaneous recurrence have plausible direct sources.  `E_chart` now has
  a named radius and numerical Lipschitz bound, but the sketch does not show
  that the map sends the closed chart into itself or define the `a_t` used in
  the ambient norm conversion.  `E_cert_eq` is a valid same-state producer
  in principle.  `E_cluster`, `E_col`, `E_row`, `E_best`, and `E_basin` need
  the repairs listed below.
- Exported-interface feasibility: `E_cluster` exports a max-ratio/ambient
  chart radius, while `step_006` needs an r-uniform dual coefficient column
  l1 bound `chi <= 1/128` to select the small quadratic root.  Ambient l2 or
  max-ratio control alone gives an l1 bound that can grow with `sqrt(r)`.
  The row interface similarly states a column l1 residual bound and then
  uses a row budget; a separate per-entry or dual-row-l2 bound is needed to
  avoid an `r^2 tau_r` accumulation.
- Theorem-critical mechanism witness gate: The witnesses for geometry,
  coverage, same-state production, and the active rank-r reduction identify
  concrete sources.  The support classifier's source-to-claim match fails
  on the large-support orthogonal fixed point.  The chart witness lacks a
  self-map/initial-radius relation, and the l1/root and row residual
  witnesses omit source-adequate scale conversions.  These are
  `sketch/interface defect` findings.
- Entry-state trace stress: The window gives `R_0 <= 19/20`, the first
  simultaneous update has denominator at least `31/32`, and the q-zero map
  is correctly traced.  The transition from pair-mass recurrence to an
  ambient chart uses an undefined `a_t`; it must state whether `a_t` is a
  max, l1, or l2 ratio mass and prove the corresponding recurrence.  The
  Banach step must also show self-mapping before invoking a fixed point.
- Obligation locality classification: Static smoothing, Gaussian windows,
  coupon coverage, restart arithmetic, and the direct exact baseline are
  step-local in outline.  The support-size dichotomy, chart-to-l1 bridge,
  sign gauge, projected residual row budget, and quotient scale conversion
  are `sketch/interface defect`.  No current issue requires an
  `idea/theorem-contract defect`.
- Noncircular closure gate: The new flow `step_004 -> step_004b -> step_005
  -> step_006` is noncircular.  The column root is intended to precede row
  absorption.  The remaining closure is not yet independently justified:
  `chi <= 1/128` is taken from a chart that does not export l1 control, and
  the row bound takes a per-column residual estimate as if it were a
  per-entry estimate.
- Mechanism-source and boundary stress: The signed certificate equation is
  a valid multilinear direct source.  The negative-score branch is not yet
  gauge-consistent: the text says to flip one mode when `theta < 0` while
  also saying the product of flips is one; one flip has product minus one.
  The equation in the step table writes `Sigma_M G_M K_M` although the
  column sign diagonal must act on the right (or be absorbed columnwise).
  These convention errors affect the selected coefficient bridge.
- Generated-output flow: `E_sm`, `E_win`, `E_cov`, `E_RS`, `E_chart`,
  `E_cert`, and `E_cert_eq` now have producers before consumers.  The flow
  still needs explicit outputs for the chart's ratio l1 mass, per-entry
  dual residual bound, and the post-gauge scalar convention.  Without them,
  `E_col` and `E_row` are not legally target-scale interfaces.
- Source-to-claim adequacy: Gaussian concentration, Schur products, the
  simultaneous old-state algebra, and the same-state multilinear identity
  match their claim classes.  The support bound needs a general support/
  l2 argument rather than the false two-coordinate threshold.  The local
  ALS citation is appropriately limited, but the branch's direct numeric
  tube and quotient norm still require explicit current-notation definitions.
- Residual-to-target adequacy: `zeta` controls distance to a stored state's
  own contraction, not directly to a true factor.  The attempt now separates
  chart bias and certificate error conceptually, but the chart-to-dual-l1
  conversion and the per-entry residual source are missing.  The displayed
  `omega = q_*^2 + r tau_r` target scale is valid only after those two
  conversions are supplied; otherwise row accumulation can be `r^2 tau_r`.
- Baseline invariance audit: The exact map, exact stationary zero residual,
  and arbitrary-accuracy conclusion are preserved.  The rho-zero clause is
  now explicitly deterministic and limiting, so the positive-rho primitive
  domain is not silently changed.  The sign/gauge repair must be carried
  through this baseline row as well.
- Scope-accumulation compatibility: The finite ratio horizon uses a
  squaring/restoring recurrence.  The certificate residual is additive with
  finite budget `r tau_r`; the row relation has a proposed `1/8` absorption.
  Acceptance still requires a one-step per-entry residual estimate and an
  l1 chart bootstrap so that the declared finite budget is actually the one
  accumulated by the row norm.
- Scope and dependence consistency: Rank and confidence dependence remain
  explicit, and the runtime expression is polynomial.  The quotient norm,
  amplitude scaling, and `kappa_0` dependence are not synchronized: factor
  amplitudes are bounded by `256 kappa_0 omega`, but `C_best=512` is then
  treated as kappa-independent.  The sketch must either define a relative
  quotient coordinate that cancels this factor or carry the allowed
  `kappa_0` dependence through the tube condition.
- Generated-condition provenance: No generated event is placed in the
  primitive setting.  The missing outputs are quantitative refinements of
  `E_chart`, `E_cert_eq`, and `E_col`/`E_row`, not hidden assumptions.
- Citation and tool applicability: The cited Uschmajew source is identified
  by DOI, assumption, lemma, and theorem labels and its non-output boundaries
  are stated.  The source does not prove the branch's score classifier,
  chart radius, numeric cyclic constants, or zero-padding map; those remain
  direct obligations.
- Same-setting repair plausibility: Replace the support proxy with an
  l2/support-size alternative, export ratio l1 and dual-row-l2 controls,
  correct the sign/right-multiplication convention, and define the quotient
  scale.  These changes preserve the algorithm, rank, metric, conditional
  scope, and baseline.  They are therefore sketch repairs rather than a new
  idea.
- Target-preserving bridge-repair gate: The score filter may still reject all
  non-component fixed points using the general bound `score <= lambda_max /
  sqrt(2)` plus perturbations.  A corrected classifier does not weaken the
  arbitrary-accuracy target or alter the exact baseline.  No evidence forces
  `IDEA_FAIL` at this stage.
- High-risk obligation classes: structural support/lower bounds, recursive
  chart maintenance, sign synchronization, l1 residual accumulation,
  quotient scale, local contraction, and exact specialization are active.
  Static geometry, coverage, and restart cost are the only fully closed
  classes in the current sketch.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` norms, Gram rows, weights, KR floors | static conditioning event | Gaussian concentration, normalization, Schur product, Gershgorin | primitive assumptions to `step_001` | matches realized normalized factors | current Gram and Euclidean conventions | separate linear, quadratic, normalization margins imply `q_real <= q_*` and KR floor | `n,r,kappa_0,rho,delta_sm` and smoothing margin export all terms | same realized target, no surrogate | finite union, no trajectory accumulation | primitive assumptions to `step_001` | `step_001` to dynamic steps | rho-zero orthogonal limit is harmless for this static row | step-local | None |
| `E_win`, `p_win` | target entry and rank-rate source | correlated Gaussian regression and product tails | `E_sm` plus independent slots to `step_002` | target window and pair products match `R_0` | realized covariance convention is stated | two-sided probability at scale `r^(-5/3) log^(-3/2)` | raw window and competitor-pair controls export `p_win` | ratios consume these exact coordinates | finite competitor union | `E_sm` to `step_002` | `step_002` to `step_003` | finite-r constants still need explicit calibration | step-local | None |
| `E_cov` and `p_0` | all-target coverage and one-run success | independent-slot coupon bound | `step_002` to `step_003` | exponent and confidence mode match goal | slot independence is primitive | `k p_win >= 8 log r` and union miss bound | `C_rank` is independent of `delta_init` | proof labels are removed before algorithm selection | finite slot budget | `step_002` to `step_003` | `step_003` to `step_004`, `step_010` | null coverage event is explicitly charged | step-local | None |
| `E_RS` and denominator invariant | recursive chart activation | simultaneous old-state Jacobi expansion | `E_sm,E_win` to `step_004` | recurrence matches old-state map in outline | same old state is used in all modes | displayed R,S recurrence and positive denominator interval | `R_0,S_0,q_real,Gamma` are available | target-relative ratios are consumed | finite horizon with persistent q forcing | `E_sm,E_win` to `step_004` | `step_004` to chart | first update and q-zero squaring pass | step-local pending arithmetic | /proof-sketch |
| `E_chart` and `E_cert` | projective fixed point and certificate | normalized-map contraction and Banach | `step_004` direct derivation | claim class is appropriate | quotient signs and ambient norm need a fixed convention | `R_10`, ratio mass, self-map, `L_chart<1/4`, and `zeta_t` decay | must export an r-uniform ratio l1 bound, not only max ratio and ambient l2 radius; `a_t` is undefined | certificate residual is to `J(h)`, not target distance | geometric transient plus finite q forcing | `E_RS` to chart, then `E_cert` | `step_004` to `step_004b`, `step_005` | q-zero finite transient and chart boundary need first-update trace | sketch/interface defect | /proof-sketch |
| `E_cert_eq` | per-state same-state normal-equation producer | multilinearity and projective residual | `step_004b` from each certified slot | same-state K and P are correct | sign diagonal must act columnwise or on the right | signed identity with contraction norm and l2 residual budget | need exact sign-side convention and positive contraction norm | compares stored state only to its own contraction | finite per-column `tau_r` budget | `E_cert` to `step_004b` | `step_004b` to classifier and selected bridge | negative sign and q-zero stationary cases are covered in outline | sketch/interface defect | /proof-sketch |
| all-certified support/score classifier | structural membership and score gap | `E_cert_eq`, dual support algebra, orthogonal fixed-point calculation | `step_004b` plus `E_sm` to `step_005` | current two-coordinate support proxy is false for large support | target dual convention is otherwise compatible | need a general support-size or l2 alternative proving mixture score below `0.85` | export all-state support measure, score margins, and chart/l1 controls | selected states must map to one realized target | finite certified set | `E_cert_eq` to `step_005` | `step_005` to `E_cluster` | m-support orthogonal fixed point is a decisive boundary counterexample | sketch/interface defect | /proof-sketch |
| `E_cluster` and target margins | data-only representative selection | score gap and graph separation | `step_005` | graph metric matches target directions | sign/permutation is proof-only | within and cross correlation thresholds plus exact r clusters | must export per-mode dual l1 chart radius, denominator, and gauge, not only max ratio | graph and coefficient target are the same realized basis | finite graph, no accumulation | classifier to `E_cluster` | `E_cluster` to `step_006` | ties and negative scores are handled only after gauge correction | sketch/interface defect | /proof-sketch |
| sign/gauge interface | coefficient orientation and scalar consistency | contraction inner product and product-preserving sign symmetry | `step_005` direct derivation | sign claim is plausible, current flip statement is inconsistent | vector signs, `theta`, and scalar sign must be synchronized | prove all epsilon signs equal `sign(theta)` and define an orientation preserving the represented tensor | export oriented P, K, D, and the redefined scalar convention | no target bridge until orientation is fixed | sign is discrete, not an accumulated defect | `E_cert_eq` to score then gauge | gauge consumed by `step_006` and `step_007` | theta-negative exact component exposes the one-flip/product mismatch | sketch/interface defect | /proof-sketch |
| `E_col` and chi small root | selected coefficient column mass | dual basis and Hadamard products | `E_cert_eq,E_cluster` to `step_006` | source can prove column leakage if initial branch is supplied | H and dual conventions match | quadratic inequality and small-root selection are displayed | chart must export chi l1 or an equivalent r-uniform bound; max/ambient control is insufficient | coefficient target is the realized factor basis | quadratic forcing plus `r tau_r` residual | cluster and equation to root | root to `E_row`,`E_best` | large-root branch and high-support boundary need exclusion | sketch/interface defect | /proof-sketch |
| `E_row` and eta absorption | selected coefficient row mass | dual projection and spatial Hadamard small gain | `E_col` plus equation to `step_006` | proposed relation has correct type | inverse norm source is partial | row self coefficient below `1/8` only after all residual terms are bounded | need per-entry dual residual `O(tau_r)` and lambda/dual-row-l2 source; column l1 `O(r tau_r)` alone can yield `r^2 tau_r` | target row mass is consumed by basin bridge | additive sign-unknown certificate forcing, finite only with per-entry bound | column root to row inequality | `E_row` to `step_007`,`step_008` | q-zero transient and one-row boundary need explicit entrywise stress | sketch/interface defect | /proof-sketch |
| `E_best` best-scalar transfer | target-metric basin seed | tensor expansion and balanced cube-root map | `E_col,E_row` to `step_007` | target is the realized CP quotient | sign and scaling conventions need final definition | four-term residual decomposition and `C_best=512` are stated | factor amplitude is `256 kappa_0 omega` while `C_best` is kappa-independent; quotient norm must show cancellation or carry kappa | same Frobenius target, no surrogate intended | finite expansion, no recurrence | `step_006` to `step_007` | `E_best` to `step_008` | theta-zero and exact baseline branches are named | sketch/interface defect | /proof-sketch |
| `E_basin` and cyclic ALS contraction | invariant tube and terminal convergence | direct normal-equation bounds plus cited quotient interpretation | `E_sm,E_best` and Uschmajew to `step_008` | source role is limited correctly | active rank-r and balanced chart conventions need full map | inverse floor, per-mode `<1/16`, cyclic `<1/4`, and zero padding are displayed | define quotient norm and show `E_best` scale enters it uniformly over kappa | exact target is fixed, no forcing after entry | contractive all-time recurrence | `E_best` to `step_008` to `E_stop` | exact target first update and tube boundary pass in outline | sketch/interface defect pending scale clarification | /proof-sketch |
| `E_stop`, restart, runtime | public accuracy and confidence | contraction, residual equivalence, independent restarts | `step_008` and `step_003` to `step_009`,`step_010` | original metric and probability modes preserved | active zero padding is explicitly addressed | explicit stopping m and polynomial operation bound | costs and `k` dependence are exposed | returned tensor is original rank-k objective | finite stopping and independent failures | prior outputs to final theorem | `E_stop`,`E_restart` to assembly | exact baseline stops at zero residual | step-local after upstream repairs | /proof-sketch |
| exact rho-zero orthogonal baseline | baseline invariance | direct map and exact CP normal equations | deterministic specialization through `step_011` | inherited zero-limit is preserved | must keep gauge/scalar convention consistent | stationary `zeta=0`, `R=0`, arbitrary epsilon | explicit limiting clause avoids changing positive-rho probability theorem | exact produced and consumed tensor coincide | no accumulation at stationary point | direct baseline path | `step_011` to theorem | finite transient is not declared stationary | step-local after gauge repair | /proof-sketch |
| generated-output and artifact flow | theorem provenance | explicit producer-consumer tables | current sketch tables | mostly complete, but several interfaces are implicit | `Sigma` side and `a_t` notation need synchronization | every output must have a forward producer and final-use mapping | add ratio-l1, dual-row-l2, oriented-scalar, and quotient-norm rows | missing rows block target-scale audit | finite budgets attached to producers | forward graph after repairs | `E_chart` through `E_restart` | boundary rows for high support and negative theta required | sketch/interface defect | /proof-sketch |

## Blocking Issues

1. **The support dichotomy is false in an allowed exact baseline**
   (`proof_sketch.md:363-385`).  In the orthogonal equal-weight case, for any
   subset of `m` components the equal-support state is a projective fixed
   point with score `lambda/sqrt(m)`.  When `m >= 32`, no dual coordinate has
   mass at least `1/4`, contrary to the stated non-component alternative.
   The score filter may still reject the state, but the current source cannot
   prove the mixture upper bound for all certified states.  Replace the proxy
   with a support-size or l2-mass dichotomy and prove the `1/sqrt(2)` bound
   directly.  Smallest repair: `step_005`.

2. **The chart does not export the l1 control required by the small-root
   branch** (`proof_sketch.md:306-324`, `438-450`).  `chi` is a maximum column
   l1 dual error, but `E_chart` states only individual ratio and ambient l2
   bounds.  Those bounds can grow as `sqrt(r)` in l1, and the undefined `a_t`
   is used in the norm conversion.  Add a definition and recurrence for ratio
   l1 mass (or a direct dual l1 bound) and prove that the chart maps to itself.
   Smallest repair: `step_004` and the `E_chart` interface.

3. **The sign/gauge equation is still conventionally inconsistent**
   (`proof_sketch.md:326-343`, `386-394`, and step-table line 731).  A matrix
   sign diagonal cannot multiply `G_M K_M` on the left; it must act on columns
   on the right or be written entrywise.  More importantly, flipping one mode
   when `theta` is negative has product minus one, not product one.  Define
   the oriented columns, the product-preserving gauge, and any scalar sign
   update explicitly so the stored represented tensor and `K_M` use the same
   convention.  Smallest repair: `step_004b`/`step_005`.

4. **The row residual budget needs an entrywise source**
   (`proof_sketch.md:438-465`, `451-464`).  The displayed column l1 estimate
   of `2 r tau_r` does not imply a row mass of `2 r tau_r`; summing that bound
   over `r` selected columns can produce `O(r^2 tau_r)`.  Supply a separate
   dual-row l2 or entrywise estimate of `O(tau_r)` using the Gram inverse and
   contraction norm/lambda bounds, then derive the row budget.  Otherwise the
   advertised `omega=q_*^2+r tau_r` interface is unsupported.  Smallest
   repair: `step_006`.

5. **The best-scalar quotient scale is not synchronized with kappa dependence**
   (`proof_sketch.md:498-520`).  The sketch first bounds absolute factor
   amplitude errors by `256 kappa_0 omega`, then asserts a kappa-independent
   quotient distance and `C_best=512`.  Define the quotient norm and show
   the relative cube-root cancellation explicitly, or carry the allowed
   kappa dependence into the basin radius and recheck the numeric inequality
   uniformly over the setting's polynomial `kappa_0` regime.  Smallest
   repair: `step_007`-`step_008`.

6. **The Banach chart witness still lacks a self-map and a defined initial
   ratio mass** (`proof_sketch.md:306-322`).  A Lipschitz constant alone does
   not give a fixed point in the stated closed chart.  The proof sketch must
   show `J(C_j) subset C_j`, define `a_t`, and connect the recurrence to the
   initial displacement `3` used in the `zeta_t` bound.  Smallest repair:
   `step_004`.

7. **Generated interfaces are incomplete despite the repaired flow**
   (`proof_sketch.md:687-721`).  Add named outputs for ratio l1 chart mass,
   per-entry projected certificate residual, oriented scalar/gauge, and the
   quotient norm convention.  Until these are producers before `E_col`,
   `E_row`, and `E_best`, their table rows are not source-adequate.  Smallest
   repair: flow tables and affected steps `004`-`008`.

## Required Repair Bundle

1. Replace the false `1/4` support-proxy alternative with a general
   support-size/l2 lemma that covers every certified state, including the
   exact m-support orthogonal fixed points.  Prove the mixture score upper
   bound and retain the existing numeric score gap.  Affected step: `step_005`.
2. Define `a_t` and export an r-uniform ratio l1 or dual-column-l1 chart
   bound.  Prove the normalized Jacobi map is a self-map of the closed chart,
   then derive the stated `zeta` horizon.  Affected step: `step_004`; flow
   output: `E_chart_l1`.
3. Correct the sign-matrix side in `step_004b`, specify the product-preserving
   orientation for both positive and negative `theta`, and state whether the
   scalar is recomputed after gauge.  Affected steps: `step_004b`, `step_005`,
   `step_007`; flow output: `E_gauge`.
4. Derive both a projected residual column l1 bound and a per-entry/dual-row
   l2 bound.  Recompute `eta_row` with the actual accumulated defect and
   verify it remains `O(q_*^2+r tau_r)`.  Affected step: `step_006`; flow
   output: `E_row_residual`.
5. Define `norm(e)_Q` and the balanced amplitude coordinates.  Show that the
   `kappa_0` factor in absolute cube-root errors cancels in the relative
   quotient norm, or revise `C_best` and `rho_ALS` with an explicit uniform
   kappa-dependent inequality.  Affected steps: `step_007` and `step_008`.
6. Synchronize the exported-interface and generated-flow tables, including
   the new rows above, the q-zero limiting clause, theta-zero rejection, and
   the exact active zero-padding map.  Affected steps: `step_004`-`step_011`.

Target-preserving repair check: all six repairs are same-setting algebra,
interface, or quantitative-specialization changes.  They preserve the
algorithm, rank, conditional theorem mode, original Frobenius metric,
arbitrary-accuracy target, and exact orthogonal baseline.  The large-support
counterexample invalidates one proof route, not the score-filter conclusion
itself.  There is therefore no current basis for `IDEA_FAIL`.

## Review Rationale

Attempt 2 materially repairs the idea-4 time-slice failure and fixes the
producer ordering, finite chart horizon, score constants, residual classes,
active rank-r reduction, and rho-zero specialization.  It is nevertheless not
ready for step-level proof: the stated support witness is contradicted by an
allowed orthogonal fixed point, the chart-to-column-l1 bridge is absent, the
sign convention is inconsistent, and the row residual accumulation and
quotient scale are not yet target-adequate.  These are substantial but
repairable sketch/interface defects under the unchanged theorem contract, so
the deepest justified outcome is `REVISE_SKETCH` with viability score 6.
