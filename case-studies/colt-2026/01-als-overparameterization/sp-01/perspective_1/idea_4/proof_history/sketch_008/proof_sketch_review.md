# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: perspective_1/idea_4.
- Sketch attempt: 8, identified in the Sketch Identity block. The opening
  Formalized Setting paragraph still says attempt 7, which is a metadata
  inconsistency to repair.
- Goal mode: exact-goal mode. The rank U(r), simultaneous JEP-ALS protocol,
  nested instance and initialization probabilities, active CP-ALS target,
  arbitrary relative error, runtime claim, and exact orthogonal baseline are
  unchanged.
- Reviewed inputs: setting.md, the current proof_sketch.md, technical_survey.md,
  and proof_history/sketch_007/proof_sketch_review.md.
- Attempt-8 changes audited: m_i now includes delta, E_M column mass, and
  F_M column mass; J0 names Q_M and writes an explicit F_M identity; the
  normalized/raw factor split, positive gauge floor, pair chart norms, and
  eta_delta are present; J1-J3 give deterministic row-small-gain arithmetic.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The exact theorem target remains aligned with setting.md.
  The q=0 simultaneous map, zero padding, rank, nested confidence, and
  arbitrary-epsilon conclusion are preserved. No idea-level target drift is
  visible.
- Dependency audit: The numbered proof steps are acyclic in the roadmap.
  However, the Generated Output Flow row for E_row and p_0 lists step_003 and
  step_007 as consumers of an output produced by step_007. This is backwards
  for step_003, which must precede step_007. The public Exported Interface
  table also has no standalone E_row or p_0 row. The stale attempt-7 sentence
  is a separate identity defect.
- High-risk coverage: Window, coverage, R,S recurrence, score separation,
  graph thresholds, Gram floors, inverse arithmetic, and the conditional
  small-gain numerical calculations are plausible. J0's residual producer,
  the F-to-E column bridge, raw/unit scale conversion, and A1-A2 remain
  theorem-critical interface gaps.
- Explicit-rate coverage: The proposal rank remains independent of
  delta_init, and the deterministic row result is intended to give
  p_0 >= 1/2 with no extra failure budget. This probability statement is
  conditional on the unresolved J0/J1 producer and the corrected flow, so it
  is not yet an exported rate fact.
- Assumption and citation plausibility: Generated events are described as
  derived rather than primitive assumptions. The Uschmajew DOI, assumption,
  lemma, and theorem labels are identifiable and are used only after a
  current-notation wrapper is promised. The citation does not itself prove
  J0, G1, or A1-A2, and the required source-convention and hypothesis
  discharge remain incomplete.

## Early Obstruction Audit

- limiting-case stress: At q_real = 0 and Gamma = 1, the simultaneous map is
  (A+,B+,C+) = (BC,AC,AB), so R+ <= R^2, S+ <= R S, and the exact CP
  representation has zero residual. The intended J0 forcing should also
  vanish. For nonzero q, a selected error concentrated in one row is a
  relevant stress case: column bounds alone cannot yield a dimension-free
  row bound. The positive gauge floor and denominator boundary are plausible
  conditional on the relative tube, but the tube-to-raw conversion is not
  derived.
- theorem-critical bridge support: S1-S2 now define m_i with all three
  member-local quantities, and the claimed arithmetic
  eta_row < 17 q_*^2 and eta_sel <= 80 q_*^2 is correct if J0 and S1 hold.
  The exact three-mode inversion that gives the factor-four S1 bound and the
  exact residual expansion that gives Q_M are still only described.
- Exported Interface Feasibility Gate: The intended step_007 output has a
  concrete path from chi_max, Q_M, and q_* to eta_sel and the 1/512 tube.
  Feasibility is not established because Q_M's entrywise normal-equation
  source and row/column charges are absent, S1 does not show the stated
  E_M-to-column implication, and the Exported Interface table omits E_row and
  p_0 as separate outputs.
- Theorem-Critical Mechanism Witness Gate: The J0-J3 witness has the right
  role, positive/static Gram source, opposing E terms, and small-gain
  closure shape. It does not expose the full indexed last-update equation,
  all diagonal scale factors, or a term-by-term residual charge. The S1 and
  A1-A2 witnesses likewise defer quantitative bridges. These are
  same-setting sketch/interface defects, not evidence that the idea is false.
- Entry-State / Activation Trace Gate: The exact orthogonal and q=0 traces
  are retained, and the first active update is routed through the
  simultaneous old-state map and the 7/8 Gram floor. The trace still depends
  on an unproved Q_M-to-J1 source and on G2's raw/unit conversion. If the
  row producer is inactive, the theorem-facing basin entry is not implied;
  the sketch must supply that route rather than rely on the later basin step.
- Step-Locality And Theorem-Contract Gate: Static geometry, window tails,
  coverage, R,S, angles, score classification, graph separation, quotient
  kernel, and restart arithmetic are step-local. J0, the S1 F-to-E bridge,
  raw/unit chart conversion, G1/G2, A1-A2, and generated-flow ownership are
  sketch/interface defects. No obligation currently requires changing the
  theorem contract or the idea.
- Noncircular Closure Gate: The intended order is a direct J0 producer,
  then J1-J2 small gain, then J3 and the local basin. This is noncircular
  only if Q_M is independent of E_M and the row budget is proved before
  eta_row is used. The backwards E_row flow row also obscures the legal
  dependency path.
- mechanism-source/boundary: The source is a last-update normal equation
  contracted with realized dual bases, with denominator, weight, and static
  Gram defects as forcing. The q=0 boundary is named and the equal-norm
  gauge has a positive lower bound. The missing entrywise expansion,
  diagonal-scale handling, small-column chart argument, and adversarial-row
  charge prevent acceptance.
- Generated Output Flow Gate: E_sm, E_cov, E_cluster, J0-J3, and the
  selected residual are intended derived outputs. The E_row/p_0 row has a
  consumer before its producer, and the public interface does not list a
  standalone E_row/p_0 export. Correct the producer, consumers, final use,
  and probability path together.
- Source-To-Claim Adequacy Gate: The direct derivation can in principle
  support a row/column forcing claim, but naming a dual-basis residual is
  not enough. The exact current-normal-equation convention, the raw
  assumptions, all D factors, and the quantitative dominance relation must
  be shown. The cited local theorem supports local convergence only after
  those wrapper outputs are discharged.
- object-target compatibility: The produced object is intended to be the
  same realized target after permutation, sign alignment, best-scalar fit,
  and equal-norm gauge. The unit-direction versus raw balanced factor split
  is conceptually target-preserving, but the claimed (2 kappa_0) conversion,
  g_j lower bound, and D_K conjugation have not been tied to the selected
  residual in one metric.
- Residual-To-Target Adequacy Gate: The sketch lists scalar, direction,
  pair-Gram, and quadratic residual terms and gives the conditional
  256(eta_sel + q_*^2) bound. The source of the perpendicular component,
  the exact S1-to-E_M transfer, and the raw/unit scalar residual are not
  fully derived at the target scale. The 1/512 arithmetic passes only after
  these terms are exported.
- Baseline Invariance Obligation: The inherited exact simultaneous map,
  R^+ <= R^2, S^+ <= R S, zero padding, exact CP representation, and
  arbitrary-accuracy zero-residual conclusion are retained at q=0 and
  Gamma=1. No weaker baseline surrogate is substituted. The repair must
  preserve this specialization while filling J0.
- Scope-Accumulation Compatibility Gate: The covered Q1 recurrence is finite
  horizon and has an explicit one-step charge; the selected row closure uses
  a fixed-point small-gain inequality rather than an r-fold sum. The
  persistent Q_M forcing is dimension-free only if its row and column signs
  and magnitudes are independently charged. The required finite-budget
  justification is therefore incomplete but same-setting repairable.
- scope/dependence: The exposed variables and confidence modes remain
  explicit, p_0 is intended to be a deterministic conditional half-probability,
  and rank does not absorb delta_init. The opening attempt label and the
  E_row-to-E_cov wording in the public flow should be synchronized with the
  declared dependency order.
- generated-condition provenance: E_row is declared deterministic under
  E_sm, E_cov, and E_cluster, while p_0 is derived from coverage. Q_M now
  has a name and a proposed definition, but no complete producer proof.
  eta_sel, G2, and the tube therefore remain downstream conditional outputs.
- citation applicability: Uschmajew, DOI 10.1137/110843587, Assumption 1,
  Lemma 3.2, and Theorems 3.3 and 3.5 are plausible local sources. Their
  source object, scaling convention, hypotheses, and non-output boundary
  are not enough to certify the current raw/unit chart or the claimed A1-A2
  constants; a wrapper proof is still required.
- same-setting repair: Define Q_M entrywise from the last-update normal
  equations, verify the exact F_M identity with every diagonal factor,
  prove both Q_M induced-norm bounds, and prove the three-mode S1 bridge.
  Then complete the chart and wrapper interfaces and synchronize flow
  tables. These repairs retain all current primitives and algorithm choices.
- target-preserving repair: The numerical margin
  256(81 q_*^2) < 1/512 survives the proposed repairs if the stated
  bounds are proved. Retain the same realized target, metric, rank,
  probabilities, and exact baseline; no target weakening is required.
- high-risk classes: Static concentration, rare-entry coverage, simultaneous
  recurrence, score gap, graph membership, Gram inverse arithmetic, and
  conditional probability conversion pass in outline. The blocking classes
  are deterministic row forcing, F-to-E transfer, raw/unit residual typing,
  A1-A2 local stability, and generated-output provenance.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E_sm norms, Gram rows, weights, and Khatri-Rao floor | generated static instance event | Gaussian concentration and Schur products | primitive assumptions to step_001 | matches realized normalized factors | normalized-column Gram convention | separate linear, quadratic, and normalization margins | base scale, q_* slack, weight slack, delta_sm export E_sm | same realized object, no transformed bridge | finite union, no trajectory accumulation | primitive assumptions to step_001 | step_001 to step_002, step_004, step_008, step_009 | q=0 and orthogonal limit pass | step-local | None |
| Window event and R_0 S_0 entry | anti-concentration and generated entry | correlated Gaussian regression and product tails | step_001 to step_002 | target window and competitor products match setting | covariance row-sum convention checked in outline | c_all r^(-5/3) log factor lower bound and finite upper bound | c_win, beta_*, r_0, C_rank provide per-slot interface | raw ratios are the consumed target coordinates | finite competitor union, no persistent defect | E_sm to step_002 | step_002 to step_003 and step_004 | denominator and r=3 boundary checked in outline | step-local | None |
| All-target coverage at U(r) | generated coverage and one-run source | independent slots and coupon bound | step_002 to step_003 | coupon calculation matches all-target claim | slot independence from assump random-initialization | k p >= 8 log r and miss <= r^-7 | C_rank >= 16/c_all exports E_cov and p_0 | same target labels only in proof, observable protocol unchanged | finite slot scope | step_002 to step_003 | step_003 to step_004 and step_011 | finite r and positive p_0 boundary pass | step-local | None |
| R,S recurrence and denominator invariant | recursive alignment and baseline mechanism | simultaneous old-state contraction expansion | step_001 to step_004 | exact map and ratios match setting | q_real and Gamma conventions match | interval invariance, denominator lower bound, S coefficient below 1/4000 | R_0, q_real, Gamma, L_0 export E_RS | same target-relative ratio state | q forcing is fixed and vanishes at q=0 | E_sm and E_cov to step_004 | step_004 to step_005, step_006, step_007 | q=0 map and Gamma R_t boundary pass in outline | step-local | None |
| Angle and last-sweep displacement | generated observable control | span projection, Gram inversion, Q1 | step_004 to step_005 | modewise thresholds match filter | realized Gram convention checked | transient plus fixed q_* term below 64 q_* | S_t, burn-in, C_0 export E_ang | same direction metric used by graph | finite proposal horizon, explicit transient decay | E_RS to step_005 | step_005 to step_006 and step_007 | first simultaneous update and finite horizon checked | step-local | None |
| S1-S2 selected-member certificate | per-column direction and coefficient control | last-update identity and score ordering | step_004 and step_006 | m_i now includes delta, E columns, and F columns | proof-only permutation and sign rule stated | d_i + m_i <= 4(1-sigma_i/lambda_j) + 24 q_*^2 | score, displacement, and denominator controls are listed but inversion proof is partial | per-column residual target is plausible, bridge terms unresolved | member errors may align across rows | coverage and cluster to step_006 | step_006 to step_007 | selected score boundary and ties stressed | sketch/interface defect | /proof-sketch |
| J0 Q_M residual identity and norm budget | theorem-critical deterministic forcing | last-update normal equations and dual bases | step_007 direct definition only | intended claim type matches row forcing, derivation incomplete | normalized Gram convention plausible, D factors not audited | F_M equals three Hadamard terms plus Q_M only conditionally | alpha, r, H, E, and static q_* controls named; entrywise charges absent | Q_M must be independent of E-dependent closure and target-scale adequate | denominator, weight, and static Gram forcing should be O(q_*^2) but hidden terms possible | intended direct producer before J1 | step_007 Q_M to J1-J3, then step_008 and step_009 | q=0 should give Q_M=0; one-row alignment unresolved | sketch/interface defect | /proof-sketch |
| J1-J2 small-gain system | incoming row closure and F-to-E transfer | Hadamard expansion plus S1 | J0 and step_006 to step_007 | row equation plausible, column implication asserted | F_M and E_M definitions are linked only in prose | eta_col <= chi_max and eta_row <= 4 q_* chi_max + q_* eta_row + 16 q_*^2 | m_i supplies E columns by declaration, exact three-mode inversion missing | eta_sel unsupported until both bridges are proved | fixed-point absorption is conditional and dimension-free if valid | J0 and S1 before J2 | step_007 J1-J3 to step_008 and step_009 | adversarial aligned row passes only with J0 source | sketch/interface defect | /proof-sketch |
| E_row and p_0 generated output | deterministic event and conditional probability | solved J1-J3 row closure plus coverage | step_003 and step_007 intended, currently misordered in flow | conditional probability claim has correct form but wrong table path | event conditioning should be E_sm, E_cov, E_cluster | eta_row < 17 q_*^2 gives P(E_row conditional prior events)=1 and p_0 >= 1/2 | E_row and p_0 need standalone public interfaces and consumers | p_0 transfers only after basin chain is valid | no extra failure budget, finite static closure | step_003 coverage then step_007 row closure | should feed step_008, step_009, and step_011, not step_003 | q=0 and deterministic boundary pass conditionally | sketch/interface defect | /proof-sketch |
| G2 selected residual and basin-entry tube | residual-to-target bridge and membership | J3 plus scalar and direction decomposition | step_007 to step_009 | target residual form is appropriate | unit-direction chart and raw balanced factors still need conversion | col <= 128 q_*^2, eta <= 80 q_*^2, 256(81 q_*^2) < 1/512 | chi, row and column mass, scalar delta, and perpendicular terms must all export | same-target residual is listed but sources for all terms are incomplete | diagonal, Gram, scalar, and quadratic defects are additive | step_007 to G2 to step_009 | step_007 G2 to step_008 and step_009 | direct tube arithmetic passes conditionally | sketch/interface defect | /proof-sketch |
| Equal-norm gauge and G1 chart | quotient gauge and norm equivalence | balancing diagonals and positive column norms | step_007 intended wrapper | claim class matches chart construction | raw factors and unit directions are separated, but conversion is not proved | product-one equal-norm gauge and ratio bound 4 times column difference | g_j floor, relative tube, and induced chart norm are named | selected raw residual must map to unit target at 1/512 scale | small columns and scalar/gauge defects can persist | selected representatives to gauge to G2 | G1 and chart feed step_009 A1-A2 | g_j positive boundary stated, derivation deferred | sketch/interface defect | /proof-sketch |
| D_K Gram floor and inverse branch | nonsingularity and pseudoinverse interface | diagonal conjugation and Hadamard Gram bound | step_001 and step_009 wrapper | algebra is plausible after scale typing | normalized Khatri-Rao Gram versus raw D_K must be checked | difference <= 1/16, floor >= 7/8, inverse <= 8/7 | eta and column tube controls are available only conditionally | same target if G2 chart is fixed | invariant tube, no rank loss inside | repaired G2 to step_009 | step_009 to step_010 | tube boundary arithmetic passes conditionally | sketch/interface defect | /proof-sketch |
| A1-A2 pairwise normal-equation bounds | local stability and contraction | direct Hadamard expansion plus Uschmajew wrapper | step_008 and cited DOI 10.1137/110843587 | identities have right role, constants are asserted | source scaling and current gauge convention need hypothesis mapping | inverse perturbation and b_X difference bounds yield coefficient < 1/8 | eta_delta and tuple norm are defined, induced output compatibility is not shown | contraction acts on same quotient target only after G1/G2 | Taylor and inverse defects are bounded in tube if estimates hold | step_008 and step_009 wrapper before step_010 | step_009 to step_010 | first inverse and non-output boundary need explicit check | sketch/interface defect | /proof-sketch |
| Quotient Hessian kernel and margin | structural nondegeneracy modulo scaling | dual bases and Khatri-Rao floor | step_001, step_007, step_008 | source conclusion matches local theorem role | Uschmajew Assumption 1 mapping is plausible but not discharged fully | dual contractions isolate scaling and leave positive margin | full-rank and Gram controls export mu_quot only after G2 | exact active target is intended, no surrogate | null scaling directions removed, q=0 preserved | static geometry and selected bridge to step_008 | step_008 to step_009 | scaling nullspace and orthogonal boundary pass in outline | sketch/interface defect | /proof-sketch |
| Baseline invariance and exact specialization | baseline recovery and zero-limit obligation | exact simultaneous map and exact CP representation | setting goal to step_004, step_008, step_010 | conclusion is explicitly retained | q=0 Gamma=1 convention matches setting | R+ <= R^2, S+ <= R S, zero residual and arbitrary accuracy | exact target and zero padding are direct controls | no surrogate or conservative remainder is used | all forcing terms should vanish at q=0 | setting to recurrence and final refinement | step_004, step_008, step_010 to theorem | exact stationary and first-update trace pass | step-local | None |
| Public probability, stopping, and runtime specialization | quantitative theorem closure | coverage, deterministic row output, contraction, restart independence | step_003, step_007, step_010, step_011 | target mode and exposed variables match setting | nested instance versus initialization probability is stated | (1-p_0)^J <= delta_init and m = O(log(1/epsilon)) | rank remains U(r); p_0 and contraction interfaces are conditional | returned tensor is same target only after G2 and A1-A2 | geometric restart accumulation and finite costs | corrected chain step_003 to step_007 to step_011 | step_011 consumes all prior outputs | epsilon and delta boundaries pass conditionally | sketch/interface defect | /proof-sketch |
| Generated-output flow and table synchronization | provenance and final assembly | producer-consumer tables | proof_sketch sections 1311-1342 | most rows agree with roadmap, E_row row does not | T_ALS and probability labels need one consistent path | every downstream output must have earlier producer and final-use mapping | add standalone Q_M, J0-J3, E_row, and p_0 rows to public interfaces | unsupported row source currently propagates to basin and rate | flow defect is structural, not a theorem counterexample | step_003 coverage -> step_007 row closure -> step_008/009 -> step_011 | remove step_003 and step_007 as E_row consumers; list true consumers | no stale full-ball constants, but stale attempt metadata remains | sketch/interface defect | /proof-sketch |

## Blocking Issues

1. J0 still lacks a theorem-usable residual producer
   (proof_sketch.md:966-986). The new Q_M definition is an improvement, but
   alpha_M,j and r_M,ell j are only prose-level objects. Starting from
   F_M = P_M - P_M^* D_M' D_M'', the exact last-update expansion must show
   how every diagonal D factor, denominator, weight, and dual-basis term
   yields the displayed three Hadamard terms plus Q_M. As written, terms
   such as diagonal-scale factors may be hidden in Q_M while Q_M is claimed
   to contain no E-dependent terms. Downstream effect: J1 has no verified
   identity or legal forcing source. Smallest repair: give an entrywise
   normal-equation identity, with all scaling factors and term charges, and
   then state the exact Q_M row and column bounds.
2. The deterministic row budget is still asserted
   (proof_sketch.md:977-1006). A per-column m_i bound cannot by itself imply
   a dimension-free induced row bound under adversarial alignment. The
   claimed 8 q_*^2 Q_M row/column budget and the 4 q_* chi_max row term need
   a dual-basis term-by-term charge from primitive Gram and slack controls,
   including the denominator and weight defects. Downstream effect: E_row,
   eta_row, and p_0 are not theorem-facing outputs. Smallest repair: prove
   both induced-norm Q_M bounds independently before applying the small gain.
3. The F-to-E column bridge remains incomplete
   (proof_sketch.md:354-385 and 987-997). Adding E_M(:,j) to m_i makes the
   target plausible, but S1 only states that a three-mode denominator
   inversion gives factor four. It does not derive the exact inversion,
   identify all E, F, and scalar terms, or verify that the residual scale
   is the one used in J1. Downstream effect: eta_col <= chi_max and hence
   eta_sel are unsupported even if J0 is accepted. Smallest repair: prove
   the three-mode S1 bridge with explicit denominator lower bounds and
   recompute J1-J3 if any constant changes.
4. Raw/unit chart and selected residual typing remain incomplete
   (proof_sketch.md:438-545 and 1030-1048). The symbols are now separated,
   but the conversion between raw selected residuals and unit-direction
   e_col is only asserted. The lower bound for g_j, the relative 1/512
   tube implication, D_M and G_M normalization, and D_K conjugation must
   be checked in one norm with explicit kappa_0 dependence. Downstream
   effect: G2, the Gram floor, and same-target residual adequacy cannot be
   audited. Smallest repair: state a raw-to-unit lemma and use it consistently
   in J3, G1, G2, and the local tube.
5. G1 and A1-A2 are typed better but not proved as a complete local wrapper
   (proof_sketch.md:448-615). eta_delta and a normal-equation tuple norm are
   named, yet compatibility of G_K^{-1} b_X with that induced norm,
   scalar and gauge absorption, and the claimed 1/300 and 8 constants are
   still deferred. The cited theorem's source convention and
   non-output boundary do not supply these estimates. Downstream effect:
   contraction and tube invariance remain conditional. Smallest repair:
   specify the induced output map, prove G1 and A1-A2 componentwise, and
   discharge the Uschmajew hypotheses in current notation.
6. Generated output flow is inconsistent
   (proof_sketch.md:1311-1342). The E_row and p_0 row names step_003 as a
   consumer even though step_003 produces coverage and precedes step_007.
   The Exported Interface table has no standalone E_row or p_0 interface.
   Downstream effect: the probability and basin dependencies are not
   auditable. Smallest repair: make step_003 produce E_cov and the
   conditional base probability, make step_007 produce E_row and eta_sel,
   and list step_008, step_009, and step_011 as the true consumers.
7. Sketch identity metadata is inconsistent (proof_sketch.md:5 versus 63).
   This does not change the mathematical target, but it violates faithful
   lineage and can cause the next retry to use the wrong predecessor.
   Smallest repair: update the opening attempt label and keep the archived
   attempt-7 reference only in the review history.

## Required Repair Bundle

1. J0 residual/source repair. At step_007, define alpha_M,j and r_M,ell j
   entrywise from the exact last-update normal equations, expand F_M with
   every D factor, and charge denominator, weight, one-static-Gram, and
   two-static-Gram terms. Prove Q_M row and column l1 bounds and zero forcing
   at q=0 before J1. Smallest target: /proof-sketch, step_007.
2. S1 and F-to-E repair. At step_006 and step_007, derive the
   three-mode denominator inversion that controls delta, E columns, and F
   columns, verify the factor-four and 24 q_*^2 constants, and propagate
   any changed constants through chi_max, eta_col, J2, J3, and G2.
   Smallest target: /proof-sketch, steps 006-007.
3. Raw/unit chart repair. At step_007 through step_009, state a
   raw-to-unit conversion lemma with the relative tube scale, prove the
   positive g_j lower bound, and keep D_M, G_M, D_K, e_col, eta, and the
   target tensor in one consistent convention. Smallest target:
   /proof-sketch, steps 007-009.
4. Local-wrapper repair. At step_009 and step_010, define the induced
   normal-equation output norm, prove G1 and A1-A2 with scalar and gauge
   components, and map Uschmajew Assumption 1, Lemma 3.2, and Theorems
   3.3 and 3.5 hypothesis by hypothesis, including the source boundary.
   Smallest target: /proof-sketch, steps 009-010.
5. Flow and probability repair. Synchronize the Exported Interface and
   Generated Output Flow tables, add standalone Q_M, J0-J3, E_row, and
   p_0 rows, remove the backwards step_003 consumer, and state the legal
   conditional path to p_0 and step_011. Smallest target: /proof-sketch,
   steps 007 and 011.
6. Lineage repair. Correct the opening attempt number and retain the exact
   attempt-7 predecessor only as archived context. Smallest target:
   /proof-sketch, sketch identity.

Target-preserving repair check: the mathematical repairs and the lineage
repair can retain the current primitive assumptions, Gaussian protocol, the
simultaneous old-state updates, rank U(r), tensor metric, nested probability
mode, arbitrary accuracy, and exact q=0 baseline. The conditional numerical
entry margin
256(81 q_*^2) < 1/512 is sufficient if the missing bridges are proved.
No idea revision or theorem-contract change is required unless the exact
J0 row producer cannot be supplied under the existing setting.

## Review Rationale

REVISE_SKETCH is the deepest required change. Attempt 8 materially improves
the prior sketch: m_i has the needed member-local terms, J0 has an intended
residual identity, the raw/unit notation is separated, and the conditional
small-gain arithmetic is coherent. It is nevertheless not ready for
proof-step work because the dimension-free Q_M row source and exact J0
algebra are not established, the S1 F-to-E bridge is still asserted, the
raw/unit and A1-A2 interfaces remain conditional, and generated-output flow
is inconsistent. These are substantial but same-setting sketch repairs, so
IDEA_FAIL is too strong and ACCEPTED is premature.
