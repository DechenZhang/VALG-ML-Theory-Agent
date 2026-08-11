# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_3`.
- Sketch attempt: 3.
- Reviewed artifact: `perspective_2/idea_3/proof_sketch.md`.
- Supporting survey: `perspective_2/idea_3/technical_survey.md`.
- Binding setting: `perspective_2/idea_3/setting.md` in exact-goal mode.
- Triggering artifact:
  `perspective_2/idea_3/proof_history/sketch_002/proof_sketch_review.md`.
- Identity mismatch: line 5 of the reviewed sketch still calls itself attempt 2,
  and the current technical survey is byte-identical to the archived attempt-2
  survey and still labels the branch as sketch attempt 2.
- Reviewed roadmap: E0, Z0, C0, J0, I0, W0, P0, D0, L1, B0, B1, and R0.

## Sketch Viability Score

5

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: Attempt 3 preserves the exact guarded protocol, one finite
  tape, separate instance and conditional-tape probabilities, subquadratic
  rank, polynomial work, and arbitrary relative accuracy. It introduces no
  theorem-facing assumption and does not weaken the success metric.
- Dependency audit: The A/Q/U transition remains acyclic and a newly promoted
  channel remains in physical queued error until maturation. The proposed
  stopped event is logically invalid, however: intersecting `G_e` only for
  `e < sigma`, when sigma is the first failed certificate, omits the terminal
  failure and is true by the definition of sigma.
- High-risk coverage: The sketch now states a supported `P^103` radial scale,
  a weighted W0 event, a scaled reserve, a polishing target, an entry residual,
  and an intended first-exit barrier. Only the radial exponent is actually
  repaired at the theorem-critical interface. The W0 probability, L1 reserve,
  polishing floor, B0 transfer, and B1 barrier remain unsupported or
  internally inconsistent.
- Explicit-rate coverage: The algebraic step and PL exponents 42, 24, and 66
  remain plausible, and `P^103 < P^108 < H` is now consistent. The recurrence
  displayed for polishing has steady-state scale `P^-156`, so it cannot produce
  the advertised `P^-160` potential. The `P^-36` chart and `P^-62` residual are
  announced in the rate ledger but are absent from B0's source relations.
- Assumption and citation plausibility: Primitive assumptions retain stable
  ids and external papers are still treated as motivation. The current survey
  does not document attempt 3's stopped-event, weighted-cone, polishing, or
  barrier changes. The novel W0 lower probability is especially source-
  inadequate at its absolute `q_0` competitor window.

## Early Obstruction Audit

- Limiting-case stress: Let sigma be the first epoch at which `U_e` is empty or
  `G_e` fails. Then
  \[
  \bigcap_{e<\sigma}\mathcal G_e
  \]
  holds on every sample path by minimality of sigma; when failure occurs at
  sigma, the failed event is excluded. Thus the displayed tape event does not
  imply successful exhaustion, `sigma <= r+1`, or any promotion count, and its
  complement is not the event bounded by the stated union. The correct event
  must compare the unresolved-exhaustion time with the failure time, or be
  defined by an explicit recursive sequence of at most r successful queries.
- Theorem-critical bridge support: I0 still exposes the actual U/Q residual and
  D0's physical mass identity remains sound. W0 now asks one candidate to
  satisfy a weighted lead and small aggregate competitor score, but `G_e` only
  asserts existence of such a candidate. It does not exclude a different
  mixed or duplicate candidate with a larger boundary score, even though the
  algorithm promotes the global maximum. Therefore `G_e -> D0 unique winner`
  is not established.
- Exported-interface feasibility: P0's radial calculation is corrected:
  `lambda >= P^-42`, `q_0 >= P^-33`, and `theta >= P^-28` give a conservative
  `P^103` time, which fits H. The persistent-score premise `s_t >= q_0/2` is
  still asserted rather than produced from W0 and the evolving actual residual.
  The rate ledger defines `B_tilde=P^12 B`, while L1 still defines and bounds
  its Lyapunov with unscaled B. B0 still exports neither its newly announced
  `P^-160` input nor the `P^-62` residual output.
- Theorem-critical mechanism witness gate: E0/Z0 have standard static sources,
  C0 has a concrete Taylor and retained-loss ledger, and J0 has an exact cubic
  identity. W0's proposed small-ball event has no scale-compatible probability
  witness; P0 has no defect recurrence proving persistent score; L1 has no
  concrete polishing iteration; B0 has no target-to-coordinate/residual
  transfer; and B1 has no displayed boundary-energy comparison. Those claims
  remain `sketch/interface defect`, not step-local promises.
- Entry-state trace stress: The all-seed state, scheduled activation, first
  promotion into Q, and maturation before Q removal remain correct. After the
  final Q target matures, probationary components are still active and reset in
  every remaining burn-in epoch under the fixed protocol, so the claimed
  window is not protected-only. The P0 nuisance recurrence can polish only to
  its nonzero burn-in floor. At the first post-pruning update, the sketch still
  lacks the energy inequality preventing exit from the local chart.
- Obligation locality classification: E0, Z0, C0, J0, and the conditional I0
  decomposition are `step-local`. The algebraic physical-mass replacement in
  D0 is step-local conditional on valid proposal and maturation inputs. W0's
  event/probability/global-winner claim, P0's persistent-score interface, L1's
  stopped induction and polishing recurrence, B0's quantitative entry, B1's
  basin preservation, R0's public conversion, and the end-to-end flow are
  `sketch/interface defect`. No present result forces an
  `idea/theorem-contract defect`.
- Noncircular closure gate: The step dependency DAG remains acyclic, but the
  probability closure is vacuous rather than circular. A valid construction is
  `E_tape={sigma_U < sigma_fail}` with each query made only on the prior success
  event, or an equivalent recursive event. Only after `G_e` is shown to force
  an actual promotion can the conditional failure bounds telescope over at
  most r queries.
- Mechanism-source and boundary stress: In the orthogonal equal-weight boundary
  case allowed by E0, for a Haar rank-one direction the competing score
  \[
  Z=\left\langle T_{U_e\setminus\{j\}},u\otimes v\otimes w\right\rangle
  \]
  has root-mean-square scale comparable to `T_norm*n^-3/2`, whereas W0 requires
  `abs(Z) <= O(T_norm*P^-30)`. Since `P >= n`, this is an absolute window smaller
  than the natural scale by at least `P^-28.5`. The sketch supplies no reason
  that this stringent small-ball event has probability `c/(r log r)`. A
  relative winner event plus a dynamical amplification argument would be a
  plausible same-setting repair; the stated absolute event is not.
- Generated-output flow: The legal prefix remains
  `E0 -> Z0 -> C0 -> J0 -> I0`. Flow breaks at W0 because neither its event nor
  its global-winner consequence is produced. P0 then consumes an unproduced
  persistent score. L1 does not use the scaled reserve or expose polishing,
  and B0/B1/R0 only announce the new entry, barrier, and public-residual
  outputs in overview text. The exported-interface and generated-flow tables
  still mark every one of these edges as blocker-free.
- Source-to-claim adequacy: The trial-before-projection convention and C0
  reserve match the setting. For W0, a valid normalized-Gaussian wrapper must
  prove the probability of the exact event it exports, including all-candidate
  exclusion needed by largest-score promotion. For P0, the actual score
  recurrence must control residual changes from mature clusters, the queued
  component itself, and probationary dynamics until target-scale reduction.
  For B1, the Jacobian wrapper must control the current Jacobian on the full
  chart and compare entry loss with boundary loss; naming a first-exit argument
  is not a mechanism witness.
- Residual-to-target adequacy: D0 continues to preserve actual target mass via
  \[
  \mathcal M_e=\sum_{j\in U_e}\tau_j^2+
  \sum_{j\in Q_e}\|\tau_jv_j-Q_{j,e}\|_F^2+\Psi_e.
  \]
  The final bridge is absent. The sketch does not define whether Psi directly
  controls balanced coordinate error, tensor cluster error, or both at the
  required scale; it gives no inequality from `Psi_pol` and final pruning to
  `dist_bal <= P^-36/4`, and no inequality from the protected state to
  `R_norm <= T_norm*P^-62`. Historical B_disc is a path/loss control and cannot
  substitute for either target-side relation.
- Baseline invariance audit: Z0 remains an exact zero-residual representation,
  all refresh and projection events stop at pruning, and the local recurrence
  contains no fixed historical forcing. The formula-level no-floor repair is
  preserved. Exact convergence is still unproved because the generated state
  is not shown to enter and remain in the exact chart. This is a bridge failure,
  not evidence that the exact baseline is impossible.
- Scope-accumulation compatibility: The mature recurrence
  \[
  \Psi_{t+1}\le(1-\alpha_t/2)\Psi_t+
  C\alpha_t\zeta_t^2,
  \qquad \zeta_t\le\|T\|_FP^{-78},
  \]
  has steady-state scale `C*T_norm^2*P^-156`; it cannot uniformly imply
  `Psi_pol <= T_norm^2*P^-160`. The remaining H-scale window makes the transient
  negligible but does not remove the forcing because probationary components
  persist until pruning. Separately, the overview charges a scaled remaining
  reserve while L1 uses unscaled B, so its displayed per-epoch decrement is not
  the recurrence advertised by the attempt-3 rate ledger.
- Scope and dependence consistency: If corrected, a recursively stopped event
  with one forced promotion per successful query would avoid any union over
  S and keep the probability independent of unrestricted n. The current event
  cannot support that query bound, and the per-block probability itself is not
  compatible with the displayed absolute competitor scale. The burn-in count
  must also include r promotions, the final Q epoch, and enough forced-nuisance
  polishing while preserving the state through all remaining epochs up to S.
- Generated-condition provenance: The scaled reserve, polishing certificate,
  `P^-62` entry residual, and energy barrier are introduced in the roadmap or
  rate objectives, but the theorem-critical L1, B0, and B1 sections retain the
  attempt-2 formulas. A generated output is not provenance-valid when its only
  producer is overview prose and its step specification does not state the
  control relation.
- Citation and tool applicability: The external papers are still used only for
  qualitative structure, which avoids an invalid theorem wrapper. The current
  technical survey is stale and explicitly says sketch attempt 2; it contains
  none of the new stopped-event, weighted absolute-cone, polishing, residual,
  or barrier interfaces. The novel direct obligations therefore have neither
  an updated source map nor a complete current-notation derivation.
- Same-setting repair plausibility: A correct recursive success event, a
  feasible relative target-basin event with winner-take-all dynamics, an
  explicit score-persistence recurrence, a coherent choice of scaled or
  unscaled reserve, a polishing target above the `P^-156` floor, and explicit
  B0/B1 transfer inequalities can all be attempted without changing the
  guarded algorithm, rank, assumptions, metric, or exact conclusion.
- Target-preserving bridge-repair gate: Route to `/proof-sketch`. The next
  sketch must replace the vacuous stopped event, establish a scale-compatible
  W0 probability and global-winner condition, repair the P0/L1 accumulation
  ledger, and actually state the polishing-to-entry and entry-to-boundary
  inequalities in their producer steps. Only a proof that no such event or
  dynamics exists under the fixed tape would justify idea-level routing.
- High-risk obligation classes: Adaptive stopping, Haar small-ball and order
  statistics, largest-score structural assignment, queued score persistence,
  physical target-mass transfer, forced recurrence accumulation, cap margin,
  finite burn-in exhaustion, target-to-coordinate entry, local Jacobian
  coercivity, first-exit preservation, public rate conversion, and exact
  no-floor convergence are all present and audited above.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E0 realized instance event | Static conditioning and target source | Gaussian concentration, base KR slack, and Schur-product algebra | Primitive instance assumptions and direct derivation | Plausible exact match; constants remain proof work | Normalized columns, actual T, and instance probability match | Base and perturbation margins give pair/triple Gram error at most 1/32 | Raw laws and margins can export E0 | Actual unnormalized T and Grams; no surrogate | Static finite union | Primitive assumptions -> step_001 | E0 feeds all later steps | Small columns and T=0 are addressed | `step-local` | `None` |
| Z0 exact balanced reference | Exact representation and baseline certificate | Tensor-preserving balancing and E0 bounds | Direct algebra from E0 | Exact object match | Same CP map, signs, and Frobenius target | True radii are at most 2kappa and sum equals T | E0 exports the needed norms | Zero residual to the same T | Static; no forcing | E0 -> step_002 | Z0 feeds C0, B0, B1, and R0 | Extra slots are joint zero and cap slack is strict | `step-local` | `None` |
| C0 raw step and retained ledger | Globalization and event-loss accounting | Guarded smoothness, Armijo, and path reserve | Direct current-protocol calculation | Exact retained-state interface is present | Trial-before-projection convention matches | Accepted step is at least P^-42 and B pays each retained loss jump | Gmax, Lmax, Rbar, and B_disc feasibly export C0 | Event tensor is measured in actual loss | Unscaled loss charge telescopes | E0/Z0 -> step_003 | C0 feeds all dynamics and R0 | Zero gradient and first crossing are handled | `step-local` | `None` |
| J0 activation | Legal first nonzero transition | Exact cubic identity and scheduled seed | Primitive tape plus direct algebra | Exact conditional match | Same factors and actual residual | Cubic score dominates the sixth-order term above q0 | Seed scale exports conditional activation | Score uses actual R | One reset per epoch and C0 charge | C0 -> step_004 | J0 feeds I0 and W0 | Joint zero is stationary until refresh | `step-local` | `None` |
| I0 epoch certificate | Conditional residual source and induction base | A/Q/U partition and seed bound | E0/C0/J0 plus partition algebra | Base and conditional decomposition match | Actual target channels and queued error are retained | `R_e=T_U+R_Q+E_e` with E_norm at most T_norm times P^-32 | Seed state exports I_0 | No target leaves U/Q before approximation | Local one-epoch scope | E0/C0/J0 -> step_005 | I0 feeds W0, P0, D0, and L1 | All-seed and empty-set branches are valid | `step-local` | `None` |
| W0 weighted proposal event | Adaptive nondegeneracy and score source | Fresh Haar block and degree-three statistics | Primitive tape, E0, and I_e | Absolute competitor window has no compatible lower-probability witness | Haar and actual residual conventions match | Claimed lead 8q0 and competitor at most 2q0; natural competitor scale is much larger | p_star is asserted without a scale bridge | Candidate score is actual, but one target dominance is unsupported | One fresh block per attempted query | I_e + tape -> intended step_006 | W0 should feed D0 and L1 | Orthogonal equal-weight case exposes the small-window mismatch | `sketch/interface defect` | `/proof-sketch` |
| WQ stopped tape event | Conditional probability and query closure | Stopping-time induction over good proposal blocks | Intended W0 conditional tail | Invalid: intersection before first failure is tautological | One-tape filtration is otherwise correct | Needed event is exhaustion before failure, not intersection for e below sigma | At most r queries follows only after each good event forces promotion | Same-target path is intended | No S-fold union is needed after repair | W0 -> intended step_009 | Tape event feeds all burn-in conclusions | Terminal failed certificate is omitted | `sketch/interface defect` | `/proof-sketch` |
| P0 queued maturation | Physical target reduction and cap source | Radial/angular dynamics and signed potential | E0, C0, I_e, and W0 | P^103 exponent is fixed; persistent score remains unproduced | Balanced factors and actual channel tensor match | Radius recurrence uses score at least q0/2 for up to P^103 steps | lambda, q0, theta, and H fit, but score defects are not bounded | Cluster error is target-compatible | Nuisance is contraction-scaled | I_e/W0/C0 -> intended step_007 | P0 feeds D0, L1, and B0 | Opposite sign and evolving residual remain unresolved | `sketch/interface defect` | `/proof-sketch` |
| D0 physical assignment | Injective promotion and bookkeeping | W0 cone, P0 suppression, and M functional | Conditional W0/P0 plus algebra | Physical transfer is correct; global-largest uniqueness is missing | Same boundary residual and target tensors | U mass is replaced by queued error until maturation | One good candidate does not exclude a larger mixed candidate | No bookkeeping-only deletion remains | At most one label move per epoch | W0/P0 -> intended step_008 | D0 feeds L1 | First tiny promoted tensor remains queued | `sketch/interface defect` | `/proof-sketch` |
| L1 Lyapunov and reserve | Epochwise progress and finite burn-in | C0 loss, physical M, P0, and D0 | I_0 plus transition | Attempt-3 scaled reserve is absent from actual L1 formula | Actual F/M/Psi units match | Overview uses B_tilde, while L1 uses B and its old initial bound | Both reserves are defined but no coherent exported recurrence is selected | Actual target mass is retained | Nuisance and event charges need one ledger | I0 then W0/P0/D0 -> intended step_009 | L1 should feed B0 and probability | Final Q and all remaining epochs need explicit count | `sketch/interface defect` | `/proof-sketch` |
| LP protected polishing | Entry-ready accuracy under repeated burn-in | P0 contraction over remaining epochs | Intended L1 output | Claimed P^-160 is below the P^-156 forcing floor | Burn-in still includes probationary components | Transient contracts with alpha at least P^-66, but steady state is C times P^-156 | H is ample; the target exponent or forcing mechanism is not feasible as stated | Psi has no explicit coordinate/residual export | Forcing persists until pruning | P0/L1 -> intended B0 input | L1 should produce polishing; B0 consumes it | Not a protected-only window under the fixed protocol | `sketch/interface defect` | `/proof-sketch` |
| B0 chart and residual entry | Same-target basin and public entry | Polished protected certificate, Z0, and pruning | Intended L1/P0 output | P^-36 distance and P^-62 residual are only announced | Exact post-pruning target convention matches | Needed inequalities map Psi and pruning to both coordinate and residual targets | No such raw-control transfer appears in B0 | Historical path loss is not protected coordinate error | One-time historical use is appropriate only after transfer | L1/Z0 -> intended step_010 | B0 should feed B1 and R0 | Exact state passes; quantitative near-entry is unsupported | `sketch/interface defect` | `/proof-sketch` |
| B1 PL and first exit | Local coercivity and basin preservation | Balanced Jacobian and nonlinear remainder | E0, Z0, and B0 | PL is plausible; advertised energy barrier is absent | Exact protected objective matches | Needed boundary residual is at least order P^-44 and entry residual below it | Jacobian lower bound is present; current-J and boundary-energy relations are not | No historical residual remains | Defect-free after pruning | B0 -> intended step_011 | B1 feeds R0 | h=0 passes; chart boundary is not excluded | `sketch/interface defect` | `/proof-sketch` |
| R0 public rate | Relative-error convergence and work | C0 step and B1 PL | Downstream recurrence | Exponent 66 algebra is sound only after missing B0/B1 inputs | F is exact Frobenius loss | Geometric recurrence plus P^-62 case split would give the claimed log rate | Step/PL scales exist; entry residual and preservation do not | Public metric matches once B0 is real | No post-pruning additive term | C0/B0/B1 -> intended step_012 | R0 feeds final theorem | Large epsilon stop is only overview prose | `sketch/interface defect` | `/proof-sketch` |
| F0 generated-output flow | End-to-end theorem closure | Legal DAG with probability, recurrence, entry, and PL bridges | Primitive laws plus derived interfaces | Prefix is valid; all central repaired edges remain missing | One tape and same T are preserved | Every overview output needs its exact producer-step inequality | W0, L1, B0, and B1 interfaces are infeasible as written | Same target is intended throughout | Static, adaptive, burn-in, and refinement scopes differ | Intended graph is acyclic | Named producers and consumers exist but outputs are asserted | Failure path and final boundary break flow | `sketch/interface defect` | `/proof-sketch` |
| BI0 exact baseline | Exact recovery as epsilon tends to zero | Z0, finite events, and defect-free local objective | Formal goal plus intended B0/B1/R0 | Fixed floor is removed, but chart chain is incomplete | Same T and no post-burn-in events | Exact contraction would reach zero after valid entry | Exact reference exists; generated entry does not | No surrogate target, but entry residual bridge is missing | Historical defects end before refinement | Z0 then B0/B1/R0 | Z0 and B1/R0 feed the final theorem | Exact state is stationary; near-exact state is not trapped | `sketch/interface defect` | `/proof-sketch` |

## Blocking Issues

1. **The stopped tape event is vacuous and W0's per-block event is not
   source-adequate.** With sigma defined as the first failure or unresolved-set
   exhaustion, every `G_e` for `e < sigma` holds by definition, so the displayed
   intersection omits the failure it must exclude. Even after fixing that
   logic, the absolute competitor window `O(T_norm*P^-30)` is far below the
   natural `T_norm*n^-3/2` scale in the orthogonal boundary case, and existence
   of one good candidate does not exclude a larger mixed global winner.
2. **P0's supported time exponent still consumes an unsupported persistent
   score.** The `P^103` calculation is now correct conditional on
   `s_t >= q_0/2`, but no recurrence proves that score against the changing
   actual residual or transfers W0's initial event through the full maturation
   path. D0 consequently lacks its all-candidate winner and duplicate-exclusion
   input, although its physical mass algebra is sound.
3. **L1 does not implement the attempt-3 reserve or polishing claims.** The
   overview and rate ledger use `B_tilde=P^12 B`, but the L1 potential and
   initial bound still use unscaled B. Its P0 recurrence has a `P^-156`
   steady-state floor during burn-in, which cannot yield the stated `P^-160`
   polishing potential while probationary components remain active. No
   polishing iteration or preservation-through-S relation is displayed.
4. **B0 does not produce either advertised quantitative output.** The section
   is unchanged from attempt 2: it asserts three `P^-36/4` defects but gives no
   inequality from Psi, cluster tensor error, leakage, and pruning to balanced
   distance, and it never derives `R_norm <= T_norm*P^-62`. Historical B_disc
   controls event path/loss, not these protected target-side quantities.
5. **B1 and R0 still lack the advertised first-exit and public-rate bridges.**
   B1 names a first-exit argument without comparing entry energy to minimum
   chart-boundary energy or controlling the current Jacobian. R0's contraction
   algebra is plausible, but the `P^-62` epsilon split exists only in overview
   text because B0 does not export it.
6. **Artifact identity and flow ledgers are stale.** The sketch body and
   technical survey still identify attempt 2, the survey omits every attempt-3
   interface, and the exported-interface/generated-flow tables mark W0, P0,
   L1, B0, B1, and R0 as blocker-free despite the failures above.

## Required Repair Bundle

1. **Repair W0 and the tape event at `/proof-sketch`.** Replace the stopped
   event by `sigma_U < sigma_fail` or an explicit recursive success sequence.
   Use a scale-compatible relative target-basin event and prove its conditional
   probability, trajectory amplification, and exclusion of every larger mixed
   or duplicate boundary candidate under global largest-score promotion.
2. **Repair P0/D0 at `/proof-sketch`.** Keep the valid `P^103` horizon, but
   expose a one-step score/angular defect recurrence that preserves a positive
   source against all residual changes until actual target-error reduction.
   State the exact margin passed to D0 and retain the current physical Q/U mass
   transfer.
3. **Repair L1 at `/proof-sketch`.** Decide whether event effects require B or
   `B_tilde`, put that same reserve in the actual Lyapunov and initial bound, and
   state one epochwise recurrence. Quantify the final-Q epoch and the remaining
   forced-nuisance polishing window; choose a polishing exponent no smaller
   than the proved steady-state floor or provide a mechanism that lowers it.
4. **Repair B0 at `/proof-sketch`.** Define Psi's exact relation to protected
   factor and tensor errors, then derive explicit inequalities from the final
   polished state and pruning to both `dist_bal <= P^-36/4` and
   `R_norm <= T_norm*P^-62`. Use B_disc only where its path/loss units apply.
5. **Repair B1/R0 at `/proof-sketch`.** Control the current Jacobian on the
   chart and write the boundary-energy calculation, for example boundary
   residual of order `P^-44` versus entry residual at most `P^-58` after using
   `T_norm <= P^4`. Then state the exact epsilon case split and derive the
   `8P^66 log(1/epsilon)` bound from accepted inputs.
6. **Synchronize the attempt artifacts at `/proof-sketch`.** Correct the
   attempt identity, update the survey's source/transfer map, and revise the
   interface and flow tables so `None` appears only after each producer
   relation is actually present.

All repairs preserve the primitive assumptions, guarded algorithm, rank,
one-tape probability modes, exact target, metric, and success criterion.

## Review Rationale

Attempt 3 makes two useful repairs: it replaces the false `P^75` maturation
claim by a supported `P^103` conditional calculation, and it recognizes the
need for stopped probability accounting, a coherent reserve, polishing, an
entry residual, and an energy barrier. Physical target mass is still preserved
correctly, and historical event forcing remains absent from exact refinement.

The new central interfaces are not yet valid. The stopped event is true by
construction, the weighted W0 event has an unsupported probability at the
chosen absolute scale, the scaled reserve and polishing claim are inconsistent
with the actual L1/P0 formulas, and the B0/B1/R0 repairs appear only in overview
prose. These are substantial sketch and exported-interface defects, but they
do not yet prove that the unchanged theorem contract is impossible. A score of
5 and `REVISE_SKETCH` therefore identify `/proof-sketch` as the smallest sound
retry.
