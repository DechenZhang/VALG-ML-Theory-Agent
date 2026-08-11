# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: perspective_1/idea_4.
- Sketch attempt: 7, the deterministic row-small-gain revision after the archived attempt-6 review.
- Goal mode: exact-goal mode. The U(r) rank, simultaneous JEP-ALS protocol, nested probabilities, active CP-ALS target, arbitrary relative error, runtime, and exact orthogonal baseline are unchanged.
- Reviewed inputs: setting.md, the current proof_sketch.md, technical_survey.md, and proof_history/sketch_006/proof_sketch_review.md.
- New interfaces audited: J0-J3, E_row and p_0 provenance, normalized versus raw coefficient matrices, the equal-norm gauge, G1-G2, A1-A2, and all exported and generated-flow rows.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The exact theorem target and target-preserving dynamic repair remain aligned with setting.md. The q=0 map, zero padding, rank, nested confidence, and arbitrary epsilon conclusion are retained.
- Dependency audit: The step graph is acyclic and step_007 is now named as the sole deterministic row producer. J0-J3 replace the former S3-S5 interface in the current prose. The generated-flow row for E_row lists step_003 as a consumer even though step_007 depends on step_003, so one public dependency edge is backwards.
- High-risk coverage: Window and coverage arithmetic, R,S, score separation, S1-S2 definitions, D_K conjugation, the 7/8 Gram floor, (8/7)^2 inverse, and the conditional J2-J3 numerical small gain pass if J0 is valid. J0's row source, the F-to-E column bridge, and A1-A2 remain hard gaps.
- Explicit-rate coverage: The deterministic lemma removes the former sign-event failure and correctly retains p_0 = 1/2 from coverage. The conditional arithmetic rho < 17 q_*^2 and eta_sel <= 80 q_*^2 is sound on the stated premises, but those premises are not yet exported by a proved producer.
- Assumption and citation plausibility: No generated event is promoted to a primitive assumption. The Uschmajew source identity and exact CP loss mapping are plausible; it does not supply J0, the raw/unit conversion, or the explicit norm_T Lipschitz wrapper.

## Early Obstruction Audit

- Limiting-case stress: At q_real = 0 and Gamma = 1, the simultaneous map is
  (A+,B+,C+) = (BC,AC,AB), giving R+ <= R^2 and S+ <= R S, and the exact
  CP point has zero residual. J0 should then have zero forcing. For nonzero
  q, an adversarially aligned row is controlled only if the claimed Q_M
  row bound is independently proved.
- Theorem-critical bridge support: S1-S2 now define m_i, F_M, E_M, and
  induced row and column norms. J2 solves to
  rho <= (4 q_* chi_max + 16 q_*^2)/(1-q_*) < 17 q_*^2 and J3 then gives
  73 q_*^2 < 80 q_*^2. These calculations pass conditionally; J0 and the
  asserted kappa <= chi_max bridge do not.
- Exported Interface Feasibility Gate: The intended J0-J3 output has a
  concrete small-gain path to eta_sel and direct 1/512 entry. The raw
  controls are incomplete because Q_M is not defined in the F_M equation,
  the E_M column norm is not supplied by m_i, and the row residual budget
  is only asserted.
- Theorem-Critical Mechanism Witness Gate: The normal-equation residual
  Q_M and Hadamard small-gain relation are the right witness shape. The
  witness must state the exact residual identity, charge every denominator
  and weight term, and prove the row and column Q_M bounds without assuming
  the target row closure it is meant to produce.
- Entry-State / Activation Trace Gate: The proof-only permutation, sign
  placement, equal-norm gauge, G1, and G2 provide a more explicit first
  active update trace. The trace still consumes the unproved Q_M-to-G2
  bridge and an undefined pair quantity eta(e,e') in A1.
- Step-Locality And Theorem-Contract Gate: Geometry, windows, coverage,
  R,S, angles, clustering, quotient kernel, and restart arithmetic are
  step-local. J0, the F-to-E column conversion, raw/unit chart conversion,
  G1, G2, and A1-A2 are sketch/interface defects, not idea-level defects.
- Noncircular Closure Gate: J0 is intended to be a direct normal-equation
  producer, then J2 is a small-gain closure and J3 is consumed by step_009.
  This is noncircular only if Q_M excludes E_M-dependent terms and is
  independently bounded; the current prose does not establish that.
- Mechanism-source and boundary stress: The equal-norm gauge is algebraically
  unique for nonzero columns, and the 7/8 and 1/8 boundary arithmetic passes.
  The absolute 1/512 tube, possible small raw columns under kappa_0, and
  the distinction between normalized M^* and raw balanced X^* remain
  underspecified.
- Generated Output Flow Gate: The flow now includes a deterministic E_row
  row, but incorrectly lists step_003 as a consumer of an output produced
  by step_007. The Exported Interface table has no separate E_row or p_0
  row, so the public producer-consumer and probability mapping is incomplete.
- Source-To-Claim Adequacy Gate: The normalized direction convention in
  step_007 is appropriate. However, m_i controls column sums of F_M, while
  J2 defines kappa using column sums of E_M; no implication is given.
  The displayed J1 expansion also adds Q_M to an algebraic difference without
  defining the corresponding residual equation.
- Object-target compatibility: The proof-only permutation, sign map, raw
  balanced factors, normalized direction matrices, and D_K conjugation are
  conceptually target-preserving. The gauge section still calls M_M^* the
  exact realized factor matrix while using G_M as if its diagonal were one;
  the current notation does not establish one consistent target object.
- Residual-To-Target Adequacy Gate: The numerical eta_sel and
  256(81 q_*^2) < 1/512 margins are adequate if J3 and G2 hold. The
  Delta-perpendicular bound, all E_M row and column components, scalar
  deltas, and the conversion from F_M to E_M are stated without a complete
  derivation.
- Baseline Invariance Obligation: The exact simultaneous map, exact CP
  representation, zero padding, arbitrary-accuracy limit, and no-error
  conclusion are preserved; no conservative baseline surrogate appears.
- Scope-Accumulation Compatibility Gate: Q1 is a finite transient recurrence
  and J2 is a fixed-point small-gain inequality, so the intended
  accumulation mechanism is dimension-free. Its finite budget is valid only
  after the deterministic Q_M row bound and the correct E_M/F_M coupling
  are supplied.
- Scope and dependence consistency: The rank remains independent of
  confidence parameters and p_0 is proposal-level through coverage. The
  local row variable rho shadows the smoothing parameter rho from setting.md,
  obscuring explicit-rate dependence and source conventions.
- Generated-condition provenance: E_sm, E_cov, E_RS, E_cluster, Q_M,
  E_row, eta_sel, G2, and the tube are intended derived outputs. Q_M has
  no exact producer formula, and the flow's backwards E_row consumer
  obscures the path to step_008 and step_011.
- Citation and tool applicability: Uschmajew DOI 10.1137/110843587,
  Assumption 1, Lemma 3.2, and Theorems 3.3 and 3.5 are identifiable and
  apply only after exact CP entry. They do not certify J0, G1, A1-A2,
  or the normalized/raw scale translation.
- Same-setting repair plausibility: Define Q_M precisely, prove its
  deterministic row and column budget, add a valid F-to-E column bridge,
  fix the chart typing, and update the flow. These repairs preserve the
  current primitives, protocol, rank, metric, and success criterion.
- Target-preserving bridge-repair gate: Pass numerically. The direct
  1/512 entry margin survives eta_sel <= 80 q_*^2. The repair must retain
  direct tube entry and need not change the rank or theorem mode.
- High-risk obligation classes: Static conditioning, anti-concentration,
  coverage, simultaneous baseline recurrence, score gap, S1-S2 arithmetic,
  D_K algebra, inverse arithmetic, and stopping pass in outline. J0/Q_M,
  F-to-E transfer, scale conventions, A1-A2, and flow provenance remain
  blocking interface classes.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E_sm norms, Gram rows, weights, and KR floor | generated static instance event | Gaussian concentration and Schur product | primitives to step_001 | matches normalized realized factors | normalized-column convention | separate linear, quadratic, and normalization margins | base scale, q_* / 4 slack, weight slack, delta_sm to q_real and Gamma | N/A: same realized object | finite union, no trajectory accumulation | primitive assumptions to step_001 | step_001 to step_002, step_004, step_008, step_009 | rho to 0 and orthogonal limit pass | step-local | None |
| Window event and R_0,S_0 entry | anti-concentration and generated entry | conditional Gaussian regression and product tails | step_001 to step_002 | target window and competitor products match | covariance row-sum convention checked in outline | c_all r^(-5/3)(log r)^(-3/2) <= p <= C_win times same scale | c_win, beta_*, r_0, c_fin, b_* / a_* | N/A: raw ratios consumed | finite competitor union | E_sm to step_002 | step_002 to step_003 and step_004 | window and denominator boundaries pass | step-local | None |
| All-target coverage at U(r) | generated coverage and one-run source | independent slots and union bound | step_002 to step_003 | coupon calculation matches claim | slot independence only | k p >= 8 log r and miss <= r^-7 | C_rank >= 16 / c_all exports coverage | N/A: proof-side labels | finite slot scope | step_002 to step_003 | step_003 to step_004 and step_011 | r >= 3 and finite cases addressed | step-local | None |
| R,S recurrence and denominator invariant | recursive alignment and baseline | simultaneous old-state expansion | step_001 to step_004 | exact map matches setting | q_real and Gamma conventions match | interval invariance and S coefficient <= 1/4000 | R_0, q_real, Gamma, L_0 | N/A: same ratio state | fixed q forcing, q=0 forcing vanishes | E_sm and coverage to step_004 | step_004 to step_005, step_006, step_007 | Gamma R_t < 1 and q=0 pass | step-local | None |
| Angle and displacement certificate | generated observable control | span projection, Gram inversion, Q1 | step_004 to step_005 | modewise thresholds match filter | realized Gram convention matches | transient below q_*^2 and d <= 16 q_* | S_t, burn-in, C_0 export E_ang | N/A: same direction metric | finite proposal horizon | E_RS to step_005 | step_005 to step_006 and step_007 | first update removes orthogonal component | step-local | None |
| Score gap and graph clusters | membership and data-only selection | stationary support classification | step_005 to step_006 | component and mixture classes match | observable thresholds match setting | mixture < .723 and component passes .85 | score, displacement, graph tests | same target directions | finite graph and strict tie margins | E_ang and filter to step_006 | step_006 to step_007 | tied supports and graph boundary stressed | step-local | None |
| S1-S2 member transfer | per-column initialization certificate | last-update identity and score ordering | step_004, step_006 | m_i,F_M,delta definitions match member claim | proof-only labels and sign map fixed | chi_i = d_i + m_i <= 56 q_*^2 | covered and retained scores export columns | member-local residual only | errors may align across rows | coverage and cluster to S1-S2 | step_006 to step_007 | selected score boundary passes | step-local | None |
| J0 residual row and column budget | theorem-critical deterministic forcing | last-update normal equations and dual bases | step_007 direct assertion | Q_M is not defined or related exactly to F_M | normalized Gram convention plausible but residual terms unresolved | claimed row and column Q_M <= 8 q_*^2 | H_M row/column q_* and weight/denominator slack listed, exact charge missing | needed for J2 and G2 | possible E-dependent or aligned displacement terms hidden in Q_M | intended direct producer before J1 | Q_M absent as a standalone flow output | q=0 forcing should vanish; nonzero row boundary unresolved | sketch/interface defect | /proof-sketch |
| J1-J2 small-gain system | incoming row closure | Hadamard expansion and max row/column norms | step_007 after J0 | equation adds Q_M to an algebraic difference; kappa source is missing | F_M and E_M conventions not linked | kappa <= chi_max and rho <= 4 q_* chi_max + q_* rho + 16 q_*^2 | m_i controls F columns, not E columns; q-rho term needs entry bound | eta_sel unsupported until bridge is fixed | fixed-point absorption is conditional | J0 and S1-S2 to J2 | intended step_007 to J3 and local basin | adversarial aligned row only passes if J0 is valid | sketch/interface defect | /proof-sketch |
| J3 E_row and eta_sel | generated deterministic event and basin seed | solved small gain | J2 to step_007 output | arithmetic rho < 17 q_*^2 and eta_sel <= 80 q_*^2 passes conditionally | row variable and smoothing rho names collide | eta_in = max(rho,kappa), eta_sel = chi_max + eta_in | J0, J2, and E/F conversion required | direct 1/512 entry conditional | no probabilistic failure, finite static closure | J2 to J3 to step_008 and step_009 | flow lists E_row but has backwards step_003 consumer | q=0 and fixed-point boundary pass conditionally | sketch/interface defect | /proof-sketch |
| Selected residual and G2 tube export | residual-to-target and membership | Delta decomposition and best scalar | step_007 | direct constant plausible, component bounds asserted | normalized versus raw M_M^* remains mixed in gauge section | col <= 128 q_*^2, eta <= 80 q_*^2, T norm < 1/512 | J3, chi, scalar deltas, and Delta-perpendicular must all export | same target if convention is fixed | diagonal, direction, Gram, and quadratic terms | J3 to G2 to step_009 | intended step_007 to step_009 | direct entry arithmetic passes | sketch/interface defect | /proof-sketch |
| Equal-norm gauge and norm_T | quotient metric and chart | B_M balancing rule and G1 | step_007 to step_009 wrapper | equal-norm uniqueness plausible, pair norm typing incomplete | raw/unit factor convention unresolved | G1 <= 4 times column difference | nonzero columns, relative kappa_0 margins, and induced b_X norm missing | G2 must be in same chart | gauge and scale defects can persist | selected reps to gauge to step_009 | intended gauge output to A1-A2 | small raw columns and sign chart need stress | sketch/interface defect | /proof-sketch |
| D_K Gram floor and inverse | nonsingularity and pseudoinverse interface | diagonal conjugation and Hadamard bound | step_008 and step_009 | algebra matches active update once scales are fixed | normalized KR Gram versus raw factors must be fixed | difference <= 1/16, floor >= 7/8, inverse <= 8/7 | eta and column bounds to normalized Gram | same target conditional on G2 | invariant tube, no rank loss inside | repaired G2 to step_009 | step_009 to step_010 | tube boundary arithmetic passes | sketch/interface defect | /proof-sketch |
| A1-A2 pairwise contraction and tube recurrence | all-time local stability | normal-equation identity plus cited derivative | Uschmajew DOI 10.1137/110843587 and current wrapper | identities stated, but eta(e,e') and norm on b_X are undefined | source scaling convention only outlined | coefficient < 1/8, forcing 32 q_*^2, coefficient 1/16 | need typed induced norms, G1 absorption, and source boundary | residual transfer follows only after G2 | geometric contraction with fixed forcing | step_008 and repaired step_009 to step_010 | step_009 to step_010 | first active inverse and pseudoinverse boundary need proof | sketch/interface defect | /proof-sketch |
| Quotient Hessian and baseline | nondegeneracy and exact specialization | dual bases, KR floor, exact map | step_001, step_004, step_008 | source and target match | scaling quotient and q=0 convention match | quotient margin >= 1 - 8 q_*, R+ <= R^2, S+ <= R S | full rank and exact target supplied | exact zero residual preserved | zero forcing in baseline | static geometry to step_008 and baseline steps | step_008 and step_010 to final theorem | scaling nullspace and q=0 pass | step-local | None |
| p_0, stopping, restart, and runtime | quantitative specialization | coverage, deterministic E_row, contraction, independence | step_003, step_007, step_010, step_011 | p_0 = 1/2 follows if J3 is valid | nested confidence mode intended | (1-p_0)^J <= delta_init and m = O(log(1/epsilon)) | E_row producer and p_0 path must be acyclic | returned output same target | geometric restart accumulation | repaired chain to step_011 | current flow has a backwards E_row consumer | delta and epsilon boundaries pass conditionally | sketch/interface defect | /proof-sketch |
| Generated-output flow and gate evidence | provenance and theorem assembly | producer-consumer tables | proof_sketch sections 1274-1305 | most rows synchronized, one dependency is backwards | T_ALS constants synchronized | every consumed output needs producer and path | add Q_M, J0-J3 and fix E_row consumers in public tables | final theorem cannot consume unsupported row source | unresolved bridge propagates to rate | revise step_007 and step_011 ownership | E_row should feed step_008 and step_011, not step_003 | no stale full-ball or 3/4 constants remain | sketch/interface defect | /proof-sketch |

## Blocking Issues

1. J0 and J1 do not define a valid residual identity
   (proof_sketch.md:938-961). F_M was already defined as the pair-product
   residual, so the displayed Hadamard difference equals the three E/H terms
   without an extra Q_M. J1 appends Q_M without defining whether
   F_M = terms + Q_M, or what Q_M contains. Its claimed row and column
   bound is only prose. Downstream effect: the forcing term in J2 has no
   legal producer and may hide E-dependent errors. Smallest repair: define
   Q_M entrywise, state the exact equation for F_M, and prove J0 from the
   last-update equations with all weight and denominator terms exposed.
2. J2 uses a column control that S1-S2 do not provide
   (proof_sketch.md:354-362, 948-984). m_i bounds the column l1 mass of
   F_M plus the diagonal scalar error, but J2 defines kappa as the column
   l1 mass of E_M and immediately asserts kappa <= chi_max. No bridge from
   F_M to E_M is stated; pair products can be small while a single mode
   correlation error is not. Downstream effect: eta_in_sel and J3 are
   unsupported even if J0 is accepted. Smallest repair: include E_M column
   control in m_i with a valid S1 proof, or derive a three-mode inversion
   lemma with explicit constants and target-scale residual.
3. The deterministic J0 row budget is not established
   (proof_sketch.md:938-947). A per-column displacement or F bound does not
   imply a dimension-free row l1 bound for Q_M when errors align in one row.
   The sentence charging terms to H_M does not identify the Q_M entries,
   the weight-slack allocation, or a noncircular normal-equation producer.
   Downstream effect: the claimed deterministic E_row event and p_0 are
   not theorem-facing outputs. Smallest repair: give a complete dual-basis
   residual expansion, prove row and column Q_M <= 8 q_*^2 from primitive
   controls and S1-S2, and show no target-row closure is assumed.
4. Raw and normalized factor conventions remain mixed
   (proof_sketch.md:430-480, 927-934). Step_007 declares M^* to be unit
   directions, while the gauge section calls M_M^* the exact raw realized
   factor matrix and sets G_M = M_M^{*T} M_M^*. If raw, G_M has diagonal
   lambda_j^(2/3), not one, so H_M=G_M-I and D_M-I are not the same
   quantities. The local row variable rho also shadows the smoothing rho.
   Downstream effect: G2, D_K, the 1-q_*^2 Gram floor, and the explicit
   kappa_0 dependence cannot be audited in one norm. Smallest repair:
   separate normalized and raw symbols, use a relative chart, and rename
   the row mass.
5. G1 and A1-A2 are still not typed as a complete norm proof
   (proof_sketch.md:453-490, 535-572). The quantity eta(e,e') is undefined,
   and norm_T is applied to b_X differences without an induced definition.
   Existence and nonzero-column margins for the equal-norm chart and the
   absorption of gauge components are asserted rather than derived.
   Downstream effect: pairwise contraction and tube invariance remain
   conditional on an unverified interface. Smallest repair: define the
   pair metric for all normal-equation objects, prove G1 and norm
   equivalence with kappa_0-relative bounds, and then derive A1-A2.
6. E_row provenance has a backwards consumer
   (proof_sketch.md:1299-1301). The flow lists step_003 as consuming an
   E_row output produced by step_007, although step_007 depends on step_003.
   The Exported Interface table also lacks a standalone E_row and p_0 row.
   Downstream effect: Generated Output Flow and explicit-rate gates are not
   synchronized. Smallest repair: make E_row feed step_008 and step_011
   only, and list Q_M, J0-J3, E_row, and p_0 with their paths.

## Required Repair Bundle

1. Define Q_M and the exact F_M residual identity, then prove J0 with a
   dual-basis normal-equation expansion, explicit weight and denominator
   budgets, and row and column l1 bounds. Affected step: step_007.
2. Repair the E_M/F_M column interface: either strengthen m_i and S1-S2
   to control E_M columns or add a proved three-mode inversion bridge.
   Recompute kappa, rho, J2, J3, and eta_sel. Affected steps: step_006
   and step_007.
3. Separate normalized direction matrices from raw balanced factors, rename
   the row-mass variable, and define one relative quotient chart. Prove
   G2 and all scalar, column, row, and residual bounds in that convention.
   Affected steps: step_007 through step_009.
4. Complete G1 and A1-A2 with a typed pair norm, an induced norm for b_X
   and cyclic updates, nonzero-column margins, kappa_0-relative scaling,
   and the exact Uschmajew source boundary. Affected steps: step_009 and
   step_010.
5. Synchronize the Exported Interface and Generated Output Flow tables and
   dependency notes. Remove the backwards E_row consumer and list Q_M,
   J0-J3, E_row, p_0, and all downstream consumers. Affected steps:
   step_007 and step_011.

Target-preserving repair check: these repairs can retain the current
primitive assumptions, Gaussian protocol, rank U(r), tensor metric, nested
probabilities, baseline, and success criterion. The direct-entry numerical
margin is adequate. IDEA_FAIL is not required unless no valid same-setting
row-small-gain mechanism can be supplied.

## Review Rationale

REVISE_SKETCH is the deepest required change. Attempt 7 removes the invalid
sign-concentration route and gives a promising deterministic small-gain
shape, with correct conditional numerical constants. It is not ready for
proof-step work because J0/Q_M is undefined in the J1 identity, J2 uses an
unproved F-to-E column implication, and the raw/unit norm and A1-A2
interfaces remain incomplete. These are substantial same-setting sketch
repairs, so IDEA_FAIL would be too strong and ACCEPTED would be premature.
