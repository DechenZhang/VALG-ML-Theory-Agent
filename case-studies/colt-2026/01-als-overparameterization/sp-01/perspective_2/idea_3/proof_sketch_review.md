# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_3`.
- Sketch attempt: 9.
- Reviewed artifact: `perspective_2/idea_3/proof_sketch.md`.
- Supporting survey: `perspective_2/idea_3/technical_survey.md`.
- Binding setting: `perspective_2/idea_3/setting.md` in exact-goal mode.
- Triggering review: the attempt-8 review archived at
  `perspective_2/idea_3/proof_history/sketch_010/proof_sketch_review.md`.
- Reviewed roadmap: E0, Z0, C0, J0, I0, clear-only epoch, independent reset,
  full-score W0, gap-sensitive P0, D0, L1, B0, B1, and R0.
- Identity audit: the current sketch and survey identify attempt 9. The sketch
  names `proof_history/sketch_009/proof_sketch_review.md` as its trigger,
  whereas the controller-supplied archived attempt-8 review is under
  `proof_history/sketch_010`; this path mismatch is metadata-only.

## Sketch Viability Score

3

## Sketch Review Status

IDEA_FAIL

## Smallest Retry Target

/subagent-idea-generator

## Retry Mode

new_idea

## Audit Summary

- Goal alignment: Attempt 9 preserves the exact guarded protocol, conditional
  base class, subquadratic rank, one finite tape, separate probability modes,
  polynomial work, and arbitrary relative accuracy. The failure is not target
  drift; it is that the fixed protocol and tape law do not support the claimed
  burn-in transition.
- Dependency audit: The named graph is acyclic. Its first transition depends
  on a false clear-only time separation and a high-probability all-candidate
  event that is incompatible with the primitive reset law. D0 and L1 consume
  those unavailable outputs.
- High-risk coverage: The full-score identity, gap-sensitive coefficient, and
  eta-based first-exit route directly address the prior review. The full-score
  identity is repaired, but the joint W0 event conflates an existence event
  with an all-candidate exclusion, the P0 object controls signed cancellation
  rather than target purity, and the eta scale inequality is false.
- Explicit-rate coverage: The rate modes and exposed variables are stated.
  The claimed `P^114` probationary delay and
  `2 eta_max P^8 <= 1/8` do not follow from the displayed definitions. The
  latter is false as ambient dimension grows with the other structural
  quantities fixed.
- Assumption and citation plausibility: The disputed clear-only, W0-budget,
  P0-filter, and eta claims are novel current-notation obligations. No cited
  paper supplies them. Treating them as localized proof steps would hide
  source-to-claim failures.

## Attempt-8 Blocker Comparison

| Attempt-8 blocker | Attempt-9 disposition | Review finding |
| --- | --- | --- |
| Post-clear freshness under simultaneous probationary updates | Repeated at idea level | The sketch now inserts a clear-only epoch and later reset, but the asserted seed-to-threshold lower time uses no valid maximum-growth bound. A queued score may be only `q_0`, while fresh unresolved scores can be polynomially larger, so the fixed protocol does not prevent probationary parking or promotion during the alleged clear-only epoch. |
| Omission of unresolved coordinates from the W0 score | Materially repaired | `S = sum_{j in U} z_j + eta` is the exact protocol score at a genuinely independent reset, conditional on reaching such a reset with `Q` empty. |
| High-probability all-candidate winner filter | Repeated at idea level | `W0-budget` is false under the reset law: many candidates have positive full score far above the tiny `q_0` without satisfying the rare fixed-channel W0-full event. |
| Gap-insensitive P0 purity recurrence | Partially repaired | The contraction coefficient now contains `m_0`, and the target is weakened to `m_0/4`. However `pi` is only a signed-sum cancellation ratio, not off-channel purity, and the global filter still has no feasible producer. |
| False reverse-Armijo first-exit cap | Route changed but still unsupported | Reverse Armijo is removed, which is correct. The replacement depends on `2 eta_max P^8 <= 1/8`, an inequality contradicted by the definitions. This part remains sketch-repairable using actual local constants. |
| Interface/flow overstatement | Partially repaired | Tables now label three obligations as step-local blockers, but the clear-only and W0/P0 blockers are false current-contract interfaces and must be classified as idea/theorem-contract defects. |

## Early Obstruction Audit

- Limiting-case stress: Consider the allowed near-orthogonal equal-weight
  baseline. At a fresh reset,
  
  \[
  S_i=\sum_{j=1}^{|U|}z_{ij}+\eta_i
  \]
  
  has its natural product-chaos scale, whereas
  `q_0 = norm(T) P^-30` is far smaller. A constant fraction of fresh
  candidates therefore have `S_i > q_0(1+m_0/4)`. For a fixed tie-broken
  `j_star`, W0-full additionally requires that coordinate to be the largest,
  so its probability is at most `1/|U|` even before the cancellation window.
  Thus with k fresh candidates there are overwhelmingly many positive-score,
  non-W0-full candidates, contradicting W0-budget for every candidate.
- Theorem-critical bridge support: E0/Z0, C0, J0/I0, the exact full-score
  identity, two-sided radial-time conversion, B0, and adjoint PL retain
  obstruction-level sources. Clear-only separation, W0-budget, target-pure
  P0 filtering, D0 winner selection, and the eta-based displacement do not.
- Exported-interface feasibility: The raw reset law plausibly exports the
  existence of at least one W0-full candidate at the rank budget. It does not
  export the simultaneous claim that every other candidate has initial
  potential at most `m_0 q_0/16`. The latter event becomes less likely as k
  grows, while the displayed exponential bound is only an existence-event
  calculation that becomes more likely as k grows.
- Theorem-critical mechanism witness gate: The clear-only witness compares a
  worst-case Q lower score with no valid upper score for probationary growth.
  The W0-filter witness uses an infeasible event. The P0 witness controls a
  signed aggregate that can vanish by cancellation while two off-target
  coordinates remain target-scale. These are idea/theorem-contract defects,
  not hard local calculations. The eta witness is a sketch/interface defect.
- Entry-state trace stress: Immediately after a promotion, the protocol
  resets all other probationary components but then updates Q and those fresh
  components simultaneously. The Q component is guaranteed only a score of
  order `q_0`; an unresolved candidate may have a much larger positive score.
  No first-update relation prevents that candidate from reaching theta before
  Q matures. At a query reset, a candidate with two large, oppositely signed
  off-target coordinates can satisfy the signed cancellation window while
  remaining highly mixed.
- Obligation locality classification: E0, Z0, C0, J0, I0, the full-score
  identity, W0-full existence calculation, two-sided radial-time algebra,
  B0, B1 adjoint PL, and conditional R0 are `step-local`. The eta/Jacobian
  scale conversion is a `sketch/interface defect`. Clear-only scheduling,
  all-candidate W0-budget, signed-cancellation-to-target-purity transfer,
  P0 global-winner filtering, D0 injective assignment, L1 transition closure,
  and end-to-end burn-in are `idea/theorem-contract defect`.
- Noncircular closure gate: The proposed clear -> reset -> W0 -> P0 -> D0
  order is syntactically noncircular. It is not productive because the clear
  event and all-candidate event have no legal producers. L1 consequently
  assumes the successful transition that it must derive.
- Mechanism-source and boundary stress: The fixed promotion rule chooses the
  largest raw residual score, not a certified W0-full candidate. W0-full is a
  rare existence event by design. W0-budget tries to exclude all competing
  high-score candidates, but its first positive-part term is already larger
  than `m_0 q_0/16` whenever
  `S_i > q_0(1+5m_0/16)`, an ordinary event for many fresh candidates. No
  gap-sensitive contraction can repair an initial event that fails for a
  constant fraction of k candidates.
- Generated-output flow: The flow breaks at I_e -> clear-only, independently
  at reset law -> W0-budget, and again at signed cancellation -> target-pure
  P0 basin. D0, L1, B0, and the final theorem consume outputs downstream of
  these breaks. The late B1 eta break is independent.
- Source-to-claim adequacy: A scalar cancellation window supplies a signed
  full-score margin, not structural channel purity. For example, one winner
  coordinate can exceed two competitors by the required `1+m_0` factor while
  those competitors have nearly equal opposite signs. Their sum, and hence
  pi, is zero, but their off-channel norm is order one relative to the winner.
  Such a state cannot source the claimed true-channel queue and cluster map.
- Residual-to-target adequacy: The produced W0 object is a high-score signed
  cancellation state. The consumed D0 object is a noncancelling
  representative of one target channel. The residual decomposition leaves
  uncontrolled off-channel coordinates of the same order as the winner; no
  dominance relation transfers the produced state to the consumed target
  basin.
- Baseline invariance audit: Z0 still preserves the exact zero-residual
  representation, and the post-pruning plan has no additive floor. The
  arbitrary-epsilon baseline is not weakened, but it is unreachable through
  the asserted burn-in chain. Repair by weakening the target to mixed-score
  promotion would change the injective-assignment and chart-entry success
  criterion.
- Scope-accumulation compatibility: The scaled discrete reserve remains a
  valid finite telescope. The prefix probability does not: W0-full existence
  and W0-budget-for-all have opposite k-dependence and cannot share the
  displayed failure bound. The P0 signed potential also does not control
  accumulated off-channel mass. B1 accumulation is valid only after replacing
  its false eta scale conversion.
- Scope and dependence consistency: The theorem is uniform over all
  `n >= C r log r`. With r, k, kappa, rho, and target norms fixed while n
  increases, P grows linearly in n but eta_max has no matching n^-8 factor.
  Hence `eta_max P^8` diverges, disproving the claimed uniform scale check.
- Generated-condition provenance: The `P^114` seed delay, all-candidate
  W0-budget, P0 target purity, global winner, and `2 eta_max P^8 <= 1/8`
  are declared generated outputs without sources adequate to their claim
  class. They cannot be moved into the tape event or treated as local
  assumptions.
- Citation and tool applicability: The homogeneous-dynamics source motivates
  radial/angular recurrences but does not supply clear-only scheduling,
  product-chaos all-candidate exclusion, or signed-cancellation purity. The
  ALS source does not supply the GD transition. The local eta repair must be
  derived directly from the actual Jacobian constants.
- Same-setting repair plausibility: A local rewrite can repair B1 by using
  actual eta-compatible Jacobian/Lipschitz constants. It cannot make the
  fixed simultaneous protocol clear-only or make W0-budget high probability.
  A viable repair must freeze or reset probationary components during queue
  maturation, change promotion from raw largest score to a certified basin
  score, increase the rank/tape budget enough for a stronger global event, add
  a structural assumption, or weaken injective channel assignment. Each is a
  procedure, exposed-dependence, assumption, or success-criterion change.
- Target-preserving bridge-repair gate: Same-setting sketch repair is
  insufficient. The attempt-8 review made attempt 9 decisive if the
  fixed-protocol W0/P0 transition remained unsupported. It remains
  unsupported for explicit probability and object-target reasons. Route to
  `/subagent-idea-generator` with a new algorithmic or theorem-contract idea.
- High-risk obligation classes: adaptive entry timing, full-score
  anti-concentration, all-candidate probability, signed versus norm purity,
  winner selection, repeated promotion, event accumulation, same-target chart
  entry, eta-based first exit, public rate conversion, and exact no-floor
  convergence were all audited.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E0/Z0 | Instance geometry and exact baseline | Gaussian concentration, KR slack, balance | Primitive assumptions and direct algebra | Plausible exact match | Same normalized factors and actual T | `1/64` margin -> `1/32`; exact CP identity | Base margins export realized geometry and Z0 | Z0 equals actual T | Static finite union | assumptions -> step_001 -> step_002 | Feeds all later blocks | T=0, small-column, zero-slot, cap tests addressed | `step-local` | `None` |
| C0 step/reserve | Globalization and event accounting | Guard gaps, smoothness, remaining-path reserve | Direct protocol calculation | Correct claim class | Actual trial and retained tensor state | Armijo plus scaled reserve decrement | Gmax/Lmax/Rbar/Bdisc export retained descent | Actual F and tensor path | Finite telescope | Z0 -> step_003 | Feeds dynamics and R0 | Zero gradient and projection addressed | `step-local` | `None` |
| J0/I0 | Activation and physical residual split | Cubic identity and A/Q/U ledger | Direct objective algebra | Correct locally | Same homogeneous CP convention | Exact seed injection and target partition | I0 direct; generic I_e conditional | Retains actual Q/U errors | One-epoch interface | C0 -> step_004 -> step_005 | Feeds transition | Joint-zero and empty-set cases addressed | `step-local` | `None` |
| Clear-only epoch | Fresh query-state producer | Claimed queue/seed time separation | Intended direct dynamics | Wrong source comparison | Fixed protocol updates Q and probationary states together | Q has only q0 lower score; no probationary maximum-growth delay | `P^103 < P^114` is asserted without compatible bounds | U-driven probationary state is uncontrolled | Repeated simultaneous updates | I_e -> alleged clear -> reset | Should feed W0 | Q nonempty and U high-score entry fails | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| W0 full-score identity | Actual protocol score | Exact residual decomposition at reset | Direct algebra | Exact match conditional on fresh reset | Same T, directions, and score | `S=sum_U z+eta` | Includes every unresolved coordinate | Actual protocol score | Static reset identity | valid reset -> step_006 | Feeds W0 event/P0 | Sign and tie remain event branches | `step-local` | `None` |
| W0-full existence | One certified candidate | Product-chaos gap and cancellation window | Proposed direct probability lemma | Plausible existence claim | Same Haar/product convention | `p_full >= c/(r^(3/2) log r)` | k trials can produce one candidate | Same full score, but only one candidate | At most r queries | reset law -> step_006 | Feeds P0 | Orthogonal baseline is probability-compatible for existence | `step-local` | `None` |
| W0-budget for all candidates | Global competitor exclusion | Claimed same product-chaos calculation | Proposed direct event | Source-to-claim mismatch | Same reset law exposes many ordinary positive scores | Requires every non-full candidate to have potential at most `m_0 q_0/16` | Positive-score non-full candidates occur with constant probability | No target basin for those candidates | Failure probability grows with k | No legal producer | Should feed P0/D0/tape event | Equal-weight orthogonal reset fails with overwhelming probability | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| P0 radial time | Finite pre-parking gain | Two-sided radial recurrence | Direct dynamics target | Correct implication if hypotheses hold | Same g,b and cap | Two-sided g recurrence -> logarithmic sum b | Positive target score and radius ratio suffice | Same candidate radius | Finite to first crossing | W0 -> step_007 | Feeds score dynamics | Seed/cap boundary passes conditionally | `step-local` | `None` |
| P0 signed-purity state | Claimed target basin | pi/gamma signed potential | Proposed direct recurrence | Signed cancellation is not off-channel purity | Same score but wrong structural metric | pi can vanish with large opposite competitors | W0 raw controls do not bound competitor norm | Produced mixed state is inadequate for one target | Off-channel terms persist | W0 -> alleged P0 basin | Should feed D0/L1/B0 | Opposite-sign competitor stress fails | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| P0 global filter | Largest-score winner | W0-budget and contracting potential | Proposed direct barrier | Initial producer is false; score term has wrong population support | Same raw promotion rule | Claimed non-basin score upper versus W0-full lower | No feasible all-candidate initial budget | Winner need not map to unresolved target | All k candidates; repeated epochs | P0 is first alleged producer | Feeds D0 | Typical high-score mixed candidate is unfiltered | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| D0 transition | Injective physical assignment | Certified global winner plus Q/U ledger | Conditional algebra | Ledger matches, certified winner absent | Same largest-score protocol | Move one target U -> Q without deletion | Feasible only after invalid filter | Mixed winner cannot be assigned to one target | Repeated at most r times | P0 -> step_008 | Feeds L1/I_next | Duplicate/mixed branch unresolved | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| L1/polishing | Repeated burn-in closure | Transition, scaled reserve, Lyapunov | Conditional induction | Reserve matches; transition source absent | Actual F/M/Psi | Finite telescope and polishing recurrence | Raw ledger cannot create missing assignment | Same target conditional on D0 | Finite reserve; invalid transition repeats | I0 + alleged transitions -> step_009 | Feeds B0 | Final-Q case only passes conditionally | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| B0 entry | Same-target chart/residual | Psi polishing, cluster map, Z0 | Direct conditioned bridge | Plausible after a valid L1 | Exact protected target chart | Psi -> h -> exact residual | Exponents support chart conditionally | Actual post-pruning T | One-time | L1 -> step_010 | Feeds B1/R0 | h=0 and margin pass conditionally | `step-local` conditional on repaired idea | `/subagent-idea-generator` |
| B1 adjoint PL | Local coercivity | J-star normal term minus D/N | Direct current-notation algebra | Correct claim class | Same post-pruning residual/Jacobian | Leading P^-6 term dominates quadratic errors | Chart radius controls D/N | Exact residual | Defect-free local chart | B0/Z0 -> step_011 | Feeds first exit/R0 | Null and least-singular directions addressed | `step-local` | `None` |
| B1 eta displacement | Basin preservation | Protocol eta ceiling and local Jacobian upper bound | Proposed direct scale bridge | Displayed P-scale implication is false | P includes n, eta need not include n^-8 | Claims `2 eta P^8 <=1/8` | Definitions do not export this inequality uniformly | Endpoint annulus remains unproduced | Repeated refinement steps | B1 is first alleged producer | Feeds R0 | Large-n stress fails | `sketch/interface defect` | `/proof-sketch` |
| R0 public rate | Exact no-floor convergence | C0 lower step, B1 PL/preservation | Conditional standard recurrence | Correct only after entry/preservation | Exact Frobenius objective | Geometric factor and epsilon split | Rate algebra is feasible conditionally | Exact public residual | No post-pruning forcing | C0+B0+B1 -> step_012 | Final theorem | F=0 passes; reachable entry fails | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| Baseline/end-to-end flow | Exact epsilon-to-zero result | Z0, burn-in transition, local PL | Formal goal and derived chain | Exact object preserved; chain broken | Same T and metric | No forcing after pruning | Exact reference exists, reachable chart does not | No surrogate allowed | Burn-in failure precedes local phase | Z0 -> alleged L1 -> B0 -> B1 -> R0 | Final theorem | Exact state stationary; produced path unsupported | `idea/theorem-contract defect` | `/subagent-idea-generator` |

## Blocking Issues

1. **The clear-only epoch is incompatible with the fixed simultaneous
   protocol.** Location: roadmap item 5, step_005/step_006, and W0 source
   adequacy. A queued component is guaranteed only a score of order q0,
   while fresh unresolved candidates can have much larger scores. No valid
   upper-growth recurrence gives the claimed `P^114` probationary delay.
   Downstream effect: the protocol may park or promote a probationary
   component before the claimed independent query reset. Smallest repair:
   change the procedure to freeze/reset probationary components during queue
   maturation, or abandon the freshness-dependent transition.
2. **W0-budget is a repeated, false all-candidate event.** Location:
   step_006 `(W0-budget)` and the tape failure bound. In the equal-weight
   near-orthogonal baseline, a constant fraction of reset candidates have
   full score above q0, while a fixed-channel W0-full event applies to only a
   vanishing fraction. Their potential therefore exceeds the budget. The
   displayed exponential calculation proves at most existence of one good
   candidate and cannot prove exclusion of all bad competitors. Downstream
   effect: P0/D0 cannot certify the raw largest-score winner. Smallest repair:
   change the promotion rule to select a certified candidate, change the
   rank/event/threshold contract, or weaken the assignment criterion.
3. **Signed cancellation is not target purity.** Location: step_007
   `pi`, `P0-purity`, and `P0-filter`. Large opposite-sign off-target
   coordinates can make pi zero while the component remains strongly mixed.
   Downstream effect: D0's one-target queue, noncancellation, cluster map, and
   chart entry have no residual-to-target bridge. Smallest repair: require
   norm-level off-channel control and provide enough dynamics or sampling to
   obtain it; prior attempts show the fixed mild-gap/parking budget does not.
4. **The eta-based first-exit scale check is false as written.** Location:
   the rate ledger and B1-step-cap. `P^8` grows as `n^8`, while the defined
   eta ceiling has no corresponding uniform `n^-8` scaling for fixed target
   norms. Downstream effect: the `9/8` annulus and chart preservation are
   unproved. This issue alone is sketch-repairable using actual Jacobian and
   eta-compatible constants, but it does not cure the idea-level burn-in
   obstruction.
5. **The interface tables misclassify false mechanisms as step-local.** The
   clear-only, W0-budget, and signed-purity/global-filter rows require changes
   to the fixed procedure, exposed rank/event contract, or success criterion;
   they are not local proof obligations.

## Required Repair Bundle

1. **Revise the idea/procedure at `/subagent-idea-generator`.** Replace the
   asserted clear-only behavior by an actual protocol operation, such as a
   protected-only queue-maturation phase followed by an independent reset, or
   propose a different transition that does not consume post-update freshness.
   This is a changed algorithm/procedure and must be re-formalized.
2. **Revise promotion at `/subagent-idea-generator`.** The raw largest-score
   rule must either be replaced by a checkable basin/purity certificate, or
   the new idea must supply a probability-compatible mechanism making the
   global winner certified. Raising the threshold, increasing the rank/tape
   budget, adding an assumption, or weakening injective assignment must be
   recorded as the corresponding exposed-dependence, assumption, or success-
   criterion change.
3. **Use norm-level target purity in the new idea.** Track the off-channel
   l2/tensor residual needed by the physical Q/U transfer and cluster map.
   A signed aggregate cancellation window cannot be the target-side basin
   certificate. State how the revised sampling or longer/certified dynamics
   produces this norm control before promotion.
4. **Preserve valid modules while re-formalizing.** E0/Z0, guarded C0 and its
   scaled reserve, physical target-error bookkeeping, B0's intended same-
   target role, and B1's adjoint PL expansion can be retained if compatible
   with the new procedure.
5. **Repair local first exit in the revised branch.** Replace
   `2 eta_max P^8 <=1/8` by a calculation using the actual local Jacobian,
   balancing-map Lipschitz constant, and the exact eta denominator. This is a
   local proof-interface repair after the new setting is fixed.

No target-preserving sketch-only repair exists for the deepest blockers.
Adding W0-budget to the tape-success event would make that event exponentially
unlikely, not high probability. Making the epoch genuinely clear-only or
making promotion choose the certified candidate changes the fixed algorithm;
allowing mixed promotion weakens the theorem's injective-assignment and chart-
entry success criterion; and obtaining a much stronger candidate event may
change the exposed rank/tape budget. These are exactly the theorem-contract
changes requiring idea revision.

## Review Rationale

Attempt 9 genuinely repairs the full-score identity and correctly introduces
gap sensitivity. It also removes the false reverse-Armijo route. The decisive
attempt-8 blockers nevertheless recur in stronger, checkable form.

The fixed protocol does not implement the claimed clear-only phase, and the
joint tape event combines one rare-good-candidate existence claim with an
all-other-candidates exclusion that is overwhelmingly false at the stated
tiny score threshold. Even a W0-full candidate is certified only by signed
cancellation, which does not provide the norm-level one-channel object D0 and
B0 consume. Reorganizing steps cannot change those probability and object-
target facts.

The attempt-8 review explicitly made this retry decisive if the fixed-rank,
fixed-parking, global-winner transition remained unsupported. It does.
Repair now requires changing the algorithm/procedure, exposed rank/event
budget, assumptions, or success criterion. `IDEA_FAIL`, score 3,
`/subagent-idea-generator`, and `new_idea` are therefore the contract-aligned
route.
