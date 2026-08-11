# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_5`
- Sketch attempt: `1`
- Proposal: stationarity-certified Jacobi extreme-start proposal with same-state carry-over and active cyclic ALS
- Progress type: `conditional`
- Target rank: `U(r) = Theta(r^(5/3) (log r)^(5/2))`
- Reviewed files: `setting.md`, `idea.md`, `proof_sketch.md`,
  `proof_tracker.md`, `technical_survey.md`, and the attempt-10 failure audit
  for `perspective_1/idea_4`.
- Lineage note: the stored-state certificate does remove the explicit
  pre-update/post-update coefficient mismatch that invalidated idea 4.  This
  review treats that repair as real, but does not infer the downstream bridges
  that the sketch has not yet exported.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The rank, conditional quantifiers, original rank-k CP
  objective, arbitrary relative Frobenius accuracy, restart confidence, and
  exact orthogonal baseline are preserved.  The proposed certificate is an
  allowed algorithmic/procedural refinement of the conditional branch.
- Dependency audit: The listed graph is acyclic at the table level, but
  `step_005` cites the certified same-state equation as its support
  classification source while the only explicit producer of that equation is
  `step_006`, which depends on `step_005`.  A per-state certificate equation or
  a separate pre-cluster producer is missing.
- High-risk coverage: Static smoothing, window tails, coupon coverage, and the
  q=0 map are covered in outline.  Certification-to-Euclidean-chart transfer,
  all-certified-state support classification, sign-compatible coefficient
  closure, the column bootstrap, row/column residual accounting, and the
  numeric cyclic ALS interface remain asserted rather than exported with
  sufficient controls.
- Explicit-rate coverage: Exposed variables and the logarithmic proposal,
  accuracy, and restart horizons are named.  Several rate-bearing constants
  (`C_chart`, `C_best`, the score-gap constants, and the ALS inverse bounds)
  are placeholders, so the displayed `tau_r`, tube radius, and public
  probability/rate interfaces cannot yet be checked from the sketch.
- Assumption and citation plausibility: The primitive assumptions are cited by
  stable ids and the Uschmajew source is identified with DOI and theorem
  labels.  That source is correctly limited to the quotient/local-ALS role;
  it does not supply the branch's numeric basin radius, zero-padded reduction,
  or random-entry claims, all of which need explicit current-notation bridges.

## Early Obstruction Audit

- Limiting-case stress: In the orthogonal equal-weight case the exact map is
  `(BC, AC, AB)` and an exact component fixed point has zero certificate
  residual, so the intended baseline is plausible.  A finite q=0 transient
  nevertheless has nonzero `R_M`; the sketch correctly says this is retained
  in the certificate residual.  The sign patterns with negative component
  score and the support-two orthogonal fixed points also pass only after a
  columnwise gauge and a quantitative score gap.  The latter gap and the
  gauge conditions are not fully exported.  The formal setting states
  `rho > 0`, while the baseline audit invokes `rho=0`; the baseline must be
  declared as an explicit limiting/specialization branch.
- Theorem-critical bridge support: `E_sm`, `E_win`, and the finite coupon
  calculation have plausible primitive/direct sources.  `E_cert` needs a
  fixed point in a named projective chart, a chart norm equivalence, and a
  bound on the post-burn displacement before `L_cert` can be selected.
  `E_cluster` needs a classification theorem for every certified high-score
  state, not only for covered trajectories.  `E_col`, `E_row`, `E_best`, and
  `E_basin` each have a proposed mechanism, but their exported quantitative
  interfaces are not yet established.
- Exported-interface feasibility: The tables export `E_cluster` but not the
  numerical per-mode chart radius, denominator lower bound, or sign gauge
  consumed by `step_006`.  The table exports `E_col`/`E_row` without a legal
  per-state certificate producer before `step_005` and without a solved
  column-bootstrap inequality.  `E_best` and `E_basin` use unspecified
  constants and do not show the residual decomposition at the target scale.
  These are sketch/interface defects, not idea-level defects.
- Theorem-critical mechanism witness gate: The witnesses for static geometry
  and the simultaneous ratio recurrence identify sources and boundary cases.
  The witnesses for projective certification, support classification, the
  column bootstrap, and cyclic ALS contraction give labels and intended
  inequalities but omit at least one of the required raw-control-to-output
  paths or a numerical dominance calculation.  They therefore do not qualify
  as `step-local` yet.
- Entry-state trace stress: The window event gives `R_0 <= 19/20`, and the
  simultaneous first update is well defined under the displayed denominator
  bound.  The sketch does not trace a concrete state norm from `R,S` to the
  projective residual, nor does it separate the trajectory chart error from
  the later selected-coefficient error `chi`.  At q=0 the sign/projective
  quotient and the finite transient need to be traced explicitly before the
  certificate is exported.
- Obligation locality classification: `step_001` through `step_003`, the
  restart arithmetic, and the direct exact-baseline substitution are
  step-local in outline.  The missing pre-cluster certificate producer,
  chart-to-cluster interface, sign gauge, `E_col`/`E_row` bootstrap, best
  scalar transfer, and numeric cyclic composition are
  `sketch/interface defect`.  No current obstruction requires an
  `idea/theorem-contract defect`.
- Noncircular closure gate: The intended order for the selected bridge is
  `E_cluster -> E_col -> E_row -> E_best -> E_basin`, which is sound once the
  interfaces exist.  As written, the support-classification source is the
  same-state equation later assigned to `step_006`; this is a genuine
  producer cycle.  The trajectory certification also refers to a generic
  chart Lipschitz constant without an independently produced chart radius.
- Mechanism-source and boundary stress: The same-state certificate is a valid
  direct source in principle, and the q=0 stationary state activates it.  A
  certificate sign is discrete; the claim that all three signs equal
  `sign(theta)` requires a lower bound on `|theta|` before the gauge is used.
  The support-two fixed-point boundary and the `theta=0` branch are not
  specified.  The Khatri-Rao floor is an upper/lower source for the ALS
  inverse, but not by itself a numeric cyclic contraction proof.
- Generated-output flow: `E_sm -> E_win -> E_cov -> E_RS -> E_cert` is
  forward.  The flow omits a named `E_chart`/per-state certificate output and
  a sign/denominator interface between `step_004`, `step_005`, and `step_006`.
  Consequently the claimed `E_col` and `E_row` producer path is incomplete
  at the exact point where the prior idea failed.  The final `E_stop` and
  `E_restart` consumers are legal only after these outputs are repaired.
- Source-to-claim adequacy: Gaussian concentration, Gershgorin/Schur
  products, Gaussian regression, and the old-state Jacobi algebra match their
  stated claim classes.  The direct dual-basis equation is algebraically
  plausible, but its source convention must state the oriented stored columns,
  the exact `D_M` normalization, and the lower/upper lambda bounds.  The cited
  Uschmajew result is a qualitative quotient/local-ALS source and cannot be
  used as the unproved numeric radius or contraction constant.
- Residual-to-target adequacy: The produced object is the stored unit-state
  and the consumed target is the realized factor basis, so no surrogate tensor
  is intended.  However, `zeta <= tau_r` controls distance to the state's own
  Jacobi image, not distance to a target factor.  The target-direction bias
  (`O(q_real^2)`), certificate residual (`O(r tau_r)`), scalar error, and
  pair-Gram terms must be separated and each dominated before claiming the
  `C_best(q_*^2+r tau_r)` interface.  The phrase that the target-orthogonal
  component is bounded by `tau_r` is not valid without this split.
- Baseline invariance audit: The inherited conclusion is the exact
  orthogonal/equal-weight map, exact CP representation, zero stationary
  certificate residual, and arbitrary-accuracy active ALS.  The direct map
  and fixed-point trace preserve it; a finite transient is not incorrectly
  declared exact.  The review requires an explicit `rho=0` or limiting
  specialization and the same sign/gauge bridge in `step_011`.
- Scope-accumulation compatibility: The ratio recurrence is finite-horizon
  and can use a dissipative/squaring mechanism.  The certificate residual is
  an additive finite budget `r tau_r`, and the proposed row inequality has a
  small-gain absorption form.  The sketch must expose the one-step column
  bootstrap and row absorption, including the sign-unknown residual and its
  finite budget; merely naming a small gain is insufficient for acceptance.
- Scope and dependence consistency: Rank, proposal horizon, `tau_r`,
  accuracy, and confidence are exposed and rank does not absorb
  `delta_init`.  The constants needed to make the score gap, `31/32` diagonal
  margin, `C_best(q_*^2+r tau_r) <= rho_ALS/4`, and the `1/4` cyclic map bound
  are not fixed or bounded in the sketch.
- Generated-condition provenance: `E_sm`, `E_win`, `E_cov`, `E_RS`, and
  `E_cert` are intended derived events.  `E_chart`, the per-state normal
  equation, sign consistency, `E_col`, `E_row`, and `E_best` are also derived
  but lack complete producer/consumer records.  None should be promoted to a
  primitive assumption.
- Citation and tool applicability: Uschmajew, DOI `10.1137/110843587`,
  Assumption 1, Lemma 3.2, and Theorems 3.3/3.5 are sufficiently identified
  for a local source, with the non-output boundary (numeric radius and
  random-entry result) acknowledged.  The NeurIPS source is used only for the
  simultaneous Jacobi convention.  The missing current-notation wrappers
  must be added before classifying either source as closing the theorem.
- Same-setting repair plausibility: Add a pre-cluster per-state certificate
  equation, an explicit projective chart/fixed-point lemma, a quantitative
  score/support classifier, and split sign/column/row residual bridges.  Then
  carry explicit constants through the best-scalar and cyclic-ALS maps.  These
  changes preserve the algorithm, rank, conditional scope, metric, and
  baseline, so a new idea is not required at this review stage.
- Target-preserving bridge-repair gate: The smallest repairs are additional
  bridge steps and interface rows.  Widening a tube or adding a finite
  certificate budget is acceptable only if the final arbitrary-accuracy
  target and exact baseline remain unchanged.  No evidence currently forces
  `IDEA_FAIL`.
- High-risk obligation classes: structural lower bounds (Gram floors and
  diagonal margins), recursive chart maintenance, approximate-fixed-point
  classification, adversarial-sign handling, residual accumulation, local
  basin contraction, explicit constants, and exact/noiseless specialization
  are all active.  Static geometry and restart arithmetic are the only ones
  that pass without a repair obligation.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` norms, Gram rows, weights, KR floors | static conditioning event used by all later steps | Gaussian norm/directional concentration, normalization expansion, Schur product, Gershgorin | primitive `assump:*` -> `step_001` | matches normalized realized factors | current Gram and Euclidean conventions | separate linear, quadratic, normalization margins sum below `q_*` | `n,r,kappa_0,rho,delta_sm` and smoothing margin export the event | same realized target, no transformed object | finite union only | primitive assumptions -> `step_001` | `step_001` -> `step_002`-`step_008` | orthogonal/rho-zero limit is harmless for this static claim | step-local | None |
| `E_win`, `p_win` | target-chart entry and rate source | correlated Gaussian regression and product-tail bounds | `E_sm` + independent slot Gaussians -> `step_002` | target coordinates and pair products match `R_0` | covariance is the realized Gram convention | `c r^(-5/3) log^(-3/2) <= p_win <= C ...` | raw target window and competitor-pair event are observable in proof | ratios consume exactly these coordinates | finite competitor union | `E_sm` -> `step_002` | `step_002` -> `step_003` | denominator and finite-r boundary need explicit constants | step-local | None |
| `E_cov` and `p_0` | all-component coverage and one-run success source | independent slots and coupon/union bound | `step_002` -> `step_003` | rank exponent matches probability exponent | slot independence is stated | `k p_win >= 8 log r`, miss budget summed over targets | `C_rank` exports coverage without `delta_init` in rank | proof labels are removed before filtering | finite slot budget | `step_002` -> `step_003` | `step_003` -> `step_004`, final restart | all-target null event is accounted for | step-local | None |
| `E_RS` and denominator invariant | recursive alignment and proposal activation | simultaneous old-state expansion | `E_sm,E_win` -> `step_004` | recurrences match old-state map in outline | same-state old inputs in all modes | displayed `R,S` recurrences plus an invariant interval are required | `R_0,S_0,q_real,Gamma` should export a positive denominator | target ratios are the consumed chart coordinates | finite horizon; q forcing is persistent but bounded | `E_sm,E_win` -> `step_004` | `step_004` -> certification | first update and q=0 squaring pass in outline | step-local pending invariant proof | /proof-sketch |
| `E_chart` / projective fixed point | convergence to a certifiable state | Banach/contraction map in a named quotient chart | intended from `step_004`, but no standalone producer | claim type is appropriate | quotient sign metric and Euclidean residual conversion are not fixed | need chart radius, fixed point, initial displacement, and `zeta_t <= C 4^(-t)` | `R,S` must export individual mode ratio/state-norm bounds and a `tau_r` horizon | residual is to `J(h)`, not automatically to a true component | geometric transient, no hidden forcing at q=0 | currently `E_RS` -> `E_cert` with missing chart interface | missing `E_chart` producer/consumer row; `step_005` and `step_006` consume it implicitly | q=0 finite transient requires explicit sign/projective trace | sketch/interface defect | /proof-sketch |
| all certified high-score support classification | membership and score-gap theorem block | per-state certificate equation plus near-orthogonal support calculation | equation is only explicitly produced in `step_006` | mixture-vs-component score claim is plausible but support threshold is unspecified | target permutation/sign and score convention need fixing | need a quantitative support classifier, `0.85` gap, and within/cross correlation bounds | raw score, Gram, residual, and chart controls must export `E_chart` | selected state must be compared to one realized target, not merely high score | finite certified set; signs adversarial | current `step_005` -> `step_006` is circular because its source is later | missing per-state equation producer before `step_005`; output should feed `E_cluster` | support-two orthogonal fixed points are rejected only after an explicit margin | sketch/interface defect | /proof-sketch |
| `E_cluster` and target chart radius | data-only representative selection | score gap and graph separation | should follow `step_005` | graph metric matches target directions | absolute correlations require sign-gauge convention | `1-64q_*` within edges and strict cross edges | must export permutation, per-mode angle/dual coefficient radius, and denominator margin | graph closeness alone is not the `chi` interface used later | finite graph, no accumulation | `E_cert` -> classifier -> `E_cluster` | current table omits the chart-radius consumer path to `step_006` | duplicate states and tied scores need boundary handling | sketch/interface defect | /proof-sketch |
| certificate signs and same-state equation | theorem-critical coefficient source | exact multilinearity of `J` plus columnwise projective signs | direct derivation from each stored state | equation form is correct in principle | oriented `P_M`, `K_M`, and `D_M` must satisfy one product-preserving gauge | define signs so `P_M D_M = G_M K_M + R_M` and `||R(:,a)||_2 <= D_a tau_r` | need `D_a/lambda_j` upper/lower bounds and a nonzero `theta` margin | residual is to same stored-state contraction; target bias remains separate | certificate forcing has finite budget `r tau_r`, unknown sign | per-state equation must precede clustering and then feed selected bridge | currently implicit between `step_004`/`step_005`/`step_006` | negative-score and q=0 sign patterns require explicit trace | sketch/interface defect | /proof-sketch |
| `E_col` / `chi` column bootstrap | selected coefficient off-diagonal control | dual basis, Hadamard products, same-state equation | intended `step_006` direct derivation | source can match column leakage | `H=G^T G` and dual convention are compatible | must display `chi <= C(q+chi)^2 + C r tau_r`, select the small root, and prove `D_a/lambda >=31/32` | raw chart radius, Gram row sum, lambda ratio, and residual norm must export the bound | target coefficient error is `O(q^2+r tau)` only after solving this inequality | quadratic forcing plus finite certificate budget | `E_cluster` -> per-state equation -> column bootstrap | small/large root and zero-score branches need exclusion | sketch/interface defect | /proof-sketch |
| `E_row` induced row mass | spatial closure used by basin entry | dual projection and row-wise Hadamard small gain | intended `step_006` after `E_col` | claim class matches same-state algebra | dual operator norm needs explicit Gram floor | need a full inequality with every row defect and absorption coefficient, not only `eta <= C(q+chi)(q+eta)+...` | raw row/column Gram controls, lambda bounds, `chi`, and `R` must export `eta_row` and `eta_col` | split static `q^2`, coefficient, and certificate residual terms at target scale | additive `r tau_r` is finite and sign-unknown; no other persistent term allowed | column result -> row equation -> absorption | `E_row` consumers `step_007`/`step_008`; current flow lacks all intermediate outputs | one-row and q=0 transient cases need explicit arithmetic | sketch/interface defect | /proof-sketch |
| `E_best` best-scalar transfer | target-metric basin seed | tensor expansion, unit-norm identity, balanced cube-root map | `E_col,E_row` -> `step_007` direct derivation | intended target is the realized CP quotient | sign/permutation and scaling conventions need exact mapping | prove `|theta/lambda-1|` and factor/tensor residual with named constants | export lambda lower bound, direction/amplitude errors, pair-Gram terms, and `||T||_F` lower bound | `zeta` residual, static bias, scalar error, and quadratic tensor residual must each be dominated by `C(q^2+r tau)` | one finite expansion | `step_006` -> `step_007` -> `E_best` | theta=0 and negative-score branches must be rejected/gauged | sketch/interface defect | /proof-sketch |
| `E_basin` and cyclic ALS contraction | all-time invariant tube and terminal convergence | direct normal-equation inverse perturbation plus Uschmajew quotient interpretation | `E_sm,E_best` and cited DOI -> `step_008` | source supports quotient role, not numeric radius | active rank-r reduction and balanced chart must be mapped explicitly | prove inverse branch, quotient norm, per-mode bounds, and cyclic composition yielding `nu<=1/4` | expose `C_best`, `rho_ALS`, lambda/scale dependence, and inactive-zero projection | exact target is fixed, so no error floor after entry | contractive recurrence, no additive forcing | `E_best` -> `step_008` -> `E_stop` | exact target and tube boundary need first-update trace | sketch/interface defect | /proof-sketch |
| `E_stop` relative accuracy | public arbitrary-accuracy conclusion | contraction plus chart/Frobenius norm equivalence | `E_basin` -> `step_009` | original rank-k Frobenius metric is retained | active rank-r/freezing map must be exact | `m >= log(C_res/epsilon)/log 4` with explicit `C_res` | residual denominator `||T||_F` needs a lower bound | same target tensor and metric | finite stopping time | `step_008` -> `step_009` | exact baseline stops immediately | step-local after basin bridge | /proof-sketch |
| `E_restart` and runtime | conditional confidence upgrade | independent full-run trials | `E_cov,E_stop` + `assump:random-initialization` -> `step_010` | probability mode matches goal | same tensor, fresh proposal randomness | `(1-p_0)^J <= delta_init` and explicit operation count | graph/certification/ALS costs need a polynomial expression | returned residual is original objective | finite independent failures | `step_010` -> theorem | `J=1` and unsuccessful-run branches handled | step-local pending upstream | /proof-sketch |
| exact orthogonal/equal-weight baseline | baseline invariance and zero-limit | direct map and exact CP normal equations | `step_004`,`step_008`,`step_009` direct | preserves original conclusion | must state rho=0/limiting specialization and sign gauge | exact fixed point has `zeta=0`, `R=0`, and ALS residual zero | exact factors and metric coincide | no surrogate/error-floor bridge | stationary, no accumulation | direct baseline path independent of noisy bridge | `step_011` consumes exact specialization | finite transient is not claimed exact | sketch/interface defect until specialization is declared | /proof-sketch |
| generated-output/artifact flow | theorem assembly provenance | explicit producer-consumer graph | current tables in `proof_sketch.md` | names mostly match but omit `E_chart`, sign, and theta interfaces | current notation is not fully synchronized across steps | every output needs one producer before first consumer and final-use mapping | add rows for per-state equation, chart radius, sign gauge, and lambda/denominator margins | stale/missing interfaces prevent target-scale audit | finite budgets must be attached to producers | current flow has an implicit cycle at `step_005`/`step_006` | add forward edges and consumers before global proof | boundary rows for q=0 and theta=0 required | sketch/interface defect | /proof-sketch |

## Blocking Issues

1. **Pre-cluster certificate producer is missing and the dependency is
   circular** (`proof_sketch.md:283-313`, `315-373`, and `581-596`).
   `step_005` uses the certified same-state equation to classify every
   high-score state, but the only explicit derivation of that equation is
   `step_006`, whose input is the already classified/selected cluster.  A
   later step cannot be the source of the support theorem.  Add a per-state
   equation producer immediately after `step_004` (before target labels or
   clustering), then let `step_005` export a quantitative chart radius and
   let `step_006` consume it.  This is a same-setting roadmap repair.

2. **Certification is not connected to the stated Euclidean tolerance**
   (`proof_sketch.md:242-281`, `532-541`).  The recurrence controls pair ratios,
   while `zeta` is an ambient projective residual.  The sketch names a
   Lipschitz constant but does not give a chart set, a fixed-point existence
   source, an initial state-norm bound, or the norm conversion that yields
   `zeta_t <= tau_r` in the declared `L_cert`.  Separate a trajectory chart
   error (for `step_004`) from the selected coefficient error `chi` (for
   `step_006`) and export the resulting `E_chart`.

3. **All-certified-state score/support classification lacks a quantitative
   interface** (`proof_sketch.md:283-313`, `565-579`).  The mixture score bound,
   component lower bound, and graph margins are asserted without defining a
   support threshold or showing that the certificate residual and Gram/weight
   defects fit the `0.85` and `1-64q_*` margins.  The output currently says only
   `E_cluster`, while downstream needs per-mode chart/angle, denominator, and
   sign bounds.  Add a standalone support-classification lemma and export
   those quantities.

4. **The `E_col` bootstrap is asserted rather than closed**
   (`proof_sketch.md:315-373`, especially 328-343).  The displayed entrywise
   relation does not by itself imply `chi <= 32(q_*^2+r tau_r)`.  The sketch
   must state the l1 self-inequality (for example a small-root inequality in
   `q_*+chi`), the initial small branch supplied by `E_chart`, the exact
   diagonal normalization, and the lower bound on `D_M(j,j)/lambda_j`.
   Otherwise the later row small-gain relation is circular.

5. **Projective signs and the same-state residual are under-specified**
   (`setting.md:123-149`, `proof_sketch.md:320-349`).  Independent minimizing
   signs for the three modes do not automatically define a consistent
   product-preserving gauge.  The claim that they equal `sign(theta)` needs a
   positive lower bound on `|theta|`, which is only available after the score
   classification.  Define the oriented stored columns, prove the sign
   consistency, bound `D_M/lambda`, and define the residual after orientation
   before using `P_M D_M=G_MK_M+R_M`.

6. **The row/column residual budget is not fully source-adequate**
   (`proof_sketch.md:328-364`, `532-545`).  A per-column ambient l2 certificate
   bound must be pushed through `H_M^{-1}G_M^T`, divided by lambda, and
   converted to both induced l1 norms.  The sketch states `C r tau_r` but does
   not expose the operator norm, lambda lower bound, diagonal/transient
   terms, or the exact row small-gain coefficient.  Also, `zeta` is not a
   target-factor error: the `O(q_real^2)` chart bias must be separated from
   the `O(r tau_r)` certificate residual in every exported interface.

7. **Best-scalar target transfer is deferred at the critical scale**
   (`proof_sketch.md:375-407`, `532-545`).  The bound on `theta/lambda`, the
   cube-root balancing error, the tensor cross terms, and a lower bound on
   `||T||_F` are all named but not related by explicit constants.  In
   particular, the required inequality
   `C_best(q_*^2+r tau_r) <= rho_ALS/4` cannot be checked while `C_best` is
   unspecified.  Add the full residual decomposition and a numerical
   specialization before exporting `E_best`.

8. **The local ALS wrapper does not yet prove its public numeric tube**
   (`proof_sketch.md:408-457`).  The cited paper supplies a quotient/local
   mechanism but not the stated `rho_ALS=1/1024`, the `48q_*+64(...)` bound,
   or the cyclic block composition.  The sketch must split the inverse,
   per-mode update, gauge, and cyclic-composition claims, map the active
   rank-r problem exactly from the zero-padded rank-k objective, and expose
   all scale/condition dependence allowed by the setting.

9. **Baseline specialization is outside the declared primitive domain**
   (`setting.md:182`, `proof_sketch.md:52-56`, `508-530`).  The setting
   requires `rho>0`, while the baseline witness invokes `rho=0`.  State an
   explicit admissible limiting/extension clause (and trace signs and finite
   transients) so the baseline invariance obligation is theorem-facing rather
   than an informal specialization.

10. **Generated-output tables omit the interfaces needed to repair the above**
    (`proof_sketch.md:532-563`).  Add named rows and forward edges for
    `E_chart`, the per-state certificate equation, sign/denominator margins,
    and the lambda/target-norm controls.  Do not route `E_col`/`E_row` directly
    from a post-clustering step without those producers.

## Required Repair Bundle

1. Insert a pre-cluster `step_004b` (or equivalent) that derives the exact
   same-state certificate equation for each certified slot, with oriented
   signs, `D_M` bounds, residual projection, and a legal producer/consumer
   path.  Affected steps: `step_004`-`step_006`.  Smallest target:
   `/proof-sketch`.  This preserves the current algorithm and theorem.
2. Define a projective chart and a separate trajectory error variable;
   prove denominator persistence, fixed-point existence/uniqueness, norm
   equivalence, and the explicit `L_burn+L_cert` choice yielding `zeta <=
   tau_r`.  Export `E_chart` with a numerical radius.  Affected step:
   `step_004`.
3. Add a support-size/score-gap lemma for every certified state, including
   support threshold, mixture upper bound, component lower bound, graph
   within/cross margins, tie and negative-score handling, and the per-mode
   chart/denominator interface consumed by `step_006`.  Affected step:
   `step_005`.
4. Close the coefficient column bootstrap with an explicit l1 self-inequality,
   small-root selection, diagonal unit-norm calculation, and lambda/
   denominator bounds.  Affected step: `step_006`.
5. Specify the product-preserving sign gauge and prove the `theta` sign
   lower bound before orientation.  Push the certificate l2 residual through
   the dual operator and split static chart bias, coefficient forcing, and
   `r tau_r` residual in both row and column norms.  Affected step:
   `step_006`.
6. Rework the row small-gain and best-scalar bridges with explicit constants,
   target norm lower bound, cube-root Lipschitz bound, and the numerical
   specialization into the ALS tube.  Affected steps: `step_006`-`step_008`.
7. Split the local ALS argument into current-notation inverse, quotient
   kernel, per-mode update, cyclic composition, and zero-padded active-rank
   equivalence; identify exactly what is borrowed from Uschmajew and what is
   proved directly.  Affected steps: `step_008`-`step_009`.
8. Add the explicit rho-zero/limiting baseline clause and `theta=0`/
   singular-branch handling, and synchronize all generated-output flow rows.
   Affected steps: `step_009`-`step_011` and the flow tables.

Target-preserving repair check: every item above is a bridge, interface split,
or quantitative specialization under the existing conditional setting.  The
rank, procedure, metric, confidence modes, arbitrary-accuracy conclusion,
and exact baseline can remain unchanged.  No current evidence supports
`IDEA_FAIL`; route to idea revision only if a later proof establishes that
the score/classification or same-state small-gain claim is false under the
present primitive assumptions.

## Review Rationale

The stationarity-certified carry-over is a substantive repair of the idea-4
failure, and the displayed same-state algebra is plausible enough to preserve
the idea and its `r^(5/3)` target.  It is not yet ready for global proof or
step-level proof: a support-classification source is placed after its consumer,
the trajectory certificate has no exported chart norm, and the column/row
small-gain, sign gauge, best-scalar scale, and numeric ALS tube are all
theorem-critical interfaces with unresolved constants or residual classes.
Those defects can be repaired within the current formalized setting, so the
deepest justified outcome is `REVISE_SKETCH` with score 6 rather than
`IDEA_FAIL`.
