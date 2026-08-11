# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_9`.
- Sketch attempt: 3, rerun in `revise_sketch` mode after the archived
  attempt-2 global-proof review.
- Reviewed artifact: `perspective_2/idea_9/proof_sketch.md`, SHA-256
  `57ca12661ee1811dff3d73595d929d1f0cd2c0529852eb0672274087b88531d7`.
- Binding setting: `perspective_2/idea_9/setting.md`, SHA-256
  `27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2`,
  in target-spec `material_partial` mode.
- Idea source: `perspective_2/idea_9/idea.md`, SHA-256
  `bc2eb7163a21b79d11fb5af6cd746eb70ea94141ca95501818f11f40a62894b6`.
- Triggering global review: `proof_history/sketch_002/global_proof_review.md`,
  SHA-256
  `b920173eddb93af4aa04c494c89bb3fa169778bfcf782a3164c30bbce92e1069`,
  with `Global-Proof Review Status = REVISE_SKETCH` and retry target
  `/proof-sketch`.
- Prior sketch gate: attempt 2 was accepted, SHA-256
  `cdb55e821fad102d1c1e07e64a271cc1c01341aa7eaba724aefb5e0d2200cef5` in the archived copy. It is
  lineage only; this review re-audits attempt 3 independently.
- Roadmap reviewed: sixteen stable steps covering the derived instance and
  lower-tail event, J-aware finite ledger, transactions and tape, explicit
  weight-scaled PL geometry, direct `R-euc` chart entry, terminal first-exit
  descent, and public rate specialization.
- Semantic repair under review: `varrho_PL = c_chart tau_min^(1/3)/r`, with
  direct orbit-aligned `R-euc` entry and explicit exclusion of `R-acc` as a
  factor-distance source. The source objective, nine primitives, algorithm,
  rank, probability modes, target metric, and exact baseline are unchanged.

## Sketch Viability Score

7

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The sketch targets a valid `material_partial` instantiation
  of the setting. It preserves the exact asymmetric CP objective, balanced
  modewise-near-orthogonal source class, strictly subquadratic rank, separate
  instance and tape probabilities, polynomial discovery work, arbitrary
  relative Frobenius accuracy, exact rollback, and the no-floor baseline.
  The new chart radius is an internal proof-produced quantity permitted by
  the target-spec goal, not a target change.
- Dependency audit: The declared sixteen-step dependency list is acyclic and
  the new step-013/014 bridge is ordered correctly. The generated-output flow
  table is not consistent with that graph: it lists the step-007 z-profile as
  a producer consumed by step 006, lists step 010 transaction output as a
  consumer of step 009, and omits step 009 from the `E_lb` consumer list.
  These are sketch/interface defects until the local profile definition,
  quantitative profile bound, and abstract invariant closure are separated.
- High-risk coverage: The repaired full-state chart bridge is materially
  stronger than the prior attempt. The sketch exposes the `sqrt(r)` factor,
  the weight ratio, the `r^(3/2) eta0` comparison, the exact target metric,
  the block-family stress, and the fact that `R-acc` remains tensor-only.
  J-diagonal/O.1, rootwise accumulation, rollback, tape amplification,
  first-exit, and exact-limit witnesses are also present. The remaining
  high-risk issue is producer-consumer ordering, not chart scale.
- Explicit-rate coverage: R1--R4 expose variables, hidden-constant policy,
  fixed quantities, probability mode, horizon mode, norm mode, and the
  raw-to-public specialization. The inequalities
  `r^(3/2) Gamma_star nu^2 <= O(1/(sqrt(r) log^2 r))` and
  `r^(3/2)e <= r^(-1/2)` are explicit. The path coefficient names `C_L` in
  `C_path_star` without defining its source or allowed dependence; this must
  be declared as a derived chart-smoothness constant or replaced by an
  already declared fixed constant.
- Assumption and citation plausibility: All nine setting assumptions are
  named by stable IDs or inherited derived outputs. `E_lb` has a valid
  conditional Gaussian anti-concentration source and is not promoted to a
  primitive lower bound. Parent papers are correctly lineage only; the
  theorem-critical algebra, Jacobian, and transfer claims are direct
  current-notation obligations. No citation-level idea failure is present.

## Early Obstruction Audit

- Limiting-case stress: The former `h=e^2` obstruction remains repaired by
  the positive `e h` and `e^2` terms. The sketch separately tests `h=0`,
  `0<h<<e`, the isolated O.1 family with `nu_real=h`, larger correlated
  embeddings, dense/block frames, `E_lb^c`, the exact `H=0,e=0` limit, zero
  score, guard failure, tape exhaustion, the chart boundary, and
  `epsilon -> 0`. The independent two-label block family now fits the
  weight-scaled radius; no residual-to-target scale obstruction remains.
- Theorem-critical bridge support: Step 013 supplies a direct balanced
  Jacobian lower bound in the exact full-state factor metric and a radius
  `c_chart g_minus/r`. Step 014 derives, from the actual per-slot `R-euc`,
  `dist(Q_fin,Zstar) <= C_ent g_plus sqrt(3r) eta0`, then divides by the
  radius and explicitly controls both structural and numerical pieces. The
  bridge does not invoke `R-acc`, a surrogate tensor metric, whitening, or a
  hidden lower bound on `nu`.
- Exported-interface feasibility: The event, transfer, certificate,
  ledger, PL, chart-entry, and terminal interfaces each expose raw controls,
  defect classes, consumers, and target scales. In particular, chart entry
  uses `g_plus/g_minus <= chi_tau`, the upper Gram margin, `D_stat >= 2`,
  and `P >= r`; the raw `sqrt(r)` is retained and dominated by the new
  `g_minus/r` radius. The only interface failure is the generated-output
  flow bookkeeping described below, plus the undeclared `C_L` rate symbol.
- Theorem-critical mechanism witness gate: The witnesses for lower-tail
  absorption, J cancellation, finite ledger closure, rollback, tape
  reachability, balanced Jacobian coercivity, direct chart entry, first-exit
  descent, and exact baseline identify claim class, source, controls,
  opposing defects, dominance relation, boundaries, and consumers. The z
  profile and transaction closure witnesses are mathematically plausible but
  their producer-consumer paths are not stated consistently in the flow
  table; this is a same-setting sketch repair, not an idea-level missing
  mechanism.
- Entry-state trace stress: The empty protected prefix has `A=0`; the first
  stored profile has explicit positive numerical padding; positive-score
  seeds activate the radial root; zero/negative score and failed probes
  roll back exactly. The exact target is stationary, and the exact
  `H=0,e=0` branch has zero entry residual and a constant-relative chart.
  The independent block entry stress satisfies the new radius. No allowed
  entry state leaves the chart mechanism inactive while the target is false.
- Obligation locality classification: `step_001` anti-concentration,
  `steps_002--006` static/landscape/J algebra, `steps_007--009` raw ledger,
  `steps_010--012` dynamics/tape, `step_013` PL geometry, and
  `steps_015--016` terminal contraction are step-local once their interfaces
  are ordered. The combined z-profile flow and the transaction/invariant
  flow are `sketch/interface defect` obligations, routed to `/proof-sketch`.
  No `idea/theorem-contract defect` is visible.
- Noncircular closure gate: `E_lb` is produced before any trajectory. The
  prefix induction uses an empty base, prior accepted history, one exact
  charge, and a finite next-prefix budget. PL geometry is produced from the
  exact target before chart entry. The intended invariant and chart sources
  are noncircular, but the flow table must distinguish the abstract
  success/failure preservation lemma from the later transaction producer so
  that step 009 is not shown as consuming step-010 output.
- Mechanism-source and boundary stress: Gaussian density, signed-Gram
  column bounds, Schur products, Neumann contraction, exact multilinear
  cancellation, balanced Jacobian conditioning, and Armijo smoothness have
  the right source classes. The lower-tail source is used only to compare
  numerical terms with `nu^2`; the new chart comparison needs no lower-tail
  assumption. Null and exact branches are explicit.
- Generated-output flow: Most paths are legal from primitives through
  `E_inst/E_lb`, H/J/K, `Theta`, matching, ledger, invariant, tape, tuple,
  PL, entry, and rate. The table itself has three defects: (i) raw z is
  produced as a step-007 profile but listed as consumed by earlier step 006;
  (ii) transaction output step 010 is listed as consumed by step 009 even
  though step 010 depends on step 009; and (iii) step 009 is omitted as an
  `E_lb` consumer. The repair must split local z definition from its
  rowwise bound, remove or reorder the transaction edge, and complete the
  consumer lists.
- Source-to-claim adequacy: Direct derivations use the exact normalized-Gram,
  full-sphere, balanced-manifold, exact-loss, and Frobenius conventions.
  Gaussian anti-concentration is conditioned on a realized partner column
  and allows arbitrary mean; its normalization and polynomial threshold are
  explicit. The PL and chart sources have lower/coercive content rather than
  merely upper bounds. No theorem-critical cited wrapper has unresolved
  identity or hypothesis discharge. The path-smoothness symbol `C_L` needs
  an explicit derived-source declaration.
- Residual-to-target adequacy: For chart entry the produced object is the
  actual all-commit tuple, the consumed object is the exact `Qstar` orbit,
  and the norm is full-state Euclidean factor distance. The residual splits
  into cube-root radial errors and signed direction errors from `R-euc`; all
  `r` active slots and three modes contribute the displayed
  `C_ent g_plus sqrt(3r) eta0`, and the new radius dominates it. For the
  ledger, produced `A/E/Xi` arrays and consumed target-frame contractions are
  identical. No uncontrolled residual remains in these bridges.
- Baseline invariance audit: The inherited conclusion is exact balanced
  representation, exact rollback, exact-target stationarity, arbitrary
  relative epsilon, and no terminal floor. In the exact orthogonal/noiseless
  specialization, `H=e=0` gives zero z, charge, and entry residual, and the
  direct Jacobian supplies `varrho_orth=c_orth g_minus`; the first transition
  and stationary terminal trace are exact. The original baseline is
  preserved, not replaced by a remainder. The flow repair must retain this
  branch.
- Scope-accumulation compatibility: Accepted-history forcing is nonnegative
  and finite-prefix. `Delta A <= 2 Gamma_star Upsilon` charges each commit,
  root, tested label, and mode once; rootwise factorization gives structural
  `r nu^3` and numerical `r^2 e`; failed probes contribute zero. Terminal
  descent is contractive over a finite logarithmic horizon with a path bound
  `C_path_star dist`. The accumulation mechanism is sound once the flow
  ordering is made explicit.
- Scope and dependence consistency: The rank, source class, target metric,
  probability modes, epsilon range, and exposed dependence are unchanged.
  The new radius and `mu_PL` are inverse-polynomial using `g_minus >=
  (2kappa)^(-1)`, `kappa <= r^c0`, and `P >= r`. The public specialization
  keeps raw terms until the stated branch checks. `C_L` is the only missing
  declaration in the explicit constant dependence.
- Generated-condition provenance: Realized events, histories, profiles,
  labels, injections, transactions, chart membership, and PL invariance are
  outputs with named producers. `E_lb` is derived by step 001. The z
  definition can be produced from `Theta` at a precommit state, but the
  current flow table labels its quantitative bound as the sole producer;
  this ambiguity must be removed rather than assumed away.
- Citation and tool applicability: Parent literature is motivational only.
  Standard Gaussian, Cauchy--Schwarz, Schur, Neumann, Haar, tail, Armijo,
  and Taylor tools are named in current notation with their intended
  conclusions and boundaries. No external theorem is being used to hide
  the chart bridge or the raw ledger. The local smoothness constant used in
  `C_path_star` needs a source/dependence declaration.
- Same-setting repair plausibility: High. Split the z definition from its
  rowwise estimate, reorder or separate the abstract prefix-preservation
  lemma and transaction dynamics, add the omitted `E_lb` consumer, and
  declare the derived smoothness constant. These changes preserve all nine
  primitives, the algorithm, rank, metric, endpoint, and baseline.
- Target-preserving bridge-repair gate: The prior chart obstruction is
  target-preservingly repaired already. The remaining repairs only make
  producer-consumer paths and fixed-constant dependence explicit; they do
  not weaken the inherited baseline or public conclusion. Therefore route to
  `/proof-sketch`, not `/subagent-idea-generator`.
- High-risk obligation classes: Lower-tail anti-concentration, structural
  support, numerical perturbation, generated recurrence, finite accumulation,
  conditional-to-unconditional prefix closure, tape amplification,
  same-target entry, coercivity, first-exit invariance, explicit rates, and
  exact/no-floor specialization were all scanned. Only flow/order and the
  undeclared path constant remain material.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst` and exact target | Static event, conditioning, representation, baseline | Gaussian concentration, normalization, direct CP identities | Six primitive source IDs -> step 001 | Produces the exact realized norms, Grams, weights, gaps, and `T` | Same normalized factors and Frobenius target are consumed downstream | Tail reserves fit `nu_star`, pair/triple gaps, and weight ratio | Norm, dimension, smoothing, balance, and Gram margin are explicit | Exact equality to realized `T`; no surrogate | One-drawn finite union only | Primitives -> step 001 -> static/PL consumers | Step 001 -> steps 002, 013, 016 | Minimum norm, zero tensor, exact target pass | step-local | None |
| `E_lb` | Derived numerical nondegeneracy and optional absorption | Conditional Gaussian small-ball plus normalization | `assump:gaussian-smoothing`, norm event, polynomial ranges | Supplies only `nu >= P^(-D_lb)` with `r^(-20)` failure | Raw cross inner product normalizes to the same Gram entry | Choose `D_stat` after `D_lb` so `r^2e,sqrt(r)e <= c nu^2` on the branch | Conditional variance, arbitrary mean, disjoint pairs, and probability allocation are stated | Exact instance property; no object transfer | Once-drawn failure event | Primitive draw -> step 001 -> steps 007, 008, 009, 016 | Step 001 produces; branch consumers must include step 009 | `E_lb^c`, tiny positive nu, and exact H=e=0 separated | **sketch/interface defect: consumer list incomplete** | /proof-sketch |
| H/J/K, S, transfer gaps | Static source and Neumann boundedness | Column l2 Cauchy--Schwarz, Schur products, exact transfer map | Step 001 event and direct setting algebra | Matches R-src, leakage, S, q-res, and q-row | Absolute-Gram objects are analysis-only in the exact array convention | Transfer norm `2(nu+eta0)(1+sqrt(r)nu)`, q <= 1/4 | Raw H columns, K l1, J rows, and weights are available | Same array domain and zero diagonal | Geometric within-state summation | Step 001 -> step 002 -> step 003 | Step 002 -> steps 003--009, 013 | H=0, chain, dense/block, q boundary | step-local | None |
| Conditional `Theta_I` and landscape | Generated boundedness and isolation | Neumann series plus exact score/gradient/Hessian | Steps 002--005 under legal prior prefix | Conditional certificate target has the right shape | Full ambient spheres and exact protected residual match | Singleton/mixed-support gap dominates static, history, and e defects | S, prior A, q gaps, score, Hessian, capture, and separation are named | Scratch slot compared to exact realized atom | Conditional one-state, then finite-prefix | Prior prefix -> Theta -> landscape/matching | Steps 003--005 -> J, tape, and chart inputs | Empty A, zero score, mixed support, separation pass | step-local | None |
| Matching and calibration | Generated support, membership, injection | Radial root, angular stationarity, finite sign orbit | Steps 004--005 | Exports `R-euc`, `R-dir`, unique label, and separation | Product-one analysis signs; no target labels algorithmically queried | Calibration errors bounded by `C_led eta0` and separation gate | Observable score, capture, gap, and guard are raw controls | Actual slot compared directly with exact atom | One output per successful commit, at most r | Conditional landscape -> matching -> induction | Step 005 -> steps 006, 009, 011, 014 | Empty/first score, ambiguity, separation boundary | step-local | None |
| J update and O.1 audit | Signed transition and numerical charge | Exact multilinear expansion with identical J baseline | Step 005 calibration and direct algebra | Exact J-update, J-diag, cyclic/off-diagonal, and honest local scale | Same target frame, J convention, and zero-diagonal z | `Delta A <= 2 Gamma Upsilon`; `O(h^4+eh+e^2)` dominates at `h=e^2` | H, z, eta, radial/direction errors, and positive padding are explicit | Accepted E contracts against exact target frame | Nonnegative finite one-step charge | Step 005 -> step 006; z must be a precommit local output | Step 006 -> steps 008, 009 and later induction | h=0, h<<e, h=e^2, cyclic, transitive pass | step-local after z-flow split | /proof-sketch |
| Raw z definition and rowwise profile | Generated boundedness and no-extra-factor control | Theta plus rootwise Neumann contraction and Cauchy--Schwarz | Theta from step 003 and prior prefix; quantitative bound in step 007 | Raw z and its norm bound match J-charge consumers | Same root blocks, l1 arrays, and zero diagonal | `norm_2(z)<=C(nu^2+rnu^3+sqrt(r)e)`; E_lb only simplifies to nu^2 | Prior history, q-row, static source, and numerical padding are explicit | A/Xi consume exact arrays; no factor-distance claim | Finite-prefix, nonnegative, one-time | **Current table labels step 007 as producer consumed by step 006; must split definition from bound** | Definition should feed step 006; bound feeds steps 008--009 | Empty prefix, dense/block, exact limit pass | **sketch/interface defect: backward flow** | /proof-sketch |
| Global ledger and protected-state induction | Recurrence, invariant, finite accumulation | One-step J charge, rootwise factorization, exact rollback | Steps 006--009 with prior-prefix input | Raw J-global, history, R-budget, R-acc, and invariant are target-shaped | Exact protected residual and rollback state match setting | Per-p charge, finite sum `r nu^3+r^2e`, failure equality | All raw terms remain before branch simplification | A/Xi are exact consumed arrays | Finite at most r; failures zero forcing | Empty base -> abstract success/failure preservation -> next prefix | Step 009 should close from prior outputs; current row adds step-010 as a consumer of step-009 and also reverse edge | First/last commit and failure branches are traced | **sketch/interface defect: cycle/ordering** | /proof-sketch |
| Transaction dynamics and tape | Reachability, rollback, probability | Exact derivatives, Armijo/curvature, Haar caps, independent tape | Protocol and `assump:random-tape` | Produces actual success/failure and all-commit tuple | Full-space exact-loss procedure matches setting | `p_tx`, stopped tail, finite work, exact rollback | Guards, score, step floor, tape independence are exposed | Success is actual slot; failure exact prior state | Failed probes zero; successes finite | Valid abstract prefix -> step 010 -> steps 011--012 | Step 010 should not be listed as a producer consumed by step 009 | Zero score, guard/root failure, exhaustion, rollback pass | step-local after flow repair | /proof-sketch |
| Exact-target PL geometry | Coercivity, positive radius, quadratic growth | Balanced Jacobian, pair/triple gaps, direct Taylor | Step 001 event and direct current notation | `sigma_min >= c_J g_minus^2`, quadratic sandwich, PL | Exact nonorthogonal `Qstar`, balanced tangent, full-state/Frobenius metrics | Radius `c_chart g_minus/r` makes Jacobian and residual-Hessian defects subcritical; `mu >= c_mu g_minus^4` | Weight ratio, guard, finite orbit, `g_minus >= (2kappa)^(-1)`, and path reserve are exposed | Exact target object; no entry premise or surrogate | Local deterministic geometry only | Step 001 -> step 013 -> terminal consumers | Step 013 -> steps 014--016 | Target stationary, min weight, boundary, exact branch pass | step-local | None |
| Same-target chart entry | Basin membership and residual-to-target bridge | Bijection/signs, `R-euc`, cube-root identity, weight balance | Steps 001, 005, 009, 012, 013 | Directly exports the required full-state membership | Actual tuple and exact target orbit share the same metric | `dist <= C_ent g_plus sqrt(3r) eta0`; ratio to radius is controlled by explicit structural and numerical inequalities | `nu` upper margin, `D_stat >= 2`, `chi_tau`, radius, and `R-euc`; `R-acc` explicitly excluded | Radial and direction residuals are fully decomposed and dominated at `c_chart g_minus/r`; unused zeros agree | One-time r-slot sum, no terminal forcing | Tuple and PL radius -> step 014 -> descent | Step 014 -> steps 015--016 | Independent blocks, max nu, min weight, exact H=e=0 pass | step-local | None |
| Terminal first-exit and public rate | Contraction, arbitrary accuracy, no floor | PL/quadratic chart, strict reserve, exact-loss Armijo | Steps 013--016 | Matches relative Frobenius endpoint and runtime mode | Same exact target and metrics throughout | Path `<= C_path_star dist` plus PL gives geometric loss decrease | epsilon, mu, reserve, smoothness, probabilities, and substitutions are exposed | Final residual is exact `T-Psi(Q)` | Finite logarithmic horizon, no persistent forcing | Entry -> step 015 -> step 016 | Step 016 -> final theorem | Exact target, epsilon -> 0, boundary, baseline pass | step-local after flow/constant repair | /proof-sketch |
| Baseline invariance | Exact recovery, rollback, stationarity, no floor | Exact orthogonal CP identities and algorithm equations | Direct H=e=0 specialization | Preserves original exact representation and arbitrary epsilon | Same factors, tensor, metric, and zero slots | S=z=A=Xi=Upsilon=0; constant-relative orthogonal chart | No positive finite-e term is absorbed into zero | Exact target residual is zero | No accumulation | Exact branch -> terminal specialization | Final baseline clause | First transition and stationary trace exact | step-local | None |
| Generated-output flow and rate constants | Contract/quantitative specialization | Explicit producer-consumer table and derived chart smoothness | Current flow table plus step-013/015 local calculus | Current table has backward edges and an omitted consumer | Mathematical conventions otherwise match | Repair split/order and declare `C_L` source/dependence before export | All consumers, fixed constants, and public substitutions must be listed | No new mathematical residual; this is documentation/interface closure | Flow defect can otherwise create circular use | Revised flow -> all downstream consumers | Must update `Generated Output Flow`, step dependencies, and R4 | Boundary cases already pass | **sketch/interface defect** | /proof-sketch |

## Blocking Issues

1. **Generated-output ordering around z (`proof_sketch.md:752-763`).** The
   flow table declares the raw z-profile producer to be `step_007` but lists
   `step_006` as a consumer, while `step_006` is earlier in the declared DAG
   and its J-charge formula uses z. The text can support a valid split in
   which `Theta` from step 003 defines a local precommit z and step 007 only
   proves its quantitative rowwise bound, but that split is not recorded in
   the producer/consumer table. As written, the flow gate sees a
   consumer-before-producer edge and a cycle with the step-006 output row.
   Smallest repair: expose the local z definition as a step-003/prior-prefix
   output, reserve step 007 for the norm bound, and update step dependencies,
   gate rows, and flow consumers.

2. **Transaction/invariant flow cycle (`proof_sketch.md:746, 764`).** The
   protected-state closure is declared complete at step 009 and is an input
   to step 010, but the generated-output table also lists step-009 as a
   consumer of step-010 transaction output. The abstract success/failure
   preservation relation can make this noncircular, but the sketch must say
   so explicitly or introduce a later composition step; the current table
   has a backward edge and does not supply a legal producer-consumer path.

3. **Incomplete `E_lb` consumer list (`proof_sketch.md:757, 785`).** Step 009
   explicitly carries the `E_lb`/exact-limit branch for its simplified row
   interface, but `Generated Output Flow` lists only steps 007, 008, and 016.
   Add step 009 as a consumer and state whether the induction carries the
   raw branch or the specialized bound.

4. **Undeclared path-smoothness constant (`proof_sketch.md:581-584`).**
   `C_path_star` is defined as a function of `C_L`, but `C_L` is not declared
   among the fixed constants, derived outputs, or rate variables. Declare it
   as a compact-chart smoothness/Lipschitz output with allowed dependence,
   or express `C_path_star` using already declared constants. This is a
   quantitative-contract repair, not a theorem-contract change.

The repaired weight-scaled radius and direct `R-euc` bridge are not blockers:
the inequalities in step 014 control the full-state factor residual without
`R-acc`, and the exact baseline remains target-preserving.

## Required Repair Bundle

1. **Flow split for z.** Update the proof sketch at the roadmap, mechanism
   witness, Gate Evidence Table, Generated Output Flow, and step rows 006--008.
   Define the precommit z profile from the already produced `Theta` and prior
   prefix before the J-charge expansion; make step 007 produce only its
   rootwise norm/branch bound (or reorder the steps so the producer precedes
   step 006). Preserve the raw numerical terms and all current J identities.
   Smallest target: `/proof-sketch`; same accepted setting and goal.

2. **Flow split for protected-state closure.** Update steps 009--010 and the
   flow table so the abstract finite induction proves success/failure
   preservation from a prior valid prefix, while step 010 proves the concrete
   transaction dynamics from that invariant. Remove the backward step-010 to
   step-009 consumer edge, or add an explicitly ordered composition step if
   transaction output is needed for a later invariant statement. Preserve
   exact rollback and finite-scope accumulation. Smallest target:
   `/proof-sketch`.

3. **Complete branch provenance.** Add step 009 to the `E_lb` consumer list,
   identify whether it consumes the raw or branch-specialized profile, and
   keep the exact `H=0,e=0` branch separate. Do not promote `E_lb` to a
   primitive assumption or use it for chart entry, which is already correctly
   direct. Smallest target: `/proof-sketch`.

4. **Close the explicit-rate constant declaration.** Declare the source,
   quantitative dependence, and fixed status of `C_L` (or remove it) in the
   rate objectives and step-013/015 mechanism witness. Ensure `C_path_star`
   depends only on fixed class/protocol quantities and the bounded `chi_tau`,
   not on dimensions, the realized instance, commit order, or epsilon.
   Smallest target: `/proof-sketch`.

No primitive assumption, algorithm/model/procedure, theorem scope/mode/metric,
public dependence, success criterion, or baseline conclusion needs to change.
The target-preserving repair is therefore sketch-level, and `/global-proof`
does not need to be rerun before the flow-corrected sketch is reviewed.

## Review Rationale

Attempt 3 successfully repairs the substantive global-proof obstruction. The
new radius is weight-scaled and inverse-polynomial, the direct orbit-aligned
`R-euc` residual is compared at the exact full-state factor scale, the
independent block stress is dominated, and `R-acc` is not misused. The raw
`sqrt(r)e` and `r^2e` ledger terms, derived `E_lb`, honest O.1 audit, exact
baseline, and probability separation are all preserved.

The sketch is nevertheless not ready for proof-step workers because its own
Generated Output Flow contract has backward/cyclic edges and an omitted
branch consumer, and its explicit path constant contains an undeclared
symbol. These are concrete roadmap/interface defects visible without doing
step proofs and are repairable under the same idea and formalized goal. A
score of 7 reflects high mathematical viability with a required flow/rate
cleanup; `REVISE_SKETCH` and `/proof-sketch` are the deepest smallest route,
not `IDEA_FAIL`.
