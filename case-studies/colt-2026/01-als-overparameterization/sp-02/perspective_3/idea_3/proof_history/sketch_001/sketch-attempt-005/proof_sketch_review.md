# Proof Sketch Review

## Reviewed Sketch Identity

- Sketch attempt: 5
- Review target: perspective_3/idea_3/proof_sketch.md
- Trigger: sketch attempt 4 was routed to /proof-sketch for the overloaded
  reduction row and for non-executable topology, profile, and charge
  interfaces.
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

- Goal alignment: The sketch preserves the exact formalized setting and goal
  in setting.md. It keeps the smoothed third-order CP least-squares objective,
  product-preserving balanced simultaneous GD with eta = (n k r)^(-12), the
  universal rank window r < k <= floor(r^(5/4)), the normalized Gram event,
  the raw tangent-deficit witness, the conditional finite-path conclusion,
  the positive relative limiting loss, and the exact factor
  P(C_path | E_init_norm). It does not claim a lower bound for that remaining
  conditional path probability. D_r, Dhat_0, S_0, W_0, the coefficient
  residual, and the physical Frobenius metric remain in raw coordinates.
- Dependency audit: All 17 stable IDs are present. The edges
  001->002->003->004->005, 004->006->007, 005/007->008,
  005/006/007/008->009->010->011->012->013->014->015->016->017,
  together with the stated 001/002 and 003/010 side dependencies, are
  acyclic and point only to earlier IDs. The historical step_003 overload is
  actually split: step_003 ends at quotient/TC/radial/Gaussian outputs,
  step_004 exports the colored diagram datum, and step_005 exports only the
  quadratic and visit-local sector. The remaining dependency defect is not
  graph cyclicity; it is that the planned producers step_006 through
  step_009 do not yet prove their exported interfaces.
- High-risk coverage: The sketch exposes the active structural topology,
  repeated-component profile, no-log moment, generated-output, and
  all-time-path obligations. It names a rooted three-jacket complex, a
  reversible rho/pi switch record with potential Phi, and explicit
  e/sigma/P1-P3 labels. These are the correct obstruction-level interfaces,
  but the local-link/Euler derivation, switch case table and inverse, P4
  multiplicity inequality, and P2 face row remain stated obligations rather
  than source-adequate derivations.
- Explicit-rate coverage: The initialization, moment, conditional-loss, and
  final-probability rate objectives expose n,r,k,kappa,q,p0, the
  sqrt(k)/r + sqrt(p0/r) + p0/r rate, the r^(-10) and r^(-20) budgets, the
  probability and horizon modes, and the allowed hidden-constant dependence.
  The exact raw Gram scale (r/n)^2, C_G = 27 kappa_1^8, and corrected
  C_TF = 32 e sqrt(32/30) C_G are recorded. However, the asserted P4 table
  has no complete inequality proving that root, color, orientation, forest,
  and switch factors are absorbed without a p factor on an a-position, so
  the no-log-leading specialization is not yet executable.
- Assumption and citation plausibility: The six primitive assumptions are
  cited by stable assump IDs, and generated conditioning, Gram, size,
  deficit, TOP, profile, charge, TF, and path facts are not promoted to
  primitive assumptions. Quotient algebra, Wick expansion, Taylor,
  projection, and probability identities have plausible direct or standard
  sources. No external theorem is claimed for TOP or the profile/charge
  mechanism. Their current-notation source interfaces are incomplete, so
  those obligations cannot yet be classified as step-local.

## Early Obstruction Audit

- Limiting-case stress: The sketch names the required branches: B <= 2,
  p = 1, empty S_M, one-color words, degree-two and high-degree vertices,
  repeated labels, first switch, maximal collision, maximal k, and
  p0 = ceil(31 log r). It also traces the zero-path/stationary entry for the
  conditional trajectory. These branches are not discharged. In particular,
  the assertion that root smoothing makes every local link one circle does
  not show that partially empty modes, repeated labels, or high-degree
  vertices have the claimed incidence; and the first-switch/maximal-collision
  cases do not establish switch termination or an inverse.
- Theorem-critical bridge support: The required bridge chain is
  Gamma(D) -> TOP -> reversible profiles -> P4 and P1-P3 -> ENUM/21z ->
  TF, quotient coercivity, W_0, and E_deficit. Step_004 supplies an exact
  diagram datum, and step_005 supplies the explicitly limited local sector.
  Step_006 does not yet export TOP, step_007 does not yet export a
  disjoint/exhaustive profile partition, and steps 008-009 do not yet export
  P4 or P1-P3. Consequently 21z and all downstream initialization
  probability outputs remain unavailable.
- Exported-interface feasibility: E_cond, the normalized Gram/raw bridge,
  E_size, the quotient/TC/radial/Gaussian package, the exact colored diagram
  datum, the local moment, the path limit/radius, the Taylor bridge, the raw
  coefficient margin, the physical projection bridge, and the final
  conditional identity have identifiable raw controls and exact target
  interfaces. The TOP export lacks a proved local-link and connectedness
  source; the profile export lacks a proved finite switch record and inverse;
  the P4 export lacks a full multiplicity inequality; and the P1-P3 export
  lacks the face/excess charging relation. These are sketch/interface
  defects, not target residual defects.
- Theorem-critical mechanism witness gate: Steps 001-005 and 010-017 name
  claim class, source, control, boundary behavior, and consumers with
  sufficient obstruction-level specificity for local work (steps 010-017
  are conditional on the blocked upstream outputs). Step_006 names the
  rooted complex and Euler characteristic but leaves the local-link,
  orientation, and connectedness witness unproved. Step_007 names rho, pi,
  the switch domain, and Phi but gives no checked strict-decrease case table
  or reverse invariant. Step_008 names the records and desired p-dependent
  factors but gives no complete count. Step_009 names e, sigma, P1, P2,
  and P3 but gives no local face/forest derivation. The latter four are
  missing or shallow witnesses and route to sketch repair.
- Entry-state trace stress: For the recursive GD block, E_size plus the
  explicit conditional C_path gives finite variation, a tail-sum Cauchy
  argument, and the all-time column bound 3. At E_path = 0 the trajectory is
  stationary, the endpoint is the raw initial state, the Taylor remainder is
  zero, and the full initial raw deficit is preserved. Thus no mechanism is
  silently inactive at the allowed zero-path entry. The finite switch
  procedure separately lists first-switch and maximal-collision branches,
  but its first transition is not executable until the admissible-switch
  set and potential change are defined and checked.
- Obligation locality classification: step_001, step_002, step_003,
  step_004, and the intentionally restricted step_005 claim are
  step-local. Steps 006, 007, 008, and 009 are sketch/interface defects:
  each needs a theorem-critical source, interface, or decomposition repair
  before a proof-step worker can derive its target. Step_010 is step-local
  from a genuinely accepted profile bound, but is unavailable in the current
  dependency state. Steps 011-017 and the C_path conditional block are
  step-local conditional assembly once 21z and E_init_norm are available.
  No obligation is idea/theorem-contract level.
- Noncircular closure gate: C_path is explicitly a conditional hypothesis,
  not a generated invariant. Its producer is the declared certificate and
  its nonnegative increment sum gives the Cauchy/column-bound relation before
  downstream Taylor and loss claims are consumed. The diagram chain is
  acyclic. The proposed switch potential could be a noncircular finite
  producer, but no strict drop, bounded record, or reverse invariant is
  proved, so profile termination and counting cannot yet be accepted.
- Mechanism-source and boundary stress: The raw quotient, Gaussian
  conjugation, Wick, Taylor, projection, and conditional-probability
  mechanisms have the right claim classes. The rooted complex is a direct
  source only after the exact extension of h_M to all oriented ends, the
  one-cycle tau convention, vertex rotations, root smoothing, and local-link
  table are proved. The profile and charge mechanisms are direct
  constructions, but their source-to-claim match remains conditional on the
  missing switch and incidence derivations.
- Generated-output flow: The flow tables name producers, consumers, final
  uses, and dependency paths for all 17 outputs. They also identify the
  missing TOP, profile, P4, P1-P3, and 21z interfaces. This is materially
  better than an untracked future-proof label, but the next sketch must keep
  those rows explicitly pending and must not present the planned producers
  as accepted derived evidence before their local obligations are repaired.
- Source-to-claim adequacy: The exact quotient and Gaussian sources match
  their operator claims; the direct colored trace and local matching source
  match step_004 and step_005. For TOP, a claimed Euler characteristic is
  not a source for itself: the finite local-link/orientability and
  connectedness derivation must precede the inequality. For profile
  classification, a named lexicographic switch is not a source for a
  bijection until strict decrease and inverse reconstruction are shown. For
  P4/P1-P3, desired inequalities and category labels are not sources for
  multiplicity or signed exponent claims. Direct current-notation derivation
  is plausible under the same setting, but the required source entries are
  missing.
- Residual-to-target adequacy: The normalized Gram certificate transfers
  exactly to raw coordinates by G_raw = (r/n)^2 G_norm; normalized and raw
  tangent spans are equal; the elliptic-radial conjugation is exact; the
  projection identity is same-target; and the Taylor endpoint residual is
  measured in the raw coefficient and physical norms consumed by the goal.
  The unresolved diagram outputs are exact traces rather than surrogate
  objects, so no new residual is introduced. Their raw-control-to-exported
  interface is nevertheless incomplete until TOP/profile/charge are proved.
- Baseline invariance audit: Passed. The inherited zero-path conclusion is
  preserved in the exact raw convention: E_path = 0 leaves theta_infinity =
  theta_0, the W_0 orthogonality term is unchanged, the Taylor remainder
  vanishes, and the physical residual is transferred by the same projection
  identity. The sketch does not replace this with a weaker remainder-only,
  stopped, or finite-scope surrogate.
- Scope-accumulation compatibility: The GD path has a declared finite
  nonnegative variation budget E_path <= E_star, a tail-sum Cauchy relation,
  and a finite radius implication. The fixed-order diagram expansion is
  finite. The repeated profile-switch scope has only the proposed Phi
  tuple; the one-step strict drop, accumulated record bound, and preservation
  of the reverse invariant are absent. Persistent or overlapping charge
  records therefore remain unsupported until step_007 is repaired.
- Scope and dependence consistency: Quantifiers, rank window, normalized
  versus raw scaling, conditional probability mode, all-time path mode,
  fixed p0, and hidden-constant dependence agree with setting.md. The
  declarations C0, C1, C2, and C_G depend syntactically only on kappa, but
  this dependence is not established until every color, root, orientation,
  forest, label, and switch factor is counted.
- Generated-condition provenance: E_cond, normalized Grams, E_size,
  E_deficit, TF, W_0, convergence, radius, and physical loss are generated
  outputs or explicit conditional conclusions. TOP, profile classes, P4,
  P1-P3, and 21z are also planned derived outputs, not assumptions. The
  sketch correctly records their blockers; no generated condition is hidden
  inside the public goal.
- Citation and tool applicability: No theorem-critical external citation is
  invoked for the rooted surface, switch, or charge claims. Standard
  Gaussian, Wick, multinomial, Weyl, and Taylor tools are named in
  current-branch conventions and can be restated locally. If a later run
  chooses a cited circuit-nullity or ribbon-surface theorem instead, it must
  add source identity, exact statement, object mapping, convention match,
  hypotheses, and conclusion interface before classifying that source as
  step-local. The present direct-derivation route is repairable without an
  idea change.
- Same-setting repair plausibility: All material defects can plausibly be
  repaired by adding the finite incidence table, fixing the all-dart
  transition conventions, formalizing the reversible switch record, and
  exposing the multiplicity and exponent inequalities. No counterexample
  to TOP, no impossible profile requirement, and no theorem-contract
  contradiction is established.
- Target-preserving bridge-repair gate: The repair must preserve exactly
  F+B <= 3p+2, P4, P1-P3, ENUM/21z, the
  sqrt(k)/r + sqrt(log r/r) TF rate, the corrected C_TF, the raw W_0 and
  deficit, the conditional path factor, and the physical loss floor. It
  must not add a primitive initialization or trajectory assumption, reduce
  the rank window, change the algorithm, change the metric, or weaken the
  baseline conclusion.
- High-risk obligation classes: Active classes are structural topology,
  repeated-component multiplicity and reversibility, explicit
  rate/no-log specialization, generated-output flow, and profile-scope
  accumulation. Recursive path closure, baseline invariance, conditional
  mode, and raw-to-physical transfer pass at sketch level.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001: E_cond | realized-factor conditioning | Gaussian operator perturbation plus Weyl | primitive assump IDs base_conditioning, dimension, gaussian_smoothing | exact singular/operator claim | realized Euclidean A,B,C convention | perturbation below half the base singular margin | base margin and smoothing scale export kappa_1 bounds | exact realized factors; no surrogate | one finite smoothing defect | primitives -> step_001 | step_001 -> 002,003,014,016 | zero smoothing and lower-margin cases listed | step-local | None |
| step_002: normalized Gram, raw scale, E_size, span | initialization nondegeneracy and size | Gaussianization, sphere/radius, Gram concentration | step_001 plus assump independent_initialization and rank_window | exact normalized/raw and equal-span claims | G_raw=(r/n)^2 G_norm and raw tangent convention fixed | normalized window and chi-tail size threshold 2 | covariance/radius controls export all four initial interfaces | exact scale identity and equal spans | finite initialization failures only | step_001 -> step_002 | step_002 -> 003,011,012,013 | arbitrary large n and maximal k are in scope | step-local | None |
| step_003: quotient/TC/radial/Gaussian package | quotient geometry and trace normalization | direct quotient algebra, Bernstein, elliptic-radial conjugation | step_001, step_002 and primitive initialization law | exact operator and conjugation claims | raw coefficient quotient and trace-one Gaussian convention are stated | quotient spectrum, TC scale, radial factor 4, operator norm of D <= 4 | quotient/radial controls export the unnormalized Gaussian operator | exact conjugation, no target substitution | fixed-order finite moment input | 001,002 -> 003 | step_003 -> 004,005,011 | p=1, one-color, isotropic, maximal-rank cases listed | step-local | None |
| step_004: colored diagram datum | exact cyclic trace/Wick bookkeeping | direct trace expansion and Wick-Isserlis | step_003 derived output | exact Gamma(D), K, H_M, F_M, B,v,sigma schema | current mode colors and raw trace matching are declared | mode-subsequence sizes sum to 4p, E=2p, exact circuit partitions | colors, labels, matchings, and trace expansion export the exact datum | exact diagram object; no residual | finite expansion, no accumulated defect | step_003 -> 004 | step_004 -> 005,006,007 | empty modes, repeated labels, one-color, p=1 listed | step-local | None |
| step_005: quadratic and visit-local sector | exact local moment contribution | exact second moment and visit-local matching | step_004 derived datum | exact restricted sub-sum; explicitly excludes cross-visit aggregate | same covariance-loop convention | local leading contribution; no hidden cross-visit sum | exports only the local sector to charge steps | exact trace sub-sum | omitted repeated cross-visit terms are routed to 006-009 | step_004 -> 005 | step_005 -> 008,009 | p=1 and all-distinct labels listed | step-local | None |
| step_006: TOP | structural face/topology inequality | rooted three-jacket complex and Euler characteristic | direct construction from K,iota,tau,h_M,phi_M | target F+B <= 3p+2 is right, but surface source incomplete | all-dart extension of h_M, tau rotation, root smoothing, and B preservation are not fixed | chi(X)=B-3p+F <= 2 only after closed connected orientable local links | K and face permutations are named, but local-link incidence and connectedness are not exported | exact same diagram, no surrogate; interface still missing | local-link, boundary, and root-smoothing defects unresolved | step_004 -> 006 without assuming TOP | planned step_006 -> 007,009; pending | B<=2, empty/partial modes, p=1, one-color, degree-two, repeated/high-degree cases only asserted | sketch/interface defect | /proof-sketch |
| step_007: reversible profile partition | exact disjoint/exhaustive matching classification | rho/pi switches and Phi | direct finite construction from step_004 and proposed TOP interface | desired (a,b,c) partition is appropriate, bijection incomplete | group membership, orientation, and reconnection convention are not fully fixed | strict Phi drop, finite termination, reverse reconstruction, disjoint records | rho, pi, labels, roots, orientations, and records are named but no executable inverse export | exact matching objects; no surrogate | possible overlapping records and uncharged cross-visit terms | step_004,006 -> 007; no circular TOP use shown | planned step_007 -> 008; pending | first switch, one repeat, maximal collision, all-distinct branches listed only | sketch/interface defect | /proof-sketch |
| step_008: P4 multiplicity table | full diagram count and no-log leading term | reversible records plus color/root/label/forest counts | step_005 and step_007 planned outputs, rank_window | intended P4 claim class is right, inequality absent | current colors, root/orientation, component labels, and covariance weights are named | desired factors (8p)^(b/2) and (16p)^c with no p on a | raw choices 3^(2p), 2p, k^v, positions, and loop weights are listed but not converted to a complete bound | exact diagram count intended; no surrogate | root/color/forest/switch multiplicities unresolved | step_007 -> 008 | planned step_008 -> 009,010; pending | local sector, root choices, maximal k listed | sketch/interface defect | /proof-sketch |
| step_009: P1, P2, P3 and per-profile ENUM | exponent/face absorption at rank window | e,sigma identities, TOP, forest/face table | step_005-008 planned outputs plus rank_window | P3 follows algebraically if P1/P2/P4 hold; P1/P2 sources missing | F,B,v,e,sigma conventions agree syntactically | e>=sigma, P1, P2, two-sign-case transfer to P3 | no current face row maps profile charges to F,v; P4 not proved | exact weighted trace intended; interface missing | cross-visit exponent loss and p-dependence unresolved | step_005,006,007,008 -> 009 | planned step_009 -> 010; pending | maximal k, p0 log order, local sector listed | sketch/interface defect | /proof-sketch |
| step_010: ENUM/21z | full fixed-order trace moment | disjoint profile partition and multinomial theorem | planned accepted outputs step_003-009 | exact target formula, conditional on upstream interfaces | same tilde-E_G trace convention | multinomial sum and C_G specialization | no export until TOP/profile/P4/P1-P3 are accepted | exact quotient moment; no surrogate | no new defect after upstream closure | step_009 -> 010 | step_010 -> 011; blocked upstream | p0=ceil(31 log r), local and collision sectors listed | step-local | /proof-sketch |
| step_011: TF, quotient coercivity, W_0, deficit | random-frame to normal-witness certificate | 21z, Markov, radial/TC, projection | step_003 and planned step_010 | exact raw W_0 and deficit bridge | raw quotient and physical projection conventions match | corrected C_TF, TF <= 1/2, projection energy <= r/2 | 21z and quotient controls export W_0 at raw target scale | exact raw D_r-Dhat_0 and physical projection | finite Markov/union failure | step_003,010 -> 011 | step_011 -> 012,015; pending 21z | stationary/threshold cases listed in downstream block | step-local | None |
| step_012: E_init_norm probability | generated confidence closure | union and tower bookkeeping | step_001,002,011 plus joint law | exact intersection and r^(-10) bound | smoothing/init conditional law stated | four failure budgets sum to r^(-10) | constituent event probabilities are required before export | exact event, no surrogate | finite union only | 001,002,011 -> 012 | step_012 -> 013,017; pending 011 | all allowed n,k and conditional mode stated | step-local | None |
| step_013: path limit/radius | all-time conditional convergence and boundedness | finite variation and tail-sum Cauchy | step_002, step_012, explicit C_path, assump gd_step | exact balanced trajectory claim | d_bal is the consumed metric and no proxy is introduced | E_path <= E_star gives Cauchy limit and column norm <= 3 | E_size plus path budget export the Taylor-domain radius | same trajectory and metric | nonnegative increments are summable under explicit conditioning | 002,012 + C_path -> 013 | step_013 -> 014,015,016,017 | zero update and zero-path entries pass | step-local | None |
| step_014: raw Taylor remainder | nonlinear coefficient bridge | trilinearity and bounded left inverses | step_001, step_013 | exact second-order remainder | raw coefficient map and d_bal convention match | C_CP(kappa,3) d_bal^2 with unit increments | radius 3 and endpoint path export required domain | exact raw residual; no surrogate | one endpoint remainder | 001,013 -> 014 | step_014 -> 015 | zero displacement gives zero remainder | step-local | None |
| step_015: raw coefficient margin | preservation of normal obstruction | W_0 orthogonality plus Taylor absorption | step_011,013,014 | exact (15/16) delta_0 margin | raw tangent span, W_0, and D_r convention match | C_CP E_star^2 <= delta_0/16 | W_0 and endpoint remainder export margin at raw scale | exact target residual | one dominated endpoint error | 011,013,014 -> 015 | step_015 -> 016 | zero path preserves full initial deficit | step-local | None |
| step_016: physical loss floor | same-target objective transfer | mode-span projection and factor singular values | step_001, step_015 | exact relative physical loss claim | realized A,B,C and Frobenius projection convention match | singular-value product times raw margin | projection identity exports the consumed physical residual | exact same T and S(theta); orthogonal discard nonnegative | one-time limit transfer | 001,015 -> 016 | step_016 -> 017 | lower singular boundary passes | step-local | None |
| step_017: final conditional probability | event inclusion and probability identity | conditional probability algebra | step_012,013,016 and joint law | exact P(F+) >= (1-r^-10)P(C_path given E_init_norm) | same event convention and conditional mode | P(E intersect C)=P(E)P(C given E) | final factor is retained, not lower-bounded | actual F+ event; no surrogate | all-time scope remains conditional | 012,013,016 -> 017 | step_017 -> theorem | zero conditional factor explicitly allowed | step-local | None |
| C_path and baseline invariance | conditional scope and exact baseline recovery | finite path certificate and zero-path specialization | explicit conditional setting clause plus step_013-016 | exact baseline conclusion preserved | raw target, metric, and tangent witness unchanged | finite variation; zero path gives zero Taylor error | certificate is consumed only by conditional downstream steps | same raw object at zero path | summable nonnegative increments | C_path -> 013 -> 014 -> 015 -> 016 | 013-016 -> 017/final theorem | stationary first update and zero path pass | step-local | None |

## Blocking Issues

1. Step_006 does not yet prove the rooted three-jacket surface needed for
   TOP. The sketch defines D(K), iota, a root, tau, h_M, phi_M, mode edges,
   2-cells, and a root smoothing, but it does not fix the all-dart extension
   of h_M for partially empty modes, prove that tau is the required
   one-cycle transition for every connected loopless Eulerian K, give the
   finite vertex-link incidence/rotation table, or prove that root
   smoothing leaves B vertices and produces a connected closed orientable
   surface. Without those facts, chi(X)=B-3p+F <= 2 and TOP are target
   assertions rather than exported results. Smallest repair: add the
   current-notation local-link, connectedness, orientability, and Euler
   derivation inside step_006, or split that finite audit into an earlier
   step while preserving the same TOP interface.
2. Step_007 does not yet define an executable reversible profile map. The
   group in which a switch acts, the orientation/reconnection convention,
   the exact selected matching pi, and the admissible-switch predicate need
   to be Boolean current-notation definitions. The proposed Phi tuple is
   not accompanied by the case table proving a strict decrease, a finite
   record bound, or reverse reconstruction of labels, words, roots,
   orientations, rho, and pi. Consequently disjointness, exhaustiveness,
   a+b+c=2p, b even, and b+c>=1 off the local sector are not exported.
   Smallest repair: formalize the switch algorithm and reverse invariant,
   including first-switch and maximal-collision cases, in step_007 (or split
   the inverse/termination audit into a separate step).
3. Step_008 does not state or prove an explicit P4 inequality. The raw
   factors 3^(2p), 2p, k^v, profile multinomials, ordered-pair/c-position
   choices, and covariance-loop weights are listed, but the table does not
   derive the exact per-profile bound, explain how root/color/orientation
   factors are absorbed, or prove that no p factor reaches an a-position.
   Therefore C0, C1, C2, and C_G are declarations rather than proved
   constants. Smallest repair: state P4 as a complete inequality and
   discharge every multiplicity row from the reversible records, with
   constants depending only on kappa after the count.
4. Step_009 does not derive the face/exponent charge. The definitions
   e=(3p+2-v)-F and sigma=B-v give e>=sigma only after TOP, but the
   forest/face table that yields P1 and especially
   P2, 4p+1-F >= a+b/2+c+(5/4)(v-1-a/2)_+, is absent. The two-sign-case
   algebra for d=v-1-a/2 and the transfer to P3 are only stated. Without
   P2 and P4 the per-profile ENUM bound and the no-log leading term do not
   follow. Smallest repair: expose the local charge contributions, prove
   P1/P2/P3 in current notation for d>=0 and d<0, and connect the result
   to the exact P4 table.
5. Downstream step_010, step_011, and step_012 are explicitly conditional
   on steps 006-009, so 21z, TF, quotient coercivity, W_0, E_deficit, and
   P(E_init_norm) are not currently available as theorem-facing outputs.
   This is a dependency consequence of blockers 1-4, not an additional
   theorem defect. Smallest repair: keep the downstream steps unchanged,
   reroute them only after fresh accepted topology/profile/charge
   interfaces, and treat all old proof artifacts as stale after sketch
   acceptance.

## Required Repair Bundle

1. Preserve the 17-ID acyclic DAG and the exact theorem contract. Keep the
   successful step_003 split into quotient/TC/radial/Gaussian, exact colored
   trace, and quadratic/visit-local outputs. Update only dependencies and
   interfaces required by the finite topology/profile/charge derivations.
2. Repair step_006 with a fixed current-notation half-edge datum:
   explicitly export that K is connected, loopless, and Eulerian; define
   h_M on every dart including nonempty and partially empty S_M; define tau
   and its root successor; specify vertex rotations, edge endpoints, and
   root smoothing; give the finite local-link table for B<=2, p=1, empty
   and one-color modes, degree-two/high-degree vertices, and repeated labels;
   prove connected closed orientability, the exact vertex/edge/face count,
   and F+B<=3p+2.
3. Repair step_007 with exact rho/pi group and orientation definitions,
   the admissible four-end switch predicate, lexicographic selection, and
   a case table showing strict Phi decrease and finite termination. Store
   enough data to reverse every switch and recover the original word,
   component labels, roots, orientations, rho, and pi. Prove that the
   records are disjoint and exhaustive and imply the stated profile
   statistics, including the local sector and b+c>=1.
4. Repair step_008 by writing P4 as a formal per-profile multiplicity
   inequality. Count tangent colors, roots, orientations, component labels,
   profile positions, forest edges, ordered b-pairs, c-positions, and
   covariance loops from the step_007 record. Prove the exact absorption
   into 3kr, C0^a, (C1 sqrt(p))^b, and (C2 p)^c, with no p factor on
   a-positions, before declaring C0,C1,C2,C_G.
5. Repair step_009 by deriving P1 from the forest invariant, deriving the
   P2 face row from the rooted TOP and profile records, and then proving P3
   separately for d>=0 and d<0 using r<k<=r^(5/4). State all
   e/sigma/F/B/v identities and include the local sector and every
   cross-visit profile.
6. Keep the generated-output and blocker tables honest: mark TOP, profile,
   P4, P1-P3, and 21z as pending until their producer derivations are
   accepted, and do not use a future step label as a mechanism source.
   Preserve the exact raw-to-physical and conditional-path bridges and
   rerun strict sketch review before any global proof or step proof work.
7. Target-preserving repair check: all requested changes are finite
   source/interface derivations under the existing setting. No new
   primitive assumption, changed algorithm, reduced rank window, changed
   probability mode, changed metric, omitted baseline case, or weakened
   positive-loss conclusion is authorized. If a local audit fails, record
   the concrete counterexample and route to /proof-sketch before considering
   any idea-level change.

## Review Rationale

REVISE_SKETCH with score 6 is the deepest required change. Attempt 5 is a
substantial improvement over attempt 4: it has 17 stable IDs, an acyclic
decomposition that removes the historical step_003 overload, a concrete
rooted three-jacket object, a named reversible rho/pi profile mechanism,
and explicit P4 and e/sigma/P1-P3 targets. It is still not ready for
step-level proof work because the three sources that create (TOP), the
no-log multiplicity bound, and 21z remain unproved at their interfaces.
Those are same-setting sketch/interface defects: the exact target, rank
window, conditional mode, raw convention, baseline invariance, and
physical-loss bridge remain viable and unchanged. IDEA_FAIL is therefore
not justified.
