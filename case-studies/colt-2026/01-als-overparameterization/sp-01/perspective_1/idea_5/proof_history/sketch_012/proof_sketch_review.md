# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_5`
- Sketch attempt: `6`
- Retry mode in the sketch: `revise_sketch`
- Controller-supplied attempt-5 review:
  `proof_history/sketch_011/proof_sketch_review.md`
- Sketch-declared trigger: `proof_history/sketch_010/proof_sketch_review.md`
- Proposal: stationarity-certified simultaneous Jacobi extreme-start
  proposal, global all-certified tail ledger, weighted observable clustering,
  and active cyclic ALS carry-over
- Progress type: `conditional`
- Target rank: `U(r) = Theta(r^(5/3) (log r)^(5/2))`
- Reviewed `setting.md`, `idea.md`, `proof_sketch.md`, `technical_survey.md`,
  `proof_tracker.md`, and the archived attempt-5 review.
- Attempt-6 repairs credited: `eta_G`, `eta_N`, and `eta_C` are separated;
  the certificate l2 residual is converted once via `sqrt(r)tau_r`; the
  global `E_cert_tail` producer is no-label and all-certified; the setting
  symbols remain raw while barred copies are explicitly proof-only; and the
  weighted score, row, quotient, flow, and baseline interfaces are updated.

## Sketch Viability Score

7

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: Attempt 6 preserves the exact conditional theorem,
  SC-JEP-ALS procedure, strictly subquadratic rank, original Frobenius metric,
  arbitrary accuracy, separate instance/initialization probabilities,
  polynomial runtime, and exact orthogonal baseline.
- Dependency audit: The graph is acyclic and now has the intended order
  `E_cert_eq -> E_cert_tail -> E_support_wt -> E_cluster/E_gauge -> selected
  bridge`. The all-certified scope and raw/proof-only object identity are
  substantially repaired. The profile arithmetic inside `E_cert_tail` is
  still not a valid producer for its advertised constants.
- High-risk coverage: The explicit defect classes, finite-dimensional charge,
  LOW branch, singleton/multi-support cases, threshold straddling, weighted
  score gap, chart/row bootstrap, `C_best`, quotient tube, flows, and baseline
  are all present. The ratio-product margin and Gram leakage constants are
  the remaining theorem-critical defects.
- Explicit-rate coverage: `eta_G=q_*`, `eta_N=4q_*^2`,
  `eta_C=2sqrt(r)tau_r`, `eta_0`, `eta_rel`, `a_cert`, `tail_score`, `omega`,
  `C_best`, `rho_ALS`, stopping, and restart dependence are exposed. The
  displayed `16eta_0`/`32eta_0` profile constants do not follow from the
  displayed denominator bound and must be enlarged or rederived.
- Assumption and citation plausibility: Primitive ids and citation roles are
  appropriate. `E_cert_tail` is a direct current-notation derivation, not a
  cited result. The raw setting versus proof-only barred convention is now
  explicit and object-compatible; no external source resolves the remaining
  arithmetic.

## Attempt-5 Blocker Comparison

| Attempt-5 blocker | Attempt-6 disposition | Review finding |
| --- | --- | --- |
| Missing finite l2-to-l1 certificate conversion | Materially repaired | `eta_C=2sqrt(r)tau_r` is explicitly charged once and is dimension/rate compatible. |
| Global all-certified tail producer | Structurally repaired | `E_cert_tail` is emitted before clustering without `E_cov`, labels, or `E_chart_l1`. Its internal profile constants still fail the stated ratio margin. |
| Raw versus barred setting convention | Materially repaired | The sketch now keeps `P,Q,S,K,D,theta` raw and bars proof-only; the initialized tensor is unchanged under orientation. This interface is acceptable in outline. |
| Weighted support and downstream score/ALS | Partially repaired | Exact unequal-weight numerics and consumers are correct conditional on the ledger, but the profile/Gram constants require a rerun. |

## Early Obstruction Audit

- Limiting-case stress: For the exact orthogonal boundary
  `lambda=(1,1.01)`, the m=2 stationary profile is
  `(0.504975,0.495025)` and score `0.710616`; it is above the LOW gate and
  below the `0.85` component filter, while a component witness is above
  `0.84`. The weighted score idea therefore survives the unequal-weight
  boundary. The new obstruction is quantitative: at the declared worst-case
  values (ignoring the smaller `eta_N,eta_C` terms),
  `eta_0=q_*=1/4096`, `eta_rel=16eta_0=1/256`, and
  `vartheta_*=1/8-8eta_rel=3/32`. The allowed ratio error is
  `eta_0/(vartheta_*-eta_0)=1/383`; taking opposite signs gives
  `(1+1/383)/(1-1/383)=192/191`, a deviation about `0.00524`, larger than
  `16eta_0=1/256`. Thus the asserted `|Delta_{i,l}|<=16eta_0` cannot follow
  from the displayed bounds before the three-mode product is even formed.
- Theorem-critical bridge support: The raw equation can support a separated
  Gram-row, Neumann/normalization, and certificate residual ledger. The
  finite `sqrt(r)tau_r` conversion is now a legal source. The subsequent
  ratio-product step still underestimates denominator amplification; a valid
  bound is of order `eta_0/vartheta_*` (with several mode factors), not the
  stated `16eta_0` without an additional coupling argument. Also, expanding
  two perturbed Gram factors generally produces two first-order leakage terms;
  `eta_G=q_*` needs an explicit cancellation proof or a budget such as
  `2q_*+O(q_*^2)`.
- Exported-interface feasibility: `E_cert_tail` now has the right producer,
  fields, scope, and consumers, but its advertised `a_cert`, `tail_score`,
  and profile outputs are not yet dominated by the raw controls with the
  stated constants. Consequently the `s_mix`, graph, and singleton chart
  margins are not legal theorem-facing exports until constants are repaired.
- Theorem-critical mechanism witness gate: **Not passed for the weighted
  profile portion of `E_cert_tail`.** The positive retained-floor source,
  defect split, finite support charge, and branch cases are concrete. The
  ratio denominator dominance is numerically inconsistent, and the Gram
  first-order budget is not fully discharged. This is a same-setting
  `sketch/interface defect`, not an idea-level obstruction.
- Entry-State / Activation Trace Gate: The exact component, exact m-support,
  LOW, threshold-straddling, q=0 transient, and stationary states are traced.
  A retained-coordinate boundary with the extremal allowed residual signs
  violates the claimed ratio margin; the next sketch must trace that branch
  with corrected constants or a stronger coupled relation.
- Obligation locality classification: Geometry, coverage, recurrence, raw
  certificate, finite residual conversion, sign/gauge object mapping, row
  absorption, quotient ALS, stopping, restart, and baseline are `step-local`
  in outline. The profile/tail constants and any compensating Gram budget are
  `sketch/interface defect`; no `idea/theorem-contract defect` is shown.
- Noncircular Closure Gate: The producer order is noncircular and the global
  ledger is independent of coverage and labels. The failed implication is a
  local quantitative dominance step, not circular use of clustering or basin
  membership.
- Mechanism-source and boundary stress: Gram leakage, normalization, and
  sign-unknown certificate residual are the opposing defects. The certificate
  l2-to-l1 conversion is finite and explicit, but the ratio chain must carry
  every reciprocal denominator and the two first-order Gram terms. The exact
  unequal-weight and zero-interference limits remain structurally valid.
- Generated-output flow: The flow tables now include `eta_G`, `eta_N`,
  `eta_C`, `E_cert_tail`, and their consumers. They mark no blocker for the
  tail edge even though the `Delta` and Gram constants are not proved; that
  edge and all downstream rows must be reopened after the arithmetic repair.
- Source-to-claim adequacy: Multilinearity sources `E_cert_eq`; Schur/Gram
  row bounds, Neumann inversion, and unit normalization source the defect
  classes; finite-dimensional norm conversion sources `eta_C`. They do not,
  as currently combined, source `|Delta|<=16eta_0` or the `32eta_0` profile.
- Residual-to-target adequacy: Conditional on corrected singleton/core
  constants, the barred selected state maps through the dual basis to the
  realized target, per-entry residual is `2tau_r`, induced row/column mass is
  `2r tau_r`, and relative amplitudes yield the original Frobenius basin.
  No transformed or surrogate tensor is consumed. The unresolved issue is
  the pre-cluster profile margin.
- Baseline invariance audit: The rho-zero orthogonal equal-weight map,
  stationary zero residual, exact CP fixed point, active zero padding, and
  arbitrary-accuracy conclusion are preserved. Finite transients retain
  nonzero certificate residual. The weighted repair does not introduce an
  error floor.
- Scope-Accumulation Compatibility Gate: The chart recurrence is geometric,
  the certificate charge is finite `sqrt(r)tau_r` before later `r tau_r`
  selected-row sums, and ALS contracts in an invariant tube. The remaining
  finite support accumulation is the explicit ratio/Gram budget; it needs
  corrected constants, not a new scope or probability mode.
- Scope and dependence consistency: The needed correction can use a larger
  universal profile constant (for example an `O(eta_0/vartheta_*)` budget)
  while retaining the `0.85` gap under `Gamma<=1.01`; rank and confidence
  dependence remain unchanged.
- Generated-condition provenance: `E_cert_tail` is now a genuine intended
  producer for every certified slot and does not assume a generated chart.
  Its two strongest fields are still unsupported at their advertised scales,
  so they cannot yet be promoted to derived conditions.
- Citation and tool applicability: No citation is used for the disputed
  profile calculation. The ALS citation has a bounded qualitative role and
  current-object mapping. The arithmetic must be fixed directly.
- Same-setting repair plausibility: Replace `16eta_0`/`32eta_0` by a
  rigorously derived denominator-aware budget, prove a two-term Gram leakage
  bound, and rerun `a_cert`, `tail_score`, score, graph, row, and basin
  constants. This preserves the current algorithm and theorem.
- Target-preserving bridge-repair gate: Route to `/proof-sketch`, not
  `/subagent-idea-generator`. The exact boundary remains favorable and the
  defect is a quantitative interface, not a false target.
- High-risk obligation classes: weighted support/profile, structural score
  separation, threshold/tail finite accumulation, selected coefficient row and
  column closure, quotient basin entry, public rate specialization, and exact
  zero-limit invariance are all covered above.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | static realized geometry | Gaussian concentration, normalization, Schur/Gershgorin | primitives -> `step_001` | plausible exact match | normalized realized factors | separate margins -> `q_real<=q_*`, `Gamma<=1.01`, KR floor | scales/union factors exposed | same tensor/factors | finite static union | assumptions -> `step_001` | feeds dynamic steps | rho-zero orthogonal limit passes | step-local | None |
| `E_win`,`E_cov` | target entry and rank rate | Gaussian regression, product tails, coupon bound | `step_001` -> `step_002` -> `step_003` | matches claim | raw Gaussian convention | `p_win`, `kp_win>=8log r` | rank/confidence separated | exact target ratios | finite slot union | forward producer | feeds chart/restart | first update and misses charged | step-local | None |
| `E_RS`,`E_chart`,`E_chart_l1` | covered recurrence/chart | Jacobi expansion, l1 recurrence, Banach map | `step_004` | correct covered scope | dual/ambient norms mapped | denominator, self-map, `L<1/4`, horizon | chart l1 is not global | same realized target | geometric forcing/decay | coverage -> chart | covered consumers | q=0 first/stationary trace | step-local | None |
| `E_cert_eq` | all-certified same-state equation | multilinearity and projective residual | certified state -> `step_004b` | exact | raw setting objects and right `Sigma` | per-column `D tau_r` residual | nonzero contraction and dual map | own-contraction comparison only | finite l2 residual | certificate precedes ledger | feeds ledger and selected bridge | transient/stationary cases pass | step-local | None |
| `E_cert_tail` | global LOW/core/tail producer | weighted relation plus separated defects | `E_cert_eq,E_sm` -> `step_004b` | **incomplete constants** | scale-free `mu` and raw/bar objects are compatible | `eta_G,eta_N,eta_C`, floor, tails, profile | sqrt-r charge is explicit, but ratio/Gram dominance is not | same realized basis; discarded-tail target transfer pending | finite l2-to-l1 and ratio accumulation | equation -> ledger | feeds classifier | extremal ratio signs expose `Delta` failure | sketch/interface defect | `/proof-sketch` |
| `E_support_wt` | weighted support/score classifier | `E_cert_tail` and exact weighted profile | ledger -> `step_005` | conditional on corrected ledger | lambda diagonal retained | singleton/m-core score bound and `0.85` gap | fields named but constants need rerun | same score/target metric | finite tail | ledger -> classifier | feeds cluster/gauge/bridge | unequal-weight m=2 passes | sketch/interface defect | `/proof-sketch` |
| `E_cluster`,`E_gauge` | observable clusters and sign orientation | score gap, graph, product-one gauge | classifier -> `step_005` | conditional | raw setting plus proof-only bars | graph `<1/32`, theta lower bound | requires corrected score/tail margins | same initialized tensor under signs | finite graph/discrete signs | classifier -> outputs | feeds selected bridge | negative theta and zero score handled | step-local conditional on repair | `/proof-sketch` |
| `E_col`,`E_row_residual`,`E_row` | selected coefficient/basin bridge | dual basis, small root, per-entry residual, absorption | selected state -> `step_006` | plausible conditional | barred objects internally mapped | `chi` quadratic, `2tau_r`, `2r tau_r`, row `<1/8` | barred basis and absorptions exposed | exact realized target basis | finite sign-unknown residual | column root -> row absorption | feeds best/basin | q=0 transient/stationary pass | step-local conditional on repair | `/proof-sketch` |
| `E_best`,`E_quotient` | balanced basin seed | tensor expansion and relative amplitudes | `step_006` -> `step_007` | plausible conditional | exact CP quotient | `C_best=512`, tube entry | kappa cancels in quotient | original Frobenius target | finite expansion | selected bridge -> seed | feeds ALS | exact component passes | step-local conditional on repair | `/proof-sketch` |
| `E_basin` and contraction | active ALS closure | KR floor, inverse/Lipschitz, quotient wrapper | `E_sm,E_best` -> `step_008` | plausible | active rank-r/zero padding mapped | inverse `31/32`, cyclic `<1/4` | tube and zero block explicit | same rank-k loss | no forcing at exact target | seed -> invariant tube | feeds stopping | exact first update fixed | step-local conditional on repair | `/proof-sketch` |
| `E_stop`,`E_restart` | accuracy/confidence/runtime | contraction and independent restarts | prior steps -> `step_009`,`step_010` | preserved | active zero-padding and original-loss convention | explicit `m`,`J`, cost | confidence absent from rank | original Frobenius output | finite stopping/product | prior outputs -> theorem | final theorem output | exact baseline stops | step-local conditional on repair | `/proof-sketch` |
| rho-zero baseline | exact/no-floor specialization | direct map and CP normal equations | deterministic -> `step_011` | exact | no rho-zero probability claim | stationary residual zero, arbitrary epsilon | same tensor/factors | no surrogate | stationary/no accumulation | direct path | theorem specialization | finite transient distinguished | step-local | None |
| raw/proof-only barred object identity | notation and target compatibility | sign absorption/product-one gauge | setting + sketch convention table | now compatible in outline | `P^raw=P` setting symbols; bars proof-only | initialization keeps raw theta/sign; bars only downstream proof | all consumers name raw or barred object | same rank-one tensor under orientation | discrete signs | raw -> bars after filter | score/row/best consumers | theta-negative trace passes | step-local | None |

## Blocking Issues

1. **The profile ratio constant is numerically unsupported**
   (`proof_sketch.md:486-517`). With the declared values, the allowed
   denominator perturbation is approximately `1/383`, so a single ratio factor
   can deviate by `192/191-1≈0.00524`, while the sketch claims the entire
   three-mode product factor is bounded by `16eta_0≈0.00391`. The stated
   `32eta_0` profile and all dependent score constants therefore do not follow
   from the ledger. Smallest repair: use a denominator-aware constant (or add
   a proven coupled-error cancellation) and rerun the score/graph margins.
2. **The Gram leakage budget needs an explicit two-factor calculation**
   (`proof_sketch.md:470-510`). Expanding two perturbed Gram factors normally
   produces two first-order terms, each potentially of row/column mass
   `q_*`; `eta_G=q_*` is not established without a cancellation or a tighter
   state-dependent argument. A conservative `2q_*+O(q_*^2)` budget may still
   preserve the numerical filter, but all tail/profile constants must be
   recomputed.
3. **Flow tables overstate the repaired outputs** (`proof_sketch.md:967-1011`).
   `E_cert_tail` and `E_support_wt` are marked as having no missing-flow
   blocker even though the two arithmetic inequalities above are unresolved;
   downstream cluster, row, `C_best`, and ALS rows are only conditional until
   those outputs are repaired.

## Required Repair Bundle

1. Re-derive the three-mode ratio product with the actual
   `vartheta_*` denominator. Either prove a coupling that reduces the product
   error, or replace `16eta_0`/`32eta_0` by valid constants and propagate them
   through `a_cert`, `tail_score`, `s_mix`, graph separation, theta lower
   bound, `chi`, `C_best`, and `rho_ALS`.
2. Expand the Gram/Neumann/normalization terms in the raw equation and state
   the exact l1 and l2 norms. Verify whether `eta_G=q_*` is valid; otherwise
   use the smallest valid budget and rerun every downstream numerical margin.
3. Mark the affected generated-flow rows as conditional/blocking until the
   corrected ledger is produced. Keep `E_chart_l1` covered-only and retain the
   raw setting/proof-only barred convention.

Target-preserving repair check: these are quantitative same-setting repairs.
They preserve the algorithm, assumptions, rank, probability modes, metric,
success criterion, arbitrary-accuracy target, and exact baseline. The exact
unequal-weight stress remains favorable, so there is no basis for `IDEA_FAIL`.

## Review Rationale

Attempt 6 substantially repairs attempt 5's producer architecture and object
scope, and the finite `sqrt(r)tau_r` charge is now explicit. It still cannot
pass the strict mechanism-witness gate because the displayed denominator
arithmetic yields a larger ratio error than the claimed `16eta_0` bound, and
the one-q Gram leakage budget is not discharged. Those defects feed the
weighted classifier and every downstream score/cluster/basin interface, but
they are target-preserving local derivations. The deepest justified outcome is
`REVISE_SKETCH` with score 7, not `IDEA_FAIL`.
