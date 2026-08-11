# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_5`
- Sketch attempt: `5`
- Retry mode in the sketch: `revise_sketch`
- Controller-supplied attempt-4 review:
  `proof_history/sketch_009/proof_sketch_review.md`
- Sketch-declared trigger: `proof_history/sketch_008/proof_sketch_review.md`
  (metadata path mismatch only)
- Proposal: stationarity-certified simultaneous Jacobi extreme-start
  proposal, global all-certified threshold/tail classification, observable
  clustering, and active cyclic ALS carry-over
- Progress type: `conditional`
- Target rank: `U(r) = Theta(r^(5/3) (log r)^(5/2))`
- Reviewed `setting.md`, `idea.md`, `proof_sketch.md`, `technical_survey.md`,
  `proof_tracker.md`, and the archived attempt-4 review.
- Attempt-5 repairs credited: `E_cert_tail` is now declared before clustering
  for every certified slot; it uses scale-free `mu=lambda/lambda_min`, a fixed
  threshold, a LOW branch, singleton and multi-core tails, and a
  threshold-straddling route. `E_chart_l1` is correctly demoted to a
  covered-slot tightening, and a raw/barred notation table is added.

## Sketch Viability Score

7

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: Attempt 5 preserves the exact conditional theorem,
  SC-JEP-ALS procedure, strictly subquadratic rank, original Frobenius metric,
  arbitrary accuracy, separate instance/initialization probabilities,
  polynomial runtime, and exact orthogonal baseline.
- Dependency audit: The intended DAG is acyclic and now places a global
  `E_cert_tail` producer between `E_cert_eq` and `E_support_wt`. This repairs
  the former covered-chart/all-certified scope cycle. The semantic producer
  is still incomplete because its r-uniform l1 tail and relative-profile
  constants are not derived from the displayed raw defect decomposition.
- High-risk coverage: The LOW threshold, `vartheta=1/8`,
  `vartheta_*>1/16`, `a_cert`, `tail_score`, scale-free support profile,
  threshold-straddling branch, unequal-weight m=2 state, row residual,
  `C_best`, quotient tube, and baseline are all addressed. The central tail
  and profile inequalities remain assertions at the point where l2 and
  coordinate defects must be converted into r-uniform interfaces.
- Explicit-rate coverage: Rank, probability modes, horizons, `q_*`,
  `tau_r`, `Gamma`, score margins, `omega`, `C_best`, `rho_ALS`, stopping,
  and restart dependence are exposed. The missing conversion must state its
  `sqrt(r) tau_r` (or sharper) contribution and the exact denominator loss at
  `vartheta_*`; those cannot be hidden in a named ledger.
- Assumption and citation plausibility: Primitive ids and citation roles are
  appropriate. No cited result supplies `E_cert_tail`; it is a novel direct
  derivation and must expose source-to-claim arithmetic before acceptance.
  Uschmajew remains properly limited to quotient/local interpretation.

## Attempt-4 Blocker Comparison

| Attempt-4 blocker | Attempt-5 disposition | Review finding |
| --- | --- | --- |
| No explicit weighted threshold/tail witness | Partially repaired | Thresholds, branches, and target constants are now named, but the r-uniform singleton tail and `32 eta_0` relative profile are not derived from a separated Gram/certificate residual budget. |
| Covered `E_chart_l1` used for all certified slots | Structurally repaired | `E_cert_tail` is declared global and no-label, while `E_chart_l1` is only a covered-slot tightening. Its global producer still needs the missing defect conversion. |
| Raw/barred convention implicit across files | Repeated | The sketch adds a clear table, but `setting.md` still defines `P,Q,S` as raw representatives and uses them in initialization; the sketch cannot make those symbols barred aliases by declaration. |
| Downstream score/row/ALS constants conditional on classifier | Rechecked conditionally | The displayed numerical margins remain compatible if `E_cert_tail` and the barred equation are proved with the advertised constants. |

## Early Obstruction Audit

- Limiting-case stress: The exact orthogonal unequal-weight state
  `lambda=(1,1.01)` has two-support score `0.710616`; it is above the LOW gate
  `0.7 lambda_min`, enters branch II, and remains below the observable filter
  threshold. The component branch remains above `0.84 lambda_min`. Thus the
  old unequal-weight counterexample is genuinely repaired. The untested
  boundary is an approximate certified state with many small residual
  coordinates: an l2 certificate defect can have l1 mass `sqrt(r) tau_r`, and
  the sketch must show how that mass and Gram-row leakage enter `a_cert`
  before claiming an r-uniform singleton tail.
- Theorem-critical bridge support: From the raw same-state equation one can
  plausibly derive normalized weighted cyclic relations. The displayed
  inputs, however, only record a per-column ambient l2 certificate residual
  and cumulative Gram mass. The step jumps to
  `tail_M<=2eta_0+eta_rel^2/(4vartheta_*^2)` and to
  `|mu_i^2x_{M,i}^2/kappa_I^2-1|<=32eta_0` without separating Gram-row l1
  leakage, dual-normalization error, and certificate l2-to-l1 conversion or
  showing the denominator arithmetic. Those are theorem-critical source
  interfaces, not routine labels.
- Exported-interface feasibility: `E_cert_tail` must export a LOW flag or a
  singleton/multi-core object for every certified slot. The proposed fields
  and consumers are now correct, but the raw controls do not yet visibly
  imply `a_cert=7q_*+8tau_r`, `tail_score<=16eta_0`, and the `32eta_0`
  profile error. Until that conversion is written, `E_support_wt`,
  `E_cluster`, and `E_gauge` remain conditional outputs.
- Theorem-critical mechanism witness gate: **Not passed for `E_cert_tail`.**
  The mechanism source, positive retained-coordinate floor, defect classes,
  intended support alternatives, and boundary cases are named. The concrete
  dominance step from the actual normed residuals to the r-uniform tails and
  relative profile is missing. This is a same-setting `sketch/interface
  defect`, not evidence that the theorem target is false.
- Entry-state trace stress: Covered entries, first Jacobi update, exact
  component states, exact multi-support states, LOW states, and the q=0 finite
  transient are traced. The threshold-straddling formula gives a proposed
  route to LOW or branch II. A cloud-tail state at the certification boundary
  is not traced through the raw Gram and certificate residual decomposition,
  so the claimed singleton l1 export is not yet activated at obstruction
  level.
- Obligation locality classification: Static geometry, window/coverage,
  Jacobi recurrence, certification identity, per-entry selected residual,
  row absorption, best-scalar transfer, quotient ALS, stopping, restart, and
  baseline are `step-local` in outline. The global tail/profile conversion
  and raw/barred setting contract are `sketch/interface defect`. No
  `idea/theorem-contract defect` is established.
- Noncircular closure gate: Producer order is now noncircular:
  certificate -> global ledger -> classifier -> cluster -> selected bridge.
  The remaining failure is source adequacy, not dependency order. `E_col`
  still follows selection, and its small root precedes row absorption.
- Mechanism-source and boundary stress: The relevant opposing defects are
  Gram-row leakage, normalization error, and sign-unknown certificate
  residual. The sketch must retain them separately through thresholding. In
  particular, an l2 residual cannot be summed over coordinates as `O(tau_r)`
  without a stated coupling; using `sqrt(r)tau_r` is acceptable because the
  declared `tau_r` makes it negligible relative to the q reserve.
- Generated-output flow: The tables name `E_cert_tail` and demote
  `E_chart_l1` correctly. They overstate `Missing-flow blocker=None` for
  `E_cert_tail`, `E_support_wt`, `E_cluster`, and downstream consumers because
  the raw-to-tail edge is not yet established. The notation flow similarly
  crosses a setting/sketch symbol conflict.
- Source-to-claim adequacy: Multilinearity sources `E_cert_eq`; Gram row mass
  sources l1 leakage; the ambient certificate gives l2 residual; unit
  normalization and `vartheta_*` can source safe division. The sketch must
  combine exactly those controls. A generic coordinate residual inequality
  alone does not source either an r-uniform l1 tail or the advertised relative
  profile constant.
- Residual-to-target adequacy: Conditional on a valid singleton export,
  `step_006` maps barred stored directions into the realized dual basis,
  obtains per-entry `2tau_r`, and separately sums rows/columns to
  `2r tau_r`; this is compatible with the target `omega` scale. `step_007`
  then uses relative amplitudes and the original Frobenius tensor. The
  pre-cluster tail residual is the sole unresolved same-target bridge.
- Baseline invariance audit: The deterministic rho-zero orthogonal
  equal-weight map, zero stationary certificate residual, exact CP fixed
  point, active zero padding, and arbitrary `epsilon` are preserved. Finite
  q=0 transients retain their certificate residual. No positive error floor
  is introduced.
- Scope-accumulation compatibility: The Jacobi chart uses geometric decay;
  selected residuals have finite `r tau_r` budgets; row mass is absorbed with
  coefficient below `1/8`; ALS has no additive forcing at the exact target.
  The global tail is finite rather than iterative, but coordinate accumulation
  is precisely the missing `l2 -> l1` budget and must be stated.
- Scope and dependence consistency: The proposed correction can expose
  `sqrt(r)tau_r <= q_*^2/(10^4sqrt(r))` and absorb it into the existing q
  reserve without changing rank, confidence, or theorem scope. Weight
  normalization by `lambda_min` is source-compatible.
- Generated-condition provenance: `E_cert_tail` is no longer hidden as a
  chart assumption and has a legal intended producer. Its strongest fields
  remain unproved outputs of that producer, so they cannot yet be marked
  derived with no blocker.
- Citation and tool applicability: No external source is being misused to
  claim the tail lemma. The local ALS citation has stable identity, stated
  role, current-object mapping, and known non-output boundary. The disputed
  tail/profile claims must be direct current-notation derivations.
- Same-setting repair plausibility: Split the normalized relation error into
  Gram-row, normalization, and certificate components; convert the last with
  its correct finite-dimensional norm factor; then derive the threshold,
  singleton tail, profile, and straddling inequalities with constants. Update
  the binding setting notation. These are local roadmap/interface repairs.
- Target-preserving bridge-repair gate: Route to `/proof-sketch`. The repair
  preserves the procedure, assumptions, rank, probability modes, metric,
  success criterion, and baseline. Repetition has not exposed a target-level
  counterexample, so `IDEA_FAIL` is not justified.
- High-risk obligation classes: all-certified support, structural score gap,
  threshold/tail accumulation, sign/gauge synchronization, selected
  row/column control, quotient basin entry, all-time ALS contraction, public
  accuracy/confidence conversion, and exact-limit invariance are covered by
  the audit above.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | static realized geometry | Gaussian concentration, normalization, Schur/Gershgorin | primitive assumptions -> `step_001` | plausible exact match | realized normalized factors | separate margins -> `q_real<=q_*`, `Gamma<=1.01`, KR floor | scales and union factors exposed | same tensor/factors | finite static union | assumptions -> `step_001` | feeds all dynamic steps | rho-zero orthogonal limit passes | step-local | None |
| `E_win`, `E_cov` | target entry and rank rate | regression, product tails, coupon bound | `E_sm` -> `step_002` -> `step_003` | matches probability claim | raw Gaussian coordinates | window rate and `kp>=8log r` | rank/confidence separated | exact target ratios | finite slot union | forward producer | feeds chart/restart | first update and misses charged | step-local | None |
| `E_RS`, `E_chart`, `E_chart_l1` | covered-trajectory recurrence/chart | old-state expansion, l1 recurrence, Banach self-map | `step_004` | matches covered scope | dual and ambient norms mapped | denominator, self-map, `L<1/4`, horizon | `E_chart_l1` explicitly only covered | same realized target | geometric forcing/decay | coverage -> chart | feeds covered certification | q=0 first/stationary traces pass | step-local | None |
| `E_cert_eq` | all-certified same-state equation | multilinearity and projective residual | certified state -> `step_004b` | exact identity | raw `P,K,Sigma,R` convention stated in sketch | `norm(R(:,a))_2<=D_a tau_r` | nonzero contraction and dual map available | state compared to own contraction | finite l2 residual | certificate precedes classifier | should feed ledger/selected bridge | zero contraction excluded; transient retained | step-local | None |
| `E_cert_tail` | global no-label LOW/core/tail producer | normalized weighted cyclic relations | `E_cert_eq,E_sm` -> `step_004b` | **incomplete** for l1 tail/profile constants | scale-free `mu` is correct; norm conversion incomplete | claimed `a_cert`, `tail_score`, `32eta_0` profile, straddle route | must split Gram l1, normalization, and certificate l2 defects and show dimension factors | score/directions remain in realized basis, but discarded residual is not fully dominated | finite coordinate accumulation; l2-to-l1 charge unstated | syntactically before classifier | feeds `E_support_wt` | exact/LOW boundaries pass; cloud-tail boundary missing | sketch/interface defect | `/proof-sketch` |
| `E_support_wt` | weighted support and score classifier | `E_cert_tail` plus exact weighted profile | `step_004b` -> `step_005` | conditional on unsupported ledger fields | lambda diagonal retained | singleton vs m-core score bounds | threshold fields are correctly specified but not yet produced | same score/target metric | finite tails | ledger -> classifier | feeds cluster/gauge | unequal-weight m=2 passes | sketch/interface defect pending ledger | `/proof-sketch` |
| `E_cluster`, `E_gauge` | observable clusters and product-preserving orientation | score gap, graph correlations, theta sign | `E_support_wt` -> `step_005` | plausible conditional on classifier | raw/barred convention conflicts with setting symbols | `0.85` gap, cross-target `<1/32`, theta `>0.8lambda_min` | needs valid singleton tail and binding notation | represented rank-one tensor is preserved by signs | finite graph/discrete signs | classifier -> cluster/gauge | feeds selected bridge | zero/negative theta routes stated | sketch/interface defect | `/proof-sketch` |
| `E_col`, `E_row_residual`, `E_row` | selected basin bridge | dual equations, small root, per-entry residual, row absorption | cluster/equation -> `step_006` | plausible conditional on valid barred state | barred basis is internally consistent | `chi` quadratic, `2r tau_r`, self coefficient `<1/8` | raw controls and absorptions exposed | exact realized target basis | sign-unknown finite residual | column root before row | feeds best-scalar/basin | q=0 transient/stationary pass | step-local conditional on upstream repair | `/proof-sketch` |
| `E_best`, `E_quotient` | target-metric basin seed | tensor expansion, relative amplitudes, product-one gauge | `step_006` -> `step_007` | plausible conditional on row/gauge | exact CP quotient | `C_best=512`, `512omega<rho_ALS/4` | relative scale removes kappa from radius | original Frobenius target | finite expansion | selected bridge -> seed | feeds ALS | exact component passes | step-local conditional on upstream repair | `/proof-sketch` |
| `E_basin`, contraction | all-time active ALS | KR floor, direct inverse/Lipschitz, quotient wrapper | `E_sm,E_best` -> `step_008` | plausible current-notation source | active rank-r/zero padding mapped | inverse `31/32`, mode `<1/16`, cyclic `<1/4` | tube and zero block explicit | same rank-k loss | no forcing at exact target | seed -> invariant tube | feeds stopping | exact first update fixed | step-local conditional on upstream repair | `/proof-sketch` |
| `E_stop`, `E_restart` | public accuracy/confidence/runtime | contraction and independent restarts | `step_003,step_008` -> `step_009,step_010` | modes preserved | original residual | explicit `m`, `J`, work | confidence not hidden in rank | returned Frobenius residual | finite stopping/product | prior outputs -> theorem | final theorem | exact baseline stops | step-local conditional on upstream repair | `/proof-sketch` |
| rho-zero baseline | exact/no-floor specialization | direct map and exact CP normal equations | deterministic -> `step_011` | exact match | no probability claim at rho=0 | stationary residual zero, arbitrary epsilon | same tensor and active factors | no surrogate | stationary/no accumulation | direct path | theorem specialization | finite transient distinguished | step-local | None |
| raw/barred setting contract | object identity for classifier/row/ALS | sign absorption and product-one gauge | setting plus sketch table | **mismatch**: setting assigns `P,Q,S` to raw representatives; sketch aliases them to barred objects | algorithm initialization uses raw third-mode sign | must define raw and barred symbols in binding setting or use proof-only renaming consistently | current table cannot override setting assignments | tensors are equivalent, but matrix equations use different objects | discrete, no accumulation | raw state -> gauge -> selected bridge | all downstream coefficient consumers | theta-negative trace plausible | sketch/interface defect | `/proof-sketch` |

## Blocking Issues

1. **`E_cert_tail` does not yet have a source-adequate r-uniform tail
   derivation** (`proof_sketch.md:458-522`). The sketch displays an ambient
   l2 certificate residual and cumulative Gram control, then asserts
   `tail_M<=a_cert` without separating the Gram-row l1 term, dual
   normalization term, and certificate l2-to-l1 charge. A coordinatewise
   residual bound cannot simply be summed without dimension loss. State the
   correct `sqrt(r)tau_r` or sharper contribution and show explicitly how it
   is dominated by the available q reserve.
2. **The relative weighted profile and threshold-straddling constants remain
   asserted** (`proof_sketch.md:486-517`). Dividing approximate cyclic
   relations at retained coordinates incurs `vartheta_*` denominators. The
   claimed relative error `32eta_0`, singleton `a_cert`, and straddling
   implication need an explicit inequality chain using the non-LOW score and
   all three normalized relations. These fields feed every score and graph
   margin.
3. **The raw/barred convention still conflicts with the binding setting**
   (`setting.md:137-160`; `proof_sketch.md:121-169,438-457`). `setting.md`
   defines `P,Q,S` from raw representatives and uses those vectors in the
   signed initialization. The sketch cannot make those same symbols aliases
   for barred matrices by a later semantic declaration. Define both object
   families in `setting.md` or retain raw setting symbols and use barred
   proof-only representatives consistently, including `D`, `K`, `R`, and
   theta.
4. **Flow tables overstate closure** (`proof_sketch.md:967-1011`). Mark
   `E_cert_tail`, `E_support_wt`, `E_cluster`, and downstream consumers as
   blocked until the raw-to-tail conversion and setting convention are
   supplied; then rerun the graph, row, `C_best`, and ALS constants.

## Required Repair Bundle

1. In `step_004b`, decompose the normalized coordinate error into Gram-row,
   dual-normalization, and certificate-residual pieces. Give their l1/l2
   norms, convert the certificate piece over the finite support, and derive
   `a_cert` and `tail_score` with all r factors exposed or absorbed.
2. Prove the retained-core ratio calculation line by line: state the safe
   denominators, use the non-LOW score where needed, derive the relative
   weighted profile, and audit singleton, multi-core, empty-core, mismatched
   top-index, and threshold-equality cases. Export only constants supported by
   those inequalities.
3. Synchronize `setting.md` with the raw/post-score objects. Specify which
   directions the algorithm initializes, which are proof-only oriented
   representatives, how `Sigma_M` is placed, and which `K,D,R,theta` each
   downstream step consumes.
4. Update exported-interface and flow tables, then recheck the `0.85` score
   gap, graph edges, selected `chi` cutoff, `2r tau_r` row budget,
   `C_best=512`, `rho_ALS=1/1024`, and baseline under the repaired constants.

Target-preserving repair check: these are direct derivation and notation
repairs within the current theorem and algorithm. They do not require a new
assumption, procedure, rank, probability mode, metric, or success criterion.
The exact unequal-weight stress now passes, so no idea-level counterexample is
present and `IDEA_FAIL` is not justified.

## Review Rationale

Attempt 5 fixes the architecture of the attempt-4 scope defect: a global,
no-label ledger now precedes the all-certified classifier, and the exact
boundary numerics remain viable. It earns score 7. Acceptance is still
premature because the ledger's strongest r-uniform tail/profile fields are
not yet consequences of its displayed raw norm controls, and the formalized
setting still assigns the shared matrix symbols differently from the sketch's
barred aliases. These are localized, target-preserving sketch/interface
repairs, so the exact route is `REVISE_SKETCH` with retry `/proof-sketch`.
