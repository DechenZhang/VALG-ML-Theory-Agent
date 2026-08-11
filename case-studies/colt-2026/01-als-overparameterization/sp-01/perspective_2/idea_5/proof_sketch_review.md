# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: perspective_2/idea_5
- Sketch attempt: 2
- Review mode: strict early-viability review with automatic routing after review.
- Reviewed setting: perspective_2/idea_5/setting.md (unchanged).
- Reviewed sketch: perspective_2/idea_5/proof_sketch.md (attempt 2).
- Supporting artifacts: idea.md, technical_survey.md, and the attempt-1
  review in proof_history/sketch_002/proof_sketch_review.md.
- Goal mode: target-spec, material-partial, with immediate entry from the
  committed state into the same-target Euclidean balanced PL chart.

## Sketch Viability Score

2

## Sketch Review Status

IDEA_FAIL

## Smallest Retry Target

/subagent-idea-generator

## Retry Mode

new_idea

## Audit Summary

- Goal alignment: The source objective, rank k = Theta(r^(3/2) log^2 r),
  smoothing model, separate instance/tape probabilities, rollback contract,
  and arbitrary relative-error endpoint are copied faithfully. The fixed
  projected/retracted discovery rule, however, forces an output class that is
  incompatible with the required same-target chart for an allowed instance.
  The attempt-2 sketch itself says that no target-faithful step graph exists;
  this is a theorem-contract obstruction, not a missing proof detail.
- Dependency audit: Sketch Steps is explicitly None. Static geometry and the
  scalar radial identity have legal local producers, but weighted certificate
  isolation, protected-state preservation, the one-transaction probability,
  and chart entry have no legal producer. The downstream tape, PL, and rate
  claims therefore cannot be allocated as step-local work.
- High-risk coverage: The sketch identifies the projected-orthogonality
  obstruction, the weak-slot boundary, the weighted leakage term, and the
  failed generated-output flow. These stress tests are sufficient to reject
  the end-to-end theorem under the unchanged setting; adding more roadmap
  detail cannot change the produced factor geometry.
- Explicit-rate coverage: All exposed quantities are named, but the allowed
  family has committed-to-orbit distance Omega(kappa nu), while any positive
  PL chart has radius O(kappa^{-1}). With kappa = r and
  nu = (400 r log(2r))^{-1}, their ratio is Theta(r/log r). The independent
  weighted ratio kappa^6 mu_real^2 is also unbounded. No choice of fixed proof
  exponents can repair either scale.
- Assumption and citation plausibility: The construction uses only primitive
  assumptions in setting.md; the Gaussian event, orthogonality, and dormant
  sequence are direct current-notation facts. The cited strict-saddle and
  Orth-ALS papers are motivation, not theorem wrappers, and cannot supply a
  bridge from an orthogonalized output to a nonorthogonal target orbit.

## Early Obstruction Audit

- Limiting-case stress: Fix c0 = 1, c_rho = 3, kappa = r,
  rho = r^(-3), and nu = (400 r log(2r))^(-1). In each mode take normalized
  columns e1 and nu e1 + sqrt(1-nu^2)e2, take a third direction e3, and
  complete with orthonormal directions. Give labels 1 and 2 norm kappa,
  label 3 norm kappa^(-1), and keep all other norms in
  [kappa^(-1), kappa]. The modewise Gram deviation is nu, so the
  near-orthogonality assumption and smoothing margin hold for all large r.
  Gaussian perturbations have norm O(r^(-3)); with probability at least
  1-r^(-20), strong radii remain in [kappa/2,2kappa], the weak radius
  remains in [1/(2kappa),2/kappa], and the strong inner product is at least
  nu/2. This persistence event intersects every claimed instance event of
  probability at least 1-r^(-10), so it cannot be removed by conditioning.

  The setting requires every discovery trial to remain in the current
  protected complements (setting.md Pi_M^I; proof_sketch.md:24-39).
  Projection, normalization, and retraction therefore give, in every mode,
  exact orthogonality of all committed normalized directions. If two strong
  committed directions u1,u2 are matched to the two strong target directions
  and alpha_j = ||m_j-u_j||, then
  nu/2 <= |<m1,m2>| <= alpha_1 + alpha_2,
  because <u1,u2> = 0. If a matched radius differs by a fixed fraction of
  kappa, the radius error is already that large; otherwise the preceding
  inequality gives
  dist(Q_commit,Z_star) >= c_orth kappa nu. This is the same balanced
  factor metric and sign/permutation orbit as the target chart.

  For the chart boundary, omit the weak component and optimize the other
  r-1 balanced slots. At zero smoothing, choose the strong slots at the exact
  restricted critical point; the weak atom is orthogonal to them in the
  tensor contractions, while the weak slot at joint zero has zero Euclidean
  factor gradient by cubic homogeneity. Under the displayed tiny smoothing,
  the restricted strong critical point persists by nondegeneracy and the
  implicit-function theorem. To avoid any coordinate issue at g=0, set the
  weak balanced radius to t > 0 and let t tend to zero. The weak gradient is
  O(tau_3 t^2), the loss stays bounded below by a constant multiple of
  tau_3^2, and hence
  ||grad_bal F(Q_t)||^2/F(Q_t) = O(t^4) -> 0,
  while dist(Q_t,Z_star) = O(kappa^(-1)). Thus every chart on which the
  required positive PL inequality holds must have radius < C_dorm/kappa.
  Since kappa^2 nu = r/(400 log(2r)) -> infinity, the forced committed
  distance c_orth kappa nu is eventually larger than every admissible
  PL-chart radius. This contradiction holds even on an ideal tape that
  certifies every transaction.
- Theorem-critical bridge support: The projected-complement rule is a
  concrete source for exact modewise orthogonality, and the dormant sequence
  is a concrete source for failure of positive PL away from the exact orbit.
  Together they disprove the required committed-state-to-chart bridge. A
  later Jacobian or Taylor calculation can be valid only after chart entry;
  it cannot produce entry from a state separated by the lower bound above.
- Exported-interface feasibility: The static good-instance event and scalar
  radial bracket export the stated objects. The intended certificate export
  (unique label, direction, response ratio, and protected span) has no uniform
  weighted margin. More decisively, the intended chart-entry export has raw
  committed factors that are exactly modewise orthogonal and a consumed target
  orbit that is not; the residual-to-target transfer is false at the required
  factor scale. No positive threshold, capture score, or line-search bound
  supplies this missing interface.
- Theorem-critical mechanism witness gate: The witness for the negative result
  is concrete: projected retraction implies U_M^T U_M = I, the B.1-B.2
  inequalities give orbit separation, and the weak-slot t-to-zero sequence
  gives the B.3-B.4 PL obstruction. The weighted isolation witness also
  exposes the opposing term tau_l mu^2. These are theorem-contract witnesses
  for failure, not shallow future-step labels.
- Entry-state trace stress: The first scratch direction is legal. At the
  second successful commit, retraction into the first protected complement
  makes the pair exactly orthogonal, even when the two target directions have
  inner product nu. At the terminal boundary, the weak slot can enter at
  g = t tending to zero, with vanishing gradient-to-loss ratio while the
  target weak radius is kappa^(-1). The mechanism is therefore active in the
  trace while the theorem-facing chart conclusion is false.
- Obligation locality classification: Static concentration, radial calculus,
  rollback, and local Armijo smoothness are step-local. Weighted
  certificate-to-label isolation, protected-span transfer, all-commit target
  matching, and same-target chart entry are idea/theorem-contract defects.
  They cannot be reclassified as step-local because their source is
  incompatible with the required output class.
- Noncircular closure gate: Exact rollback removes failed-probe forcing, but it
  does not remove the accepted orthogonalization defect. No noncircular
  producer can turn modewise-orthogonal committed factors into the nonorthogonal
  target orbit while protected slots remain frozen. A Haar success event can
  change probability, not this deterministic invariant.
- Mechanism-source and boundary stress: For a weak label j and a stronger
  label l coherent with it in two modes, a mode contraction contains
  tau_l <m_M1,l,m_M1,j><m_M2,l,m_M2,j>, which can be
  Theta(tau_l mu_real^2). At the radial root the weak angular gap is of
  order tau_j^2, so the perturbation-to-gap ratio can be
  tau_l mu_real^2/tau_j, as large as kappa^6 mu_real^2. The allowed range
  permits kappa = r, mu_real asymp nu, and ratio
  Theta(r^4/log^2 r). This is an independent failure of the weighted
  isolation producer. The exact orthogonal/equal-weight limit passes, but
  the theorem is uniform over the nonzero near-orthogonal boundary too.
- Generated-output flow: The legal flow stops at static geometry and scalar
  transaction identities. There is no legal producer for unique-label
  isolation or a target-compatible protected invariant; consequently the
  conditional p_ang, injective all-commit event, chart entry, PL constants,
  and public relative-error rate cannot be consumed downstream.
- Source-to-claim adequacy: The counterexample uses the exact normalized
  columns, balance map, projected complements, factor Euclidean metric, and
  signed/permuted orbit in the setting. It does not rely on a different
  objective, an unproved citation, or a population surrogate. Cited papers
  in idea.md and technical_survey.md do not state the current projected GD
  theorem and therefore cannot discharge the failed bridge.
- Residual-to-target adequacy: The produced object is the actual committed
  factor tuple; the consumed object is Z_star. The direct lower bound
  c_orth kappa nu is in the consumed balanced Euclidean metric. The dormant
  sequence gives the required target-scale upper bound on any positive-PL
  neighborhood. There is no residual decomposition or dominance inequality
  that can erase these deterministic terms.
- Baseline invariance audit: The exact orthogonal/equal-weight specialization
  (nu = 0) retains the intended baseline and radial certificate. This does not
  discharge the baseline obligation for the stated theorem, which also
  includes every allowed nonzero nu. Replacing immediate chart entry by a
  stopped, conditional, or post-polishing surrogate would change the
  conclusion.
- Scope-accumulation compatibility: Orthogonality is preserved exactly at
  every commit, so the mismatch is persistent and nondecaying across the
  repeated scope. Rollback controls failed transactions only. There is no
  finite-budget, potential-drop, projection, or coupling relation that turns
  this accepted defect into a summable residual.
- Scope and dependence consistency: The choices kappa = r, rho^(-1) = r^3,
  and nu = Theta((r log r)^(-1)) satisfy all declared polynomial regimes.
  Both diverging ratios are exposed theorem variables, so hidden constants
  cannot absorb them.
- Generated-condition provenance: Good-instance geometry and rollback are
  derived outputs. Isolation, protected-span accuracy, p_ang, all-commit
  coverage, and chart entry are also theorem-facing generated outputs, not
  admissibility assumptions. Their missing/false producers are recorded below.
- Citation and tool applicability: The strict-saddle and Orth-ALS references
  provide motivation for orthogonal or differently updated procedures. No
  cited statement has the current asymmetric residual, projected/retracted
  state, unequal weights, and same-target Euclidean chart as its conclusion;
  source-convention and conclusion-interface matching therefore fail for the
  blocked claims.
- Same-setting repair plausibility: A sketch-only repair cannot change the
  exact orthogonality invariant or the target orbit. A valid repair must
  change at least one primitive assumption (for example a weight-aware
  incoherence relation), the discovery procedure (oblique or jointly polished
  deflation), the terminal scope (a new global-entry phase), or the target
  metric/conclusion. Each is an idea/theorem-contract change.
- Target-preserving bridge-repair gate: Failed. Keeping the current setting,
  protocol, metric, immediate chart-entry conclusion, and uniform
  kappa <= r^c0 scope leaves the B.1-B.4 contradiction unchanged. The
  smallest valid route is a new idea, not another sketch decomposition.
- High-risk obligation classes: Structural angular gap, generated invariant,
  repeated-scope accumulation, adaptive probability amplification, baseline
  entry, explicit dependence, and terminal no-floor PL are all affected. The
  static and scalar subclaims remain reusable but cannot make the end-to-end
  target viable.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Realized good-instance event | Static norm, Gram, nonvanishing, exact baseline | Normalized Gaussian concentration and Schur identities | Primitive setting assumptions | Matches realized A,B,C,T | Same normalized-factor and Frobenius conventions | Base margin plus perturbation below displayed thresholds | Norms, Gram margin, finite union explicit; export feasible | Produced factors and target tensor are consumed objects | Finite static error only | Primitive assumptions to static event; noncircular | Static event feeds all dynamic modules | Explicit family remains on event with positive intersection probability | step-local | None locally |
| Radial bracket, capture, rollback | Observable activation and state restoration | Direct scalar identity, bisection, joint-zero reset | Transaction protocol and calculus | Exact for fixed directions and positive score | Same residual, radius, and loss conventions | d is monotone in g^3; root and state equality are exact | Current score/bracket/displacement observable; export feasible | Uses actual pre-scratch residual | Failed path erased; only work accumulates | Protocol algebra is independent | Produces bracket/capture for certificate/tape consumers | Positive-score and rollback boundaries pass | step-local | None locally |
| Protected-complement invariant | Exact modewise orthogonality of commits | Projection Pi_M^I, normalization, retraction | Setting protected projector plus sketch lines 24-39 | Exact source proves the invariant, not target approximation | Same modewise span convention | New direction orthogonal to all prior directions; U_M^T U_M = I | Projection is a raw control but exports an incompatible class | Nonorthogonal target orbit cannot be reached in factor metric | Accepted defect persistent across commits | Noncircular exact invariant | Protected state produces orthogonal commits consumed by chart | Second-commit nonzero-nu trace fails target comparison | idea/theorem-contract defect | /subagent-idea-generator |
| Weighted certificate-to-label isolation | Unique label, direction and response ratio | Orthogonal critical equations plus missing perturbation lemma | Motivation only; no current theorem wrapper | Fails for weak labels under allowed weights | Algebraic notation matches; quantitative source absent | Need tau_l mu^2 plus all errors much smaller than tau_j; ratio can kappa^6 mu^2 | Gradient, contractions, Hessian, capture do not dominate weighted leakage | Probe response cannot transfer to one atom at target scale | Leakage persists in frozen residual; no absorption | No producer for all weight scales | Intended producer feeds span, tape and chart; first output unsupported | Strong/weak two-mode-coherent variant gives unbounded leakage ratio | idea/theorem-contract defect | /subagent-idea-generator |
| Protected span and residual invariant | Span membership, duplicate exclusion, Good(I) preservation | Would require projector perturbation and weighted error ledger | Intended step only; no primitive source | Fails after exact orthogonalization/output mismatch | Same spans named but target interface unsupported | Need coherent-error and tau_min dominance; unavailable | Per-certificate O(zeta+mu) cannot export matrix/tensor target scale | Produced orthogonal factors have Omega(kappa nu) mismatch | Accepted errors persist; rollback removes failed only | Intended step path breaks at isolation | Would feed every later transaction and chart | Last-unresolved/coherent cases blocked | idea/theorem-contract defect | /subagent-idea-generator |
| One-transaction p_ang | Conditional reachability and finite stopping | Haar small-ball plus weighted strict-saddle trajectory | Random tape supplies randomness only | Haar law cannot imply certificate without gap/trichotomy | Projected Haar is otherwise compatible | Need score preservation, curvature gap, quantified progress, H_tx budget | Candidate correlations raw; no deterministic certificate export | Perfect certificate still cannot fix final metric mismatch | Near-flat branches may roll back; successful commits retain defect | No noncircular producer | Intended step feeds tape amplifier; output absent | First radial activation may pass; ideal tape still fails chart | idea/theorem-contract defect | /subagent-idea-generator |
| All-commit finite-tape event | Injective coverage and polynomial work | Stopped Bernoulli amplification conditional on p_ang | Random tape plus unsupported upstream outputs | Amplifier valid only conditionally | Fresh independence compatible | Needs proved per-state success and duplicate exclusion | Tape is raw control; no legal success/target export | Orthogonal commits not same-target even if labels distinct | Failed forcing zero; accepted mismatch accumulates | Depends on unsupported isolation/probability | Intended output feeds chart; no valid final path | Ideal all-success path contradicted by B.2-B.4 | idea/theorem-contract defect | /subagent-idea-generator |
| Same-target chart entry | Basin membership and target matching | Signed matching and local Jacobian would be downstream only | No source for entry | False on allowed family | Target orbit and metric exactly as setting | Need dist(Q_commit,Z_star) < varrho; lower bound conflicts with PL radius | Committed factors known; no control shrinks inner-product mismatch | Direct lower bound is in consumed metric | Deterministic persistent defect | No noncircular producer | Intended all-commit output to chart is broken edge | Dormant sequence forces radius below C/kappa | idea/theorem-contract defect | /subagent-idea-generator |
| PL invariance and no-floor recurrence | Local convergence and arbitrary epsilon | Balanced Jacobian/Taylor/Armijo only local | Literature motivation; no entry theorem | Locally plausible only after entry | Same gauge/objective | PL and first-exit require chart membership | Accepted-step bound available; chart membership absent | Exact endpoint same-target; start is not | Entry defect inherited; no rollback term helps | Circular if PL is used to prove entry | Downstream only | Dormant sequence violates PL when included | idea/theorem-contract defect | /subagent-idea-generator |
| Public rate and probability specialization | Final material-partial theorem | Arithmetic after all dynamic interfaces | Rank/accuracy assumptions plus intended outputs | No end-to-end source | Norm/probability modes otherwise aligned | Requires isolation, p_ang, all-commit, chart and PL inequalities | Exposed variables listed; upstream exports missing | Relative target meaningful only after valid terminal start | Finite discovery cannot hide deterministic mismatch | Consumes blocked outputs | Final consumer has no legal predecessors | Baseline does not cure nonzero-nu family | idea/theorem-contract defect | /subagent-idea-generator |

## Blocking Issues

1. Deterministic projected-orthogonality/chart contradiction. The fixed
   discovery rule projects and retracts every new direction into protected
   complements, so all committed mode factors are exactly orthonormal. The
   allowed kappa = r, nu = (400 r log(2r))^(-1) family has two strong target
   directions with realized inner product at least nu/2, forcing
   dist(Q_commit,Z_star) >= c kappa nu. A weak component of radius kappa^(-1)
   gives a zero-gradient/near-critical dormant sequence at distance
   O(kappa^(-1)), so every positive-PL chart has radius O(kappa^(-1)).
   Since kappa^2 nu -> infinity, immediate chart entry is false. Repair
   changes the procedure, scope, metric, or conclusion.
2. Weighted angular leakage has no uniform gap. For an allowed strong/weak
   pair coherent in two modes, the weak angular gap is order tau_j^2 while
   cross-channel leakage can be tau_l mu_real^2. The ratio can be
   kappa^6 mu_real^2 = Theta(r^4/log^2 r). Certificate thresholds and fixed
   exponents do not control it; repair requires a new weight-aware source
   condition or extraction mechanism.
3. Generated-output flow terminates before theorem-facing outputs. Static
   geometry, radial bracketing and rollback are locally derivable, but there
   is no producer for weighted isolation, a target-compatible invariant, a
   uniform p_ang, or chart entry. Tape amplification, PL, and public-rate
   rows cannot be promoted to step-local work.
4. Same-setting retry is impossible. Replacing the unsupported
   P^(-D_dir) ledger by the actual certificate scale, adding a more detailed
   Haar event, or refining Armijo constants leaves the exact orthogonality
   invariant and the B.1-B.4 contradiction unchanged.

## Required Repair Bundle

1. Change the theorem-facing discovery output or procedure. Replace exact
   protected orthogonal complements by a target-compatible oblique projector,
   or add a jointly unprojected polishing/global-entry phase before claiming
   chart entry. A metric that identifies orthogonalized factors with the true
   nonorthogonal orbit would also change the theorem contract. Affected
   obligations are the protected invariant, all-commit matching, chart entry,
   and terminal PL. Smallest retry target: /subagent-idea-generator.
2. If retaining sequential extraction, add a weight-aware source condition,
   such as tau_max mu_real^2 much less than tau_min with all residual and
   radial terms exposed, or restrict the allowed kappa range. This changes the
   primitive source class and must be regenerated as a new idea.
3. Rebuild generated-output flow under the changed contract. A new idea must
   provide producers for weighted isolation, protected-span/error
   accumulation, per-state transaction probability, injective coverage, and
   target-compatible chart entry before proof-step or global-proof work.

Target-preserving repair check: no sketch-level bridge can preserve the current
setting, projected/retracted protocol, factor metric, immediate chart-entry
claim, and uniform kappa <= r^c0 scope simultaneously. Static concentration,
radial-sign, rollback, and local Armijo modules may be reused by a successor,
but the end-to-end idea must change.

## Review Rationale

The attempt-1 review already identified weighted-isolation, error-scale,
protected-span, and polynomial-basin blockers. Attempt 2 does not merely
repeat missing estimates: making projection/retraction explicit produces an
exact invariant incompatible with the target orbit on an allowed
high-probability family. The dormant weak-slot sequence independently bounds
every positive-PL chart around the true orbit, and
kappa^2 nu = r/(400 log(2r)) separates the forced committed state from that
chart. This failure survives an ideal transaction tape and exact rollback, so
no proof-sketch decomposition or checkpoint can repair it. The correct
automatic route is IDEA_FAIL, score 2, and a new idea attempt with a changed
procedure, source condition, scope, metric, or conclusion.
