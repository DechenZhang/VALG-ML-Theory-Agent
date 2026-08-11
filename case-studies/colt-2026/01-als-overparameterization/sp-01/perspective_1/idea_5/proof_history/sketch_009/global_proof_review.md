# Global Proof Review

## Global-Proof Review Identity

- Branch: `perspective_1/idea_5`.
- Sketch attempt: 9.
- Reviewed `proof_sketch.md`: SHA-256
  `34b5427d11878fc32f7085c5abf9e09daec62e4ac9e71fd134cc54ed30924083`,
  with steps `step_001`--`step_004`, `step_004b`, `step_005`--`step_007`,
  `step_007b`, and `step_008`--`step_011`.
- Reviewed `proof_sketch_review.md`: SHA-256
  `c386a0f53b67764261507a24e0913cae0fc87dbce9c3a570b67c79a2ec1a7bfd`;
  it identifies sketch attempt 9 and records `Sketch Review Status = ACCEPTED`.
- Reviewed `global_proof.md`: global attempt 1, SHA-256
  `939698892da067c683a2dc2d0f4031373370b8824b3550f3a492f5129e398529`,
  with `Status = SKETCH_BLOCKED` and `Suggested Routing = /proof-sketch`.
- Reviewed `setting.md`: SHA-256
  `b5d94e007cd1f2e428e604aca728743439635504d4982c69a29ae0016e34d56c`.
- Goal mode: exact-goal. Progress type: conditional.
- Archived attempt-8 artifacts were used only as diagnostic history. They are
  not proof evidence or current dependencies.

## Global-Proof Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Blocking Issues

1. **The `step_008` single-block map has no sound interpretation under the
   stated norm.** In `proof_sketch.md` lines 1178--1185, `Phi_M` is assigned
   a Lipschitz coefficient below `1/16` in `norm(.)_Q`, but `norm(.)_Q` was
   defined on the full three-mode quotient state. If `Phi_M` denotes the full
   post-block state, two target-span tube states differing only in a held
   block retain that difference exactly through the `M` solve, so the
   full-state Lipschitz ratio is at least one. If `Phi_M` denotes only the
   newly solved coordinate, its codomain, coordinate error seminorm, held-input
   dependence, and gauge convention are not defined. The positive pair-Gram
   floor, target-span invariance, and Hessian kernel do not repair this object
   mismatch.

2. **The cyclic contraction and downstream generated outputs have no legal
   producer.** The sketch asserts a `3/16` cyclic factor without stating the
   sequential `U,V,W` coordinate recurrences or a direct full-sweep estimate,
   and it does not show how the single final product-one/equal-norm rebalance
   transfers coordinate errors into the full quotient norm. Consequently
   `E_basin_parallel` cannot be exported by `step_008`; `step_009` has no
   accepted all-sweep recurrence to iterate, and the `1/4`, stopping-time, and
   runtime specializations remain unsupported. This is a generated-output,
   norm-mode, accumulation, and raw-control-to-exported-interface defect in
   the accepted sketch, not an ordinary local derivation gap.

## Required Repair Bundle

1. **Affected artifact/section:** new `proof_sketch.md` attempt, `step_008`
   mechanism-source and sketch-step interfaces. **Smallest target:**
   `/proof-sketch`. Replace the ambiguous `Phi_M` line by one of two complete
   interfaces: either define coordinate-output maps with their coordinate
   representations/seminorms and explicit dependence on the two held blocks,
   or remove the per-block full-state claim and state a directly sourced
   full-cyclic-sweep estimate. The new attempt must preserve the setting,
   algorithm, target-span domain, quotient metric, target rank, and output
   theorem.

2. **Affected artifact/section:** `step_008` closure, generated-output flow,
   exported-interface table, and scope/closure witness. **Smallest target:**
   `/proof-sketch`. If the coordinate route is used, state the sequential
   Gauss--Seidel relations for the `U`, then `V`, then `W` outputs, identify
   which held fields are old or newly updated, and prove a full-cycle bound
   after the one final quotient rebalance. The resulting interface must
   establish target-span preservation, tube invariance, zero additive forcing,
   and a numerical full-sweep factor strictly below `1/4`. Any changed
   numerical loss must be routed explicitly rather than retaining `3/16` by
   assertion.

3. **Affected artifact/section:** `E_basin_parallel -> E_stop -> E_restart`
   flow, `step_009` rate objective, quantitative specialization, and baseline
   witness. **Smallest target:** `/proof-sketch`. Update these consumers to the
   repaired full-sweep recurrence, retain the `step_007b` one-entry-sweep
   offset, and rerun the stopping inequality and operation count. Preserve the
   exact orthogonal equal-weight stationary conclusion and do not replace it
   by a finite `tau_r` floor.

4. A `/global-proof` rewrite alone is insufficient because the current global
   diagnostic already exposes the counterexample, missing interface, first
   invalid flow edge, and same-setting repair. The accepted sketch itself
   contains the ambiguous/false mechanism statement and must be replaced by a
   new sketch attempt and fresh sketch review. `/subagent-idea-generator` is
   unnecessary: no primitive assumption, algorithmic step, theorem scope,
   norm, exposed dependence, success criterion, or baseline conclusion needs
   to change.

## Contract And Status Audit

The frozen global diagnostic contains every required section: reviewed
identity, controlled status, attempted claim, G1--G11 draft, theorem-level
block map, sketch-step coverage, dependency/assumption audit, citation/tool
audit, quantitative audit, scope-and-closure certificate, exported-interface
table, generated-output flow, obstruction and repair-plausibility analysis,
hard-step list, diagnostic-boundary note, and suggested routing. Its raw
`SKETCH_BLOCKED` status and `/proof-sketch` routing are aligned. It explicitly
states that it is diagnostic rather than proof evidence and does not consume
stale step artifacts.

The document is sufficiently detailed to classify the obstruction without a
`/global-proof` rerun. The accepted sketch review is a valid upstream workflow
gate but its viability conclusion is not inherited: its assertion that the
per-mode line composes to `3/16` fails the independent object/norm check below.
Because the global diagnostic correctly identifies an accepted-sketch defect,
the controlled review status is `REVISE_SKETCH`.

## Claim And Sketch Fidelity Audit

The attempted theorem claim remains faithful to `setting.md`: it preserves the
asymmetric realized CP tensor, exact SC-JEP-ALS procedure, strictly
subquadratic `U(r)`, nested smoothing and conditional initialization
probabilities, arbitrary relative Frobenius accuracy, polynomial runtime, and
the deterministic orthogonal equal-weight baseline. The new `step_007b`
target-span entry is generated by one actual cyclic ALS sweep and is not
promoted to a theorem assumption. All eight stable `assump:*` conditions
remain the only theorem-facing premises.

The obstruction is internal to the accepted `step_008` proof interface.
Repairing it need not narrow the theorem to externally supplied target-span
initializations, change cyclic ALS, add incoherence, alter the quotient or
Frobenius metrics, expose a new public parameter, or weaken arbitrary
accuracy. A new sketch attempt can preserve the exact claim while replacing
the invalid block-map-to-cycle bridge.

## Theorem-Level Structure Audit

G1--G8 form a coherent diagnostic chain:

`E_sm -> E_win/E_cov -> E_RS/E_chart/E_cert ->
E_cert_eq/E_cert_tail -> E_support_wt/E_cluster/E_gauge ->
E_col/E_row -> E_best/E_quotient/B+N ->
E_pair_entry/E_parallel_entry`.

In particular, G8 retains the coherent `r tau_r^4` perpendicular term,
checks the three entry-sweep inverse branches before use, and uses exact ALS
unfolding range to reach the realized target span without projection. G9 is
the first invalid block: it has adequate ingredients for a target-span local
analysis but no defined map that yields the claimed full-cycle recurrence.
G10 stopping/restarts are therefore conditional on a missing producer. G11
correctly preserves the exact stationary baseline but cannot turn stationarity
at one point into neighborhood contraction. No final assembly or downstream
step can repair G9 without changing the `step_008` sketch interface.

## Dependency And Assumption Audit

The eight primitive assumptions are correctly separated from derived events.
Every generated output through `E_parallel_entry` has a legal earlier producer
and consumer dependency. The exact target-span condition is produced by
`step_007b` after the first complete sweep, so it is not circularly used to
justify the first `U` solve.

`E_basin_parallel` is different: it is an intended all-sweep derived control,
but the `step_008` producer lacks a valid coordinate/full-cycle interface.
Neither `E_sm` nor `E_parallel_entry` supplies a full one-block contraction;
they supply pair positivity, target-span entry, and range preservation only.
Treating basin contraction as an assumption would violate provenance, and
passing it to `step_009` without repair would violate generated-output flow.
No accepted dependency is flawed, so `BLOCKED_BY_DEPENDENCY`-style routing is
inapplicable.

## Citation And Tool Audit

The Gaussian, Schur/Gershgorin, conditional Gaussian, Banach, Hadamard,
projector, resolvent, exact unfolding, and Moore--Penrose tools are mapped to
the setting objects and roles at adequate diagnostic granularity. Their
interfaces support G1--G8 and do not imply the disputed G9 contraction.

The theorem-critical external source is Uschmajew, *Local Convergence of the
Alternating Least Squares Algorithm for Canonical Tensor Approximation*, SIAM
J. Matrix Anal. Appl. (2012), DOI `10.1137/110843587`, Assumption 1,
Lemma 3.2, and Theorems 3.3 and 3.5. The sketch/global diagnostic map it only
to the active exact rank-`r` CP objective, component-scaling quotient, cyclic
block-Gauss--Seidel interpretation, and qualitative local convergence. They
correctly list random entry, the numerical radius, frozen zero padding, the
definition of `Phi_M`, and the explicit `1/4` factor as non-outputs. Thus the
citation cannot license a full one-block contraction or supply the missing
coordinate-to-full-sweep bridge. After sketch repair, the branch must still
prove the numerical coordinate or full-sweep wrapper directly in the exact
setting convention and discharge the cited Hessian/source hypotheses.

## Quantitative Dependence Audit

The diagnostic preserves all exposed variables
`n,r,k,kappa_0,rho,epsilon,delta_sm,delta_init`, fixed thresholds
`q_*,a_*,b_*`, the proposal horizons, `tau_r`,
`omega=q_*^2+r tau_r`, `beta_perp`, and `rho_ALS=1/1024`. Instance and
conditional-run probabilities remain nested; the proposal horizon is finite,
the entry bridge is one finite sweep, later refinement is intended all-sweep,
and the final error is in the original relative Frobenius norm.

The first-sweep inequalities and `4096(omega+beta_perp)<rho_ALS/3` are exposed.
The missing coordinate seminorm/full-sweep composition is a norm-mode and
horizon-mode defect: the asserted `3/16`, recurrence
`||e^(s+1)||_Q<=(1/4)||e^s||_Q`, geometric budget, and
`m>=1+ceil(log(8kappa_0^2/epsilon)/log 4)` do not yet have a valid producer.
The repaired sketch must rerun these constants and the Rate Specialization
Bridge rather than absorb a changed gauge/composition loss in hidden constants.
The exact orthogonal baseline remains valid independently and must be retained.

## Scope And Closure Review

The certificate adequately exposes finite static concentration, rare-window
activation, finite proposal recurrence, same-state support ledgers, selected
row/column absorption, best-scalar transfer, and the first-sweep collective
perpendicular budget. These rows name their sources, concrete relations,
finite or contractive accumulation behavior, entry/boundary tests, and legal
producer paths. The `E_parallel_entry` row is noncircular: it checks the first
`U` inverse with all held perpendicular terms present, then removes updated
perpendicular fields mode by mode, and consumes target-span membership only
after the complete entry sweep.

The `E_basin_parallel` row fails the mechanism-witness, source-convention,
exported-interface, accumulation, and entry-state gates. Its all-sweep forcing
is intended to be zero, but zero forcing is not itself a contraction source.
Under the full-state interpretation, an allowed arbitrarily small target-span
input difference supported in a held block is unchanged by one `M` update;
the proposed coefficient below `1/16` is false. Under the coordinate-output
interpretation, the coordinate metric and recurrence are absent, so no
one-cycle charge or geometric budget is defined. The exact target is a fixed
point, but that stationary trace does not control neighboring states.

The closure can plausibly be repaired under the same theorem contract by a
new coordinate-output/seminorm and sequential recurrence, including the final
gauge, or by a directly sourced full-sweep estimate. That changes the accepted
sketch's mechanism interface and generated-output flow, so the locality is
`sketch/interface defect`. `E_stop/E_restart` inherits this defect. The
baseline row remains `step-local` and target-preserving.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | Static geometry and pair nondegeneracy | Gaussian normalization/concentration; Schur/Gershgorin | Static primitives -> `step_001` | Exact realized factors and pair floor | Same normalized Euclidean convention | Separate linear, quadratic, normalization margins; pair row `<=q_*^2` | All structural/confidence variables and union factors exposed | Produced factors are the consumed target | Finite static union; no accumulation | Primitives -> `step_001` -> consumers | `step_001` -> G2,G3,G8,G9 | Zero-perturbation orthogonal floor exact; singular boundary excluded | step-local | None |
| `E_win,E_cov` | Rare activation and rank rate | Conditional Gaussian tails and independent slots | `E_sm` plus initialization primitive -> `step_002,003` | Exact window and coupon target | Raw proposal coordinates match realized ratio coordinates | `p_win=Theta(r^-5/3(log r)^-3/2)`; miss `<=exp(-kp_win)` | `r,k,a_*,b_*` and finite-small-`r` bridge exposed | Window maps to the exact `R_0,S_0` entry | Finite tail/coupon union | `E_sm -> E_win -> E_cov` | Coverage -> G3,G5,G10 | Miss is run failure; entry denominator positive | step-local | None |
| `E_RS,E_chart,E_cert` | Finite recurrence and certification | Old-state Jacobi expansion and Banach self-map | G1/G2 -> `step_004` | Exact simultaneous map and stored state | Same old-state/projective convention | Displayed `R,S,a` recurrences; `Lip<1/4`; geometric `zeta` | Denominator and horizon margins explicit | Stored state compared to its own look-ahead | Persistent `q` finite-horizon; displacement contractive | Coverage -> chart -> certificate | `step_004` -> G4/G5 | First update `>=31/32`; zero contraction fails run | step-local | None |
| `E_cert_eq,E_cert_tail` | Same-state algebra and support ledger | Multilinearity, vector Hadamard expansion, scalar cancellation | `E_cert,E_sm` -> `step_004b` | Exact raw/barred same-state interface | Signs and barred copies preserve rank-one terms | `eta_G,eta_N,eta_C`, retained floor, tail/profile bounds | LOW/singleton/multi/straddle branches exposed | Target transfer deferred and same-state residual explicit | Unknown-sign residual charged once on finite support | Certificate -> ledger -> consumers | `step_004b` -> G5/G6 | Transient residual retained; stationary residual zero | step-local | None |
| `E_support_wt,E_cluster,E_gauge` | Score/graph/sign structure | Weighted profile and strict margins | G4 plus coverage -> `step_005` | Exact observable filter and graph | Realized weights/correlations and product-one signs | `1.01s_mix<0.794<0.85s_-`; graph gaps | Scores, tails, thresholds, permutation exposed | Representatives are same realized tensor objects | Finite filter/graph; no recurrence | Ledger before classifier | `step_005` -> G6/G7 | Multi-support, LOW, zero/negative score, ties tested | step-local | None |
| `E_col,E_row` | Selected target-dual small gain | Dual basis, per-entry residual, root/row absorption | G4/G5 -> `step_006` | Exact induced row/column outputs | Same target dual and coefficients | `chi<=32omega`; per-entry `2tau_r`; row self coefficient `<1/8` | Denominator and finite `r tau_r` budgets exposed | Residual transferred directly to realized basis | Sign-unknown forcing charged once; column before row | G5 -> column -> residual -> row | `step_006` -> G7 | Large root excluded; q-zero transient charged | step-local | None |
| `E_best,E_quotient,B+N` | Same-target initialization/projector bridge | Tensor expansion, relative amplitudes, exact projector | G5/G6/G1 -> `step_007` | Exact quotient and Frobenius target | Product-one gauge preserves represented tensor | `512omega`; `B-I<=48omega`; `G^TN=0`; columns `N<=tau_r` | Scalar/direction/row/column/perpendicular fields exposed | Actual selected initialization to exact realized target | One finite expansion | G6 -> G7 -> G8 | `step_007` -> `step_007b` | Exact component `B=I,N=0`; zero score excluded | step-local | None |
| `E_pair_entry,E_parallel_entry` | First-sweep inverse and generated span entry | Projector Gram expansion, target floor, exact unfolding range | G1/G7 -> `step_007b` | Exact held designs and setting ALS outputs | Same cyclic order, factors, zero padding, and gauge | `beta_perp`; `3072/3456/4096`; `N_U^+=N_V^+=N_W^+=0` | Mixed `tau_r^2`, coherent `r tau_r^4`, amplitudes, inverse margins exposed | Outputs are exact `G_MZ_M`, not projected surrogates | Finite unknown-sign defects disappear mode by mode | `B+N -> step_007b -> E_parallel_entry` | Entry -> `step_008,009` | Shared-perpendicular test charged; exact target stationary | step-local | None |
| `E_basin_parallel` / cyclic contraction | All-sweep invariant and convergence producer | Intended target-span normal equations, pair floor, quotient kernel | `E_sm,E_parallel_entry` -> `step_008` | Sources support local analysis but not the stated block-map interface | Incompatible/ambiguous: full-state `norm(.)_Q` versus coordinate output | Full-state per-block `<1/16` is false; coordinate recurrence and gauge transfer absent | Pair floor, tube radius, and zero perpendicular field do not define the needed map/codomain | Coordinate-to-full-cycle transfer is missing | Perpendicular forcing zero, but held-block difference persists per block; no valid geometric budget | Entry path is legal; contraction producer is incomplete | Intended `step_008` -> `step_009` edge invalid | Two close span states differing only in a held block give ratio one | sketch/interface defect | /proof-sketch |
| `E_stop,E_restart` | Accuracy/confidence/runtime closure | Intended cyclic contraction and independent trials | Intended G9 plus coverage -> `step_009,010` | Restart source valid only after per-run convergence | Original rank-`k` residual matches target | Stopping and restart formulas stated, contraction term unsupported | One-sweep offset and operation phases exposed | Same Frobenius target, but no basin producer | Intended geometric sum; currently no recurrence | Structural order legal, producer missing | `E_basin_parallel -> E_stop -> E_restart` blocked | Exact target stops; general entry cannot be iterated | sketch/interface defect (inherited) | /proof-sketch |
| Orthogonal baseline | Exact/noiseless map and zero limit | Direct exact Jacobi/ALS substitution | Deterministic specialization -> `step_011` | Same inherited baseline conclusion | Same algorithm, factors, metric; rho-zero not probabilistic | Ratio squaring; `B=I,N=0,beta=0`; exact fixed point | Finite transient charges retained | Produced and target tensors coincide at stationarity | No stationary accumulation | Direct baseline path | `step_011` -> final specialization | Exact first update/stationary trace pass; does not prove neighborhood contraction | step-local | None |

## Hard-Step Localization Audit

The obligations in G1--G8 remain hard but `step-local` at diagnostic
granularity: their mechanism sources, exact setting conventions, raw controls,
defect splits, quantitative margins, entry/boundary cases, and consumers are
fixed under the accepted theorem contract. The exact orthogonal baseline is
also `step-local`.

G9 is not step-local. A future proof worker cannot decide silently whether
`Phi_M` is full-state or coordinate-valued, invent a coordinate seminorm,
change the gauge timing, and create the missing U/V/W-to-full-cycle recurrence
while claiming to prove the unchanged sketch row. Those choices alter the
theorem-critical direct-derivation interface, closure mechanism, norm bridge,
and generated-output producer. G10 is a `sketch/interface defect` by
inheritance because it consumes G9. No issue is a dependency-proof defect or
an `idea/theorem-contract defect`.

## Early Idea-Failure Screen

- **Contract contradiction:** none. The current setting permits exact
  target-span range preservation and a local cyclic analysis; the attempted
  theorem does not require a property forbidden by the primitives.
- **Missing mechanism/interface:** the target pair floor and zero
  perpendicular forcing are genuine sources, but they do not define the
  disputed map or composition. The missing item is a coordinate/full-sweep
  bridge, not a new theorem-facing assumption.
- **Source-convention and object-target stress:** `norm(.)_Q` is full-state,
  whereas the only plausible subunit contraction is coordinate-output. A
  full-state one-block interpretation fails on a held-block difference; a
  coordinate interpretation needs an explicit same-cycle and gauge bridge.
- **Residual-to-target stress:** the first-sweep output is the exact ALS state
  in the exact target span, so there is no population/whitening surrogate.
  The missing residual transfer is specifically coordinate error to the
  post-rebalance full quotient state.
- **Persistent-defect/accumulation stress:** perpendicular forcing is exactly
  zero after entry, but zero additive forcing does not imply contraction. No
  geometric all-sweep budget exists until a valid full-cycle recurrence is
  produced.
- **Entry and boundary stress:** the actual entry is noncircular and the exact
  target is stationary. Nevertheless two arbitrarily close allowed
  target-span states differing in a held block defeat the claimed full
  one-block coefficient below one. Center stationarity does not remove that
  boundary test.
- **Generated-condition and flow:** `E_parallel_entry` has a legal producer;
  `E_basin_parallel` does not. Later stopping or assembly cannot create it.
- **Dependence and mode:** a repair can retain rank, confidence, horizon,
  metric, and runtime variables, but must rerun any changed numerical cyclic
  loss and stopping formula explicitly.
- **Baseline invariance:** the orthogonal stationary zero-residual conclusion
  remains valid and must be preserved; it neither fails the idea nor repairs
  neighborhood contraction.
- **Same-setting repair plausibility:** define coordinate maps/seminorms and
  their sequential Gauss--Seidel plus final-gauge recurrence, or prove a
  direct full-sweep estimate. Both are target-preserving sketch repairs. No
  primitive assumption, algorithm/model/procedure, theorem scope/mode/metric,
  exposed dependence, success criterion, mechanism source, or conclusion
  must change. Therefore `IDEA_FAIL` is not justified.

## Review Rationale

REVISE_SKETCH with `/proof-sketch` is the smallest sound route. The frozen
global diagnostic is detailed and correctly classifies itself as
`SKETCH_BLOCKED`; another diagnostic rewrite would only restate the same
counterexample. The accepted sketch review missed a real object/norm mismatch:
a full one-block state map retains held blocks and cannot contract by less
than one, while a coordinate-output reading lacks the seminorm, sequential
recurrence, and final gauge transfer needed to export a full-cycle basin.

The obstruction is nevertheless repairable within the current idea. Exact
target-span entry, pair positivity, quotient kernel, and unfolding range are
already source-adequate ingredients for a revised coordinate or direct
full-sweep interface. Since that repair preserves every theorem-contract
component and the exact baseline, `/subagent-idea-generator` would be too
deep; since it changes the accepted sketch mechanism and flow,
`/global-proof` would be too shallow.
