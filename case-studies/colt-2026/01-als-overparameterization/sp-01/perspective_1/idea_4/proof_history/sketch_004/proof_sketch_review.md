# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: perspective_1/idea_4.
- Sketch attempt: 4 (revision after the archived sketch_003 review).
- Goal mode: exact-goal mode. The simultaneous JEP-ALS protocol, rank
  U(r), nested probabilities, baseline map, and arbitrary relative error
  target are unchanged.
- Reviewed artifacts: current setting.md and proof_sketch.md, plus
  proof_history/sketch_003/proof_sketch_review.md.
- Review scope: selected-member inheritance, post-update m_s/eta_s,
  same-target residual, row/column ALS tube, D_K conjugation, pairwise
  contraction, baseline, rate specialization, and generated-output flow.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: Attempt 4 preserves the exact theorem contract, the
  simultaneous old-state proposal map, the subquadratic rank, the q=0
  baseline, zero padding, and arbitrary relative accuracy.
- Dependency audit: The roadmap remains acyclic. A selected-member transfer
  is now allocated, and the local phase uses a row/column tube rather than an
  unrestricted max-column ball. The selected-member transfer does not yet
  produce the global eta consumed by step_007.
- High-risk coverage: Static geometry, rare entry, R,S, score/cluster,
  selected-member inheritance, incoming leakage, quotient curvature,
  pseudoinverse stability, tube preservation, stopping, baseline, and runtime
  are all localized. The tube constants are plausible; the S1-S2 transfer and
  final interface tables remain inconsistent.
- Explicit-rate coverage: c_win, beta_*, coverage, m_10<=2.3e-6, and
  256*(18q_*^2)=2.74658e-4<1/2048 are numerically consistent. The selected
  member is only shown a weaker individual bound, so the displayed residual
  constant is not yet attached to the actual initialization.
- Assumption and citation plausibility: Generated conditions are not promoted
  to primitive assumptions. The Uschmajew role, scaling quotient, and D_K
  conjugation are source-compatible in outline. The new tube norm must be
  defined explicitly before its pairwise contraction can be source-mapped.

## Early Obstruction Audit

- Limiting-case stress: At q_real=0 and Gamma=1 the exact simultaneous map is
  (A+,B+,C+)=(BC,AC,AB), so R+<=R^2 and S+<=R S. The q=0 endpoint is
  separated correctly, and the exact balanced CP point has zero residual.
- Theorem-critical bridge support: The window/coverage and score-gap
  arithmetic from the prior attempt remains plausible. The corrected m_10
  bound follows because 4*(4.5e-7)+8q_*^2<2.3e-6. The tube boundary gives
  8/256+4q_*/512+q_*^2<1/16, so the stated 7/8 Gram floor is conservative.
- Exported-interface feasibility: The selected score is at least the covered
  score, but S1 gives
  d_i+m_i+eta_i <= 4*(8q_*^2)+24q_*^2=56q_*^2,
  not the three 32q_*^2 bounds in S2. More importantly, eta is a row/column
  mass of the whole target-indexed matrix; a score inequality for one member
  can control its column error, not incoming mass accumulated across all
  selected targets.
- Theorem-critical mechanism witness gate: Q1 and the reachable-tube
  recurrences expose their positive terms, forcing, and finite budgets. The
  S1 witness has the right observable source but the wrong exported constant
  and no source-to-claim match for global eta. Thus step_007 still lacks the
  actual selected-representative matrix certificate.
- Entry-state / activation trace stress: Covered proposals, q=0 proposals,
  and the exact CP state are traced. The selected ALS initialization is not
  certified at eta<=32q_*^2 by S2. If only the literal S1 arithmetic is used,
  individual errors are at most 56q_*^2, while aggregate incoming row mass can
  still grow with r absent a joint transfer lemma.
- Obligation locality classification: Geometry, windows, coverage, R,S,
  angle, mixture exclusion, Q1, quotient kernel, and the tube algebra are
  step-local. The selected-member global row/column certificate and its
  residual export are sketch/interface defects. Pairwise tube contraction is
  also an interface defect until the tube norm is defined.
- Noncircular closure gate: The proposal and Q1 recurrences are noncircular.
  The ALS tube is a valid closure shape in principle, but its entry producer
  currently assumes the global eta conclusion that S1-S2 has not proved.
- Mechanism-source and boundary stress: The aggregate Gram counterexample
  from sketch_003 is addressed by adding eta to T_ALS. At the tube boundary,
  the pairwise coefficient is
  1/300+8*(2/256+2/512)=0.0971<1/8, and the 1/16 recurrences preserve both
  numerical bounds. These calculations pass if eta and the tube norm are
  legally produced.
- Generated-output flow: The narrative flow now includes S1-S2 and the tube,
  but the final feasibility and generated-flow tables still describe a
  full-ball wrapper with a 3/4 floor and (4/3)^2 inverse constant rather than
  the attempt-4 tube with 7/8 and (8/7)^2. Those stale rows violate the
  generated-output and gate-evidence contracts.
- Source-to-claim adequacy: D_K conjugation correctly separates raw scale from
  normalized directions. The Hadamard row/column bound is the right source
  for dimension-free Gram control. The notation norm_T is never defined, so
  the pairwise Phi inequality lacks a fixed domain norm and gauge convention.
- Object-target compatibility: Best-scalar representatives, D_K-normalized
  factors, and the exact CP target refer to the same tensor. The balanced
  gauge and polynomial kappa_0 bounds are plausible. The actual selected
  matrix must first receive a global eta certificate.
- Residual-to-target adequacy: The 2.74658e-4 comparison is correct for
  eta_L<=17q_*^2. S2, even as written, gives 32q_*^2 rather than 17q_*^2;
  256*(33q_*^2)=5.0354e-4>1/2048. Literal S1 gives 56q_*^2. Therefore the
  stated residual/radius-quarter bridge is not produced for selected factors.
- Baseline invariance audit: The exact simultaneous map, zero forcing at q=0,
  exact CP point, zero padding, and epsilon->0 conclusion are preserved. No
  conservative baseline remainder is introduced.
- Scope-accumulation compatibility: Q1 has explicit finite-horizon forcing.
  T_ALS has explicit column and eta recurrences with fixed point below
  64q_*^2. Once entry eta and norm_T are fixed, the all-sweep closure is
  accumulation-compatible and dimension-free in r.
- Scope and dependence consistency: Rank and restart confidence remain
  separated. The tube removes the hidden r dependence from the full-ball
  claim. Any corrected selected-member residual must be propagated through
  the stopping and runtime constants.
- Generated-condition provenance: Geometry, coverage, cluster membership,
  selected-member error, eta, tube entry, contraction, and success remain
  derived. The defect is a missing derivation from individual selected scores
  to a joint generated matrix condition.
- Citation and tool applicability: Source identity, labels, same-loss mapping,
  scaling quotient, and local non-output boundary are named. The current
  direct wrapper, rather than the citation, must define norm_T and prove the
  pairwise row/column estimate.
- Same-setting repair plausibility: Replace S2 by a joint matrix transfer
  whose constants follow from S1 and score ordering, or use the selected
  members as the initial state of a separate finite joint recurrence. Define
  norm_T and update the stale interface tables. No theorem-contract change is
  required.
- Target-preserving bridge-repair gate: Passes. The weaker 56q_*^2 scale is
  still well inside the 1/512 tube radius, although it no longer gives the
  claimed radius-quarter constant. The basin/rate bridge can be recomputed
  without changing the algorithm, rank, metric, or success criterion.
- High-risk obligation classes: Coverage, score separation, m_10, D_K, tube
  Gram/inverse, pairwise coefficient arithmetic, baseline, and restart
  arithmetic pass at sketch level. Joint selected-member eta, residual
  specialization, tube-norm definition, and final flow tables remain blocking.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Realized norms, Gram rows, weights, KR floor | static instance event | Gaussian concentration and Schur product | primitives -> step_001 | matches realized factors | normalized-column convention | separate smoothing budgets | exports q_real<=q_* and Gamma<=1.01 | N/A: same object | finite union | primitives -> step_001 | step_001 -> 002,004,008,009 | orthogonal and norm boundaries pass | step-local | None |
| Window event and R_0,S_0 | anti-concentration entry | Gaussian windows and product tails | step_001 plus proposal randomness | exponent and pair products match | conditional Gram covariance | c_win/beta_* lower bound | k p_win>=8 log r; finite-r constant named | N/A: raw ratios consumed | finite competitor union | step_001 -> step_002 | step_002 -> 003,004 | window edge and denominator tested | step-local | /proof-sketch |
| All-target coverage | generated one-run source | independent slots and union bound | step_002 -> step_003 | miss bounds match | conditional slot independence | miss <=r^-8 per target | C_rank universal | N/A: label-free event | finite coupon scope | step_002 -> step_003 | step_003 -> 004,011 | no target independence needed | step-local | None |
| Simultaneous R,S recurrence | recursive alignment and baseline | old-state contraction expansion | geometry and coverage -> step_004 | exact map matches | q=0 endpoint correct | denominator invariant and f map | finite R,S horizon | N/A: same ratios | q forcing has fixed point | coverage -> step_004 | step_004 -> 005,006,007 | worst q and q=0 pass | step-local | None |
| Score gap and graph clusters | data-only membership | stationary support perturbation | step_005 -> step_006 | mixture/component margins pass | score and graph conventions match | .723 versus .844 gap | covered member retained in each chart | target-chart error only O(q_*) before S1 | finite graph | step_005 -> step_006 | step_006 -> step_007 | ties and thresholds tested | step-local | None |
| S1-S2 selected-member transfer | generated active initialization | score ordering plus last-update identity | covered member and step_006 | individual score source does not match global eta claim | target labels proof-only; selection data-only | S1 gives at most 56q_*^2, not 32q_*^2 | no joint incoming-row producer across selected members | selected residual constant not produced | individual defects can align by row | missing joint transfer producer | step_006 -> step_007 | selected member passes score, global row stress fails | sketch/interface defect | /proof-sketch |
| Q1 m_s/eta_s closure | finite joint leakage recurrence | Hadamard row/column expansion | R_s -> step_007 | m_10 and eta fixed point match covered trajectories | target-indexed matrices | m_10<=2.3e-6, eta coefficient<=1/4 | needs valid selected-matrix seed | residual target exact after seed | 8q_*^2 forcing plus transient | repaired S2 -> Q1 | step_007 -> 008,009 | q=0 forcing vanishes | sketch/interface defect | /proof-sketch |
| Best-scalar residual | residual-to-target / tube entry | row/column decomposition | step_007 | 17q_*^2 source not inherited from S2 | D_K and sign mapping match | 256(eta+q_*^2) | 18q_*^2 gives 2.74658e-4 | S2 gives at least 33 or 57 units, not 18 | finite static decomposition | repaired eta -> residual | step_007 -> 008,009 | exact q=0 residual retained | sketch/interface defect | /proof-sketch |
| Quotient Jacobian kernel | identifiability / curvature | dual bases and KR floor | steps 001,007 plus cited Assumption 1 | source fits kernel claim | same loss and scaling quotient | positive quotient margin | full rank available | exact target | static | step_001,007 -> 008 | step_008 -> 009 | scaling nullspace removed | step-local | None |
| D_K tube Gram and inverse | pseudoinverse interface | conjugation and eta-controlled Hadamard bound | step_008,009 | source matches dimension-free claim | balanced gauge explicit in outline | Gram diff<=1/16, floor>=7/8, inverse<=8/7 | T_ALS bounds are numerically adequate | same tensor target | row/column mass prevents r growth | valid eta entry -> tube estimate | step_009 -> 010 | boundary arithmetic passes | step-local | None |
| Pairwise tube contraction | all-time local stability | source derivative plus direct tube remainder | step_008,009 | coefficient .0971<1/8 | norm_T and gauge not defined | pairwise Phi inequality and 1/16 recurrences | tube invariant if norm_T is fixed | exact target, no floor | fixed point below64q_*^2 | tube Gram -> derivative -> Phi | step_009 -> 010 | exact point and tube boundary pass | sketch/interface defect | /proof-sketch |
| Baseline invariance | exact/noiseless specialization | simultaneous map and exact CP point | setting plus 004,008,010 | preserves exact conclusion | q=0 and D_K compatible | exact squaring and zero residual | no weaker surrogate | exact target | zero forcing | baseline -> all producers | final theorem | first transition passes | step-local | None |
| Restart and public rate | confidence/runtime bridge | conditional independence and costs | steps 003,010,011 | formulas match conditional goal | same tensor, fresh runs | failure geometric; runtime polynomial | upstream selected/tube interface unresolved | returned output conditional | finite restart multiplier | repaired chain -> step_011 | step_011 -> final theorem | delta and epsilon boundaries pass | sketch/interface defect | /proof-sketch |

## Blocking Issues

1. **S1-S2 arithmetic and claim type:** From the displayed covered score,
   S1 implies d_i+m_i+eta_i<=56q_*^2, not separate 32q_*^2 bounds. In
   addition, eta is the global row/column l1 mass of the selected
   representative matrix; a one-member score inequality cannot control
   incoming mass across all selected targets. Downstream effect: step_007
   has no legal selected-matrix seed. Smallest repair: state separate
   per-column and global quantities and prove a joint selected-member
   row/column lemma with valid constants.
2. **Residual/radius specialization:** The residual 2.74658e-4 uses
   eta_L<=17q_*^2 from Q1. S2 does not transfer that value to the actual
   selected matrix. Even its claimed 32q_*^2 gives
   256*(33q_*^2)=5.0354e-4>1/2048. Downstream effect: the radius-quarter
   entry claim and rate constants are unsupported. Smallest repair: derive a
   valid joint eta bound and recompute the entry margin; entry into the full
   1/512 tube may still be possible.
3. **Undefined tube norm:** The pairwise inequality uses norm_T without
   defining its column/eta weighting, quotient gauge, or difference eta.
   Downstream effect: pairwise Lipschitz and source-convention compatibility
   cannot be audited. Smallest repair: define norm_T explicitly and derive
   the displayed pairwise and invariance inequalities in that norm.
4. **Stale exported interfaces:** The final feasibility and generated-flow
   rows still say full ball, 3/4 Gram floor, and (4/3)^2 inverse constant,
   while attempt 4 uses T_ALS, 7/8, and (8/7)^2. Downstream effect: the
   generated-output and Gate Evidence Row contracts are internally
   inconsistent. Smallest repair: update every public interface and consumer
   path to the selected-member tube outputs.

## Required Repair Bundle

1. Replace S1-S2 by a joint transfer theorem. Define member-local column
   error separately from matrix-level incoming row mass, prove score ordering
   controls the former, and provide an independent Hadamard/selection
   argument for the latter.
2. Recompute selected-factor residual and quotient entry using the resulting
   global eta constant. Preserve the exact target and state whether entry is
   within varrho, varrho/4, or only T_ALS.
3. Define norm_T, including quotient gauge, column component, row/column
   component, and weighting. Prove the pairwise contraction and both
   1/16 invariance recurrences in that same norm.
4. Update the Exported Interface Feasibility, Generated Output Flow, step
   table, rate specialization, and mechanism rows to use T_ALS, 7/8,
   (8/7)^2, and the corrected selected-member constants.
5. Add the missing Gaussian-window upper bound for the literal Theta statement
   and retain the already valid q=0, m_10, D_K, baseline, and restart
   calculations.

Target-preserving repair check: the corrected 56q_*^2 scale is still much
smaller than the tube's 1/256 eta boundary and gives a column-scale error below
1/512 after a modest constant recomputation. The repairs can preserve the
algorithm, assumptions, rank exponent, tensor metric, baseline, and success
criterion. The smallest retry remains /proof-sketch.

## Review Rationale

REVISE_SKETCH is the deepest required change. Attempt 4 successfully replaces
the false full max-column ball by a dimension-free row/column tube and fixes
the m_10 arithmetic. Its selected-member transfer, however, confuses
individual and global row/column quantities and does not support either S2 or
the advertised 18q_*^2 residual scale. The tube norm and public flow rows also
need synchronization. These are theorem-facing but target-preserving
interface repairs, so the aligned outcome is score 6, retry /proof-sketch,
mode revise_sketch.
