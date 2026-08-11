# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 2
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_005/proof.md`
- Frozen SHA-256:
  `e6ed7fde93e2f31d0907174c9c1bca93260ba902da11681474dce0deb2e257e9`
- Accepted dependencies:
  - `perspective_1/idea_6/proof_steps/step_004/proof.md`, frozen SHA-256
    `3c94965198445dfdeb99ea5e46539168f7f3f2f18f0b33a4c3a05d623672f24e`,
    with accepted review SHA-256
    `e06115cb6a90a29a481ea0a736ee07b054872a807e98436a2a64bac0efc47f95`.
  - `perspective_1/idea_6/proof_steps/step_004b/proof.md`, frozen SHA-256
    `23224db02dc7379564f947f410d0b325ce086673567bdec489e87f32fde55339`,
    with accepted review SHA-256
    `07cdd936f91f243cbf983c3bf22b8081cf9e9d19569adfac97632ea93fea12c6`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Covered witnesses are singleton component states

- Statement fidelity: The lemma states the required covered-witness
  existence, componentwise score interval, and distinctness conclusion. It
  uses `E_chart_l1` only for covered slots, as required by the sketch.
- Proof validity: The accepted dual off-target recurrence gives the
  `1/1024` bound through storage. The accepted coefficient normalization
  bounds then make the threshold core exactly `{j}`, and the accepted
  singleton ledger gives the score interval. The ambient chart separation
  correctly rules out one slot covering two distinct targets.
- Cited-result and assumption audit: `E_cov`, `E_chart_l1`, and
  `E_cert_tail` are accepted derived outputs. No all-certified state is
  assumed to satisfy the covered chart tightening.
- Rigor checklist: Target denominators, orientations, strict threshold
  inequalities, and distinct-target quantifiers are handled. The realized
  Gram row bound gives the stated target-column separation.
- Local adversarial test: A slot allegedly covered for two targets would put
  signed target columns within `2/128`, contradicting their squared distance
  lower bound `2(1-q_*)>1`.
- Contribution to target step: Supplies one distinct high-score singleton
  witness per target and the lower scale for `sigma_max`.
- Verdict: PASS
- Repair direction: None.

### unit_002: Weighted support and exact stationary mixture score

- Statement fidelity: The proposition gives the exhaustive non-LOW
  singleton/multi-support split, the direct `m>=2` weighted score bound, and
  the exact orthogonal stationary support formula required by the sketch.
- Proof validity: The multi-support inequality is exactly the accepted
  ledger output. At the orthogonal stationary boundary, the three cyclic
  equations imply equal contraction scales and
  `x_{U,i}=x_{V,i}=x_{W,i}=d/lambda_i`; normalization and sign consistency
  then give `S_I=(sum_i lambda_i^{-2})^{-1/2}` without cancellation.
- Cited-result and assumption audit: The positive-interference classifier
  does not consume the local orthogonal-stationary hypothesis. The boundary
  calculation is correctly isolated as a deterministic specialization.
- Rigor checklist: Nonempty support, positive coordinate magnitudes,
  arbitrary weights, modewise signs, and normalization are explicit.
- Local adversarial test: For unequal weights and `m=2`, the formula retains
  the inverse-weight profile rather than replacing it with the equal-weight
  `lambda/sqrt(2)` surrogate.
- Contribution to target step: Supplies the component/mixture comparison and
  exact weighted baseline interface.
- Verdict: PASS
- Repair direction: None.

### unit_003: Observable score gap and retained support

- Statement fidelity: The proposition targets the setting's exact
  `0.85 sigma_max` rule and proves retention of precisely the singleton
  ledger branch, including a positive theta margin.
- Proof validity: Coverage supplies the lower maximum score; the ledger
  supplies the upper maximum score. The displayed endpoint inequalities
  prove LOW and multi-support rejection and singleton retention, with
  `Gamma<=1.01` retained explicitly.
- Cited-result and assumption audit: Only units 001--002 and accepted ledger
  fields are used. The singleton index is a derived proof label and is not
  used by the observable filter.
- Rigor checklist: Strict inequalities precede ties, and the proof handles
  zero, negative, LOW, singleton, and `m>=2` scores through absolute values.
- Local adversarial test: At maximal `eta_0`,
  `1.01 s_mix<0.794`, `0.85 s_->0.810`, and
  `s_-/(1.01 s_+)>0.901`; the filter gap remains strict.
- Contribution to target step: Produces `E_support_wt` and the nonzero score
  source used by the sign/gauge step.
- Verdict: PASS
- Repair direction: None.

### unit_004: Selected singleton chart and denominator margins

- Statement fidelity: The lemma states the requested target orientation,
  dual-l1 and ambient chart bounds, same-state contraction denominator
  margin, and score-sign product relation.
- Proof validity: The accepted singleton decomposition and orthogonal
  projection yield the ambient and dual bounds. The target correlation and
  off-target correlation estimates give
  `Delta=chi_sel^2+Gamma B^2<q_*`, hence the stronger `1+-Delta`
  contraction interval and the advertised `31/32`--`33/32` margin. The
  target score term dominates the off-target triple sum, proving the product
  sign identity.
- Cited-result and assumption audit: `E_sm`, `E_cert_eq`, and the accepted
  singleton ledger are legal derived inputs. The radii are derived from
  `a_cert`, `q_*`, and `tau_r`; no chart or denominator condition is assumed.
- Rigor checklist: The projection residual is orthogonal to the realized
  target span, all target correlations are strictly nonzero, contraction
  norms remain positive, and arbitrary raw mode signs are retained until
  the derived orientation.
- Local adversarial test: At `q=q_*` and the maximal singleton tail,
  `B<1/123` and `Delta<q_*<1/32`; the off-target score contribution is below
  `10^-3`, while the target product exceeds `0.99`.
- Contribution to target step: Supplies the exact chart, denominator, and
  orientation result consumed by clustering and gauge formation.
- Verdict: PASS
- Repair direction: None.

### unit_005: Observable graph separation and exactly r clusters

- Statement fidelity: The proposition states the exact same-target and
  cross-target correlation margins, the setting graph threshold, exactly
  `r` components, and the proof-only target permutation.
- Proof validity: Using the content of unit_004, the triangle and unit-vector
  identities prove `1-32q_*` within a component and a cross-target bound
  below `1/32`. Coverage makes each target group nonempty, so the graph is a
  disjoint union of exactly `r` groups.
- Cited-result and assumption audit: The graph proof now invokes
  `Lemma~\ref{lem:step-005-chart-denom}`, whose declaration and proof occur
  in unit_004. The chart, coverage, and ledger inputs are accepted derived
  outputs, and no target label is treated as observable input.
- Rigor checklist: Absolute correlations remove raw orientation, strict
  margins precede tie breaking, and graph connectivity follows because each
  same-index group is a clique.
- Local adversarial test: Duplicate retained states cannot create an extra
  component, and distinct targets cannot be connected even through an
  intermediate state because every cross-target edge is excluded.
- Contribution to target step: Supplies `E_cluster` and the proof-only
  target permutation with a valid named-result dependency trace.
- Verdict: PASS
- Repair direction: None.

### unit_006: Certificate signs and product-preserving gauge

- Statement fidelity: The lemma states certificate-sign equality,
  score-sign absorption, a product-one direction gauge, the barred
  same-state equation, positive scalar, and `s_comp` interval required
  downstream.
- Proof validity: Inner-producting the raw certificate equation gives
  `|theta-epsilon_M d_M|<=d_M tau_r`; positivity of `d_M`, nonzero retained
  score, and `tau_r<1` force every certificate sign to equal
  `sign(theta)`. The beta-product identity then converts the raw equation to
  the barred one and preserves the initialized rank-one tensor. The
  `a`/`gamma` decomposition has product one exactly.
- Cited-result and assumption audit: Both uses of the beta signs and their
  product now cite `Lemma~\ref{lem:step-005-chart-denom}`, the exact declared
  source. All other inputs are legal accepted or prior named local outputs.
- Rigor checklist: Negative theta, the setting's signed third factor,
  columnwise right signs, recomputed pair coefficients, and residual norms
  are handled without changing the algorithmic state.
- Local adversarial test: For any independent raw mode-sign tuple, absorbing
  `sign(theta)` in the initialized third direction leaves a residual
  product-one gauge and produces the same rank-one term.
- Contribution to target step: Supplies `E_gauge`, the barred equation, and
  `s_comp` through valid theorem-style references.
- Verdict: PASS
- Repair direction: None.

### unit_007: Finite scope, generated-output flow, and baseline

- Statement fidelity: The claim records the required producer order,
  finite same-state scope, independence from later ALS/refresh objects, and
  exact orthogonal equal-weight baseline.
- Proof validity: The accepted ledger is evaluated over a finite stored
  pool; filtering, graphing, and proof-only gauges introduce no recurrence
  or accumulated residual. At an exact orthogonal component, the
  same-state residual vanishes and `s_comp=1`.
- Cited-result and assumption audit: The producer path uses only accepted
  dependencies and preceding local results. Later quotient states are not
  imported as evidence.
- Rigor checklist: Finite certified transients remain distinct from exact
  stationary states, and the zero-residual baseline is not weakened to a
  `tau_r` remainder.
- Local adversarial test: A nonstationary certified state is still charged
  its finite residual; only the exact component specialization receives the
  zero-residual conclusion.
- Contribution to target step: Closes scope, generated-output provenance,
  and baseline invariance.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent mathematical subclaim is hidden. Covered singleton witnesses,
the weighted stationary profile, observable filter gap, selected chart and
denominator margins, graph separation, sign/gauge conversion, and scope are
all named local units. The repaired graph and gauge invocations point to the
declared chart/denominator lemma and introduce no new claim or bridge.

## Target Claim Audit

The displayed derivations establish the frozen `step_005` mathematical claim
under the accepted `step_004` and `step_004b` outputs: the all-certified
weighted classifier, direct multi-support bound, positive theta margin,
component/mixture gap, graph separation, exactly `r` observable clusters,
selected chart and denominator margins, proof-only permutation, and
product-preserving gauge. Quantifiers, conditional/pathwise probability mode,
finite-pool scope, and realized-factor metric are unchanged.

## Explicit Rate Audit

The proof exposes `r`, `q_real`, `Gamma`, the realized weight endpoints,
`tau_r`, `a_cert`, `eta_0`, `eta_rel`, the support threshold and retained
floor, `s_-`, `s_+`, `s_mix`, the finite pool, chart radii, and graph
threshold. Hidden-constant dependence, deterministic conditioning order,
fixed finite horizon, probability mode, and Euclidean/dual-l1/score norm
modes are stated. Equations (3), (9)--(11), (13)--(25) display the score,
chart, denominator, and graph absorptions, with no dropped `Gamma-1`, tail,
or certificate term. No probability conversion occurs. The orthogonal
equal-weight component specialization keeps exact zero residual and
`s_comp=1`; there is no baseline weakening. The reference repair changes no
rate field or constant.

## Notation Surface Audit

Public-facing outputs are limited to `E_support_wt`, `E_cluster`, `E_gauge`,
the selected chart/denominator fields, the proof-only permutation interface,
and `s_comp`. Coefficient, support, beta/gamma, and barred helper objects are
appropriately classified as proof-local. The radii and margins have explicit
provenance, and every local theorem-style reference used by the graph and
gauge arguments resolves to its declared result.

## Target-Step Assembly Audit

The final assembly cites `Lemma~\ref{lem:step-005-chart-denom}` and correctly
composes all seven named units into the target outputs. The graph proof and
both gauge invocations cite that same declared lemma, so the dependency trace
is closed. No dependency, sketch row, or output interface changes.

## Review Rationale

`ACCEPTED` is the smallest sound status. Unit attempt 2 changes only the unit
attempt identity and the three theorem references identified by the prior
review; all now resolve to
`Lemma~\ref{lem:step-005-chart-denom}`. The weighted classifier,
component/mixture arithmetic, selected chart and denominator bounds, graph
separation, sign/gauge algebra, finite-scope provenance, explicit rates, and
baseline remain substantively unchanged and pass audit against the frozen
setting, accepted sketch, and accepted dependency artifacts. No retry is
needed.
