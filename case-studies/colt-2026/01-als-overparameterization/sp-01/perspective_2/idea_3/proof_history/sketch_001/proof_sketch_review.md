# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_3`.
- Sketch attempt: 1.
- Reviewed artifact: `perspective_2/idea_3/proof_sketch.md`.
- Binding setting: `perspective_2/idea_3/setting.md` in exact-goal mode.
- Triggering failure: `perspective_2/idea_2/proof_sketch_review.md`, whose
  equality-only cap obstruction required an idea-level protocol repair.
- Reviewed roadmap: E0, Z0, C0, J0, W0, D0, L1, P1, B1, and R0 for the guarded
  project-and-park protocol.

## Sketch Viability Score

5

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The sketch preserves the exact guarded protocol, conditional
  source scope, subquadratic rank, separate instance/tape probabilities,
  polynomial runtime, one-tape interpretation, and arbitrary relative accuracy.
  It correctly implements only the failure-authorized cap-transition delta from
  Idea 2. No direct counterexample to the repaired theorem contract was found.
- Dependency audit: The displayed step ids are syntactically acyclic, but the
  mathematical interfaces are not. W0 assumes a small protected/off-channel
  residual before P1 produces protected persistence; D0 removes a channel from
  the unresolved set before P1 proves that its newly protected representative
  actually persists and reduces that channel; L1 then depends on W0/D0 while
  being invoked by W0 as the fallback when the required residual split fails.
  The roadmap therefore needs a joint epoch induction or an earlier one-step
  protected-state bridge.
- High-risk coverage: The sketch names all major obligations, including guarded
  Armijo, projection/reset accounting, adaptive proposals, injective assignment,
  epochwise progress, protected invariants, same-target PL, pruning, and no-floor
  refinement. Several witnesses are category-level or use outputs not yet
  produced, so they are not step-ready.
- Explicit-rate coverage: Exposed variables, modes, fixed quantities, and hidden
  dependence are recorded. The step lower bound is plausible under fixed guards,
  but its displayed formula omits the smoothness restriction used later. The
  sketch also does not relate the fixed epoch count \(S=P^{20}\) to the derived
  decrement exponent \(d_{\mathrm{dec}}\), nor fully convert event path length
  into loss/Lyapunov charge.
- Assumption and citation plausibility: Primitive assumptions use stable ids and
  generated invariants are not placed in the setting. The cited sources are
  correctly treated as motivation rather than wrappers. E0, local Jacobian, and
  adaptive Haar claims still require current-notation derivations with exact
  inequalities; the main rejection, however, is interface structure rather than
  missing literature authority.

## Early Obstruction Audit

- Limiting-case stress: Idea 3 does repair Idea 2's cap-slack failure. If current
  balanced radii satisfy \(g_{mathrm{prot}}\le R_{\max}\) and
  \(g_{mathrm{prob}}\le2\theta\), a per-factor gradient bound \(G_{\max}\)
  and smoothness bound \(L_{\max}\) give a fixed positive trial scale
  \[
  \lambda_0\le\min\{\eta_{\max},R_{\max}/(4G_{\max}),
      2\theta/(4G_{\max}),1/(4L_{\max})\}.
  \]
  At this scale raw factor segments stay in a polynomial individual-factor box,
  the balanced trial stays inside the \(2R_{\max}/4\theta\) guards, and Armijo
  holds. Dyadic maximality then gives an inverse-polynomial accepted trial.
  On the aligned scalar path \(g^+=g+\lambda g^2(\tau-g^3)\), the first accepted
  crossing of \(2\theta\) is projected once and parked; the positive cap slack
  is not iterated. Thus the prior idea-level obstruction is absent.

  Projection occurs *after* the Armijo-tested trial, however. The projected state
  need not satisfy that Armijo inequality. For an event tensor change \(\Delta\),
  the missing interface is
  \[
  F(\Phi_{\mathrm{trial}}+\Delta)-F(\Phi_{\mathrm{trial}})
  \le \lVert R_{\mathrm{trial}}\rVert_F\lVert\Delta\rVert_F
      +\tfrac12\lVert\Delta\rVert_F^2,
  \]
  with an explicit guarded residual bound and a sum over project, reset, and
  prune events. `B_disc` is only tensor path length until this loss/Lyapunov
  conversion and its reserve weight are fixed.
- Theorem-critical bridge support: E0 and Z0 have plausible direct bridges. C0
  needs a corrected lower-bound formula and final-state ledger interface. W0,
  D0, L1, P1, and B1 do not yet form a legal chain. In particular, the coarse
  decomposition \(R_e=\sum_{j\in J_e}\tau_jv_j+E_e\) used by W0 has no earlier
  source controlling the protected part of \(E_e\).
- Exported-interface feasibility: Fixed trial guards can export raw Armijo step
  feasibility, but C0 does not yet export the post-projection loss relation or a
  protected margin, which belongs to P1. A fresh score is not yet an assigned
  target representative; an assignment label is not actual target-mass
  reduction; finite event path length is not an epoch decrement; and a protected
  tensor bound is not same-target chart membership. These missing transfers are
  same-setting interface defects.
- Theorem-critical mechanism witness gate: E0, Z0, and the exact cubic identity
  in J0 have nonvacuous sources. The raw guarded-step part of C0 also has a valid
  source after its formula is corrected. W0's residual source, D0's injectivity
  source, L1's decrement, P1's accumulated signed recurrence, and B1's no-floor
  chart transfer are not source-adequate as written. Each requires revised
  interfaces and dependencies before it can be `step-local`.
- Entry-state trace stress: Joint zero remains stationary between resets, and a
  partial-zero trial returns to joint zero; scheduled fresh tape is the legal
  activator. A positive probationary proposal crosses and parks in one event,
  so the near-cap trace passes. A newly promoted component has tensor mass only
  \(O(\lVert T\rVert_FP^{-80})\); before the next residual is treated as having
  that channel resolved, an explicit protected-growth and persistence transition
  is required. The current order defers that transition to P1 after D0/L1 have
  already consumed it.
- Obligation locality classification: E0, Z0, and the algebraic J0 identity are
  `step-local`. C0's combined trial/event/protected-margin interface, W0, D0,
  L1, P1, B1, R0, and the end-to-end generated-flow/rate/baseline bridges are
  `sketch/interface defect`. No current issue requires changing primitive data,
  rank, algorithm, theorem scope, metric, or success criterion, so
  `idea/theorem-contract defect` is not established.
- Noncircular closure gate: W0 cannot use P1-quality protected residual control
  before P1. Its fallback statement that a large error routes to C0/L1 is also
  circular because L1 depends on W0 and D0. D0 cannot remove a channel merely
  when a tiny component is labeled protected; the next-epoch residual split
  needs a produced one-epoch growth/persistence certificate. L1 and P1 must be
  part of one acyclic induction, not downstream justifications of earlier
  residual claims.
- Mechanism-source and boundary stress: Static \(1/32\) Gram separation can
  support local conditioning but does not alone imply that the largest random
  residual score lies in a unique target cone. Armijo descent does not alone
  lower-bound gradient mass in a no-promotion epoch. A finite path-length ledger
  does not control signed cancellation or protected cap pressure. These positive
  claim classes need target-specific sources.
- Generated-output flow: E0 to Z0 and raw C0 to J0 are legal. The flow breaks at
  W0's unproduced residual split, D0's label-to-mass transfer, L1's unspecified
  event/loss reserve, and P1's later justification of the state consumed by W0
  and D0. B1/R0 consequently consume stale or unproduced chart and margin
  outputs. The table in the sketch incorrectly records `None` for these blockers.
- Source-to-claim adequacy: The current-coordinate guard calculation matches the
  exact algorithm, but `lambda_min` in the provenance section omits
  \(1/(4L_{\max})\) even though the mechanism entry relies on it. For W0,
  E0/C0 only give a crude bound as large as the protected guarded domain; they
  do not imply \(\tau_j-\lVert E_e\rVert_F>0\). For D0, score ordering plus
  triple-Gram conditioning does not by itself prove target-cone injectivity.
  These are missing direct derivations, not valid future-step placeholders.
- Residual-to-target adequacy: Z0 is exact. For project/reset events, path length
  must be transferred to actual loss with the guarded residual factor. For W0
  and D0, a mixed score/protected label must be transferred to an actual target
  channel and quantitative target-mass reduction. For B1, the historical
  `B_disc` cannot remain an additive residual in the local PL inequality as
  \(h\to0\); it may certify initial post-pruning entry, but the post-pruning
  objective must then be expanded directly around the exact target with no fixed
  forcing term.
- Baseline invariance audit: The exact balanced representation lies strictly
  inside \(R_{\max}\), and the finite project/reset/prune protocol ends before
  refinement, so the setting can preserve the exact/no-floor baseline. The
  current B1 inequality
  \(B_{\mathrm{disc}}+C\lVert h\rVert^2\le
  P^{-d_J}\lVert h\rVert/2\) cannot hold as \(h\to0\) when
  \(B_{\mathrm{disc}}>0\). Historical event budget must be used only to prove
  post-pruning entry; it cannot appear as persistent local forcing. P1's
  displayed additive term must likewise vanish or be summable before refinement.
- Scope-accumulation compatibility: C0 has finitely many discrete events, but a
  concrete loss-weighted ledger is missing. L1 does not show that
  \(S=P^{20}\) times its decrement is large enough relative to
  \(\mathcal L_0\); the required inequality relating \(d_{\mathrm{dec}}\), S,
  and initial/reserve scales is absent. P1's per-step forcing
  \(CP^{-d_\Psi-20}\lVert T\rVert_F^2\) is not classified as transient,
  summable, or state-dependent across \(SH\) steps and refinement. Without that
  classification it can create a positive equilibrium and cannot support
  arbitrary accuracy.
- Scope and dependence consistency: The fixed guards and \(\theta\) are
  inverse-polynomial under E0, so a fixed \(d_{\mathrm{step}}\) is plausible.
  The sketch must expose the actual exponent after including smoothness, event
  loss conversion, dyadic trial count, epoch-decrement exhaustion, and chart
  constants. The proposed \(Q_{\mathrm{ref}}\) is valid only after those
  exponents and a no-floor PL recurrence are established.
- Generated-condition provenance: The sketch correctly labels cap margin,
  assignment, persistence, tube membership, and PL as derived. Its dependency
  ordering nevertheless consumes some of those facts before production. A
  generated fact is not provenance-valid merely because a later step is named.
- Citation and tool applicability: The homogeneous-refresh source has different
  objective and protocol; ALS/smoothed sources provide static algebra patterns;
  the local ALS source is not a GD chart-entry theorem. The sketch appropriately
  proposes direct branch proofs, but their exact source interfaces must be made
  explicit in the revised roadmap.
- Same-setting repair plausibility: All identified blockers can plausibly be
  repaired by splitting C0, introducing an epochwise protected-state induction,
  reordering or merging W0/D0/L1/P1, and separating post-pruning entry defects
  from the defect-free local PL recurrence. The guarded algorithm and exact goal
  need not change at this stage.
- Target-preserving bridge-repair gate: Add the missing smoothness term and
  loss-ledger relation; prove one-step protected growth/persistence before the
  next adaptive residual decomposition; derive target-cone assignment and actual
  mass reduction; make event forcing summable; and use `B_disc` only for entry.
  These are roadmap, dependency, recurrence, and exported-interface repairs
  under the same formalized setting and goal. Therefore `REVISE_SKETCH`, not
  `IDEA_FAIL`, is the smallest route.
- High-risk obligation classes: Guarded nonsmooth/discrete transitions,
  simultaneous Armijo, adaptive Haar conditioning, structural target assignment,
  repeated promotion/persistence induction, signed cancellation, cap margin,
  event-loss accumulation, finite-epoch exhaustion, same-target chart transfer,
  local Jacobian/PL, pruning, explicit rate conversion, and exact/no-floor
  refinement are all present.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E0 realized instance event | Static concentration/conditioning; source for all geometry | Gaussian concentration, base KR slack, direct Schur-product comparison | Primitive data assumptions and current-notation direct derivation | Plausible match; exact perturbation inequalities remain local work | Same normalized columns, operator norms, and actual T | Base deviation plus perturbation at most \(1/32\), with target norm from triple Gram | Raw base margin, Gaussian law, dimension, and smoothing margin export actual realized controls | Actual T and Grams; no surrogate | Static finite union; no accumulation | Primitive data to step_001 | Producer step_001; consumers Z0/C0/W0/D0/P1/B1 | Small column and margin boundary explicitly included | `step-local` | `None` |
| Z0 exact balanced reference | Exact representation and baseline/cap certificate | Tensor identity, balancing, E0 norm bounds | Direct algebra from E0 | Exact claim match | Same homogeneous factors, protected cap, and Frobenius target | Radius \(\tau_j^{1/3}\le2\kappa<R_{\max}\), tensor sum equals T | E0 and true factors export the exact reference | Zero residual to same T | Static; no forcing | E0 to step_002 | Producer step_002; consumers P1/B1/R0 | Extra k-r components are joint zero | `step-local` | `None` |
| C0 guarded trial, projection, and loss ledger | Globalization, step lower bound, discrete-event closure | Fixed guard gaps, gradient/smoothness bounds, Armijo, finite event count | Direct current-protocol derivation | Raw trial source is adequate; combined final-state/loss-ledger and protected-margin claim is incomplete | Exact trial-before-projection semantics must be retained | Correct scale must include \(1/(4L_{\max})\); final event needs \(\Delta F\le\lVert R\rVert\lVert\Delta\rVert+\lVert\Delta\rVert^2/2\) | Guards and B_disc are raw; guarded residual bound, ledger weight, and producer split are missing | Tensor path length is not yet actual loss/Lyapunov charge | Events finite, but signed/unsigned loss accumulation lacks a concrete reserve relation | Raw trial proof is independent; protected margin must come later from P1 | Revised C0 produces trial/ledger; all dynamics consume it | Near probationary cap passes; protected boundary needs later margin | `sketch/interface defect` | `/proof-sketch` |
| J0 joint-zero/partial-zero activation | Entry-state cubic identity | Scheduled reset and exact homogeneous expansion | Primitive tape transition and direct algebra | Exact identity is source-adequate; unconditional proposal success belongs to W0 | Same residual and homogeneous factors | \(\Delta F=-t^3\langle R,u\otimes v\otimes w\rangle+t^6/2\) | Reset radius and fresh directions export a conditional activation interface | Injection is measured against actual R | At most kS resets; negative score is a conditional branch | Reset is legal before W0 | Producer step_004; consumers W0/L1 | Joint zero stationary until reset; partial zero returns to zero | `step-local` | `None` |
| W0 adaptive proposal and growth | Random nondegeneracy; proposal per unresolved channel | Fresh Haar block, residual decomposition, cubic dynamics | Primitive tape plus E0/C0 and missing earlier protected-state control | Source mismatch: E0/C0 do not make protected/off-channel error small; fallback to L1 is circular | Exact adaptive past and residual are used, but target-channel object map is incomplete | Needed cone/growth inequality requires \(R_e=\sum_{J_e}\tau_jv_j+E_e\) with an earlier quantitative E_e bound | Tape independence is raw; unresolved residual mass and target-cone margin are not exported before W0 | Mixed score is not yet transferred to unresolved target channel | Adaptive epochs; no valid conditional union without produced unresolved mass | Current W0 consumes later P1/L1-quality control | Intended producer W0; D0/L1 consume it | Fresh entry valid, but prior protected state can dominate residual | `sketch/interface defect` | `/proof-sketch` |
| D0 injective assignment and actual target-mass reduction | Structural support/diversity; prevents duplicate promotion | Score order, proposal cones, triple-Gram separation | W0/E0 plus missing protected-state induction | High score/label does not yet prove unique target cone or actual channel reduction | Same target components, but label-to-tensor bridge is missing | Must show selected candidate lies in one cone and its protected evolution reduces that channel before J_e removal | Scores and Gram slack are raw; positive assignment/mass margins are not fixed | Tiny promoted tensor is not immediately an adequate replacement for removed target mass | Finite labels may be spent on duplicates; bookkeeping U_e drop is not physical progress | Requires a prior or joint P1 transition, not future P1 | Revised joint epoch producer; L1/P1/B1 consume assignment | First promotion has radius O(theta), so next residual is not yet resolved | `sketch/interface defect` | `/proof-sketch` |
| L1 event-weighted Lyapunov promotion/decrease | Repeated-scope finite-burn-in closure | Armijo, actual mass progress, event loss ledger | C0/D0 plus a not-yet-valid joint induction | Potential form is plausible; decrement and reserve weights lack derivation | F is actual loss, but B_rem needs loss units and U_e needs physical meaning | Must specify weights, event loss charge, no-promotion gradient lower bound, and \(S P^{-d_{dec}}\) exhaustion inequality | F, event path length, and target weights are raw; valid decrement is not exported | Scalar descent is not yet transferred to channel/tube progress | Finite events, but no-promotion and leakage forcing are not quantitatively accumulated | Current L1 depends on W0/D0 and is invoked as W0 fallback | Revised L1 produces epoch certificate; P1/B1 consume it | Zero-gradient/no-promotion state lacks stated stopping alternative | `sketch/interface defect` | `/proof-sketch` |
| P1 protected persistence, noncancellation, leakage, and cap margin | All-time invariant/support/boundedness | Joint assignment-growth induction, signed potential, Gram margin, event ledger | D0/L1/E0 plus missing reordered one-step bridge | Recurrence is not yet source-adequate; fixed additive term is unclassified and earlier W0 needs its output | Exact protected factors and cap | Forcing must be transient, summable, or state-dependent; cap margin must follow before protected failure | Assignment/event controls are raw only after roadmap repair | Protected tensors must be compared to actual target channels, not labels | Per-step P^{-dPsi-20} over SH/refinement may create a floor; event forcing finite | Current producer is too late for W0/D0; needs joint epoch induction | Revised P1 consumed by next-epoch W0, B1, R0 | Newly promoted tiny radius, opposite sign, and cap boundary need first transition | `sketch/interface defect` | `/proof-sketch` |
| B1 post-pruning same-target chart and PL | Basin membership, local coercivity, chart preservation | P1 coordinates, balanced Jacobian, direct Taylor bound | Z0/C0/P1 plus missing exact entry/local split | Local source plausible, but historical B_disc is used as persistent additive residual | Same T and homogeneous chart are intended | B_disc may prove initial entry only; local inequality after pruning must be defect-free, with remainder \(C\lVert h\rVert^2\) | Exact reference and P1 state are prospective; chart radius and entry dominance are not fixed | Inequality \(B_{\mathrm{disc}}+C\lVert h\rVert^2\le\text{margin}\,\lVert h\rVert\) cannot hold as \(h\to0\) if \(B_{\mathrm{disc}}>0\) | Discrete events stop before refinement; historical budget must not accumulate afterward | Entry producer P1/pruning, then independent local PL producer | Revised B1 produces chart/PL; R0 consumes it | At h=0 exact solution must have no fixed forcing/floor | `sketch/interface defect` | `/proof-sketch` |
| R0 protected refinement and exact rate | Quantitative contraction and public theorem | Defect-free B1 PL, corrected C0 step, protected margin | Downstream direct recurrence | Algebraic contraction is valid only after repaired interfaces | Exact F and relative Frobenius norm match | F_{t+1}<=(1-cP^{-dstep-dPL})F_t; Q_ref must include initial-scale log | Exponents and post-pruning state are not yet exported | Exact target permits no additive term | Geometric finite horizon once all forcing stops | Depends on repaired C0/P1/B1 only | Producer R0; final theorem consumes it | F=0 and epsilon down to zero pass only with defect-free recurrence | `sketch/interface defect` | `/proof-sketch` |
| F0 generated-output DAG and probability flow | End-to-end theorem closure | Legal revised E0-Z0-C0-J0 plus joint W0/D0/L1/P1 induction, then B1/R0 | Primitive instance/tape sources and revised dependencies | Current graph is mathematically circular despite numbered acyclicity | Same tensor and separate probability modes are preserved | Must expose every producer before consumer and allocate adaptive union bounds | Primitive laws available; residual/invariant/chart interfaces missing | Each edge must remain same-target | Static, epoch, all-time, and refinement scopes need separate controls | No current noncircular path across W0-D0-L1-P1 | Revised DAG produces tape event and final theorem | Adaptive past cannot include unproved future persistence | `sketch/interface defect` | `/proof-sketch` |
| BI0 exact/no-floor baseline | Baseline invariance and arbitrary relative accuracy | Z0 exact reference, finite burn-in events, defect-free post-pruning PL | Formal goal and prior failure record | Target is preserved, but current B1/P1 formulas can leave fixed forcing | Same T, one tape, no restart | Event budget only certifies entry; all additive forcing must vanish before refinement | Exact reference exists; final chain not yet exported | Historical B_disc cannot remain a residual floor | Finite events end before geometric refinement | Z0 then repaired P1/B1/R0 | Producers are Z0 and repaired B1/R0; final theorem consumes them | h=0 and epsilon->0 expose any fixed forcing | `sketch/interface defect` | `/proof-sketch` |

## Blocking Issues

1. **C0 combines a valid guarded trial with an incomplete final-state ledger.**
   The displayed `lambda_min` omits the smoothness restriction used in the
   mechanism witness. More importantly, Armijo is checked before radial
   projection, while the retained projected state may increase loss. `B_disc`
   bounds tensor path length, not loss, until a guarded residual bound, event
   loss inequality, reserve weight, and per-iteration final-state relation are
   stated. Protected margin must remain a P1 output rather than a C0 premise.
2. **The W0-D0-L1-P1 dependency chain is circular.** W0 needs a small protected
   residual error; D0 removes a target channel after promoting a tiny component;
   L1 depends on W0/D0; and only later does P1 claim that protected components
   grow, persist, and approximate their assigned channels. E0/C0 bounds alone
   permit protected tensors of guarded-domain size and do not supply the needed
   residual split. A joint epoch induction or an earlier one-step persistence
   producer is required.
3. **Score ordering is not yet target assignment or physical mass reduction.**
   Triple-Gram near-isometry is static and aggregate. The sketch must prove that
   the selected adaptive candidate belongs to a unique target cone, that
   duplicates/mixed candidates cannot win at the relevant margin, and that the
   protected evolution reduces actual target residual before bookkeeping removes
   the channel from \(J_e\).
4. **The finite-scope Lyapunov and persistence budgets do not close.** L1 gives
   no explicit weights, event-loss conversion, no-promotion gradient source, or
   inequality relating \(S=P^{20}\), \(d_{\mathrm{dec}}\), and
   \(\mathcal L_0\). P1's displayed per-step additive forcing is not shown
   summable over \(SH\) or absent during refinement, so it can create a positive
   equilibrium and cannot establish cap margin/no-floor persistence.
5. **B1 mixes entry perturbation with local PL forcing.** The proposed
   \(B_{\mathrm{disc}}+C\lVert h\rVert^2\) domination cannot hold as
   \(h\to0\) for positive historical budget. Use the event budget only to prove
   the post-pruning state enters the chart, then prove a defect-free local
   expansion and PL recurrence for the fixed post-pruning objective.
6. **Generated flow and exact-rate closure are consequently invalid.** The
   current tables mark the above interfaces as blocker-free, and R0 fixes a
   polynomial before the step, epoch, chart, and no-floor exponents have legal
   producers. The adaptive probability union and dyadic-trial work count must be
   redone after the dependency repair.

## Required Repair Bundle

1. **Repair C0 at `/proof-sketch`.** Separate (a) raw guarded trial existence
   and dyadic lower bound, (b) post-trial project-and-park semantics, (c) a
   loss-weighted discrete-event ledger, and (d) the later protected-margin
   consumer. Include \(1/(4L_{\max})\), an individual-factor segment bound, a
   guarded residual bound, the exact event loss inequality, reserve units and
   weights, and the final-state one-iteration interface.
2. **Replace the linear W0-D0-L1-P1 order by a noncircular epoch induction.**
   Produce a coarse protected-state/residual decomposition before each fresh
   block. After promotion, prove a one-epoch protected growth/persistence result
   before the assigned channel is removed from the next unresolved set. This may
   require splitting P1 into a one-step/one-epoch bridge and a later accumulated
   invariant, or merging W0/D0/L1/P1 into lemma-sized induction stages.
3. **Strengthen the proposal-to-assignment interface.** Fix the target proposal
   cones, conditional probabilities, score separation, mixed/duplicate defect
   bounds, signed orientation, and actual target-residual reduction. State the
   quantitative margin consumed by the next epoch and route the no-proposal
   branch to an independently sourced gradient/Lyapunov decrement.
4. **Complete L1/P1 accumulation accounting.** Define the Lyapunov weights and
   loss ledger, prove the per-epoch decrement, and show the fixed S exhausts all
   no-promotion epochs. Identify every P1 forcing term, its sign and source, and
   prove it is event-summable, contractively absorbed, or zero after burn-in.
   Export a strict protected cap margin without assuming it in C0.
5. **Split B1 entry from defect-free local geometry.** Use projection/reset/prune
   bounds only to prove the post-pruning protected state is inside a same-target
   chart. Thereafter compute the exact balanced Jacobian and nonlinear remainder
   without a fixed `B_disc` term, and prove chart preservation and PL down to the
   exact solution.
6. **Rebuild generated flow and R0.** Update the exported-interface and flow
   tables with the repaired producers/consumers; instantiate all exponents,
   ensure dyadic work is polynomial, allocate the adaptive tape union, relate
   S to the burn-in decrement, and derive the no-floor refinement polynomial
   only from accepted defect-free interfaces.

These repairs preserve the guarded algorithm, primitive smoothed setting,
subquadratic rank, theorem scope, metric, probability modes, and exact success
criterion. If the revised local work instead proves that no such epoch induction
or protected invariant exists under the fixed protocol, that new evidence may
justify later idea-level routing; the current artifact does not establish it.

## Review Rationale

The guarded project-and-park rule removes the prior theorem-contract
contradiction, so `IDEA_FAIL` would be too deep. The sketch is nevertheless not
ready for global proof or step proof: its central adaptive residual and
protected-state mechanisms are circular, its event path-length budget is not yet
a loss ledger, and its local PL bridge carries a fixed historical defect into an
exact/no-floor regime. These are substantial roadmap, dependency, recurrence,
and exported-interface defects that can plausibly be repaired under the same
setting. A viability score of 5 and `REVISE_SKETCH` therefore give the smallest
sound route.
