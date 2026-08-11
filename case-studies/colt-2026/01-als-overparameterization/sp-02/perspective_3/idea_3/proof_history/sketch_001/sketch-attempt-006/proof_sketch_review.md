# Proof Sketch Review

## Reviewed Sketch Identity

- Sketch attempt: 6
- Review target: perspective_3/idea_3/proof_sketch.md
- Trigger: sketch attempt 5 was routed to /proof-sketch for the rooted
  topology convention, artificial forest charge, and missing sparse
  multiplicity/face interfaces.
- Goal mode: exact-goal mode
- Progress type: conditional
- Theorem-contract change: none

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The sketch preserves the exact setting.md target: the
  smoothed third-order CP least-squares objective, product-preserving
  simultaneous balanced GD with eta = (n k r)^(-12), the full rank window
  r < k <= floor(r^(5/4)), the normalized Gram initialization event, the
  raw tangent-deficit witness, the conditional finite-path conclusion, the
  positive relative limiting loss, and the exact factor
  P(C_path given E_init_norm). It does not claim a uniform lower bound for
  that remaining conditional path factor. D_r, Dhat_0, S_0, W_0, the
  coefficient residual, and the physical Frobenius metric remain raw.
- Dependency audit: All 17 stable IDs are present and the graph is acyclic.
  The reduction chain is 001 -> 002 -> 003 -> 004 -> 005; the topology and
  peel branch is 004 -> 006 -> 007; the count/face branch is
  005,007 -> 008 -> 009 -> 010; and the downstream chain is
  010 -> 011 -> 012 -> 013 -> 014 -> 015 -> 016 -> 017, with the stated
  side dependencies on 001, 002, and 003. Every dependency points to an
  earlier ID. The historical step_003 overload remains removed.
- High-risk coverage: The attempt now exposes a 4p-dart transition object,
  alpha, t_0, t_M, c_0, c_M, a root cut, an alternating-cycle peel with a
  finite Q descent, an inverse record, an explicit P4 table, and a sparse
  P2 face table. These are the right repair interfaces. The rank/Euler
  calculation, the circuit-count convention, the dart-to-visit locality
  map, the profile-position encoding, the zero-face peel count, and the
  P2 algebra remain theorem-critical gaps.
- Explicit-rate coverage: The rate objectives expose n,r,k,kappa,q, the
  rank window, p0 = ceil(31 log r), the three moment terms, r^(-10) and
  r^(-20) confidence budgets, hidden-constant dependence, probability
  modes, horizon modes, and norms. The corrected C_TF is preserved. P4's
  displayed factors (8p)^(b/2) and (16p^2)^(c/2) would give the desired
  b and c rates if the profile map and all multiplicities were proved, but
  no-log leading-term feasibility is not established.
- Assumption and citation plausibility: The six primitive assumptions are
  cited by stable assump IDs and generated events are not promoted to
  theorem assumptions. Quotient algebra, Gaussian conjugation, Wick,
  Taylor, projection, and probability tools have plausible direct sources.
  No external theorem is claimed for TOP, the peel, P4, or P2. The direct
  transition source is not yet source-adequate because c_M cycle counts,
  local matching incidence, and root boundary accounting are unresolved.

## Early Obstruction Audit

- Limiting-case stress: The sketch lists B <= 2, p = 1, empty modes,
  one-color words, degree-two and high-degree vertices, repeated labels,
  Q = 0, one 4-cycle, disjoint 4-cycles, maximal cycles, maximal k, and
  p0 logarithmic order. The path block also handles the zero-update and
  zero-path entries. The p = 1 and empty-mode branches expose a convention
  issue: with the standard edge-dart involution alpha and local transition
  involution t_0, alpha composed with t_0 has two oriented cycles for the
  two-edge Euler circuit, whereas the sketch sets F_M to the number of
  cycles and separately declares the empty value to be 1. A root cut does
  not change the number of permutation cycles. This must be resolved before
  TOP can be treated as a current-notation claim.
- Theorem-critical bridge support: The required chain is the exact colored
  datum from step_004, then TOP and the face exponents from step_006,
  the peel/profile partition from step_007, P4 and P2/P3 from steps 008-009,
  ENUM/21z from step_010, and TF, W_0, E_deficit, and initialization
  confidence from steps 011-012. Step_006 still has no accepted rank/Euler
  source. Step_007 has a plausible finite matching peel but no map from all
  peel endpoints to the 2p profile positions used by P4, and its signed
  face-change labels are not compatible with a fixed circuit convention.
  Steps 008-009 therefore do not yet export the count and face interfaces.
- Exported-interface feasibility: E_cond, normalized Gram/raw scaling,
  E_size, the quotient/TC/radial package, the exact colored trace datum,
  the local sector, path convergence/radius, Taylor, raw margin, physical
  projection, and final conditional probability have identifiable exact
  interfaces. TOP lacks a proved transition rank identity and a fixed
  factor-of-two face convention. The peel lacks an exhaustive profile
  position map and a proved face-change interface. P4 lacks a complete
  upper bound for zero-face peels and orientation/root/color multiplicities.
  P2 lacks the sparse face row and the label/excess relation. These are
  sketch/interface defects, not surrogate-target defects.
- Theorem-critical mechanism witness gate: Steps 001-005 and 010-017 name
  appropriate mechanisms and controls, with downstream steps conditional
  on the blocked moment output. Step_006 names alpha, t_0, t_M, c_M, the
  root cut, and local links, but it does not show that c_0 is one cycle,
  that F_M is the required undirected circuit count, or that every Wick
  matching is local at a K vertex. Step_007 gives a genuine Q descent and
  reverse peel at the matching level, but not a theorem-facing profile or
  face source. Steps 008-009 still state desired multiplicity and face
  rows without their full derivations. The missing witnesses are
  same-setting sketch repairs.
- Entry-state trace stress: The recursive GD claim remains conditional on
  C_path. E_size plus the finite nonnegative path budget gives a tail-sum
  Cauchy argument, radius 3, and the exact zero-path stationary trace; the
  Taylor remainder vanishes at zero displacement and the raw baseline
  deficit is retained. The peel has a finite Q measure and Q decreases by
  one for the stated same-cycle operation, so its accumulation mechanism is
  plausible. The first 4-cycle, Q = 0, and maximal-cycle cases still need
  a proof that the face-change/profile export remains defined.
- Obligation locality classification: Steps 001-005 are step-local for
  their restricted claims. The core same-cycle matching operation in
  step_007 is step-local as a finite combinatorial identity, but the
  theorem-facing profile, face-change, and 2p-position export is a
  sketch/interface defect. Steps 006, 008, and 009 are
  sketch/interface defects. Step_010 is step-local conditional on accepted
  outputs from 006-009. Steps 011-017 and the C_path block are step-local
  conditional assembly. No obligation is currently idea/theorem-contract
  level.
- Noncircular closure gate: C_path is explicitly conditional and supplies
  its finite variation before convergence, Taylor, and loss claims are
  consumed. Q is an independent finite matching measure, so its intended
  peel termination is noncircular. The transition rank/Euler source and
  the sparse count are not circular, but they are absent rather than
  proved; no later step may be treated as their first mechanism source.
- Mechanism-source and boundary stress: The quotient, Gaussian, Wick,
  Taylor, projection, and conditional-probability mechanisms match their
  claims. For TOP, the source must distinguish the edge reversal alpha,
  the local transition involutions, and any global Euler successor, then
  prove the circuit count and root offset in the p = 1 and empty cases.
  For the peel, the source must show that every mode-group Wick matching
  is a matching on the declared local dart set and that a peel's face
  change is measured in the same F convention used by TOP. The current
  definitions do not discharge these branches.
- Generated-output flow: The flow table names all producers, consumers,
  final uses, and dependency paths. It explicitly marks TOP, profiles,
  P4, P2/P3, 21z, TF, and initialization probability as blocked. The
  provenance labels still say derived for planned outputs; this is
  acceptable only because the blocker column is explicit and the review
  rejects downstream consumption. The next sketch must keep these outputs
  pending until fresh producer artifacts pass review.
- Source-to-claim adequacy: The direct dart construction is potentially
  adequate for a transition-system rank claim, but the current c_M cycle
  convention does not yet match the desired F_M circuit count. The
  matching peel is adequate for Q descent, but not for a profile count
  until every peel endpoint is encoded and zero-face records are bounded.
  P4 and P2 labels are not sources for their inequalities. A direct
  current-notation derivation remains plausible; no theorem-contract
  change is required.
- Residual-to-target adequacy: Normalized Grams transfer exactly to raw
  coordinates, normalized and raw tangent spans coincide, the
  elliptic-radial conjugation is exact, and the projection and Taylor
  identities target the raw coefficient and physical metrics. The
  transition, peel, and charge outputs are exact diagram quantities rather
  than surrogate objects, so there is no new residual term. Their
  raw-control-to-interface relations are incomplete until the circuit,
  profile, and face conventions are repaired.
- Baseline invariance audit: Passed. At E_path = 0 the balanced trajectory
  is stationary, theta_infinity equals theta_0, the endpoint Taylor
  remainder is zero, W_0 retains the complete raw initial deficit, and the
  same mode-span projection transfers the physical residual. The sketch
  does not replace the baseline conclusion by a weaker stopped or
  remainder-only statement.
- Scope-accumulation compatibility: The path scope has a finite
  nonnegative variation budget and tail-sum closure. The peel scope has
  Q equal to a finite sum of alternating-cycle excesses and a one-peel
  drop of one, which is the required finite-budget relation. However,
  face-loss deltas and zero-face records are not yet coupled to Q or to a
  finite multiplicity budget, so P4/P2 accumulation remains unsupported.
- Scope and dependence consistency: The exact rank window, fixed kappa,q,
  n >= C r^4 log r regime, normalized versus raw scale, conditional
  probability mode, fixed p0, all-time path mode, and hidden-constant
  declarations agree with setting.md. C0, C1, C2, and C_G are explicitly
  deferred until the table and face row are proved. No p0 factor is
  silently inserted into the leading sqrt(k)/r term, but the absence of
  such a factor is not yet established.
- Generated-condition provenance: E_cond, normalized Grams, E_size,
  E_deficit, TF, W_0, convergence, radius, and loss are generated or
  conditional outputs. K, H, t_M, F_M, TOP, peel profiles, P4, P2/P3,
  and 21z are planned derived outputs, not assumptions. The sketch does
  not promote any of them into the six primitive assumptions.
- Citation and tool applicability: No external theorem is invoked for
  the transition rank identity, cycle peeling, P4, or P2. Standard
  Gaussian, Wick, multinomial, Weyl, and multilinear tools can be
  restated in current notation. If a circuit-nullity or interlace theorem
  is later used, the next sketch must provide source identity, exact
  statement, object mapping, convention compatibility, hypothesis
  discharge, and conclusion interface. The direct route is repairable.
- Same-setting repair plausibility: The remaining issues can be repaired
  by fixing the circuit-count convention, proving the transition rank
  identity, defining the dart-to-profile map, and counting all peel
  records including zero-face records. No counterexample to TOP or to the
  conditional theorem target is established, so idea revision is not
  justified.
- Target-preserving bridge-repair gate: Repairs must preserve
  F+B <= 3p+2, the exact P4/P2/P3 and 21z targets, the
  sqrt(k)/r + sqrt(log r/r) TF rate, corrected C_TF, the raw W_0 and
  deficit, the conditional path factor, the rank window, and the physical
  loss floor. No new primitive assumption, algorithm change, metric
  change, probability upgrade, or baseline weakening is authorized.
- High-risk obligation classes: The active classes are transition-system
  topology and circuit normalization, repeated-component peel/profile
  enumeration, sparse zero-face multiplicity, explicit no-log rates,
  generated-output flow, and the all-time conditional path. Baseline
  invariance, same-target transfer, and conditional mode pass at sketch
  level.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001: E_cond | realized-factor conditioning | Gaussian perturbation and Weyl | primitive base, dimension, smoothing IDs | exact singular/operator claim | realized Euclidean factor convention | perturbation below half the base margin | base margin exports kappa_1 bounds | exact factors, no surrogate | one finite smoothing defect | primitives -> 001 | 001 -> 002,003,014,016 | zero smoothing and lower margin listed | step-local | None |
| step_002: normalized Gram, size, raw bridge, span | initialization geometry | Gaussianization and concentration | 001 plus dimension, rank, independent-init IDs | exact normalized/raw and equal-span claims | G_raw=(r/n)^2 G_norm and raw tangent convention | Gram window and size threshold 2 | covariance and radius controls export all interfaces | exact scale and span identities | finite initialization failures | 001 -> 002 | 002 -> 003,011,012,013 | maximal n and k included | step-local | None |
| step_003: quotient, TC, radial, Gaussian package | quotient geometry and normalization | quotient algebra, Bernstein, radial conjugation | 001,002 derived outputs and primitive init law | exact operator/conjugation claims | raw quotient and trace-one Gaussian conventions | quotient margin, TC scale, radial factor 4 | exports E_G_tilde and event controls | exact conjugation, no target substitution | fixed-order finite input | 001,002 -> 003 | 003 -> 004,005,011 | p=1, one-color, isotropic cases listed | step-local | None |
| step_004: colored diagram datum | trace/Wick bookkeeping | cyclic trace expansion and Wick-Isserlis | 003 derived output | exact K, H, rho_0, labels, mode data intended | dart incidence and visit partition are not fully stated | exact colored word and matching expansion | must export a partition of all 4p darts and local mode matching maps | exact diagram, no residual | finite expansion | 003 -> 004 | 004 -> 005,006,007 | empty, repeated, one-color, p=1 listed | sketch/interface defect | /proof-sketch |
| step_005: quadratic and visit-local sector | exact local moment contribution | second moment and unique local matching | 004 derived datum | exact restricted sub-sum | covariance-loop convention fixed | local sqrt(k)/r source | exports only local sector; cross-visit terms remain explicit | exact trace sub-sum | omitted cross-visit terms routed downstream | 004 -> 005 | 005 -> 008,009 | p=1 and all-distinct listed | step-local | None |
| step_006: TOP transition lemma | structural face/rank inequality | alpha, t_0, t_M, c_0, c_M, root cut | direct transition construction from 004 | desired B-2 <= sum(p-F_M), but circuit count and rank source unresolved | alpha-t composition, one-cycle c_0, empty F_M=1, and root offset are inconsistent or unproved | rank/Euler calculation and local-link control | 4p darts and vertex incidence are named; matching-to-local-transition map and face count are not discharged | exact K and F_M, no surrogate | factor-two orientation and root-boundary defects | 004 -> 006 without assuming TOP | 006 -> 007,009; pending | p=1, empty, degree, repeated, high-degree branches not proved | sketch/interface defect | /proof-sketch |
| step_007: peel profile | reversible matching classification | rho/pi alternating cycles and Q descent | direct finite matching construction from 004 and TOP interface | Q peel/inverse plausible; profile export incomplete | F convention and peel delta convention unresolved | Q drops one and reverse record restores pi | no map from all group darts to 2p profile positions; zero-face records not counted | exact matching objects, no surrogate | uncharged zero-face peel multiplicity and delta mismatch | 004,006 -> 007 | 007 -> 008; pending | Q=0, 4-cycle, disjoint, maximal cases listed | sketch/interface defect | /proof-sketch |
| step_008: P4 | full multiplicity and no-log leading term | peel records, colors, root, labels, orientations | 005 and 007 planned outputs plus rank window | intended P4 form is right; complete upper bound absent | profile size and F convention unresolved | desired (8p)^(b/2)(16p^2)^(c/2) endpoint allocation | tangent colors, labels, and all peel records, especially delta-zero, lack a proved count | exact diagram count intended | zero-face records may carry p-dependent choices | 007 -> 008 | 008 -> 009,010; pending | sparse zero-face and maximal collision only asserted | sketch/interface defect | /proof-sketch |
| step_009: P2/P3 and per-profile ENUM | face/exponent absorption | e, sigma, TOP, P4, sparse face table | 005-008 planned outputs and rank window | P3 follows if P2 and P4 hold; P2 source absent | F_M and F normalization must be fixed first | e>=sigma and two-sign rank-window transfer | face row does not yet map peel types, labels, and v to the P2 exponent | exact weighted trace intended | sparse zero-face and root offsets unresolved | 005,006,007,008 -> 009 | 009 -> 010; pending | p0, maximal k, one-cycle sparse branch listed | sketch/interface defect | /proof-sketch |
| step_010: ENUM/21z | full fixed-order moment | disjoint profiles and multinomial theorem | planned outputs 003-009 | exact target conditional on upstream interfaces | same E_G_tilde trace convention | multinomial sum and C_G specialization | no export until TOP, profile, P4, and P2 are accepted | exact quotient moment | no new defect after upstream closure | 009 -> 010 | 010 -> 011; blocked upstream | p0=ceil(31 log r) listed | step-local | /proof-sketch |
| step_011: TF, coercivity, W_0, deficit | frame-to-deficit certificate | 21z, Markov, radial, TC, projection | 003 and planned 010 | exact raw witness bridge | raw quotient and projection conventions match | corrected C_TF, factor 16, projection energy r/2 | 21z is required at target scale | exact raw target residual | finite Markov/union failure | 003,010 -> 011 | 011 -> 012,015; pending 21z | threshold and stationary cases downstream | step-local | None |
| step_012: initialization probability | generated confidence closure | union and tower bookkeeping | 001,002,011 and joint law | exact event intersection | smoothing/init conditional law | four failures sum to r^(-10) | constituent events required before export | exact event, no surrogate | finite union | 001,002,011 -> 012 | 012 -> 013,017; pending 011 | all allowed n,k stated | step-local | None |
| step_013: path limit and radius | all-time conditional convergence | finite variation and tail-sum Cauchy | 002,012, gd-step, E_size, C_path | exact balanced trajectory claim | d_bal is consumed metric | E_path <= E_star gives Cauchy and radius 3 | path and size export Taylor domain | same trajectory and metric | summable nonnegative increments | 002,012 plus C_path -> 013 | 013 -> 014,015,016,017 | zero update and zero path pass | step-local | None |
| step_014: raw Taylor remainder | nonlinear coefficient bridge | trilinearity and bounded left inverses | 001,013 derived outputs | exact second-order bound | raw coefficient convention | C_CP(kappa,3) d_bal^2 | radius 3 and unit step from path | exact raw residual | one endpoint remainder | 001,013 -> 014 | 014 -> 015 | zero displacement gives zero | step-local | None |
| step_015: raw coefficient margin | baseline obstruction preservation | W_0 orthogonality and Taylor absorption | 011,013,014 derived outputs | exact raw margin | raw span, W_0, D_r conventions | C_CP E_star^2 <= delta_0/16 | W_0 and endpoint error export margin | exact target residual | one dominated endpoint term | 011,013,014 -> 015 | 015 -> 016 | zero path preserves full margin | step-local | None |
| step_016: physical loss floor | same-target objective transfer | mode-span projection and singular values | 001,015 derived outputs | exact relative loss claim | realized factors and Frobenius metric | singular product and nonnegative discard | projection identity exports physical residual | exact T and S target | one-time limit transfer | 001,015 -> 016 | 016 -> 017 | lower singular boundary passes | step-local | None |
| step_017: final conditional probability | event inclusion and probability identity | conditional probability algebra | 012,013,016 and joint law | exact conditional statement | same event and probability mode | retain P(C_path given E_init_norm) | final factor not lower-bounded | actual F_plus event | all-time scope remains conditional | 012,013,016 -> 017 | 017 -> theorem | zero conditional factor allowed | step-local | None |
| C_path and baseline invariance | conditional scope and exact baseline | finite path certificate and zero-path specialization | explicit setting clause plus 013-016 | exact baseline conclusion | raw target, metric, and tangent witness unchanged | finite variation; zero path zero error | certificate consumed only conditionally | same raw object at zero path | summable nonnegative increments | C_path -> 013 -> 014 -> 015 -> 016 | 013-016 -> 017 | stationary first update and zero path pass | step-local | None |

## Blocking Issues

1. Step_006 still lacks a source-adequate transition rank/Euler
   derivation and has an unresolved circuit-count convention. With
   D = E(K) x {0,1}, alpha and t_M are involutions on 4p darts, so the
   standard permutation alpha composed with t_M traverses each undirected
   circuit in two orientations. The sketch simultaneously defines F_M as
   the number of those cycles, asserts that c_0 is one cycle, and sets the
   empty branch to F_M = 1. For p = 1 the standard transition has two
   oriented cycles, not one. A root cut does not alter cycle count. The
   smallest repair is to choose one convention explicitly: use half the
   permutation-cycle count for circuit F_M and rederive every delta/root
   term, or define a different oriented successor state space and prove
   its relation to the Wick circuits. The repair must also prove the
   rank/Euler inequality B-2 <= sum_M(p-F_M) in current notation.
2. Step_004 to step_006 does not expose the local incidence map needed to
   make t_M a transition involution at each K vertex. The diagram object
   names a 2p-visit set and mode matchings, but does not state a
   bijection/partition of all 4p darts into visits or prove that each Wick
   pair lies at one K vertex. If repeated component labels identify
   different K vertices, a component/mode Wick pair can cross vertices and
   cannot be a local transition without an additional contraction map.
   The smallest repair is an explicit dart-to-visit-to-vertex map and a
   proof that every t_M is fixed-point-free and vertex-local in all
   repeated-label and high-degree cases.
3. Step_007's Q peeling is a valid-looking matching operation, but the
   theorem-facing profile export is not executable. The sketch never
   states a+b+c=2p or defines which of the 2p trace positions receive the
   two endpoints of a peel. It also defines delta using F without fixing
   the factor-of-two convention; a two-pair switch inside one alternating
   matching cycle changes its undirected circuit count by one, so the
   delta = 1 and delta = 2 b/c rows need a consistent multi-mode source.
   Zero-face peels are assigned to a but their records are not encoded or
   counted. The smallest repair is an exhaustive disjoint map from every
   group-level peel record to profile positions, with a fixed F convention,
   signed face-change proof, and a reverse record for zero-face peels.
4. Step_008's P4 table is not yet a proved upper bound. It does not derive
   the number of orientation, root, color, label, and peel choices from the
   reversible record, and it omits the p-dependent choices for peels whose
   delta is zero or negative but whose endpoints are put in a. Consequently
   the claimed absence of a p factor on a-positions and the constants
   C0, C1, C2, and C_G are unsupported. The smallest repair is a complete
   per-profile inequality that counts every record, including sparse
   zero-face records, or proves those records are uniquely determined by
   the uncharged data.
5. Step_009 only states the sparse face table and P2. The identities
   e=(3p+2-v)-F and sigma=B-v give e>=sigma only after a valid TOP
   convention, but no derivation links each peel type, root cut, label
   exponent, and profile endpoint to
   4p+1-F >= a+b/2+c+(5/4)(v-1-a/2)_+. P3 is algebraically plausible
   conditional on P2 and the rank window, but cannot export ENUM without
   the missing P2 and P4 sources. The smallest repair is the full
   current-notation sparse face/excess derivation, including p=1, empty
   modes, zero-face peels, and both signs of d=v-1-a/2.
6. Steps 010-012 remain unavailable: without accepted TOP, profile,
   P4, and P2/P3 outputs, 21z cannot be exported, so TF, W_0,
   E_deficit, and P(E_init_norm) are not theorem-facing. This is a
   dependency consequence of blockers 1-5; steps 013-017 remain
   target-preserving conditional assembly and should not be weakened.

## Required Repair Bundle

1. Preserve the 17-ID acyclic DAG and the exact theorem contract. Keep the
   successful split through step_005 and the conditional downstream chain.
   Do not import stale step_003 artifacts as binding proof evidence.
2. In step_004/step_006, define the exact 4p-dart object, endpoint and
   vertex maps, visit partition, color-0 transition, edge reversal alpha,
   local t_M, and any global Euler successor as distinct objects. State
   whether F_M is undirected circuit count or an oriented permutation-cycle
   count, and make the empty and p=1 branches obey the same definition.
   Prove the root-cut accounting and the rank/Euler inequality
   B-2 <= sum_M(p-F_M), including high-degree, repeated-label, and
   one-color branches.
3. In step_007, retain the Q peel and reverse reconstruction only after
   proving that every selected rho/pi pair is a legal same-group Wick
   matching. Define the map from group darts to exactly 2p profile
   positions, prove disjointness and exhaustiveness, state a+b+c=2p,
   and derive signed face changes under the same F convention. Encode and
   count zero-face and negative-face peels rather than silently padding
   them as a.
4. In step_008, write a formal P4 inequality with all tangent-color,
   root, orientation, component-label, profile-position, and peel-record
   factors. Explain why every p-dependent factor is charged to b or c
   endpoints and how any zero-face record is controlled. Only then declare
   C0, C1, C2, and C_G.
5. In step_009, derive the sparse face row and P2 from the repaired
   transition system and peel records, then prove P3 separately for
   d >= 0 and d < 0 under r < k <= r^(5/4). Include exact e, sigma,
   F, B, and v identities and all boundary branches.
6. Keep generated-output flow honest: TOP, profiles, P4, P2/P3, 21z,
   TF, and E_init_norm remain pending until fresh producer artifacts and
   reviews accept them. Rerun strict sketch review before global proof or
   any step proofs under attempt 6 are consumed.
7. Target-preserving repair check: all repairs are same-setting source,
   convention, and counting interfaces. No new primitive assumption,
   changed algorithm, reduced rank window, probability upgrade, metric
   change, omitted baseline case, or weakened positive-loss conclusion is
   authorized. If the repaired transition identity fails, route the exact
   counterexample to /proof-sketch before considering idea revision.

## Review Rationale

REVISE_SKETCH with score 6 is the deepest required change. Attempt 6 is a
substantial improvement: it corrects the dart cardinality, separates alpha
from t_0 and t_M, replaces the artificial forest charge by a finite
alternating-cycle peel, and displays P4 and the sparse P2 target. It is
still not ready for step-level proof work because the transition
rank/Euler source and circuit convention are unresolved, the peel has no
complete 2p-position/face-change interface, and the P4/P2 counts omit
material sparse records. These are same-setting sketch/interface defects.
The exact conditional theorem, rank window, raw target and baseline, and
physical-loss bridge remain viable and unchanged, so IDEA_FAIL is not
justified.
