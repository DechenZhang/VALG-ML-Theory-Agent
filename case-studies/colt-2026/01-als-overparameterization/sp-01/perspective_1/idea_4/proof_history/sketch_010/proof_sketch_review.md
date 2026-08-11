# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: perspective_1/idea_4.
- Sketch attempt: 10, the E-left J0b/J0c, direction/amplitude chart, and
  narrowed-tube revision after the archived attempt-9 review.
- Goal mode: exact-goal mode. The rank U(r), simultaneous JEP-ALS protocol,
  nested probabilities, active CP-ALS target, arbitrary relative error,
  runtime claim, and exact orthogonal baseline are unchanged.
- Reviewed inputs: setting.md, the current proof_sketch.md, technical_survey.md,
  and proof_history/sketch_009/proof_sketch_review.md.
- Attempt-10 changes audited: S1b separates displacement and member error
  charges; J0a is explicitly algebraic, J0b moves E_M to the left, and J0c
  states an induced l1 operator bound; raw direction and amplitude diagonals
  are separated; the tube is narrowed to 1/4096 and 1/2048; the A1-A2
  arithmetic is recomputed. The public flow and several J0/tube references
  remain unsynchronized.

## Sketch Viability Score

5

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The exact theorem target remains faithful to setting.md.
  The subquadratic rank, data-only selection, same-target active refinement,
  nested confidence modes, runtime variables, and q=0 map are preserved.
  No idea-level target drift is visible.
- Dependency audit: The numbered steps remain acyclic in the roadmap. The
  Generated Output Flow row for E_row and p_0 still has NF=12 under a
  seven-column header with NF=9, lists step_003 as a consumer of a step_007
  output, and puts prerequisites in the wrong field. The public rate prose
  still describes E_cov as following from later row-small-gain work.
- High-risk coverage: S1b, the separate amplitude coordinate, and the
  narrowed per-mode ALS arithmetic are useful repairs. The central E-left
  identity is not sourced from the same time state as F_M^{alg}; its missing
  pre/post transition term is nonzero in the q=0 finite-transient map.
  J1-J3 and G2 therefore remain conditional.
- Explicit-rate coverage: The rank remains independent of delta_init and the
  intended deterministic E_row event would add no failure budget. The current
  selected residual bound is only below 1/512, while the new tube requires
  1/4096. The asserted 128 q_*^2 normalization bridge is not derived, so
  p_0, stopping, and runtime are not yet exported rate facts.
- Assumption and citation plausibility: Generated events remain labeled as
  derived. Uschmajew and its theorem labels are identifiable and can support
  a local wrapper after mapping. They do not establish the E-left update
  equation, amplitude forcing budget, or cyclic coefficient calculation.

## Early Obstruction Audit

- limiting-case stress: The exact orthogonal equal-weight map remains
  (A+,B+,C+) = (BC,AC,AB), with R+ <= R^2 and S+ <= R S. For a finite
  transient with old ratios (A,B,C), the new mode-one error is B C, whereas
  the pair residual built from the post-update modes is
  B+ C+ = (A C)(A B) = A^2 B C. Thus E_M = L_M(F_M^alg) requires a
  nonzero transient forcing even at q=0 unless A is already one. J0r says
  all forcing classes vanish at q=0, so the declared source fails its own
  baseline activation trace.
- theorem-critical bridge support: The E-left form is the right structural
  direction, and the operator norm 32/31 times 1+q is a plausible outline
  bound. But F_M^alg is defined from post-update C matrices, while alpha and
  c-minus are pre-update quantities. No transition residual or displacement
  term bridges those states. The q-amp term is diagonal only and cannot
  account for the off-diagonal finite-transient discrepancy.
- Exported Interface Feasibility Gate: The intended raw controls are
  chi_max, the static Gram mass, alpha denominator slack, amplitude ratios,
  and a genuine pre-to-post update residual. J0c does not export a verified
  Q_M bound because q-amp has no stated O(q_*^2) source and the temporal
  bridge is absent. The public interface still omits standalone E_row and
  p_0 rows and advertises the old 1/512 radius.
- Theorem-Critical Mechanism Witness Gate: J0a/J0b/J0c expose claim role,
  operator, forcing classes, l1 control, and q=0 intent. The witness is
  source-inadequate: its F input is the wrong time slice, its q-amp budget
  is asserted through a best-scalar identity, and the residual-to-E map is
  not derived entrywise. This is a same-setting sketch/interface defect.
- Entry-State / Activation Trace Gate: Window entry, simultaneous old-state
  updates, graph selection, equal-norm gauge, and the first active inverse
  are traced. The trace fails at the selected last update because no
  pre/post pair transition is exported, and it fails again at G2 because
  the step_007 residual remains below 1/512 rather than the new 1/4096
  tube. A later local step cannot activate either missing bridge.
- Step-Locality And Theorem-Contract Gate: Geometry, window tails, coverage,
  R,S, angles, score gap, graph separation, quotient kernel, and the exact
  baseline map are step-local in outline. The E-left temporal bridge, q-amp
  budget, S1b constants, raw-amplitude G2 transfer, A1-A2 cyclic closure,
  and public flow synchronization are sketch/interface defects. No change
  to the idea or theorem contract is currently forced.
- Noncircular Closure Gate: The intended order is step_006 per-column control,
  step_007 E-row closure, step_009 tube invariance, and step_011 aggregation.
  J0b currently uses a post-state F as if it were the pre-state update input,
  so the producer is not independent of the transition it must explain.
  The malformed E_row flow also obscures the legal consumer path.
- mechanism-source/boundary: A valid source would define pre-state pair
  coefficients, post-state E_M, a transition residual, and induced l1
  bounds for the dual operator. Current J0r lists denominator, weight,
  two-Gram, and amplitude terms but omits the finite-transient direction
  term; it also provides no raw bound for delta_amp. The q=0 and one-row
  boundaries therefore remain unresolved.
- Generated Output Flow Gate: E_cov must be produced by step_003 before
  step_004 and step_007; E_row and eta_sel must be produced by step_007;
  p_0 must be consumed by step_011 after the deterministic chain. The
  current row has the wrong parsed width, backward consumers, and misplaced
  final-use fields. It is not synchronized with the Exported Interface table.
- Source-To-Claim Adequacy Gate: The claimed J0b source is a direct
  derivation in principle, but F_M^alg is post-update while alpha is
  pre-update. A dual-basis contraction cannot silently identify those
  objects. The q-amp diagonal charge and the assertion that all forcing is
  O(q_*^2) need explicit raw assumptions and a transition estimate.
- object-target compatibility: Direction and amplitude diagonals are now
  named separately, which is a real improvement. The exact raw column
  represented by m_j^* is not explicitly tied to the best-scalar column,
  and the equal-norm gauge source is not connected to the selected amplitude
  defect. The consumed target is still intended to be the same realized
  tensor, not a surrogate.
- Residual-To-Target Adequacy Gate: The decomposition lists direction,
  row/column, and scalar terms, but step_007 still proves only
  256(eta_sel + q_*^2) and hence 1.23597e-3 < 1/512. The new G2 requires
  128 q_*^2 < 1/4096, and no relative-normalization derivation supplies
  that factor. Amplitude defects are also not included in m_i or J1a.
- Baseline Invariance Obligation: The exact map, zero padding, exact CP
  representation, zero residual, and arbitrary-accuracy conclusion remain
  explicit. The repair must retain them while allowing a finite q=0
  transient term in the row producer; claiming every forcing term vanishes
  at q=0 is not target-preserving for the finite proposal horizon.
- Scope-Accumulation Compatibility Gate: Q1 supplies a finite proposal
  recurrence, and J1 has a fixed-point form. The selected E-row forcing is
  not yet accumulated with the pre/post transient term, and the amplitude
  defect has no finite budget. The narrowed tube makes the per-mode A1-A2
  numbers smaller, but the cyclic sum and gauge absorption are only asserted.
- scope/dependence: Exposed structural, accuracy, and confidence variables
  remain explicit, and rank does not absorb confidence. The public radius,
  D_K names, J0 labels, E_row path, and p_0 provenance disagree with the
  current step text.
- generated-condition provenance: E_sm, E_cov, E_RS, E_ang, E_cluster,
  E_row, eta_sel, G2, tube invariance, and p_0 are intended derived outputs.
  E_row lacks a complete producer, G2 lacks the 1/4096 target-scale source,
  and p_0 remains attached to the malformed flow row.
- citation applicability: Uschmajew, DOI 10.1137/110843587, Assumption 1,
  Lemma 3.2, and Theorems 3.3 and 3.5 are plausible local sources. The
  current quotient coordinates and amplitude chart are closer to a mapping,
  but the source does not prove the direct normal-equation constants or
  resolve the pre/post update convention.
- same-setting repair: Define F_M^- from the pre-update pair, add the
  explicit post-minus-pre transition term to Q_M, bound amplitude and
  transient defects, and then recompute J1-J3. Derive the 128 q_*^2
  normalization or restore a tube compatible with the 256 bound. Synchronize
  the tables and stale labels. These are same-setting repairs.
- target-preserving repair: The rank, algorithm, metric, nested probabilities,
  and exact baseline can remain unchanged. The selected error is much
  smaller than 1/4096 only if the claimed normalization bridge is proved;
  otherwise the tube should be widened and its contraction constants
  recomputed without changing the theorem target.
- high-risk classes: Static concentration, rare-entry coverage, recurrence,
  observable clustering, exact baseline, and restart form pass in outline.
  Blocking classes are the pre/post J0 source, amplitude and transient row
  budget, S1b source, 1/4096 entry, cyclic A1-A2 closure, and flow provenance.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E_sm norms, Gram rows, weights, and Khatri-Rao floor | generated static instance event | Gaussian concentration and Schur products | primitive assumptions to step_001 | matches realized normalized factors | normalized-column Gram convention | separate linear, quadratic, and normalization margins | base scale, q_* slack, weight slack, delta_sm export E_sm | same realized object, no transformed bridge | finite union, no trajectory accumulation | primitive assumptions to step_001 | step_001 to step_002, step_004, step_008, step_009 | q=0 and orthogonal limit pass | step-local | None |
| Window event and R_0 S_0 entry | anti-concentration and generated entry | correlated Gaussian regression and product tails | step_001 to step_002 | target window and competitor products match setting | covariance row-sum convention checked in outline | per-target probability has r^(-5/3) log factor scale | c_win, beta_*, r_0, and C_rank provide the per-slot interface | raw ratios are the consumed target coordinates | finite competitor union, no persistent defect | E_sm to step_002 | step_002 to step_003 and step_004 | denominator and r=3 boundaries pass in outline | step-local | None |
| All-target coverage at U(r) | generated coverage and one-run source | independent slots and coupon bound | step_002 to step_003 | coupon calculation matches all-target claim | slot independence from random-initialization assumption | k p >= 8 log r and miss <= r^-7 | C_rank >= 16/c_all exports E_cov and coverage probability | same target labels only in proof, observable protocol unchanged | finite slot scope | step_002 to step_003 | step_003 to step_004 and step_011 | finite r and positive coverage boundary pass | step-local | None |
| R,S recurrence and denominator invariant | recursive alignment and baseline mechanism | simultaneous old-state contraction expansion | step_001 through step_004 | exact ratios and map match setting | q_real and Gamma conventions match | invariant interval, positive denominator, S coefficient below 1/4000 | R_0, q_real, Gamma, and L_0 export E_RS | same target-relative state is consumed | fixed q forcing vanishes at q=0 | E_sm and E_cov to step_004 | step_004 to step_005, step_006, step_007 | q=0 map and denominator boundary pass | step-local | None |
| Angle and displacement certificate | generated observable control | span projection, Gram inversion, and Q1 | step_004 to step_005 | thresholds match filter and graph | realized Gram convention checked | transient plus fixed q_* term below 64 q_* | S_t, burn-in, and C_0 export E_ang | same direction metric is consumed | finite proposal horizon with geometric transient | E_RS to step_005 | step_005 to step_006 and step_007 | first simultaneous update and horizon pass | step-local | None |
| Score gap and graph clusters | membership and data-only selection | stationary support classification and perturbation | step_005 to step_006 | component and mixture classes match filter | observable score and graph thresholds match setting | mixture below 0.723 and target edges above 1 - 64 q_* | score, displacement, angle, and Gram controls export E_cluster | representatives remain in exact target metric | finite graph and strict tie margins | E_ang and filter to step_006 | step_006 to step_007 | tied supports and graph boundary pass in outline | step-local | None |
| S1b selected-member transfer | per-column direction, displacement, and coefficient certificate | last-update inversion and score ordering | step_004 and step_006 | intended role matches, constants and arbitrary-retained source incomplete | alpha denominator and direction chart are stated | d_i and m_i bounds sum to S1 only if both asserted inequalities are proved | score, displacement, direction E, pair F, and amplitude are not all exported | per-column target plausible after a sourced amplitude bridge | finite member scope, no global row claim | coverage and graph to step_006 | step_006 to step_007 | filter boundary d_i <= 64 q_* does not itself give O(q_*^2) | sketch/interface defect | /proof-sketch |
| J0a algebraic pair residual | exact coefficient identity | expansion of C_M = G_M D_M_dir + E_M | definitions before step_007 | identity is now logically consistent with Q_M = 0 | direction diagonal and zero E diagonal match | F_alg equals three Hadamard terms exactly | C, G, D_dir, E, P, and F are directly available | algebraic object is not the post-update row source | no forcing beyond selected E terms | definitions to separate J0b | J0a feeds the separate E-left equation, not a Q remainder | q=0 identity passes, finite transient handled elsewhere | step-local | None |
| J0b E-left update and J0r residual | theorem-critical deterministic row forcing | exact last-update normal equation and dual basis | step_007 asserted current wrapper | E-left role is appropriate, but F_alg time slice is post-update | alpha and c-minus are pre-update while F_alg has no minus | E_M = L_M(F_alg) + Q_M lacks a pre/post transition term | L_M norm and four Q classes named; q_amp and transient budgets absent | Q must dominate amplitude and finite transient at target scale | q=0 transient is nonzero unless already stationary | intended direct producer before J1 | step_007 J0b/J0c to J1-J3 | orthogonal old-ratio trace disproves zero-forcing claim | sketch/interface defect | /proof-sketch |
| J0c induced row and column bounds | deterministic forcing budget | l1 dual operator and Gram/weight charges | step_007 | operator bound plausible, Q bound asserted | one alpha normalization claimed, raw amplitude source missing | L norm <= 32/31(1+q) and Q <= 8q_*^2 are not derived term by term | H row/column, alpha, weights, and q_amp must export exact charges | Q bound must include diagonal and transient residuals | no sign cancellation, but missing classes can be persistent | J0b before J1 | Q_M to E_row and eta_sel | one-row and q=0 boundaries fail under current source | sketch/interface defect | /proof-sketch |
| J1-J3 selected row closure | incoming row control and basin seed | J0b plus Hadamard small gain and S1b | step_006 and step_007 | form is plausible, symbols and source are stale | J1a uses undefined delta_M instead of dir or amp | eta_col <= chi_max and eta_row <= 4 q_* chi_max + q_* eta_row + 16 q_*^2 | chi, E, F, amplitude, and transition controls must all export | eta_sel/G2 unsupported until J0 and S1 are repaired | fixed-point absorption conditional | intended step_007 producer before step_009 | step_007 to step_008, step_009, step_011 | adversarial row and finite transient not closed | sketch/interface defect | /proof-sketch |
| E_row and p_0 generated flow | event provenance and conditional probability | coverage plus deterministic downstream chain | step_003 and step_007 intended | current flow remains backward and malformed | seven-column schema has a row with NF=12 | E_cov then E_row then basin then p_0 must feed step_011 | standalone E_row and p_0 interfaces absent | final probability waits on unsupported basin chain | no extra failure budget only after valid producer | step_003 to step_007 to step_009 to step_011 | current row lists step_003 and step_007 as consumers | flow width and edge fail the gate | sketch/interface defect | /proof-sketch |
| G2 selected residual and narrowed tube entry | residual-to-target bridge and membership | J3 plus normalized raw-amplitude lemma | step_007 to step_009 | target margin and new tube are numerically inconsistent | direction and amplitude chart is named, source incomplete | step_007 gives 256(81 q_*^2) < 1/512, while tube requires 1/4096 | a 128 q_*^2 conversion is asserted only in step_009 | same-target entry is not at required scale | scalar, direction, Gram, and quadratic defects are additive | repaired step_007 to G2 to step_009 | step_007 G2 to step_008 and step_009 | 1/4096 boundary fails from displayed 256 bound | sketch/interface defect | /proof-sketch |
| Equal-norm gauge and direction/amplitude norm_T | quotient chart and norm equivalence | balancing diagonals and raw norm ratios | selected factors to step_009 | symbols are separated, but selected amplitude source is missing | A_M raw and D_dir angular conventions are distinct | G1 ratio bound and two scalar coordinates need a proved chart map | raw columns, amplitudes, directions, and gauge Jacobian must export together | current J3 controls no amp defect | small columns and gauge terms can persist | selected representatives to chart to G2 | G1 feeds A1-A2 and local wrapper | g_j lower bound is asserted from a different 1/512 scale | sketch/interface defect | /proof-sketch |
| D_K/A_K Gram floor and inverse branch | nonsingularity and pseudoinverse interface | diagonal conjugation and tube Gram bound | step_001 and step_009 | A_K algebra is plausible, public table still says D_K | raw A_K and normalized Gram conventions need synchronization | difference <= 1/16, floor >= 7/8, inverse <= 8/7 | eta and e_col controls are conditional | same target after corrected G2 chart | invariant tube and no rank loss | repaired G2 to step_009 | step_009 to step_010 | table and prose radius mismatch | sketch/interface defect | /proof-sketch |
| A1-A2 cyclic contraction and tube invariance | local stability and all-time refinement | direct normal-equation difference plus cited framework | step_008 and step_009 | per-mode arithmetic is improved, cyclic/gauge closure is asserted | induced tuple map and A_M projection need source mapping | per-mode bounds 0.0105 and 0.0118 sum below 1/16 only under an unstated max-block convention | tube radii, inverse factor, pair terms, scalar and gauge components named | contraction acts on same target after G2 only | cyclic accumulation and gauge absorption unresolved | step_008 and repaired step_009 before step_010 | step_009 to step_010 | full pair boundary numerics do not alone prove cyclic 1/16 | sketch/interface defect | /proof-sketch |
| Quotient Hessian kernel and margin | structural nondegeneracy modulo scaling | dual bases and Khatri-Rao floor | step_001, step_007, step_008 | conclusion matches local theorem role | amplitude chart and source mapping remain conditional | dual contractions isolate scaling and leave positive margin | full rank and Gram controls available after corrected entry | exact active target intended | scaling nullspace removed, q=0 map retained | static geometry and repaired bridge to step_008 | step_008 to step_009 | scaling and orthogonal boundaries pass in outline | sketch/interface defect | /proof-sketch |
| Baseline invariance and exact specialization | baseline recovery and zero-limit obligation | exact simultaneous map and exact CP representation | setting to step_004, step_008, step_010 | conclusion explicitly retained | q=0 and Gamma=1 match setting | R+ <= R^2, S+ <= R S, zero residual, arbitrary accuracy | exact target and zero padding direct | no surrogate target | finite transient must be separated from q forcing | setting through recurrence and refinement | baseline steps to final theorem | map passes, J0 zero-forcing claim fails | sketch/interface defect | /proof-sketch |
| Public probability, stopping, and runtime | quantitative theorem closure | coverage, E_row, contraction, restarts | step_003, step_007, step_010, step_011 | public mode matches, upstream outputs fail | nested probability convention correct | (1-p_0)^J <= delta_init and logarithmic stopping conditional | rank stays U(r), p_0 and nu lack legal final producers | returned tensor same target after G2/A1-A2 | geometric restart and finite costs | corrected upstream chain to step_011 | step_011 consumes all certified outputs | epsilon and delta boundaries conditional | sketch/interface defect | /proof-sketch |
| Artifact and tag synchronization | generated-output provenance and final assembly | public tables, labels, and dependency notes | proof_sketch sections 659-1479 | current and public names disagree | D_K, 1/512, J0 references stale | each output needs one producer, consumers, final use, and exact label | add E_cov, E_row, eta_sel, amp, G2, p_0 rows and update radii | stale interfaces cannot certify theorem assembly | structural flow defect | step_003 to step_007 to step_009 to step_011 | current E_row row has extra cells and backward edges | synchronized identity only; tables remain invalid | sketch/interface defect | /proof-sketch |

## Blocking Issues

1. J0b uses the wrong time slice for its purported E-left source
   (proof_sketch.md:1010-1066). F_M^{alg} is defined from the selected
   post-update matrices C_{M'} and C_{M''}, while alpha and c-minus in J0b
   come from the pre-update state. In the q=0 old-ratio trace, mode-one
   E^+ is B C but the post-update pair residual is B^+ C^+ = A^2 B C.
   The missing post-minus-pre transition term is generally nonzero even at
   q=0, whereas J0r declares all four Q classes zero there. Downstream
   effect: the claimed normal-equation identity and deterministic row source
   are false as stated. Smallest repair: define F_M^- explicitly, include
   the transition and displacement residual in Q_M, and rederive J0b entrywise.
2. J0c's Q_M budget and J1a typing are not discharged
   (proof_sketch.md:1041-1095). The q-amp term has no stated bound in m_i,
   the claim that it is covered by the best-scalar identity is prose, and
   J1a uses the undefined delta_M rather than delta_M_dir or delta_M_amp.
   The 2 q_*^2, 2 q_*^2, 4 q_*^2 charges also do not show how pre/post
   transient terms are dominated. Downstream effect: Q_M, eta_col, and
   eta_row cannot be exported with the stated constants. Smallest repair:
   add amplitude and transition controls to the member interface, define all
   diagonal cases, and recompute J0c-J2.
3. S1b remains an asserted bridge for arbitrary retained members
   (proof_sketch.md:365-410). The d_i inequality is sourced explicitly only
   for covered trajectories in the earlier angle step, while a selected
   retained member need only pass d_i <= 64 q_* in the observable filter.
   The claimed O(q_*^2) d_i and m_i bounds for every target-chart member
   require a full stationary/last-update derivation. Downstream effect:
   chi_max <= 56 q_*^2 and J1a are unsupported. Smallest repair: prove the
   two S1b inequalities for the exact selected class, or weaken and
   re-budget the bridge without changing the target.
4. The narrowed tube is not implied by the exported residual
   (proof_sketch.md:443-456, 1134-1158, and 1268-1277). The displayed
   decomposition gives 256(81 q_*^2) = 1.23597e-3 < 1/512, but the new
   T_ALS requires 1/4096 = 2.4414e-4. Step_009 asserts a 128 q_*^2
   normalization conversion without a derivation in step_007. Downstream
   effect: G2 does not establish entry into the tube used by A1-A2.
   Smallest repair: prove the factor-128 conversion term by term, or use
   a radius compatible with the 256 bound and recompute contraction constants.
5. Raw/unit typing improved but public and local symbols remain stale
   (proof_sketch.md:498-583, 1000-1009, 1131-1144, 1299, and 1414-1423).
   A_M and D_M_dir are separated in the chart, but step_007 still refers to
   D_K, residual text uses undefined delta_M, and the public interface still
   advertises D_K and a 1/512 basin. J3 controls direction and E mass, not
   the new amplitude coordinate. Downstream effect: the same-target
   norm_T/G2 interface is not synchronized. Smallest repair: propagate A_M,
   delta_amp, D_dir, and the 1/4096 tube through every section and table.
6. The A1-A2 cyclic coefficient is still only partially justified
   (proof_sketch.md:604-655). The narrowed tube makes the one-mode numeric
   pieces small, but 0.0105 plus 0.0118 is a per-mode bound; the text then
   invokes a cyclic sum and gauge absorption to claim 1/16 without an
   operator norm or block-order derivation. The final one-step inequality
   drops the 4 pair-difference terms that appear in A2. Downstream effect:
   nu=1/8 and all-time tube invariance remain unproved. Smallest repair:
   define the cyclic block norm, retain every A1-A2 term, and prove the
   block/gauge composition numerically in the corrected chart.
7. Public artifacts remain malformed and out of sync
   (proof_sketch.md:659-667 and 1410-1441). The E_row/p_0 flow row has
   NF=12 under a header with NF=9, has backward consumers, and has no
   matching standalone Exported Interface row. The public table still uses
   D_K and 1/512, while the body uses A_K and 1/4096; references to J0
   remain although the labels are J0a/J0b/J0c. Downstream effect:
   provenance, radius, and final-use paths cannot be audited. Smallest
   repair: rebuild both tables and the rate prose with the forward path
   step_003 -> step_007 -> step_009 -> step_010 -> step_011.

## Required Repair Bundle

1. Rebuild the step_007 temporal residual. Define pre-update F_M^-,
   post-update F_M^alg, and the exact transition term; derive E_M =
   L_M(F_M^-) plus all residuals with consistent alpha and diagonal scales.
   Include the finite q=0 transient and its declared horizon budget.
   Smallest target: /proof-sketch, step_007.
2. Complete J0c and J1. Bound direction, amplitude, denominator, weight,
   two-Gram, and transition terms entrywise in induced row and column norms;
   define diagonal Q entries and the exact delta symbols; then recompute
   eta_col, eta_row, J2, J3, and E_row. Smallest target: /proof-sketch,
   step_007.
3. Prove S1b for the selected target-chart class. Supply the source for
   d_i and m_i, include amplitude if it is consumed downstream, and
   propagate constants to chi_max and G2. Smallest target: /proof-sketch,
   steps 006-007.
4. Resolve target-scale entry. Either derive the factor-128 relative
   normalization and amplitude conversion needed for 1/4096, or restore a
   compatible tube and redo the A1-A2 constants. Smallest target:
   /proof-sketch, steps 007-009.
5. Finish the local wrapper. Define the cyclic block norm and gauge
   composition, retain all pair-difference terms and inverse factors, and
   map the cited source assumptions and non-output boundary in the A_M
   chart. Smallest target: /proof-sketch, steps 008-010.
6. Synchronize artifacts. Replace stale D_K, delta_M, J0, and 1/512
   references, add explicit E_cov, E_row, eta_sel, amplitude, G2, and p_0
   interfaces, make every Generated Output Flow row exactly seven cells,
   remove backward consumers, and state the nested probability path.
   Smallest target: /proof-sketch, steps 003, 007, 009-011 and both tables.

Target-preserving repair check: these repairs can retain the primitive
assumptions, simultaneous proposal protocol, data-only selection, rank U(r),
same-target Frobenius metric, nested probabilities, arbitrary accuracy,
runtime variables, and exact q=0 baseline. The narrower tube is plausible
only after the missing factor-128 entry bridge is proved. IDEA_FAIL is not
required unless no valid pre/post deterministic row equation can be supplied
under the existing setting.

## Review Rationale

REVISE_SKETCH is the deepest required change. Attempt 10 makes meaningful
progress by separating direction and amplitude coordinates, putting E_M on
the proposed row-closure left side, and reducing the one-mode ALS arithmetic.
It is not ready for proof-step work because the E-left equation uses a
post-update pair object with pre-update coefficients and falsely removes the
q=0 transient, the amplitude and S1 sources are not closed, the new 1/4096
radius is not implied by the 256 residual bound, and the public flow remains
malformed. These are substantial but same-setting sketch/interface repairs,
so score 5 and IDEA_FAIL is too strong.
