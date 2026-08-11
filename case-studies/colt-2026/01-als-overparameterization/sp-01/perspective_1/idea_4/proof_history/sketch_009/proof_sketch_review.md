# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: perspective_1/idea_4.
- Sketch attempt: 9, the J0r/J0a/J0b and S1a revision after the archived
  attempt-8 review.
- Goal mode: exact-goal mode. The rank U(r), simultaneous JEP-ALS protocol,
  nested probabilities, active CP-ALS target, arbitrary relative error,
  runtime claim, and exact orthogonal baseline are unchanged.
- Reviewed inputs: setting.md, the current proof_sketch.md, technical_survey.md,
  and proof_history/sketch_008/proof_sketch_review.md.
- Attempt-9 changes audited: the opening identity is synchronized; S1a
  introduces an explicit denominator; J0r gives an indexed residual; J0a
  restores diagonal factors; J0b claims deterministic induced row and column
  bounds. The raw/unit chart, A1-A2 wrapper, and public flow tables are
  otherwise unchanged from attempt 8.

## Sketch Viability Score

5

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The exact conditional theorem target remains faithful to
  setting.md. The subquadratic rank, data-only selection, same-target active
  refinement, nested confidence modes, runtime variables, and q=0 baseline
  are preserved. No theorem-contract change is needed for the repairs below.
- Dependency audit: The numbered step graph remains acyclic. The public flow
  artifacts do not: the E_row/p_0 row has NF=12 under a header with NF=9,
  lists step_003 and step_007 as consumers of a step_007 output, and places
  prerequisites in the final-use field. The public rate prose also groups
  E_cov as if it followed from later recurrence and row bounds.
- High-risk coverage: Static concentration, window coverage, R,S recurrence,
  score separation, graph clustering, and conditional entry arithmetic remain
  plausible. The new J0 algebra does not produce the claimed row closure:
  J0a contradicts the defining identity for F_M, and J1 changes the
  left-hand object from F_M to E_M without an equation.
- Explicit-rate coverage: Rank remains independent of delta_init, and the
  intended deterministic E_row event would add no failure budget. Since J1-J3
  and the local nu=1/8 wrapper are not established, p_0, the stopping rate,
  and the final restart bound remain conditional rather than exported facts.
- Assumption and citation plausibility: No generated event is promoted to a
  primitive assumption. The Uschmajew source is identifiable and plausibly
  supplies a local qualitative framework after its assumptions are mapped.
  It does not supply J0r/J0a, the current raw/unit chart, or the numerical
  A1-A2 estimates.

## Early Obstruction Audit

- limiting-case stress: At q_real = 0 and Gamma = 1, the simultaneous map
  still gives (A+,B+,C+) = (BC,AC,AB), R+ <= R^2, and S+ <= R S.
  The exact CP representation has zero residual. Algebraically, however,
  the definitions of C_M, D_M, E_M, P_M, and F_M force the J0a right side
  without Q_M for every q, not only q=0. A nonzero J0r residual therefore
  cannot be inserted into that identity.
- theorem-critical bridge support: S1a names the denominator and J0r names
  three forcing classes, which is useful localization. S1a has no d_i term
  and division by 31/32 changes both displayed constants, so it does not imply
  S1 as written. J0a controls F_M, while J1 claims a bound for eta_row of
  E_M; no inversion or update equation connects those left-hand objects.
- Exported Interface Feasibility Gate: The desired raw controls are chi_max,
  cumulative Gram mass, denominator and weight slack, and a last-update
  residual. The exported eta_row < 17 q_*^2 interface lacks a valid source.
  The current Exported Interface table also omits standalone E_row and p_0
  rows, while its joint-residual row treats the invalid J0-J3 chain as closed.
- Theorem-Critical Mechanism Witness Gate: J0r/J0a/J0b has the intended
  theorem role, forcing classes, boundary claim, and adversarial-row target.
  The witness fails source-to-claim matching: the definitional F_M expansion
  leaves Q_M identically zero, and taking a row norm of that expansion cannot
  bound E_M on the left. This is a same-setting sketch/interface defect.
- Entry-State / Activation Trace Gate: The window entry, first simultaneous
  update, q=0 trace, graph-selected representative, and intended first active
  cyclic sweep are all named. The trace breaks between the selected
  per-column certificate and E_row, then again at G2 because the chart omits
  a distinct raw amplitude coordinate. A later basin assumption cannot repair
  either missing entry bridge.
- Step-Locality And Theorem-Contract Gate: Static geometry, window and coupon
  bounds, R,S, angles, score gap, graph separation, and baseline recurrence
  are step-local. S1a-to-S1, J0r/J0a/J0b, J1-J3, raw/unit scale typing,
  G1/G2, A1-A2, and flow synchronization are sketch/interface defects.
  None currently requires an idea-level or theorem-contract change.
- Noncircular Closure Gate: The intended producer order is step_006
  per-column control, step_007 deterministic row closure, step_009 basin
  invariance, and step_011 probability aggregation. It is not yet legal:
  J1 assumes the E_M row quantity that J0a never produces, and the public
  E_row row points backwards to step_003 and to step_007 itself as consumers.
- mechanism-source/boundary: A genuine row source could come from an exact
  last-update equation with E_M on the left, induced l1 bounds on the
  realized dual-basis operator, and denominator control. J0r instead uses a
  spectral inverse bound for an induced l1 claim, leaves Q_M's diagonal
  unspecified, and divides by alpha after r already contains alpha inverses.
  The q=0 and one-row boundaries therefore do not validate J0b.
- Generated Output Flow Gate: E_cov must be produced by step_003 before the
  recurrence; E_row and eta_sel must be produced by step_007; p_0 combines
  coverage with the downstream deterministic chain and is consumed by
  step_011. The current row has the wrong width, backwards consumers, wrong
  field contents, and no synchronized standalone public interface.
- Source-To-Claim Adequacy Gate: Expanding C_M = G_M D_M + E_M gives F_M
  exactly as the three Hadamard terms in J0a with Q_M = 0. A separate
  normal-equation residual may be useful only in a separately defined update
  equation, not by changing this identity. Moreover, a bound on r_M gives a
  bound on Q_M only after the outer alpha inverse and an induced-norm dual
  basis estimate are charged.
- object-target compatibility: The selected best-scalar factors and exact
  raw balanced factors represent the same tensor up to permutation, signs,
  and CP scaling. The chart then uses D_M both for the diagonal of a
  unit-direction correlation and for raw factor scales in D_K. These are
  different objects. Delta_M = D_M - I in the unit chart is an angular
  correlation defect, not the missing relative raw amplitude coordinate.
- Residual-To-Target Adequacy Gate: The stated scalar, direction, pair-Gram,
  and quadratic decomposition has adequate numerical room if eta_sel is
  valid. Its raw amplitude term, perpendicular component, and J1 producer
  are not derived in one norm. Consequently G2 and the same-target 1/512
  membership certificate remain unsupported despite the correct arithmetic
  256(81 q_*^2) < 1/512.
- Baseline Invariance Obligation: The exact simultaneous map, zero padding,
  exact CP target, zero residual, and arbitrary-accuracy conclusion are
  preserved at q=0 and Gamma=1. The retry must keep this exact specialization
  while replacing the invalid J0a producer; no conservative baseline
  remainder is needed.
- Scope-Accumulation Compatibility Gate: Q1 gives a finite-horizon transient
  recurrence and the proposed J1 gives a fixed-point absorption form. The
  selected-row forcing has no valid one-step equation, so its sign-independent
  dimension-free budget is not established. The active tube recurrences are
  also conditional on an A1-A2 contraction coefficient that fails the stated
  boundary arithmetic.
- scope/dependence: Exposed variables and nested probability modes remain
  consistent with setting.md, and U(r) still excludes confidence factors.
  The current p_0 provenance, J0 tag references, and flow fields are not
  synchronized with the actual step order.
- generated-condition provenance: E_sm, E_cov, E_RS, E_ang, E_cluster,
  E_row, eta_sel, G2, tube invariance, and p_0 are all intended derived
  outputs. The chain is valid through E_cluster only conditionally in
  outline; E_row has no legal J0-J1 producer, so every later generated output
  that consumes it remains conditional.
- citation applicability: Uschmajew, DOI 10.1137/110843587, Assumption 1,
  Lemma 3.2, and Theorems 3.3 and 3.5 are identifiable local sources. The
  sketch still must map the exact quotient coordinates, scaling convention,
  hypotheses, and conclusion. The source does not justify the omitted
  pair-difference terms in the claimed nu=1/8 arithmetic.
- same-setting repair: Keep the exact algebraic F_M identity with Q_M = 0,
  and derive a separate indexed last-update equation whose left side is
  E_M or another explicitly invertible three-mode residual. Prove its induced
  row and column bounds, repair S1 constants, separate raw amplitudes from
  angular correlations, and recompute the local contraction and flow tables.
- target-preserving repair: The selected initialization is far inside the
  nominal tube if the row and raw-scale bridges are proved, so constants or
  a smaller explicit tube can be changed without altering the setting,
  algorithm, rank, metric, probability mode, or exact baseline.
- high-risk classes: Static geometry, rare-entry probability, all-target
  coverage, simultaneous recurrence, observable clustering, baseline, and
  restart form pass in outline. The blocking classes are the J0 definitional
  algebra, induced row source, S1 denominator conversion, raw/unit amplitude
  typing, A1-A2 contraction arithmetic, and generated-output flow.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E_sm norms, Gram rows, weights, and Khatri-Rao floor | generated static instance event | Gaussian concentration and Schur products | primitive assumptions to step_001 | matches realized normalized factors | normalized-column Gram convention | separate linear, quadratic, and normalization margins | base scale, q_* slack, weight slack, delta_sm export E_sm | same realized object, no transformed bridge | finite union, no trajectory accumulation | primitive assumptions to step_001 | step_001 to step_002, step_004, step_008, step_009 | q=0 and orthogonal limit pass | step-local | None |
| Window event and R_0 S_0 entry | anti-concentration and generated entry | correlated Gaussian regression and product tails | step_001 to step_002 | target window and competitor products match setting | covariance row-sum convention checked in outline | per-target probability has r^(-5/3) log factor scale | c_win, beta_*, r_0, and C_rank provide the per-slot interface | raw ratios are the consumed target coordinates | finite competitor union, no persistent defect | E_sm to step_002 | step_002 to step_003 and step_004 | denominator and r=3 boundaries pass in outline | step-local | None |
| All-target coverage at U(r) | generated coverage and one-run source | independent slots and coupon bound | step_002 to step_003 | coupon calculation matches all-target claim | slot independence from random-initialization assumption | k p >= 8 log r and miss <= r^-7 | C_rank >= 16/c_all exports E_cov and coverage probability | same target labels only in proof, observable protocol unchanged | finite slot scope | step_002 to step_003 | step_003 to step_004 and step_011 | finite r and positive coverage boundary pass | step-local | None |
| R,S recurrence and denominator invariant | recursive alignment and baseline mechanism | simultaneous old-state contraction expansion | step_001 through step_004 | exact ratios and map match setting | q_real and Gamma conventions match | invariant interval, positive denominator, S coefficient below 1/4000 | R_0, q_real, Gamma, and L_0 export E_RS | same target-relative state is consumed | fixed q forcing vanishes at q=0 | E_sm and E_cov to step_004 | step_004 to step_005, step_006, step_007 | q=0 map and denominator boundary pass | step-local | None |
| Angle and displacement certificate | generated observable control | span projection, Gram inversion, and Q1 | step_004 to step_005 | thresholds match filter and graph | realized Gram convention checked | transient plus fixed q_* term below 64 q_* | S_t, burn-in, and C_0 export E_ang | same direction metric is consumed | finite proposal horizon with geometric transient | E_RS to step_005 | step_005 to step_006 and step_007 | first simultaneous update and horizon pass | step-local | None |
| Score gap and graph clusters | membership and data-only selection | stationary support classification and perturbation | step_005 to step_006 | component and mixture classes match filter | observable score and graph thresholds match setting | mixture below 0.723 and target edges above 1 - 64 q_* | score, displacement, angle, and Gram controls export E_cluster | representatives remain in exact target metric | finite graph and strict tie margins | E_ang and filter to step_006 | step_006 to step_007 | tied supports and graph boundary pass in outline | step-local | None |
| S1a to S1 selected-member transfer | per-column direction and coefficient certificate | last-update denominator and score ordering | step_004 and step_006 | intended member-local claim matches role, implication fails | alpha is a target contraction but d_i is separate | S1a bounds m after a 31/32 factor, while S1 bounds d_i plus m with unchanged constants | score, denominator, E and F columns, and displacement are named | per-column target is plausible after constants are repaired | no row accumulation at this stage | covered member and graph selection to step_006 | step_006 certificate to step_007 | score and denominator boundaries do not supply d_i conversion | sketch/interface defect | /proof-sketch |
| Definitional F_M identity and J0a | algebraic coefficient relation and row-mechanism premise | expansion of C_M = G_M D_M + E_M | definitions before step_007 | source contradicts the added residual | diagonal D factors are now shown but Q_M cannot appear | exact expansion equals the three J0a Hadamard terms with Q_M = 0 | C, G, D, E, P, and F are sufficient to check directly | no update residual is exported by this identity | purely algebraic, no stochastic forcing | definitions directly determine F_M | J0a is intended for J1-J3 but cannot produce them | contradiction persists for nonzero q; q=0 alone is not diagnostic | sketch/interface defect | /proof-sketch |
| J0r and J0b residual budget | theorem-critical deterministic forcing | proposed last-update and dual-basis residual | step_007 direct formula | a separate update residual could match, but current Q mapping does not | Q divides by alpha after r already contains alpha inverses; induced l1 dual norm missing | r row and column sums claimed <= 8 q_*^2, then same constant claimed for Q | H row and column mass, weight slack, denominator, and diagonal factors are named | target-scale constant loses at least an outer 32/31 factor | denominator, weight, and two-Gram forcing; no sign cancellation | intended direct producer before J1 | proposed Q to J1-J3, step_008, step_009 | Q diagonal undefined and adversarial row not proved | sketch/interface defect | /proof-sketch |
| J1-J3 selected row closure | incoming row control and basin seed | J0a Hadamard estimate plus member columns | step_006 and step_007 | J0a has F_M on the left, J1 has E_M row mass | E and F conventions are not linked by an invertible update equation | eta_row <= 4 q_* chi_max + q_* eta_row + 16 q_*^2 is unsupported | chi_max and static Gram mass are available; left-object bridge is absent | eta_sel and G2 have no producer | fixed-point arithmetic is correct only after a legal recurrence | no noncircular E_row producer exists | intended step_007 to step_008, step_009, step_011 | one-row alignment remains uncontrolled | sketch/interface defect | /proof-sketch |
| E_row and p_0 generated flow | event provenance and conditional probability | coverage plus deterministic downstream chain | step_003 and step_007 intended | current row reverses producer-consumer order | seven-column flow schema is violated by a row with NF=12 | E_cov should precede E_row, and p_0 should feed step_011 | standalone E_row and p_0 exported interfaces are absent | final probability waits on basin and stopping outputs | no extra failure budget if deterministic chain is valid | step_003 then step_007 then step_009 and step_011 | current row lists step_003 and step_007 as consumers | malformed width and backward edge fail the gate | sketch/interface defect | /proof-sketch |
| G2 selected residual and tube entry | residual-to-target bridge and membership | J3 plus best-scalar decomposition | step_007 to step_009 | target and numerical margin match, inputs do not | unit correlations and raw amplitudes are conflated | col <= 128 q_*^2 and eta <= 80 q_*^2 imply nominal 1/512 entry | chi, row mass, scalar amplitude, and perpendicular terms must export | same-target arithmetic passes only after raw scale and J1 are fixed | diagonal, direction, Gram, and quadratic defects | repaired step_007 to G2 to step_009 | step_007 to step_008 and step_009 | direct margin passes conditionally | sketch/interface defect | /proof-sketch |
| Equal-norm gauge, raw scale, and G1 | quotient chart and norm equivalence | balancing diagonals and positive raw norms | selected factors to step_009 | chart omits a distinct raw amplitude coordinate | D_M is used both as unit correlation diagonal and raw scale diagonal | ratio gauge bound 4 times e_col is asserted | raw column ratios and relative amplitude must be added to the norm | selected raw object cannot be compared in current e_col alone | small-column and gauge defects can persist | selected representatives to canonical chart | G1 feeds G2 and A1-A2 | g_j positivity does not prove pairwise gauge Lipschitz in current norm | sketch/interface defect | /proof-sketch |
| D_K Gram floor and inverse branch | nonsingularity and pseudoinverse interface | diagonal conjugation and tube Gram bound | step_001 and step_009 | algebra is plausible after D objects are separated | raw D_K is not the unit-correlation D_M | difference <= 1/16, floor >= 7/8, inverse <= 8/7 | eta and e_col controls are conditional and amplitude is missing | same target after a corrected scale chart | invariant tube and no rank loss | repaired G2 to step_009 | step_009 to step_010 | tube boundary arithmetic passes conditionally | sketch/interface defect | /proof-sketch |
| A1-A2 pairwise contraction | local stability and invariant tube | direct normal-equation difference plus cited local framework | step_008 and step_009 | identities have the right role, numerical conclusion does not follow | induced tuple norm and cyclic output map remain only described | displayed full-tube upper certificate is 0.1439 before the 8/7 inverse factor, so it cannot certify 1/8 | eta_delta, tube radii, Gram inverse, and gauge terms are named | contraction acts on same target only after chart repair | pair-difference and inverse defects persist across sweeps | step_008 and repaired step_009 before step_010 | step_009 to step_010 | claimed 0.0971 omits 4 delta-col and 4 delta-eta terms | sketch/interface defect | /proof-sketch |
| Quotient Hessian kernel and margin | structural nondegeneracy modulo scaling | dual bases and Khatri-Rao floor | step_001, step_007, step_008 | conclusion matches local theorem role | source mapping waits on corrected quotient coordinates | dual contractions should isolate scaling and leave positive margin | full-rank and Gram controls are available | exact active target, no surrogate intended | scaling nullspace removed, q=0 preserved | static geometry and selected bridge to step_008 | step_008 to step_009 | scaling and orthogonal boundaries pass in outline | sketch/interface defect | /proof-sketch |
| Baseline invariance and exact specialization | baseline recovery and zero-limit obligation | exact simultaneous map and exact CP representation | setting to step_004, step_008, step_010 | conclusion is explicitly retained | q=0 and Gamma=1 match setting | R+ <= R^2, S+ <= R S, zero residual, arbitrary accuracy | exact target and zero padding are direct controls | no transformed surrogate or remainder | all interference forcing vanishes at q=0 | setting through recurrence and refinement | baseline steps to final theorem | exact first-update and stationary trace pass | step-local | None |
| Public probability, stopping, and runtime | quantitative theorem closure | coverage, deterministic row event, contraction, and restarts | step_003, step_007, step_010, step_011 | theorem mode matches, upstream interfaces fail | nested probability convention is correct | (1-p_0)^J <= delta_init and logarithmic stopping are conditional | rank stays U(r), but p_0 and nu lack legal producers | returned tensor is same target only after G2 and A1-A2 | geometric restart and finite runtime accumulation | corrected upstream chain to step_011 | step_011 consumes all certified outputs | epsilon and delta boundaries pass conditionally | sketch/interface defect | /proof-sketch |
| Artifact and tag synchronization | generated-output provenance and assembly | public tables, step graph, and equation labels | proof_sketch public interfaces | E_row row, J0 references, and public rate prose disagree | current schema and labels are internally inconsistent | every output needs one earlier producer, consumers, final use, and dependency path | add separate E_cov, E_row, eta_sel, p_0, and local-basin rows | unsupported outputs currently propagate to theorem assembly | structural flow defect, not a counterexample | step_003 to step_007 to step_009 to step_011 | current E_row row has backward consumers and extra cells | attempt identity is fixed, public interfaces are not | sketch/interface defect | /proof-sketch |

## Blocking Issues

1. J0a contradicts the earlier definitions
   (proof_sketch.md:345-352 and 1010-1022). From
   C_M = G_M D_M + E_M and the definition of F_M, direct expansion gives
   F_M = (H_M' D_M') o E_M'' + E_M' o (H_M'' D_M'')
   + E_M' o E_M'' exactly, because E_M has zero diagonal. Thus J0a forces
   Q_M = 0 identically. The generally nonzero J0r residual cannot be added
   to this algebraic identity. Downstream effect: J0a is not a legal
   normal-equation producer. Smallest repair: keep the exact F_M identity
   and state a separate last-update equation, with a separately named
   left-hand residual, whose left side genuinely controls E_M.
2. J1 does not follow from J0a
   (proof_sketch.md:1041-1064). J0a has F_M on the left, so taking induced
   norms bounds F_M in terms of E_M; J1 instead puts eta_row of E_M on the
   left. No equation, three-mode inversion, or coercive operator reverses
   that direction. A column bound on E_M cannot supply a dimension-free row
   bound under adversarial alignment. Downstream effect: E_row, J2, J3,
   eta_sel, G2, and p_0 have no producer. Smallest repair: derive an actual
   E-left update system and prove its row-small-gain inverse before J2.
3. J0r does not imply J0b with the stated constant
   (proof_sketch.md:988-1040). Q_M is defined as r_M/alpha_M after r_M
   already contains alpha_M inverse factors. Even if the displayed r_M
   induced norms were 8 q_*^2, alpha_M >= 31/32 gives only
   Q_M <= (32/31) 8 q_*^2. The diagonal of Q_M is unspecified, and
   ||G_M^{-1}||_2 <= 8/7 does not by itself provide dimension-free row and
   column l1 control for a dual-basis contraction. Downstream effect: the
   claimed sign-free adversarial-row budget is unproved. Smallest repair:
   derive the exact normalization once, define diagonal entries, use induced
   l1 inverse bounds, and recompute every charge and downstream constant.
4. S1a does not imply S1 or S2 as written
   (proof_sketch.md:368-401). S1a controls only the modewise m_i summand,
   not d_i + m_i. Dividing by a lower bound of 31/32 changes 4 and 24 to
   at least 128/31 and 768/31, before adding the displacement d_i. The prose
   lists term classes but gives no indexed three-mode derivation. Downstream
   effect: chi_max <= 56 q_*^2 and J1a are unsupported. Smallest repair:
   state the exact per-mode inequalities, add a sourced displacement bound,
   and propagate the corrected constants through S2 and J1-J3.
5. The raw/unit chart conflates angular correlations and factor amplitudes
   (proof_sketch.md:454-560). D_M at lines 491-499 is the diagonal of a
   unit-direction correlation, while D_Y, D_Z, and D_K at lines 543-558 are
   raw scale diagonals. Delta_M = D_M - I is therefore not a relative raw
   amplitude error, and the current e_col norm does not control the raw
   quantities on which B_M and D_K depend. Downstream effect: G1, G2,
   same-target entry, and the pseudoinverse conjugation are not typed in one
   chart. Smallest repair: introduce distinct direction and amplitude
   diagonals and include the relative raw amplitude in the pair norm.
6. A1-A2 do not yield nu = 1/8 on the stated tube
   (proof_sketch.md:582-629). For two tube points,
   delta-col <= 2/512 and delta-eta <= 2/256. Substitution gives the
   full-tube upper certificate 1/300 + 3/64 for the first term, while the
   second contributes 8(2/256 + 2/512). The resulting certificate is about
   0.1439, above 1/8 even before applying the 8/7 inverse factor in A1.
   Thus these inequalities do not prove nu = 1/8; the displayed 0.0971 drops
   both pair-difference terms. Downstream effect: pairwise contraction and
   invariant-tube stopping are not proved. Smallest repair: retain every A1-A2
   factor and either improve constants or choose a compatible explicit tube
   that still contains G2.
7. The public output artifacts remain malformed and backwards
   (proof_sketch.md:633-647 and 1373-1404). The E_row/p_0 flow row has
   NF=12 rather than NF=9 under its 7-column schema, names step_003 and
   step_007 as consumers of a step_007 output, and has no matching standalone
   Exported Interface row. References to J0 remain after the labels changed
   to J0r/J0a/J0b. Downstream effect: provenance, probability, and final-use
   paths cannot be audited. Smallest repair: rebuild both public tables and
   the rate prose with the forward path step_003 -> step_007 -> step_009 ->
   step_010 -> step_011.

## Required Repair Bundle

1. Separate the two algebraic roles at step_007. Preserve the definitional
   F_M expansion with Q_M = 0, then derive an exact indexed last-update
   equation with E_M or another invertibly equivalent row quantity on the
   left. State pre-state and post-state symbols explicitly. Smallest target:
   /proof-sketch, step_007.
2. Rebuild the deterministic row lemma from that equation. Define every
   residual entry including the diagonal, normalize by alpha exactly once,
   prove induced row and column l1 bounds for the dual-basis operator, and
   charge denominator, weight, Gram, and selected-error terms without
   assuming eta_row. Recompute J1-J3. Smallest target: /proof-sketch,
   step_007.
3. Repair S1a at step_006. Give the indexed three-mode denominator inversion,
   a separate displacement inequality, and constants after division by
   31/32. Propagate the resulting chi_max through step_007 and G2. Smallest
   target: /proof-sketch, steps 006-007.
4. Replace the overloaded D notation at steps 007-009. Use one diagonal for
   unit target correlations and another for relative raw amplitudes, prove
   the g_j and B_M bounds in a norm containing both, and restate D_K, G1,
   G2, and the same-target residual in that chart. Smallest target:
   /proof-sketch, steps 007-009.
5. Recompute the local wrapper at step_009. Define the induced b_X output
   norm, retain the 8/7 inverse multiplier and all pair-difference terms,
   prove scalar/gauge absorption, and choose explicit tube radii and nu that
   are numerically compatible with the repaired G2. Map the cited source
   hypotheses in the same coordinates. Smallest target: /proof-sketch,
   steps 008-010.
6. Synchronize all public artifacts. Replace stale J0 references with exact
   labels, add separate E_cov, E_row, eta_sel, basin, and p_0 interfaces,
   give every Generated Output Flow row exactly seven cells, remove backward
   consumers, and state the nested probability path in step order. Smallest
   target: /proof-sketch, steps 003, 007, 009-011 and both public tables.

Target-preserving repair check: these repairs can retain the primitive
assumptions, simultaneous proposal protocol, data-only selection, rank U(r),
same-target Frobenius metric, nested probabilities, arbitrary accuracy,
runtime variables, and exact q=0 baseline. The current numerical initialization
is much smaller than 1/512, so a corrected narrower local tube remains
plausible. IDEA_FAIL is not required unless no E-left deterministic row
equation can be derived under the existing setting.

## Review Rationale

REVISE_SKETCH is the deepest required change. Attempt 9 usefully exposes
indices, denominators, diagonal factors, and intended defect charges, but the
central row-small-gain mechanism is algebraically invalid: J0a cannot contain
a nonzero Q_M, J1 does not follow from its left-hand object, and J0b and S1a
lose required factors. The unchanged raw/unit chart and A1-A2 arithmetic add
independent basin blockers, while the E_row flow row is still malformed and
backwards. These are major same-setting sketch repairs, warranting score 5;
the exact target and baseline remain plausible, so IDEA_FAIL would be too
strong.
