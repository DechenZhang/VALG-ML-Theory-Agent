# Proof Sketch Review

## Reviewed Sketch Identity

- Sketch attempt: 9
- Review target: perspective_3/idea_3/proof_sketch.md
- Trigger: attempt 8 was routed to /proof-sketch because one global profile
  could not encode `4p` independent mode occurrences, the uniform FACE sign
  contradicted `F_loc=3`, TOP lacked a rank source, and the negative-`d`
  reserve had the wrong direct rank-window sign.
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

- Goal alignment: The exact setting.md theorem is preserved. The sketch keeps
  simultaneous balanced GD, every `r < k <= floor(r^(5/4))`, the raw `D_r`,
  `Dhat_0`, tangent deficit, `W_0`, coefficient residual, corrected `C_TF`,
  physical Frobenius loss, and the exact conditional factor
  `P(C_path | E_init_norm)`. It does not lower-bound that factor.
- Dependency audit: The sketch-step table contains exactly the 17 stable IDs
  `step_001` through `step_017`. The reduction `001 -> 002 -> 003 -> 004`,
  structural branches `004 -> 005`, `004 -> 006 -> 007`, and
  `004,006 -> 008`, merge at `004,005,006,007,008 -> 009`, followed by
  `008,009 -> 010` and the downstream chain `010 -> 011 -> ... -> 017`.
  Every explicit dependency points to an earlier ID, so the DAG is acyclic.
- Workload granularity: Attempts 8-9 correctly split profile construction,
  signed FACE, P4, and occurrence compression. Step_004 is still too broad for
  one proof worker: it combines the full colored trace/flag construction,
  exact Wick-loop bijection, orientation convention, empty/root boundaries,
  `F_loc=3`, the exact weight, and the quantitative local leading sector.
  Step_009 also combines the hard new incidence reserve with routine P3
  algebra. These outputs should be separately reviewable before proof work.
- High-risk coverage: The `4p` disjoint mode-occurrence object repairs the
  prior cross-mode profile defect. Mode-wise `rho_M union pi_M` cycles now
  partition exact occurrences, the A/B/C profile has
  `A+B+C=4p` and `Q=B/2+C`, and signed FACE correctly telescopes from
  `F_loc=3`. P4 has the right `p^Q` allocation, and the sharp rank-window
  exponent is now `(5/4)d_+-d_-`. The TOP rank object is dimensionally
  impossible on the stated common domain in an admitted large-`B_K` branch,
  and the sharp INC reserve still has no concrete mechanism source.
- Explicit-rate coverage: All structural, confidence, horizon, and norm
  variables remain exposed with the correct hidden-constant restrictions.
  The occurrence factors `sqrt(x),y,z` and the nine-pair compression preserve
  exactly `2p` public factors and do not add a logarithmic multiplier to
  `sqrt(k)/r`, conditional on accepted P4/P3 inputs.
- Assumption and citation plausibility: The six stable setting assumptions are
  the only primitive theorem assumptions. All flag, loop, rank, profile,
  moment, TF, deficit, and path facts remain derived or explicitly
  conditional. No theorem-critical external result is cited for TOP or INC;
  both therefore require complete current-notation mechanism interfaces.

## Early Obstruction Audit

- Limiting-case stress: The `4p` occurrence count, `Q=0`, one two-occurrence
  mode cycle, long cycles, repeated labels, empty modes, `p=1`, and both FACE
  signs are now explicitly represented. The TOP rank source fails a basic
  dimension stress. Step_005 sets `U=F_2^p` and
  `Q_K:U->V_root` with `rank(Q_K)=B_K-2`. Hence necessarily
  `B_K-2<=p`. The stated diagram object only gives a connected loopless
  Eulerian graph with `2p` edges and explicitly includes the degree-two/all-
  distinct branch; the simple `2p`-cycle has `B_K=2p`. For `p>=3`, the target
  rank `2p-2` exceeds `dim(U)=p`. If that branch is claimed impossible, the
  sketch must prove the missing restriction `B_K<=p+2`; it currently does
  not.
- Theorem-critical bridge support: Steps 001-003 have standard/direct sources.
  Step_004 now names the exact occurrence and half-flag objects and a plausible
  Wick-loop construction, but its empty-mode identity loop is outside the
  displayed successor-cycle equality unless a formal augmentation or
  piecewise convention is stated. Step_005's proposed same-domain rank
  factorization cannot support general `B_K`. Steps 006-008 have plausible
  finite matching/profile/count sources. Step_009 merely rewrites the desired
  reserve using TOP and FACE; neither source supplies the required relation
  between `v,A,C` and the incidence degrees. Step_010 is routine conditional
  compression once P4/P3 exist.
- Exported-interface feasibility: The exact `O`, `D_M`, `tau_M`, `rho_M`, and
  `pi_M` objects provide a feasible raw source for nonempty-mode Wick loops.
  The exported TOP interface is infeasible on the common `p`-dimensional
  domain. A direct-sum or mode-dependent domain could have enough rank, but it
  is not the current interface. The A/B/C profile, signed face sum, and P4
  record budget are feasible at obstruction level. INC lacks a raw-control-
  to-reserve inequality, so P3 and 21z remain unavailable.
- Theorem-critical mechanism witness gate: Steps 001-003 and 013-017 have
  source-adequate witnesses. Step_004's nonempty loop mechanism is plausible,
  but its full combined output has an empty-mode convention gap and excessive
  workload. Step_005 is a sketch/interface defect because its rank mechanism
  cannot realize the claimed output in the large-`B_K` branch. Steps 006-008
  are step-local conditional on a repaired loop interface. Step_009 is a
  sketch/interface defect because no label/incidence source drives INC.
  Step_010 is step-local conditional on accepted 008-009.
- Entry-state trace stress: `C_path` remains an explicit conditional source;
  finite variation precedes convergence, Taylor, and loss. Zero path preserves
  the raw deficit exactly. For the matching process, `Q=0` gives
  `pi_M=rho_M` and `F=3`; each inverse insertion changes the exact circuit
  count by `+1` or `-1`, so the signed FACE telescoping is compatible with the
  local endpoint. No uniform face direction is assumed.
- Obligation locality classification: Steps 001-003 are `step-local`.
  Step_004 is a `sketch/interface defect` until its loop-only and local-sector
  outputs are separated and the empty-mode convention is exact. Step_005 is a
  `sketch/interface defect`. Steps 006-008 are `step-local` conditional on the
  repaired 004 interface. Step_009 is a `sketch/interface defect`. Steps
  010-012 are locally routine but blocked upstream. Steps 013-017 are
  step-local conditional assembly. No issue yet requires a theorem-contract
  change.
- Noncircular closure gate: The path closure is noncircular because
  `C_path` is conditional and consumed before all-time conclusions. The
  profile inverse is noncircular because `Q` decreases by one, and FACE is a
  finite signed telescoping identity. TOP and INC are not circular; their
  problem is missing or infeasible structural producers. Downstream
  compression, Markov, and event union cannot create those sources.
- Mechanism-source and boundary stress: For nonempty modes, a union of two
  fixed-point-free involutions supports paired successor orientations and a
  two-pair switch changes circuit count by exactly one. An empty mode has no
  flags, so `#cycles(tau_M o pi_M)=2F_M` cannot simultaneously hold with its
  declared identity contribution `F_M=1` without a separate formal identity
  circuit. For TOP, a sum of three maps on one common domain still has rank at
  most `p`; it cannot certify `B_K-2>p`. A direct sum of mode transition spaces
  or another higher-dimensional incidence source is required.
- Generated-output flow: The producer-consumer paths are acyclic and the
  sketch correctly marks TOP, INC/P3, 21z, TF, deficit, and initialization
  confidence blocked. It marks the step_004 loop package unblocked despite the
  empty-mode/interface and workload defects; the next sketch must split or
  block those outputs before 005-009 consume them.
- Source-to-claim adequacy: Wick--Isserlis and exact flag incidence are
  adequate for a current-notation loop bijection. A map from `F_2^p` is not an
  adequate source for rank `B_K-2` when `B_K-2>p`; naming kernels and a future
  factorization does not repair the dimension contradiction. TOP plus signed
  FACE only gives the two displayed formulas for `R`; it does not control
  `d=v-1-A/4` or the negative `C/2` term. INC needs a new explicit incidence,
  label-collision, or cycle-degree inequality.
- Residual-to-target adequacy: The normalized-to-raw Gram identity, exact
  mode-occurrence expansion, signed loop count, Taylor remainder, and physical
  projection all target the consumed objects rather than surrogates. The
  current defects are structural interface failures, not uncontrolled
  analytic residuals.
- Baseline invariance audit: Passed. Certificate normalization leaves the raw
  tangent deficit unchanged. At zero path, `theta_infinity=theta_0`, the
  Taylor remainder vanishes, `W_0` retains the complete coefficient deficit,
  and exact projection transfers it to physical loss. The theorem is not
  replaced by a stopped, finite-scope, or remainder-only surrogate.
- Scope-accumulation compatibility: The path has a finite conditional
  variation budget. The mode profile has finite integer `Q`, its inverse has
  exactly `Q` records, and FACE is a signed finite telescoping sum with
  `abs(sum epsilon)<=Q`. P4 has one `O(p)` record per `Q` unit. TOP and INC are
  fixed-order structural claims and must be repaired before finite profile
  summation.
- Scope and dependence consistency: The exact rank window, fixed
  `kappa,q`, dimension regime, conditional probability mode, all-time path
  mode, raw normalization, corrected `C_TF`, and hidden-constant dependence
  agree with setting.md. The sharp negative-`d` factor preserves the full
  rank window.
- Generated-condition provenance: Every event, loop certificate, profile,
  reserve, and count is intended as derived or explicitly conditional. TOP
  and INC are honestly listed as blockers. No generated condition is moved
  into the primitive theorem assumptions.
- Citation and tool applicability: Gaussian, Wick, finite matching, Taylor,
  projection, and elementary AM-GM tools are standard once instantiated. TOP
  and INC have no theorem-critical citation. If an external circuit-nullity
  or incidence theorem is used, the next sketch must give source identity,
  exact object mapping, root convention, hypotheses, and output interface.
- Same-setting repair plausibility: Replace the common TOP domain by a direct
  sum or other incidence space large enough to realize `B_K-2`, and prove the
  corresponding kernel/factorization identities. Add an explicit
  label/incidence inequality for INC, then keep the sharp signed rank-window
  conversion. Split step_004 and the hard portion of step_009. These repairs
  preserve the exact theorem and require no new primitive assumption, so
  `IDEA_FAIL` is not justified.
- Target-preserving bridge-repair gate: Preserve the `4p` mode-occurrence
  representation, mode-wise A/B/C profiles, signed FACE, P4 goal, nine-pair
  compression, exact theorem, rank window, conditional mode, raw target, and
  physical loss. Revise the step_004 boundary/workload interface, TOP rank
  domain, and INC producer only.
- High-risk obligation classes: Active classes are exact flag/Wick-loop
  identity, empty/root conventions, bipartite rank/nullity, mode-cycle inverse,
  signed face telescoping, P4 injectivity/constants, sharp incidence reserve,
  occurrence compression, explicit no-log dependence, generated-output flow,
  and all-time conditional closure.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001: E_cond | factor conditioning | Gaussian perturbation and Weyl | primitive base, dimension, smoothing IDs | exact singular-value claim | realized Euclidean convention | perturbation below half margin | base margin exports factor bounds | exact factors | one finite smoothing defect | primitives -> 001 | 001 -> 002,003,014,016 | zero smoothing and lower margin pass | step-local | None |
| step_002: Gram, size, raw bridge | initialization geometry | Gaussianization and concentration | 001 plus dimension, rank, initialization IDs | exact normalized/raw claims | G_raw=(r/n)^2 G_norm; equal raw span | Gram window and size threshold | covariance exports exact events | exact scale and span | finite initialization failure | 001 -> 002 | 002 -> 003,011,012,013 | maximal n and k included | step-local | None |
| step_003: quotient/TC/radial | quotient geometry and moment input | quotient algebra, Bernstein, radial conjugation | 001,002 and primitive initialization | exact operator and conjugation claims | raw quotient and trace-one Gaussian convention | spectrum, TC scale, radial factor 4 | exports E_G_tilde and local events | exact conjugation | fixed-order input | 001,002 -> 003 | 003 -> 004,005,011 | isotropic and one-color branches listed | step-local | None |
| step_004: flags/loops/local sector | exact loop exponent and leading source | O, D_M, tau, rho, pi, Wick expansion | direct construction from 003 | nonempty loop source matches; combined output too broad | empty identity loop is outside raw successor-cycle equality | loop bijection, Fraw=2F, F_loc=3, exact weight, local sector | exact flags exist; empty augmentation and quantitative split missing | exact nonempty objects | finite boundary and workload defects | 003 -> 004 | 004 -> 005,006,007,008,009; pending | empty mode and all-local branches need piecewise equality | sketch/interface defect | /proof-sketch |
| step_005: TOP rank | structural loop/incidence inequality | proposed J_M,Q_K,L_M,N_M maps | direct binary construction from 004 | target claim right; common-domain source impossible for large B_K | U has dimension p while target rank may exceed p | require rank(Q_K)=B_K-2 and factorization | no feasible raw-control-to-rank path on stated U | exact loops if 004 accepted | fixed-order dimension and root defects | 004 -> 005 without TOP assumption | 005 -> 009; blocked | B_K=2p gives target rank 2p-2>p for p>=3 | sketch/interface defect | /proof-sketch |
| step_006: A/B/C profile | reversible mode-cycle partition | rho_M/pi_M cycles on O_M | direct finite construction from 004 | exact occurrence partition and Q source | modes remain separate | A+B+C=4p; Q=B/2+C; inverse lowers Q | one record per mode-cycle root/insertion | exact occurrences | finite Q decreases by one | 004 -> 006 | 006 -> 007,008,009 | Q=0, one cycle, long cycle pass | step-local | None |
| step_007: signed FACE | exact loop telescoping | two-pair switches through 004 loop map | direct finite construction from 004,006 | correct signed claim class | exact covariance-loop convention | F=3+sum epsilon; epsilon in {-1,+1} | exact switch records and endpoint | exact F | signed finite sum bounded by Q | 004,006 -> 007 | 007 -> 009 | Q=0 gives F=3; first switch compatible | step-local | None |
| step_008: P4 | multiplicity and no-log allocation | mode roots and inverse insertion records | 004,006 finite count | record budget matches p^Q | mode-preserving profile convention | multinomial(4p;A,B,C)(8p)^(B/2)(16p)^C | no p-dependent record on A occurrences | exact count | finite constants and injection proof local | 004,006 -> 008 | 008 -> 009,010 | Q=0 and maximal mode cycle listed | step-local | None |
| step_009: sharp P2/P3 | incidence and face/exponent absorption | TOP, FACE, P4, proposed degree/group relation | 004-008 and rank window | rank algebra matches; structural reserve source absent | exact r<k<=r^(5/4) convention | need B_K-p-1+xi-C/2>=5d_+/4-d_- | no raw incidence-to-d/C dominance relation | exact weighted trace | fixed-order reserve unsupported | 004-008 -> 009 | 009 -> 010; blocked | both d signs and maximal C unresolved | sketch/interface defect | /proof-sketch |
| step_010: occurrence compression/21z | public moment specialization | two active occurrences and six pair inequalities | 008,009 plus p0 regime | exact 4p-to-2p factor conversion | x,y,z conventions match public rate | each pair <=x+y+z; at most nine types | constants must be folded into pair table | exact moment after summation | finite profile sum | 008,009 -> 010 | 010 -> 011; blocked upstream | x,y,z in [0,1], y^2=z pass | step-local | /proof-sketch |
| step_011: TF, W_0, deficit | frame-to-witness certificate | 21z, Markov, radial, TC, projection | 003 and planned 010 | exact raw bridge | quotient and projection conventions match | corrected C_TF and factor 16 | requires 21z at target scale | exact raw target | finite probability union | 003,010 -> 011 | 011 -> 012,015; pending | threshold branch downstream | step-local | /proof-sketch |
| step_012: initialization probability | generated confidence closure | union and tower | 001,002,011 and joint law | exact event intersection | joint conditional law | total failure r^(-10) | constituent events required | exact event | finite union | 001,002,011 -> 012 | 012 -> 013,017; pending | all allowed n,k stated | step-local | /proof-sketch |
| step_013: path limit/radius | all-time conditional convergence | finite variation and Cauchy | 002,012, gd-step, E_size, C_path | exact trajectory claim | d_bal consumed directly | E_path gives limit and radius 3 | path and size export Taylor domain | same trajectory | summable increments | 002,012 plus C_path -> 013 | 013 -> 014,015,016,017 | zero path passes | step-local | None |
| step_014: Taylor remainder | nonlinear raw bridge | trilinearity and left inverses | 001,013 | exact second-order claim | raw coefficient convention | C_CP d_bal squared | radius 3 and endpoint available | exact raw residual | one endpoint term | 001,013 -> 014 | 014 -> 015 | zero displacement passes | step-local | None |
| step_015: coefficient margin | baseline obstruction preservation | W_0 orthogonality and Taylor absorption | 011,013,014 | exact raw margin | raw span, W_0, D_r | C_CP E_star^2 below delta_0/16 | witness and endpoint error export margin | exact target residual | one absorbed error | 011,013,014 -> 015 | 015 -> 016 | zero path preserves full deficit | step-local | None |
| step_016: physical floor | same-target loss transfer | projection and singular values | 001,015 | exact relative loss | realized factor/Frobenius convention | singular product and nonnegative discard | exact projection identity | same T and S | one-time transfer | 001,015 -> 016 | 016 -> 017 | lower singular boundary passes | step-local | None |
| step_017: final probability | event inclusion and conditioning | probability identity | 012,013,016 and joint law | exact conditional statement | same event mode | retain conditional path factor | final factor is not lower-bounded | actual F_plus event | conditional all-time scope | 012,013,016 -> 017 | 017 -> theorem | zero conditional factor allowed | step-local | None |
| C_path and baseline | conditional scope and zero-path recovery | finite path certificate | setting plus 013-016 | exact baseline | raw target, metric, and witness unchanged | finite variation; zero path has zero error | consumed only conditionally | same raw object | summable increments | C_path -> 013 -> 014 -> 015 -> 016 | 013-016 -> 017 | stationary entry preserves full conclusion | step-local | None |

## Blocking Issues

1. Step_005's TOP rank interface is dimensionally impossible as written.
   `Q_K` maps from `U=F_2^p`, so `rank(Q_K)<=p`, but the target requires
   `rank(Q_K)=B_K-2`. The stated graph class and degree-two/all-distinct
   boundary allow `B_K=2p`, giving `B_K-2=2p-2>p` for `p>=3`. The same common
   domain also makes the sum factorization rank at most `p`, and
   `dim ker(J_M)=F_M` silently requires `F_M<=p` despite mode occurrence sets
   of size up to `2p`. Smallest repair: use mode-dependent transition spaces
   and a direct-sum/concatenated incidence map, or prove a missing branch-wide
   restriction that makes the current dimensions legal.
2. Step_009 has no source-adequate INC mechanism. TOP and signed FACE rewrite
   `R` as `B_K-p-1+xi-C/2` or
   `2p-2-sum epsilon-C/2`; they do not bound
   `d=v-1-A/4` or compensate the negative `C/2` term. "Actual incidence
   degrees, group counts, and cycle profile" is a future-proof category, not
   a concrete control relation. Smallest repair: state an explicit
   label-collision/incidence inequality with raw terms that implies
   `R>=5d_+/4-d_-` in every listed branch.
3. Step_004 still combines too much proof work and has an unresolved empty-
   mode convention. For an empty mode `D_M` is empty, so
   `#cycles(tau_M o pi_M)=0`, while the moment contributes one identity loop;
   the displayed `Fraw_M=2F_M` cannot apply unchanged. The same step also owns
   the full trace expansion, loop bijection, roots, exact weight, `F_loc=3`,
   and quantitative local sector. Smallest repair: use a precise piecewise or
   formally augmented identity-loop convention and split the quantitative
   local-sector result from the loop-interface producer.
4. Step_009 should separate the hard reserve from the routine P3 algebra, so a
   failed combinatorial inequality does not consume repeated proof work on
   already valid exponent manipulation. Step_005 should likewise separate
   object construction from the final rank consequence if the corrected
   direct-sum interface remains substantial.
5. Steps 010-012 cannot legally consume 21z, TF, `W_0`, deficit, or the
   initialization probability until blockers 1-3 are repaired and strictly
   reviewed. Steps 013-017 remain exact conditional assembly and must not be
   weakened or promoted to unconditional progress.

## Required Repair Bundle

1. Preserve the exact theorem, full rank window, `4p` mode-occurrence model,
   mode-wise A/B/C profile, signed FACE, P4 goal, nine-pair compression, raw
   normalization, corrected `C_TF`, conditional path factor, baseline, and
   physical-loss conclusion.
2. Repair step_004 with an exact piecewise loop convention: nonempty modes use
   the paired successor-cycle identity; empty modes use an explicit formal
   identity-loop object that contributes `F_M=1` and the correct factor `r`.
   Split the flag/loop/weight interface from the quantitative local leading-
   sector proof so each output is independently reviewable.
3. Replace the common `U=F_2^p` TOP source by mode-specific spaces and a
   direct-sum or concatenated map whose rank can reach `B_K-2`. State every
   dimension, entry, root/all-ones quotient, kernel identity, and factorization.
   Discharge `B_K=2p`, `B_K<=2`, `p=1`, empty, one-color, repeated-label, and
   high-degree branches before exporting TOP or `xi`.
4. Preserve the mode-cycle inverse and signed FACE interfaces, but keep their
   consumers conditional on an accepted loop bijection. Prove the exact
   two-pair switch at the flag level and the `Q=0` local endpoint.
5. Preserve P4, but derive `C_A,C_B,C_C` only after every mode, group, root,
   orientation, and reconnection field has an injective code. Keep all
   `p`-dependent records on B/C occurrences.
6. Add a concrete producer for INC. It must relate `B_K`, component-label
   count `v`, A/B/C cycle statistics, `xi`, and the signed face sum, and imply
   `B_K-p-1+xi-C/2>=5d_+/4-d_-` for both signs of `d`. Split this hard lemma
   from the subsequent exact rank-window/P3 algebra.
7. In step_010, include occurrence constants in the nine-pair table and show
   explicitly that summing the P4 multinomial assignments is the same
   occurrence-pair sum, with no duplicate profile factor and exactly `2p`
   public factors.
8. Keep the generated-output table honest and rerun strict sketch review
   before global or step proof work. Do not add a primitive assumption, alter
   the algorithm or metric, narrow the rank window, lower-bound the
   conditional path factor, normalize the raw target, or weaken the positive-
   loss conclusion.

## Review Rationale

`REVISE_SKETCH` with score 6 is the deepest required change. Attempt 9 makes
substantial target-preserving progress: it uses the correct `4p` occurrence
surface, separates independent mode cycles, restores signed FACE at the exact
`F_loc=3` endpoint, allocates P4 through `p^Q`, uses the sharp negative-`d`
rank-window factor, and gives a plausible `4p`-to-`2p` occurrence compression.
It is not ready for proof workers because the stated TOP map cannot have the
required rank on its `p`-dimensional domain, INC still lacks a mechanism source,
and step_004 retains a boundary/workload defect. All three are same-setting
sketch/interface repairs; the exact conditional theorem remains viable, so
`IDEA_FAIL` is not justified.
