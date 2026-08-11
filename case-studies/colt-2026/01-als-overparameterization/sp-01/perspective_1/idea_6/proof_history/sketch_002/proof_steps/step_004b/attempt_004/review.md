# Proof Step Review

## Step Review Identity

- Branch: perspective_1/idea_6
- Sketch attempt: 2
- Step ID: step_004b
- Unit attempt: 4
- Repair trigger review SHA-256: 973f1aa8af8f5afb36410b5a50c5d9fceb7198a2a76e20f8fbdc2949cd38ee47
- Reviewed setting SHA-256: a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab
- Reviewed sketch SHA-256: c6126ab9b81d7a7cbcae3b9b857923f3fe8e275ed1ba4376fd830270c5ec95e1
- Reviewed sketch-review SHA-256: 524bc3e32fc6d334d4c6c78bf8e347888df2cd4bbbd21bf7c3dc1414c0c9b3a4
- Reviewed proof artifact: perspective_1/idea_6/proof_steps/step_004b/proof.md
- Frozen proof SHA-256: bac9ca3d0b117c633f8ca1f2a071f4e6eea9e9714c6b8da04beef5cc80daedcd

## Accepted Dependencies

- step_004 proof SHA-256: 33fa04612d06ca26705b1d93ac3df3504bdc20122f6511f8bdc0b7a52a404b71.
- step_004 review SHA-256: 5bff3091b993804f95134f79acd322cd89941b4b78689fa7a3f72806039fc4e7.
- Dependency review status: ACCEPTED.

The dependency was read in current notation. It supplies E_cert, positive same-stored-state contraction norms, the projective residual bound, and the E_sm Gram/weight interface. No archived proof artifact was used as evidence.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004b

## Blocking Issues

1. Unit_005 consumes unit_004 proof-local objects that are not exported by the unit_004 theorem statement. In proof.md:439-439, unit_004 defines the auxiliary B and in proof.md:403-424 proves the summed per-index maximum bound. Unit_005 then uses B and equation (15) in (24)-(25) and (31), but its proposition statement does not name those conclusions and its proof merely refers to them as if a prior proof body were an assumption. Under the local-unit and notation-provenance contracts, a proof-local alias or equation cannot cross a unit boundary without a named exported interface. Either add the explicit conclusion (for example, sum_{i not in I} u_i^2 <= 15 eta_0^2 and B := 32.3 eta_0^2) to Proposition~ref{prop:step-004b-threshold}, or rederive it inside Proposition~ref{prop:step-004b-ledger}; also state the exact threshold/defect dependencies in the ledger proposition. Smallest repair: /proof-step step_004b.

2. The ledger still uses a stale internal reference. Proposition~ref{prop:step-004b-ledger} says "the profile (11) on I" at proof.md:567, but the exported profile is equation (11b). The downstream score proposition uses equation (32) from the ledger proof body rather than a named ledger conclusion. These references are not merely cosmetic: they obscure which theorem-style output is being consumed and fail the target-step assembly/citation discipline. Replace them with the stable proposition labels and the correct equation label after the interface repair. Smallest repair: /proof-step step_004b.

3. The explicit domination for the downstream tail envelope is omitted. After deriving tail_score < 23 eta_0^2 in (31), the proof says "In particular" and asserts the different bound 8.08 eta_0 + 2 eta_rel^2/vartheta_* in (32), but does not display an inequality such as 23 eta_0^2 <= 8.08 eta_0 under the declared eta_0 < 4.89e-4 condition. The explicit-rate contract requires every dropped or dominated term to have its admissibility inequality. Since unit_007 and later filtering consume the (32) interface, add the numerical domination and its fixed-threshold condition before accepting the ledger. Smallest repair: /proof-step step_004b.

4. The baseline paragraph now correctly keeps the fixed q_* reserves, but its transient wording should be made consistent with the setting's first-update span fact. Every Jacobi output lies in the realized target span from time one, so a stored proposal state after the positive burn horizon has no actual perpendicular component even though the conservative tau_r envelope is retained. The phrase at proof.md:895 that a finite q=0 certified transient can retain a perpendicular charge is at best an envelope statement and is not identified as such. Clarify that the residual/certificate charge may be nonzero while the realized perpendicular component is zero after the first update; preserve the exact stationary trace. This is a local baseline/interface clarification, not a sketch change. Smallest repair: /proof-step step_004b.

## Per-Lemma Audit

### unit_001: Same-state signed certificate equation

- Statement fidelity: PASS. It states the exact same-stored-state raw equation, right-sided column signs, per-column D_M(a,a) tau_r residual, and common certificate sign.
- Proof validity: PASS. Multilinearity and the accepted E_cert projective residual establish (1)-(2); the inner-product calculation correctly identifies sign(theta) and excludes theta=0.
- Cited-result and assumption audit: PASS. The current accepted step_004 proof/review hashes are used; no target label, chart premise, clustering event, or active-ALS condition is imported.
- Rigor checklist: PASS. Stored state versus look-ahead, zero-contraction handling, arbitrary projective signs, and finite residual scope are explicit.
- Local adversarial test: PASS. An orthogonal stationary state has zero residual; a finite transient may have a nonzero certificate residual while the right-side sign remains columnwise.
- Contribution to target step: Supplies the raw E_cert_eq interface.
- Verdict: PASS
- Repair direction: None.

### unit_002: Span projection and scale bounds

- Statement fidelity: PASS. The repaired statement includes a q and tau_r-safe lower scalar endpoint and the scale ratios needed downstream.
- Proof validity: PASS. The projector calculation, squared bounds, convexity lower endpoint, q=0 boundary, and numerical 0.69/1.03 envelopes are coherent.
- Cited-result and assumption audit: PASS. E_sm and E_cert are legitimate generated inputs; no dependency is missing.
- Rigor checklist: PASS. The finite-certificate tau_r^2 loss is retained rather than hidden in q_real.
- Local adversarial test: At q_real=0 the new lower endpoint remains below one by the explicit tau_r^2 term, while the exact stationary specialization has s_M=1.
- Contribution to target step: Supplies the span and scale inputs for the defect ledger.
- Verdict: PASS
- Repair direction: None.

### unit_003: Coefficient-vector Gram and certificate defect split

- Statement fidelity: PASS. It defines the actual signed coordinate defect E_{M,i}, its nonnegative majorant, and the exact equality before any ratio division.
- Proof validity: PASS. The vector Gram expansion, l1 budget, one finite sqrt(r) tau_r conversion, and scalar second-order reserve follow from (10).
- Cited-result and assumption audit: PASS. Only unit_001, unit_002, and accepted E_sm facts are consumed.
- Rigor checklist: PASS for the exposed defect and scalar categories.
- Local adversarial test: Full support costs at most 2 sqrt(r) tau_r, with no hidden r^2 factor.
- Contribution to target step: Supplies the exact coordinate relation needed by the threshold calculus.
- Verdict: PASS
- Repair direction: None.

### unit_004: No-label threshold and reciprocal-profile calculus

- Statement fidelity: PASS. It states the exact multiplicative identity, nonempty non-LOW support, summed per-index outside bound, reciprocal profile, and corrected <0.17 LOW margin.
- Proof validity: PASS. The per-index elimination, direct sum of maxima, additive normalization calculation, profile constants, and threshold-straddling argument are valid under unit_003 and the repaired unit_002 scale bounds.
- Cited-result and assumption audit: PASS. Its inputs are named; the helper B is correctly defined locally but is not yet exported for unit_005, which is recorded in blocker 1.
- Rigor checklist: PASS for denominator positivity and endpoint arithmetic.
- Local adversarial test: Different maximizing modes across outside indices are covered by the direct sum_i u_i^2 estimate in (15); q=0 scalar losses are handled upstream.
- Contribution to target step: Produces the threshold/profile and outside-mass mechanisms.
- Verdict: PASS
- Repair direction: Export the needed outside-mass conclusion (or rederive it downstream) before consuming it.

### unit_005: Exhaustive LOW/core/tail ledger

- Statement fidelity: REVISE_STEP. The singleton floor, componentwise score interval, and corrected multi-support tail field are present, but the proposition statement does not expose the threshold/defect conclusions whose proof-local B and (15) are consumed.
- Proof validity: REVISE_STEP. The q=0 scalar estimate and corrected per-index maximum coefficient are sound. The remaining cross-unit alias/equation use and the unproved domination from 23 eta_0^2 to (32) prevent acceptance.
- Cited-result and assumption audit: REVISE_STEP. The exact prior theorem-style outputs used in (24)-(25) and (31)-(32) are not named in the proposition interface.
- Rigor checklist: REVISE_STEP for the missing explicit numerical domination and stale profile reference.
- Local adversarial test: The finite q=0 scalar boundary and varying-mode outside maxima are now addressed; the remaining risk is artifact-interface provenance rather than a missing mathematical mechanism.
- Contribution to target step: Intended to package E_cert_tail, but its current unit boundary is not contract-valid.
- Verdict: REVISE_STEP
- Repair direction: Export or rederive B and the summed outside bound, state all dependencies, display the 23 eta_0^2 domination, and rerun the producer.

### unit_007: Retained-core multi-support score bridge

- Statement fidelity: PASS. It now names both the threshold and ledger propositions and states the required 160 eta_0/s_mix interface.
- Proof validity: PASS conditional on the corrected ledger interface. The weighted Cauchy-Schwarz argument, Gram/scalar transfer, and kappa_I <= Gamma/sqrt(m) comparison are valid.
- Cited-result and assumption audit: PASS. The ledger is now named as a dependency; the proof should cite its theorem-style tail conclusion rather than raw equation (32) after the producer repair.
- Rigor checklist: PASS for the 72+5 <=144 and 160 eta_0 arithmetic.
- Local adversarial test: A two-support core is controlled by the retained profile and the explicitly bounded tail.
- Contribution to target step: Supplies the multi-support score bridge consumed by step_005.
- Verdict: PASS
- Repair direction: Replace the raw equation reference with the named ledger conclusion during the same producer rerun.

### unit_006: Proof-only barred post-score equation

- Statement fidelity: PASS. The conditional product-one sign representation is separate from the pre-cluster ledger and uses the nonconflicting Omega_theta sign matrix.
- Proof validity: PASS. Right multiplication by total sign matrices gives the recomputed barred coefficients, preserves residual norms, and converts the represented scalar to |theta|.
- Cited-result and assumption audit: PASS. It uses unit_001 and the explicit conditional sign choice only.
- Rigor checklist: PASS for negative scores, sign products, and commuting diagonal matrices.
- Local adversarial test: Independent mode sign flips preserve the represented rank-one term and residual norms.
- Contribution to target step: Supplies the post-score barred E_cert_eq interface.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The previously rejected mathematical claims are now named and proved: the q=0 scale endpoint, the singleton scalar boundary, the direct sum of per-index outside maxima, the singleton floor/score, and the 160 eta_0 retained-core bridge. The remaining hidden/interface claims are the cross-unit export of B and the summed outside bound, the numerical domination used to replace 23 eta_0^2 by the public (32) envelope, and the stale equation/reference labels. The baseline paragraph also needs to distinguish a conservative perpendicular envelope from the actual post-first-update span.

## Target Claim Audit

The attempt now establishes the substantive raw equation, exact defect split, 144 eta_0 profile, singleton floor and lambda_j interval, corrected multi-support tail, and 160 eta_0/s_mix bridge. It does not yet establish a contract-valid E_cert_tail artifact because unit_005 consumes unexported unit_004 proof-local data and omits the explicit public-envelope domination. The mathematical mechanism remains step-local and repairable without changing the accepted sketch.

## Explicit Rate Audit

- Exposed variables: r, q_real, Gamma, tau_r, lambda_min, lambda_max, eta_G, eta_N, eta_C, eta_0, eta_rel, thresholds, support size, and per-slot contraction scales.
- Hidden-constant declarations, fixed-instance conditioning order, probability mode, fixed-state horizon, and Euclidean/operator/l1 norm modes are present.
- The q=0 scalar terms and per-index tail accumulation are now explicit. The public tail simplification still lacks the displayed 23 eta_0^2 <= 8.08 eta_0 admissibility inequality, so the rate-bearing ledger is not yet accepted.
- Baseline reserves are correctly fixed at q_* and the exact stationary equation is preserved, subject to the transient wording clarification.
- No probability or horizon upgrade is introduced by this step.

## Notation Surface Audit

The major symbol collisions from attempt 3 are repaired: the Gram perturbation is mathcal G_M, the singleton tail is ell_M, and the sign matrix is Omega_theta. The remaining notation issue is the cross-unit use of proof-local B and raw equation numbers; export the named interface or inline the bound in unit_005.

## Target-Step Assembly Audit

The producer order is acyclic and now includes the unit_005 -> unit_007 dependency. Assembly still relies on a proof-local equation (15), a proof-local alias B, and an unstated numerical domination for the public tail field. Replace those with named theorem-style conclusions and an explicit endpoint inequality before E_cert_tail flows to step_005 and step_006.

## Review Rationale

REVISE_STEP with /proof-step step_004b is the smallest sound route. Attempt 4 repairs the substantive boundary, accumulation, notation, baseline-reserve, and dependency issues from attempt 3. The remaining defects are local artifact-interface and explicit-rate-contract repairs; the accepted setting, sketch, mechanism, and target remain unchanged. A fresh review is required after the producer exports the outside bound and public tail domination.
