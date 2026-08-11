# Proof Sketch Review

## Reviewed Sketch Identity

- Sketch attempt: 1
- Reviewed branch: `perspective_1/idea_3`
- Reviewed roadmap: derive a finite exact-gradient envelope, prove
  all-history containment in the static closed tube, freeze every hidden gate,
  expand the exact trained network in initialization-gate path features,
  compare the path-independent best linear risk pointwise with each sampled
  trajectory, average under the unconditional gate-map law while charging
  unstable initializations, and finish by path counting and error-threshold
  monotonicity.

## Sketch Viability Score

9

## Sketch Review Status

ACCEPTED

## Smallest Retry Target

None

## Retry Mode

none

## Audit Summary

- Goal alignment: The seven-step roadmap proves the exact formalized goal for
  this conditional branch. It targets the single unconditional law
  \(\mathcal P_{\rm gate}\), preserves the order
  \(\exists\mathcal P_{\rm gate}\ \forall\mathcal D\ \forall h\), obtains
  error \(\varepsilon+\delta_0\), and then derives the stated
  \(2\varepsilon\) and \(S^{L_0}\) specialization without target drift.
- Dependency audit: The graph `step_001` through `step_007` is acyclic, every
  dependency points to an earlier producer, and no generated trajectory,
  gate, coefficient, event-conditioned risk bound, or representation witness
  is consumed before production.
- High-risk coverage: The sketch localizes all material obligations: exact
  fixed-\(\kappa\) gradient boundedness, noncircular tube containment,
  ball-wide gate stability, exact path algebra and ties, infimum/expectation
  order, feature-law measurability, complement charging and quantifier order,
  dimension/error specialization, and all baseline cases.
- Explicit-rate coverage: RO-1 and RO-2 state all exposed variables, forbidden
  hidden dependence, fixed quantities, probability mode, horizon mode, norm
  mode, admissibility relations, and public specialization inequalities. No
  asymptotic notation or hidden constant enters either conclusion.
- Assumption and citation plausibility: All four theorem assumptions are
  primitive and separately identified by stable `assump:` ids. The robust-tube
  premise remains a static initialization event; containment and gate
  stability are derived. The proof uses direct current-notation derivations
  and elementary finite-dimensional facts, not an unverified external theorem
  wrapper. The COLT 2020 citation supplies context for the probabilistic-
  dimension quantifier order, which is fully defined in `setting.md` and is not
  used as unproved proof authority.

## Early Obstruction Audit

- Limiting-case stress: For \(L=1\), the hidden-gate set is empty,
  \(M_r=+\infty\), \(G_r\le1\), \(\varphi(x)=x\), and
  \(d_{\rm path}=n_0=S\). For \(T=1\), containment covers states zero and one
  and the prescribed aggregate uses state one. Equality
  \(T\eta G_r=r\) is legal because both the envelope and invariant use the
  closed ball. At \(\delta_0=0\) the complement charge vanishes exactly; at
  \(\varepsilon=\delta_0=0\) both representation thresholds remain zero. Zero
  gradients, zero path weights, and aggregate cancellation do not break the
  exact score identity or fixed tie rule.
- Theorem-critical bridge support: Every bridge has a present source.
  `step_001` derives the exact full-gradient envelope from bounded coordinates,
  forward/backward recurrences, \(\lvert\ell'\rvert\le1\), and
  \(0\le\rho_\kappa\le1\). `step_002` supplies containment from the one-step
  recurrence and primitive finite budget. `step_003` supplies gates from the
  primitive positive margin and independently produced containment. Steps
  004--007 then use exact algebra, pointwise order, bounded expectation, and
  integer/threshold monotonicity.
- Exported-interface feasibility: Each producer fixes the exact object consumed
  later: the coordinate-sup full gradient, the same centered radius-\(r\)
  parameter state, the strict gate indicators in the stated feature map, the
  exact aggregate scalar, the path-independent best-risk functional, the
  unconditional pushforward law, and finally its actual dimension/error
  threshold. Controlled and uncontrolled defect classes are separated. The
  only uncontrolled class, arbitrary behavior on \(E_r^c\), is charged once by
  the unit risk bound and \(\Pr(E_r^c)\le\delta_0\).
- Theorem-critical mechanism witness gate: All seven mechanism witnesses are
  nonvacuous and source-matched. In particular, the static event is not used as
  if it already contained the trajectory; the concrete recurrence
  \(D_{t+1}\le D_t+\eta G_r\) produces that invariant. The positive source for
  gate stability is \(M_r>0\), and the positive probability/error sources for
  final closure are the universal expected-risk premise and the exposed event
  mass. No witness is merely a future-step or category label.
- Entry-state trace stress: The trajectory begins at \(D_0=0\); its first
  update satisfies \(D_1\le\eta G_r\le r\). Initialization preactivations are
  nonzero on \(E_r\), and after the first update the closed-ball invariant plus
  the ball-wide margin preserves their signs. The path formula holds at both
  states. The event is evaluated before the first sample; on its complement the
  feature remains in the unconditional law and is charged rather than removed.
  For \(L=1\), there is no gate mechanism to activate and the exact linear
  conclusion already holds.
- Obligation locality classification: Finite \(G_r\), all-history containment,
  gate stability, exact path/tie equality, pointwise infimum comparison,
  finite-law measurability and pushforward, event charging and quantifier
  closure, dimension/error specialization, and the stated baseline
  specializations are all `step-local`. Their primitive or earlier-derived
  sources and exact interfaces are already fixed in the sketch.
- Noncircular closure gate: The gradient envelope is derived from the whole
  static ball before a trajectory is considered. At induction time \(t\), ball
  membership is known before the envelope is applied, and the resulting
  numerical bound proves membership at \(t+1\); the closed boundary is included.
  Gate stability then uses independently produced containment. The final
  feature-law inequality uses a produced conditional comparison and does not
  assume representation quality.
- Mechanism-source and boundary stress: The fixed kink selector can be
  discontinuous, but `step_001` needs only its exact value in \([0,1]\), and on
  \(E_r\) `step_003` excludes every hidden kink throughout the ball. If
  \(M_r=0\), the gate source can vanish, but that regime is explicitly retained
  in \(E_r^c\) and charged in `step_006`. Maximal outward updates and terminal
  boundary equality are controlled by the finite budget without cancellation.
- Generated-output flow: The exact flow is primitives -> finite \(G_r\) ->
  all-history containment -> initialization-gate invariance -> exact path
  coefficients -> conditional best-linear-risk inequality -> unconditional
  \(\mathcal P_{\rm gate}\) witness -> polynomial/\(2\varepsilon\) statement.
  Every generated output has named consumers and a dependency path; the
  path-dependent coefficient ends at `step_005` and is never exported as the
  feature law.
- Source-to-claim adequacy: The direct gradient derivation uses the exact
  bias-free architecture, Boolean-input normalization, full vectorized
  coordinate norm, logistic factor, and fixed \(\kappa\) convention. The gate
  derivation uses the exact continuous forward preactivations and the same
  strict indicator as the feature map. The path derivation uses no surrogate or
  tangent feature. Tower/Tonelli applies to bounded nonnegative risks. The
  finite gate-map pushforward and threshold monotonicity have exactly the claim
  types needed downstream. No cited result has an unresolved convention or
  hypothesis interface.
- Residual-to-target adequacy: Containment transfers the exact iterate into the
  exact ball under the same sup norm, so its residual is zero. Gate production
  and path expansion are exact; moving weights are wholly represented in the
  coefficient. The risk comparison uses the same \(\mathcal D,h\), fresh-
  evaluation risk, strict loss, and tie convention. On \(E_r\) the residual is
  zero; on \(E_r^c\) it is at most one and therefore contributes at most
  \(\delta_0\). Dimension specialization introduces no extra coordinate or
  factor.
- Baseline invariance audit: The inherited branch baselines are the gate-free
  \(L=1\) exact linear representation, exact removal of the event penalty when
  \(\delta_0=0\), zero-score tie preservation, \(d_{\rm path}=S\) at \(L=1\),
  equality-compatible counting at \(S=1\), and zero error threshold when
  \(\varepsilon=\delta_0=0\). The first transition and stationary/zero cases
  are traced above, and the exact algebra plus one-time event split preserves
  each conclusion without a weaker surrogate.
- Scope-accumulation compatibility: For containment, the accumulated forcing is
  the nonnegative worst-case sum
  \(\sum_{q<t}\eta G_r=t\eta G_r\); each update charges \(\eta G_r\), and the
  primitive relation \(T\eta G_r\le r\) controls the complete fixed horizon.
  Gate-change defects are source-excluded throughout that tube. Path scores
  accumulate by exact finite summation with zero residual. The unstable-event
  defect is not iterated: it is a single bounded term of mass at most
  \(\delta_0\).
- Scope and dependence consistency: The architecture, \(L_0,T,\eta,r\), error
  parameters, conventions, and initialization law are fixed before
  \((\mathcal D,h)\). The same feature law is then used for every pair. The
  learner expectation remains joint over initialization and samples, while the
  final expectation is only over the unconditional feature law. No hidden
  dependence on \(n,\mathcal H,\mathcal D,h\), widths, or trajectories enters a
  constant.
- Generated-condition provenance: Tube membership, gate stability, path
  coefficients, conditional representation risk, and the final feature-law
  witness are all marked derived and assigned to steps. `assump:robust-tube`
  contains only the static initialization-event probability and does not hide a
  realized trajectory invariant.
- Citation and tool applicability: The proof-critical tools are direct
  forward/backward bounds, continuity and the intermediate value theorem on a
  convex ball, exact finite path expansion, the elementary feasible-candidate
  inequality, pushforward expectation, the tower property/Tonelli for bounded
  risks, and integer/threshold monotonicity. Their current objects and
  hypotheses are stated in the sketch. The two parent papers identify the
  protocol and probabilistic target but supply no theorem wrapper that needs an
  undisclosed discharge. Prior `idea_2` artifacts are failure context only and
  are not proof evidence.
- Same-setting repair plausibility: No repair is presently required. Each hard
  obligation can be proved locally from its stated primitive or accepted prior
  interface without adding an assumption, changing the protocol, changing the
  metric or probability mode, or weakening the formalized conditional goal.
- Target-preserving bridge-repair gate: Passed. There is no missing bridge. The
  conditional theorem and probabilistic target are already the explicit
  contract in `setting.md`; the sketch neither attempts nor implies recovery of
  the unconditional deterministic source target.
- High-risk obligation classes: Structural nondegeneracy, recursive
  containment, selector discontinuity, exact versus approximate feature
  transfer, mode conversion, event charging, measurability, scope accumulation,
  explicit dependence, and public specialization all have exact local
  interfaces and boundary tests.
- Source/progress fidelity: The result is consistently labeled `conditional`.
  It keeps the universal learner premise and exact source SGD protocol but adds
  constant depth and the robust tube and changes the conclusion to
  probabilistic dimension \(\operatorname{dc}_{\varepsilon+\delta_0}\). The
  unconditional regime, general depth, and deterministic exact
  \(C TS\) conclusion remain explicitly open, so acceptance cannot be read as
  full resolution of Open Question 1.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Finite exact-gradient envelope \(G_r\) | Static boundedness; activates the tube budget | Direct forward/backward recurrence in `step_001` | Primitive architecture, finite ball, logistic loss, fixed \(\kappa\) | Bounds every coordinate of the exact selected full gradient, which is precisely the supremum defining \(G_r\) | Same bias-free network, Boolean input scale, coordinate norm, and \(\rho_\kappa\in[0,1]\); selector continuity is not assumed | With \(B=\max(1,\lVert\theta^{(0)}\rVert_\infty+r)\), \(a_\ell=n_{\ell-1}Ba_{\ell-1}\), \(b_\ell=n_{\ell+1}Bb_{\ell+1}\), \(G_r\le\max_\ell b_\ell a_{\ell-1}<\infty\) | Raw bounded coordinates and \(\lvert\ell'\rvert\le1\) export the exact full-gradient sup-norm envelope; all layers/coordinates are included | Exact object and norm; no surrogate residual | Static depth/width products may be large but are finite; no accumulated defect | Primitive ball/architecture -> `step_001`; no trajectory bound is assumed | Producer `step_001`; consumers `step_002` and event interfaces through `step_006` | Kinks, zero weights, \(\kappa=0,1\), finite arbitrary \(r\), and \(L=1\) give a valid bound; for \(L=1\), \(G_r\le1\) | `step-local` | `None` |
| All-history closed-ball containment | Generated invariant; keeps every source trajectory in the validity region | `step_001`, exact update, and \(T\eta G_r\le r\) from `assump:robust-tube` | Accepted prior output plus primitive static event | Exact current parameter in the same ball and coordinate norm consumed by gate stability | Same center, closed radius, all-layer update, all \(x\) and labels; no distribution-specific history | \(D_0=0\), \(D_{t+1}\le D_t+\eta G_r\), hence \(D_t\le t\eta G_r\le r\) for \(0\le t\le T\) | Raw one-step bound and terminal budget export membership for every labeled history, not merely realized/high-probability paths | Parameter residual to target ball is exactly \(D_t\); it is dominated at radius \(r\) | Arbitrary-sign outward increments are charged by \(\eta G_r\) each; total nonnegative forcing is \(t\eta G_r\), finitely budgeted through \(T\) | At time \(t\), prior membership permits use of ball supremum; recurrence then proves time \(t+1\), including the boundary | Producer `step_002`; consumers `step_003`--`step_005`, with final use in stable-risk closure | First update, zero gradient, maximal outward motion, \(T=1\), and equality \(T\eta G_r=r\) pass because the ball is closed | `step-local` | `None` |
| Ball-wide gate stability and fixed feature signature | Structural nondegeneracy/invariant; fixes one initialization feature map | \(M_r>0\), continuity, connected ball, and `step_002` | Primitive static margin plus accepted containment | A sign change would force the exact consumed preactivation through zero; the margin excludes it | Forward ReLU preactivations are continuous under the exact architecture; fixed \(\kappa\) is irrelevant away from zero; \(L=1\) is gate-free | \(\lvert u_{\ell,j}(\theta,x)\rvert\ge M_r>0\) on the ball and IVT imply \(\operatorname{sign}u(\theta,x)=\operatorname{sign}u(\theta^{(0)},x)\) | Raw uniform margin exports precisely the strict indicators used in \(\varphi_{\theta^{(0)}}\), for all inputs/states/histories | Exact gate identity; zero residual on \(E_r\) | Gate-crossing defect is source-excluded throughout the contained horizon; arbitrary complement behavior is deferred to one explicit charge | Static margin exists before consumption; containment is independently produced before gate transfer | Producer `step_003`; consumer `step_004`; final use is a common path feature map | Initialization and first-update signs, ball-boundary states, \(M_r=0\) complement, and gate-free \(L=1\) are all explicitly handled | `step-local` | `None` |
| Exact path expansion, aggregate coefficient, and tie preservation | Exact output interface; linearizes each actual predictor in the fixed gate map | Direct path algebra plus `step_003` | Current-notation identity from exact network equations and accepted gate output | Products of current trained weights supply every coefficient while initialization gates and input supply every feature coordinate | Same no-bias architecture, full path index, latter-half time set, scalar score, and fixed \(s_0\) convention | \(f_\theta(x)=\langle c(\theta),\varphi_{\theta^{(0)}}(x)\rangle\); \(w_\omega=\sum_{t=\lceil T/2\rceil}^T c(\theta^{(t)}(\omega))\); hence \(A(x)=\langle w_\omega,\varphi(x)\rangle\) | Fixed gates and exact weights export a feasible vector in exactly \(d_{\rm path}\) coordinates; path/sample dependence remains only in the coefficient | Scalar residual is identically zero for every \(x\), including score zero | Finite exact sum; termwise residual zero, so no approximation accumulates | `step_002`/`step_003` produce state/gates before algebra; no representation property is assumed | Producer `step_004`; consumer `step_005`; coefficient itself terminates there | \(t=0\), first update, \(T=1\), zero path weights, cancellation to zero, arbitrary \(\kappa\), and \(L=1\) preserve exact equality and ties | `step-local` | `None` |
| Pointwise infimum before sample-path expectation | Order/mode bridge; converts each sampled SGD predictor to best fixed-feature risk | Exact equality from `step_004` and feasible-candidate order | Elementary order applied in current notation | The path-independent infimum is no larger than every path-dependent feasible coefficient; no reverse or illegal interchange is used | Same \(\mathcal D,h\), fresh-evaluation risk, feature map, strict error, and \(s_0\) tie | For fixed \((\mathcal D,h,\theta^{(0)}\in E_r)\), \(F=\inf_wR(w,\varphi)\le R(w_\omega,\varphi)=\mathcal L_\omega\) for every \(\omega\), then \(F\le\mathbb E_\omega\mathcal L_\omega\) | Exact path candidate is available for every history; the optimizer need not be attained or selected measurably | Zero risk-interface residual; path dependence is controlled by candidate comparison and not exported | Bounded sample-path averaging only; no accumulated defect | `step_004` produces each candidate before `step_005`; \(F\) is defined before sampling \(\omega\) | Producer `step_005`; consumer `step_006`; \(w_\omega\) has no downstream consumer | Nonattained infimum, deterministic paths, zero scores, and \(T=1\) pass without exchanging \(\inf\) and expectation | `step-local` | `None` |
| Measurable finite gate-map law and pushforward identity | Generated-law/interface bridge; identifies the exact outer expectation in \(\operatorname{dc}_\alpha\) | Finite \(\mathcal X\), finite path index, Borel strict-gate indicators, and pushforward definition | Direct finite-space measurability in `step_006` | \(F\) depends only on the generated feature map; duplicate initializations inducing one map are handled by pushforward mass | Feature coordinates are exactly in \(\{-1,0,+1\}\) and use the setting's strict gate convention; no optimizer selector is used | \(\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}[\inf_wR(w,\varphi)]=\mathbb E_{\theta^{(0)}}F(\theta^{(0)})\) | Raw initialization-to-gate map has finite range; this exports a measurable law fixed before \((\mathcal D,h)\) and the exact best-risk functional | Same feature object on both sides; residual is zero | Static pushforward, so no temporal or probabilistic defect accumulation | Initialization law -> measurable gate map -> \(\mathcal P_{\rm gate}\); representation quality is not assumed | Producer/source in `step_006`; consumers are event split, final \(\operatorname{dc}\) witness, and `step_007` | Repeated maps, zero feature coordinates, \(L=1\), and complement initializations remain in the finite law | `step-local` | `None` |
| \(E_r^c\) charge and universal feature-law quantifier closure | Probability-mode conversion/final theorem closure | `step_005`, \(0\le F\le1\), `assump:robust-tube`, and `assump:universal-expected-success` | Accepted conditional output plus two primitive probability controls and tower property | Stable risk is bounded by the exact source loss; unstable risk is bounded in the same metric by one | Event depends only on initialization; source loss expectation includes the same initialization and sample laws; no conditioning changes \(\mathcal P_{\rm gate}\) | \(\mathbb EF\le\mathbb E[1_E\mathcal L]+\Pr(E^c)\le\varepsilon+\delta_0\) | Raw stable comparison, unit risk, and event mass export one unconditional law chosen before all later \(\mathcal D,h\) | Stable residual zero; sole uncontrolled residual is at most \(1\) on a set of mass \(\delta_0\), exactly adequate at additive scale \(\delta_0\) | Complement defect has adversarial sign but bounded magnitude and one-time budget; it is not iterated or union-bounded over histories | Static event and `step_005` precede split; universal premise controls the unconditioned nonnegative loss term | Producer `step_006`; consumers `step_007` and final theorem; final order is \(\exists\mathcal P_{\rm gate}\forall\mathcal D\forall h\) | Event fixed before first sample; \(E^c\) is charged, not discarded; \(\delta_0=0\), \(\varepsilon=0\), and arbitrary complement predictors pass | `step-local` | `None` |
| \(d_{\rm path}\le S^L\le S^{L_0}\) and \(\operatorname{dc}_{2\varepsilon}\) monotonicity | Quantitative specialization/public conditional corollary | Positive integer widths, parameter-count sum, `assump:constant-depth`, \(\delta_0\le\varepsilon\), and `step_006` | Primitive ranges plus accepted witness and direct arithmetic | Each path factor is bounded by an actual parameter-count summand; larger allowed error reuses the same law | Same Euclidean feature dimension and tie-resolved risk definition; no mode or object conversion | \(n_\ell\le n_{\ell+1}n_\ell\le S\); multiply to get \(d_{\rm path}\le S^L\le S^{L_0}\); \(\varepsilon+\delta_0\le2\varepsilon\) gives \(\operatorname{dc}_{2\varepsilon}\le\operatorname{dc}_{\varepsilon+\delta_0}\) | Raw path map has exactly \(d_{\rm path}\) coordinates; no lift or hidden factor; same witness is feasible at the enlarged threshold | No dimension or risk residual is dropped | Finite multiplication over \(L\); no stochastic accumulation | `step_006` produces witness before `step_007`; arithmetic does not assume corollary | Producer `step_007`; consumer final assembly | \(L=L_0=1\), \(S=1\), \(\delta_0=\varepsilon\), and \(\varepsilon=0\) all preserve inequality directions/equalities | `step-local` | `None` |
| Baseline invariance and conditional source/progress boundary | Baseline/public-claim integrity; prevents overclaiming full source resolution | Exact algebra and event split from steps 004--007 plus explicit `setting.md` theorem contract | Accepted derived interfaces and binding source-alignment metadata | Mechanisms preserve \(L=1\), zero ties, \(\delta_0=0\), \(S=1\), and zero error exactly; progress label matches added assumptions and relaxed target | Fixed source SGD/tie conventions remain unchanged; only constant depth, robust tube, and probabilistic conclusion are explicitly added | Gate-free identity; zero scalar residual; complement term \(0\) at \(\delta_0=0\); \(d_{\rm path}=S\) at \(L=1\); thresholds remain \(0\) at \(\varepsilon=\delta_0=0\) | Produced objects equal the consumed baseline objects, not transformed surrogates; final claim is only the stated conditional probabilistic theorem | Every baseline residual is zero; no weaker stopped, approximate-score, or conditioned-law surrogate replaces it | No additional accumulated defect beyond the already controlled finite horizon/event split | Prior rows produce each baseline before final specialization; source gap is metadata, not an assumed theorem consequence | Producers steps 004, 006, 007; consumer final conditional theorem and its source-positioning statement | First transition, stationary zero-gradient, gate-free, zero-score, zero-complement, and zero-error cases pass; unconditional deterministic target remains outside the claim | `step-local` | `None` |

## Blocking Issues

None

## Required Repair Bundle

None

## Review Rationale

`ACCEPTED` is warranted because the sketch is structurally complete and every
theorem-critical hard obligation is genuinely `step-local`. The robust-tube
assumption is used only as a static primitive source; a concrete, noncircular
finite-horizon recurrence derives trajectory membership before the positive
margin derives gate stability. Exact path algebra then eliminates approximation
and tie residuals, and the pointwise infimum comparison preserves the only legal
optimizer/expectation order. The finite gate-map law, unconditional event split,
and one-time \(E_r^c\) charge produce the required feature law with the correct
universal quantifiers. Finally, the dimension and error specializations are
exact direct inequalities. The branch remains explicitly conditional and leaves
the unconditional deterministic source problem open, but that is the binding
formalized progress type rather than a hidden defect. The sketch is ready for
global proof diagnostics and subsequent step-level proof work.
