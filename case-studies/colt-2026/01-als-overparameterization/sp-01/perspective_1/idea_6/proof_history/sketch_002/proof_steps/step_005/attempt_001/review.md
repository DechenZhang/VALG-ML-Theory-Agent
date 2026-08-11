# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_6`
- Sketch attempt: 2
- Step ID: `step_005`
- Unit attempt: 1
- Reviewed setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Reviewed sketch SHA-256: `c6126ab9b81d7a7cbcae3b9b857923f3fe8e275ed1ba4376fd830270c5ec95e1`
- Reviewed sketch-review SHA-256: `524bc3e32fc6d334d4c6c78bf8e347888df2cd4bbbd21bf7c3dc1414c0c9b3a4`
- Reviewed proof artifact: `perspective_1/idea_6/proof_steps/step_005/proof.md`
- Reviewed proof SHA-256: `5b670bec8ed4f491e1de0ba1aea02c820e135515042b6d300656584d1d2b07a4`
- Accepted dependency `step_004` proof/review: `33fa04612d06ca26705b1d93ac3df3504bdc20122f6511f8bdc0b7a52a404b71` / `5bff3091b993804f95134f79acd322cd89941b4b78689fa7a3f72806039fc4e7`
- Accepted dependency `step_004b` proof/review: `49d3dbedb0ec7ca81b7c361fe087e5afbde0af1726d5da59d73b10f3ebc85b8d` / `d529c583510bd4f49ae85e766de4e97cbb51a4ce60cff1c039d02569b5540aed`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_005

## Blocking Issues

1. Location: `proof.md:521-531`, `unit_006` (certificate signs and product-preserving gauge). The proof writes
   `\langle p_{M,a}^{\rm raw},v_{M,a}\rangle=\theta_a` and uses this
   undefined `v_{M,a}` to infer the certificate-sign identity. No
   `v_{M,a}` is defined in the step, the setting, or either accepted
   dependency. If it is read as the setting's mode-B factor, the displayed
   equality is false; the needed object is the same-state contraction
   `f_{M,a}=T(\mathord{\cdot}_M,h_{M',a},h_{M'',a})
   =G_MK_M^{\rm raw}(:,a)`, for which
   `\langle p_{M,a}^{\rm raw},f_{M,a}\rangle=\theta_a` is valid.
   Consequently the written proof does not establish that all three
   certificate signs equal `sign(theta_a)`, so the downstream barred
   equation, positive gauge, and `s_comp` assembly are unsupported as
   submitted. Smallest repair: define `f_{M,a}` in the unit statement (or
   explicitly identify the symbol with `G_MK_M^{\rm raw}(:,a)`) and replace
   the occurrence in the sign derivation, then rerun `/proof-step step_005`
   and obtain a fresh review.

## Per-Lemma Audit

### unit_001: Covered singleton witnesses

- Statement fidelity: PASS. The lemma states one distinct certified
  singleton witness per covered target, the `s_- lambda_j`--`s_+ lambda_j`
  score interval, and the needed distinctness conclusion. Its `E_cov`,
  `E_chart_l1`, and ledger inputs are supplied by the accepted dependency
  context; the covered tightening is not imposed on arbitrary certified
  slots.
- Proof validity: PASS. The accepted dual-l1 bound is propagated through
  the stored certification state, the normalization lower bound makes the
  off-target threshold coordinates strictly below `1/8`, and the target
  coordinate is above the threshold. The ambient `1/128` chart and realized
  Gram separation rule out one slot being covered for two distinct targets.
- Cited-result and assumption audit: PASS. The current `step_004` proof and
  review hashes match the pinned accepted artifacts. No target label is fed
  to the observable procedure; the target index is an analytical witness.
- Rigor checklist: PASS. Strict threshold inequalities, nonzero target
  coordinates, finite certificate storage, and the distinct-target
  quantifier are explicit. The score interval is inherited from the named
  accepted ledger result.
- Local adversarial test: PASS. A hypothetical slot covered for two targets
  would put signed realized target columns within `2/128`, contradicting
  their squared separation at `q_*`.
- Contribution to target step: PASS. Supplies nonempty singleton witnesses
  and the lower scale used to normalize the observable score filter.
- Verdict: PASS
- Repair direction: None.

### unit_002: Weighted support and stationary mixture score

- Statement fidelity: PASS. The proposition states the exhaustive
  non-LOW singleton/multi-support alternatives, the direct multi-support
  score bound, and the exact orthogonal stationary weighted profile.
- Proof validity: PASS. The first bound is the accepted ledger output. In
  the explicitly conditional orthogonal stationary calculation, the three
  mode equations imply equal contraction scales and
  `x_{U,i}=x_{V,i}=x_{W,i}=d/lambda_i`; normalization gives the displayed
  inverse-square-root score. The sign equations are handled before taking
  the absolute score, so no cancellation is silently assumed away.
- Cited-result and assumption audit: PASS. The stationary calculation is
  clearly marked as a deterministic boundary specialization and is not
  used as an unconditional classifier premise. The current `step_004b`
  multiscore hash/review is accepted and current.
- Rigor checklist: PASS. The support is nonempty, weights are positive,
  and the `m >= 2` numerical specialization is explicit.
- Local adversarial test: PASS. The `m=2` unequal-weight boundary retains
  the inverse-weight profile rather than substituting an equal-weight
  expression.
- Contribution to target step: PASS. Supplies the component/mixture gap and
  the baseline formula used by the filter audit.
- Verdict: PASS
- Repair direction: None.

### unit_003: Observable score filter

- Statement fidelity: PASS. The proposition targets the setting's exact
  `0.85 sigma_max` rule and claims retention of exactly singleton ledger
  states, together with a positive `0.8 lambda_min` score floor.
- Proof validity: PASS. Coverage supplies a singleton witness at the
  maximum weight; the LOW and multi-support upper bounds are compared with
  the `0.85 s_- lambda_min` threshold; and the singleton lower/upper ratio
  is strictly above `0.85`. The displayed endpoint inequalities preserve
  `Gamma <= 1.01` and all tail constants.
- Cited-result and assumption audit: PASS. `E_cov`, `E_sm`, and the
  `E_cert_tail` alternatives are accepted derived outputs, not newly
  declared primitive conditions. The filter is evaluated before graph or
  gauge formation.
- Rigor checklist: PASS. Absolute scores handle negative or zero signs,
  strict inequalities precede the setting tie rule, and the empty-certified
  pool is excluded by the coverage branch.
- Local adversarial test: PASS. At the maximal ledger reserve, the
  multi-support and LOW branches remain strictly below the filter while
  every singleton remains above it.
- Contribution to target step: PASS. Produces the weighted support/score
  classifier and the nonzero score premise used by later units.
- Verdict: PASS
- Repair direction: None.

### unit_004: Selected chart and denominator margins

- Statement fidelity: PASS. The lemma states the target orientation, dual
  off-target l1 bound, ambient radius, `31/32`--`33/32` denominator range,
  and the product-of-core-sign relation.
- Proof validity: PASS. The singleton ledger decomposition and Gram bounds
  give the target-positive orientation and the `chi_sel`/`chi_dual` bounds.
  The target term and the weighted off-target sum yield
  `Delta < q_* < 1/32`, hence the denominator interval and positivity.
  The final score expansion has a target product above `0.99` and an
  off-target contribution below `10^{-3}`.
- Cited-result and assumption audit: PASS. All geometry and tail inputs are
  from the accepted `step_004b` ledger and `E_sm`; the radii are derived,
  not assumed. No later ALS state or target-span invariant is imported.
- Rigor checklist: PASS. Raw signs are retained until the derived
  orientation, perpendicular certificate residuals are included, and the
  denominator lower bound is established before any gauge use.
- Local adversarial test: PASS. The endpoint `q=q_*`, maximal singleton
  tail, and arbitrary raw mode signs still leave positive target products
  and a strictly positive contraction norm.
- Contribution to target step: PASS. Supplies the selected chart, dual
  margin, denominator margin, and sign source for clustering and gauge.
- Verdict: PASS
- Repair direction: None.

### unit_005: Observable graph separation and clusters

- Statement fidelity: PASS. The proposition states same-index and
  cross-index correlation margins, the exact observable graph threshold,
  nonempty groups, and the proof-only target permutation.
- Proof validity: PASS. Oriented copies within `chi_sel` of the same
  realized target give the within-group lower bound; realized Gram
  separation plus two perturbations gives the cross-group upper bound.
  The strict margins imply that each same-index group is a clique and no
  cross-index edge exists, so coverage yields exactly `r` components.
- Cited-result and assumption audit: PASS. The graph uses only observable
  absolute correlations; orientation and the singleton index are proof-only
  analytical devices. The accepted setting graph threshold is preserved.
- Rigor checklist: PASS. Absolute values remove arbitrary raw signs and the
  connected-component argument covers possible duplicate retained states.
- Local adversarial test: PASS. An intermediate retained state cannot bridge
  two distinct groups because every cross-index edge is excluded.
- Contribution to target step: PASS. Produces `E_cluster` and the target
  permutation needed by downstream coordinate statements.
- Verdict: PASS
- Repair direction: None.

### unit_006: Certificate signs and product-preserving gauge

- Statement fidelity: PASS. The lemma has the correct intended sign,
  product-one gauge, barred equation, positive scalar, and `s_comp` output.
- Proof validity: REVISE_STEP. The sign argument at `proof.md:521-531`
  invokes undefined `v_{M,a}`. Replacing it by the defined same-state
  contraction `f_{M,a}` makes the inner-product inequality and subsequent
  sign/gauge algebra valid, but that replacement is absent from the
  submitted artifact.
- Cited-result and assumption audit: REVISE_STEP. `E_cert_eq` supplies
  `G_MK_M^{raw}(:,a)` and its residual, but the proof does not identify the
  symbol it inner-products with that supplied contraction. No new external
  theorem or sketch interface is needed once the local definition is added.
- Rigor checklist: REVISE_STEP. The defect affects a theorem-critical
  sign inference, although `d_M>0`, `tau_r<1`, and the positive retained
  score are otherwise sufficient to force the equality after repair.
- Local adversarial test: PASS after the stated repair. For either sign of
  `theta_a`, `|theta_a - epsilon_{M,a} d_M| <= d_M tau_r` forces
  `epsilon_{M,a}=sign(theta_a)`; this test cannot be certified from the
  undefined symbol as written.
- Contribution to target step: REVISE_STEP. The barred equation, positive
  gauge, and `s_comp` are downstream outputs of this unit and remain
  uncertified until the local notation is repaired.
- Verdict: REVISE_STEP
- Repair direction: Define `f_{M,a}:=G_MK_M^{raw}(:,a)` (equivalently the
  same-state contraction) in the unit statement and use it consistently in
  lines 521--531; then rerun this step.

### unit_007: Finite scope, generated-output flow, and baseline

- Statement fidelity: PASS. The claim records the producer order, finite
  same-state scope, independence from later active ALS/refresh objects, and
  the exact orthogonal equal-weight specialization.
- Proof validity: PASS conditional on the repaired unit_006 output. The
  finite certified pool has no accumulated recurrence, and the producer
  path correctly places classification before graph and gauge. The exact
  stationary component retains zero residual and `s_comp=1` rather than a
  finite-tolerance surrogate.
- Cited-result and assumption audit: PASS. The claim consumes only accepted
  generated outputs and preceding local results; later quotient states are
  not used as evidence.
- Rigor checklist: PASS. Finite nonstationary certificate residuals remain
  distinct from the exact stationary baseline, and no probability or
  horizon upgrade is introduced.
- Local adversarial test: PASS. A nonstationary certified state retains its
  finite `tau_r` charge, while only the exact orthogonal stationary point is
  assigned zero residual.
- Contribution to target step: PASS conditional on unit_006 repair. It
  closes scope, generated-output provenance, and baseline bookkeeping.
- Verdict: PASS
- Repair direction: None beyond the unit_006 repair already listed.

## Hidden Subclaim Scan

The local lemma map covers the weighted case split, stationary boundary
calculation, filter gap, selected chart and denominator transfer, graph
separation, sign/gauge conversion, and finite-scope producer path. No
independent mathematical lemma is hidden in the assembly prose. The one
unresolved issue is a provenance/notation defect rather than an omitted
subclaim: `v_{M,a}` in unit_006 is neither defined nor identified with the
contraction whose inner product is required.

## Target Claim Audit

The proof targets the exact sketch-2 `step_005` claim: an all-certified
weighted classifier, direct multi-support bound, positive score floor,
selected chart and denominator margins, observable separation, exactly `r`
clusters on `E_cov`, proof-only permutation, and product-preserving sign
gauge. Units 001--005 establish the classifier and clustering interfaces
under the accepted `step_004`/`step_004b` outputs. Unit_006 does not establish
its sign premise as written, so `E_gauge`, `bar theta`, and the final
`s_comp` interface are not yet proven. The defect is local and does not
require changing the target, assumptions, dependencies, or probability
mode.

## Explicit Rate Audit

- Exposed variables: `r`, `q_real`, `Gamma`, `lambda_min`, `lambda_max`,
  `tau_r`, `a_cert`, `eta_0`, `eta_rel`, `vartheta`, `vartheta_*`,
  `s_-`, `s_+`, `s_mix`, `sigma_max`, the finite certified-pool size,
  `chi_dual`, `chi_sel`, and the graph threshold.
- Hidden constants are declared universal and independent of the base
  triple, `n`, `r`-dependent hidden factors, `k`, `kappa_0`, `rho`, both
  confidence parameters, `epsilon`, labels, and later ALS states.
- Fixed quantities and mode: condition first on the realized `E_sm`/`E_cov`
  path and then evaluate the finite certified pool deterministically;
  horizon is finite and pathwise, with no probability conversion in this
  step.
- Norm mode: realized-factor Euclidean correlations, dual l1 mass, weighted
  scalar score, contraction 2-norm, and the setting's absolute-correlation
  graph.
- The displayed score, chart, denominator, and graph inequalities retain
  the `Gamma`, tail, and certificate terms; no rate-category absorption is
  accepted solely by prose. The baseline audit preserves the exact
  orthogonal equal-weight stationary conclusion.
- The rate audit itself is adequate after the local symbol repair; the
  current rejection is caused by proof validity, not by a changed rate or
  probability interface.

## Notation Surface Audit

Most helper objects are explicitly classified as proof-local or public
outputs, and the dependency notation is translated consistently. However,
`v_{M,a}` is a new unclassified symbol at the sign-critical line 523. It is
especially problematic because `v` already denotes a setting factor mode,
so silently interpreting it as a contraction would create notation drift.
The smallest repair is to define and use the accepted current-notation
contraction `f_{M,a}=G_MK_M^{raw}(:,a)`; no additional public helper should
be exported.

## Target-Step Assembly Audit

Units 001--005 and unit_007 provide the required classifier, graph, finite
scope, and baseline interfaces from accepted dependencies. The assembly
cannot yet invoke unit_006 as a mathematical authority because its
theorem-critical sign inference uses the undefined symbol above. Once the
single local replacement is made and freshly reviewed, the named units
jointly imply the exact target step; no sketch revision or dependency retry
is indicated.

## Review Rationale

`REVISE_STEP` with `/proof-step step_005` is the smallest sound routing. The
accepted ledger already supplies the needed same-state contraction, and the
target claim, assumptions, dependency list, constants, scope, and baseline
are otherwise unchanged. A local definition/replacement in unit_006 repairs
the sign inference and unlocks the downstream gauge assembly; routing to
`/proof-sketch` or idea generation would be disproportionate.
