# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_5`
- Sketch attempt: `7`
- Retry mode in the sketch: `revise_sketch`
- Controller-supplied attempt-6 review:
  `proof_history/sketch_013/proof_sketch_review.md`
- Sketch-declared trigger: `proof_history/sketch_012/proof_sketch_review.md`
- Proposal: stationarity-certified simultaneous Jacobi extreme-start
  proposal, global all-certified tail ledger, weighted observable clustering,
  and active cyclic ALS carry-over
- Progress type: `conditional`
- Target rank: `U(r) = Theta(r^(5/3) (log r)^(5/2))`
- Reviewed `setting.md`, `idea.md`, `proof_sketch.md`, `technical_survey.md`,
  `proof_tracker.md`, and the archived attempt-6 review.
- Attempt-7 repairs credited: the proposed Gram budget is enlarged to
  `eta_G=2q_*+q_*^2`; the propagation envelope is reduced to `8eta_0`; the
  ratio/profile reserves are changed to `68eta_0` and `144eta_0`; and the
  score/filter, graph, singleton tail, row, `C_best`, ALS, flow, and baseline
  constants are rerun.

## Sketch Viability Score

7

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: Attempt 7 preserves the exact conditional theorem,
  SC-JEP-ALS procedure, strictly subquadratic rank, original Frobenius metric,
  arbitrary accuracy, separate instance/initialization probabilities,
  polynomial runtime, and exact orthogonal baseline.
- Dependency audit: The intended order is acyclic:
  `E_cert_eq -> E_cert_tail -> E_support_wt -> E_cluster/E_gauge -> E_col/E_row
  -> E_best -> E_basin`. The global all-certified producer and proof-only
  barred object layer are now in the right places.
- High-risk coverage: The two-factor Gram budget, finite `sqrt(r)tau_r`
  charge, denominator-aware profile, threshold straddling, weighted score
  gap, graph margin, row/column bootstrap, `C_best`, quotient tube, flows, and
  baseline are all explicitly addressed. The Gram budget derivation uses a
  matrix Hadamard expansion where the source object is a product of two
  transformed coefficient vectors; that source-to-claim mismatch remains
  theorem-critical.
- Explicit-rate coverage: `eta_G`, `eta_N`, `eta_C`, `eta_0`, `eta_rel`,
  `a_cert`, `tail_score`, profile/score reserves, `omega`, `C_best`,
  `rho_ALS`, stopping, and restart dependence are exposed. The displayed
  ratio arithmetic is numerically compatible conditional on a valid etaG/etaN
  decomposition.
- Assumption and citation plausibility: Primitive ids and citation roles are
  appropriate. The tail ledger is a direct derivation; no external theorem
  supplies it. Raw setting objects and proof-only barred copies are now
  explicitly distinguished and target-compatible.

## Attempt-6 Blocker Comparison

| Attempt-6 blocker | Attempt-7 disposition | Review finding |
| --- | --- | --- |
| Ratio/profile reserve too small | Materially repaired numerically | With `eta_0<=4.89e-4`, `d_0<=11eta_0`, single ratio error `<=22.3eta_0`, product `<=68eta_0`, and profile reserve `144eta_0`, the displayed score constants have positive margin. |
| One-q Gram leakage budget | Partially repaired | `2q_*+q_*^2` is the right-looking conservative scale, but the written matrix-Hadamard expansion does not derive the vector coefficient leakage used by `E_cert_tail`. |
| Global producer and raw/barred convention | Repaired in outline | `E_cert_tail` is all-certified/no-label and the setting remains raw while bars are proof-only. |
| Downstream score/row/ALS margins | Rechecked conditionally | The rerun values pass numerically if the corrected etaG/etaN source is established. |

## Early Obstruction Audit

- Limiting-case stress: At `lambda=(1,1.01)`, the exact m=2 profile is
  `(0.504975,0.495025)` with score `0.710616`; it is above LOW and below the
  component filter, so the weighted classifier remains plausible. At the
  extremal declared reserve, `eta_0<4.89e-4`, `s_->0.953`, `s_+<1.047`, and
  `1.01s_mix<0.794<0.85s_-`; the singleton tail is below `1.42e-3` and the
  multi-support tail below `4.24e-3`. These numerical boundary checks pass.
- Theorem-critical bridge support: The finite certificate conversion
  `eta_C=2sqrt(r)tau_r` is explicit and correctly exposes the only l2-to-l1
  dimension factor. The denominator chain is now conservative enough on its
  own. The unresolved source is the first-order Gram leakage: the actual
  relation contains `(H_{M'}c_{M'}) circ (H_{M''}c_{M''})`, while the sketch
  writes a Hadamard expansion of the matrices `(I+E_{M'}) circ (I+E_{M''})`.
  A vector-level Cauchy-Schwarz/operator-norm derivation is needed to export
  `2q_*+q_*^2`, and the claimed `eta_N=4q_*^2` cancellation must be checked
  in the same notation.
- Exported-interface feasibility: `E_cert_tail` has the correct producer,
  scope, fields, and consumers. Its score/profile outputs are feasible if the
  vector Gram/normalization decomposition is supplied; until then the
  `68eta_0`, `144eta_0`, `s_mix`, graph, and singleton interfaces remain
  conditional.
- Theorem-critical mechanism witness gate: **Not passed for the etaG/etaN
  portion of `E_cert_tail`.** The positive source and defects are named, but
  the displayed matrix identity is not a source-convention-compatible proof
  of the vector claim. This is a same-setting sketch/interface defect.
- Entry-State / Activation Trace Gate: Exact component and m-support states,
  LOW states, threshold-straddling states, q=0 transients, and stationary
  representatives are traced. The revised ratio margin survives the extremal
  signs once eta0 is accepted. The first update of the transformed coefficient
  vectors must still be traced through the corrected vector Gram expansion.
- Obligation locality classification: Geometry, coverage, recurrence,
  certificate, finite support conversion, raw/barred object mapping, row
  absorption, quotient ALS, stopping, restart, and baseline are `step-local`
  in outline. The etaG/etaN source and all dependent score margins are
  `sketch/interface defect`; no `idea/theorem-contract defect` is shown.
- Noncircular Closure Gate: The global ledger is emitted from the raw
  same-state equation before labels or clustering, and selected column mass
  precedes row absorption. The remaining issue is algebraic source adequacy,
  not circular closure.
- Mechanism-source and boundary stress: Gram leakage has two first-order
  transformed-factor terms and one quadratic term; certificate residual is
  sign-unknown and finite; Neumann/normalization terms need a stated
  cancellation. The exact weighted and zero-interference boundaries remain
  valid under the revised numerical reserves.
- Generated-output flow: The flow tables include the new eta fields,
  `E_cert_tail`, weighted classifier, barred gauge, row residual, quotient,
  and ALS outputs. They mark the etaG/etaN edge as complete even though its
  vector derivation is unresolved; downstream rows must be conditional until
  that edge is repaired.
- Source-to-claim adequacy: Multilinearity sources the raw equation; Gram
  row/column norms and spectral comparison can source vector leakage; Neumann
  inversion and unit normalization can source etaN; finite norm conversion
  sources etaC. The current matrix-Hadamard sentence does not yet connect
  those sources to the exact coefficient-vector relation.
- Residual-to-target adequacy: Conditional on corrected tail constants,
  barred selected directions map through the realized dual basis, per-entry
  residual is `2tau_r`, induced row/column mass is `2r tau_r`, and relative
  amplitudes transfer to the original Frobenius target. No surrogate target
  is used.
- Baseline invariance audit: The rho-zero orthogonal equal-weight map,
  stationary zero residual, exact CP fixed point, active zero padding, and
  arbitrary-accuracy conclusion are preserved. Finite transients retain their
  residual, and no error floor is substituted.
- Scope-Accumulation Compatibility Gate: Chart displacement is geometric;
  certificate charge is finite `sqrt(r)tau_r` before selected-state `r tau_r`
  sums; row mass is absorbed; ALS has an invariant tube. The remaining finite
  etaG/etaN ledger must be shown without hiding an additional r factor.
- Scope and dependence consistency: A correct vector proof with the displayed
  `2q_*+q_*^2` reserve leaves rank, confidence, and runtime unchanged. The
  revised score gap has a smaller but positive margin and must be retained
  under the final constants.
- Generated-condition provenance: `E_cert_tail` is a genuine all-certified
  producer and does not consume `E_cov` or `E_chart_l1`; its etaG/etaN fields
  are the only unproved generated inputs.
- Citation and tool applicability: No citation is misused for the tail
  calculation. The local ALS citation has a bounded qualitative role and
  compatible quotient objects. The eta proof is direct current notation.
- Same-setting repair plausibility: Rewrite the Gram part at the vector
  level, prove the operator/l1 bounds for each of the two first-order terms,
  derive the normalization cancellation, and rerun the already conservative
  profile/score constants. This preserves the current theorem and algorithm.
- Target-preserving bridge-repair gate: Route to `/proof-sketch`, not
  `/subagent-idea-generator`. The boundary tests support the target; only a
  local source/interface derivation is missing.
- High-risk obligation classes: all-certified support/profile, score and
  graph separation, finite defect accumulation, row/column basin transfer,
  quotient convergence, public specialization, and exact-limit invariance are
  covered by the audit above.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | static realized geometry | Gaussian concentration, normalization, Schur/Gershgorin | primitives -> `step_001` | plausible exact match | normalized factors | separate margins -> `q_real`, `Gamma`, KR floor | scales and unions exposed | same tensor/factors | finite static union | assumptions -> `step_001` | feeds dynamic steps | rho-zero limit passes | step-local | None |
| `E_win`,`E_cov` | target entry and rank rate | Gaussian regression, pair tails, coupon bound | `step_001` -> `step_002` -> `step_003` | matches claim | raw Gaussian coordinates | window rate and coverage coupon | rank/confidence separated | exact target ratios | finite slot union | forward producer | feeds chart/restart | first update/misses charged | step-local | None |
| `E_RS`,`E_chart`,`E_chart_l1` | covered recurrence/chart | Jacobi expansion, l1 recurrence, Banach map | `step_004` | correct covered scope | dual/ambient norms mapped | denominator, self-map, horizon | chart l1 not global | same realized target | geometric forcing | coverage -> chart | covered consumers | q=0 trace passes | step-local | None |
| `E_cert_eq` | all-certified same-state equation | multilinearity and projective residual | certified state -> `step_004b` | exact | raw objects and right `Sigma` | per-column `D tau_r` | nonzero contraction/dual map | own-contraction comparison | finite l2 residual | certificate -> ledger | feeds ledger/bridge | transient/stationary pass | step-local | None |
| `E_cert_tail` | global LOW/core/tail ledger | vector weighted relation, Gram, normalization, finite norm conversion | `E_cert_eq,E_sm` -> `step_004b` | **etaG/etaN source incomplete** | raw/bar objects and scale-free weights compatible | eta fields, floor, tails, profile, straddle | sqrt-r charge explicit; vector Gram expansion missing | same realized basis; score transfer conditional | finite eta ledger | equation -> ledger | feeds classifier | numerical boundaries pass | sketch/interface defect | `/proof-sketch` |
| `E_support_wt` | weighted support/score classifier | `E_cert_tail` and exact weighted profile | ledger -> `step_005` | conditional on eta proof | lambda diagonal retained | `s_mix`, `s_-`, `s_+`, filter | constants exposed and numerically positive | same score/target metric | finite tails | ledger -> classifier | feeds cluster/gauge/bridge | unequal m=2 passes | sketch/interface defect | `/proof-sketch` |
| `E_cluster`,`E_gauge` | clusters and orientation | score gap, graph, product-one gauge | classifier -> `step_005` | plausible conditional | raw setting plus proof-only bars | graph `<1/32`, theta lower bound | needs corrected eta output | same tensor under signs | finite graph/discrete signs | classifier -> outputs | feeds selected bridge | negative theta handled | step-local conditional on repair | `/proof-sketch` |
| `E_col`,`E_row_residual`,`E_row` | selected coefficient/basin bridge | dual basis, small root, per-entry residual, absorption | selected state -> `step_006` | plausible conditional | barred objects mapped | chi root, `2tau_r`, `2r tau_r`, row `<1/8` | absorptions exposed | exact target basis | finite sign-unknown residual | column -> row | feeds best/basin | q=0 pass | step-local conditional on repair | `/proof-sketch` |
| `E_best`,`E_quotient` | balanced basin seed | tensor expansion, relative amplitudes, gauge | `step_006` -> `step_007` | plausible conditional | exact CP quotient | `C_best=512`, tube entry | kappa cancels | finite expansion | selected bridge -> seed | seed -> tube | feeds ALS | exact component pass | step-local conditional on repair | `/proof-sketch` |
| `E_basin` and contraction | active ALS closure | KR floor, inverse/Lipschitz, quotient wrapper | `E_sm,E_best` -> `step_008` | plausible | active rank-r/zero padding | inverse `31/32`, cyclic `<1/4` | tube/zero block explicit | same rank-k loss | no exact-target forcing | seed -> tube | feeds stopping | exact first update fixed | step-local conditional on repair | `/proof-sketch` |
| `E_stop`,`E_restart` | accuracy/confidence/runtime | contraction and independent restarts | prior steps -> `step_009`,`step_010` | preserved | original loss/zero padding | explicit m, J, cost | confidence not hidden in rank | original Frobenius output | finite stopping/product | prior outputs -> theorem | final output | exact baseline stops | step-local conditional on repair | `/proof-sketch` |
| rho-zero baseline | exact/no-floor specialization | direct map and CP normal equations | deterministic -> `step_011` | exact | no rho-zero probability claim | stationary residual zero, arbitrary epsilon | same tensor/factors | no surrogate | stationary/no accumulation | direct path | theorem specialization | transient distinguished | step-local | None |
| raw/proof-only object identity | notation and target compatibility | sign absorption/product-one gauge | setting + sketch convention | compatible in outline | `P^raw=P` setting; bars proof-only | raw theta/sign for initialization, bar theta downstream | every consumer names its object | same rank-one tensor under orientation | discrete signs | raw -> bars after filter | score/row/best consumers | theta-negative trace passes | step-local | None |

## Blocking Issues

1. **The etaG derivation is not source-convention compatible**
   (`proof_sketch.md:495-505`). The pair relation contains the product of two
   vectors `(H_{M'}c_{M'}) circ (H_{M''}c_{M''})`, but the sketch expands the
   matrix Hadamard product `(I+E_{M'}) circ (I+E_{M''})`. A vector-level
   operator/Cauchy-Schwarz calculation is needed to prove the two first-order
   `q_*` terms and the quadratic term, together with the claimed etaN
   cancellation. Without it, the advertised eta0 and all score margins have
   no legal producer.
2. **The downstream constants are conditional on that missing source**
   (`proof_sketch.md:573-599,633-683`). The denominator-aware `68eta_0` and
   `144eta_0` arithmetic and the rerun `1.01s_mix<0.794<0.85s_-` pass if
   eta0 is valid, but the singleton/multi-support, graph, chi, row, and
   `C_best` outputs cannot be accepted until the corrected etaG/etaN relation
   is written in the exact coefficient-vector convention.
3. **Generated-flow rows overstate closure** (`proof_sketch.md:1000-1020`).
   `E_cert_tail` and all downstream outputs are marked blocker-free even
   though the eta source is unresolved. Mark them conditional and rerun the
   flow after the vector proof.

## Required Repair Bundle

1. Rewrite the Gram leakage derivation for vectors: expand
   `(E_{M'}c_{M'}) circ c_{M''}`, `c_{M'} circ (E_{M''}c_{M''})`, and the
   cross term; state the spectral/row/column norms used and prove the exact
   `2q_*+q_*^2` l1 budget. Derive etaN in the same normalized coordinates.
2. Recheck the ratio/profile, singleton and multi-support tails, score/filter,
   graph, sign, selected chi, row/column, `C_best`, and ALS tube constants
   after the valid eta budget is substituted.
3. Update `E_cert_tail`, `E_support_wt`, downstream gate rows, and generated
   flow with the corrected producer status. Keep the raw setting symbols and
   proof-only barred copies distinct.

Target-preserving repair check: these are local algebra and interface repairs.
They preserve the current algorithm, assumptions, rank, probability modes,
metric, success criterion, arbitrary-accuracy target, and exact baseline. The
boundary numerics remain favorable, so `IDEA_FAIL` is not justified.

## Review Rationale

Attempt 7 materially repairs the denominator arithmetic and gives a positive
weighted score gap with the larger reserves. It also keeps the all-certified
producer and raw/barred object contract coherent. Acceptance is still blocked
because the written two-factor etaG expansion is for the wrong object and does
not prove the vector leakage/normalization interface consumed by the profile
lemma. This is a target-preserving sketch repair, so the deepest justified
status is `REVISE_SKETCH`, score 7, rather than `IDEA_FAIL`.
