# Proof Sketch Review

## Reviewed Sketch Identity

- Sketch attempt: 8
- Review target: perspective_3/idea_3/proof_sketch.md
- Trigger: attempt 7 was routed to /proof-sketch because the K-vertex
  locality interface, long-cycle support allocation, excess-position source,
  and signed face bookkeeping were not viable.
- Goal mode: exact-goal mode
- Progress type: conditional
- Theorem-contract change: none

## Sketch Viability Score

5

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The exact theorem in setting.md is preserved. The sketch
  keeps simultaneous balanced GD, every `r < k <= floor(r^(5/4))`, the raw
  `D_r`, `Dhat_0`, tangent deficit, `W_0`, coefficient residual, corrected
  `C_TF`, physical Frobenius loss, and the conditional factor
  `P(C_path | E_init_norm)`. It claims no lower bound for that factor.
- Dependency audit: All 17 stable IDs occur exactly once in the sketch-step
  table. The reduction chain `001 -> 002 -> 003 -> 004 -> 005`, topology
  branch `004 -> 006 -> 007`, count branch `005,007 -> 008` and
  `005,006,007,008 -> 009 -> 010`, and downstream branch
  `003,010 -> 011 -> 012 -> 013 -> 014 -> 015 -> 016 -> 017` are acyclic.
  Every explicit dependency points to an earlier ID. The prior step_003
  overload has been reduced to a coherent quotient/TC/radial pipeline; the
  current excessive proof burden is instead concentrated in steps 006 and
  009.
- High-risk coverage: The bipartite `I_M` object correctly separates
  K-node-local color transitions from group-node-local Wick pairings, but the
  claimed global profile quotient is not produced. Each of the `2p` trace
  positions is active in two physical modes, so `sum_M |S_M|=4p`; the two
  mode-wise Wick matchings at one trace position are independent. A single
  involution on `D_prof=P x {+,-}` commuting with a reversal would require an
  explicit cross-mode intertwining that the sketch does not provide. For two
  fixed-point-free involutions, the successor has two oriented cycles per
  alternating circuit, so `Fraw_M=2F_M` is plausible once the exact
  covariance-loop bijection is supplied. The new per-cycle profile removes
  the attempt-7 support-overlap defect: a length-`ell` nontrivial cycle uses
  two `b` positions, `ell-2` `c` positions, and contributes
  `Q=1+(ell-2)`. The inverse-record and P4 mechanisms are plausible at sketch
  granularity. The FACE identity is not: the exact visit-local endpoint has
  one covariance loop per physical mode, hence `F_local=3`, while
  `F_local=F+Q` would force `F<3` for every nontrivial profile although every
  diagram has at least one loop per mode. TOP also has no concrete
  circuit-rank source.
- Explicit-rate coverage: The sketch preserves all exposed structural,
  confidence, horizon, and norm variables, the no-log leading
  `sqrt(k)/r` term, and the full rank window. The P4 allocation has exactly
  `p^(b/2+c)=p^Q`. For negative `d`, the sharp rank-window conversion is
  `k^d<=r^(-d_-)`, so the sketch's positive `d_-` reserve is stronger than the
  target requires and has no producer. FACE already prevents the advertised
  P2/INC bridge from being consumed.
- Assumption and citation plausibility: The six stable setting assumptions
  remain the only primitive theorem assumptions. All topology, profile,
  moment, TF, deficit, and path facts are derived or explicitly conditional.
  No external theorem is cited for TOP. Calling the missing argument a
  circuit-rank/Euler calculation is not a source-adequate witness without an
  explicit rank object, quotient, and covariance-loop interface.

## Early Obstruction Audit

- Limiting-case stress: The new profile passes the old long-cycle support
  test if a global cycle partition of `P` exists. That existence is itself
  unsupported: a trace position belongs to two mode subsequences and can lie
  in two unrelated mode-wise Wick cycles. Quotienting `P x {+,-}` by a bar
  that swaps those copies gives one cycle per trace position only if the two
  mode matchings are conjugate under bar, which independent Wick pairings do
  not ensure. Conditional on such a partition, a cycle of length `ell`
  occupies exactly `ell` distinct positions, marks two as `b`, marks
  `ell-2` as `c`, and has `Q=ell-1=b/2+c`. The one-cycle boundary then also
  fails the claimed face direction.
  In the exact colored Wick expansion, the fully visit-local matching has one
  covariance loop in each nonempty physical mode, with an empty mode counted
  as one identity loop; therefore `F_local=3`. Every Wick diagram likewise
  has at least one loop or identity loop per mode, so `F>=3`. The explicitly
  allowed two-position nontrivial profile has `Q=1`, but FACE gives
  `F=F_local-Q=2`, a contradiction. A maximal cycle makes the contradiction
  larger. Thus either the profile-to-loop map is not the exact Wick-loop map,
  or peel face changes are signed rather than uniformly `+1` toward the local
  endpoint.
- Theorem-critical bridge support: Steps 001-003 and 005 have identifiable
  direct or standard sources. Step_004 has plausible mode-wise incidence
  objects but no legal producer for one global profile matching/cycle
  partition on `P`. Step_006 has a valid alternating-circuit counting idea,
  but no explicit incidence matrix, chain map, nullity identity, or root
  quotient proving `B-2<=sum_M(p-F_M)`. Step_007 now has a feasible finite
  position profile source, but its FACE output fails the exact local-loop
  boundary. Step_008 has a plausible `p^Q` record source independent of that
  face sign. Step_009 has neither a valid FACE input nor a producer for its
  stronger positive-`d_-` reserve. Consequently 009-012 and every
  initialization output depending on 21z remain unavailable.
- Exported-interface feasibility: `I_M`, its two node partitions, and the
  mode-wise flags provide plausible exact objects rather than surrogates. The
  global profile quotient does not: the sketch does not map the `4p` active
  mode occurrences to `P x {+,-}` in a way that makes bar an orientation
  reversal and intertwines both independent mode matchings.
  The export `Fraw_M=2F_M` still needs the exact flag-to-Wick-loop bijection.
  In particular, the visit-local specialization must map to exactly one loop
  per mode rather than merely to the number of alternating circuits of a
  different successor. TOP lacks a raw-incidence-to-rank relation. The
  per-cycle position profile exports `a+b+c=2p` and `Q=b/2+c` without overlap,
  and the P4 table allocates one `O(p)` record per unit of `Q`, but the claimed
  face-loss export is infeasible. The P2 export consequently has no valid raw-
  control-to-exponent path.
- Theorem-critical mechanism witness gate: Steps 001-003, 005, and 013-017
  have source-adequate obstruction-level witnesses. Step_004's mode-wise
  incidence witness is plausible, but its global profile-cycle witness is
  missing and is a sketch/interface defect. Step_006's loop orientation
  count is plausible, but its TOP witness is category-only and therefore a
  sketch/interface defect. Step_007's position partition and inverse record
  are plausible, but its uniform face-gain witness is source-incompatible and
  therefore a sketch/interface defect. Step_008's pure record count is
  step-local conditional on a repaired flag-level inverse. Step_009 is a
  sketch/interface defect because FACE is invalid and the extra negative-`d`
  reserve is unsupported.
- Entry-state trace stress: `C_path` remains an explicit conditional source;
  finite total variation gives Cauchy convergence and radius control before
  Taylor or loss is consumed. At zero path the state is stationary and the
  raw deficit is unchanged. For profile peeling, `Q` is finite and each
  deletion removes one insertion. At the first nontrivial state `Q=1`, the
  alleged transition to the local endpoint would require the total loop count
  to rise from `F=2` to `F_local=3`; the entry state `F=2` is impossible under
  the exact three-mode Wick-loop convention.
- Obligation locality classification: Steps 001-003 and 005 are `step-local`.
  Step_004 is a `sketch/interface defect` for the global profile producer,
  although its mode-wise bipartite incidence construction remains plausible.
  Step_006 is a `sketch/interface defect` until the covariance-loop bijection
  and explicit TOP rank certificate are supplied. Step_007 is a
  `sketch/interface defect`: its disjoint profile is feasible but its FACE
  output is not. Step_008 is a `sketch/interface defect` until a legal global
  profile producer exists; its finite record arithmetic is otherwise local.
  Step_009 is a `sketch/interface defect` because
  its face input is invalid and its requested reserve has no source.
  Steps 010-012 are locally routine but blocked by 006/009. Steps 013-017 are
  step-local conditional assembly. No current defect requires a theorem-
  contract change.
- Noncircular closure gate: The path argument is noncircular because
  `C_path` is explicitly conditional and precedes all all-time conclusions.
  Profile reconstruction is noncircular because `Q` strictly decreases.
  FACE, TOP, and P2 are not circular; FACE is convention-inconsistent, while
  TOP and P2 lack valid producer/control relations. Downstream multinomial,
  TF, and event-union steps cannot produce any of these interfaces.
- Mechanism-source and boundary stress: For each alternating circuit of
  `rho_M union pi_M`, `rho_M o pi_M` has two orientation cycles, including
  the coincident-matching two-flag case. This algebra does not by itself prove
  that the cycles equal the covariance loops counted by `F`, nor does it
  imply TOP. Nor does mode-wise circuit algebra create one global cycle
  partition of `P`: each position carries two mode occurrences, and no
  reversal conjugacy between their independent pairings is supplied. The
  two-b/rest-c position allocation handles `Q=0`, a two-
  position cycle, long cycles, and a maximal cycle, but the stated face sign
  fails already at `Q=1`. For the rank window, `d<0` supplies the favorable
  factor `r^(-d_-)`; charging `+d_-` is an additional structural demand, not
  the direct exponent conversion.
- Generated-output flow: The flow table names legal producers, consumers,
  final uses, dependency paths, and some blocker states, but it incorrectly
  marks the global profile/face output as unblocked. That output has neither a
  cross-mode profile producer nor a valid FACE relation. TOP, P2/P3, 21z, TF,
  `W_0`, deficit, and initialization confidence are also pending. The next
  sketch must propagate the step_004/007 blockers to every consumer.
- Source-to-claim adequacy: Alternating-circuit algebra is adequate for
  `#cycles(rho_M o pi_M)=2|H_M|`; an explicit covariance-loop bijection is
  still required to identify that number with the Wick exponent. A generic
  Euler/circuit-rank label is not adequate for the lower/rank claim TOP.
  A cardinality match `|D_prof|=sum_M|S_M|=4p` is not by itself a source for
  a reversal-paired cycle partition: the map must preserve mode identity,
  both mode-wise involutions, and independent Wick choices. Exact visit-local
  Wick contraction gives `F_local=3`, so it is not an
  adequate source for `F_local=F+Q` with `Q>0`. The inequality
  `k^d<=r^((5/4)d_++d_-)` is true but too lossy; the direct same-window source
  is `k^d<=r^((5/4)d_+-d_-)`, and any stronger reserve needs a separate
  incidence mechanism.
- Residual-to-target adequacy: The normalized-to-raw Gram identity, tangent-
  span equality, Gaussian conjugation, Taylor remainder, and physical
  projection target the exact consumed objects. The profile quotient has not
  passed object-target compatibility because it identifies two active
  mode-occurrences at each trace position without a proved same-cycle bridge.
  The other current defects are missing or false combinatorial interfaces,
  not analytic residuals.
- Baseline invariance audit: Passed. Certificate normalization leaves the raw
  deficit unchanged. At zero path, `theta_infinity=theta_0`, the Taylor
  remainder vanishes, `W_0` retains the full coefficient deficit, and the
  exact mode-span projection transfers it to physical loss. No finite-scope,
  stopped, or remainder-only surrogate replaces the inherited conclusion.
- Scope-accumulation compatibility: Path increments are summable under the
  explicit conditional budget. The profile defect is a finite integer `Q`
  with one-step decrement, and the repaired `b/c` allocation uses every cycle
  position once only after a legal global cycle partition is produced. P4
  uses one finite record per `Q` unit under that same unresolved producer. The accumulated face
  claim is unsupported because the one-step sign contradicts the exact local
  endpoint. TOP and P2 are fixed-order structural claims; all three interfaces
  must be repaired before the finite profile sum is consumed.
- Scope and dependence consistency: The exact rank window, fixed
  `kappa,q`, dimension lower bound, conditional probability mode, all-time
  path mode, raw normalization, corrected `C_TF`, and hidden-constant
  restrictions agree with setting.md. Restoring a signed or one-sided face
  relation and using the sharp negative-`d` exponent preserve, rather than
  weaken, the full rank window.
- Generated-condition provenance: Every event and combinatorial certificate
  is intended as derived or explicitly conditional. The sketch honestly
  records TOP and INC as blockers, but incorrectly treats the global profile
  partition and FACE output as already source-feasible. No generated condition
  is promoted into a primitive theorem assumption.
- Citation and tool applicability: Gaussian, Wick, projection, Taylor, and
  finite matching tools are standard once instantiated. TOP has no cited or
  current-notation theorem. The next sketch must either give an explicit
  bipartite rank/nullity derivation or cite an exact result with object
  mapping, root convention, hypotheses, and conclusion interface.
- Same-setting repair plausibility: Replace uniform FACE by the exact signed
  switch identity or by a one-sided face inequality adequate for P2, after
  checking the visit-local endpoint. Before that, replace the unsupported
  global profile quotient by mode-indexed profile slots or prove an exact
  cross-mode coupling that legitimately compresses `4p` active occurrences
  to `2p` positions. Use the sharp negative-`d` exponent or split the two
  signs, and supply TOP by an explicit bipartite rank bridge. These repairs do
  not require a new primitive assumption or a weaker theorem, so `IDEA_FAIL`
  is not justified.
- Target-preserving bridge-repair gate: Preserve the bipartite locality
  repair, the intended `Fraw_M=2F_M` convention, the goal of a disjoint
  profile/P4 allocation, exact theorem, rank window, conditional mode, raw
  target, and physical conclusion. Revise the global profile producer, loop
  bijection, FACE relation, TOP bridge, and P2 reserve; do not preserve the
  unsupported cross-mode quotient or false uniform face sign.
- High-risk obligation classes: Active classes are exact flag/Wick-loop
  bijection, bipartite circuit rank, root quotient, per-cycle FACE identity,
  inverse-record injectivity, P4 constants, two-sided exponent conversion,
  no-log moment specialization, generated-output flow, and all-time
  conditional closure. The profile support, baseline, and raw-to-physical
  interfaces pass; the profile-to-face interface does not.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001: E_cond | factor conditioning | Gaussian perturbation and Weyl | primitive base, dimension, smoothing IDs | exact singular-value claim | realized Euclidean convention | perturbation below half margin | base margin exports factor bounds | exact factors | one finite smoothing defect | primitives -> 001 | 001 -> 002,003,014,016 | zero smoothing and lower margin pass | step-local | None |
| step_002: Gram, size, raw bridge | initialization geometry | Gaussianization and concentration | 001 plus dimension, rank, initialization IDs | exact normalized/raw claims | G_raw=(r/n)^2 G_norm; equal raw span | Gram window and size threshold | covariance exports exact events | exact scale and span | finite initialization failure | 001 -> 002 | 002 -> 003,011,012,013 | maximal n and k included | step-local | None |
| step_003: quotient/TC/radial package | quotient geometry and moment input | quotient algebra, Bernstein, radial conjugation | 001,002 and primitive initialization | exact operator and conjugation claims | raw quotient and trace-one Gaussian convention | spectrum, TC scale, radial factor 4 | exports E_G_tilde and local events | exact conjugation | fixed-order input | 001,002 -> 003 | 003 -> 004,005,011 | isotropic and one-color branches listed | step-local | None |
| step_004: bipartite flags/global profile | exact diagram, locality, and profile source | mode-wise I_M plus proposed D_prof quotient | direct construction from 003 | mode locality matches; one global cycle partition does not | each position has two active modes; bar intertwining is absent | need a bijection from 4p active occurrences to D_prof preserving both independent mode matchings | mode-wise flags are exact; compression to 2p profile positions is unsupported | unresolved cross-mode object bridge | finite cardinality but incompatible cycle memberships | 003 -> 004 | 004 -> 005,006,007; profile pending | sum_M card(S_M)=4p versus one cycle membership per P position | sketch/interface defect | /proof-sketch |
| step_005: local sector | exact leading moment sector | second moment and local matching | 004 restricted output | exact restricted sub-sum | Wick loop convention inherited from 004 | local sqrt(k)/r estimate | exports only the local sector | exact trace sub-sum | cross-visit terms remain explicit | 004 -> 005 | 005 -> 008,009 | p=1 and all-distinct pass | step-local | None |
| step_006: loop bijection and TOP | structural loop/rank inequality | alternating I_M circuits and proposed Euler rank | direct incidence construction from 004 | orientation count matches abstract circuits; Wick-loop and TOP sources absent | Fraw=2F convention plausible only after local-endpoint compatibility | need loop bijection, F_local=3 check, and B-2<=sum(p-F_M) rank relation | exact flags exist, but no object map or rank quotient exports the targets | exact loops only if bijection holds | loop-convention, root, rank, and boundary defects | 004 -> 006 without target assumptions | 006 -> 007,009; pending | visit-local endpoint and general B/high-degree unresolved | sketch/interface defect | /proof-sketch |
| step_007: per-cycle profile/FACE | reversible position partition and face relation | proposed global cycles and inverse insertion | planned construction from 004,006 | two-b/rest-c algebra matches Q if cycles exist; uniform face sign fails | global P-cycle source and covariance-loop endpoint both mismatched | Q=b/2+c conditionally, but F_local=F+Q contradicts F_local=3 and F>=3 for Q>0 | O(p) records are plausible only after a legal profile producer | unresolved cross-mode and loop-transfer bridges | finite Q, but producer and accumulated face sign unsupported | 004,006 -> 007 | 007 -> 008,009; blocked | two mode memberships per position; Q=1 forces impossible F=2 | sketch/interface defect | /proof-sketch |
| step_008: P4 | multiplicity and no-log rate | canonical root/orientation/insertion records | 005 and planned 007 plus rank window | record arithmetic matches p^Q; full-diagram source missing | profile convention not yet compatible with independent mode matchings | desired (8p)^(b/2)(16p)^c with Q=b/2+c | no p on a is plausible, but no legal global profile code exists | exact count only after profile bridge | finite constants local; producer defect upstream | 004,007 -> 008 | 008 -> 009,010; blocked | Q=0 local; nontrivial cycles lack legal global source | sketch/interface defect | /proof-sketch |
| step_009: P2/P3 | face/exponent absorption | proposed FACE, TOP excess, rank-window conversion | 005-008 and rank window | FACE source fails; positive d matches; negative-d extra reserve unsupported | exact r<k<=r^(5/4) convention | direct exponent is 5d_+/4-d_-; stronger +d_- needs a new incidence reserve | INC has no valid FACE input or two-sign producer | exact weighted trace | fixed-order face/sign and reserve defects | 005,006,007,008 -> 009 | 009 -> 010; blocked | Q=1 breaks FACE; d<0 must use favorable rank factor | sketch/interface defect | /proof-sketch |
| step_010: ENUM/21z | full fixed-order moment | accepted profiles and multinomial theorem | planned outputs 003-009 | exact target conditional upstream | same E_G_tilde convention | finite multinomial sum | cannot export before TOP and corrected P2 | exact quotient moment | no new defect after accepted inputs | 009 -> 010 | 010 -> 011; blocked | p0=ceil(31 log r) listed | step-local | /proof-sketch |
| step_011: TF, W_0, deficit | frame-to-witness certificate | 21z, Markov, radial, TC, projection | 003 and planned 010 | exact raw bridge | quotient and projection conventions match | corrected C_TF and factor 16 | requires 21z at target scale | exact raw target | finite probability union | 003,010 -> 011 | 011 -> 012,015; pending | threshold branch downstream | step-local | /proof-sketch |
| step_012: initialization probability | generated confidence closure | union and tower | 001,002,011 and joint law | exact event intersection | joint conditional law | total failure r^(-10) | constituent events required | exact event | finite union | 001,002,011 -> 012 | 012 -> 013,017; pending | all allowed n,k stated | step-local | /proof-sketch |
| step_013: path limit/radius | all-time conditional convergence | finite variation and Cauchy | 002,012, gd-step, E_size, C_path | exact trajectory claim | d_bal consumed directly | E_path gives limit and radius 3 | path and size export Taylor domain | same trajectory | summable increments | 002,012 plus C_path -> 013 | 013 -> 014,015,016,017 | zero path passes | step-local | None |
| step_014: Taylor remainder | nonlinear raw bridge | trilinearity and left inverses | 001,013 | exact second-order claim | raw coefficient convention | C_CP d_bal squared | radius 3 and endpoint available | exact raw residual | one endpoint term | 001,013 -> 014 | 014 -> 015 | zero displacement passes | step-local | None |
| step_015: coefficient margin | baseline obstruction preservation | W_0 orthogonality and Taylor absorption | 011,013,014 | exact raw margin | raw span, W_0, D_r | C_CP E_star^2 below delta_0/16 | witness and endpoint error export margin | exact target residual | one absorbed error | 011,013,014 -> 015 | 015 -> 016 | zero path preserves full deficit | step-local | None |
| step_016: physical floor | same-target loss transfer | projection and singular values | 001,015 | exact relative loss | realized factor/Frobenius convention | singular product and nonnegative discard | exact projection identity | same T and S | one-time transfer | 001,015 -> 016 | 016 -> 017 | lower singular boundary passes | step-local | None |
| step_017: final probability | event inclusion and conditioning | probability identity | 012,013,016 and joint law | exact conditional statement | same event mode | retain conditional path factor | final factor is not lower-bounded | actual F_plus event | conditional all-time scope | 012,013,016 -> 017 | 017 -> theorem | zero conditional factor allowed | step-local | None |
| C_path and baseline | conditional scope and zero-path recovery | finite path certificate | setting plus 013-016 | exact baseline | raw target, metric, and witness unchanged | finite variation; zero path has zero error | consumed only conditionally | same raw object | summable increments | C_path -> 013 -> 014 -> 015 -> 016 | 013-016 -> 017 | stationary entry preserves full conclusion | step-local | None |

## Blocking Issues

1. Step_004 does not produce the claimed global profile cycles. The exact
   trace expansion has `2p` trace positions but `sum_M |S_M|=4p` active
   mode-occurrences, two at every position. Their mode-wise Wick matchings are
   independent. A set `D_prof=P x {+,-}` has the right cardinality, but the
   sketch does not define a mode-preserving bijection for which bar is an
   orientation reversal and both mode matchings commute with bar. Consequently
   one trace position can belong to two unrelated mode-wise cycles and has no
   unique global profile cycle. Smallest repair: use mode-indexed profile slots
   and prove a target-adequate compression to `2p` charges, or exhibit the
   exact cross-mode intertwining that makes the proposed quotient legal.
2. Step_007's FACE identity is incompatible with the exact Wick-loop
   convention. At the fully visit-local endpoint, each physical mode has one
   covariance loop, with an empty mode counted as one identity loop, so
   `F_local=3`. Every diagram has at least one loop or identity loop per mode,
   hence `F>=3`. The explicitly allowed two-position nontrivial cycle has
   `Q=1`, but `F_local=F+Q` forces `F=2`. Smallest repair: keep the disjoint
   two-b/rest-c position profile and inverse, but replace uniform `+1` face
   gain by the exact signed switch identity or a one-sided face inequality
   that is compatible with the local endpoint and sufficient for P2.
3. Step_006 still has no source-adequate Wick-loop or TOP certificate. The bipartite object
   fixes the old locality mismatch, and the successor-cycle identity explains
   two orientations per alternating circuit, but the sketch does not define
   why those abstract circuits equal the covariance loops in the moment
   exponent, including the visit-local `F_local=3` specialization. It also
   lacks a rank matrix or chain map, root/all-ones quotient, and nullity
   calculation producing `B-2`. A future
   "circuit-rank/Euler argument" is not itself a mechanism source. Smallest
   repair: separate the flag-to-Wick-loop lemma from the TOP rank lemma and
   give the exact objects, dimensions, kernels, image relation, local endpoint,
   and boundary discharge before exporting `F` or `xi>=0`.
4. Step_009's advertised "correct two-sided" conversion is not the direct
   rank-window algebra. With `d_-=max(-d,0)`, the exact window gives
   `k^d<=r^((5/4)d_+-d_-)`; the displayed `+d_-` bound is valid but loses the
   favorable negative-`d` factor and requires an additional reserve not
   produced by TOP or FACE. Smallest repair: state the sharp signed P2 target,
   or split the two signs and explicitly prove any stronger incidence reserve,
   after FACE is repaired.
5. Steps 004, 006, 007, and 009 are each too broad for one proof worker under
   the user's workload rule. Step_004 combines the exact colored expansion,
   two mode-local incidence systems, and an unsupported cross-mode profile
   quotient. Step_006 combines flag/Wick-loop identification, orientation
   pairing, root cuts, TOP, and all boundary branches. Step_007
   combines the valid profile partition/inverse with the invalid face law.
   Step_009 combines the hard incidence reserve, rank-window conversion, P3, and
   per-profile ENUM. Smallest repair: split each hard structural producer from
   its routine algebraic consumer while keeping the same theorem and
   downstream interfaces. The current 001-003 reduction need not be recombined.
6. Steps 008-012 cannot legally consume P4, 21z, TF, `W_0`, deficit, or the
   initialization probability until blockers 1-4 are repaired and strictly
   reviewed. Steps 013-017 remain valid conditional assembly and must not be
   weakened or promoted to unconditional progress.

## Required Repair Bundle

1. Preserve the exact theorem, all 17 current outputs or their explicitly
   split replacements, the full rank window, raw normalization, corrected
   `C_TF`, conditional path factor, baseline recovery, and physical-loss
   conclusion. Keep the bipartite locality repair and the two-b/rest-c
   allocation idea, but do not treat the global profile partition as repaired.
2. Repair step_004's object map before defining profiles. Record the disjoint
   union of the mode-occurrence sets of total size `4p`, the two active modes
   at each trace position, and both independent mode-wise Wick involutions.
   Either keep mode-indexed profile slots and prove how their charges compress
   to the required `2p` exponents, or define and prove an exact bar-equivariant
   bijection to `P x {+,-}`. Cardinality alone is not sufficient.
3. Split step_006 into a loop-interface result and a TOP result, either as new
   stable steps or as separately reviewable outputs. The first must define
   the flag-to-covariance-loop bijection, prove `Fraw_M=2F_M`, and instantiate
   the visit-local endpoint as exactly one loop per mode, with root, empty,
   and `p=1` conventions. The second must give the explicit bipartite
   incidence/rank objects and prove `B-2<=sum_M(p-F_M)` and `xi>=0` without
   assuming either conclusion.
4. Preserve the intended two-b/rest-c allocation only after step_004 supplies
   a legal cycle partition. State the flag-level
   deletion and inverse insertion precisely enough to verify group locality,
   record recovery, and the actual signed change of the exact covariance-loop
   count. Replace `F_local=F+Q` by a correct signed sum or target-adequate
   one-sided inequality. Preserve `Q=b/2+c`; do not return to overlapping
   support pairs or unsupported excess atoms.
5. Preserve the P4 target, but tie each `8p` root record and `16p` insertion
   record to the precise inverse fields. Derive the constants only after the
   injective code is fixed, and keep every `p`-dependent choice on `b/c`
   positions.
6. Replace the negative-`d` rank conversion by the sharp identity
   `k^d<=r^((5/4)d_+-d_-)` under `r<k<=r^(5/4)`, unless a stronger reserve is
   independently proved. State the revised P2/INC target, prove it for both
   signs of `d`, and discharge `Q=0`, one nontrivial cycle, maximal cycle,
   repeated labels, and maximal `k`.
7. Split the repaired profile, face, and incidence producers from the routine P3 and ENUM algebra
   so a failed hard inequality does not consume excessive proof work in one
   step. Keep downstream outputs blocked until the Wick-loop, FACE, TOP, and
   revised P2 producers are accepted by a fresh strict sketch review.
8. Keep the generated-output table honest. Mark the global profile, FACE, P4,
   P2/P3, and every downstream consumer blocked until their producer paths are
   accepted. Do not add a primitive assumption,
   narrow the rank window, alter the algorithm or metric, lower-bound the
   conditional path probability, normalize the raw target, or weaken the
   positive-loss conclusion.

## Review Rationale

`REVISE_SKETCH` with score 5 is the deepest required change. Attempt 8 makes
material target-preserving progress: the bipartite incidence object resolves
the old node-locality mismatch, the alternating-circuit convention makes
`Fraw_M=2F_M` plausible, and the two-b/rest-c allocation removes the old
within-cycle support overlap. It is not ready for proof workers because no
legal source maps the two independent mode occurrences at each trace position
to one global cycle partition of `P`, the profile-to-face identity contradicts
the exact visit-local loop endpoint, TOP lacks a concrete rank producer, and
the positive `d_-` reserve is an unsupported strengthening of the actual
rank-window algebra. These defects can be repaired within the same setting by
a mode-compatible profile bridge, an exact Wick-loop bridge, a signed or one-
sided face relation, an explicit TOP certificate, and the sharp signed rank-
window conversion. `IDEA_FAIL` is therefore not justified.
