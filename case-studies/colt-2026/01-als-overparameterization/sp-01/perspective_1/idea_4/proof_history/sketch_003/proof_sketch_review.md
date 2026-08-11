# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: perspective_1/idea_4.
- Sketch attempt: 3 (revision after the archived sketch_002 review).
- Goal mode: exact-goal mode. The simultaneous JEP-ALS protocol, rank
  U(r), nested probabilities, baseline map, and arbitrary relative error
  target are unchanged.
- Reviewed artifacts: current setting.md, proof_sketch.md,
  technical_survey.md, and proof_history/sketch_002/proof_sketch_review.md.
- Review scope: post-first-update m_s and eta_s closure, residual scale,
  quotient norm, D_K conjugation, full-ball inverse/contraction,
  q=0 behavior, coverage, score/cluster, baseline, rates, and output flow.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: Attempt 3 preserves the exact theorem contract and correctly
  keeps the old-state simultaneous proposal map. The q=0 baseline, rank
  exponent, nested probability mode, zero padding, and no-floor residual target
  are not weakened.
- Dependency audit: The graph is acyclic and the generated-output tables are
  substantially more explicit. The row/column recurrence is now indexed, but
  its output is attached to all selected representatives even though the
  recurrence is sourced only from covered proposal trajectories.
- High-risk coverage: Static geometry, rare entry, R,S recurrence, angle,
  score/cluster, row/column leakage, quotient curvature, scale conjugation,
  pseudoinverse, terminal contraction, baseline, and runtime are all named.
  The selected-representative handoff and dimension-free full-ball norm are
  still theorem-critical interface defects.
- Explicit-rate coverage: The revised c_win and beta_* arithmetic supports the
  stated exponent, and 256*(18 q_*^2)=2.74658e-4 is indeed below 1/2048.
  The m_10 display is numerically too small, and the full-ball contraction
  relation is not valid under the quotient norm as defined. The public rate
  remains conditional on those repairs.
- Assumption and citation plausibility: Primitive assumptions and generated
  events remain separated. The Uschmajew source role and D_K mapping are
  plausible, but the source local theorem does not supply the asserted
  dimension-free Gram bound or the pairwise quotient Lipschitz estimate.

## Early Obstruction Audit

- Limiting-case stress: At q_real=0 and Gamma=1, the simultaneous map is
  (A+,B+,C+)=(BC,AC,AB), giving exact R+ <= R^2 and S+ <= R S. The revised
  f interval correctly treats q=0 separately as f_0([0,19/20])=[0,0.9025].
  The exact balanced CP point is stationary with zero residual.
- Theorem-critical bridge support: c_win is about 0.00481791 and
  beta_* is about 1.05344, so the large-r lower bound, k p_win >= 8 log r,
  and the one-run coverage probability are arithmetically plausible. The
  score inequality
  (1/sqrt(2)+32q_*)*1.01 < .723 < .85(1-32q_*) < .844
  also passes. A trivial Gaussian-window upper bound and a uniform finite
  small-r constant are still only named, not displayed.
- Exported-interface feasibility: Q1 now gives a concrete post-update
  m_s/eta_s interface and the residual is below the chosen 1/512 basin
  radius divided by four. However, the algorithm selects the largest-score
  member of each retained cluster. Coverage proves that at least one member
  follows a windowed trajectory; it does not prove that the selected member
  is that member or that every retained target-chart proposal has the same
  post-update m_s bound. The row/column output therefore does not yet feed the
  actual ALS initialization.
- Theorem-critical mechanism witness gate: The Q1 witness has the right
  source and forcing terms. With the stated R_9 < 4.5e-7, however,
  4 R_9 + 8 q_*^2 is about 2.264e-6, not <2.0e-6. This remains below 1/64,
  so it is a repairable arithmetic correction. The full-ball witness
  (Gram perturbation <= 32 norm(e) + q_*^2) is not supported by the stated
  max-column quotient norm uniformly in r.
- Entry-state / activation trace stress: The rare-entry first transition,
  the exact q=0 transition, and the exact CP stationary state are traced.
  For the local basin, an allowed point can have every factor column within
  1/512 of its target while common transverse perturbations create a
  Khatri-Rao Gram row sum of order r times the fourth power of that error.
  Thus the claimed full-ball inverse activation is not certified for all
  allowed r.
- Obligation locality classification: Static geometry, Gaussian windows,
  R,S, angle conversion, and the score-gap lemma are step-local once their
  constants are proved. The selected-representative producer/consumer
  handoff and the full-ball normalized Gram estimate are
  sketch/interface defects. Terminal contraction and restart aggregation are
  step-local only after those interfaces are repaired.
- Noncircular closure gate: The proposal recurrence and eta fixed point are
  noncircular for a covered trajectory. The basin closure is circular as an
  exported theorem condition unless it is proved on a row/column-controlled
  tube or another norm that the ALS map preserves; a max-column ball alone
  does not provide that producer.
- Mechanism-source and boundary stress: The q_*^2 forcing and D_K diagonal
  conjugation are concrete. The missing source is aggregate control of
  arbitrary within-ball cross-column perturbations, not a missing scalar
  margin. The stationary score branches and graph threshold boundaries are
  otherwise explicitly addressed.
- Generated-output flow: The tables list geometry -> window -> coverage ->
  R,S -> score/cluster -> row/column -> basin -> contraction -> restart.
  The row/column producer is conditional on covered slots, while the
  cluster consumer uses data-selected representatives; this is a missing
  dependency/interface edge.
- Source-to-claim adequacy: The dual-basis calculation is suitable for the
  Jacobian kernel, and the source labels match the local ALS role. The
  diagonal formula for K and its inverse is algebraically valid when the
  chosen gauge is fixed. The claimed 32 norm(e) Gram estimate and pairwise
  Phi contraction still need a direct derivation in a norm controlling
  row/column mass.
- Object-target compatibility: D_K explicitly maps raw balanced factors to
  unit-direction factors and preserves the same tensor target. The quotient
  metric does not by itself bound the gauge matrices for every representative;
  the balanced gauge and its polynomial kappa_0 bounds must be part of the
  exported interface.
- Residual-to-target adequacy: The corrected residual value
  2.74658e-4 < 1/2048 is numerically valid for varrho=1/512. The target is
  the exact realized tensor, not a surrogate. Adequacy is still conditional
  because the selected representative has not been shown to inherit eta_L.
- Baseline invariance audit: The exact simultaneous map, q=0 endpoint,
  balanced exact factors, zero padding, and arbitrary-accuracy limit remain
  intact. No conservative remainder replaces the baseline conclusion.
- Scope-accumulation compatibility: R,S has a finite dissipative recurrence;
  Q1 has explicit 8 q_*^2 forcing and a 1/4 coefficient after s=10.
  The all-time ALS scope lacks a valid aggregate norm relation on the stated
  full ball. A row/column tube or an explicitly trajectory-restricted
  invariant must be supplied.
- Scope and dependence consistency: Rank and restart factors do not hide
  confidence parameters, and raw diagonal costs may be polynomial in
  kappa_0 as allowed. Any row/column tube or radius change must expose its r
  dependence and preserve the stated rank/runtime specialization.
- Generated-condition provenance: Norms, coverage, alignment, filtering,
  clusters, eta, basin membership, convergence, and success remain derived
  outputs; no generated event was moved into setting.md.
- Citation and tool applicability: The source identity, labels, same-loss
  mapping, and scaling quotient are named. The wrapper must state its
  current norm, gauge choice, source hypothesis discharge, and non-output
  boundary before the basin claim is classified as step-local.
- Same-setting repair plausibility: Add a bridge proving that the
  data-selected representative inherits the covered-trajectory certificate,
  or redesign the retained-member certificate within the same protocol.
  Replace the max-column full ball by a row/column-controlled neighborhood or
  prove its preservation directly. These are target-preserving changes.
- Target-preserving bridge-repair gate: Passes. The corrected residual leaves
  a valid numerical margin, and the simultaneous proposal/rank protocol can
  be retained while strengthening the basin interface. No primitive
  assumption, algorithm, metric target, or success criterion must change.
- High-risk obligation classes: Coverage and score arithmetic pass at sketch
  level. Selected-member provenance, aggregate cross-column control,
  pseudoinverse stability on the preserved neighborhood, and final rate
  propagation remain the material repairs.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Realized norms, Gram rows, weights, KR floor | static instance event | Gaussian concentration and Schur product | primitive assumptions -> step_001 | matches realized factors | normalized-column convention matches | separate smoothing budgets and Schur row bound | exports q_real<=q_* and Gamma<=1.01 | N/A: same realized object | finite union only | primitives -> step_001 | step_001 -> step_002,004,008,009 | orthogonal and norm boundaries retained | step-local | None |
| Window event and R_0,S_0 | anti-concentration entry | Gaussian windows, regression, product tails | step_001 plus independent proposal randomness | exponent and pair products match goal | conditional covariance uses realized Gram | p_win lower bound and b_*/a_*=19/20 | c_win=.00481791, beta_*=1.05344, finite-r fallback | N/A: raw ratios are consumed | finite competitor union | step_001 -> step_002 | step_002 -> step_003,004 | lower window and denominator cases addressed | step-local | /proof-sketch |
| All-target coverage | generated one-run source | independent slots and union bound | random-initialization -> step_003 | k p_win>=8 log r | conditional slot independence exact | miss <=r^-8 per target, union <=r^-7 | C_rank>=16/c_win; small-r uniform constant still needed | N/A: label-free coverage event | finite coupon scope | step_002 -> step_003 | step_003 -> step_004,011 | no cross-target independence required | step-local | /proof-sketch |
| Simultaneous R,S recurrence | recursive alignment and baseline | direct old-state contraction expansion | JEP-ALS map plus geometry | source matches exact pair-product map | q=0 map and endpoint match | denominator invariant and f recurrence | q>0 floor plus separate q=0 endpoint | N/A: same target-relative state | additive q forcing has fixed point | coverage -> step_004 | step_004 -> step_005,006,007 | worst q and exact q=0 tested | step-local | None |
| Angle/displacement certificate | structural filter input | span membership and Gram inversion | step_004 -> step_005 | target metric and thresholds match | realized factor span is consumed | transient below q_*^2, d<16q_* | C_0 log r controls finite horizon | N/A: direct modewise metric | finite horizon only | step_004 -> step_005 | step_005 -> step_006,007 | zero denominator excluded by entry event | step-local | None |
| Score gap and graph clusters | data-only membership | stationary support perturbation | step_005 plus observables | numerical .723 versus .844 gap passes | score and graph conventions match | mixture bound, component lower bound, graph thresholds | defects bounded by stated q_* constants | target chart is stated, but only O(q_*) is explicit | finite graph, no recursion | step_005 -> step_006 | step_006 -> step_007 | tied supports and threshold equality stressed | step-local | None |
| Selected representatives and m_s/eta_s | generated active initialization | Q1 post-update Hadamard recurrence | coverage trajectories -> step_007 | recurrence matches covered slots, not all selected members | target indexing is clear; selection handoff is not | m_{s+1}<=4R_s+8q_*^2 and eta recurrence | only covered slots have R_s; largest-score cluster member may be un-covered | exact target residual not exported for actual selected member | q_*^2 forcing plus transient | missing selected-member bridge | step_007 -> step_008,009 | covered entry tested; non-covered retained entry untested | sketch/interface defect | /proof-sketch |
| Best-scalar residual | residual-to-target / basin entry | row/column decomposition and sign balancing | step_007 | same tensor target and quotient object | D_K and signs need selected-member gauge | 256(eta_L+q_*^2) | corrected 2.74658e-4 <1/2048 | adequate only if selected member inherits eta_L | diagonal, direction, Gram, quadratic terms | repaired step_007 -> step_008,009 | step_007 -> step_008,009 | q=0 residual limit retained | sketch/interface defect | /proof-sketch |
| Quotient Jacobian kernel | identifiability / curvature | dual bases and KR floor | step_001,007 plus Uschmajew Assumption 1 | direct kernel claim fits source role | same loss and scaling quotient | Jacobian lower bound after scaling tangent removed | full rank and KR floor available | exact realized CP target | static, no accumulation | step_001,007 -> step_008 | step_008 -> step_009 | scaling nullspace explicitly removed | step-local | None |
| D_K conjugation and full-ball Gram | inverse/pseudoinverse interface | diagonal scale conjugation plus current Gram estimate | step_008,009 | conjugation algebra matches raw ALS | gauge bounds and quotient norm need closure | Gram perturbation <=32 norm(e)+q_*^2 is asserted | max-column quotient norm does not control aggregate row mass uniformly in r | target object unchanged, but inverse source is unsupported | cross-column perturbations can accumulate | no valid producer for claimed full ball | step_009 -> step_010 | common transverse perturbation gives row sum ~r e^4 | sketch/interface defect | /proof-sketch |
| Basin contraction nu=1/8 | all-time local stability | source derivative plus direct remainder | step_008,009 and Uschmajew Lemma 3.2/Theorems 3.3,3.5 | conditional source role fits | pairwise quotient Lipschitz and gauge convention not fully discharged | one-point bound coefficient <1/8 is stated | needs preserved row/column neighborhood, not only max-column ball | residual target is exact once basin exists | Taylor remainder is finite but aggregate control open | full-ball Gram -> inverse -> Phi path is blocked | step_009 -> step_010 | exact point passes; arbitrary ball point fails stress | sketch/interface defect | /proof-sketch |
| Terminal residual and stopping | arbitrary accuracy / no floor | invariant local contraction | repaired step_009 -> step_010 | target metric and zero padding match | active update must use same scale conjugation | O(log(1/epsilon)) geometric bound | feasible after basin producer repair | exact Frobenius residual, no floor | summable geometric remainder | repaired basin -> step_010 | step_010 -> step_011 | epsilon -> 0 baseline retained | sketch/interface defect | /proof-sketch |
| Baseline invariance and entry trace | exact/noiseless specialization | simultaneous map and exact CP point | setting plus steps 004,008,010 | conclusion preserved | q=0 endpoint and D_K gauge need consistent statement | exact squaring and zero residual | no weaker surrogate allowed | exact target | no forcing at baseline | baseline -> dynamic producers | all downstream consumers | q=0 first transition traced | step-local | None |
| Restart probability and runtime | public confidence/rate bridge | conditional independence and operation counts | steps 003,010,011 | restart formula and rank separation match | same tensor and fresh randomness | (1-p_0)^J<=delta_init | exposed variables listed; upstream bridge unresolved | returned output depends on repaired basin | finite restart multiplier | repaired outputs -> step_011 | step_011 -> final theorem | delta near one and epsilon small handled | sketch/interface defect | /proof-sketch |

## Blocking Issues

1. **Selected-member producer gap in step_006/step_007:** Coverage supplies a
   post-update R_s trajectory for at least one slot per target, but the
   protocol selects the largest-score member of each retained cluster. The
   sketch does not show that this selected member is covered or that every
   retained target-chart member has the Q1 m_s and eta_s certificate.
   Downstream effect: the 2.74658e-4 residual and basin-entry output are not
   attached to the factors actually passed to CP-ALS. Smallest repair:
   prove a data-only implication from retention/score/displacement to the
   same Q1 certificate, or add a target-preserving selection/interface lemma
   that transfers the covered certificate to the selected member.
2. **Full-ball Gram bound in step_009:** The quotient norm is a maximum
   relative per-column error. It does not control aggregate row/column mass
   uniformly in r. In the orthogonal case, perturb every Y and Z column by
   the same transverse component of size e=1/512; each column is in the
   stated ball, while off-diagonal Khatri-Rao Gram entries are e^4 and the
   spectral row sum is about r e^4, which exceeds 32e for sufficiently large
   allowed r. Downstream effect: the claimed 3/4 normalized Gram floor,
   inverse, pseudoinverse branch, and nu=1/8 all-time closure are not
   established on the stated ball. Smallest repair: use a row/column-mass
   controlled basin and prove its ALS invariance, or redefine the local norm
   and redo the source wrapper with explicit r dependence.
3. **m_10 numerical line:** From the displayed R_9<4.5e-7 and Q1,
   m_10 <= 2.264e-6, not <2.0e-6. The conclusion m_10<1/64 survives, so
   this is a local constant correction, but all downstream displayed
   constants should be recomputed consistently.
4. **Pairwise contraction/gauge handoff:** The text derives a one-point
   inequality for Phi(e)-Phi(0) and then states a pairwise Lipschitz bound.
   The latter needs a uniform derivative estimate in the same gauge-fixed,
   aggregate-controlled neighborhood; it is not supplied by the cited local
   theorem alone.

## Required Repair Bundle

1. Add a selected-member bridge: either show every retained target-chart
   proposal inherits a post-update Q1 bound, or prove that the largest-score
   selection preserves the covered member's residual and row/column mass.
   Update the generated-output flow and residual-to-target rows accordingly.
2. Replace the unrestricted max-column full ball by a neighborhood carrying
   the row/column l1 control used by Q1, and prove the active ALS map preserves
   that neighborhood. Alternatively, derive a valid r-dependent radius and
   check it still contains the generated initialization for all allowed r.
3. Correct m_10 to a valid upper bound (for example 2.3e-6) and propagate
   the eta coefficient, m_L, and finite-horizon inequalities.
4. State the balanced gauge for every iterate, bound D_K and D_K inverse,
   and prove the pairwise Phi contraction directly in the same quotient and
   aggregate norm. Keep the corrected 1/512 and 1/2048 comparisons explicit.
5. Add the trivial Gaussian-window upper comparison needed for the literal
   Theta per-slot statement and state one universal lower constant for the
   finite r<r_0 cases.
6. Re-run the public rate specialization and generated-flow audit after the
   selected-member and basin repairs; preserve the rank and confidence
   separation.

Target-preserving repair check: these obligations can be addressed by
reorganizing the selection bridge and the local neighborhood/interface within
the current simultaneous JEP-ALS setting. They do not require changing the
primitive assumptions, rank exponent, tensor metric, baseline conclusion, or
success criterion. The smallest retry remains /proof-sketch.

## Review Rationale

REVISE_SKETCH is the deepest required change. Attempt 3 fixes the prior
post-first-update indexing, endpoint, scale-conjugation, and residual
arithmetic issues in substance, and the rare-window and score-gap numbers
remain viable. It still does not export the Q1 certificate to the
data-selected representatives, and its dimension-free full-ball Gram claim
is incompatible with the stated max-column quotient norm for unbounded r.
Those are theorem-facing producer/interface defects, but both admit
target-preserving neighborhood or selection repairs. The aligned status is
REVISE_SKETCH with score 6, retry /proof-sketch, mode revise_sketch.
