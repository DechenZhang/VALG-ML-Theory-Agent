# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_4`
- Sketch attempt: 1
- Review mode: blocker-only sketch with `Sketch Steps = None`
- Roadmap reviewed: smoothed near-orthogonal instance geometry, sequential
  certified probes, certificate-to-purity and protected-span transfer,
  finite-tape amplification and reserve accounting, and same-target terminal
  PL refinement.

## Sketch Viability Score

2

## Sketch Review Status

IDEA_FAIL

## Smallest Retry Target

/subagent-idea-generator

## Retry Mode

new_idea

## Audit Summary

- Goal alignment: The sketch faithfully restates the `material_partial`
  target, including the modewise-near-orthogonal smoothed class,
  (k=\Theta(r^{3/2}(\log r)^2)), the sequential one-probe protocol, the two
  norm-purity exports, separate instance/tape probabilities, and the
  arbitrary-relative-error no-floor endpoint. It does not silently weaken
  the target. Instead, it correctly records that no target-faithful roadmap
  exists under the current certificate and purity definitions.
- Dependency audit: There are no proof steps to audit. In blocker mode the
  intended acyclic chain is explicit, but it breaks at
  `certificate -> unique target/beta purity` before any promotion. Thus the
  artifact is a coherent obstruction diagnostic, not a proof sketch ready
  for global or step-level proof work.
- High-risk coverage: The sketch localizes the two decisive high-risk
  obligations: the first-promotion coefficient-purity export and the radial
  direction of the full balanced tangent Hessian. The direct calculations
  supporting both blockers are correct. All repeated-promotion, chart-entry,
  and no-floor claims are correctly identified as downstream consumers.
- Explicit-rate coverage: The rate objective exposes all structural,
  probability, horizon, norm, certificate, and tape parameters. In
  particular, (C_{\rm pur}) is required to be independent of (r). The
  first-promotion inequality would instead require
  (C_{\rm pur}=\Omega(r^{3/2}\log r)) on an allowed comparable-weight
  family, which changes the exposed dependence and makes the claimed purity
  scale vacuous.
- Assumption and citation plausibility: Static realized-Gram and norm control
  is plausibly derivable from the stated smoothed assumptions, and the local
  Armijo/reserve modules are not contradicted. No cited strict-saddle,
  orthogonalization, smoothed-conditioning, or local-PL result can override
  the exact current-notation identities for (\beta_{[r]}(\varnothing)) or
  the radial Hessian. The cited sources do not supply the missing
  certificate interface under the branch convention.

## Early Obstruction Audit

- Limiting-case stress: Take the allowed empty protected state
  (I=\varnothing) and a modewise orthogonal, equal-scale base instance with
  (\kappa=1). On the required good-instance event,
  (G_\star\) is invertible and each realized weight satisfies
  (1/8\le\tau_j\le8). Since
  (R_\varnothing^0=T=\Phi_\star\tau),
  
  \[
  \beta_{[r]}(\varnothing)
   =G_\star^{-1}\Phi_\star^*\Phi_\star\tau=\tau.
  \]
  
  Hence, for every candidate label (j),
  
  \[
  \|\beta_{[r]\setminus\{j\}}(\varnothing)\|_2
  \ge {\sqrt{r-1}\over8},
  \qquad
  C_{\rm pur}(\zeta_{\rm cert}+\mu_{\rm real})|\beta_j|
  \le {4C_{\rm pur}\over5r\log(2r)}.
  \]
  
  The required inequality is false for all sufficiently large (r) for
  every rate-valid fixed (C_{\rm pur}). Probe motion cannot alter this
  identity because the definition uses (R_I^0), not (R_I(q)).
- Theorem-critical bridge support: The observable certificate depends on the
  active probe (q), while the first required beta output is the fixed full
  unresolved coefficient vector (\tau). There is therefore no bridge from
  the certificate controls to the consumed one-target beta-purity interface.
  This is a source/object mismatch, not a missing estimate.
- Exported-interface feasibility: The raw controls
  (\zeta_{\rm cert}), the score/sign tests, the tangent-Hessian test, and the
  realized Gram bounds do not control the persistent residual
  (\tau_{-j}). The exact produced object is (\tau); the consumed interface
  is a vector with off-channel Euclidean mass
  (O((r\log r)^{-1})) relative to one coordinate. No positive margin,
  threshold, or transfer relation under the current setting can map the
  former to the latter.
- Theorem-critical mechanism witness gate: Failed for both first-promotion
  mechanisms. Gram invertibility preserves all unresolved beta coordinates
  rather than suppressing them. For the Hessian mechanism, the legal common
  radial vector (\xi=(u,v,w)) belongs to the protected balanced tangent and
  direct differentiation along
  (((g+t)u,(g+t)v,(g+t)w)) gives
  
  \[
  \langle\xi,H_{\rm tan}(q;I)\xi\rangle
    =9g^4-6g\,s(q).
  \]
  
  Thus positive normalized minimum eigenvalue forces
  (s(q)<3g^3/2). The source driving outward growth of a small informative
  probe is instead (s(q)\gg g^3), so the same source makes the radial
  curvature negative.
- Entry-state trace stress: At the all-zero initialization,
  (I=\varnothing) and beta purity is already false before the first update.
  In the exact orthogonal baseline, place the probe in a pure unresolved
  target direction. Then (s(q)=\tau_j-g^3) and the radial curvature is
  (15g^4-6g\tau_j). Because (g\le2\theta) and
  (g^3\le8\|T\|_FP^{-D_{\rm cert}}=o(\tau_j)) for fixed positive
  (D_{\rm cert}), this curvature is negative for sufficiently large
  admissible (r). The intended target-aligned small-radius activation path
  is rejected before promotion. If (D_{\rm cert}>40), the pointwise
  requirements are even mutually inconsistent for large (P): the score
  floor and positive radial curvature imply
  (\|T\|_FP^{-40}\le s(q)<12\|T\|_FP^{-D_{\rm cert}}).
- Obligation locality classification: Realized instance geometry, local
  Armijo backtracking, and finite reserve accounting are `step-local` in
  isolation. First beta purity/unique target assignment and full-tangent
  certification of small-radius informative growth are
  `idea/theorem-contract defect`. Positive per-block certificate probability,
  repeated promotions, generated same-target chart entry, and the resulting
  unconditional no-floor theorem inherit that idea-level failure because
  their first required producer does not exist.
- Noncircular closure gate: Failed at the first transition. Restart
  amplification presupposes a positive probability of a legally exportable
  certificate, and terminal PL presupposes generated same-target chart entry.
  Neither downstream closure can produce the missing first target map or
  certify its own entry condition.
- Mechanism-source and boundary stress: The exact orthogonal/equal-scale
  baseline is inside the declared special case, not an excluded degeneracy.
  In this baseline the beta mismatch persists with no perturbation residual,
  and the pure target radial direction has the opposite Hessian sign from the
  certificate. Smallness, local boxes, finite budgets, and near-orthogonality
  are upper-control sources and cannot supply the missing one-channel support
  or reverse the exact sign identity.
- Generated-output flow: Static instance geometry, the Armijo lower bound,
  and the discard reserve have plausible producers. The first unique target
  map and beta purity have no legal producer; consequently protected-span
  preservation, positive per-block success, all promotions, chart entry, and
  the final arbitrary-accuracy iterate have broken dependency paths.
- Source-to-claim adequacy: The current-notation direct derivations use the
  exact branch convention and need no external citation. They show a mismatch,
  not merely an unproved implication. A probe-dependent contraction vector
  might support a one-target claim, and an angular Hessian might support
  directional stability, but neither is the object or tangent operator fixed
  by `setting.md`. The existing literature sources use different objectives,
  symmetry conventions, update rules, or tangent signatures and provide no
  current-contract wrapper.
- Residual-to-target adequacy: For beta purity the residual is exactly
  (\tau_{-j}) in Euclidean coefficient norm, with each entry bounded below
  by (1/8) on the tested good-instance family. It is fixed, persistent, and
  unaffected by every probe-dependent certificate threshold. For the Hessian
  bridge the full-tangent radial residual is the adverse term
  (-6g s(q)), which dominates the self term (9g^4) precisely in the
  target-aligned small-radius growth regime. Neither residual is dominated at
  the consumed target scale.
- Baseline invariance audit: The inherited conclusions are exact balanced
  representation, pruning of scratch slots, and arbitrary
  (0<\epsilon<1) with no terminal reserve floor. The exact representation
  is preserved and directly yields
  (\beta_{[r]}(\varnothing)=\tau); replacing it by a one-target residual
  surrogate would violate the same-target baseline. The no-floor endpoint is
  not reached because the procedure cannot generate its first protected
  target. A conditional local-PL theorem or a remainder-only endpoint would
  weaken the formalized goal and is not a target-preserving sketch repair.
- Scope-accumulation compatibility: Finite discard mass is genuinely
  finite-budgeted by the displayed tape size, but the theorem-critical
  promotion recurrence is unsupported at time zero. Its accumulated success
  count has no valid one-step Bernoulli source: more independent blocks can
  amplify a positive (p_{\rm cert}), but cannot create one when every
  purported successful certificate fails the required export. The terminal
  PL recurrence likewise has no generated entry state.
- Scope and dependence consistency: The contradiction occurs within the
  uniform deterministic class, on the declared good-instance bounds, before
  any probability or horizon upgrade. Allowing (C_{\rm pur}) to scale as
  (r^{3/2}\log r), restricting to a single unresolved component, or moving
  the certificate to a target-scale radius changes the exposed dependence,
  theorem scope, or procedure.
- Generated-condition provenance: The sketch correctly treats certificate
  occurrence, purity, protected-span preservation, promotions, and chart
  entry as derived. None may be moved into theorem-facing assumptions without
  changing the unconditional material-partial target.
- Citation and tool applicability: The cited literature may motivate static
  conditioning, angular strict-saddle analysis, orthogonalized deflation, or
  local quotient PL geometry. It supplies no theorem with the current
  asymmetric objective, full balanced tangent, sequential certificate, and
  beta output. The direct counteridentities delimit the non-output boundary
  of every such citation.
- Same-setting repair plausibility: No same-setting roadmap repair can make
  (P-beta) true because both sides are already fixed algebraically at
  (I=\varnothing). Nor can a step decomposition make positive curvature on
  the full balanced tangent compatible with pure small-radius radial growth.
  A viable successor must change the certificate/output object or the
  certificate tangent/signature, followed by re-formalization.
- Target-preserving bridge-repair gate: Failed. Adding a bridge step cannot
  remove the fixed (\tau_{-j}) residual. Replacing beta by a
  probe-dependent contracted coefficient, allowing an (r)-dependent purity
  constant, imposing a dominant-weight assumption, restricting the tangent
  to angular directions, using a saddle-signature test, or certifying only at
  target scale changes respectively the success criterion, exposed
  dependence, primitive assumptions, or algorithm/procedure. These are
  theorem-contract changes, so `/proof-sketch` is not a sufficient retry.
- High-risk obligation classes: Structural support and norm purity;
  positive-curvature/sign claims; initialized iterative activation;
  generated-condition provenance; repeated stochastic amplification;
  same-target chart membership; all-time terminal invariance; explicit rank,
  probability, and runtime dependence; and baseline exact/no-floor recovery
  were all scanned. The first two fail at idea level, while the remaining
  theorem-facing outputs lose their producer paths.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Realized good-instance geometry | Derived static conditioning event used by every later block | Normalized Gaussian concentration plus the base Gram margin and column bounds | `assump:base-column-conditioning`, `assump:modewise-near-orthogonality`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:smoothing-scale`, `assump:smoothing-margin` | Adequate in class for the displayed norm/Gram upper bounds; it does not imply dynamic purity | Same realized normalized factors define the Grams, atoms, weights, and theorem tensor | Base margin plus perturbation/normalization error is required to remain below the displayed realized margins | Primitive base bounds and independent perturbations can export the static event by a finite concentration/union argument | Same realized objects are consumed; no surrogate-target residual | Finite static union only; no trajectory accumulation | Primitive assumptions -> concentration output -> all dynamic consumers | Prospective instance-geometry step -> every later module | Orthogonal equal-scale boundary satisfies the event and exposes, rather than repairs, the later contradictions | `step-local` for static geometry | `None`; this obligation is not blocking |
| First certificate -> unique target and beta purity | Structural support/norm purity; first legal promotion | Proposed observable certificate plus realized near-orthogonality | Derived certificate controls and static event | Failed: certificate is (q)-dependent but (\beta_{[r]}(\varnothing)=\tau) is not | Exact branch convention (R_\varnothing^0=T=\Phi_\star\tau), (G_\star=\Phi_\star^*\Phi_\star); no convention mismatch can hide the identity | Required (\|\tau_{-j}\|_2\le C_{\rm pur}(\zeta+\mu)|\tau_j|) contradicts (\|\tau_{-j}\|_2\ge\sqrt{r-1}/8) and RHS (\le4C_{\rm pur}/(5r\log(2r))) | Raw score, contraction, Hessian, and Gram controls cannot alter (R_I^0); exported one-channel beta interface is infeasible | Exact residual (\tau_{-j}) is nonzero at scale (\sqrt r), while the target allowance is (O((r\log r)^{-1})) | Persistent fixed off-channel mass; no absorption, cancellation, or finite budget applies | None: the proposed producer has no map to the consumed beta output | Proposed `Cert` producer; consumers are label assignment, promotion, protected spans, later blocks, chart entry, and final theorem | At (I=\varnothing) with orthogonal comparable weights, purity fails before the first update for every label | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| Full-tangent Hessian certificate -> informative small-probe state | Positive curvature certificate used as feature-discovery stopping rule | Hessian of the actual one-probe loss on the full balanced tangent | Direct current-notation differentiation | Failed for informative radial growth: the score driving activation enters curvature with the adverse sign | Same factors, Euclidean tangent metric, residual, balance convention, and protected complements as `setting.md`; (\xi=(u,v,w)) is legal | (\langle\xi,H\xi\rangle=9g^4-6gs(q)); positivity forces (s(q)<3g^3/2), while pure small-target growth has (s(q)=\tau_j-g^3\gg g^3) | Raw Hessian/score tests export full-tangent positivity, not angular stability; no raw control reverses the radial sign | Adverse residual (-6gs(q)) dominates (9g^4) below target radius; for (D_{\rm cert}>40), the score floor and positivity are directly incompatible | Pointwise source exclusion at the first probe; restarts do not accumulate away an exact sign identity | None for an informative certificate under the current full-tangent rule | `Cert` is the proposed producer; first promotion and all tape amplification consume it | Pure target direction in the orthogonal baseline has curvature (15g^4-6g\tau_j<0) for (g\le2\theta) and large admissible (r) | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| Accepted-step lower bound and finite discard reserve | Numerical globalization and finite discovery accounting | Local smoothness, dyadic Armijo backtracking, measured displacement cap, and finite tape | Direct protocol calculations on the guarded box | Adequate for step size and discarded tensor mass only; not a source of target support | Same objective, trial path, factor box, and tensor norm as the branch | Backtracking target `lambda_acc >= min{(16 L_box^star)^-1, Delta_tr/(4 G_box^star)}`; reserve `B_tape <= N_rst C_probe N_probe a_cert` | Guarded norm/Hessian upper controls feasibly export these two interfaces | No target-transfer residual is claimed; discarded mass is finite but success remains uncontrolled | Finite-budgeted mass over the declared tape; the sign is irrelevant because absolute tensor change is summed | Guarded-box calculation -> line-search/discard outputs -> probe and runtime accounting | Prospective local calculation; consumers are probe dynamics and discovery work bound | At zero/failed probes the bounds remain meaningful but do not activate a target certificate | `step-local` in isolation | `None`; these obligations are not blocking |
| Positive per-block success and repeated promotions | Generated stochastic recurrence and injective coverage | Intended legal certificate event plus independent tape blocks | Would be derived from one-block probe analysis and `assump:random-tape` | Failed because the required successful certificate interface is infeasible | Conditional independence is compatible with the branch, but it applies only after a valid success event is defined | Restart relation can bound failure by ((1-p_{\rm cert})^{N_{\rm rst}}), but no positive valid (p_{\rm cert}) exists | Fresh Haar draws are raw probability resources; they cannot export the contradicted beta object or change radial curvature | Missing first success is an uncontrolled, persistent defect, not a small probability remainder | Unsupported at the first transition; no Bernoulli/coupon-collector recurrence begins | No legal first-certificate producer -> no promotion consumer path | One-block certificate -> promotions -> span updates -> all (r) labels; first producer is absent | At the empty protected entry, every purported legal success fails beta purity and pure growth fails Hessian certification | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| Same-target chart entry and no-floor terminal convergence | Generated basin membership, invariant PL recurrence, and baseline arbitrary-accuracy endpoint | Intended injective promotions followed by local balanced quotient geometry and Armijo descent | Derived dynamic output; exact representation is a static baseline | Local PL may be adequate after entry, but no current-procedure state is produced for comparison with (\mathcal Z_{\rm bal}(T)) | The terminal target and metric are correctly same-target; the missing object is the generated entry state | A PL decrease recurrence could contract without a floor only after chart entry and invariance are proved | Exact representation, near-orthogonal Gram, and line-search bounds do not export proximity of the generated protected state when no promotions exist | Distance from a produced protected state to the same-target chart is undefined because no such state is generated | Unsupported promotion accumulation; PL cannot prove its own initial membership | No noncircular path: failed promotion producer -/-> chart entry -> PL consumers | All promotions should produce chart entry; terminal iterates and final theorem consume it | At all-zero entry no protected state exists; a conditional chart theorem would weaken the unconditional target | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| Exact-representation and arbitrary-epsilon baseline invariance | Baseline same-target/no-floor obligation | Exact balanced true representation plus successful generated entry and terminal PL | Static representation from realized factors; dynamic entry must be derived | Exact representation is valid, but it exposes beta impurity and does not itself produce the algorithmic entry | Source and consumed terminal tensor are both `T`; replacing `R_I^0` by a one-target surrogate is not same-target compatible | Required chain is exact representation -> legal promotions -> same-target entry -> floor-free PL; middle links fail | Static true factors are analysis objects, not algorithm outputs; no raw observable control exports them as protected slots | The unresolved coefficient residual is the full `tau`, not a removable approximation term | No accumulation relation reaches the baseline endpoint under the current procedure | Exact representation exists independently, but there is no legal generated-state path to its basin | Static representation; consumers are chart comparison and final theorem | Orthogonal exact baseline already fails first-promotion beta purity and pure radial certification | `idea/theorem-contract defect` for preserving the full algorithmic conclusion | `/subagent-idea-generator` |

## Blocking Issues

1. **False first-promotion beta-purity output (`setting.md`, Analysis-only
   purity and span statements; `proof_sketch.md`, (P-beta)).** At
   (I=\varnothing), exact algebra fixes the exported object as
   (\beta=\tau). On the allowed comparable-weight class its off-channel
   norm is (\Omega(\sqrt r)), not
   (O((r\log r)^{-1})|\tau_j|). This blocks the first label, promotion,
   span update, per-block success event, and every downstream theorem output.
   The smallest repair is `/subagent-idea-generator`, replacing the exported
   object/success criterion or changing the theorem assumptions/dependence.
2. **Certificate radial-sign contradiction (`setting.md`, Observable
   certificate; `proof_sketch.md`, Mechanism-Source And Boundary Stress).**
   Positive curvature on the full balanced tangent forces
   (s(q)<3g^3/2), whereas the allowed orthogonal pure-target small-radius
   path has (s(q)=\tau_j-g^3\gg g^3) and negative radial curvature. The
   certificate therefore rejects the canonical informative growth state it
   is meant to promote. Repair requires changing the algorithmic certificate
   to an angular or saddle-signature test, or changing the certification
   radius/procedure; this is not a proof-step obligation.
3. **Broken generated-output chain (`proof_sketch.md`, Generated Output Flow
   and Dependency Notes).** Finite reserve, Armijo backtracking, static
   conditioning, and conditional local PL are not producers of a valid first
   certificate. Consequently restart amplification has no valid positive
   one-block event and terminal PL has no generated same-target entry. A
   sketch-only reordering cannot restore these consumers.

## Required Repair Bundle

1. **Replace the contradicted purity interface.** In the next
   `/subagent-idea-generator` attempt, use a genuinely probe-dependent
   coefficient or contraction object and state an explicit residual-to-target
   bridge, or deliberately change the success criterion/primitive weight
   assumptions. Update both the algorithmic idea and formalized theorem; do
   not retain (P-beta) for (R_I^0). Affected interface: beta purity, unique
   target assignment, first promotion, and protected-span consumers.
2. **Redesign the observable curvature test.** Separate angular target
   identification from radial feature growth, for example through an angular
   tangent restriction or an explicit saddle-signature test, and verify the
   pure orthogonal small-radius state before re-formalization. Moving
   certification to target scale is also a procedure change and must be
   exposed as such. Affected interface: `Cert`, probe success, horizon, and
   target-map producer.
3. **Rebuild the end-to-end producer graph after those idea changes.** The new
   idea must give raw-control-to-output and producer-consumer paths for one
   valid certificate, positive conditional block probability, injective
   repeated promotions, protected-span preservation, same-target chart entry,
   and no-floor PL refinement. The static geometry, Armijo, and finite-reserve
   modules may be reused only after their new interfaces are checked.
4. **Preserve source and baseline accounting.** Any successor that remains
   `material_partial` must retain the explicit arbitrary-base and
   simultaneous-GD gaps, the subquadratic rank dependence, separate
   instance/tape probability modes, exact same-target representation, scratch
   pruning, and arbitrary relative accuracy without an additive reserve
   floor. If any of these is weakened, record the changed progress type and
   theorem contract.
5. **Target-preserving repair check.** No `/proof-sketch` repair can satisfy
   the current goal: the beta identity is exact before the step graph begins,
   and the radial sign identity follows from the fixed certificate. The
   minimum viable changes are a changed success/output object and a changed
   algorithmic certificate (or, less desirably, changed primitive assumptions,
   exposed dependence, scope, or success criterion). These are precisely
   idea/theorem-contract changes and require re-formalization after idea
   generation.

## Review Rationale

`IDEA_FAIL` is required because the deepest defects are not missing lemmas or
interfaces that can be added under the existing setting. One theorem-facing
purity conclusion is algebraically false at the initial allowed state, and
the fixed observable certificate has an exact radial sign incompatible with
its intended small-probe activation mechanism. Repair necessarily changes
the exported success object, the algorithmic certificate/procedure, primitive
assumptions, exposed dependence, theorem scope, or success criterion.
Accordingly `REVISE_SKETCH` cannot preserve the current formalized setting and
goal, while `/subagent-idea-generator` is the smallest valid retry target.
