# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_5`
- Sketch attempt: 10
- Retry mode in the sketch: `revise_sketch`
- Triggering review:
  `proof_history/sketch_009/global_proof_review.md`
- Frozen sketch SHA-256:
  `fa568aef0c2c12e5d6dfcf1dfcbdd1cdc51ef501bec567a953f338f4d8def321`
- Reviewed artifacts: `setting.md`, `idea.md`, `proof_sketch.md`,
  `technical_survey.md`, `proof_tracker.md`, the accepted attempt-9 sketch
  review, and the attempt-9 global-proof review.
- Proposal: stationarity-certified simultaneous Jacobi proposals,
  same-state certification, weighted observable clustering, a generated
  first cyclic sweep into the exact target span, and quotient-coordinate
  cyclic ALS refinement.
- Progress type: `conditional`
- Target rank: `U(r) = Theta(r^(5/3) (log r)^(5/2))`
- Attempt-10 repair credited: the false full-state one-block contraction is
  removed. Held-input coordinate-output maps, exact scale cancellation, the
  sequential U/V/W direction recurrence, and a proposed final gauge transfer
  are now exposed.

## Sketch Viability Score

7

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The sketch preserves the exact conditional target in
  `setting.md`: the source asymmetric rank-`k` objective, the stated
  SC-JEP-ALS procedure, `U(r)=Theta(r^(5/3)(log r)^(5/2))`, arbitrary
  relative Frobenius accuracy, nested smoothing and initialization
  probabilities, polynomial runtime, and the exact orthogonal equal-weight
  baseline. No new incoherence, target-span initialization, or generated
  basin condition is made theorem-facing.
- Dependency audit: The producer graph through `E_parallel_entry` is acyclic
  and noncircular. In particular, `step_007b` retains the mixed and coherent
  perpendicular pair-Gram terms and proves one actual cyclic sweep enters the
  exact target span before `step_008` consumes target-span membership. The
  first incomplete edge is internal to `step_008`, from its three historical
  coordinate outputs to one legal common-product full-sweep quotient state.
- High-risk coverage: Static smoothing, rare-window coverage, finite Jacobi
  certification, the all-certified tail ledger, weighted score separation,
  row/column small gain, best-scalar transfer, first-sweep pair conditioning,
  exact range entry, target-span invariance, stopping, restart conversion, and
  baseline preservation all have plausible sources and interfaces. The
  quotient direction maps now avoid the previous held-block counterexample,
  but the shared product-coordinate refresh and final full-state assembly are
  not defined.
- Explicit-rate coverage: All exposed structural, sampling, horizon,
  regularity, numerical, accuracy, confidence, and runtime variables remain
  recorded. The arithmetic `ell=8q_*+32rho_ALS<1/16` and
  `3ell<3/16<1/4` is numerically valid. The advertised full-sweep factor is
  nevertheless not yet attached to a well-defined output state, so
  `step_009` cannot consume it until the interface is repaired and the same
  constants are rechecked.
- Assumption and citation plausibility: Only the stable primitive
  `assump:*` conditions are theorem-facing. Uschmajew DOI
  `10.1137/110843587`, Assumption 1, Lemma 3.2, and Theorems 3.3 and 3.5 are
  correctly limited to quotient and block-Gauss-Seidel interpretation. The
  numerical radius, exact scale cancellation, coordinate recurrence, shared
  product update, and full-sweep factor remain direct branch obligations.

## Early Obstruction Audit

- Limiting-case stress: The archived shared-perpendicular construction no
  longer lies in the consumed contraction domain; `step_007b` retains
  `beta_perp=2(1+q_*)(1+48omega)^2 tau_r^2+r tau_r^4`, checks all three
  inverse branches, and removes perpendicular fields in one actual sweep.
  At the exact orthogonal target, every direction output is exact and the
  represented product is reset to `lambda`. The remaining break appears for
  two nearby nonstationary quotient states: after the U block, canonical
  balancing replaces the single common product coordinate in all three modes
  by `s_U^+`; after V it replaces it by `s_V^+`; after W the final state must
  use `s_W^+`. The frozen composition instead retains mode tuples carrying
  these different historical values and does not specify which one defines
  the completed quotient state.
- Theorem-critical bridge support: The formula
  `X_M^+=T_(M)K_dir J^(-1)R_gamma^(-2)` gives exact held-scale cancellation.
  It plausibly sources a newly solved direction and represented-product
  output from the two held directions. It does not by itself define the
  transition of the one shared `s` field across the unchanged direction
  records, nor does it turn three separately timestamped `(C_M,s_M^+)`
  outputs into the literal post-W ALS quotient orbit.
- Exported-interface feasibility: The raw controls through
  `E_parallel_entry` are adequate. The intended `E_basin_parallel` export is
  not: `U_M^q` has codomain `(C_M^out,s^out)`, while `Psi^q` passes the U, V,
  and W outputs, with generally different `s^out`, to `G_eq`. A product-one
  gauge cannot change the represented product and therefore cannot reconcile
  three inconsistent represented-product values. The sketch must define the
  global state update after each block and assemble the final state with one
  specified product coordinate.
- Theorem-critical mechanism witness gate: Passed through target-span entry;
  not passed for the full-sweep quotient output. Pair positivity, exact range
  preservation, direction/pair-Gram defects, and zero perpendicular forcing
  are concrete. The missing shared-state transition prevents the stated
  gauge transfer from being a source-adequate witness for the full-state
  contraction.
- Entry-state trace stress: The generated entry `e^1` has zero perpendicular
  fields and lies below `rho_ALS/3`, so all direction solves and inverse
  branches are active. The first contracted U update has a legal output
  `(C_U^+,s_U^+)`; the trace becomes underspecified when the unchanged V and
  W direction records must be paired with that new common `s_U^+` before the
  V update. At the exact fixed point all three historical values equal zero,
  so the ambiguity is invisible there and baseline stationarity alone cannot
  discharge the neighborhood claim.
- Obligation locality classification: `E_sm`, window/coverage, Jacobi
  certification, all-certified classification, selected-state bridges,
  `E_pair_entry`, and `E_parallel_entry` are `step-local`. Exact held-scale
  cancellation and the direction-only Lipschitz estimates in `step_008` are
  `step-local`. The common-`s` refresh, literal-orbit composition, definition
  of final `d_Q`, and `G_eq` transfer are a `sketch/interface defect`.
  Stopping and restart are step-local only after that repaired producer.
- Noncircular closure gate: Entry and target-span invariance are noncircular.
  The all-sweep recurrence is not circularly assumed, but it lacks a legal
  full-state producer because the final shared amplitude coordinate is
  unspecified. It may not be consumed by `step_009` in the current attempt.
- Mechanism-source and boundary stress: The target pair-Gram floor and exact
  unfolding range source the direction updates; exact scale equivariance
  removes held raw amplitudes. The uncontrolled item is not a raw scale but
  the identity of the gauge-invariant represented-product state after each
  sequential block. Product-one balancing preserves rather than selects that
  invariant, so the final value must be fixed by the block chronology.
- Generated-output flow: All flow edges through `E_parallel_entry` are legal.
  The edge
  `coordinate outputs -> G_eq -> Psi^q -> E_basin_parallel` is incomplete.
  Consequently the downstream edges to `E_stop` and `E_restart` remain
  conditional on a same-setting sketch repair.
- Source-to-claim adequacy: Direct normal-equation algebra supports the
  scale-cancellation formula and makes the output direction and represented
  product independent of held raw scales. It does not support treating
  `s_U^+`, `s_V^+`, and `s_W^+` as three simultaneous coordinates of one
  quotient state. A valid wrapper must overwrite the shared field after each
  block or define maps on direction pairs with a separate global product
  register, then identify the wrapper with the literal cyclic ALS orbit.
- Residual-to-target adequacy: `E_parallel_entry` and the target-span maps use
  the same realized factors, target spans, componentwise scaling class, and
  original rank-`k` Frobenius loss. Once a legal final state
  `(C_U^+,C_V^+,C_W^+,s_W^+)` is produced, the stated balanced-chart
  comparison is a plausible same-target bridge. In the frozen sketch the
  residual comparison is deferred because the argument of `d_Q` is not yet a
  single quotient state.
- Baseline invariance audit: The deterministic rho-zero orthogonal
  equal-weight specialization is preserved. At the exact stationary state,
  every block returns zero direction and product error, `G_eq` is stationary,
  and the residual is exactly zero for every positive `epsilon`. Finite
  certified transients retain their certificate and first-sweep charges. No
  positive error floor is introduced.
- Scope-accumulation compatibility: The first-sweep perpendicular defects are
  finite and vanish mode by mode. On the intended target-span tube there is
  zero additive forcing, and a valid `d_Q(e^{s+1},0)<=3ell d_Q(e^s,0)` would
  provide a geometric budget. That budget cannot start until the shared-`s`
  refresh and final output are defined; no separate persistent defect needs a
  new theorem assumption.
- Scope and dependence consistency: The repair can preserve `q_*`,
  `rho_ALS`, rank, probability modes, target metric, and theorem scope. It
  must re-evaluate only the coordinate-to-full-state factor and the stopping
  constant if the explicit assembly changes the current factor three.
- Generated-condition provenance: `E_parallel_entry` is derived from the
  actual selected trajectory. `E_basin_parallel` is assigned to `step_008`
  but its final output is not fully defined, so it is not yet a legal derived
  condition.
- Citation and tool applicability: The external ALS source has a stable
  identity, compatible active rank-`r` quotient object, and correctly stated
  non-output boundaries. It does not supply the missing branch-specific
  refresh rule or numerical full-sweep wrapper. The repair remains a direct
  current-notation derivation.
- Same-setting repair plausibility: Define the canonical full state as
  `(C_U,C_V,C_W,s)`. After U, overwrite the shared register in all held
  records with `s_U^+`; after V overwrite it with `s_V^+`; after W assemble
  `(C_U^+,C_V^+,C_W^+,s_W^+)`. Equivalently, make each held-input map depend
  only on direction coordinates and keep one explicit global product
  register. Then prove that this refreshed sequence is quotient-equivalent to
  the literal ALS sequence and recompute `d_Q` from the final common field.
- Target-preserving bridge-repair gate: Route to `/proof-sketch`. The repair
  changes no primitive assumption, algorithm, rank, theorem scope, metric,
  exposed dependence, success criterion, or baseline conclusion. It is too
  small and too clearly same-setting to justify `IDEA_FAIL`.
- High-risk obligation classes: generated target-span membership, structural
  pair nondegeneracy, quotient object identity, scale equivariance, sequential
  recurrence, full-sweep contraction, all-time basin invariance, stopping,
  confidence conversion, and exact-limit invariance were all audited. Only
  the shared-product full-sweep interface blocks acceptance.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | Static geometry and pair nondegeneracy | Gaussian concentration, normalization, Schur/Gershgorin | Primitive smoothing assumptions -> `step_001` | Exact realized norms, Gram rows, weights, and pair floor | Same normalized realized factors | Separate linear, quadratic, normalization margins; pair floor `1-q_*^2` | All structural and confidence variables and union factors exposed | Produced factors are the consumed target factors | Finite static union; no accumulation | Primitives -> `step_001` | `step_001` -> proposal and ALS consumers | Orthogonal zero-perturbation limit exact; singular boundary excluded | step-local | None |
| `E_win,E_cov` | Rare activation and rank rate | Conditional Gaussian tails and independent slots | `E_sm` plus initialization primitive -> `step_002,003` | Exact window, competitor event, and coupon claim | Raw coordinates match setting ratios | `p_win=Theta(r^-5/3(log r)^-3/2)` and miss `<=exp(-kp_win)` | `r,k,a_*,b_*` and finite-small-r route exposed | Window maps to exact `R_0,S_0` entry | Finite tail/coupon union | `E_sm -> E_win -> E_cov` | Coverage -> trajectory and restart | Miss is run failure; denominators activated | step-local | None |
| `E_RS,E_chart,E_cert` | Finite recurrence and same-state certification | Old-state Jacobi expansion and Banach chart | Coverage and geometry -> `step_004` | Exact simultaneous setting map | Old-state/projective convention preserved | Displayed `R,S,a` recurrences, `Lip<1/4`, geometric `zeta` | Denominator and finite-horizon margins exposed | Stored state is compared to its own look-ahead only | Persistent q forcing over finite horizon; displacement contracts | Coverage -> chart -> certificate | `step_004` -> classifier/bridge | First update, zero contraction, q-zero transient tested | step-local | None |
| `E_cert_eq,E_cert_tail` | Same-state algebra and all-certified ledger | Multilinearity, vector Hadamard expansion, scalar cancellation | `E_cert,E_sm` -> `step_004b` | Exact raw/barred equation and weighted tail fields | Right-side sign and proof-only bars match setting objects | `eta_G,eta_N,eta_C`, retained floor, ratio/profile/tail bounds | LOW, singleton, multi, straddle and finite norm conversion exposed | Same realized basis and score; no target surrogate | Sign-unknown residual charged once on finite support | Certificate -> ledger before labels | `step_004b` -> `step_005,006` | Transient residual retained; stationary residual zero | step-local | None |
| `E_support_wt,E_cluster,E_gauge` | Weighted classifier, observable clusters, sign chart | Weighted profile and strict numerical margins | Ledger plus coverage -> `step_005` | Exact score/filter/graph outputs | Realized weights and product-preserving signs | `1.01s_mix<0.794<0.85s_-` and graph gaps | Scores, tails, thresholds, permutation exposed | Representatives are the actual selected tensor terms | Finite filter/graph and discrete orientation | Ledger -> classifier -> cluster/gauge | `step_005` -> selected bridges | Multi-support, LOW, zero/negative score, ties tested | step-local | None |
| `E_col,E_row` | Selected coefficient small gain | Dual basis, per-entry residual, root/row absorption | Same-state selected equation -> `step_006` | Exact row/column output class | Same target dual and coefficient convention | Small root `chi<=32omega`; per-entry `2tau_r`; row coefficient `<1/8` | Denominator and `r tau_r` budgets exposed | Residual transfers directly to realized target basis | Unknown-sign forcing charged once; column before row | Classifier -> column -> residual -> row | `step_006` -> `step_007` | q-zero transient charged; exact state zero | step-local | None |
| `E_best,E_quotient` | Same-target initialization bridge | Tensor expansion, relative amplitudes, exact projector | Selected controls -> `step_007` | Exact quotient/Frobenius target | Product-one gauge preserves each rank-one term | `norm(e)_Q<=512omega`; `B-I<=48omega`; `G^TN=0`; `N` columns `<=tau_r` | Direction, row/column, product, and perpendicular fields exposed | Actual selected initialization to exact realized target | One finite expansion | `step_006 -> step_007` | Outputs -> `step_007b` | Exact component gives `B=I,N=0` | step-local | None |
| `E_pair_entry,E_parallel_entry` | First-sweep inverse and generated span entry | Projector Gram expansion and exact unfolding range | `E_sm,E_quotient` -> `step_007b` | Exact held designs and exact ALS outputs | Same cyclic order, factors, zero padding, and gauge | `beta_perp`; `3072/3456/4096`; all `N_M^+=0` | Mixed `tau_r^2`, coherent `r tau_r^4`, amplitudes, and inverse margins exposed | Outputs are exact `G_MZ_M`, not projections | Finite perpendicular defects disappear mode by mode | Selected state -> pair control -> entry | `step_007b` -> `step_008,009` | Shared-perpendicular and exact target tests pass | step-local | None |
| Held-input quotient maps | Coordinate direction/product outputs | Exact scale-equivariant normal equations | `E_parallel_entry,E_sm` -> `step_008` | Formula matches one newly solved direction and product output | Canonical held factors and setting solve are compatible | `gamma_M^out=||T_(M)K_dirJ^-1(:,j)||`; coordinate Lipschitz `<=ell D_h` | Raw held scales cancel exactly; direction defects and pair inverse exposed | Each block output concerns the exact ALS quotient orbit | No raw-amplitude forcing; product is reset by the solve | Entry -> block maps | Intended maps feed cyclic composition | Orthogonal target output exact; pure rescaling invisible | step-local | None |
| Shared `s` refresh and `Psi^q` assembly | Full-sweep quotient state and contraction producer | Intended canonical B after each block plus final `G_eq` | Intended three held-input maps -> `step_008` | Incomplete: three historical product outputs are not one state | Incompatible as written: `s` is common, but mode tuples retain `s_U^+,s_V^+,s_W^+` | Direction bounds are stated; no overwrite rule or final `s=s_W^+` identity is stated | `G_eq` receives no legal single represented-product input; product-one gauge cannot reconcile inconsistent products | Final object cannot yet be compared in `d_Q` to the exact target | Zero additive forcing is intended, but geometric recurrence has no defined state transition | Entry is legal; internal producer edge fails | Intended `step_008 -> step_009` edge blocked | Exact fixed point hides ambiguity; nearby states expose it | sketch/interface defect | `/proof-sketch` |
| `E_stop` | Arbitrary-accuracy stopping | Intended repaired `Psi^q` contraction and chart/Frobenius comparison | `E_parallel_entry,E_basin_parallel` -> `step_009` | Conditional on missing full-state producer | Original rank-k residual convention is correct | Proposed `m>=1+ceil(log(8kappa_0^2/epsilon)/log4)` | First-sweep offset and `C_res` exposed | Same original Frobenius metric | Finite geometric horizon once producer exists | Must follow repaired `step_008` | `step_009` -> theorem/restart | Exact baseline stops immediately | sketch/interface defect inherited from `step_008` | `/proof-sketch` |
| `E_restart` | Conditional confidence and runtime | Independent full-run trials | `E_cov,E_stop` -> `step_010` | Correct after per-run convergence | Same tensor and original residual selection | `(1-p_0)^J<=delta_init` and explicit cost | Rank and confidence remain separated | Returned output uses original rank-k loss | Finite independent failures | Coverage and stopping precede restart | `step_010` -> theorem | `J=1` boundary handled | step-local conditional on repaired `E_stop` | `/proof-sketch` |
| Orthogonal equal-weight baseline | Exact/no-floor specialization | Direct Jacobi map and exact CP normal equations | Deterministic rho-zero clause -> `step_011` | Exact match | No probability claim at rho zero | `(A+,B+,C+)=(BC,AC,AB)`; exact ALS fixed point | Same target factors and product gauge | Produced tensor equals consumed tensor | Stationary; no accumulation | Direct specialization | `step_011` -> theorem baseline | Finite transient distinguished from stationary state | step-local | None |

## Blocking Issues

1. Location: `proof_sketch.md` lines 1217-1239 and 1278-1307,
   `step_008` gauge-fixed coordinates, sequential recurrence, and `Psi^q`
   definition. Defect: `s=log(gamma/lambda)` is declared to be one common
   gauge-invariant product coordinate, but after the U, V, and W block maps
   the displayed tuples carry generally different historical values
   `s_U^+`, `s_V^+`, and `s_W^+`. The sketch neither refreshes the unchanged
   direction records with the new common `s` after each rebalance nor states
   that the final full state is
   `(C_U^+,C_V^+,C_W^+,s_W^+)`. Passing the three inconsistent tuples to
   `G_eq` does not fix this: a product-one gauge preserves represented
   product. Downstream effect: `Psi^q(e)` is not yet identified with the
   literal post-sweep ALS quotient orbit, the argument of final `d_Q` is not
   well-defined, and `E_basin_parallel`, stopping, and runtime have no legal
   contraction producer. Smallest repair: `/proof-sketch`, localized to the
   `step_008` state and composition interface.

## Required Repair Bundle

1. In `step_008`, define one canonical full quotient state
   `e=(C_U,C_V,C_W,s)` and an explicit chronological refresh rule. After U,
   form `(C_U^+,C_V,C_W,s_U^+)`; after V, form
   `(C_U^+,C_V^+,C_W,s_V^+)`; after W, form
   `(C_U^+,C_V^+,C_W^+,s_W^+)`. An equivalent direction-only held-input map
   with one separate global product register is acceptable.
2. Prove that the refreshed sequence is quotient-equivalent to the literal
   cyclic ALS sequence under exact scale equivariance. State explicitly that
   historical U/V product outputs are overwritten and that no product-one
   gauge is being asked to change represented product.
3. Define the full-state `d_Q` on the final common-`s` state, rerun the
   sequential Lipschitz calculation and final `G_eq` transfer, and restate the
   resulting numerical full-sweep factor. If it remains `3ell`, retain the
   stopping formula; otherwise propagate the changed factor through
   `E_basin_parallel`, `E_stop`, the exported-interface table, and generated
   output flow.

Target-preserving repair check: this bundle changes only a same-setting
coordinate/interface definition. The exact cancellation formula already
shows why the direction estimates can survive. No primitive assumption,
algorithmic update, target span, quotient metric, rank rate, probability mode,
success criterion, or baseline conclusion needs to change.

## Review Rationale

`REVISE_SKETCH` is the deepest warranted status. Attempt 10 removes the false
full-state one-block contraction and supplies a plausible direction-level
coordinate mechanism with exact raw-scale cancellation. The remaining defect
is narrower but theorem-critical: a full-sweep contraction must act on one
well-defined quotient state, and the frozen sketch does not specify how its
single shared product coordinate advances through the three block outputs.
That is a roadmap/interface repair, not a local proof-detail omission and not
an idea-level obstruction.
