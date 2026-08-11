# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: perspective_1/idea_5
- Sketch attempt: 8
- Retry mode in the sketch: revise_sketch
- Controller-supplied attempt-7 review: proof_history/sketch_015/proof_sketch_review.md
- Sketch-declared trigger: proof_history/sketch_014/proof_sketch_review.md
- Proposal: stationarity-certified simultaneous Jacobi extreme-start proposal,
  global all-certified tail ledger, weighted observable clustering, and active
  cyclic ALS carry-over
- Progress type: conditional
- Target rank: U(r) = Theta(r^(5/3) (log r)^(5/2))
- Reviewed setting.md, idea.md, proof_sketch.md, technical_survey.md,
  proof_tracker.md, and the prior sketch reviews.
- Attempt-8 repairs credited: the coefficient relation is expanded at the
  vector level, the two first-order Gram terms and cross term receive the
  eta_G = 2q_* + q_*^2 budget, the reciprocal norm-scalar remainder receives
  eta_N = 5q_*^2, and the denominator, profile, score, graph, row, best-scalar,
  and ALS constants are rerun. Raw setting objects remain distinct from the
  proof-only barred orientation.

## Sketch Viability Score

8

## Sketch Review Status

ACCEPTED

## Smallest Retry Target

None

## Retry Mode

none

## Audit Summary

- Goal alignment: The sketch targets the exact conditional theorem in
  setting.md. It preserves the source tensor and rank-k loss, the
  strictly-subquadratic U(r) rate, arbitrary relative Frobenius accuracy,
  separate instance and initialization confidence, polynomial runtime, and
  the exact orthogonal equal-weight baseline. The conditional progress label
  and the remaining static restrictions are stated rather than hidden.
- Dependency audit: The graph is acyclic and ordered as
  E_sm -> E_win/E_cov -> E_RS/E_chart -> E_cert_eq/E_cert_tail ->
  E_support_wt/E_cluster/E_gauge -> E_col/E_row -> E_best/E_quotient ->
  E_basin -> E_stop/E_restart. Every generated output has a producer before
  its first consumer, and raw versus barred objects are bound explicitly.
- High-risk coverage: The sketch localizes the generated geometry event,
  coverage and recurrence, approximate-fixed-point certificate, all-certified
  support and score classification, graph separation, coefficient bootstrap,
  finite residual accumulation, quotient basin, active zero-padding, stopping,
  restart conversion, and baseline specialization into named steps or
  explicit interfaces.
- Explicit-rate coverage: Structural, sampling, horizon, regularity,
  certificate, numerical, accuracy, confidence, and runtime dependencies are
  exposed. The auxiliary choices for tau_r, burn and certification horizons,
  active sweeps, and restart count are stated, with probability and norm modes.
- Assumption and citation plausibility: Theorem-facing assumptions are the
  primitive assump ids from setting.md; realized geometry, chart membership,
  certification, clustering, and basin membership are derived. The ALS
  citation has a stable DOI and exact labels, a current-notation mapping, and
  a direct branch-local inverse and contraction wrapper rather than supplying
  an unproved generated condition.

## Prior Blocker Disposition

| Prior issue | Attempt-8 disposition | Review finding |
| --- | --- | --- |
| Matrix-versus-vector Gram leakage expansion | Repaired | The sketch expands (H' c') circ (H'' c'') as two vector first-order terms and one cross term, and bounds them by q_*, q_*, and q_*^2 using spectral Cauchy-Schwarz. |
| Norm-scalar normalization remainder | Repaired | The displayed remainder is the exact remainder of B = s' s'' / s_M: B = 1 + nu' + nu'' - nu_M + (nu' - nu_M)(nu'' - nu_M)/(1 + nu_M). The linear part is a scalar for a fixed mode and slot and is absorbed or cancels in the ratio/profile calculation; the residual is at most 5q_*^2. |
| Downstream margin and flow status | Repaired | eta_0, eta_rel, denominator factors, profile, tails, score/filter, graph, row, C_best, and rho_ALS are recomputed from the repaired producer and have strict numerical slack. |

## Early Obstruction Audit

- Limiting-case stress: In the orthogonal equal-weight specialization the
  simultaneous map is (BC, AC, AB), the ratio recurrence squares, stationary
  representatives have zero residual, and active ALS has no error floor. At
  the unequal-weight boundary Gamma = 1.01 the exact two-support score remains
  below the component filter. LOW scores, empty or threshold-straddling
  supports, negative theta, zero contractions, finite q-zero transients, and
  stationary states are all assigned explicit branches. The extremal reserve
  eta_0 < 4.89e-4 gives s_- > .953, s_+ < 1.047,
  1.01 s_mix < .794 < .85 s_-, singleton tail below 1.43e-3, and
  multi-support score tail below 4.29e-3.
- Theorem-critical bridge support: E_sm is sourced by the primitive smoothing
  inequalities. E_cert_eq is an exact same-state normal-equation identity
  with a per-column projective residual. For E_cert_tail, H = I + F and
  (H' c') circ (H'' c'') is expanded as
  (F' x') circ x'' + x' circ (F'' x'') +
  (F' x') circ (F'' x''). The l1 bounds q_*, q_*, q_*^2 are valid for
  unit coefficient vectors. The norm factor is handled by the explicit
  reciprocal identity for B = s' s'' / s_M; its first-order part is scalar
  and its second-order remainder is bounded by 4q_*^2/(1-q_*) < 5q_*^2.
  The certificate l2-to-l1 charge is exactly 2 sqrt(r) tau_r. These are
  sketch-level mechanism witnesses, not future-step labels.
- Exported-interface feasibility: E_cert_tail exports LOW or a retained core,
  threshold floor, singleton and score tails, weighted profile, and denominator
  margins for every certified slot without labels or E_cov. E_support_wt
  exports the component-versus-mixture score gap. E_cluster and E_gauge export
  target-compatible directions and product-preserving signs. E_col,
  E_row_residual, E_row, E_best, and E_basin each state raw controls,
  consumers, margins, and target scales. No transformed or surrogate target is
  consumed without a same-target bridge.
- Theorem-critical mechanism witness gate: Passed. Each closure or structural
  claim names its positive source, opposing defects, quantitative dominance or
  absorption relation, boundary handling, and producer-consumer path. In
  particular, the coefficient-vector Gram source and reciprocal normalization
  source are now concrete and source-convention compatible.
- Entry-state trace stress: The first simultaneous update is traced from the
  Gaussian window event through the denominator invariant and chart. The
  exact q-zero fixed point, a finite q-zero transient, a LOW score, a
  threshold-straddling state, a negative theta state, and the zero-contraction
  unsuccessful branch are all handled. The exact fixed point activates the
  zero-residual mechanism; transient residuals are retained and charged.
- Obligation locality classification: All theorem-critical hard obligations
  are step-local under the stated interfaces: smoothing concentration,
  window probability, recurrence and chart, certificate equation and tail
  ledger, support and graph separation, dual column and row absorption,
  best-scalar transfer, quotient inverse and contraction, stopping, restart,
  and baseline specialization. No obligation requires a new theorem-facing
  assumption, a changed metric, or a weakened conclusion.
- Noncircular closure gate: E_sm is produced from primitive conditions,
  E_cov from independent proposal slots, E_chart from the recurrence and
  self-map, E_cert_eq and E_cert_tail before labels or clustering, and E_col
  before E_row. The quotient tube is produced by E_best and is then consumed
  by ALS. No generated closure property is used as its own producer.
- Mechanism-source and boundary stress: The positive terms are the target
  coefficient, Gram/Khatri-Rao floors, and contraction denominator. Defects
  are separated into linear Gram leakage, quadratic Gram leakage, scalar
  normalization remainder, finite certificate residual, and row/column
  forcing. The signs of certificate residuals are not assumed favorable; all
  finite sums use absolute budgets. Boundary and null cases are explicit.
- Generated-output flow: The flow is legal and complete:
  E_sm -> E_win -> E_cov -> E_chart/E_cert -> E_cert_eq/E_cert_tail ->
  E_support_wt -> E_cluster/E_gauge -> E_col/E_row ->
  E_best/E_quotient -> E_basin -> E_stop/E_restart. Consumers use the exact
  stored state, not a look-ahead update, and the final theorem uses the
  original rank-k output.
- Source-to-claim adequacy: Direct Gaussian concentration, multilinearity,
  Schur products, Gershgorin, Cauchy-Schwarz, unit normalization, and
  small-root arithmetic source the local claims in current notation. The
  exact reciprocal norm identity supplies the normalization interface. The
  cited Uschmajew result is used only for the quotient interpretation and
  local block-Gauss-Seidel conclusion; its source objects, labels, and
  assumptions are mapped and discharged by the direct branch-local bounds.
- Residual-to-target adequacy: The certificate residual is first compared to
  the same-state contraction, then transferred through the realized dual
  basis with a per-entry 2 tau_r bound and induced row and column masses
  2 r tau_r. The selected barred directions, relative amplitudes, and
  Frobenius tensor expansion all use the realized CP target. The target norm
  lower bound, residual decomposition, and C_best = 512 dominate every
  residual at the consumed scale; no surrogate or unlisted condition number
  remains.
- Baseline invariance audit: The inherited conclusion is exact projective
  squaring and zero-residual convergence in the orthogonal equal-weight case.
  The deterministic rho-zero specialization tests the first update, retains
  finite transient residuals, and proves zero residual at a stationary
  representative and arbitrary accuracy as epsilon decreases. This preserves
  the original baseline rather than replacing it by an error floor.
- Scope-accumulation compatibility: The proposal recurrence is finite-horizon
  with a persistent q_real forcing controlled by an invariant interval.
  Certification residuals are charged first in l2, then once in finite support
  l1, and selected row and column sums use the explicit per-entry bound.
  The row inequality has a self coefficient below 1/8, and ALS uses an
  invariant tube with cyclic contraction below 1/4. Thus no additive,
  adversarial, or persistent term is silently accumulated over an unbounded
  scope.
- Scope and dependence consistency: The rank, log horizons, tau_r, q_*,
  kappa_0, rho, epsilon, delta_sm, and delta_init dependencies remain those
  in the formalized goal. The repaired eta budget does not introduce a hidden
  factor of r, confidence, base condition number, or changed success mode.
- Generated-condition provenance: Every event, chart, support, cluster, row
  bound, basin, and stopping condition is marked derived and has an earlier
  producer. Primitive assumptions are referenced by stable assump ids; no
  realized event is promoted to a theorem premise.
- Citation and tool applicability: The only theorem-critical external result
  is Uschmajew, DOI 10.1137/110843587, Assumption 1, Lemma 3.2, and
  Theorems 3.3 and 3.5. The sketch records its role, current-to-source
  object mapping, convention translation, hypothesis discharge, and the
  boundaries of what the citation does not provide. All other sources are
  direct derivations or standard tools with explicit interfaces.
- Same-setting repair plausibility: The prior vector and normalization
  concerns are repaired within the current algorithm, assumptions, target,
  metric, probability mode, rank, and baseline. Remaining proof details are
  legitimately step-local and do not require idea revision.
- Target-preserving bridge-repair gate: Passed. No target-changing repair is
  requested. The conditional theorem remains conditional, the arbitrary
  accuracy and strictly subquadratic rank remain exposed, and the exact
  baseline remains intact.
- High-risk obligation classes: Structural support and nondegeneracy,
  generated-condition provenance, finite defect accumulation, mode and
  scope conversion, explicit rates, exported interfaces, residual transfer,
  local ALS contraction, restart confidence, and baseline invariance all have
  concrete witnesses and row-level evidence below.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E_sm | static realized geometry and Khatri-Rao floor | Gaussian concentration, normalization, Schur product, Gershgorin | primitive assump ids to step_001 | exact event and probability claim | normalized realized factors match setting | separate linear, quadratic, normalization margins imply q_real, Gamma, and floor | n, r, kappa_0, rho, delta_sm and union factors exposed | same realized tensor and factors are consumed | finite static errors, no trajectory accumulation | primitive conditions to step_001 | step_001 to window, chart, certificate, ALS | rho-zero orthogonal limit is exact | step-local | None |
| E_win and E_cov | Gaussian entry, coverage, and rank rate | Gaussian regression, product tails, independent-slot coupon bound | E_sm and primitive initialization to steps 002-003 | exact target-window and all-target coverage match | raw Gaussian coordinates and realized target ratios | p_win is between stated universal multiples and k p_win is at least 8 log r | k, r, horizons, and confidence separation exposed | entry chart is defined against the same realized targets | finite slot misses and union bound | E_sm to E_win to E_cov | E_cov feeds chart, clustering, restart | first update and missed-slot branches are explicit | step-local | None |
| E_RS, E_chart, and E_chart_l1 | denominator invariant and covered chart | old-state Jacobi expansion, invariant interval, Banach self-map | E_sm, E_win, and step_004 direct derivation | exact recurrence and chart outputs | target-relative ratios and dual/ambient norms are mapped | denominator stays positive, chart self-map holds, and L_chart is below 1/4 | R, S, a_t, chi_chart, and L_cert are explicit | chart error is measured in the realized target metric | persistent q forcing is bounded over finite horizon | E_cov to E_RS to chart outputs | step_004 feeds certification and covered tightening | q-zero squaring and finite transient are traced | step-local | None |
| E_cert | stored approximate fixed point | projective residual and chart contraction | E_chart to step_004 | exact zeta threshold and stored-state claim | stored state and look-ahead are distinguished | 3 times (1/4)^t is at most tau_r in the window | tau_r and certification horizon exposed | same-state contraction is the immediate target | finite residual, no unbounded sum | chart self-map to E_cert | step_004 to certificate and classifier | zero contraction is unsuccessful; stationary state has zero residual | step-local | None |
| E_cert_eq | raw and barred same-state normal equation | multilinearity and projective sign choice | E_cert to step_004b | exact coefficient and residual interface | right-side raw sign matrix and proof-only bars are explicit | per-column residual norm is at most d tau_r | raw P, K, D, theta and barred copies are separated | initial comparison is only to the same-state contraction | sign-unknown finite l2 residual | E_cert to E_cert_eq | E_cert_eq feeds tail, support, and row bridge | q-zero transient is retained; stationary residual vanishes | step-local | None |
| E_cert_tail | global LOW, support, tail, and profile ledger | vector Hc Hadamard expansion, reciprocal norm identity, finite l2-to-l1 conversion | E_cert_eq and E_sm to step_004b | exact all-certified no-label claim | coefficient vectors, scale-free mu, and raw convention match setting | eta_G = 2q_* + q_*^2, eta_N = 5q_*^2, eta_C = 2 sqrt(r) tau_r, profile 144 eta_0, and tails | floor, denominator, score, and residual controls are exported before labels | score and directions remain in the same realized target basis | finite absolute budgets; scalar first-order terms cancel and second-order remainder is bounded | E_cert_eq to E_cert_tail without E_cov | E_cert_tail feeds support, cluster, and selected bridge | LOW, empty, singleton, multi-support, and threshold boundaries pass | step-local | None |
| E_support_wt | weighted support and score classifier | E_cert_tail, weighted pair equations, exact stationary profile | E_cert_tail and E_sm to step_005 | component-versus-mixture claim matches goal | diag(lambda) is retained and Gamma is explicit | s_-, s_+, s_mix, tail and profile inequalities give strict filter gap | thresholds, score margins, and consumers are named | score is the observable target interface | finite tails and bounded weight imbalance | E_cert_tail to support output | step_005 feeds graph, gauge, row, and best | two-support unequal-weight and LOW tests pass | step-local | None |
| E_cluster and E_gauge | observable clusters, signs, and scalar | score gap, graph correlations, product-one orientation | support output to step_005 | exactly r clusters and positive scalar | raw initialization sign and proof-only bars preserve rank-one terms | same-target edge is above 1-64q_* and cross-target edge is below 1/32; theta is bounded away from zero | graph threshold, theta lower bound, and permutation are explicit | bars represent the same tensor under discrete signs | finite graph and sign choices | support to cluster/gauge | step_005 outputs feed selected bridge | negative theta and duplicate or tie cases are handled | step-local | None |
| E_col, E_row_residual, and E_row | selected coefficient and residual masses | dual basis, small-root inequality, per-entry residual, row absorption | selected outputs and E_cert_eq to step_006 | exact row and column interfaces | dual basis is built from the realized target Gram | chi is on the small root, each residual entry is at most 2 tau_r, and row self coefficient is below 1/8 | omega, 31/32 inverse floor, and 2 r tau_r masses are explicit | residual transfers directly to target dual coordinates | finite sign-unknown residual and absorbed row forcing | cluster to column to residual to row | step_006 feeds best and basin | exact q-zero and small-root boundary pass | step-local | None |
| E_best and E_quotient | observable best-scalar basin entry | tensor expansion, unit norms, relative cube-root, product-one gauge | E_col, E_row, E_gauge to step_007 | same rank-r target and original Frobenius metric | relative amplitudes cancel raw kappa_0 scale | C_best = 512 and 512 omega is below rho_ALS/4 | target norm lower bound and four residual classes are explicit | every direction, amplitude, and Gram residual is dominated at target scale | one finite expansion, no recursive forcing | selected bridge to E_best to quotient | step_007 feeds ALS tube and stopping | exact component and zero-amplitude boundaries are excluded or exact | step-local | None |
| E_basin and active ALS contraction | quotient Hessian, inverse, and terminal convergence | KR floor, direct inverse perturbation, quotient kernel, cited local ALS theorem | E_sm and E_best to step_008 with cited wrapper | exact active rank-r conclusion and zero padding | source conventions, gauge, and active rank-r block are mapped | inverse floor 31/32, per-mode below 1/16, cyclic below 1/4, and invariant tube | rho_ALS, active block, Moore-Penrose zero block, and residual equivalence exposed | quotient contraction implies original rank-k Frobenius error | no additive forcing at exact target, uniform tube recurrence | E_best to E_basin to stopping | step_008 produces E_basin and contraction for step_009 | exact fixed point is stationary; tube boundary keeps inverse positive | step-local | None |
| E_stop and E_restart | arbitrary accuracy, confidence, and runtime | contraction recurrence, residual comparison, independent restarts | E_basin and primitive confidence to steps 009-010 | exact epsilon and delta_init claims | original loss and rank-k output are retained | m is logarithmic in kappa_0 and epsilon; J is logarithmic in delta_init | operation counts, unsuccessful runs, and probability conversion are explicit | returned residual is the original relative Frobenius residual | finite stopping and geometric restart failure | basin to stop to restart | steps 009-010 feed final theorem | epsilon positive and restart independence boundaries pass | step-local | None |
| Baseline invariance | exact/noiseless specialization and zero limit | direct simultaneous map and exact CP normal equations | deterministic limiting clause to step_011 | inherited baseline conclusion is preserved | rho-zero is labeled a limit, not a primitive probability event | R contracts by squaring, stationary residual is zero, and epsilon can decrease arbitrarily | no error floor or changed success criterion is introduced | same tensor and metric as the main goal | transient residual is retained until stationarity | direct baseline path to final specialization | step_011 is the sole consumer | orthogonal equal-weight stationary and first-update traces pass | step-local | None |
| Raw and barred object identity | notation, sign, and target compatibility | right-side sign matrix and product-preserving gauge | setting definitions and step_004b/005 | exact object identity is maintained | raw P, K, D, theta are never rebound | bar copies are formed only after score filtering and preserve each rank-one term | every downstream consumer names raw or barred object | no surrogate or look-ahead object enters target transfer | discrete signs only | raw certificate to post-score bars | score, row, best, and ALS consumers | theta-negative and look-ahead cases pass | step-local | None |
| Explicit rate and public specialization | quantitative bridge and hidden-constant contract | displayed auxiliary choices and term inequalities | rate objectives in sketch to steps 001-010 | all exposed variables and modes match goal | probability, horizon, and norm modes are stated | each dropped term has a numerical domination inequality and confidence conversion | n, r, k, kappa_0, rho, epsilon, delta_sm, delta_init are exposed | final rate is in original Frobenius norm | finite and geometric terms are separately budgeted | rate objectives to corresponding producers | final theorem consumes E_stop and E_restart | baseline specialization is separately traced | step-local | None |

## Blocking Issues

None

## Required Repair Bundle

None

## Review Rationale

Attempt 8 repairs the prior theorem-critical source mismatch. The coefficient
pair is expanded in the actual vector convention, with valid l1 budgets and
no hidden rank factor. The normalization line is source-adequate when read
with the immediately preceding scalar definition: the displayed quadratic
remainder is for the reciprocal factor s_{M'} s_{M''} divided by s_M, while
the inverse factor is absorbed into hat alpha_M. Its linear part is scalar
for each mode and slot and cancels in the ratio and profile identities, so
only the explicitly bounded second-order reserve enters eta_0. The resulting
denominator, tail, score, graph, row, basin, and runtime interfaces have
positive numerical slack and legal producer-consumer paths. All unresolved
work is lemma-level proof work under the current conditional theorem contract.
The sketch is therefore ready for global proof and step-level proof work:
ACCEPTED with viability score 8. No idea-level change or target weakening is
needed.
