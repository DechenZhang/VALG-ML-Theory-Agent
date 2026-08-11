# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: perspective_1/idea_4.
- Sketch attempt: 5, the target-preserving revision after the attempt-4 review.
- Goal mode: exact-goal mode. The rank U(r), simultaneous JEP-ALS map, nested probabilities, active-rank CP-ALS target, arbitrary relative error, runtime, and orthogonal baseline are unchanged.
- Reviewed inputs: setting.md, proof_sketch.md, technical_survey.md, and the archived same-branch review for attempt 4.
- Review scope: S1-S5 selected-member transfer, the direct selected residual, the row/column ALS tube, D_K conjugation, pairwise contraction, and all exported and generated-output interfaces.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The sketch still targets the exact conditional theorem. It preserves U(r), zero padding, the observable data-only selection, arbitrary epsilon, the nested confidence statement, and the exact q=0 baseline map.
- Dependency audit: The step graph 001 through 011 is acyclic and the hard obligations are named. The S3-S5 producer is listed both in step_006 and step_007, however, and its claimed output is not yet derived from a stated matrix-level lemma.
- High-risk coverage: Gaussian geometry, the literal window upper bound, coverage exponent, R,S recurrence, score gap, corrected m_10 arithmetic, D_K scaling, 7/8 Gram floor, inverse factor (8/7)^2, and 1/8 pairwise coefficient are plausible at sketch level. Global selected row mass and the quotient tube interface remain theorem-critical gaps.
- Explicit-rate coverage: Lower and upper window comparisons and the finite small-r constant are exposed, and C_rank is universal. The selected residual uses eta_sel <= 80 q_*^2 and direct entry 256(81 q_*^2) < 1/512; downstream statements must retain this direct-entry scale and must not silently use a radius-quarter or 17 q_*^2 selected bound.
- Assumption and citation plausibility: Generated events are not promoted to primitive assumptions. The Uschmajew citation and exact CP-loss mapping are plausible, but the source does not provide the random-entry bridge, public tube radius, or proposed row/column norm contraction; current-notation steps must supply them.

## Early Obstruction Audit

- Limiting-case stress: At q_real = 0 and Gamma = 1, the simultaneous update
  gives (A+,B+,C+) = (BC,AC,AB), so R+ <= R^2 and S+ <= R S. The exact CP
  point and zero padding retain zero residual. The nonzero-q stress case in
  which all selected column errors align in one row is not controlled by S2.
- Theorem-critical bridge support: S1 correctly gives 56 q_*^2 from the
  covered score 1 - 8 q_*^2. The numerical S4 inequality is also true if its
  hypotheses hold, but the hypotheses supplying both row and column errors
  for the selected matrices are not stated or proved.
- Exported Interface Feasibility Gate: Static geometry, coverage, recurrence, and
  score interfaces have raw controls and consumers. The selected
  eta_in_sel, eta_sel, and best-scalar tube output are asserted without a
  complete raw-control-to-interface path, especially for incoming row mass and
  scalar-coordinate errors.
- Theorem-Critical Mechanism Witness Gate: Q1 and the reachable-tube
  recurrences expose forcing and fixed-point control. The S3 witness is only
  an algebraic Hadamard identity plus a phrase "independent selection lemma";
  it lacks the lemma statement, source, selection hypotheses, and a
  row-alignment control. The local wrapper also states its derivative
  constants without a step-level remainder witness.
- Entry-State / Activation Trace Gate: The covered proposal first update, q=0 update, exact
  target, and direct selected bound are traced. The first active ALS update is
  not fully traced in the claimed canonical gauge because eta_sel is not
  explicitly mapped to every component of norm_T.
- Step-Locality And Theorem-Contract Gate: Static concentration, window tails,
  coverage, R,S, angular transfer, score separation, quotient kernel, and
  restart arithmetic are step-local. S3-S5, the selected residual-to-tube
  map, gauge uniqueness, and the pairwise norm_T contraction are
  sketch/interface defects. No current issue requires an idea or theorem
  contract change.
- Noncircular Closure Gate: The proposal recurrence and covered Q1 recurrence
  have independent producers. The selected tube entry currently depends on
  the unproved global eta producer, so the ALS invariant is not yet
  noncircular. A separate matrix lemma would repair this in the same setting.
- Mechanism-source and boundary stress: The 7/8 Gram floor and the numerical
  1/8 coefficient pass the displayed boundary arithmetic. The positive
  diagonal gauge is not unique from positivity and D_X D_Y D_Z = I alone,
  and behavior at a chart boundary or a pseudoinverse branch is not
  specified well enough for the claimed pairwise map.
- Generated Output Flow Gate: The tables list producers, consumers, and final
  uses, but mark the unresolved S3-S5 output and the tube wrapper as having
  no blocker. Step_006 also exports eta_in_sel while step_007 is supposed to
  prove it. The flow must be corrected after the producer is made legal.
- Source-To-Claim Adequacy Gate: Direct Gaussian and Schur estimates and the
  dual-basis kernel calculation match their claim classes. Per-column chi_i
  does not imply a dimension-free row norm; the Hadamard identity alone is
  not a source for that lower-level control. Direct derivation, standard
  tool, current-notation wrapper, and primitive-source feasibility must be
  written for the missing lemma.
- Object-target compatibility: The selected p,q,s directions, best scalar,
  sign placement, and realized CP tensor are the same target object. D_K
  conjugation is target-preserving. The proof still needs an explicit
  target permutation, sign alignment, and gauge map before the local metric
  can consume the representative.
- Residual-To-Target Adequacy Gate: The arithmetic
  256(eta_sel + q_*^2) <= 256(81 q_*^2) = 1.23597e-3 < 1/512 passes for
  the asserted eta_sel. The sketch does not prove that this bound controls
  the column error, E_M row and column norms, and all scalar deltas in
  norm_T, nor does it list the source of each residual term. The direct
  tube entry is target-preserving; no quarter-radius claim is justified.
- Baseline Invariance Obligation: The exact simultaneous map, exact balanced CP
  representation, zero padding, arbitrary accuracy, and vanishing residual
  limit are retained. No weaker baseline surrogate is introduced.
- Scope-Accumulation Compatibility Gate: Q1 and the ALS tube use explicit
  contractive recurrences with forcing and finite fixed points. The
  selected matrix is a finite object, but its incoming row defect can
  accumulate across targets unless the missing selection lemma gives a
  finite row budget or an equivalent signed or probabilistic control.
- Scope and dependence consistency: The rank, confidence, horizon, and
  allowed polynomial kappa_0 dependence are exposed. The claimed
  dimension-free eta_in_sel currently hides a possible r dependence.
- Generated-condition provenance: E_sm, E_cov, E_RS, clustering, eta_sel,
  tube membership, and contraction are presented as derived outputs. The
  eta_sel producer is not independently sourced, and the duplicated
  step_006/step_007 assignment obscures the dependency path.
- Citation and tool applicability: The DOI, Assumption 1, Lemma 3.2, and
  Theorems 3.3 and 3.5 are identifiable and apply only after exact CP
  entry. The source does not certify the random window, selected row mass,
  explicit radius, or norm_T pairwise inequality; these are local wrapper
  obligations with source-convention and hypothesis checks still required.
- Same-setting repair plausibility: State a genuine joint selection/Hadamard
  lemma, define the matrix objects and gauge, and rederive the local
  interface. These repairs preserve the current primitives, protocol, rank,
  metric, and success criterion.
- Target-preserving bridge-repair gate: Pass. The conservative 80 q_*^2
  seed remains inside the displayed 1/512 tube numerically. The repair must
  preserve direct entry rather than reusing the old 17 q_*^2 or
  varrho_ALS/4 statement.
- High-risk obligation classes: Static conditioning, anti-concentration,
  coverage, simultaneous baseline recurrence, score gap, m_10, D_K
  conjugation, inverse arithmetic, stopping, restart, and runtime pass
  at sketch level. Global row control, gauge definition, residual export,
  and pairwise tube closure are blocking interface classes.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E_sm norms, Gram rows, weights, and KR floor | generated static instance event | Gaussian concentration and Schur product | primitives to step_001 | matches normalized realized factors | same normalized-column convention | separate linear, quadratic, and normalization margins | base scale, q_* / 4 slack, weight slack, delta_sm to q_real and Gamma | N/A: same realized object | finite union budget, no trajectory accumulation | primitive assumptions to step_001 | step_001 to step_002, step_004, step_008, step_009 | rho to 0 and orthogonal limit pass | step-local | None |
| Window probability and R_0,S_0 entry | anti-concentration and generated entry | conditional Gaussian regression and product tails | step_001 to step_002 | target window and competitor products match | covariance row-sum convention checked in outline | c_all r^(-5/3)(log r)^(-3/2) <= p <= C_win times same scale | c_win, beta_*, r_0, finite c_fin, b_* / a_* | N/A: raw ratios consumed directly | finite competitor union, no hidden target independence | E_sm to step_002 | step_002 to step_003 and step_004 | window edge and denominator boundary pass | step-local | None |
| All-target coverage at U(r) | generated coverage and one-run source | independent slots and union bound | step_002 to step_003 | coupon calculation matches claim | slot independence only, target dependence not assumed | k p >= 8 log r and miss <= r^-7 | C_rank >= 16 / c_all exports p_0 | N/A: coverage labels only proof-side | finite slot scope | step_002 to step_003 | step_003 to step_004 and step_011 | r >= 3 and finite small-r constants addressed | step-local | None |
| R,S recurrence and denominator invariant | recursive alignment and baseline | simultaneous old-state multilinear expansion | step_001 to step_004 | exact simultaneous map matches setting | q_real and Gamma conventions match | f([0,19/20]) <= .922 and S coefficient <= 1/4000 | R_0, q_real, Gamma, L_0 export horizon control | N/A: same target-relative state | q forcing has a fixed point; q=0 forcing vanishes | E_sm and coverage to step_004 | step_004 to step_005, step_006, step_007 | Gamma R_t < 1 and q=0 endpoint pass | step-local | None |
| Angle and displacement certificate | generated observable control | span projection, Gram inversion, and Q1 transient | step_004 to step_005 | modewise angle and d thresholds match filter | realized Gram convention matches | transient below q_*^2 and d <= 16 q_* | S_t, burn-in, C_0 export E_ang | N/A: same direction metric | finite proposal horizon, contractive transient | E_RS to step_005 | step_005 to step_006 and step_007 | first update removes orthogonal complement | step-local | None |
| Score gap and graph clusters | membership and data-only selection | stationary support classification plus angle bounds | step_005 to step_006 | component and mixture score classes match | observable score and graph thresholds match setting | mixture < .723 and component > .85 threshold | displacement, score, graph edge tests export one cluster per target | same target directions, no surrogate | finite graph, ties resolved after strict margins | E_ang and filter to step_006 | step_006 to step_007 | tied support and graph boundary stressed | step-local | None |
| S1-S2 selected member transfer | per-column initialization certificate | last-update identity and score ordering | step_004, step_006 | gives member-local chi_i only, with m_i definition still absent | target labels proof-only, selection data-only | chi_i = d_i + m_i <= 56 q_*^2 | covered score and retained score export column control | only per-column residual is controlled | member defects may align across rows | coverage and cluster to S1-S2 | step_006 to step_007 | selected score boundary passes; row alignment remains open | sketch/interface defect | /proof-sketch |
| S3-S5 global selected row and column mass | theorem-critical incoming leakage bridge | asserted independent selection/Hadamard lemma | no statement or stable source supplied | column input does not establish row output | matrix indexing and diagonal scaling unresolved | claimed eta_in <= 4 q_* chi_max + 16 q_*^2 | chi_i and G row sums are insufficient for row export without a new lemma | selected residual and basin seed unsupported | aligned column errors can create r-scale row mass | missing independent producer before step_007 | intended step_007 to step_008 and step_009 | adversarial single-row alignment is not discharged | sketch/interface defect | /proof-sketch |
| Best-scalar residual and tube entry | residual-to-target and basin membership | row/column decomposition plus scalar fit | step_007 assertion | numerical constant is plausible conditionally | target sign and quotient convention need a fixed gauge | 256(eta_sel + q_*^2) < 1/512 | eta_sel must export col error, E_M row/col norms, and scalar deltas | direct entry passes only after that decomposition is proved | static residual, no quarter margin | missing S3-S5 and gauge map to step_009 | intended step_007 to step_008 and step_009 | direct 1/512 entry passes numerically; full tube not certified | sketch/interface defect | /proof-sketch |
| Quotient Jacobian kernel and Hessian margin | identifiability and nondegeneracy | dual bases and KR spectral floor | step_001 and step_007 to step_008 | source matches quotient kernel claim | same CP loss and scaling quotient | quotient eigenvalue >= 1 - 8 q_* | full rank and representative bridge export source inputs | same exact active target | scaling nullspace removed, static scope | E_sm plus repaired entry to step_008 | step_008 to step_009 | exact CP and scaling boundary pass | step-local | None |
| Canonical gauge and norm_T | theorem-facing local metric | explicit gauge construction and coefficient matrices | step_007 to step_009, but gauge rule incomplete | claimed norm components are relevant but not well-defined | positivity plus product-one does not specify a unique gauge | need unique gauge and pairwise norm equivalence | selected factors must export D_M, E_M, delta_M in one chart | tube entry must dominate every norm_T component | gauge changes can add uncontrolled pairwise defects | no independent gauge producer before step_009 | intended step_009 to step_010 | near-zero target coordinates and sign choices unresolved | sketch/interface defect | /proof-sketch |
| D_K inverse and reachable Gram tube | nonsingularity and pseudoinverse interface | diagonal conjugation and Hadamard row/column estimate | step_008 and step_009 direct derivation | algebra is correct once tube inputs exist | positive diagonal conjugation matches active CP update | Gram difference <= 1/16, floor >= 7/8, inverse <= 8/7 | eta and col bounds export the normalized KR Gram | same active target if gauge bridge is valid | fixed tube, no rank loss inside | repaired entry to step_009 | step_009 to step_010 | tube boundary arithmetic passes | sketch/interface defect | /proof-sketch |
| Pairwise cyclic contraction and tube invariance | all-time local stability | source derivative plus direct normal-equation remainder | Uschmajew DOI 10.1137/110843587, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5, plus unproved current wrapper | source is local but displayed norm_T bound is not yet derived | source scaling convention mapped only in outline | coefficient < 1/8 and recurrences with 1/16 forcing | need pairwise E_M and gauge difference bounds | residual-to-target transfer follows only after norm proof | geometric contraction, fixed forcing below 64 q_*^2 | step_008 and repaired step_009 before step_010 | step_009 to step_010 | first active sweep and pseudoinverse branch need explicit trace | sketch/interface defect | /proof-sketch |
| Baseline invariance | exact/noiseless specialization | simultaneous map and exact CP point | setting, step_004, step_008, step_010 | preserves original exact conclusion | q=0, Gamma=1, and sign conventions match | R+ <= R^2, S+ <= R S, residual zero | no weaker surrogate exported | exact same target | zero forcing and no error floor | primitive baseline to all relevant steps | step_004 and step_010 to final theorem | exact entry and epsilon limit pass | step-local | None |
| Stopping, restart, and public rate | quantitative specialization and closure | local contraction, independent restarts, operation counts | step_010 and step_011 | formulas match exact goal conditionally | confidence modes remain nested | m = O(log(1/epsilon)) and (1-p_0)^J <= delta_init | exposed n,r,k,kappa_0,rho,epsilon,delta_init are listed | returned output is same-target active solution | geometric failure accumulation and polynomial cost | repaired local chain to step_011 | step_011 to final theorem | delta near one and epsilon to zero pass | sketch/interface defect | /proof-sketch |
| Generated-output flow and gate evidence | provenance and theorem assembly | explicit producer-consumer tables | proof_sketch sections 1162-1192 | flow shape is present but unresolved rows overclaim | current constants are synchronized to T_ALS | every consumed output needs a legal producer and blocker field | S3-S5 and norm_T currently have no legal producer entry | final theorem cannot consume unsupported eta or tube | unresolved bridge is carried into downstream rows | must revise step_006/007/009 ownership | corrected rows to step_011 and final theorem | no stale 3/4 or full-ball constants remain | sketch/interface defect | /proof-sketch |

## Blocking Issues

1. S3-S5 does not prove the global incoming-mass transfer
   (proof_sketch.md:351-384, 867-940). S2 supplies a per-column
   chi_i <= 56 q_*^2 bound, but the claimed row norm can be as large as a
   sum of aligned column errors. The Hadamard identity is algebra, not an
   independent row-control source, and the selection lemma has no statement,
   hypotheses, provenance, or conditioning. Downstream effect: step_007 has
   no legal dimension-free eta_sel seed. Smallest repair: state and prove a
   joint selected-matrix lemma with explicit row and column hypotheses,
   target permutation and signs, and a bound that survives aligned rows.
2. The matrix objects used by S3 are underdefined
   (proof_sketch.md:351-372). m_i is never defined as a matrix coefficient
   error, and the relation among G_hat_M, D_M, E_M, F_M, and the pair-product
   residual is not specified. The expansion in S3 therefore cannot be
   audited term by term or transferred to all three modes. Downstream effect:
   the asserted 17 q_*^2 and 80 q_*^2 constants have no source-to-claim
   match. Smallest repair: define each matrix, diagonal and off-diagonal
   residual, and prove the induced l1 row and column inequalities in one
   dedicated step.
3. The selected residual is not fully exported into the tube norm
   (proof_sketch.md:411-427, 485-490). The arithmetic for direct 1/512 entry
   is valid under S5, but the sketch does not show that eta_sel controls
   every E_M row norm, E_M column norm, and scalar delta_M after balancing.
   It also does not state the target permutation and sign map used by the
   local chart. Downstream effect: step_009 may consume quotient distance
   while its invariant requires norm_T, so basin membership is not proved.
   Smallest repair: give a componentwise residual decomposition and export
   all norm_T components, retaining direct entry only.
4. The canonical gauge and pairwise norm are not well-defined
   (proof_sketch.md:439-468). Positivity and D_X D_Y D_Z = I leave a
   continuum of positive gauges, so "the unique nearby" gauge and the
   pairwise difference norm are undefined. Downstream effect: the displayed
   norm_T Lipschitz inequality, inverse-difference estimate, and tube
   recurrence cannot be source-mapped. Smallest repair: specify a unique
   balancing rule, prove existence and uniqueness throughout T_ALS, and
   prove gauge-compatible pairwise bounds.
5. The current-notation ALS wrapper asserts rather than produces its hard
   contraction interface (proof_sketch.md:505-526). The cited Uschmajew
   results identify a local derivative under their hypotheses, but do not
   supply the displayed row/column norm remainder, 1/16 recurrences, or
   1/8 pairwise constant. Downstream effect: local convergence and stopping
   remain conditional on an unproved theorem-critical wrapper. Smallest
   repair: add a lemma-sized derivation with exact source statement,
   hypothesis discharge, D_K convention translation, boundary handling, and
   consumers.
6. The exported and generated-flow tables overclaim the unresolved outputs
   (proof_sketch.md:1162-1192, 1203-1231). They mark S3-S5, eta_sel, and the
   norm_T wrapper as having no missing-interface blocker, while step_006 and
   step_007 both claim to produce eta_in_sel. Downstream effect: gate evidence
   is inconsistent with the actual locality defects. Smallest repair: assign
   the global bridge to one producer, mark its current status as a blocker,
   and propagate the corrected direct-entry constants and consumers.

## Required Repair Bundle

1. Replace the S3-S5 prose by a complete joint selection/Hadamard lemma.
   Define selected target ordering, signs, G_M, D_M, E_M, F_M, m_i, chi_i,
   and the exact row and column norms. Give a noncircular source for incoming
   row mass and prove the 17 q_*^2 and 80 q_*^2 bounds without an r factor.
   Affected steps: step_006 and step_007. Smallest target: /proof-sketch.
2. Make step_006 export only cluster correctness and member-local S1-S2;
   make step_007 the sole producer of eta_in_sel, eta_sel, and the selected
   matrix residual. Update all dependency notes and flow rows accordingly.
3. Define a unique positive balancing gauge and a fixed quotient chart.
   Prove existence, uniqueness, sign and permutation alignment, and
   equivalence between selected residual quantities and norm_T components
   including scalar deltas. Affected steps: step_007 through step_009.
4. Reprove the D_K, Gram, inverse, pairwise, and 1/16 recurrence bounds in
   that gauge. Record exact source-convention compatibility with Uschmajew
   and identify the non-output boundary of the cited theorem. Affected
   steps: step_008 and step_009.
5. Keep the corrected arithmetic: chi_max <= 56 q_*^2, eta_in_sel <= 17
   q_*^2, eta_sel <= 80 q_*^2, and 256(81 q_*^2) < 1/512. State explicitly
   that this is direct T_ALS entry, not varrho_ALS/4, and update every rate,
   interface, and generated-flow consumer to that scale. Affected steps:
   step_007 through step_011.
6. Rebuild the Gate Evidence Table and Generated Output Flow after the
   bridge is proved, including producer identity, raw controls, residual
   dominance, boundary checks, and locality for every consumed output.
   Affected artifacts: step_006, step_007, step_009, and the public tables.

Target-preserving repair check: all six repairs can preserve the current
setting, JEP-ALS protocol, rank U(r), tensor metric, nested probabilities,
baseline, and success criterion. The numerical direct-entry margin is already
adequate. No idea-level revision is required unless a valid same-setting
row-control mechanism cannot be supplied.

## Review Rationale

REVISE_SKETCH is the deepest required change. Attempt 5 repairs the prior
arithmetic and removes the false unrestricted-ball interface, and its exact
goal remains viable. It is not ready for proof-step work because the
theorem-critical selected-matrix row control, the residual-to-norm_T export,
and the canonical-gauge local contraction are still assertions rather than
source-adequate producers. These are repairable roadmap and interface defects
within the current setting, so IDEA_FAIL would be too strong; ACCEPTED would
ignore missing noncircular closure and gate evidence.
