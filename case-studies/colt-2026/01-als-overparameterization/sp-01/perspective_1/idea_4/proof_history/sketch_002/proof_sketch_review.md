# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: perspective_1/idea_4.
- Sketch attempt: 2 (revise_sketch after the archived attempt-1 review).
- Goal mode: exact-goal mode. The simultaneous Jacobi protocol, rank
  U(r), nested probabilities, baseline map, and arbitrary relative error
  target are unchanged.
- Reviewed artifacts: setting.md, proof_sketch.md, and the archived attempt-1
  review before this overwrite.
- Review scope: revised c_win/beta_* arithmetic, score gap, row/column
  bridge, quotient-Hessian mapping, varrho=1/256, nu=1/8, pseudoinverse
  branch, and all closure/rate gates.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The revised roadmap remains aligned with the exact setting.
  It correctly replaces the failed cyclic proposal map by the old-state
  simultaneous map and keeps the exact orthogonal baseline and the
  r^(5/3)(log r)^(5/2) rank. No target, metric, probability mode, or success
  criterion is silently weakened.
- Dependency audit: The step graph is acyclic and the generated-output table
  names producers and consumers. The m_t/eta_t bridge and the local ALS
  wrapper, however, export claims whose stated inequalities do not yet follow
  from their listed inputs, so those two edges are not ready for proof-step
  spawning.
- High-risk coverage: Static smoothing, rare coverage, simultaneous R,S,
  score/cluster, incoming leakage, quotient curvature, pseudoinverse,
  terminal contraction, baseline, and runtime obligations are all localized.
  The high-risk dynamic interfaces now have numerical witnesses, but two
  witnesses contain the defects recorded below.
- Explicit-rate coverage: The window exponent and restart/running-time
  dependencies are explicit. The numerical residual comparison is misstated,
  and the full-ball inverse/contraction constants are not derived in the same
  scale-normalized coordinates as the algorithm. The public rate therefore
  remains conditional on a sketch repair.
- Assumption and citation plausibility: Primitive assumptions are referenced
  by stable ids and generated events are not promoted to assumptions. The
  Uschmajew labels and intended object mapping are plausible, but the cited
  local theorem supplies only a local result; the current-notation wrapper
  must supply the quantitative radius, scaling conjugation, and derivative
  bounds rather than treating them as source outputs.

## Early Obstruction Audit

- Limiting-case stress: At q_real=0 and Gamma=1, the first simultaneous
  update is exactly (A+,B+,C+)=(BC,AC,AB), so the prior cyclic
  counterexample is removed and R+ <= R^2, S+ <= R S is plausible. The line
  claiming f([0,19/20]) subset [q_*^2,0.922] is not literally valid at
  q=0, since f(0)=0; use a lower endpoint 0 or a bound parameterized by q to
  preserve the exact baseline.
- Theorem-critical bridge support: The revised c_win is about 0.00481791,
  and the displayed conditional-tail exponent is about beta_*=1.05344;
  hence the large-r coverage calculation and k p_win >= 8 log r are
  arithmetically consistent. The finite r<r_0 fallback is a universal
  (though very large) constant issue, not a target change. The score
  comparison also checks:
  (1/sqrt(2)+32q_*)*1.01 < 0.723 < 0.85(1-32q_*) < 0.844.
- Exported-interface feasibility: The raw window event exports exactly the
  pair-product state consumed by the Jacobi recurrence, and the score filter
  has a stated margin. The row/column-to-basin export is not yet feasible as
  written: eta_L is an initialization error, but it is used to bound K-K*
  for every point in the whole 1/256 ball. A full-ball bound in the current
  quotient norm is required.
- Theorem-critical mechanism witness gate: The simultaneous contraction and
  score-gap witnesses name their source, positive term, defects, and margins.
  The row/column witness has a concrete recurrence, but m_0<=1 does not imply
  its claimed tenth-sweep smallness under
  m_(t+1) <= 4 m_t^2 + 4 q_* m_t + 8 q_*^2: at q=q_* and m_0=1, the next
  upper bound is about 4. The witness needs an index shift or a direct
  relation such as m_t <= C R_t after the first simultaneous update.
- Entry-state / activation trace stress: The rare-entry state has nonzero
  target coordinates, and its first transition is the specified old-state
  Jacobi map. The exact orthogonal state and the zero-residual balanced CP
  state are also traced. The local-ALS first update is only conditionally
  traced: the pseudoinverse argument currently uses the initialization-scale
  eta_L in a full basin, so activation and nonsingularity are not yet
  certified at every allowed point in that ball.
- Obligation locality classification: Static geometry, Gaussian windows,
  simultaneous R,S, angle conversion, and the numerical score lemma are
  step-local once their stated constants are proved. The m_t initialization,
  same-target residual arithmetic, and scale-normalized full-ball ALS
  wrapper are sketch/interface defects. Terminal contraction, restart
  amplification, and public runtime are step-local only after those
  interfaces are repaired.
- Noncircular closure gate: R,S is a noncircular finite-horizon recurrence,
  and the generated-output DAG is ordered correctly. The basin closure is not
  circular in intent, but its advertised Gram bound is presently proved only
  for the initial representative, not for an arbitrary iterate in the ball.
  Replace that step with a bound in the current iterate error before
  consuming the invariant-ball conclusion.
- Mechanism-source and boundary stress: Pair-product forcing has a finite
  fixed point of order q_*^2; the score-gap source remains active at tied
  supports and zero-coordinate limits by the proposed perturbative lemma.
  The local source must additionally handle arbitrary allowed absolute
  component scales, not only unit-direction factors.
- Generated-output flow: The producer-consumer paths are explicitly listed
  from geometry through coverage, R,S, filtering, representatives, the
  Hessian, basin, contraction, and restart. The path through step_007 is
  blocked until its m_t bound and residual interface are corrected; the flow
  table should then be updated with the corrected index and metric.
- Source-to-claim adequacy: The dual-basis argument is an appropriate direct
  source for the Jacobian kernel. Uschmajew's Assumption 1 and local lemmas
  are appropriately cited as conditional tools, but they do not themselves
  imply the claimed 1/256 radius or 1/8 Lipschitz constant. The raw
  G_K=G_Z o G_Y display also suppresses the diagonal factors lambda_j^(4/3);
  a diagonal scaling/conjugation must be shown before the unit-scale inverse
  bounds can be used.
- Object-target compatibility: The produced object is the best-scalar
  representative tensor and the consumed object is the exact realized CP
  tensor, so the intended target is the same. The factor-coordinate
  representation is nevertheless scaled by lambda_j^(1/3); the sketch must
  exhibit the diagonal map and quotient metric that make this a same-target
  interface, rather than relying on a unit-direction Gram formula.
- Residual-to-target adequacy: The proposed residual decomposition is aimed at
  the exact realized tensor and not a surrogate, which is the correct target.
  Its numerical line is wrong: q_*^2=5.960464e-8 and
  256*(18 q_*^2)=2.74658e-4, not <2e-5. It is still below 1/1024, so a
  corrected calculation can preserve the basin target.
- Baseline invariance audit: The exact simultaneous map, exact CP solution,
  zero padding, and no-floor epsilon -> 0 conclusion are retained. The
  interval lower-endpoint typo must be fixed so the baseline is not
  accidentally excluded; no conservative remainder may replace it.
- Scope-accumulation compatibility: The R,S scope has an explicit
  dissipative recurrence and fixed forcing. The eta scope has an explicit
  8 q_*^2 forcing and a proposed 1/4 coefficient, but that coefficient
  depends on the missing small m_t source. The ALS all-time scope needs a
  one-step bound in the current error e, not the initial eta_L.
- Scope and dependence consistency: The coverage/rank and restart factors do
  not hide confidence in k, and runtime dependence is polynomial in the
  exposed variables. The repaired ALS wrapper may retain polynomial
  kappa_0 dependence, but it must expose the diagonal scale factors rather
  than silently treating them as one.
- Generated-condition provenance: Norms, coverage, alignment, clusters,
  basin membership, convergence, and runtime success remain derived outputs.
  No generated event has been moved into setting.md; the issue is an
  insufficient producer interface, not assumption strengthening.
- Citation and tool applicability: The source identity, labels, role, and
  same-loss object mapping are named. Before classifying the basin wrapper as
  step-local, record the source convention for scaled columns, the exact
  quotient norm, the hypothesis discharge, and the non-output boundary of the
  cited local theorem.
- Same-setting repair plausibility: All identified defects can be repaired by
  reindexing the post-first-update transient, correcting constants, and adding
  a diagonal scale-normalized normal-equation lemma. No change to the
  algorithm, primitive assumptions, rank, metric, or success criterion is
  required.
- Target-preserving bridge-repair gate: Passes. A corrected residual value is
  still below the proposed basin margin, and a normalized-coordinate
  pseudoinverse argument can export the same active CP target. This is a
  proof-sketch repair, not an idea revision.
- High-risk obligation classes: Correlated Gaussian products and score-gap
  arithmetic pass at sketch level; recursive mass closure, transformed-object
  compatibility, pseudoinverse stability, all-time basin maintenance, and
  public rate specialization remain the material repair obligations.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Realized norms, Gram rows, weights, KR floor | static generated instance event | Gaussian concentration and Schur product | primitive assump ids -> step_001 | matches realized factors | same normalized-column convention | separate linear, quadratic, normalization budgets | smoothing margins export q_real<=q_* and Gamma<=1.01 | N/A: produced and consumed object identical | finite union only | primitive assumptions -> step_001 | step_001 -> step_002,004,008,009 | orthogonal and small-norm boundaries retained | step-local | None |
| Window event and R_0,S_0 | anti-concentration / initialization | target windows, conditional Gaussian regression, product tails | step_001 event plus independent proposal randomness | exponent and pair-product target match | cross-mode independence; within-mode covariance uses realized Gram | p_win >= (c_win/2) r^(-5/3)(log r)^(-3/2), b_*/a_*=19/20 | c_win=0.00481791, beta_*=1.05344, finite r_0 fallback | N/A: raw ratios are consumed directly | finite competitor union; no iterative accumulation | step_001 -> step_002 | step_002 -> step_003,004 | lower window edge and zero denominator addressed | step-local | /proof-sketch |
| All-target coverage | generated one-run success source | independent slots and union bound | random-initialization -> step_003 | k p_win>=8 log r gives claimed miss bound | slot independence exact conditional on tensor | target miss <=r^-8, union miss <=r^-7 | C_rank>=16/c_win; finite small-r constants need explicit check | N/A: coverage consumed as label-free event | finite coupon scope | step_002 -> step_003 | step_003 -> step_004,011 | no cross-target independence assumed | step-local | /proof-sketch |
| Simultaneous R,S invariant | recursive alignment and baseline map | direct old-state contraction expansion | JEP-ALS update plus step_001 geometry | source matches pair-product recurrence | exact old-state convention; q=0 map matches baseline | denominator and dissipative f map | interval arithmetic plausible; lower endpoint must allow q=0 | N/A: same target-relative ratios | additive q forcing has finite fixed point | coverage -> step_004 | step_004 -> step_005,006,007 | q=0 first update gives exact squaring | sketch/interface defect | /proof-sketch |
| Angle and displacement certificate | structural alignment / filter input | span membership and Gram inversion | step_004 -> step_005 | metric and thresholds match | realized factor-span convention matches filter | S transient below q_*^2, displacement <16 q_* | C_0 log r controls finite horizon | N/A: modewise correlation consumed directly | finite horizon controlled by R,S | step_004 -> step_005 | step_005 -> step_006,007 | first update removes complement components | step-local | None |
| Score gap and graph clusters | generated membership / data-only selection | orthogonal support classification plus perturbation | step_005 plus observable definitions | numerical margin passes (<.723<.844) | same score and absolute-correlation convention | mixture score versus covered component; graph thresholds | defects bounded by 32 q_*, 8 q_*, q_* | target-direction residual stated; local proof remains | finite graph, no accumulated forcing | step_005 -> step_006 | step_006 -> step_007 | tied supports and threshold equality stressed | step-local | None |
| m_t transient and eta_t row/column mass | incoming leakage / joint bridge | weighted Hadamard expansion | step_004 ratios plus Gram rows/columns | recurrence plausible, stated initial bound insufficient | target-indexed coefficient convention needs post-update index | m and eta recurrences; coefficient <=1/4 only after m<=1/64 | m_0<=1 does not yield m_10<=1/64; add m<=C R or stronger start | exact tensor target, but downstream scale blocked | persistent 8 q_*^2 plus transient; accumulation open | step_004 -> missing valid step_007 producer | step_007 -> step_008,009 | extreme individual-ratio entry not excluded by pair products | sketch/interface defect | /proof-sketch |
| Best-scalar residual and quotient distance | residual-to-target / basin entry | row/column decomposition and sign balancing | step_006,007 direct derivation | target object is correct | quotient metric and scale map need definition | claimed 256(eta+q_*^2) bound | row/column controls adequate in principle | arithmetic 2.7466e-4, not <2e-5; still <1/1024 | diagonal, direction, Gram, quadratic terms listed | valid after repaired eta source | step_007 -> step_008,009 | exact q=0 residual vanishes | sketch/interface defect | /proof-sketch |
| Quotient Jacobian kernel and Hessian margin | identifiability / local curvature | dual bases and KR Gram floor | step_001,007 plus Uschmajew Assumption 1 | direct kernel claim matches cited role | same loss and exact target; scaled-column mapping incomplete | Jacobian norm squared >= (1-8 q_*) times quotient norm squared | full-rank factors and KR floor available | same realized CP target, no surrogate | static, scaling nullspace removed | step_001,007 -> step_008 | step_008 -> step_009 | scaling directions correctly excluded | sketch/interface defect | /proof-sketch |
| varrho=1/256 basin and nu=1/8 | all-time local ALS closure | current-notation normal-equation wrapper plus cited local theorem | step_008,009; source labels named | theorem role right, constants not discharged | raw K carries lambda scale factors; diagonal conjugation missing | inverse floor, derivative <1/300, remainder <=1/32 asserted | eta_L cannot bound every point in full ball; need C e bound and normalized Gram | initial residual can fit after correction; invariant transfer deferred | pseudoinverse and Taylor remainder need full-ball control | step_007,008 -> repaired step_009 | step_009 -> step_010 | exact point nonsingular; arbitrary ball point not certified | sketch/interface defect | /proof-sketch |
| Terminal contraction and stopping | arbitrary relative error / no floor | invariant quotient contraction | repaired step_009 -> step_010 | target metric and zero padding match | active-only update must follow scaling conjugation | m=O(log(1/epsilon)), residual <=2^(-12) nu^m | feasible once basin constants valid | exact Frobenius target; no surrogate floor | geometric and summable after entry | step_009 -> step_010 | step_010 -> step_011 | exact solution stationary | sketch/interface defect | /proof-sketch |
| Baseline invariance and entry trace | exact/noiseless specialization | simultaneous map and exact balanced CP point | setting plus step_004,008,010 | conclusion preserved in substance | q=0 endpoint and scaled K need correction | exact squaring, zero residual, inactive scaling kernel | no conservative remainder permitted | exact target residual zero | no accumulated defect in baseline | primitive baseline -> dynamic producers | all downstream consumers | q=0 first transition explicitly tested | sketch/interface defect | /proof-sketch |
| Restart probability and runtime | public confidence/rate specialization | conditional independence and operation counts | step_003,010,011 | restart formula and rank separation match goal | same tensor, fresh proposal randomness | (1-p_0)^J<=delta_init; polynomial T_run | exposed k,L_0,epsilon,delta_init listed; upstream constants need correction | returned output adequate only after local bridge | finite restart multiplier; no hidden confidence in rank | all repaired outputs -> step_011 | step_011 -> final theorem | delta near one handled by max{1,...} | sketch/interface defect | /proof-sketch |

## Blocking Issues

1. **step_007, m_t initialization and indexing:** The displayed
   m_(t+1) inequality with m_0<=1 does not imply m_10<=1/64; its worst-case
   first bound is about 4. Downstream effect: the claimed 1/4 eta coefficient
   and eta_L<=17 q_*^2 have no producer. Smallest repair: define m_0 after
   the first simultaneous update and prove m_t<=C R_t, or supply a valid
   sub-quarter initial bound and re-run the finite-horizon constants.
2. **step_007, residual arithmetic:** 256*(18 q_*^2) is approximately
   2.7466e-4, not <2e-5. Downstream effect: the stated numerical audit is
   false even though the corrected value remains below varrho/4. Smallest
   repair: replace the value and explicitly compare it with 1/1024,
   including the quotient norm convention.
3. **step_009, full-ball versus initialization control:** The line
   ||K-K_*||<=8 eta_L can hold for the constructed initialization but not for
   every iterate in a radius-1/256 ball. Downstream effect: the 15/16 Gram
   floor, inverse bound, pseudoinverse branch, and nu=1/8 contraction are not
   established as all-time claims. Smallest repair: derive
   ||K(e)-K_*||<=C||e||_quot throughout the ball, choose/check a radius from
   that inequality, and propagate the one-step remainder.
4. **step_008/step_009, absolute scale and source mapping:** At the actual
   balanced factors, raw K^T K has diagonal factors lambda_j^(4/3); it is not
   literally G_Z o G_Y with unit diagonal. Downstream effect: unit-scale
   inverse and derivative constants do not yet apply under allowed kappa_0
   scales. Smallest repair: state the diagonal component rescaling, prove the
   ALS update is conjugate to the normalized-direction update, and expose
   polynomial kappa_0 factors and the cited hypothesis discharge.
5. **Baseline endpoint notation:** The lower bound f>=q_*^2 excludes the
   allowed exact q=0 specialization. Downstream effect: the baseline audit and
   generated interval are formally inconsistent. Smallest repair: use
   0<=f(x)<=0.922 at q=0 and a separate worst-case floor for q=q_*.

## Required Repair Bundle

1. Revise step_007 with a post-first-update definition of m_t, a direct
   relation to the proven R_t recurrence, and a fully indexed solution of the
   eta_t recurrence. Preserve the 2r initial row/column budget and the
   q_*^2 forcing, but do not use an unsupported m_0<=1 bound.
2. Correct the same-target residual and quotient-distance constants, state the
   exact quotient norm and diagonal sign/scaling alignment, and verify the
   corrected value is below the chosen basin entry margin.
3. Add a scale-normalized ALS interface lemma: map raw balanced columns to
   unit-direction coordinates by explicit diagonal matrices, show the
   Moore-Penrose/ordinary-inverse update conjugacy, and discharge the cited
   source hypotheses in that convention.
4. Replace the initialization-only K perturbation estimate by a bound for
   every e in the proposed ball. Recompute the radius if the resulting
   constants do not support 1/256; expose all polynomial kappa_0 dependence
   and prove the nu=1/8 one-step inequality.
5. Repair the f interval statement at q=0 and retain the exact baseline
   first-transition and zero-residual traces in the generated-output table.
6. In the final rate-specialization step, propagate the corrected eta,
   residual, basin, inverse, and contraction constants before asserting the
   restart probability and runtime polynomial. The rank and confidence
   separation can remain unchanged.

Target-preserving repair check: all six items are roadmap/interface and
constant repairs within the current simultaneous JEP-ALS setting. They do not
change the algorithm, primitive assumptions, rank exponent, theorem metric,
baseline conclusion, or success criterion; no idea-level retry is required.

## Review Rationale

REVISE_SKETCH is the deepest required change. Attempt 2 successfully repairs
the fatal cyclic first-update obstruction, and its rare-window, coverage, and
score-gap arithmetic is materially stronger. The remaining failures are
localized but theorem-critical: the row/column recurrence does not start from
a sufficient transient bound, one residual comparison is numerically false,
and the ALS basin proof conflates the initial representative error with the
whole invariant ball while suppressing raw component scales. A corrected
producer/interface decomposition can preserve the exact goal, so the proper
retry is /proof-sketch with revise_sketch, score 6, rather than idea
revision or step-level proof work.
