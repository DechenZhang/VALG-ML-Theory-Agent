# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004b`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_6/proof_steps/step_004b/proof.md`
- Frozen SHA-256: `88579c6c571eb192ddfe6f4439e4188679a42099e59c75713b65fc6ec3d42513`
- Accepted dependency: `perspective_1/idea_6/proof_steps/step_004/proof.md`, SHA-256 `3c94965198445dfdeb99ea5e46539168f7f3f2f18f0b33a4c3a05d623672f24e`, with matching `Step-Review Status = ACCEPTED`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004b

## Blocking Issues

1. **Profile normalization has a false numerical inequality and does not establish the required 144-eta bound.** In `unit_004`, lines 341--346 use
   `68 eta_0 + 33 eta_0/(1-33 eta_0) + 68 eta_0 < 144 eta_0`.
   For every positive `eta_0`, the coefficient on the left is strictly larger than `136+33=169`, before the denominator correction, so this displayed inequality cannot hold. The exported weighted profile (10), consumed by `unit_006` and the global ledger, is therefore unproved. Repair the normalization/denominator calculation with a valid reciprocal bound (or a sharper profile derivation) while retaining the sketch's `144 eta_0` target.

2. **The multi-support profile is circular through an unproved outside-mass bridge.** `unit_004`, lines 316--317, makes (10) conditional on outside squared mass at most `33 eta_0`. The only multi-core derivation, `unit_006`, immediately invokes (10) at lines 432--440 and only afterward claims at lines 452--453 that the same inequality proves the outside-mass bound. Units 005 and 007 cover singleton and empty/straddling cases and do not independently prove the bound for `|I| >= 2`. This leaves the `|I| >= 2` branch without a noncircular producer and prevents `E_cert_tail` from being exported. Add or reorder a local outside-mass lemma derived directly from the coordinate equations before the profile is used, then consume it in the multi-support proof.

3. **The singleton tail derivation contains an unsupported companion bound and an unsupported small-root selection.** In `unit_005`, lines 381--401, (17) is asserted from (16) with coefficient `1.03`, although the displayed assumptions only give the direct one-equation factor `mu_i/alpha_hat_M <= 1.01/0.69`, approximately `1.46`; the required joint case split using the other two equations is not shown. The subsequent three-class inequality (18) and the choice of its small root are also asserted without proving that the larger root would create a second core index. Consequently the tail bound (13), l2 bound (14), and score interval (15) do not follow from the submitted derivation. Replace this block by a complete aggregate pair-equation/small-root argument (or explicitly prove the missing joint case split and root exclusion) under the same target constants.

4. **The empty-core and threshold-straddling bridge is stated rather than proved.** `unit_007`, lines 471--497, jumps from assigning a below-threshold mode to (23), a bound on one mode's infinity norm, without displaying the summation and defect inequalities that imply it. The subsequent score estimate (24), the `0.167 lambda_max` contradiction, and the straddling conclusion depend on this hidden theorem-critical subclaim. Provide a self-contained empty-core/straddling derivation with explicit quantifiers and defect charges, or add a named local lemma proving (23) before using it.

## Per-Lemma Audit

### unit_001: raw same-state right-sign equation

- Statement fidelity: PASS. The unit targets the exact same-stored-state equation, keeps the column sign matrix on the right, and states the per-column `d_M tau_r` residual required by `E_cert_eq`.
- Proof validity: PASS. Multilinearity gives the displayed pair coefficient from the two held columns, and the definition of the projective certificate gives the residual identity and nonzero contraction norm.
- Cited-result and assumption audit: PASS. It uses only the accepted `step_004` stored-state interface and current setting notation; no look-ahead or target label is imported.
- Rigor checklist: PASS. The columnwise signs, dimensions, and same-old-state convention are explicit, and the zero-contraction branch is excluded by the accepted certificate predicate.
- Local adversarial test: PASS. Arbitrary contraction signs remain in `Sigma_M`; a stationary orthogonal state gives zero residual while a finite transient retains its certificate charge.
- Contribution to target step: Produces the valid raw `E_cert_eq` source.
- Verdict: PASS
- Repair direction: None.

### unit_002: dual decomposition and coefficient-vector expansion

- Statement fidelity: PASS. The unit supplies the dual projection, coefficient norms, contraction-scale interval, and vector-level Hadamard Gram budget used downstream.
- Proof validity: PASS. Orthogonal projection and Gram spectral bounds give the `s_M` bounds; the Khatri--Rao upper field from the accepted static event gives the contraction upper bound; the three expanded leakage terms have l1 budgets `q_*`, `q_*`, and `q_*^2`.
- Cited-result and assumption audit: PASS. The accepted dependency's `E_sm` interface is restated in current notation, including the cyclic Khatri--Rao field; no generated trajectory property is promoted to a primitive assumption.
- Rigor checklist: PASS. The lower contraction estimate is weaker than the direct Cauchy bound and remains valid; all denominators are positive under the certificate and Gram floors.
- Local adversarial test: The extremal `q_*` and `Gamma=1.01` values leave the stated `0.69` and `1.03` margins. No rank-dependent l1 conversion is used in the Gram expansion.
- Contribution to target step: Valid input to the defect and support-ledger units.
- Verdict: PASS
- Repair direction: None.

### unit_003: three-way defect split and normalized relation

- Statement fidelity: PASS. The raw relation is translated to the scale-free coordinate interface and the three requested defect reserves `eta_G`, `eta_N`, and `eta_C` are exposed.
- Proof validity: PASS for the displayed normalized identity and finite-support certificate charge. Applying `L_M^T` and dividing by the two coefficient norms gives (5), and `sqrt(r)` is used exactly once for the l2-to-l1 conversion.
- Cited-result and assumption audit: PASS. Inputs are the two preceding local units and accepted geometry; the normalization remainder is recorded as a conservative scalar reserve rather than silently treated as vector leakage.
- Rigor checklist: PASS for this unit in isolation; the later profile units must still use the reserve without circular closure.
- Local adversarial test: Unknown residual signs and a support of size `r` are covered by the absolute-value and `2 sqrt(r) tau_r` bounds.
- Contribution to target step: Valid defect equation, but it does not by itself prove any support profile.
- Verdict: PASS
- Repair direction: None.

### unit_004: retained-floor ratio and weighted core profile

- Statement fidelity: REVISE_STEP. The ratio portion matches the sketch, but the exported `144 eta_0` profile is conditional on a generated outside-mass fact that is not yet available.
- Proof validity: REVISE_STEP. The reciprocal calculation at lines 341--346 contains the false inequality identified in Blocking Issue 1, so (10) is not established even if the outside-mass condition is supplied.
- Cited-result and assumption audit: REVISE_STEP. The outside-mass condition is described as proved by later units, but no accepted dependency or prior local unit supplies it at this point.
- Rigor checklist: The retained-floor denominator and ratio algebra are plausible; the normalization and quantifier/ordering obligation fails.
- Local adversarial test: At the declared worst-case positive `eta_0`, the displayed left coefficient is about `169.5 eta_0`, not below `144 eta_0`.
- Contribution to target step: The profile is theorem-critical for the multi-support score bound and is currently unavailable.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_004b`; prove outside mass before invoking the profile and replace the invalid reciprocal bound with a valid `144 eta_0` estimate.

### unit_005: singleton core and its tails

- Statement fidelity: REVISE_STEP. The intended singleton outputs are the sketch targets, but the proof does not establish the tail, l2, or score constants.
- Proof validity: REVISE_STEP. The companion estimate (17), the three-class inequality (18), and the selection of the small root are not derived from (16), as detailed in Blocking Issue 3.
- Cited-result and assumption audit: REVISE_STEP. No accepted result supplies the missing joint coordinate case split or root-exclusion invariant.
- Rigor checklist: The proof needs explicit handling of coordinates with one or more below-threshold entries; the current prose hides those cases under "apply the same bound".
- Local adversarial test: The direct equation for a companion gives a factor as large as `1.01/0.69`; an additional two-equation argument is necessary to justify the claimed `1.03` coefficient and cannot be inferred from one displayed inequality.
- Contribution to target step: The singleton branch remains unsupported, so its score gap cannot feed `step_005`.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_004b`; replace (17)--(18) with a fully displayed aggregate pair-equation/small-root proof or prove the missing case split.

### unit_006: multi-support core and weighted tail score

- Statement fidelity: REVISE_STEP. It states the required multi-support output but relies on the profile before its hypothesis is discharged.
- Proof validity: REVISE_STEP. Lines 432--453 form a circular argument: (10) is used to obtain the core expansion and tail estimate, then the same estimate is used to activate (10). The score and tail constants therefore do not follow.
- Cited-result and assumption audit: REVISE_STEP. No accepted dependency supplies the multi-core outside-mass event.
- Rigor checklist: The displayed numerical tail envelope is plausible conditional on a valid profile, but the conditional-to-unconditional transition is missing.
- Local adversarial test: A multi-core state with unresolved outside mass is precisely the branch where the profile denominator can fail; the proof does not rule it out before division.
- Contribution to target step: Currently cannot produce the multi-support half of `E_cert_tail`.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_004b`; add a noncircular outside-mass bridge before the profile use and then recheck (19)--(21).

### unit_007: empty-core and threshold-straddling closure

- Statement fidelity: REVISE_STEP. The unit covers the intended empty and straddling cases, but its exported `0.167` boundary is not derived.
- Proof validity: REVISE_STEP. The assignment/summation step to (23) and the transition to (24) omit the coordinatewise inequalities and defect sums needed for the claimed infinity-norm bound.
- Cited-result and assumption audit: REVISE_STEP. No prior unit or accepted dependency supplies (23); unit_006 is itself circular, so it cannot be used as an implicit source.
- Rigor checklist: Empty-core, tie, and straddling branches need explicit quantifiers and a valid score conversion before the LOW conclusion.
- Local adversarial test: Distributing below-threshold coordinates across different modes does not by itself imply that one mode has infinity norm below the threshold; the missing coupling argument is theorem-critical.
- Contribution to target step: The exhaustive support partition is not closed until this bridge is proved.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_004b`; provide a named empty-core/straddling lemma with the full aggregate coupling calculation.

### unit_008: global no-label threshold/tail ledger

- Statement fidelity: REVISE_STEP. It has the right public fields and no-label scope.
- Proof validity: REVISE_STEP because it assembles units 004--007, which contain the profile, singleton, multi-support, and empty-core blockers above.
- Cited-result and assumption audit: PASS for label erasure and producer ordering; no future clustering result is imported.
- Rigor checklist: The producer path is acyclic at the label level, but the internal local proof dependency is not acyclic due to the profile/outside-mass cycle.
- Local adversarial test: An unresolved multi-core branch can reach this assembly without a valid profile or tail bound.
- Contribution to target step: `E_cert_tail` is not currently established.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_004b`; consume freshly repaired support-case units only after a valid profile and empty/straddle bridge are proved.

### unit_009: proof-only barred post-score equation

- Statement fidelity: PASS conditional on the later score/sign hypothesis, matching the sketch's proof-only convention.
- Proof validity: PASS. Columnwise multiplication and the product-sign identity convert the raw right-sign equation to the barred equation, and the represented rank-one term is preserved.
- Cited-result and assumption audit: PASS. The common-sign statement is explicitly conditional and no later barred object is used in units 002--008.
- Rigor checklist: The product-one gamma gauge and third-mode score sign are separated, and the residual norm is unchanged.
- Local adversarial test: Negative scores and arbitrary individual mode signs are handled by the product-preserving sign choice.
- Contribution to target step: Valid post-score interface, though it cannot rescue the unresolved pre-score ledger.
- Verdict: PASS
- Repair direction: None.

### unit_010: scope, baseline, and producer-consumer closure

- Statement fidelity: PASS as a scope/provenance claim, subject to repaired upstream units.
- Proof validity: PASS for the finite-horizon and orthogonal stationary observations; it does not introduce a new trajectory recurrence.
- Cited-result and assumption audit: PASS. It uses only the stored-state interface and direct q-zero algebra.
- Rigor checklist: The baseline conclusion is preserved rather than replaced by a finite certificate floor, and `Refresh_s` is correctly excluded.
- Local adversarial test: A stationary orthogonal state has `H=I`, `g=0`, and zero raw residual; a transient retains the explicit certificate charge.
- Contribution to target step: Provides valid scope and baseline metadata but cannot close `E_cert_tail` alone.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The raw equation and vector Gram expansion are explicitly localized. The scan finds additional unproved claims in the support ledger: the companion case split and small-root exclusion behind (17)--(18), the independent multi-core outside-mass producer needed before (10), the invalid numerical reciprocal bound in (10), and the empty/straddling infinity-norm bridge (23). These are not merely notation or exposition gaps because each controls a theorem-facing threshold, profile, or score interface consumed by `step_005`.

## Target Claim Audit

The proof establishes `E_cert_eq` and its per-column residual interface, and it correctly keeps raw signs and same-state pair coefficients. It does not establish the exact `E_cert_tail` claim: the 144-eta weighted profile, singleton score/tail bounds, multi-support tail score, and empty/straddling exhaustion remain unsupported under the declared `q_*`, `Gamma`, `tau_r`, and finite-support quantifiers. The target scope, probability mode, and same-state convention are otherwise aligned with sketch attempt 1.

## Explicit Rate Audit

The step is rate-bearing. Exposed variables and the conditional/pathwise probability, finite-horizon, Euclidean/l1 norm modes are declared, and the `eta_C=2 sqrt(r) tau_r` charge is retained. However, the advertised `144 eta_0`, `a_cert`, `s_-`, `s_+`, `s_mix`, and `0.167` absorptions cannot be accepted because the inequalities and bridges listed in Blocking Issues 1--4 are not proved. No probability conversion or hidden confidence dependence is introduced.

## Notation Surface Audit

The proof-local versus public-facing classification is generally clear, and the raw/barred objects are kept separate. The profile condition is nevertheless an unproved generated condition hidden in a later-unit dependency, and the label `[prop:step-004b-barred]` is paired with a lemma title in unit 009; normalize that theorem-style naming during the retry. No new condition number or target label is hidden.

## Target-Step Assembly Audit

The assembly correctly orders `E_cert -> E_cert_eq -> E_cert_tail -> step_005` at the public level and does not consume clustering or `Refresh_s`. Internally, however, `unit_006` consumes the conditional profile from `unit_004` before proving its outside-mass premise, while units 005 and 007 do not provide that premise for the multi-core branch. Consequently the accepted local units do not jointly imply the exact target step claim.

## Review Rationale

`REVISE_STEP` is the smallest sound status. The raw same-state certificate interface, static geometry use, defect split, conditional barred convention, and baseline bookkeeping can remain unchanged. The failures are local derivation and dependency-order defects within the submitted step: repair requires a noncircular outside-mass/profile sequence, a valid reciprocal numerical bound, and explicit singleton and empty/straddling calculations. The accepted sketch row, theorem scope, assumptions, output interface, and target metric need not change, so routing to `/proof-step step_004b` is sufficient.
