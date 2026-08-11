# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_12`.
- Sketch attempt: `3`.
- Reviewed sketch: `perspective_2/idea_12/proof_sketch.md`.
- Reviewed sketch SHA-256:
  `283b4a8d8c0e3f4f6eb1bc24627ed31a9073fd6c08a13da60295192e349e4bea`.
- Binding setting: `perspective_2/idea_12/setting.md`.
- Binding setting SHA-256:
  `fd944f1dfe5123ca2794d5e39b16a12ff1e4b73dc1306ba6e58fec2e353b64eb`.
- Binding idea: `perspective_2/idea_12/idea.md`.
- Binding idea SHA-256:
  `834398f2b088bd7f5e17a8ff89bebd34b4527227f74c977e91fb1500b4c3a20f`.
- Binding technical survey: `perspective_2/idea_12/technical_survey.md`.
- Binding technical-survey SHA-256:
  `bca0cda9ee4bd8c00deb3e7b8811b9af2904f5fd94b34e943c8a35a6837b1a12`.
- Goal mode: `target-spec`.
- Progress type: `material_partial`.
- Roadmap under review: seven stable rows, with step 001 for (S), steps
  002--003 for (T), step 004 for (B), and steps 005--007 for (P).
- Reduction audit: the former transaction-local, transition/induction, and
  terminal/rate pairs are merged, and the sketch names U3--U7 local units.
  The reduction preserves the setting, objective, protocol, rank, probability
  modes, target metric, and baseline, but two producer interfaces and several
  quantitative activation inequalities were shortened enough that they must be
  restored before step proof work.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The sketch remains aligned with the material-partial target:
  two-mode-orthogonal Gaussian-smoothed factors, exact asymmetric CP loss,
  target-blind full-space transactions, strictly subquadratic rank, separate
  instance and tape probabilities, polynomial discovery independent of
  epsilon, same-target balanced terminal refinement, and an exact/no-floor
  baseline. It does not introduce a protected projection, source-label query,
  matched-mixture exchange, surrogate residual, or fixed error floor. The
  public candidate-relative row is stated with an additional `b_s` term,
  however, while the binding setting and idea export the row without that
  term; the required substitution through the prefix budget is not stated.
- Dependency audit: The seven-row graph is syntactically acyclic when LP_s is
  treated as a conditional state input. The intended loop is empty LP_0,
  conditional transaction lemma, transition, and finite induction. The type
  definition still says `b_s >= ||A_s||`, but the transition only displays
  `b_{s+1} <= b_s + beta_s`; it no longer states that the emitted record proves
  `b_{s+1} >= ||A_{s+1}||`. Thus the history source needed by the next
  transaction is not an explicit producer in the reduced roadmap.
- High-risk coverage: Static concentration, zero-safe screening, coefficient
  selectors, the nonnegative resolvent, diagonal-aware charge, numerical
  telescope, orbit metric, PL sandwich, first-exit path, and baseline branches
  are all named. The merged activation row no longer gives the positive score,
  gain, margin, and guarded-path inequalities that make a Haar seed a passing
  certificate. The merged transition row similarly hides the lower part of the
  prefix invariant. These are interface defects rather than missing ideas.
- Explicit-rate coverage: R1, R2, and R4 expose the principal variables and
  norm modes. R3 exposes the angular slab mass, tape length, and update budget,
  but omits the explicit `s_s`, `Delta F_s`, and `mu_s` lower bounds, the
  `sqrt(r) nu_real` slack relation, and a polynomial path-length inequality
  showing that `H_tx` updates reach the certificate. Consequently the stated
  `p_tx` amplification is not yet connected to an observable passing event.
- Assumption and citation plausibility: All eleven primitive assumptions are
  named with stable `assump:*` identifiers and no generated matching, ledger,
  activation, or PL fact is promoted to a primitive assumption. The technical
  survey is used only for proof-pattern provenance. No theorem-critical cited
  result has an unresolved label; the remaining sources are direct
  current-notation derivations and standard Gaussian/Haar calculations.

## Early Obstruction Audit

- Limiting-case stress: The repaired candidate-relative pad passes the exact
  orthogonal empty-prefix test: when `H=S=A_0=0`, only `e_I 1` remains and its
  rootwise scale is `sqrt(r) e_I`. `T=0` returns the joint-zero decomposition,
  and `R_I=0` correctly stops before forming a resolvent. The exact `H=e=0`
  source is stationary and has zero charge. The nonempty-prefix trace is not
  closed because the lower history invariant is not exported at the
  transition, and the activation trace does not show a quantitative positive
  gain or certificate margin after the first update.
- Theorem-critical bridge support: The static event and the conditional
  `S+A_s+e_I 1` Neumann bridge are plausible. The transition-to-next-prefix
  bridge is incomplete without the explicit `A_{s+1}` bound. The slab-to-Cert
  bridge has the right angular/radial objects and seed-dominance defect split,
  but lacks the displayed lower bounds that discharge every Cert clause.
- Exported-interface feasibility: Raw controls are the realized Gram
  reserves, the observable certificate, `b_s`, the one-step charge, and the
  objective decrease. The exported LP record needs both the lower type
  invariant and the upper recurrence. The exported Raw-J-rel needs either the
  public bound from setting.md or an explicit line replacing `b_s` by its raw
  structural plus numerical budget. The exported seed event needs score,
  gain, Hessian, separation, and update-path margins, not only a Haar measure.
- Theorem-critical mechanism witness gate: Step 001 has a one-time Gaussian
  source; step 002 has an observable zero-safe source and a Neumann small-gain
  relation; step 003 gives a mixed-support negative Hessian term and lists all
  selector branches; step 004 gives a one-time charge and objective potential;
  step 006 gives a same-target Jacobian source. The step-004 witness is shallow
  at the prefix boundary because it omits the lower `A_{s+1}` relation. The
  step-005 witness is shallow at the activation boundary because it says only
  that the first score is positive and half-slack persists. Both are
  same-setting `sketch/interface defect` witnesses.
- Entry-state trace stress: The sketch traces the empty prefix, fixed sign
  flip, negative score, guard failure, rollback, tape exhaustion, `R_I=0`,
  exact target, and `F=0`. It does not trace the first successful seed through
  `s_s > 0`, `Delta F_s` above the certificate scale, `mu_s` above
  `P^{-D_mu}`, and the bounded number of radial/angular updates. A later
  proof step can supply this only after those inequalities are named in the
  sketch.
- Obligation locality classification: Static concentration, zero-safe
  derivative identities, Neumann inversion conditional on a supplied LP_s,
  exact one-step tensor expansion conditional on the supplied row, the
  numerical telescope, the orbit Jacobian/PL calculation, and terminal
  Armijo are `step-local`. Prefix-type preservation, public-row conversion,
  selector dominance discharge, and seed-to-Cert activation are
  `sketch/interface defect`. No obligation requires an idea/theorem-contract
  change at this review stage.
- Noncircular closure gate: The intended finite closure is
  `LP_0 -> transaction -> LP_1 -> ...`, with at most `r` commits and exact
  rollback. The displayed upper recurrence and chi budget are noncircular,
  but the lower condition `b_{s+1} >= ||A_{s+1}||` is not part of the producer
  statement, so the next use of `A_s` is not independently justified. The
  activation claim also needs an independent slab score source before the
  certificate is consumed; continuity and a tape union alone are not such a
  source.
- Mechanism-source and boundary stress: Two-mode orthogonality and the
  smoothing event are adequate sources for the static pair-product control.
  The coefficient selector has the right tangent-vector convention and lists
  singleton, tie, zero-selector, last-label, and mixed branches, but the
  displayed U3 dominance inequality is not linked to the certificate
  threshold and the P-hierarchy in the reduced text. The radial lower bound,
  positive gain, and Hessian/separation half-slacks need the same boundary
  source in step 005. `g=0`, nonpositive score, and `R_I=0` are handled.
- Generated-output flow: Static reserves -> certificate -> conditional LP
  transaction -> transition/ledger -> activation -> orbit chart -> terminal
  rate is the intended path. The flow table names LP_s as both an
  initialization/prior input and a step-004 output, which is legal for a
  conditional loop only if the record type and its lower bound are explicitly
  preserved. The selector/resolvent and activation outputs have legal forward
  consumers after that repair.
- Source-to-claim adequacy: Gaussian concentration, direct multilinear
  expansion, absolute-Gram Neumann series, spherical density, and the direct
  balanced Jacobian are source-compatible with their stated claim classes.
  No external theorem is being used as an opaque wrapper. Before classifying
  the U3 dominance and activation claims as step-local, the sketch must state
  the current normalized-column convention, the raw defect terms, the exact
  dominance inequalities, and the zero/tie/boundary branches. The same
  requirement applies to the LP lower invariant as a current-notation
  wrapper around the one-step expansion.
- Residual-to-target adequacy: `E_i` and the final residual use the actual
  realized factors and the exact Frobenius target; there is no transformed or
  whitened object. The orbit metric is explicitly defined and the Entry row
  exposes the `sqrt(r)` aggregation. The unresolved defect is not a target
  transform but the missing path from `b_s` and the activation margins to the
  exported all-commit tuple and target chart. The retry must state the residual
  decomposition and target-scale dominance for those terms.
- Baseline invariance audit: The exact padded balanced representation, joint
  zero slots, `T=0` early return, `R_I=0` no-production branch, exact target
  stationarity, and arbitrary relative accuracy without an additive floor are
  preserved. In the `H=e=0` specialization the structural and numerical
  charges vanish. The repair must not replace the exact baseline with a
  conditional or finite-floor surrogate.
- Scope-accumulation compatibility: The numerical defect has a concrete
  finite-budget relation `e_t D_t^2 <= P^{-D_stat} Delta F_t` and the
  nonnegative objective telescope gives `sum chi_t <= P^{-D_stat}` over at
  most `r` commits. The structural/history defect is intended to be charged by
  `beta_s`, but the one-step preservation of the history norm is missing. The
  retry must state the lower invariant, the upper charge, the sign of each
  forcing term, and the finite induction in one merged row.
- Scope and dependence consistency: Rank, smoothing, tape, instance
  probability, terminal accuracy, and no-floor modes match the binding
  setting. The chart constants expose `r`, `kappa`, and `Gamma_star`. The
  activation hierarchy must additionally expose the relation controlling
  `sqrt(r) nu_real`, `mu_s`, and the guarded path length; otherwise the claimed
  polynomial tape/runtime hides a process-scale dependence.
- Generated-condition provenance: Matching, signs, unresolved labels,
  certificates, `A_s`, `b_s`, `Theta`, `z`, ledger entries, activation events,
  PL membership, and first-exit invariance are correctly labeled as generated.
  The missing lower LP invariant and the missing seed margin are provenance
  defects, not primitive assumptions.
- Citation and tool applicability: The technical survey supplies no cited
  theorem that can replace the branch-specific selector, prefix ledger, or
  target-blind activation. Direct derivations and standard Haar density are
  acceptable, but their source identity, current objects, conventions,
  hypothesis discharge, and exported conclusion must be fixed in the retry.
- Same-setting repair plausibility: All defects can be repaired within the
  current idea and setting by restoring two or three displayed inequalities in
  the merged rows. The seven-row graph can remain: step 003 can retain
  U3-coeff/U3-selector/U3-branches/U3-resolvent, and step 004 can retain both
  transition and induction units. No change to primitive assumptions,
  algorithm, rank, probability mode, metric, or success criterion is needed.
- Target-preserving bridge-repair gate: The smallest route is
  `/proof-sketch`. Add the typed LP transition, derive the public Raw-J-rel
  after substituting the raw prefix budget, and restore the seed lower-bound
  and path-length interfaces. These are target-preserving bookkeeping and
  quantitative bridges, not an idea revision.
- High-risk obligation classes: Static structural conditioning, generated
  matching, nonnegative transfer, signed capture charge, finite numerical
  budget, target-blind reachability, same-target chart entry, PL descent,
  explicit rates, and exact/noiseless baseline were scanned. The unresolved
  classes are prefix invariant preservation, selector dominance discharge,
  activation margin/path control, and public Raw-J-rel interface alignment.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E_inst, R-src, two-mode, pair/triple reserves, Q* | static conditioning and exact baseline source | Gaussian norm and Gram concentration plus exact A/B orthogonality | eight static `assump:*` IDs -> step 001 | matches realized normalized factors and Schur products | same covariance, normalized-column Gram, and Frobenius conventions | one-time tail event and rowwise product contraction | raw smoothing deviations and deterministic orthogonal source give the displayed event | Q* represents the same realized T exactly; no surrogate bridge | one-time, no trajectory accumulation | primitive IDs -> step 001 -> all later rows | step 001 produces; steps 002--007 consume | T=0 and H=0 traces pass | step-local | None |
| zero-safe Cert, mu, e, eta, and transfer gap | candidate margin and Neumann small-gain interface | actual residual, score, gain, Hessian, and absolute Gram bounds | step 001 plus protocol definitions -> step 002 | matches the conditional certificate claim | current full-space residual and product-sphere Hessian are used | e = P^(-D_stat) mu and C0 Gamma times each transfer norm <= 1/4 | observable clauses, zero branches, and static reserve are available; hierarchy is stated but activation use is incomplete | same actual residual and target-frame arrays | one transaction; failed probes have zero exported source | step 001 -> step 002 -> step 003 | step 002 produces; steps 003 and 005 consume | g=0, nonpositive score, nonpositive gain, and R=0 stop | step-local | None |
| LP_s type and history source A_s | generated prefix invariant and matching input | exact frozen tuple, injection, and history contraction | initialization or prior transition, with definition in lines 83--105 | source is appropriate but lower preservation is not exported | actual balanced slots and target-frame contractions agree | must state both the lower bound on the A_s root-2 norm and b_{s+1} <= b_s + beta_s before the next call | current LP fields and beta are present; the emitted lower bound is missing | E_i is actual slot error, so no surrogate transfer is needed | structural/history forcing is nonnegative and finite over at most r commits | LP_0 -> repaired transition -> LP_{s+1} -> next transaction | step 004 must produce LP_{s+1}; step 003 consumes LP_s | empty base passes; nonempty next-prefix boundary is unclosed | sketch/interface defect | /proof-sketch |
| U3 coefficient selector and singleton/mixed assignment | structural support, negative-curvature exclusion, and label producer | two-mode score identity, tangent selector, separation, and angular Hessian | step 001 and supplied LP_s -> step 003 | claim type is appropriate, but uniform dominance discharge is omitted | same realized directions and normalized Hessian convention | mixed lower term must dominate structural, history, and numerical defects; zero-selector and tie branches must be explicit | a_j, b_s, e_I, and selector vectors are named; P-hierarchy-to-dominance is not stated | E_i is an actual atom difference once p is assigned | local conditional defect; no accumulation before transition | static event + LP_s + Cert -> U3 units -> transition | step 003 produces pi, signs, p, E, and A; step 004 consumes | singleton, tie, zero selector, last label, g=0, and empty unresolved branches named | sketch/interface defect | /proof-sketch |
| Theta, z, and Raw-J-rel | candidate-relative generated row | finite nonnegative Neumann series from S + A_s + e 1 | step 002 plus U3-resolvent -> step 003 | conditional row with b_s is stronger only if the public substitution is made | same target-frame arrays and root-2 norm | Neumann gap plus b_s <= structural plus chi budget must yield the setting row without b_s | raw source and transfer norms are visible; public row conversion is absent | z is consumed in the same realized target frame | geometric series locally; history is accumulated through LP budget | LP_s -> U3-resolvent -> repaired public-row bridge | step 003 produces; transition and ledger consume | empty prefix gives advertised scale; R=0 produces no row; H=e=0 vanishes | sketch/interface defect | /proof-sketch |
| accepted transition, rollback, beta, and chi | exact atom calibration and signed capture charge | multilinear expansion, J diagonal, balancing, and positive objective gain | repaired U3 output plus protocol -> step 004 | matches actual committed tensor increment | actual factors and exact target atom use identical conventions | transition must emit the next LP type, b upper charge, chi, and identity rollback | delta, direction errors, z row, and e D squared <= P^(-D_stat) Delta F are raw controls | E_i is compared to the exact atom, not a protected surrogate | beta is nonnegative; failed trials add zero | repaired LP_s + U3 output -> U4-transition -> LP_{s+1} | step 004 produces transition and charge; step 004 induction consumes | first commit, rollback, last label, and R=0 branches are named | step-local after interface repair | None |
| all-prefix LP budget and raw ledger | accumulated history, boundedness, and all-commit error | empty base, one-step charge, and objective potential | step 004 induction from LP_0 | source matches finite-scope ledger claim once lower type is restored | same prefix records and root-2/l1 norms | b_s <= sum beta, sum beta <= structural term plus sum chi, and sum chi <= P^(-D_stat) | structural and numerical terms remain separate; lower A_s source is missing | all-commit tuple is actual frozen tuple; target bridge is downstream | finite-budgeted over at most r commits; signs of beta and chi controlled | LP_0 -> transition -> induction -> activation and Entry | step 004 produces uniform records and ledger; steps 005 and 006 consume | repeated failure preserves state; R=0 and last label terminate | sketch/interface defect | /proof-sketch |
| angular/radial seed slab and Haar mass | target-blind reachability source | spherical density, two-mode score identity, and cross-label union bound | step 001 plus random-tape -> step 005 | angular event and polynomial mass are plausible | Haar directions and realized target directions match setting | intervals [a_n, 2 a_n], cross correlations <= b_n, radial bracket, and p_tx lower bound | a_n, b_n, tau_min, tau_max, and seed-dominance are stated; positive score/gain bounds are omitted | seed is an actual full-space candidate; no projection bridge | finite independent tape, no persistent forcing | LP invariant -> slab event -> guarded transaction | step 005 produces seed event; tape amplification and chart consume | first sign is named but score and gain thresholds are not quantified | sketch/interface defect | /proof-sketch |
| guarded first update and half-slack certificate passage | activation, margin preservation, and process runtime | clipped radial recurrence, angular Armijo, negative-curvature trials, and guard | seed slab plus step 004 -> step 005 | mechanism fits protocol but exported margin is incomplete | same full-space derivatives and factor displacement convention | must show s_s lower bound, Delta F_s lower bound, mu_s >= 2 P^(-D_mu), sqrt(r) nu slack, and H_tx Delta_tr path control | current half-slack list covers errors, Hessian, separation, and transfer gaps but not mu or gain | candidate remains the actual committed object | stopped finite flow; rollback is exact if guard fails | seed -> first update -> certificate or rollback -> tape event | step 005 produces passing transaction/tape event; steps 006 and 007 consume | empty, negative score, guard boundary, exhaustion, and R=0 named; first successful trace incomplete | sketch/interface defect | /proof-sketch |
| tape amplification and conditional probability | probability mode and discovery runtime | independent stopped trials and union over unresolved labels | `assump:random-tape` plus repaired seed event -> step 005 | Bernoulli amplification matches finite unresolved scope | conditional Haar draws are independent of the fixed instance | (1 - p_tx)^N_tx <= r^(-11) and finite union <= r^(-10) | N_tx and c_tx are explicit; p_tx is not yet tied to a passing certificate without prior row repair | returned slots are actual full-space factors | finite stopped trials, zero charge on failures | repaired activation producer -> independent tape amplification -> Entry | step 005 produces; step 006 and final theorem consume | tape exhaustion rolls back; probability mode remains separate | step-local conditional | None |
| all-commit tuple to exact orbit Entry | target membership and residual-to-chart bridge | per-slot direction/radius ledger, g_-, g_+, and balanced orbit metric | steps 001, 004, 005 -> step 006 | same-target bridge has the correct claim class | actual balanced slots, padded exact target, and Frobenius loss agree | explicit d_bal, sqrt(r) aggregation, and Entry <= varrho_PL / 4 | raw structural, chi, and P^(-D_stat) terms are displayed with g_- dependence | produced tuple equals consumed target object; no transformed surrogate | one-time entry; later path is controlled by PL | ledger + tape event -> Entry | step 006 produces d_bal and Entry; step 007 consumes | exact target and F=0 pass; first-entry boundary uses stated path bound | step-local conditional | None |
| PL chart, first exit, and Armijo displacement | local coercivity, stability, and convergence interface | balanced Jacobian lower bound, Taylor sandwich, smoothness, and path length | step 006 direct derivation -> step 006 output | same-target PL claim matches the setting | balanced-manifold gradient and exact Frobenius objective are aligned | lower and upper quadratic sandwich plus gradient PL and path-length first-exit relation | sigma_star, L_ch, mu_PL, and varrho_PL are explicit | chart controls the exact target residual, not a surrogate | contractive finite terminal flow; no forcing after discovery | Entry -> PL -> first-exit invariant -> terminal Armijo | step 006 produces; step 007 consumes | chart boundary and exact stationary target are named | step-local | None |
| terminal Armijo rate and quantitative specialization | public accuracy, runtime, and probability closure | PL decrease, direct rank substitution, and separate tails | steps 005--006 plus rank and accuracy IDs -> step 007 | final relative Frobenius claim matches target | exact F and balanced full-space procedure are unchanged | geometric factor with L_ch over mu_PL and log(1/epsilon) horizon | variables are mostly exposed; activation hierarchy must be restored before specialization | final residual is exactly the target Frobenius residual | finite terminal recurrence with zero forcing | Entry/PL -> Armijo -> rate and final theorem | step 007 produces public endpoint | T=0, R=0, F=0, and H=e=0 branches are explicit | step-local after upstream repair | None |
| baseline invariance and no-floor endpoint | exact/noiseless recovery obligation | exact CP equality, zero rollback, and stationary target | setting plus steps 001, 004, 006, 007 | source exactly matches inherited baseline | same objective, factors, balancing, and Frobenius metric | H=e=0 gives zero structural/numerical charge; T=0 returns zero; F=0 stops | no fixed pad, projection, label query, or additive floor | exact target equality; no residual bridge needed | zero forcing and no accumulation | static event -> exact branches -> terminal endpoint | steps 001, 004, 006, 007 produce baseline facts; final theorem consumes | all null and zero branches are traced | step-local | None |
| generated-output producer-consumer flow | theorem closure and provenance | explicit tables plus repaired conditional loop | all prior rows -> final assembly | flow is valid only after LP lower invariant and public-row bridge | every object stays in realized-factor/current-notation convention | producer before consumer, with conditional LP input and finite induction | outputs, consumers, final uses, and dependency paths are listed; LP self-loop needs typed preservation | final objects remain same target | structural and numerical forcing have finite ledger; activation is stopped | static -> Cert -> LP/U3 -> transition -> activation -> Entry -> PL -> rate | each row has a named producer; LP and Raw-J rows require repair | boundary branches are listed; current flow is not yet fully closed | sketch/interface defect | /proof-sketch |

`ACCEPTED` is not available because the rows marked `sketch/interface defect`
are theorem-facing sources consumed by later rows. They are repairable without
changing the idea or theorem contract.

## Blocking Issues

1. **The merged transition does not explicitly preserve the history-source
   type.** At `proof_sketch.md:83-142` and `:434-448`, LP_s is defined with
   `b_s >= ||A_s||_root,2`, but the displayed transition gives only
   `b_{s+1} <= b_s + beta_s`. It does not state that the exact one-step
   expansion proves `b_{s+1} >= ||A_{s+1}||_root,2` before applying the upper
   charge. Without that lower relation, the next transaction may consume an
   arbitrary b_s and the finite induction is circular at the generated-output
   boundary. Add the lower type-preservation clause and identify it as a U4
   transition subunit, while retaining the upper recurrence and rollback.
2. **The activation merge drops the certificate-scale lower bounds.** At
   `proof_sketch.md:234-294` and `:450-469`, the slab and seed-dominance
   inequality are present, but the sketch no longer states quantitative
   `s_s >= c tau_min a_n^3`, `Delta F_s >= c tau_min^2 a_n^6`, or
   `mu_s >= 2 P^(-D_mu)` bounds. It also omits the explicit
   `sqrt(r) nu_real` reserve and the derivative/path-length inequality that
   makes `H_tx` guarded updates reach Cert in polynomial work. “First score is
   positive” and a half-slack list lacking mu or gain do not discharge the
   observable certificate. Restore these inequalities inside U5-seed and
   U5-first-update, without splitting the controller-facing row.
3. **The exported Raw-J-rel target is not synchronized with setting.md.** At
   `proof_sketch.md:134-142`, `:420-425`, and `:530-554`, the current row is
   `C_z(structural + b_s + sqrt(r)e_I)`, whereas the binding setting and idea
   export `C_z(structural + sqrt(r)e_I)`. A conditional raw-history row is
   acceptable only if the same row or U4-induction immediately substitutes
   `b_s <= C_A Gamma_star(structural) + C_A sum chi_t` and states the resulting
   public interface. Otherwise downstream rate and Entry claims consume a
   different theorem target. Add the substitution and keep all chi terms raw.
4. **The coefficient selector dominance is displayed but not discharged.** At
   `proof_sketch.md:392-418`, U3-dominance is written as an inequality and the
   branches are listed, but the reduced roadmap no longer says why the
   certificate threshold, LP budget, static reserve, and exponent hierarchy
   imply it for every passing candidate. The mixed-support negative term is the
   source of the proof-generated label and must dominate structural, history,
   and numerical defects before positive-Hessian acceptance. Add the explicit
   threshold-to-dominance implication and retain the zero-selector, tie,
   singleton, last-label, and mixed rollback cases as U3 local units.

## Required Repair Bundle

1. In step 004, retain the seven-row decomposition but make the LP transition
   emit a typed `LP_{s+1}` with both `b_{s+1} >= ||A_{s+1}||_root,2` and
   `b_{s+1} <= b_s + beta_s`; state that rollback returns the identical typed
   record. The induction must start at `b_0 = 0`, prove the lower relation from
   the exact multilinear expansion, and then apply the finite upper budget.
   Affected units: U4-transition and U4-induction. Smallest retry target:
   `/proof-sketch`.
2. In step 003 or the beginning of step 004, distinguish the conditional
   history row from the public Raw-J-rel row. Either export the setting's row
   directly or state the exact substitution of the LP budget into the row and
   preserve the structural and chi terms without absorption. Affected output:
   `Theta`, `z`, and `Raw-J-rel`; assumptions remain the same eleven IDs.
   Smallest retry target: `/proof-sketch`.
3. In step 005, restore the quantitative seed interface: angular slab
   correlations, radial bracket, positive score, positive gain, `mu` threshold,
   Hessian and separation half-slacks, and the relation between derivative
   Lipschitz/path length, `Delta_tr`, and `H_tx`. Include the explicit
   `sqrt(r) nu_real` reserve and the finite independent-tape amplification
   after a passing seed is established. Affected units: U5-seed,
   U5-first-update, and U5-amplify. Smallest retry target: `/proof-sketch`.
4. In U3-selector, state the raw defect-to-negative-curvature dominance and
   its derivation from the certificate threshold and repaired LP budget. Keep
   the current target-blind protocol and analysis-only labels. Affected units:
   U3-selector and U3-branches. Smallest retry target: `/proof-sketch`.

Target-preserving repair check: all four repairs add producer interfaces,
quantitative inequalities, and branch traces inside the existing seven rows.
They preserve the current primitive assumptions, full-space algorithm, rank,
probability modes, exact Frobenius metric, material-partial scope, and
H=e=0/T=0 no-floor baseline. No idea-level theorem-contract change is
required by the reviewed defects.

## Review Rationale

The sketch is materially closer to a viable proof than the archived attempt-1
artifact and the reduction itself is reasonable. However, the omitted lower
prefix invariant and activation-scale inequalities are not stylistic detail:
they are the producers that make the next transaction legal and make a Haar
seed pass the observable certificate. The extra `b_s` in the current row also
changes the downstream exported interface unless explicitly eliminated by the
finite ledger. Because each defect has a same-setting repair that fits inside
the named U3--U7 local units, `REVISE_SKETCH` with score 6 is the deepest
required outcome; `IDEA_FAIL` would be premature.
