# Proof Step Review

## Step Review Identity

- Branch: perspective_1/idea_6
- Sketch attempt: 2
- Step ID: step_004b
- Unit attempt: 3
- Repair trigger review SHA-256: 295390334a4cfd3c513d6bab5c1154a0af5fd0b7c50919965800a3977d0da7d3
- Reviewed setting SHA-256: a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab
- Reviewed sketch SHA-256: c6126ab9b81d7a7cbcae3b9b857923f3fe8e275ed1ba4376fd830270c5ec95e1
- Reviewed sketch-review SHA-256: 524bc3e32fc6d334d4c6c78bf8e347888df2cd4bbbd21bf7c3dc1414c0c9b3a4
- Reviewed proof artifact: perspective_1/idea_6/proof_steps/step_004b/proof.md
- Frozen proof SHA-256: fcb911dc6016a41e1fae1ec51cfcc42e421a4409a33de51ec27d57302123846d

## Accepted Dependencies

- step_004 proof SHA-256: 33fa04612d06ca26705b1d93ac3df3504bdc20122f6511f8bdc0b7a52a404b71.
- step_004 review SHA-256: 5bff3091b993804f95134f79acd322cd89941b4b78689fa7a3f72806039fc4e7.
- Dependency review status: ACCEPTED.

The dependency was read in current notation and supplies E_cert, positive same-stored-state contraction norms, the projective residual bound, and the E_sm Gram/weight interface. No archived proof artifact was used as evidence.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004b

## Blocking Issues

1. The q=0 boundary is not handled by the span-scale proof or the singleton score proof. At proof.md:248-252 the displayed inequality
   1-q <= sqrt((1-tau_r^2)/(1+q))
   is false when q=q_real=0 and tau_r>0, which is an allowed setting specialization. More importantly, proof.md:615 uses |s_U s_V s_W-1|<=4q. A finite q=0 certified transient can have nonzero perpendicular certificate residual and hence s_M<1, so this absolute inequality is false even though the exact stationary state has s_M=1. The added 8 tau_r reserve in (29) does not repair an inequality that was never proved. Replace these displays by bounds using q_* and an explicit tau_r (or tau_r^2) term, then redo (29)-(30) and the boundary audit. Smallest repair: /proof-step step_004b.

2. The multi-support tail calculation misuses the outside-mass bound. Equation (15) bounds max_M sum_{i not in I} x_{M,i}^2. In (31), the proof sets u_i to the largest coordinate at each index and then uses the 32.3 eta_0^2 value as if it bounded sum_i u_i^2. In general sum_i u_i^2 can be as large as the sum of the three per-mode bounds; the maximizing mode can vary with i. The required Cauchy-Schwarz term in (31) therefore has an unsupported constant. Derive sum_i u_i^2 directly from the per-index inequality (14), or pay the correct factor and verify the 16 eta_0 and downstream 8.08 eta_0 envelopes. Smallest repair: /proof-step step_004b.

3. Unit_007 consumes a generated tail bound without declaring its producer. Its statement says only "Under Proposition~ref{prop:step-004b-threshold}" but line 738 uses (32), which is proved in Proposition~ref{prop:step-004b-ledger} (unit_005). The local lemma map likewise omits that dependency. Under the step-locality and generated-output-flow contracts, a theorem-style local unit must name the accepted prior result supplying tail_score before using it. Add unit_005 as an explicit dependency in the statement/map and re-audit the acyclic producer path. Smallest repair: /proof-step step_004b.

4. The proof reuses mathematical symbols with different meanings. F_M denotes the mode contraction in unit_001/unit_002 and the Gram perturbation H_M-I in unit_003; L_M denotes the realized dual in unit_002 and the singleton l1 tail in unit_005; S is a setting factor matrix and is also the sign matrix in unit_006. These collisions make the cited equations and public notation non-self-contained and violate the notation-drift contract. Rename the proof-local objects consistently before rerun. Smallest repair: /proof-step step_004b.

5. The baseline-rate paragraph contains a false reserve specialization. Eta_G and eta_N are defined using the fixed q_*=1/4096, not q_real. Thus line 852's claim that eta_G=eta_N=0 when q_real=0 is false. The exact q-zero stationary equation can still be preserved, but the review must distinguish vanishing realized Gram defects from the nonzero conservative q_* reserves and retain the finite-transient certificate charge. Correct the baseline audit and associated notation before acceptance. Smallest repair: /proof-step step_004b.

## Per-Lemma Audit

### unit_001: Same-state signed certificate equation

- Statement fidelity: PASS. It states the exact same-stored-state raw equation, right-sided column signs, per-column D_M(a,a) tau_r residual, and common certificate sign.
- Proof validity: PASS. Multilinearity and the accepted E_cert projective residual establish (1)-(2); the inner-product calculation correctly identifies sign(theta) and excludes theta=0.
- Cited-result and assumption audit: PASS. The current accepted step_004 proof/review hashes are used; no target label, clustering event, chart premise, or active-ALS condition is imported.
- Rigor checklist: PASS. Stored state versus look-ahead, zero-contraction handling, arbitrary projective signs, and finite residual scope are explicit.
- Local adversarial test: PASS. An orthogonal stationary state has zero residual, while a q=0 finite transient retains its residual and right-column sign.
- Contribution to target step: Supplies the raw E_cert_eq interface.
- Verdict: PASS
- Repair direction: None.

### unit_002: Span projection and scale bounds

- Statement fidelity: REVISE_STEP. The intended projection and scale interface is correct, but the proof of the stated |s_M-1| bound passes through the false q=0 inequality at lines 248-252.
- Proof validity: REVISE_STEP. The projector and contraction bounds are sound; the lower endpoint must instead be proved uniformly with q_* and tau_r for the allowed q_real=0 boundary.
- Cited-result and assumption audit: PASS. E_sm and E_cert are legitimate generated inputs; no dependency is missing.
- Rigor checklist: REVISE_STEP for boundary arithmetic and the associated denominator/ratio constants. The final 0.69 and 1.03 envelopes appear repairable after the corrected scale bound.
- Local adversarial test: At q_real=0 with a nonstationary certified state, s_M can be strictly below one, falsifying the displayed 1-q lower chain; the exact stationary subcase does not discharge the general stored-slot claim.
- Contribution to target step: Supplies the span and scale inputs, but requires a boundary-safe rerun.
- Verdict: REVISE_STEP
- Repair direction: Replace the q_real lower chain by a q_* / tau_r-safe inequality and rerun step_004b.

### unit_003: Coefficient-vector Gram and certificate defect split

- Statement fidelity: PASS. The repaired unit now defines the actual signed coordinate defect E_{M,i}, separates its nonnegative majorant, and states the exact equality before division.
- Proof validity: PASS. The vector Gram expansion, l1 budget, one finite sqrt(r) tau_r conversion, and scalar second-order reserve follow from (10).
- Cited-result and assumption audit: PASS. Only unit_001, unit_002, and accepted E_sm facts are consumed.
- Rigor checklist: PASS for the defect equality and exposed budgets, conditional on the corrected unit_002 scale endpoint.
- Local adversarial test: The full-support residual conversion remains 2 sqrt(r) tau_r and does not hide an r^2 factor.
- Contribution to target step: Supplies the exact coordinate relation needed by the threshold calculus.
- Verdict: PASS
- Repair direction: None intrinsic; recheck after the unit_002 boundary repair.

### unit_004: No-label threshold and reciprocal-profile calculus

- Statement fidelity: PASS for the repaired target. It now states the exact multiplicative identity, outside-mass bridge, reciprocal profile, and corrected <0.17 LOW margin.
- Proof validity: PASS conditional on the corrected unit_002 scale bound. The per-index elimination (14), normalization using B plus the reciprocal error, and 144 eta_0 arithmetic are coherent; no max shortcut remains.
- Cited-result and assumption audit: PASS. The unit uses the named defect unit and accepted E_sm quantities only.
- Rigor checklist: PASS for retained denominators, q_* endpoint arithmetic, empty-core contradiction, and threshold-straddling cases.
- Local adversarial test: The q=0 issue is upstream in the scale bound; once q_* is used for that bound, the one-sided score estimate here remains valid.
- Contribution to target step: Produces the legal retained profile and no-label threshold interface.
- Verdict: PASS
- Repair direction: Revalidate after unit_002 is repaired; no independent threshold rewrite is required.

### unit_005: Exhaustive LOW/core/tail ledger

- Statement fidelity: REVISE_STEP. The singleton floor, componentwise score interval, and multi-support tail fields are now present, but the tail proof uses the unsupported constant described in blocker 2 and the singleton score proof uses the false q_real scalar bound in blocker 1.
- Proof validity: REVISE_STEP. Equations (24)-(30) are otherwise substantially explicit; equation (31) needs a correct sum-of-maxima estimate, and (29) needs a q_* / tau_r-safe scalar-normalization inequality.
- Cited-result and assumption audit: PASS for declared inputs; the failures are local quantitative/interface defects, not dependency failures.
- Rigor checklist: REVISE_STEP for the q=0 boundary and accumulated per-index tail arithmetic.
- Local adversarial test: A finite q=0 transient tests the scalar defect; a support with different maximizing modes across indices tests the missing factor in (31). Both are allowed by the stated theorem scope.
- Contribution to target step: Intended to package the complete E_cert_tail ledger, but cannot yet certify it.
- Verdict: REVISE_STEP
- Repair direction: Repair the boundary scalar bound and redo the multi-support tail constants, then rerun the producer.

### unit_007: Retained-core multi-support score bridge

- Statement fidelity: REVISE_STEP. The proposition states the required 160 eta_0/s_mix interface, but its theorem-style statement and local lemma map omit the unit_005 ledger that supplies tail_score bound (32).
- Proof validity: PASS conditional on a corrected unit_005 tail bound and explicit dependency. The weighted Cauchy-Schwarz argument, Gram/scalar transfer, and kappa_I <= Gamma/sqrt(m) comparison are valid.
- Cited-result and assumption audit: REVISE_STEP. Line 738 invokes a prior local result not named in the proposition's assumption basis; this is a producer-consumer provenance defect.
- Rigor checklist: PASS for the displayed 72+5 <=144 and 160 eta_0 arithmetic once the tail input is accepted.
- Local adversarial test: A two-support core is controlled by the profile bridge; the remaining stress is the corrected outside tail, not the retained score calculation.
- Contribution to target step: Supplies the previously missing multi-support score interface after dependency repair.
- Verdict: REVISE_STEP
- Repair direction: Add Proposition~ref{prop:step-004b-ledger} as an explicit dependency and rerun after unit_005 is repaired.

### unit_006: Proof-only barred post-score equation

- Statement fidelity: PASS as a conditional product-one sign representation, separate from the pre-cluster ledger.
- Proof validity: PASS. Right multiplication by total sign matrices gives the recomputed barred pair coefficients, preserves residual norms, and converts the represented scalar to |theta|.
- Cited-result and assumption audit: PASS. It uses unit_001 and an explicitly conditional sign choice only.
- Rigor checklist: PASS for negative scores, sign products, and commuting diagonal matrices, aside from the proof-local symbol collision listed above.
- Local adversarial test: Independent mode sign flips yield the correct cyclic pair signs and preserve the represented rank-one term.
- Contribution to target step: Supplies the post-score barred E_cert_eq interface.
- Verdict: PASS
- Repair direction: Rename the sign matrix to avoid the S collision during the producer rerun.

## Hidden Subclaim Scan

The prior attempt-2 hidden claims are now named: the signed coordinate defect, additive reciprocal normalization, singleton core floor and componentwise score, and the retained-core 160 eta_0 bridge. Remaining unresolved claims are the q=0 scale/scalar boundary, the correct accumulation of per-index outside maxima in (31), and the producer path for unit_007's tail input. Symbol rebinding also obscures whether several displayed bounds refer to the same objects. These are local proof/interface defects and not evidence that the accepted sketch or idea must change.

## Target Claim Audit

The attempt now covers the accepted sketch's raw equation, exact defect split, 144 eta_0 profile, singleton floor and lambda_j score interval, multi-support tail, and 160 eta_0/s_mix score bridge. However, the q=0 transient boundary is not proved, the multi-support tail constant is not derived from the stated outside-mass bound, and unit_007 consumes an unnamed local output. Therefore the exact E_cert_tail interface is not yet certified for every allowed stored slot and all downstream consumers.

## Explicit Rate Audit

- Exposed variables: r, q_real, Gamma, tau_r, lambda_min, lambda_max, eta_G, eta_N, eta_C, eta_0, eta_rel, thresholds, support size, and per-slot contraction scales.
- Hidden-constant declarations, fixed-instance conditioning order, probability mode, fixed-state horizon, and Euclidean/operator/l1 norm modes are present.
- Term absorption is not yet valid at the allowed q_real=0 boundary, and the tail coefficient in (31) needs a corrected sum-of-maxima inequality. The 160 eta_0 bridge is otherwise displayed with explicit inequalities.
- Baseline audit: exact q-zero stationary equations are preserved, but the false eta_G=eta_N=0 statement must be corrected to distinguish fixed q_* reserves from realized Gram leakage.
- No probability or horizon upgrade is introduced by this step.

## Notation Surface Audit

The public E_cert_eq/E_cert_tail surface is appropriately small, and the new helper objects are mostly classified. The proof nevertheless rebinds F_M (contraction versus Gram perturbation), L_M (dual versus singleton tail), and S (setting factor versus sign matrix). These are not harmless aliases in a proof with cross-unit references; rename them and update all references before acceptance.

## Target-Step Assembly Audit

The producer-consumer order is otherwise acyclic: E_cert -> raw/span/defect -> threshold/profile -> singleton/tail -> multi-support score -> barred equation. The assembly now names the multi-support bridge, but unit_007's declared dependency must include the unit_005 ledger, and the corrected unit_002/unit_005 boundary and tail inequalities must be accepted before E_cert_tail can flow to step_005 and step_006.

## Review Rationale

REVISE_STEP with /proof-step step_004b is the smallest sound route. The attempt-3 repairs are target-preserving and show that the accepted setting and sketch contain the needed mechanisms. The remaining issues are local quantitative boundary/accumulation proofs, a missing local dependency declaration, and notation hygiene; none requires a sketch revision, dependency reroute, or idea change. A fresh proof-step review is required after the producer rerun before downstream consumption.
