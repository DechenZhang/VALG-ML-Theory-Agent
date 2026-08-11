# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_5`
- Sketch attempt: 9
- Retry mode in the sketch: `revise_sketch`
- Triggering review: `proof_history/sketch_008/proof_steps/step_008/attempt_001/review.md`
- Reviewed artifacts: `setting.md`, `idea.md`, `proof_sketch.md`,
  `technical_survey.md`, `proof_tracker.md`, the accepted attempt-8 sketch
  review, and the frozen attempt-8 Step 008 blocker review.
- Frozen sketch SHA-256: `34b5427d11878fc32f7085c5abf9e09daec62e4ac9e71fd134cc54ed30924083`
- Proposal: stationarity-certified simultaneous Jacobi proposal with a
  same-state certificate, weighted observable clustering, selected-state
  coefficient transfer, a collective perpendicular first-sweep bridge, and
  target-span cyclic ALS refinement.
- Progress type: `conditional`
- Target rank: `U(r) = Theta(r^(5/3) (log r)^(5/2))`
- Attempt-9 repair credited: the old unrestricted quotient-ball contraction
  is removed. New `step_007b` consumes the accepted Step 007 target-projector
  decomposition, retains `F_M=N_M^T N_M`, proves the first-sweep pair-Gram
  and inverse controls, and exports exact target-span entry before Step 008.

## Sketch Viability Score

8

## Sketch Review Status

ACCEPTED

## Smallest Retry Target

None

## Retry Mode

none

## Audit Summary

- Goal alignment: The sketch remains in exact-goal mode and targets the same
  conditional theorem in `setting.md`: the source asymmetric CP tensor, the
  original rank-`k` least-squares objective, `U(r)=Theta(r^(5/3)(log r)^(5/2))`,
  arbitrary relative Frobenius accuracy, separate instance and conditional
  initialization confidence, polynomial runtime, and the exact orthogonal
  equal-weight baseline. The first active sweep is now counted as part of
  refinement, not hidden as a new algorithmic assumption.
- Dependency audit: The graph is acyclic:
  `E_sm -> E_win/E_cov -> E_RS/E_chart/E_cert ->
  E_cert_eq/E_cert_tail -> E_support_wt/E_cluster/E_gauge ->
  E_col/E_row -> E_best/E_quotient -> E_pair_entry/E_parallel_entry ->
  E_basin_parallel -> E_stop/E_restart`. The new `step_007b` depends only on
  accepted `step_001` and `step_007` outputs and precedes every consumer of
  target-span membership.
- High-risk coverage: The repaired roadmap explicitly covers the prior
  shared-perpendicular obstruction, the exact target-projector decomposition,
  mixed `tau_r^2` terms, coherent `r tau_r^4` terms, all three intermediate
  inverses, exact range containment, quotient kernel, target-span contraction,
  stopping, restart conversion, and baseline preservation. Each is assigned
  a mechanism witness and a producer-consumer path.
- Explicit-rate coverage: Structural, sampling, proposal-horizon,
  certificate, first-sweep, regularity, numerical, accuracy, confidence, and
  runtime variables are exposed. `beta_perp`, `rho_ALS`, the sequential
  `3072/3456/4096` envelopes, the one-sweep offset in the stopping count, and
  all probability modes are stated. Hidden constants are not used to absorb
  `r`, `kappa_0`, confidence, or a generated condition number.
- Assumption and citation plausibility: Theorem-facing assumptions remain the
  stable primitive `assump:*` ids. `E_sm`, `E_best`, and the target-projector
  entry decomposition are derived predecessor outputs, not new assumptions.
  Uschmajew's DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, and Theorems
  3.3 and 3.5 are limited to quotient/block-Gauss-Seidel interpretation; the
  current-notation inverse radius, first-sweep bridge, zero-padding identity,
  and numeric contraction are assigned to direct derivations.

## Early Obstruction Audit

- Limiting-case stress: The archived shared-perpendicular construction is
  reproduced as an adversarial test, but it is no longer an allowed entry
  interface. At the actual selected entry every perpendicular column has norm
  at most `tau_r=q_*^2/(10^4 r)`, so the exact pair-Gram contamination is
  `beta_perp=2(1+q_*)(1+48omega)^2 tau_r^2+r tau_r^4`, with the coherent term
  retained. The stated bound `beta_perp<10^(-8)omega` and
  `4096(omega+beta_perp)<rho_ALS/3` hold uniformly for `r>=3`. The exact
  target, singular-pair boundary, finite `q=0` certificate transient, and
  positive-smoothing interior perturbations are all explicitly tested.
- Theorem-critical bridge support: `step_001` supplies static geometry;
  `step_004b` supplies the same-state certificate and global tail ledger;
  `step_005` supplies observable clustering and the product-one gauge;
  `step_006` and `step_007` supply selected coefficient, amplitude, and
  exact orthogonal-residual controls; `step_007b` supplies the first-sweep
  pair-Gram/inverse and target-span entry; `step_008` supplies the invariant
  target-span recurrence; `step_009` and `step_010` supply stopping and
  confidence. No theorem-critical bridge is merely named as future closure.
- Exported-interface feasibility: Every downstream output has raw controls,
  a named target interface, defect classes, a scale, and consumers in the
  `Exported Interface Feasibility` table. In particular, `E_pair_entry` keeps
  the mixed and coherent perpendicular classes separate; `E_parallel_entry`
  exports the exact ALS outputs `G_M Z_M`, zero perpendicular parts, and the
  `rho_ALS/3` entry margin; `E_basin_parallel` is consumed only after that
  generated entry. No threshold for one defect class is used to discharge an
  unrelated persistent or collective term.
- Theorem-critical mechanism witness gate: Passed at sketch level. The
  first-sweep witness names the positive target pair-Gram floor and exact
  unfolding range, the opposing amplitude, coefficient, mixed-perpendicular,
  and shared-perpendicular defects, the explicit `beta_perp` dominance, and
  the mode-by-mode disappearance `N_U^+=N_V^+=N_W^+=0`. The later contraction
  witness names the target-span inverse, quotient kernel, per-mode Lipschitz
  bound, and cyclic `3/16<1/4` composition. The old witness that only used a
  max-column tube is explicitly rejected and removed from the flow.
- Entry-state trace stress: The allowed entry is the selected balanced
  initialization from `step_007`, not an arbitrary point in the old quotient
  ball. `step_007b` traces the first `U`, then `V`, then `W` normal equations,
  retains the held perpendicular fields at each transition, verifies every
  inverse before use, and records that each updated mode lies exactly in the
  corresponding target span. At the end of the first sweep the target-span
  source is active before `step_008` consumes it. At the exact target the first
  update is stationary; if the pair floor vanished, the inverse source would
  fail and the sketch explicitly routes that boundary to the static `E_sm`
  obligation.
- Obligation locality classification: All unresolved obligations are
  `step-local`: static concentration; window tails; recurrence/chart;
  certificate ledger; weighted support and graph; selected row/column gain;
  best-scalar transfer; collective first-sweep pair control; target-span
  inverse/kernel/contraction; stopping; restart; and baseline specialization.
  The prior `sketch/interface defect` is repaired by `step_007b`; no
  `idea/theorem-contract defect` remains.
- Noncircular closure gate: `E_sm` is produced from primitive conditions,
  `E_cert` from the finite chart, `E_cert_tail` before labels, selected
  coefficient fields before the first-sweep bridge, and `E_parallel_entry`
  before target-span contraction. The target-span condition is never assumed
  to prove the first update; exact unfolding proves it and then preserves it.
  The contraction recurrence is consumed only after its entry producer.
- Mechanism-source and boundary stress: Direct Gaussian concentration,
  Schur/Gershgorin, multilinearity, dual projectors, induced row/column
  Hadamard bounds, exact unfolding, and Moore-Penrose block algebra all have
  current-notation source paths. The null shared-perpendicular source is
  explicitly shown to be dangerous without the `tau_r` entry bound and is
  excluded by a proved derived control rather than a new primitive condition.
  Zero contractions, zero scores, negative scores, empty/straddling supports,
  singular pair designs, finite `q=0` transients, and stationary states have
  named branches.
- Generated-output flow: The new flow is legal and complete:
  `step_007 -> step_007b -> E_pair_entry -> E_parallel_entry -> step_008 ->
  E_basin_parallel -> step_009 -> E_stop -> step_010`. The existing outputs
  and their consumers are listed row by row; no consumer precedes its
  producer, and target labels remain proof-only.
- Source-to-claim adequacy: The direct first-sweep source is adequate for a
  generated target-span and inverse claim: `N_M` is the exact Euclidean
  target-projector residual, `F_M=N_M^T N_M` is the exact held-direction
  Gram contribution, and the exact unfolding has range `range(G_M)`. The
  target pair floor is supplied by accepted `E_sm`. The cited ALS paper is
  not asked to supply a radius or a generated invariant; its source identity,
  current-object mapping, qualitative conclusion, and non-output boundaries
  are recorded. Standard/direct tools are in the branch convention.
- Residual-to-target adequacy: The produced first-sweep factors `G_M Z_M`
  and the consumed target are the same realized CP factors under the original
  rank-`k` Frobenius metric; only product-one scaling and proof permutation
  are removed. The residual decomposition consists of coefficient,
  amplitude, target-span, mixed-perpendicular, and shared-perpendicular
  terms, each with a source and target scale. The `4096(omega+beta_perp)`
  margin dominates all first-sweep terms, and the later target-span residual
  has no perpendicular term. No population, whitened, preconditioned, or
  look-ahead surrogate is consumed.
- Object-target compatibility: The produced selected entry is the actual
  stored representative with the observable scalar initialization; the
  consumed object is the same active CP representation in the setting's
  loss. `N_M` is measured against the realized target span, and `G_M Z_M`
  is the exact ALS output in that same span. Product-one rebalancing changes
  only factor scales and preserves the represented rank-one terms. The
  baseline object is the same exact orthogonal CP tensor, not a population
  or limiting surrogate.
- Baseline invariance audit: The inherited conclusion is the exact
  orthogonal equal-weight simultaneous squaring map, stationary zero
  same-state residual, and arbitrary-accuracy zero limit. Attempt 9 retains
  finite transient certificate and first-sweep charges, traces the first
  update, and proves zero residual only at the exact stationary state. Step
  007b has `beta_perp=0` at the exact target, while Step 011 handles the
  deterministic `rho=0` specialization without asserting a positive-rho
  probability statement. The original baseline is preserved; no error-floor
  surrogate is substituted.
- Scope-accumulation compatibility: Proposal forcing is finite-horizon and
  controlled by the ratio invariant. Certificate residuals are charged once
  over finite supports. The first-sweep perpendicular forcing is finite and
  explicitly bounded by `beta_perp`; it disappears by exact range projection
  after the three updates. On the target-span tube, the all-sweep forcing is
  exactly zero and the concrete recurrence
  `e_(s+1)<=e_s/4` has geometric budget
  `sum_s e_s <=(4/3)e_1`. Restart failure is a finite independent product,
  not an all-time probability upgrade.
- Scope and dependence consistency: The rank, `log r` proposal horizons,
  `tau_r`, `beta_perp`, `rho_ALS`, `epsilon`, `delta_sm`, and
  `delta_init` dependencies match the formalized goal. The first-sweep offset
  is exposed in `m>=1+ceil(log(8 kappa_0^2/epsilon)/log 4)`. Hidden constants
  do not absorb `r`, `kappa_0`, confidence, or a trajectory condition number.
- Generated-condition provenance: Every event, chart, support set, cluster,
  gauge, coefficient field, perpendicular field, pair inverse, target-span
  membership, stopping event, and restart success event is marked derived and
  has an earlier producer or is a local conditional target. No generated
  object appears as a primitive setting assumption.
- Citation and tool applicability: The Uschmajew source is identified by DOI,
  stable labels, role, current active CP object, scaling quotient, and cyclic
  block order. Its known non-output boundaries (random entry, numeric radius,
  zero padding, and `1/4` constant) are explicitly assigned to direct branch
  proofs. Gaussian, Schur, Gershgorin, projector, and Moore-Penrose tools are
  standard/direct current-notation sources with explicit controls.
- Same-setting repair plausibility: The archived obstruction required only a
  missing collective entry field. Accepted Step 007 already supplies the
  columnwise perpendicular residual and row/column coefficient controls, and
  exact ALS supplies range containment. Adding `step_007b` preserves the
  primitive assumptions, procedure, metric, rank, probability modes,
  arbitrary-accuracy goal, and baseline. No idea revision is indicated.
- Target-preserving bridge-repair gate: Passed. The repair narrows only a
  proof domain to a generated trajectory subset while preserving the actual
  algorithmic entry and final theorem; it does not narrow the theorem to
  arbitrary target-span initializations or add an incoherence assumption.
  The baseline obligation remains unchanged.
- High-risk obligation classes: Structural conditioning and quotient kernel,
  perturbation remainders, recursive chart maintenance, first-sweep generated
  membership, all-sweep contraction, mode/horizon conversion, explicit rates,
  public stopping specialization, and baseline invariance all have concrete
  sources and boundary tests. The previously verified coherent Gram failure
  is retained as a negative test rather than hidden.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | Static geometry, norms, weights, and pair-Gram floor | Gaussian concentration, normalization, Schur product, Gershgorin | Primitive `assump:*` through `step_001` | Exact realized-factor event and probability claim | Same normalized Euclidean factors and original target | Separate linear, quadratic, and normalization margins; finite union | `n,r,kappa_0,rho,delta_sm`, row factors, and exported floor are explicit | Produced factors are exactly the consumed target | Finite static errors; no trajectory accumulation | Primitive assumptions -> `step_001` | `step_001` -> `step_002,003,004,007b,008` | Orthogonal zero-perturbation limit is exact; singular-floor boundary is excluded by margin | step-local | None |
| `E_win` / `E_cov` | Rare entry and all-target coverage | Conditional Gaussian regression, product tails, independent-slot coupon bound | `E_sm` plus `assump:random-initialization` | Exact window probability and coverage target | Raw coordinates and realized target ratios match setting | `p_win=Theta(r^(-5/3)(log r)^(-3/2))`; `k p_win>=8 log r` | `k,r,a_*,b_*`, finite-small-r constants, and label-free algorithm rule are explicit | Window state maps directly to `R_0,S_0` in the realized metric | Finite miss/tail unions only | `step_001 -> step_002 -> step_003` | `E_cov` -> `step_004,005,010` | Missed targets are unsuccessful-run branches; first update has positive denominator | step-local | None |
| `E_RS` / `E_chart` / `E_cert` | Ratio recurrence, chart, and certified state | Exact old-state Jacobi expansion and Banach self-map | `E_sm,E_win` and direct current-notation derivation | Exact simultaneous map and finite-horizon certification | Same old-state convention, projective norm, and stored state | Denominator invariant, chart self-map, `L_chart<1/4`, geometric `zeta` decay | `R,S,a_t,L_burn,L_cert,tau_r` and margins are displayed | State is compared to its own contraction before target transfer | Persistent `q_real` forcing is finite-horizon bounded | `step_001,002,003 -> step_004` | `E_cert` -> `step_004b,005` | `q=0` squaring, zero-contraction failure, and stationary zero residual are traced | step-local | None |
| `E_cert_eq` / `E_cert_tail` | Same-state equation and no-label support ledger | Multilinearity, vector Hadamard expansion, scalar normalization cancellation, finite l2-to-l1 charge | `E_cert` and `E_sm` -> `step_004b` | Exact raw/barred equation and all-certified tail interface | Right-side signs, proof-only bars, and same stored directions are mapped | `eta_G=2q_*+q_*^2`, `eta_N=5q_*^2`, `eta_C=2sqrt(r)tau_r`, threshold/profile inequalities | LOW, singleton, multi-support, straddling, residual, and denominator classes are all exported before labels | No target surrogate is consumed; later dual transfer is explicit | Unknown-sign residual is charged once on finite support | `step_004 -> step_004b -> step_005,006` | `E_cert_tail` -> `step_005` | Empty, LOW, negative, zero, straddling, transient, and stationary cases are named | step-local | None |
| `E_support_wt` / `E_cluster` / `E_gauge` | Weighted support, observable graph, and sign/gauge bridge | Weighted exact profile plus tail ledger and Gram margins | `step_004b` and `E_sm` -> `step_005` | Component-versus-mixture score and exactly-one-cluster claim | Realized weights, absolute correlations, and product-one signs match algorithm | `1.01 s_mix<0.794<0.85 s_-`; graph same-target/cross-target gaps | Score/filter thresholds, chart radius, theta floor, permutation, and consumers are explicit | Representatives and initialized terms are same realized tensor objects | Finite graph; no recursive accumulation | `E_cert_eq,tail -> step_005` | `E_cluster,E_gauge` -> `step_006,007` | Unequal weights, multi-support fixed points, negative/zero theta, ties, and exact components are tested | step-local | None |
| `E_col` / `E_row_residual` / `E_row` | Selected coefficient and residual small gain | True-factor dual basis, per-entry residual, quadratic/root absorption | `step_004b,005` -> `step_006` | Exact row/column interfaces requested by goal | Same realized target dual and same-state coefficients | `chi<=32omega`, per-entry `2tau_r`, induced `2r tau_r`, row self coefficient `<1/8` | `31/32` denominator, `Gamma`, `omega`, and finite residual budget are explicit | Residual is transferred directly to the realized target basis | Sign-unknown finite forcing; column closes before row | `step_005 -> step_006` | Outputs -> `step_007` | q-zero transient retains finite charge; stationary residual vanishes | step-local | None |
| `E_best` / `E_quotient` | Best-scalar target transfer and entry decomposition | Tensor expansion, relative cube root, product-one gauge, exact target projector | Accepted `step_005,006` -> `step_007` | Same-target quotient and original Frobenius entry | Raw initialization and proof bars preserve rank-one terms | `C_best=512`, `512omega<rho_ALS/4`, `bar P=G B+N`, column `N` budget `tau_r` | Direction, amplitude, row/column, and perpendicular controls are explicit | Exact realized tensor and target metric; no surrogate | One finite expansion; no repeated forcing | `step_006 -> step_007` | Outputs -> `step_007b` | Exact component, finite transient, and zero-amplitude boundary are handled | step-local | None |
| `E_pair_entry` | Collective perpendicular pair-Gram and first-sweep inverse control | Exact projector decomposition and Khatri-Rao Gram expansion | Accepted `E_sm,E_best,E_quotient` -> `step_007b` | Exact held direction-pair and cross-Gram claims | Same setting factors, Euclidean projector, and induced row/column norms | `beta_perp=O(tau_r^2+r tau_r^4)`, cross `<=96omega`, pair `<1/512`, inverse floor `31/32` | `F_M=N_M^T N_M`, max-entry `tau_r^2`, row/column `48omega`, amplitudes, and all diagonal factors are retained | Held design and consumed target are the exact ALS objects | Mixed terms and coherent term are absolute finite first-sweep defects; no later accumulation | `step_007 -> step_007b` before any target-span use | `E_pair_entry` -> three subupdates and `E_parallel_entry` | Archived shared-perpendicular state is tested; actual `tau_r` entry and singular boundary are separated | step-local | None |
| `E_parallel_entry` | Generated one-sweep target-span membership and basin entry | Exact unfolding range plus three ordinary inverse solves and quotient rebalance | `step_007b` | Exact output `G_M Z_M`, not a projected surrogate | Cyclic order, frozen zeros, and product-one scaling are mapped to setting | Sequential `3072,3456,4096` envelopes; `N_U^+=N_V^+=N_W^+=0`; entry `<rho_ALS/3` | Intermediate held scales, inverse margins, amplitude conjugation, and first-sweep cost are exposed | Output is the same represented rank-k tensor in the original metric | Perpendicular forcing vanishes mode by mode after finite sweep | `E_pair_entry -> step_007b` | `E_parallel_entry` -> `step_008,009` | Exact target stationary; finite q-zero transient retains charge until update | step-local | None |
| `E_basin_parallel` / quotient contraction | Invariant target-span basin and all-sweep convergence | Target-span row/column normal equations, quotient kernel, direct inverse perturbation | `E_parallel_entry,E_sm` -> `step_008` | Exact active CP-ALS contraction on generated domain | Same active rank-r objective, scaling quotient, cyclic order, and zero padding | Per-mode `<1/16`, cyclic `3/16<1/4`, exact target-span preservation, zero forcing | `rho_ALS=1/1024`, pair floor, gauge norm, and target-span condition are explicit | Relative quotient-to-original Frobenius comparison has constant `<9` and same target | All-sweep defect is exactly zero; geometric budget `4/3` | `step_007b -> step_008` | `E_basin_parallel` -> `step_009` | Old unrestricted tube is explicitly excluded; produced entry and singular boundary are tested | step-local | None |
| `E_stop` / `E_restart` | Accuracy, confidence, and runtime specialization | Geometric contraction, finite first-sweep offset, independent restarts | `step_003,007b,008` -> `step_009,010` | Exact epsilon, delta, and polynomial-cost claims | Original rank-k residual and same tensor are consumed | `m>=1+ceil(log(8kappa_0^2/epsilon)/log4)` and `(1-p_0)^J<=delta_init` | Proposal, failed runs, active solves, first sweep, and restart costs are listed | Returned object is selected by original Frobenius residual | Finite stopping plus finite independent product | `E_parallel_entry -> step_009 -> step_010` | Final theorem consumes `E_stop,E_restart` | `epsilon>0`, `J=1`, and exact baseline branches are explicit | step-local | None |
| Baseline invariance | Exact/noiseless map, stationary zero residual, and zero limit | Direct simultaneous map and exact CP normal equations | Deterministic limiting specialization, `step_011` | Same inherited baseline conclusion | Same algorithm, metric, and factors; `rho=0` is explicitly a limit | `R^+<=R^2`, `S^+<=RS`, stationary `zeta=0`, and arbitrary epsilon | Finite transient charges are retained; no probability premise is silently extended | Produced and consumed tensor coincide exactly at stationarity | No accumulated error at stationary state | Direct baseline path -> `step_011` -> final theorem | `step_011` sole consumer of baseline bridge | Orthogonal equal-weight first update and stationary traces pass | step-local | None |

## Blocking Issues

None

## Required Repair Bundle

None

## Review Rationale

`ACCEPTED` is the smallest sound status for attempt 9. The triggering Step 008
review identified a real counterexample to contraction on the unrestricted
quotient max tube. Attempt 9 does not assert that false interface or hide its
failure. Instead, it uses an already accepted, substantially stronger entry
fact (per-column perpendicular residual at most `tau_r`) to build the exact
collective pair-Gram field, explicitly charges the coherent `r tau_r^4` term,
and proves a finite first-sweep path into an invariant target-span domain.
Exact ALS range containment then supplies a noncircular source for all later
contraction, while the original metric, rank, probability modes, arbitrary
accuracy, runtime objective, and baseline conclusion remain unchanged. The
new obligations are concrete and step-local with source-adequate interfaces,
so no idea-level change or further sketch repair is required before spawning
the proof workers.
