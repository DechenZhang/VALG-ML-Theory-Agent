# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_5`
- Sketch attempt: `3`
- Retry mode in the sketch: `revise_sketch`
- Proposal: stationarity-certified simultaneous Jacobi extreme-start
  proposal, pre-cluster same-state certificate, observable clustering, and
  active cyclic ALS carry-over
- Progress type: `conditional`
- Target rank: `U(r) = Theta(r^(5/3) (log r)^(5/2))`
- Reviewed current `setting.md`, `idea.md`, `proof_sketch.md`,
  `proof_tracker.md`, `technical_survey.md`, and the archived attempt-2
  review/failure lineage.
- Repair lineage: attempt 3 fixes the prior false two-coordinate support
  proxy, defines `a_t` and `E_chart_l1`, places sign matrices on the right,
  supplies per-entry dual residual bounds, and defines relative amplitude
  quotient coordinates.  These changes are substantive and are credited
  below.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The conditional source-facing theorem remains unchanged in
  rank, objective, metric, arbitrary accuracy, probability modes, runtime,
  and exact orthogonal baseline.  The certificate and carry-over are still
  the declared procedural modification.
- Dependency audit: The producer order is now forward: recurrence and chart,
  pre-cluster certificate, support classification, selected coefficient
  bridge, and local ALS.  The generated flow includes the newly named chart
  l1, gauge, quotient, and residual outputs.
- High-risk coverage: Attempt 3 materially improves the chart self-map, l1
  ratio mass, sign-side convention, per-entry residual accumulation, and
  relative amplitude scaling.  The remaining theorem-critical failure is in
  the l2 pair-product/support lemma: it ignores the allowed `Gamma-1` weight
  defect, so its stated error and the downstream score proof are false on an
  exact allowed instance.
- Explicit-rate coverage: Horizons, `tau_r`, `omega`, `C_best`, the quotient
  tube, stopping constant, restart count, and runtime are exposed.  The
  score/profile constants must be recomputed with weight imbalance, and the
  graph margin constants should be rechecked after that correction.
- Assumption and citation plausibility: Primitive ids and source roles are
  clear.  The local ALS citation is correctly bounded to quotient
  interpretation and does not carry the numeric radius.  The remaining
  issue is a direct algebraic source mismatch, not a citation problem.

## Early Obstruction Audit

- Limiting-case stress: The exact orthogonal equal-weight fixed-point family
  with arbitrary support now is covered by the intended l2/support-size
  alternative.  However, the exact orthogonal *near-balanced unequal-weight*
  case is an allowed boundary and breaks the claimed quantitative profile.
  Take two orthogonal components with `lambda=(1,1.01)`.  The exact
  projective Jacobi fixed point on both components has each mode proportional
  to `1/lambda`.  Its squared profile has l1 distance about `0.00995` from
  `(1/2,1/2)`, while `32 q_*` is about `0.0078125`; the normalized pair
  product error is about `0.00497`, while `12 q_*` is about `0.00293`.
  Thus the displayed `32(q_*+tau_r)` profile and `12(q_*+tau_r)` pair-error
  bounds fail even with zero Gram interference and zero certificate error.
- Theorem-critical bridge support: `E_sm`, windows, coverage, the
  simultaneous recurrence, chart self-map, `E_cert_eq`, per-entry residual,
  relative quotient, and active rank-r reduction have plausible sources.
  The support lemma must use the weighted pair-product relation or a direct
  weighted score inequality.  Merely increasing its constants by a factor
  involving `Gamma-1` may destroy the displayed `0.85` score gap, so the
  weight dependence must be handled structurally.
- Exported-interface feasibility: `E_chart_l1` now supplies an r-uniform
  l1 input to `step_006`, and `E_row_residual` supplies per-entry and induced
  row/column budgets.  `E_cluster` and `E_gauge` remain downstream of the
  invalid unweighted support lemma; until that lemma is repaired, their
  score and graph margins are not legal theorem-facing outputs.
- Theorem-critical mechanism witness gate: The chart witness now names a
  self-map, l1 recurrence, fixed point, and horizon.  The residual witness
  names a dual-row l2 source and avoids an `r^2 tau_r` loss.  The support
  witness still has a source-to-claim mismatch because the exact contraction
  includes `diag(lambda)` in the pair product.  This is a
  `sketch/interface defect`.
- Entry-state trace stress: The window starts the recurrence with
  `R_0 <= 19/20`; the burn and chart bounds are numerically plausible, and
  the q-zero sign/gauge branch is explicitly traced.  The weighted exact
  fixed point above is the decisive entry/stationary stress for `step_005`.
  It is not a rare or transient state: its certificate residual is exactly
  zero, so it cannot be dismissed as a finite-horizon artifact.
- Obligation locality classification: Static geometry, coverage, chart
  recurrence, pre-cluster equation, per-entry residual conversion, restart
  arithmetic, and the deterministic baseline are step-local in outline.
  The weighted support/profile lemma and the resulting score/cluster bridge
  are `sketch/interface defect`.  No current evidence requires an
  `idea/theorem-contract defect`.
- Noncircular closure gate: The flow is noncircular and the column root is
  solved before row absorption.  The only failed closure is the local
  support-profile source; all downstream uses of its uniform-profile bound
  must be rerouted through a weighted or direct score lemma.
- Mechanism-source and boundary stress: The correct source equation for a
  mode contains `diag(lambda)` times the Hadamard product of the other two
  dual coefficient vectors.  The current equation drops that diagonal before
  assigning an error of order `q_*`.  Since `Gamma-1` is allowed to be much
  larger than `q_*`, the null Gram/noiseless boundary exposes the defect.
- Generated-output flow: Producers and consumers are now named for
  `E_chart_l1`, `E_cert_eq`, `E_gauge`, `E_row_residual`, `E_quotient`, and
  the final flow.  The support lemma's corrected weighted output must be
  inserted before `E_cluster`; otherwise the current flow is formally
  complete but semantically unsupported.
- Source-to-claim adequacy: Gaussian, Gram, recurrence, multilinear,
  dual-row, and quotient sources match their classes.  The pair-product
  stability source does not match the claimed unweighted profile in the
  near-balanced regime.  Uschmajew remains a properly delimited local source.
- Residual-to-target adequacy: The per-entry residual estimate now supports
  the advertised `r tau_r` row/column budget.  The relative amplitude
  coordinates remove the earlier apparent `kappa_0` mismatch.  These bridges
  are acceptable conditional on repairing the support/score source.
- Baseline invariance audit: The exact orthogonal map, zero stationary
  residual, finite transient caveat, and deterministic rho-zero limiting
  clause are preserved.  The unequal-weight orthogonal stress is within the
  baseline's allowed near-balanced regime and must be handled without
  weakening that baseline obligation.
- Scope-accumulation compatibility: The recurrence and chart use a finite
  geometric/squaring budget.  The certificate residual is sign-unknown but
  has a per-entry finite budget, so the row sum is `O(r tau_r)`.  The support
  profile is a finite stationary classification, but its defect budget must
  include the weight imbalance or use a weighted profile with no such loss.
- Scope and dependence consistency: Rank and confidence dependence remain
  explicit.  Relative amplitudes make the stated `C_best` independent of
  absolute base scale, provided the quotient norm definition is used exactly
  as written.  The constants in the support/score gap are not yet valid for
  all `Gamma <= 1.01`.
- Generated-condition provenance: No generated event is promoted to a
  primitive assumption.  Only the quantitative support classifier output
  needs replacement; its consumers are already identified.
- Citation and tool applicability: Source identities, labels, object maps,
  and non-output boundaries are adequate for the cited local ALS role.  No
  citation can repair the missing `diag(lambda)` term; that is a direct
  current-notation derivation obligation.
- Same-setting repair plausibility: Replace the unweighted profile relation
  by `diag(lambda)`-weighted relations and prove a score bound directly in
  terms of `lambda_max`, or define the weighted stationary profile.  For the
  exact orthogonal unequal-weight example the score is still below the
  `0.85` threshold, so the algorithmic target remains plausible.  This is a
  same-setting sketch repair.
- Target-preserving bridge-repair gate: The repair changes only the support
  lemma and its constants/interfaces.  It preserves rank, procedure, metric,
  conditional mode, arbitrary accuracy, and the exact baseline.  There is no
  current basis for `IDEA_FAIL`.
- High-risk obligation classes: Structural support and score margins,
  stationary fixed-point classification, explicit weight dependence,
  graph separation, and downstream basin entry are active.  Other high-risk
  classes pass in outline after attempt-3 repairs.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` norms, Gram rows, weights, KR floors | static conditioning event | Gaussian concentration, normalization, Schur product, Gershgorin | primitive assumptions to `step_001` | matches realized normalized factors | current Gram and Euclidean conventions | separate perturbation margins imply `q_real <= q_*`, `Gamma <= 1.01`, and KR floor | all smoothing variables and union factors are exposed | same realized target, no surrogate | finite static union | primitive assumptions to `step_001` | `step_001` to dynamic steps | orthogonal/rho-zero limit is harmless | step-local | None |
| `E_win`, `p_win`, `E_cov` | target entry and rank-rate source | Gaussian regression, product tails, coupon bound | `E_sm` plus independent slots to `step_002` and `step_003` | probability exponent and target ratios match | realized covariance and slot independence are stated | two-sided window rate and `k p_win >= 8 log r` | rank and confidence roles are separated | ratios consume exact raw coordinates | finite competitor/slot budget | `step_001` -> `step_002` -> `step_003` | first update and null coverage are charged | step-local | None |
| `E_RS` and denominator invariant | recursive chart activation | simultaneous old-state expansion | `E_sm,E_win` to `step_004` | recurrence matches old-state map | same old state in all modes | displayed R,S recurrence, burn arithmetic, denominator lower bound | `R_0,S_0,Gamma,q_real` and horizon are exposed | target-relative ratios are consumed | finite geometric/squaring accumulation | `E_sm,E_win` -> `step_004` | q-zero squaring and first denominator pass | step-local | None |
| `E_chart` and `E_chart_l1` | projective fixed point and r-uniform chart | dual l1 recurrence, self-map, Banach contraction | `step_004` direct derivation | claim class is appropriate | dual/ambient norms are explicitly related | `a_(t+1)`, `a_chart`, self-map, `L_chart`, and `zeta` horizon | l1 mass is exported without sqrt(r) conversion | chart error is distinct from target coefficient error | persistent q forcing is bounded; displacement is geometric | `E_RS` -> `E_chart,E_chart_l1` | `step_004` -> `step_004b`,`step_005`,`step_006` | q-zero finite transient and chart boundary are traced | step-local in outline | None |
| `E_cert_eq` | pre-cluster same-state equation | multilinearity and projective residual | `step_004b` from every certified slot | same-state K/P/D source is correct | right-sided column sign matrix is specified | signed equation and per-column l2 residual budget | nonzero contraction branch exports positive D | compares stored state to its own contraction only | finite `tau_r` budget | `E_cert` -> `step_004b` | `step_004b` -> `step_005`,`step_006` | q-zero transient and stationary cases pass | step-local | None |
| l2/support-size classifier | all-certified membership and score gap | pair-product stability plus exact orthogonal support calculation | `E_cert_eq,E_sm` to `step_005` | current unweighted relation does not match unequal-weight claim | source must include `diag(lambda)` | asserted profile error `32(q+tau)` and pair error `12(q+tau)` fail for `Gamma-1=0.01` | replace by weighted profile or direct lambda-max score bound | selected target bridge is downstream of this output | stationary weight defect is persistent, not a certificate residual | `E_cert_eq` -> classifier -> `E_cluster` | corrected classifier must feed score/graph outputs | exact orthogonal lambda=(1,1.01) is a counterexample | sketch/interface defect | /proof-sketch |
| `E_cluster` and `E_gauge` | data-only representative selection and orientation | corrected score gap and graph separation | `step_005` | graph/source plausible conditional on classifier repair | proof-only permutation and product-one gauge are compatible | `0.85` filter, graph thresholds, positive recomputed scalar | requires weighted score margins and per-mode chart/l1 output | same realized target metric | finite graph, no accumulation | classifier -> `E_cluster,E_gauge` | `step_005` -> `step_006`,`step_007` | negative theta and zero score branches are handled | sketch/interface defect pending classifier | /proof-sketch |
| `E_col` small root | selected dual coefficient column mass | dual basis and Hadamard products | `E_cert_eq,E_cluster,E_chart_l1` -> `step_006` | source is adequate after corrected cluster output | H and dual conventions match | explicit quadratic root and `chi_-` bound | initial chi l1 comes from `E_cluster` | target coefficient is realized factor basis | quadratic forcing plus finite certificate budget | cluster/equation -> root | `step_006` -> `E_row`,`E_best` | large-root branch excluded by chart | step-local conditional on classifier | /proof-sketch |
| `E_row_residual` and `E_row` | selected row/column mass and basin bridge | dual-row l2 bound, per-entry residual, Hadamard small gain | `step_006` | per-entry source now matches row claim | Gram inverse and D/lambda bounds stated | entrywise `2 tau_r`, induced `2r tau_r`, row self coefficient below `1/8` | no r-squared accumulation if per-entry estimate is proved | exact target-basis row/column interface | finite sign-unknown `r tau_r` budget | `E_col` -> residual -> row absorption | `step_006` -> `step_007`,`step_008` | q-zero finite transient is retained | step-local conditional on classifier | /proof-sketch |
| `E_best` and `E_quotient` | target-metric basin seed | tensor expansion, product-one gauge, relative cube-root map | `E_col,E_row,E_gauge` -> `step_007` | target and metric match | relative amplitudes resolve scale convention | `C_best=512`, `512 omega < rho_ALS/4` | relative amplitude, lambda ratio, and tensor norm bounds are exposed | direction, scalar, Gram, and cubic residual classes are separated | one finite expansion | `step_006` -> `step_007` | exact component and theta-zero boundaries handled | step-local conditional on classifier | /proof-sketch |
| `E_basin` and cyclic ALS | all-time tube and terminal convergence | direct inverse/update bounds plus quotient citation | `E_best,E_quotient,E_sm` -> `step_008` | source role and active rank-r map are plausible | zero padding and quotient conventions are stated | inverse floor, per-mode `<1/16`, cyclic `<1/4` | relative quotient constants are independent of kappa in outline | original Frobenius residual is linked by relative chart | no forcing after exact target entry | `E_best` -> `step_008` -> `E_stop` | exact target first update passes | step-local conditional on repaired input | /proof-sketch |
| `E_stop`, `E_restart`, runtime | public accuracy/confidence | contraction and independent restarts | `step_008`, `step_003` -> `step_009`,`step_010` | public modes preserved | active zero padding is explicit | stopping m, restart J, and polynomial cost are exposed | confidence does not enter rank | original rank-k Frobenius metric | finite stopping and independent failure product | prior outputs -> theorem | exact baseline stops at zero | step-local after upstream repair | /proof-sketch |
| rho-zero orthogonal baseline | baseline invariance | direct map and exact CP normal equations | deterministic specialization through `step_011` | inherited conclusion preserved | limiting clause and gauge are explicit | stationary zeta and R vanish; arbitrary epsilon remains | no probability claim at rho-zero | produced and consumed tensor identical | no accumulation at stationary state | direct baseline path | `step_011` -> theorem | finite transient not called stationary | step-local | None |
| generated-output/artifact flow | provenance and final assembly | producer-consumer tables | current sketch flow | names and order are largely synchronized | notation `a_t`, Sigma, gauge, quotient is mostly explicit | each output has a forward producer and consumer | add corrected weighted classifier output and constants | missing classifier invalidates downstream interfaces | finite budgets attached to outputs | forward graph after classifier repair | all E outputs to final theorem | weighted orthogonal boundary must be in flow | sketch/interface defect | /proof-sketch |

## Blocking Issues

1. **The l2 pair-product stability relation omits the weight diagonal**
   (`proof_sketch.md:417-433`).  In the realized-factor basis the exact
   orthogonal relation is proportional to
   `diag(lambda) (c_V circ c_W)`, not merely `c_V circ c_W`.  With orthogonal
   factors, `lambda=(1,1.01)`, and the two-support fixed point whose mode
   coefficients are proportional to `1/lambda`, the claimed normalized
   pair-product error is about `0.00497`, larger than `12 q_*` (about
   `0.00293`).  The claimed squared-profile l1 error is about `0.00995`,
   larger than `32 q_*` (about `0.0078125`).  This is an exact stationary
   counterexample, not a proof-tightness concern.  Smallest repair:
   `step_005`.

2. **The score/cluster conclusion currently rests on the false profile
   bound** (`proof_sketch.md:424-450`).  Replacing `32(q+tau)` by a loose
   multiple of `Gamma-1` may erase the numerical `0.85` gap, so the repair
   should use a weighted stationary profile or prove the score bound directly
   with `lambda_max` and support size.  Recompute the graph and score margins
   under `Gamma <= 1.01`; do not silently retain the old constants.

3. **The corrected weighted classifier must be exported as a new interface**
   (`proof_sketch.md:791-830`).  `E_cluster` currently declares the invalid
   unweighted profile as its source.  Add a weighted support/score output,
   its defect budget, and its consumer path before `E_gauge`, `E_col`, and
   the representative selection theorem.

4. **The top-level same-state equation and post-gauge equation use two
   conventions without a single binding definition** (`proof_sketch.md:103-112`,
   `364-392`).  The body now gives the right-sided Sigma and a plausible
   bar-state gauge, but the opening equation omits Sigma and the setting's
   generic notation still calls the post-sign residual `R_M`.  Synchronize
   the pre-score and post-score equations so later proof steps cannot mix
   `P`, `bar P`, `theta`, and `bar theta`.

## Required Repair Bundle

1. Re-derive the all-certified support lemma with the exact lambda-weighted
   pair-product equations.  Either prove a weighted profile stability result
   with an explicit `Gamma` term, or bypass profile closeness and prove
   directly that every non-component branch has score at most
   `lambda_max / sqrt(2)` plus a small `q_*` and `tau_r` defect.  Recheck the
   `0.85` filter and graph thresholds.  Affected step: `step_005`.
2. Add the corrected weighted classifier, score margin, and graph margin to
   `E_cluster` and the generated-output flow.  Ensure the exact orthogonal
   unequal-weight boundary is explicitly covered.  Affected steps:
   `step_005` and flow tables.
3. Synchronize the binding pre-score signed equation, post-gauge equation,
   scalar redefinition, and residual notation across `setting.md`, the
   roadmap, and `step_004b`/`step_007`.  Affected steps: `step_004b`,
   `step_005`, `step_007`.

Target-preserving repair check: these repairs alter only a direct support/
score lemma and notation/interface synchronization.  They preserve the
algorithm, rank, conditional theorem mode, original Frobenius metric,
arbitrary-accuracy target, and exact orthogonal baseline.  The weighted
orthogonal counterexample does not refute the score-filter idea; it refutes
the current unweighted proof witness.  No current evidence supports
`IDEA_FAIL`.

## Review Rationale

Attempt 3 resolves the attempt-2 objections about large-support states,
trajectory l1 control, sign-side placement, residual accumulation, and
relative amplitude scaling.  It still fails the strict early viability gate
because its central all-certified support/score mechanism is quantitatively
false for an exact orthogonal tensor with the allowed `1.01` weight ratio.
That mechanism feeds clustering and every downstream theorem-facing output.
The correction is a same-setting weighted score/profile derivation, not a
change of algorithm or theorem contract, so the deepest justified status is
`REVISE_SKETCH` with score 6 rather than `IDEA_FAIL`.
