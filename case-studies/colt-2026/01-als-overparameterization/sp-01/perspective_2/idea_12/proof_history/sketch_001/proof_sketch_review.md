# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_12`.
- Sketch attempt: `1`.
- Reviewed sketch: `perspective_2/idea_12/proof_sketch.md`.
- Reviewed sketch SHA-256:
  `1094821a8e152351aacc581f000da0b87ab77b3d1c28150fecd51177f57723fe`.
- Binding technical survey: `perspective_2/idea_12/technical_survey.md`.
- Binding technical-survey SHA-256:
  `c478aaf45b2a970d4ba14d83f48de6eb49a8a3c4d2e4cc7a3d52c5b7d0d72454`.
- Binding setting: `perspective_2/idea_12/setting.md`.
- Binding setting SHA-256:
  `fd944f1dfe5123ca2794d5e39b16a12ff1e4b73dc1306ba6e58fec2e353b64eb`.
- Binding idea: `perspective_2/idea_12/idea.md`.
- Binding idea SHA-256:
  `834398f2b088bd7f5e17a8ff89bebd34b4527227f74c977e91fb1500b4c3a20f`.
- Goal mode: `target-spec`.
- Progress type: `material_partial`.
- Controller-facing graph: the ten stable rows `step_001`--`step_010` in
  `proof_sketch.md`; the four blocks are `(S)=001`, `(T)=002--004`,
  `(B)=005--007`, and `(P)=008--010`.
- Evidence boundary: the four hash-pinned artifacts above. Prior branch
  history is used only to check that the idea-11 fixed-padding obstruction has
  actually been repaired.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The sketch preserves the exact asymmetric CP least-squares
  objective, the two-mode-orthogonal Gaussian-smoothed subclass, target-blind
  full-space transactions, exact rollback, the strictly subquadratic rank,
  separate instance/tape probabilities, polynomial discovery independent of
  `epsilon`, the same-target terminal phase, and arbitrary relative
  Frobenius accuracy without an additive floor. It correctly labels the
  result `material_partial` and leaves arbitrary bases and unbalanced product
  weights open. There is no target drift to a protected projection, matched
  exchange, label-aware procedure, or fixed-padding theorem.
- Dependency audit: The displayed ten-row graph is syntactically acyclic, and
  the candidate-relative resolvent is placed before its ledger consumers.
  Its semantic induction interface is incomplete. `step_004` must bound a
  resolvent whose source contains the prior-history array `A_I`, but
  `step_003` only defines `A_I` and `step_006` is the later producer of the
  history-uniform ledger. The sketch does not state a named local-prefix
  hypothesis, its exact `A_I` bound, or the base/transition application that
  discharges that hypothesis. Consequently `Raw-J-rel` is presently consumed
  through an unrecorded future source.
- High-risk coverage: The sketch names the right major mechanisms: two-mode
  contraction, zero-safe candidate scale, nonnegative Neumann transfer,
  diagonal `J(p,p)=1`, exact rollback, objective-decrease charge, finite
  prefix induction, Haar activation, and same-target PL refinement. The
  singleton/negative-curvature alternative and the Haar reachability row are
  still category-level witnesses rather than obstruction-level interfaces.
  The target-orbit entry row also omits the exact orbit metric and global
  aggregation from per-slot errors.
- Explicit-rate coverage: The four rate objectives expose `n,r,k,kappa,rho`,
  `Gamma_star,P,nu_real,epsilon`, adaptive `e_t`, both probability modes,
  the discovery and terminal horizons, and the principal array/tensor norms.
  Missing are (i) the quantitative angular seed-set inequalities that imply
  `p_tx >= (nr)^(-c_tx)`, (ii) a concrete exponent hierarchy supplying all
  certificate half-slacks, and (iii) the `r,kappa,tau_min` dependence of the
  chart radius, PL constant, Armijo contraction factor, and terminal work.
  The undefined `dist(Q,Z_star)` convention prevents the norm-mode audit from
  closing.
- Assumption and citation plausibility: All eleven and only eleven primitive
  `assump:*` IDs are enumerated, and the step table uses stable IDs for every
  primitive condition it consumes. Matching, certificates, prefix legality,
  ledger control, activation, chart entry, and PL membership remain generated
  outputs. The parent papers and the technical survey are used as proof-pattern
  provenance rather than theorem wrappers, so no unresolved external label is
  being used to discharge a theorem-critical interface.

## Early Obstruction Audit

- Limiting-case stress: The idea-11 empty-prefix contradiction is repaired.
  At an exact orthogonal equal-weight empty prefix,
  `H=S=A_empty=0`, and the source of the relative resolvent is
  `e_empty(q) * 1`. Its rootwise norm is `Theta(sqrt(r)e_empty)`, while the
  certificate gives `mu_empty(q) <= 1/(2r)` and hence
  `sqrt(r)e_empty = O(P^(-D_stat)/sqrt(r))`; this matches, rather than
  contradicts, `Raw-J-rel`. If `T=0`, the early return is exact. If
  `T != 0` but `R_I=0`, then `mu_I=e_I=0` and no candidate passes, so the
  resolvent is not formed. The statement in the step-004 witness that
  `Theta=z=0` at every `R_I=0` is not implied by the displayed formula when
  `S+A_I` is nonzero and must be replaced by this no-production trace.
- Theorem-critical bridge support: The static event and empty-prefix
  relative-resolvent bridge are supported. For a nonempty prefix, however,
  `S+A_I+e_I 1 -> Theta -> z -> Raw-J-rel` lacks the prior accepted-history
  inequality needed to remove explicit `A_I` dependence from the exported
  row. A named conditional prefix record can repair this without changing the
  setting or target.
- Exported-interface feasibility: `mu_I`, `e_I`, and `eta_{I,q}` are computed
  from the actual residual and are zero-safe. The `1/4` transfer gap gives a
  feasible Neumann inverse. The empty-prefix `Raw-J-rel` scale is feasible,
  and the capture inequality
  `e_t D_t^2 <= P^(-D_stat) Delta F_t` follows directly from the definition
  of `mu_I`. The later interfaces are incomplete: the prefix-history bound is
  absent, the activation window has no quantitative angular seed set, and
  the target-orbit entry has no defined metric or `r`-explicit aggregation.
- Theorem-critical mechanism witness gate: `step_001`, the algebraic part of
  `step_002`, the candidate-relative part of `step_004` at a supplied legal
  prefix, the objective telescope, and terminal PL descent have appropriate
  sources. `step_003` does not display the required mixed-support control
  relation, for example a current-notation inequality of the form
  `lambda_min(Hhat_ang) <= -c m_mix + C(history+nu_real^2+e_I)` together with
  a nonzero tangent selector and a dominance split. `step_007` likewise names
  continuity, a window, and Haar small-ball volume without a seed-set geometry
  or deterministic attraction relation. These are same-setting
  `sketch/interface defect` witnesses, not valid future-step labels.
- Entry-state trace stress: Empty prefix, sign flip, nonpositive score,
  rollback, guard failure, `R_I=0`, `T=0`, tape exhaustion, exact target, and
  `F=0` are all named. The first successful transition is not quantitatively
  traced: the sketch does not state which Haar correlation inequalities hold
  at the seed, how the first radial/angular update preserves a positive score
  and half-slack certificate margins, or how many guarded updates reach the
  passing set. The `R_I=0` resolvent sentence is also inconsistent with the
  protocol's no-passing-candidate branch.
- Obligation locality classification: Static concentration/two-mode transfer,
  zero-safe algebra, candidate-relative Neumann inversion at a supplied prefix,
  exact one-step tensor expansion, the loss-decrease telescope, tape
  amplification conditional on a one-seed event, and PL/Armijo descent
  conditional on chart entry are `step-local`. The current prefix-to-`A_I`
  interface, singleton/negative-curvature selector, one-seed activation event,
  and all-commit-to-chart metric bridge are `sketch/interface defect`. No
  reviewed obligation presently requires an `idea/theorem-contract defect`.
- Noncircular closure gate: Exact rollback and a nonnegative objective provide
  a plausible finite induction. The current artifact nevertheless says only
  "legal prefix" in steps 002--005 while step 006 later produces legality.
  Without an explicit local conditional record and a base-plus-transition
  induction, `A_I` and `Raw-J-rel` form a semantic cycle. This can be repaired
  while retaining the same ten controller-facing steps.
- Mechanism-source and boundary stress: Two-mode contraction has the right
  lower/support source: exact deterministic orthogonality in modes A and B,
  the smoothing event, and direct product-Gram algebra. It is not inferred
  from upper boundedness alone. Mixed/tied candidates still need a nonzero
  current-tangent selector and an explicit defect-dominance inequality;
  `g=0`, one unresolved label, and selector-zero cases cannot be left to a
  generic Hessian calculation.
- Generated-output flow: Static outputs, certificate quantities, analysis-only
  labels, the relative resolvent, one-step charge, finite ledger, tape event,
  chart entry, and terminal rate are all listed. The flow is illegal at two
  edges as written: the `A_I` bound has no producer before `step_004`, and the
  one-seed success event in `step_007` has no quantitative seed-set/flow
  producer. `step_006` or `step_007` cannot retroactively supply an input
  already consumed by the local transition.
- Source-to-claim adequacy: Gaussian concentration and Schur/Cauchy--Schwarz
  algebra match the static upper and two-mode contraction claims. The
  nonnegative Neumann series matches the relative-resolvent claim once a
  bounded source is available. Exact multilinear expansion matches the
  diagonal charge, and objective monotonicity matches the numerical telescope.
  A source-centered continuity neighborhood alone does not imply an
  inverse-polynomial full-dimensional Haar probability. If `W_I` is an
  angular cap of radius at most the displayed tiny `delta`, its mass scales
  like at most `r * delta^(3(n-1))`, not `(nr)^(-O(1))`; if `delta` denotes
  only the radial seed scale, the angular event and its measure are undefined.
  The sketch needs a broad score/dominance event or another explicit
  current-setting activation source.
- Residual-to-target adequacy: `E_i` is an actual committed-tensor minus
  actual target-atom difference, and the final residual is exactly the
  theorem's Frobenius target, so there is no protected or whitened surrogate.
  The missing comparison is between all per-slot radial/directional errors and
  `dist(Q,Z_star)`: the setting never defines this distance, and the displayed
  entry bound does not state whether summing `r` per-slot errors introduces a
  `sqrt(r)` factor. The chart proof also needs a local two-sided
  error/residual relation and an Armijo displacement bound; PL decrease of
  `F` alone does not prove distance-to-orbit first-exit invariance.
- Baseline invariance audit: The exact padded balanced representation,
  joint-zero unused slots, exact rollback, stationary exact target, `T=0`
  early return, and arbitrary relative accuracy with no floor are preserved.
  At `H=e=0`, the static, history, and numerical charges vanish. At a general
  `R_I=0`, only candidate production stops and the numerical source vanishes;
  the review does not accept the stronger unsupported claim that a resolvent
  which is never formed must equal zero.
- Scope-accumulation compatibility: The numerical forcing is finite-budgeted
  by the concrete relations
  `e_t D_t^2 <= P^(-D_stat) Delta F_t` and
  `sum_t Delta F_t <= F(empty)`, giving
  `sum_t chi_t <= P^(-D_stat)`. Failed probes have exactly zero charge and at
  most `r` commits occur. This avoids `E_lb` absorption. The structural/history
  charge still needs the explicit local-prefix preservation inequality before
  the raw ledger can be accepted as a noncircular all-prefix output.
- Scope and dependence consistency: Rank, smoothing, probability, finite tape,
  discovery horizon, terminal accuracy, and no-floor modes match the setting.
  The activation probability and PL contraction currently hide dependence
  that the setting requires to remain polynomial and explicit. A fixed
  `c_tx` cannot be justified by an exponentially small local cap.
- Generated-condition provenance: No generated fact is promoted to one of the
  eleven primitive assumptions. The defect is instead missing provenance:
  the legal-prefix `A_I` bound and the one-seed passing event need named
  derived producers before their consumers.
- Citation and tool applicability: The technical survey correctly says that
  no cited source provides the branch-specific relative row, prefix ledger,
  target-blind matching, or exact joint-gradient PL theorem. Direct
  current-notation proofs are therefore allowed, but the missing conditional
  history, activation geometry, and chart metric cannot be delegated to an
  unspecified standard result.
- Same-setting repair plausibility: All material defects can plausibly be
  repaired within the same idea and formalized setting: state the conditional
  prefix record, add the coefficient-level isolation inequality, replace the
  local-cap assertion by a quantitative target-blind score basin and guarded
  flow, define the orbit metric and its aggregate bridge, and expose the PL
  dependence. If only an exponentially small local basin can be proved, the
  advertised polynomial tape/runtime would then require idea-level routing,
  but the present sketch has not established that impossibility.
- Target-preserving bridge-repair gate: The smallest route is `/proof-sketch`.
  The repairs add interfaces, local-unit maps, and quantitative inequalities;
  they do not change primitive assumptions, the algorithm, rank, probability
  mode, theorem metric, success criterion, or no-floor endpoint. The stable
  ten-step graph can be retained.
- High-risk obligation classes: Structural contraction, generated matching,
  perturbative Neumann transfer, recursive history maintenance, accumulated
  numerical charge, target-blind finite-tape reachability, same-target basin
  entry, local coercivity, mode/probability specialization, explicit rates,
  and exact/noiseless baseline invariance were all scanned. The unresolved
  classes are localized below.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst`, exact `T,Q*`, norm/Gram reserves, `R-src`, `two-mode` | Static conditioning, structural contraction, and exact baseline source | Gaussian norm/Gram concentration plus exact A/B source orthogonality and Schur/Cauchy--Schwarz algebra | Eight static `assump:*` IDs -> `step_001` | The sources provide the required upper Gram controls and the two-mode product contraction | Covariance `rho^2 I/n`, normalized columns, realized tensor, and Frobenius/Gram conventions agree exactly | Finite tail union gives `nu_real<=2 nu_star`; rowwise Cauchy--Schwarz gives pair-product sum `O(nu_real^2)` | Base scales and smoothing bridge are explicit; output is feasible on one once-drawn event | `Q*` represents the same realized `T` exactly; no surrogate | One-time event; no trajectory defect | Primitive static assumptions -> `step_001` -> all later consumers | `step_001` -> steps 002--010 | `T=0`, exact orthogonality, and small positive smoothing pass | step-local | None |
| Zero-safe `mu_I,e_I,eta_I` and transfer gap | Candidate-local margin and Neumann small-gain source | Actual `R_I`, objective decrease, angular derivatives, certificate thresholds, and static Gram bounds | `step_001` + protocol definitions -> `step_002` | Positive clauses support the conditional interface; zero clauses force rollback/stop rather than a false lower bound | Actual full-space residual and normalized product-sphere Hessian are the branch objects | `e_I=P^(-D_stat)mu_I`; `C0 Gamma ||T+||<=1/4` | Every term is observable/current-prefix; exponent half-slacks still need a public hierarchy | Same actual residual; no projection | One transaction; radial/angular errors enter through the same `e_I` | `step_001` -> `step_002` | `step_002` -> steps 003--007 | `T=0` returns early; `R_I=0` gives `mu=e=0` and no passing output | step-local after minor boundary wording repair | /proof-sketch |
| Singleton isolation, signs, injection, and unresolved `p` | Structural support/negative-curvature alternative and matching producer | Two-mode score identity, separation, radial gain, and product-sphere Hessian | Intended direct derivation in `step_003` | Source type is appropriate, but no mixed-mass lower term, tangent selector, or dominance inequality is stated | Same realized factors/product-sphere convention; no label is queried by the protocol | Needed relation: a nonzero mixed selector with negative Hessian term dominating history, `nu_real^2`, and `e_I`, or a quantified singleton branch | Certificate and two-mode controls are visible; the exported dichotomy is not yet feasible at every tie/zero-selector boundary | `E_i` is an actual slot-to-atom error once `p` exists | Local conditional defect; no accumulation yet | Supplied legal-prefix record + steps 001--002 -> repaired `step_003` | `step_003` -> steps 004--005 and activation analysis | Empty prefix is benign; mixed ties, one unresolved label, `g=0`, and zero selectors are unresolved | sketch/interface defect | /proof-sketch |
| `Theta,z,Raw-J-rel` at the empty prefix | Candidate-relative generated row and repaired numerical scale | `e_I 1` source, `1/4` Neumann gap, zero diagonal | `step_002` + empty `A_I=0` -> `step_004` | Exact source scale matches the requested `sqrt(r)e_I` row | Same absolute-Gram arrays and root-2 norm | `||Theta||_root <= (4/3) C0 Gamma ||S+e_I 1||_root = O(nu^2+r nu^3+sqrt(r)e_I)` | At `H=S=A=0`, both sides are `O(P^(-D_stat)/sqrt(r))` for an exact equal-weight atom | Produced `z` is the consumed row itself; exact target-frame comparison | Geometric Neumann accumulation only; no fixed pad | `step_002` + empty base -> `step_004` | `step_004` -> steps 005,006,008 | Empty-prefix idea-11 counterexample is repaired; `H=e=0` gives zero source | step-local at the empty base | None |
| `A_I`-dependent `Theta,z,Raw-J-rel` at nonempty prefixes | History transfer and local-transition input | Relative resolvent with source `S+A_I+e_I 1` | `A_I` is defined in `step_003`; its history-uniform bound is only claimed later in `step_006` | Missing: no earlier inequality turns `A_I` into the source size permitted by `Raw-J-rel` | Target-frame contractions agree, so this is a producer-timing issue rather than a convention issue | Must state the exact prefix record and bound on `A_I`, then derive the row conditionally from that bound | Raw `A_I` is visible but uncontrolled at the point of export | Same target-frame error contractions; no surrogate can remove an arbitrary `A_I` term | Prior accepted errors persist and must be charged once through the prefix ledger | Empty record -> conditional transition -> `step_006` induction; not currently written | Local prefix record -> steps 003--005; `step_006` discharges it | Empty base passes; arbitrary nonempty `A_I` falsifies a uniform row absent the record | sketch/interface defect | /proof-sketch |
| One-prefix charge and numerical telescope | Signed descent, exact rollback, and finite numerical budget | Exact multilinear expansion, `J(p,p)=1`, zero-diagonal `z`, balancing, positive `Delta F` | Repaired conditional steps 003--004 -> `step_005`; objective definition | Mechanism type matches charge and descent claims | Actual committed slot/residual and exact target atom share the setting convention | `e_tD_t^2 <= P^(-D_stat)Delta F_t`; failed probe charge `=0` | Raw radial, angular, history, and numerical terms are named; the structural one-step inequality still needs the prefix record | Actual tensor increment is compared directly with target atom | Nonnegative one-time charge per commit | Supplied prefix record -> `step_005` transition | `step_005` -> `step_006` | First commit, failed trial, and exact rollback pass | step-local conditional on repaired interfaces | /proof-sketch |
| Legal-prefix invariant and raw ledger | All-prefix boundedness, generated matching, and accumulation closure | Empty base, repaired one-step transition, nonnegative objective potential | `step_001` + `step_005` -> `step_006` | Plausible source, but current sketch does not state the local hypothesis/output equality that makes the induction legal | Actual frozen state, injection, residual, and target-frame arrays agree | `sum Delta F<=F(empty)`, `sum chi<=P^(-D_stat)`, plus an explicit one-step structural/history preservation inequality | Numerical budget is feasible; `A_I` preservation interface is missing | Stores actual slots and actual target comparisons | At most `r` commits; numerical terms telescope; failures add zero; structural terms require one-charge proof | Empty base -> conditional transition -> induction -> later consumers | `step_006` -> steps 007--008 | Repeated failures and `R_I=0` preserve/terminate state; last-label branch must be explicit | sketch/interface defect | /proof-sketch |
| Target-blind one-seed activation and all-commit tape event | Reachability, conditional probability, and discovery runtime | Broad Haar score event, deterministic guarded radial/angular flow, rollback, and independence | Intended `step_007` from steps 002,003,006 + `assump:random-tape` | Continuity around a source center does not by itself match an inverse-polynomial full-dimensional Haar-mass claim | Full-space Haar and actual objective conventions agree; labels may appear only in analysis | Need explicit seed correlation inequalities, first-update/guard recurrence, `H_tx` path, and a measure calculation yielding `p_tx`; then `(1-p_tx)^N` amplification | `p_tx,N_tx,H_tx` are stated, but no feasible raw seed set or angular width is supplied | Success and rollback are actual states, not projected states | Finite stopped flows; failures zero forcing; independent seeds; one success per unresolved label | Repaired legal-prefix invariant -> one-seed event -> tape amplification | `step_007` -> step 008 and final probability bridge | Negative/zero score and guards are named; a tiny angular cap is superpolynomially unlikely in growing `n` | sketch/interface defect | /proof-sketch |
| All-commit actual tuple -> exact orbit and PL chart | Same-target membership, coercivity, and first-exit closure | Per-slot radius/direction errors, pair/triple reserves, balanced target Jacobian, local smoothness | steps 001,004,006,007 -> `step_008` | Source type is correct, but global aggregation and distance convention are missing | Actual tuple and exact padded target agree; no whitening/projection; unused zero slots remain invariant | Need a defined orbit norm, explicit `r`-aggregation, `c dist^2 <= F <= C dist^2`, PL constant, and Armijo displacement/first-exit inequality | Displayed entry row omits possible `sqrt(r)` aggregation and `kappa,tau_min` dependence | Same target, but adequacy cannot be checked until the metric and target radius are fixed | One-time entry followed by contractive/stopped chart flow | All-commit producer -> entry bridge -> terminal descent | `step_008` -> `step_009` | Exact target and zero residual pass; chart boundary trace is only asserted | sketch/interface defect | /proof-sketch |
| Terminal Armijo residual, probability/runtime specialization, and baseline | Convergence, quantitative specialization, and public theorem closure | Repaired PL chart, Armijo sufficient decrease, separate instance/tape tails, direct substitution | steps 001,006--009 -> `step_010` | Correct claim type conditional on valid activation and chart producers | Exact `F=||T-Psi(Q)||_F^2/2` is the public metric | Geometric loss decrease with an explicit polynomial condition factor and `O(poly * log(1/epsilon))` work | Rank/tape substitutions are stated; PL/Armijo dependence and exponent inequalities remain to be exposed | Final object/control equals the theorem target exactly | Finite discovery plus contractive terminal horizon; no persistent forcing | Accepted prior outputs -> steps 009--010 -> theorem | steps 009--010 -> final assembly | `T=0`, `F=0`, and `H=e=0` preserve exact no-floor recovery | step-local after upstream/rate repairs | /proof-sketch |
| Baseline invariance and forbidden-shortcut audit | Exact/noiseless recovery and source-direction fidelity | Exact CP equality, joint-zero rollback, stationary balanced target, zero adaptive source | Static algebra plus repaired flow | Matches the inherited baseline exactly | Same objective, factors, and Frobenius endpoint | At `H=e=0`, charges vanish; at `T=0`, return zero; at `F=0`, stop | No fixed padding, protected projection, matched exchange, source-label query, `E_lb` absorption, label-aware algorithm, or additive floor appears | Exact equality; no residual bridge | Zero forcing; no accumulation | Static source + exact rollback + terminal stationary trace | steps 001,005,009--010 -> final baseline clause | Baseline passes; only the erroneous unused `R_I=0 -> Theta=0` sentence needs deletion | step-local after wording repair | /proof-sketch |

## Blocking Issues

1. **The nonempty-prefix `Raw-J-rel` export has an unrecorded future
   producer.** `proof_sketch.md:80-92,316-334,519-524` defines the resolvent
   source with `A_I` and exports a row without an `A_I` term, but no prior step
   supplies the required history bound. Calling `I` legal does not state the
   local conditional hypothesis, and `step_006` cannot retroactively justify
   an input consumed by steps 003--005. The smallest repair is to define one
   exact local-prefix record, state steps 002--005 conditionally on it, include
   the source-size inequality used by `Raw-J-rel`, and make step 006 prove the
   empty base plus preservation.
2. **The singleton/negative-curvature interface is not yet an
   obstruction-level witness.** `proof_sketch.md:294-314` names two-mode
   scores and a Hessian selector but gives no nonzero selector convention,
   mixed-support control term, opposing history/numerical terms, or dominance
   inequality that excludes every passing mixed/tied candidate. Since this
   output produces the analysis-only label, charge, and activation center, it
   cannot be deferred as an unspecified local landscape calculation. Add a
   coefficient-level alternative and all singleton/tie/zero-selector/last-label
   branches within `step_003`.
3. **The claimed inverse-polynomial Haar activation has no feasible exported
   seed interface.** `proof_sketch.md:384-404` specifies half-slack clauses and
   an upper radius, then infers `p_tx >= (nr)^(-c_tx)` from continuity and Haar
   small-ball volume. If the stated radius is angular, a union of `r` tiny
   caps has exponentially small mass in `n`; if it is only the radial seed
   scale, no angular seed event is defined. State a broad target-blind
   correlation/dominance event, calculate its Haar mass, and give the guarded
   deterministic seed-to-certificate recurrence, first-update trace, exponent
   inequalities, and `H_tx` bound. Keep the ten stable steps by using a local
   lemma map inside `step_007` if desired.
4. **The all-commit-to-PL bridge is not norm- or rate-complete.** The setting
   and `proof_sketch.md:416-442` use `dist(Q,Z_star)` without defining its
   balanced-orbit norm, and the displayed row does not show how `r` per-slot
   errors aggregate or expose the possible `sqrt(r)` loss. It also omits the
   `kappa,tau_min,r` dependence of `varrho`, `mu_PL`, the Armijo contraction,
   and terminal work. Define the metric, prove the target-side aggregate
   inequality, and state the local error/residual sandwich and first-exit
   displacement relation.
5. **The `R_I=0` resolvent trace is false as written.** At
   `proof_sketch.md:333`, `e_I=0` does not force the displayed resolvent to
   zero when `S+A_I` is nonzero. The correct zero-safe trace is that
   `mu_I=e_I=0`, no candidate passes, discovery stops, and no resolvent is
   generated. Reserve `Theta=z=0` for the supported `H=e=0` exact source.

## Required Repair Bundle

1. At steps 002--006, introduce a named local-prefix record containing the
   actual frozen tuple, injection/sign data, unresolved set, exact residual,
   the precise `A_I` norm bound, and accumulated charge. State the transaction
   lemmas conditionally on that record and make step 006 discharge it by an
   empty-base/one-step-preservation induction. This is the target-preserving
   repair for Blocking Issue 1.
2. In step 003, add a local-unit map and one explicit current-notation
   singleton-versus-mixed inequality: define the support coefficients and a
   nonzero tangent selector, identify the negative control term, list
   structural/history/numerical defects, state the dominance threshold implied
   by the certificate and prefix record, and enumerate tie, zero-selector,
   `g=0`, singleton, and final-label branches. This repairs Blocking Issue 2
   without adding a source-label query.
3. In step 007, define the one-seed event by quantitative Haar correlation or
   score inequalities, not by an unquantified local cap. Prove its
   inverse-polynomial measure, specify the sign/radial first update, guarded
   angular/negative-curvature recurrence, certificate half-slack preservation,
   rollback alternative, and polynomial `H_tx`; then perform the adaptive
   independent-tape amplification. Record concrete inequalities among
   `D_mu,D_gap,D_stat,D_cap,d_tx,c_tx` and the static reserves. This repairs
   Blocking Issue 3 while retaining one controller-facing step with auditable
   local units.
4. In step 008, define `dist(Q,Z_star)` exactly, aggregate every committed
   radial/directional error in that norm with all `r` factors exposed, choose
   `varrho` below the Jacobian radius, and state the same-target Taylor/error
   bound, PL constant, smoothness constant, Armijo displacement inequality,
   and first-exit argument. Propagate their polynomial dependence into steps
   009--010 and the terminal runtime. This repairs Blocking Issue 4.
5. Replace the step-004 `R_I=0 -> Theta=z=0` statement by the no-passing-output
   trace, and keep the genuine `H=e=0` vanishing-source specialization. Update
   the exported-interface and generated-output rows accordingly. This repairs
   Blocking Issue 5.

Target-preserving repair check: every required change above is a proof-roadmap,
interface, quantitative-witness, norm-definition, or boundary-trace repair.
None requires a new primitive assumption, a protected projection, matched
exchange, source-label access, a changed algorithm, a changed rank, a changed
probability or success mode, an additive endpoint floor, or a weaker theorem.
The concise ten-step graph may remain unchanged, provided steps 003, 007, and
008 expose stable local-unit maps for their independent hard claims. If the
only activation set that can actually be proved is a tiny source-centered cap,
then the polynomial tape claim would require later idea-level escalation; the
present evidence supports sketch revision first.

## Review Rationale

`REVISE_SKETCH` with score 6 is the deepest warranted change. The new
candidate-relative padding fixes the explicit idea-11 rate contradiction, the
zero-safe certificate has the right scale, the capture telescope is honest,
and the objective/procedure/rank/probability/baseline contract remains viable.
Global or step-level proof work is premature because the nonempty-prefix row
still lacks a legal history producer, the isolation and one-seed reachability
witnesses are not quantitative enough to be classified `step-local`, and the
same-target chart bridge does not yet specify its metric and aggregate rate.
All identified repairs can preserve the current setting and goal, so routing
to a new idea would be too deep at this stage.
