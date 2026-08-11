# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_6`
- Sketch attempt: 4
- Step ID: `step_004b`
- Unit attempt: 1
- Reviewed setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Reviewed sketch SHA-256: `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`
- Reviewed sketch-review SHA-256: `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`
- Reviewed proof artifact: `perspective_1/idea_6/proof_steps/step_004b/proof.md`
- Reviewed proof SHA-256: `9e5a6515ebfd6889a28553751b9943bd3118319755afdedffdc8e49ba8496fdb`
- Repair-trigger review SHA-256: none (fresh sketch-4 dispatch)

## Accepted Dependencies

- `step_004` proof SHA-256: `aff54178e9b82621c707d850d5b5d138ff44710610b997947c7be94a13f535b`; review SHA-256: `d6301b0f8c3b848bd2f4f7a41f039cbd22263b94f84a1b0a65cb2e4951544d03`; review status: `ACCEPTED`.

The accepted dependency was read in current notation.  It supplies the
stored-state `E_cert` conclusion for every certified slot, including the
same-old-state look-ahead, positive contraction norms, and the per-column
projective residual bound.  Its accepted context also supplies the static
`E_sm` Gram, unit-column, and weight-ratio bounds.  No later chart, target
label, clustering event, or active-ALS state is used as an input here.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Same-state signed certificate equation

- Statement fidelity: PASS.  The proposition proves exactly the sketch-row
  raw equation `P_M^raw D_M = G_M K_M^raw Sigma_M + R_M^raw`, with the
  per-column `D_M(a,a) tau_r` residual, and identifies the common certificate
  sign from the same stored state.  It does not add a target or chart claim.
- Proof validity: PASS.  Multilinearity gives the current-state pair matrix,
  and the definition of `E_cert` gives the residual identity before any
  look-ahead is committed.  The right multiplication by `Sigma_M` is
  correctly columnwise.  The squared projective residual and
  `tau_r < sqrt(2)` establish the sign of every mode's score and the stated
  scalar bounds.
- Cited-result and assumption audit: PASS.  The only generated input is the
  accepted Proposition `prop:step-004-certificate`; the nonzero-contraction
  branch is traced to `assump:random-initialization`.  Static `E_sm` is not
  promoted to a primitive assumption, and no label, `E_cov`, or target chart
  is imported.
- Rigor checklist: PASS.  The proof handles the zero-contraction branch by
  exclusion from `E_cert`, keeps signs on the right side, and states the
  quantifier for every certified slot and mode.  The finite residual is not
  silently replaced by a target-distance bound.
- Local adversarial test: PASS.  Independent raw column signs, the exact
  stationary state, and the boundary `theta != 0` all give the displayed
  equation; a zero contraction exits through the setting-defined branch.
- Contribution to target step: PASS.  This is the complete `E_cert_eq` raw
  same-state source used by the downstream defect ledger.
- Verdict: PASS.
- Repair direction: None.

### unit_002: Span projection and scale bounds

- Statement fidelity: PASS.  The lemma exports only the realized-span
  projection, finite perpendicular residual, contraction scale bounds, and
  the `s_M`/`hat alpha_M` intervals required by the accepted sketch row.
- Proof validity: PASS.  `G_M H_M^{-1} G_M^T` is the orthogonal projector,
  so applying its complement to unit_001 gives the `tau_r` residual.  The
  orthogonal norm identity and the `E_sm` spectral interval give the scalar
  bounds.  The upper contraction estimate uses unit-column correlations and
  the lower one uses Cauchy--Schwarz, with the `|theta| >= .7 lambda_min`
  condition stated before use.
- Cited-result and assumption audit: PASS.  Every spectral and weight bound
  is inherited from accepted `E_sm`; no target-chart or selected-state
  invariant is assumed.  The inverse and all constants are defined from
  `q`, `Gamma`, and `tau_r`.
- Rigor checklist: PASS.  The lower scalar estimate retains the explicit
  `tau_r^2` term and remains valid at `q=0`; the endpoint arithmetic for the
  `0.995/1.005` ratios is displayed.  Uniformity in rank and slot is stated.
- Local adversarial test: PASS.  At `q=0` the finite certificate loss is not
  incorrectly erased, while at a stationary exact state it can be zero; the
  Gram inverse floor remains positive at both boundaries.
- Contribution to target step: PASS.  It supplies the span and scale
  interface used to normalize the coefficient-vector equation.
- Verdict: PASS.
- Repair direction: None.

### unit_003: Coefficient-vector Gram and certificate defect split

- Statement fidelity: PASS.  The lemma states the exact signed coordinate
  identity before division, and separates the coefficient Gram budget
  `eta_G`, scalar second-order reserve `eta_N`, and one finite-support
  certificate charge `eta_C` into the public `eta_0` interface.
- Proof validity: PASS.  The Hadamard expansion of the two realized Gram
  factors gives `2 q_* + q_*^2`; applying the dual to the raw residual gives
  an explicit `2 tau_r` Euclidean bound and the single `sqrt(r)` conversion.
  The reverse-triangle step produces the coordinate defect and its l1
  majorant.  The scalar expansion displays its exact second-order remainder,
  rather than hiding a first-order normalization term in the Gram budget.
- Cited-result and assumption audit: PASS.  The span and same-state units are
  the only local inputs, and the inverse norm is discharged from `E_sm`.
  `eta_N` is a declared reserve, not an unproved invariant or a free
  constant.
- Rigor checklist: PASS.  All `mu_i` divisions use `mu_i >= 1`, finite
  support is converted exactly once by `sqrt(r)`, and the l1 bound is uniform
  in the target index and mode.
- Local adversarial test: PASS.  The `q=0` specialization leaves only the
  explicitly retained certificate/scalar reserves; no `O(tau_r)` l1 claim is
  made without the finite-support conversion.
- Contribution to target step: PASS.  This is the exact defect input for the
  threshold and LOW/core/tail ledger, with no target label or chart premise.
- Verdict: PASS.
- Repair direction: None.

### unit_004: No-label threshold and reciprocal-profile calculus

- Statement fidelity: PASS.  The proposition defines the retained set and
  threshold, proves nonemptiness for non-LOW slots, exports the reciprocal
  profile, and states the outside-mass result (15) together with the named
  envelope `B`.
- Proof validity: PASS.  Sorting an omitted index and applying the two
  defect equations yields the per-index maximum bound; the proof then sums
  the squared bound over all omitted indices, explicitly obtaining
  `sum u_i^2 < 15 eta_0^2` and `max_M sum x_{M,i}^2 <= ... <= B`.
  Retained-coordinate positivity is established before division, and the
  three-mode ratio product gives the displayed `144 eta_0` profile.  The
  buffer/straddling argument is tied to the score gate and keeps all support
  alternatives exhaustive.
- Cited-result and assumption audit: PASS.  Only unit_003 and the accepted
  `E_sm` bounds are used.  The outside-mass and `B` fields are conclusions of
  this proposition, not assumptions smuggled in from the ledger or a future
  classifier.
- Rigor checklist: PASS.  The proof checks the numerical floor
  `vartheta_* > 1/16`, all denominator inequalities, the additive omitted
  mass in (20)--(21), and the `q=0` endpoint.  It does not identify an
  omitted coordinate with a target label.
- Local adversarial test: PASS.  Empty support, mismatched high maxima,
  buffer-only maxima, and a singleton retained support are all routed to an
  explicit branch; the corrected summed per-index inequality prevents an
  accidental rank-dependent extra factor.
- Contribution to target step: PASS.  It provides the threshold/profile and
  exported outside-mass package consumed by the ledger.
- Verdict: PASS.
- Repair direction: None.

### unit_005: Exhaustive LOW/core/tail ledger

- Statement fidelity: PASS.  The proposition covers every certified slot,
  separates LOW, singleton-core, multi-support, and threshold-straddling
  cases, and exports the singleton floor/score interval and multi-support
  tail/profile fields exactly as required by `E_cert_tail`.
- Proof validity: PASS.  The singleton argument uses the named `B` and
  defect budget to obtain the l1 tail and core floor, then keeps Gram,
  scalar, and finite-certificate contributions separate in (26)--(30).  The
  multi-support tail is bounded from the per-index outside-mass result and
  defect l2 budget.  Equations (31a)--(32a) explicitly dominate
  `23 eta_0^2` by the public `8.08 eta_0` and `16 eta_0` envelopes, including
  the declared endpoint; no prose-only absorption is used.
- Cited-result and assumption audit: PASS.  The threshold proposition is
  consumed through its named (15)/`B` conclusion, and the defect proposition
  supplies the coordinate budget.  No singleton, target identity, or
  clustering event is assumed.  The score expansion retains the finite
  `tau_r^2` boundary term.
- Rigor checklist: PASS.  LOW is defined from the observed score, the
  buffer/straddling case is not discarded, and the alternatives are stated
  before their proofs.  The ledger stays in the realized basis and preserves
  unequal weight factors through `mu`.
- Local adversarial test: PASS.  Exact orthogonal/stationary slots, negative
  scores, empty support, and multi-support slots are all handled; finite
  residuals are charged once rather than declared zero.
- Contribution to target step: PASS.  It packages the complete no-label
  LOW/core/tail output for `step_005` and the downstream score bridge.
- Verdict: PASS.
- Repair direction: None.

### unit_007: Retained-core score bridge for multi-support slots

- Statement fidelity: PASS.  The proposition proves the exact multi-support
  score bound, consumes the ledger's generated `tail_score` field, and emits
  the `Gamma/sqrt(m) + 160 eta_0` and `s_mix` interfaces.
- Proof validity: PASS.  Weighted Cauchy--Schwarz is applied to the retained
  reciprocal profile, then the realized Gram/scalar transfer is bounded by
  the explicit inequality (37a).  The rank condition `m >= 2` gives the
  `Gamma/sqrt(m)` bound, and the conversion to `lambda_max` is algebraically
  correct.
- Cited-result and assumption audit: PASS.  The named threshold/ledger
  propositions are restated as the only generated inputs; `tail_score` is
  not reproved from an unstated global event and no target label is needed.
- Rigor checklist: PASS.  Sign cancellation is handled by taking the exact
  score absolute value, all weights are positive, and the `eta_0` absorption
  in (37a) is displayed with its endpoint constants.
- Local adversarial test: PASS.  The `m=2` boundary and a nonzero omitted tail
  both remain in the bound; the proof does not silently replace the realized
  score by a target coefficient.
- Contribution to target step: PASS.  It closes the previously missing
  generated-tail-to-score bridge used by the classifier.
- Verdict: PASS.
- Repair direction: None.

### unit_006: Proof-only barred post-score equation

- Statement fidelity: PASS.  The lemma gives the conditional product-one
  reorientation and the barred equation with the same per-column residual,
  while identifying the represented scalar as `abs(theta)`.
- Proof validity: PASS.  Diagonal signs commute with `D_M`; the product of
  the three total signs is tracked explicitly, so the raw right-side sign is
  absorbed into the two other factor columns in the current notation.  The
  represented rank-one tensor and residual norms are preserved.
- Cited-result and assumption audit: PASS.  The only input is unit_001 and a
  clearly marked bookkeeping choice made after score selection.  Existence of
  a target-positive chart or label is not used to prove the no-label ledger.
- Rigor checklist: PASS.  The proof distinguishes proof-only barred copies
  from the setting algorithm state and avoids rebinding the setting factor
  matrix or introducing a look-ahead pair matrix.
- Local adversarial test: PASS.  Product-one flips of one, two, or all three
  modes preserve the represented tensor and residual norms; the base sign
  choice converts `theta` to `abs(theta)` without changing the raw equation's
  provenance.
- Contribution to target step: PASS.  It supplies the sign-compatible
  `E_cert_eq` representation consumed by later selected-state steps.
- Verdict: PASS.
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim remains hidden.  The same-state identity,
span projection, coefficient Gram expansion, scalar remainder, threshold
division, omitted-mass summation, reciprocal profile, LOW/core alternatives,
multi-support score bridge, and post-score orientation each have a matching
theorem-style local unit and label.  The proof references named propositions
and lemmas rather than subsection names or bare unit IDs.  Accepted dependency
claims are restated in current notation before use, and no target label,
cluster, chart membership, or active-ALS invariant is smuggled into the
pre-cluster producer.

## Target Claim Audit

The frozen proof establishes the exact sketch-2 `step_004b` claim for every
stored certified slot: the raw right-sided column-sign equation with the
per-column `d_M tau_r` residual; the coefficient-vector Gram, scalar, and
certificate defect split; the proof-only barred post-score equation; and the
global no-label LOW/core/tail ledger.  Quantifiers, `q_*`, `Gamma`, `r`,
`tau_r`, `lambda_min`, and the finite support conversion are explicit.  The
outputs are derived from `E_cert`, `E_sm`, and the setting proposal procedure
only, with no probability or horizon upgrade.  The raw state, barred copy,
and setting state remain distinct, and the ledger is evaluated before labels
or clustering as required by the accepted sketch row.

## Explicit Rate Audit

The step is rate-bearing because it exposes `r`, `q_real`, `Gamma`,
`tau_r`, `lambda_min`, `lambda_max`, the `eta` reserves, threshold radii,
and per-slot contraction scales.  The audit passes:

- Exposed variables and fixed quantities are listed in the proof's Explicit
  Rate Audit; `q_*`, the numerical thresholds, and
  `tau_r=q_*^2/(10^4 r)` are fixed exactly where used.
- Hidden constants are universal numerical constants and may not depend on
  `n`, `r`, `k`, the base triple, condition numbers, confidence parameters,
  accuracy, labels, clusters, or later ALS states.
- The statement is deterministic for a fixed accepted `E_sm` instance and a
  fixed certified slot; it inherits, but does not alter, the dependency's
  conditional probability mode.  It is fixed-horizon/same-state, not an
  all-time upgrade, and all norm modes (Euclidean residual, induced Gram,
  l1 coordinate mass, and scale-free score) are named.
- Every dropped term has a displayed inequality: Gram expansion (9), the
  one-time `sqrt(r) tau_r` charge, scalar remainder `eta_N`, retained-floor
  inequalities (13), profile bounds (18)--(21), singleton bounds (24)--(30),
  and explicit tail domination (31a)--(32a) and score transfer (37a).
- No public Rate Specialization Bridge is introduced at this producer step;
  the exported `sqrt(r) tau_r` and `q_*^2` charges are explicit for downstream
  specialization.  The baseline reduction is checked: the exact orthogonal
  stationary state has zero realized residual and exact raw/barred equations,
  while finite `tau_r` and `tau_r^2` terms remain conservative envelopes at
  nonstationary certified states.

## Notation Surface Audit

The notation surface is controlled.  `H_M`, `L_M`, the raw/barred equations,
`E_cert_eq`, `E_cert_tail`, the threshold/profile fields, `B`, and the tail
envelope are named public-facing outputs.  `c_M`, `s_M`, `y_M`, sorted
coordinates, scalar expansion helpers, and weighted Cauchy--Schwarz aliases
are appendix-local or proof-local.  `mathcal G_M`, `f_M`, `ell_M`, and
`Omega_theta` have distinct meanings and no collisions.  Every threshold,
margin, radius, and reserve is defined from setting quantities or a named
local conclusion; no one-off alias hides boundedness, finiteness, or an
assumption discharge.  The setting's `S` and raw factor matrices are never
rebound, and proof-only bars are explicitly scoped.

## Target-Step Assembly Audit

The accepted `step_004` certificate and `E_sm` context feed unit_001 and
unit_002.  Unit_003 exports the exact signed coordinate defect; unit_004
proves legal retained floors, the reciprocal profile, and the named
outside-mass package; unit_005 assembles the exhaustive ledger; unit_007
consumes that ledger's generated tail and closes the multi-support score
bridge; and unit_006 records the conditional post-score orientation.  These
named results jointly imply both `E_cert_eq` and `E_cert_tail` with the
accepted assumptions, dependency list, scope, probability mode, and baseline
behavior unchanged.  No assembly link relies on a proof-step ID, subsection
title, or unreviewed future result.

## Review Rationale

`ACCEPTED` is the smallest correct status for attempt 5.  The repaired proof
explicitly exports `B` and equation (15), declares the threshold/defect/
outside-mass dependencies of the ledger, displays the `23 eta_0^2` to public
tail-envelope domination in (31a)--(32a), uses the correct (11b) profile,
and closes the generated-tail-to-score bridge in unit_007.  It also keeps
same-state signs and finite residuals distinct, resolves the notation
collisions, and preserves the exact stationary baseline.  All local units
pass the citation, provenance, adversarial, rate, and assembly audits, so no
step, sketch, or dependency retry is required.
