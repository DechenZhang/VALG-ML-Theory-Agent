# Proof Step Review

## Step Review Identity

- Branch: perspective_1/idea_6
- Sketch attempt: 2
- Step ID: step_004b
- Unit attempt: 2
- Reviewed setting SHA-256: a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab
- Reviewed sketch SHA-256: c6126ab9b81d7a7cbcae3b9b857923f3fe8e275ed1ba4376fd830270c5ec95e1
- Reviewed sketch-review SHA-256: 524bc3e32fc6d334d4c6c78bf8e347888df2cd4bbbd21bf7c3dc1414c0c9b3a4
- Reviewed proof artifact: perspective_1/idea_6/proof_steps/step_004b/proof.md
- Frozen proof SHA-256: 0d6a3711f3a31ce32d5e05fec34cb58f381046d430291030ba74695f5aabf971

## Accepted Dependencies

- step_004 proof SHA-256: 33fa04612d06ca26705b1d93ac3df3504bdc20122f6511f8bdc0b7a52a404b71.
- step_004 review SHA-256: 5bff3091b993804f95134f79acd322cd89941b4b78689fa7a3f72806039fc4e7.
- Dependency review status: ACCEPTED.

The dependency was read in current notation. It supplies the generated E_cert state, positive same-stored-state contraction norms, the projective residual bound, and the carried E_sm Gram/weight interface. No archived sketch-1 artifact was used.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004b

## Blocking Issues

1. The retained-coordinate ratio identity uses an unproved equality. In unit_003 the errors e_{M,i} are introduced only through the majorant inequality (8), while unit_004 defines xi_{M,i}=e_{M,i}/(x_{M',i}x_{M'',i}) and then uses the exact multiplicative identity (15). A bound on a quantity does not imply (alpha_hat_M/mu_i)x_{M,i}=x_{M',i}x_{M'',i}(1+xi_{M,i}). The reciprocal profile (11), and every later profile-based tail claim, therefore does not follow as written. Define the signed coordinate defect as the actual difference in (10), prove its l1 bound, and state the multiplicative equality before applying the ratios. Smallest repair: rerun /proof-step step_004b.

2. The normalization calculation at proof.md:447-458 is not valid as displayed. From c_M Z_M=1-m_M and a reciprocal bound on Z/Z_M, the deviation of c_M Z is controlled by an additive combination of the omitted mass and the reciprocal error, not by the max in (453). The sharper 32.3 eta_0^2 outside-mass bound could repair the arithmetic and still yield a number below 71 eta_0, but that inequality is not carried into the displayed derivation. Consequently the advertised 144 eta_0 profile is unsupported in the submitted proof. The same paragraph also reuses c_M (the coefficient vector in unit_002) for a scalar common scale, violating notation provenance and making the normalization identity ambiguous. Retain the sharp tail bound and rename the scalar before rerunning the step.

3. The required multi-support score bridge is absent. The accepted sketch row requires, for m=|I|>=2, the relation |theta|/lambda_min <= kappa_I+144 eta_0+tail_score <= Gamma/sqrt(m)+160 eta_0, hence |theta| <= lambda_max(1/sqrt(m)+160 eta_0). The submitted unit_005 proves only an outside tail estimate and the profile; it never bounds the retained-core score or emits s_mix. The one-line assertion in the sketch is a theorem-critical downstream interface, and step_005 consumes it to reject multi-support slots. Add a named local lemma/proposition that sums the retained profile, controls the Gram/scalar/certificate cross terms, handles m>=2, and displays the 160 eta_0 absorption. This is a proof-step repair under the unchanged sketch and dependency.

4. The singleton output does not expose the exact accepted-sketch field, and its score expansion is only asserted. The sketch requires a common singleton index j, the core floor min_M x_{M,j} >= 1-64 eta_0, and the componentwise interval s_- lambda_j <= |theta| <= s_+ lambda_j. The proposition states the interval and an l1 tail but never states or proves the core floor. Lines 545-558 say that expanding the score gives (20b), without displaying the signed core/tail decomposition or the inequalities that yield the stated 12 q_* + 4 L_* + 3 L_*^2 + 8 tau_r constants. Downstream clustering and score filtering rely on these exact fields. Add the core-floor derivation and a self-contained componentwise score lemma, or explicitly derive them from the repaired tail bound before assembly.

5. A displayed numerical conclusion is false. At the declared endpoint, eta_0 is approximately 4.89e-4 and Gamma(theta+8 eta_rel+16 eta_0) is approximately 0.166, not <0.14 as claimed at proof.md:477. The needed LOW conclusion still follows from a corrected <0.17<0.7 bound, but the current line is an invalid quantitative assertion and must be corrected in the producer rerun.

## Per-Lemma Audit

### unit_001: Same-state signed certificate equation

- Statement fidelity: PASS. The proposition targets the exact same-stored-state equation P_M^raw D_M=G_M K_M^raw Sigma_M+R_M^raw, retains right-sided column signs, and states the per-column D_M(a,a) tau_r residual required by the sketch.
- Proof validity: PASS. Multilinearity gives the same-state pair vector, and the accepted E_cert projective residual gives (1)-(2). The inner-product argument correctly shows that all three minimizing signs equal sign(theta) and that a certified contraction has nonzero score.
- Cited-result and assumption audit: PASS. The current accepted step_004 proposition is restated with the corrected proof and review hashes; no target label, chart, clustering event, or active-ALS condition is imported.
- Rigor checklist: PASS. The zero-contraction branch, arbitrary projective signs, stored state versus look-ahead, and the finite residual mode are handled.
- Local adversarial test: PASS. In the orthogonal stationary case the residual vanishes; for a finite transient the right-side sign remains a column sign and the residual is retained.
- Contribution to target step: Supplies E_cert_eq raw equation and sign provenance.
- Verdict: PASS
- Repair direction: None.

### unit_002: Span projection and scale bounds

- Statement fidelity: PASS. The dual projection, perpendicular residual, contraction scale interval, and scalar ratio bounds are the interfaces needed by the defect calculation.
- Proof validity: PASS. L_M^T G_M=I, the orthogonal projector identity, the spectrum interval from E_sm, and Cauchy-Schwarz justify (4)-(6). The non-LOW qualification is present for the lower scale bound, and the upper bound retains Gamma and the realized Gram factor.
- Cited-result and assumption audit: PASS. E_sm is inherited from the accepted dependency context rather than promoted to a new primitive condition; d_M>0 comes from E_cert.
- Rigor checklist: PASS. Denominator positivity and the numerical 0.69 and 1.03 envelopes have slack at q<=q_*.
- Local adversarial test: PASS. The endpoint q=q_*, Gamma=1.01 preserves the stated scale bounds; no target-chart premise is used.
- Contribution to target step: Supplies the realized-span and normalization interfaces for the later ledger.
- Verdict: PASS
- Repair direction: None.

### unit_003: Coefficient-vector Gram and certificate defect split

- Statement fidelity: PASS for inequality (8) and the explicit eta_G, eta_N, eta_C categories. The actual signed-defect equality needed downstream is not stated; this is recorded under the unit_004 blocker rather than silently inferred here.
- Proof validity: PASS for the displayed l1 majorant. The Hadamard expansion gives ||g_M||_1 <= 2q_*+q_*^2, and the dual residual gives the single 2 sqrt(r) tau_r conversion. The scalar second-order expression is a valid reserve, although it is not integrated into a later equality.
- Cited-result and assumption audit: PASS. Only unit_001, unit_002, and the accepted realized Gram facts are used.
- Rigor checklist: PASS for the majorant; the proof must name the signed defect explicitly when the ratio calculation is repaired.
- Local adversarial test: PASS. Full support costs at most 2 sqrt(r) tau_r, not an r^2 tau_r or coordinatewise hidden sum.
- Contribution to target step: Supplies the raw defect budgets, subject to the equality repair required before profile ratios.
- Verdict: PASS
- Repair direction: None within this unit; instantiate its signed defect in the next-unit repair.

### unit_004: No-label threshold and reciprocal-profile calculus

- Statement fidelity: REVISE_STEP. The threshold/profile target is aligned, but the proposition's xi ratio identity is stronger than the preceding stated inequality and the normalization proof does not establish the exported 144 eta_0 profile.
- Proof validity: REVISE_STEP. The outside-coordinate elimination is plausible, but (15) is not derived from (8), (453) uses an invalid max bound, and the final numerical <0.14 claim is false. The scalar helper c_M also changes meaning from unit_002.
- Cited-result and assumption audit: PASS for the listed inputs; no missing dependency is the source of the failure.
- Rigor checklist: REVISE_STEP for the equality and normalization arithmetic and the false endpoint number. The retained-floor and denominator checks themselves have adequate numerical slack.
- Local adversarial test: At the worst endpoint, the corrected LOW margin is still below 0.7, but the submitted <0.14 assertion fails; a profile countercheck must retain the 32.3 eta_0^2 omitted mass rather than use the displayed max shortcut.
- Contribution to target step: Intended to produce the legal retained profile and threshold-straddling bridge, but does not yet certify them.
- Verdict: REVISE_STEP
- Repair direction: Define the signed coordinate residual, repair the normalization inequality with its additive terms, rename the scalar helper, and rerun step_004b.

### unit_005: Exhaustive LOW/core/tail ledger

- Statement fidelity: REVISE_STEP. LOW and singleton/multi-support labels are present, but the accepted sketch's s_mix/160 eta_0 multi-support score output and singleton core-floor field are absent.
- Proof validity: REVISE_STEP. The direct outside-tail estimate is useful, but the source-by-source table is asserted rather than derived and (20b) is summarized as “expanding” without a complete componentwise inequality. No retained-core score calculation proves the required multi-support bound.
- Cited-result and assumption audit: PASS for dependencies actually listed; the missing score bridge is a local proof omission, not a dependency flaw.
- Rigor checklist: REVISE_STEP. The finite sqrt(r) tau_r conversion is explicit, but the profile-to-score and singleton core-floor constants are not discharged.
- Local adversarial test: A two-support core is not ruled out by the current proof because only its outside tail is bounded; the missing retained-score calculation is exactly what must reject it downstream. Threshold and empty branches therefore cannot be certified exhaustive for the classifier interface yet.
- Contribution to target step: Intended to emit E_cert_tail, but the exported ledger is incomplete for the accepted sketch.
- Verdict: REVISE_STEP
- Repair direction: Add named local score/core-floor units with explicit profile, Gram/scalar/certificate, tail, and endpoint arithmetic; then rerun the producer and obtain a fresh review.

### unit_006: Proof-only barred post-score equation

- Statement fidelity: PASS as a conditional post-score representation. It is clearly separated from the unconditional no-label ledger and states the product-one sign condition.
- Proof validity: PASS. Right multiplication by the total sign matrices gives the recomputed barred pair coefficients, preserves the residual norm, and converts the represented scalar to |theta| while preserving the initialized rank-one term.
- Cited-result and assumption audit: PASS. The only inputs are unit_001 and the explicitly conditional product-one bookkeeping choice; no future score conclusion is treated as a primitive assumption.
- Rigor checklist: PASS for negative scores, sign products, and commuting diagonal matrices. The phrase “positive product-one reorientations” is imprecise but does not alter the algebraic claim.
- Local adversarial test: Independent one-, two-, and three-mode sign flips produce the correct cyclic pair signs and leave the residual norm unchanged.
- Contribution to target step: Supplies the proof-only barred E_cert_eq interface consumed after score selection.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The raw equation, span projection, and sign conversion have matching local units. The scan finds four unresolved independent claims: the multiplicative coordinate identity used by (15), the reciprocal normalization bound used by (11), the retained-core score bound needed for s_mix, and the componentwise singleton score/core-floor bridge. The source-split tail table also contains nontrivial bounds only described as applications of standard inequalities. These are not supplied by the accepted dependency and cannot be treated as future classifier work under the current target interface.

## Target Claim Audit

The proof does establish the raw right-sided equation, its finite per-column residual, the realized-span decomposition, the Gram/vector defect majorant, and the conditional barred equation. It does not yet establish the exact accepted sketch-row output as a whole: the 144 eta_0 profile rests on the invalid normalization step, and the LOW/core/tail ledger lacks the required multi-support score lambda_max(1/sqrt(m)+160 eta_0) and explicit singleton core-floor field. The missing fields affect the next classifier's score gap, so this is a producer proof defect rather than an optional strengthening.

## Explicit Rate Audit

- Exposed variables: r, q_real, Gamma, tau_r, lambda_min, lambda_max, eta_G, eta_N, eta_C, eta_0, eta_rel, thresholds, and per-slot contraction scales.
- Hidden-constant and fixed-quantity declarations are present and may depend only on fixed numerical thresholds; the proof is pathwise after fixing E_sm and one certified slot.
- Probability mode, fixed-state horizon, and Euclidean/operator/l1 norm modes are correctly declared, with no new confidence conversion.
- Term-absorption audit: FAIL until the profile normalization, retained-core score, and singleton score inequalities are displayed and numerically verified. The false <0.14 endpoint also needs correction. Therefore the step cannot currently contribute a valid explicit-rate bridge downstream.
- Baseline audit: the q-zero stationary equation and zero residual are preserved; this does not cure the non-baseline quantitative gaps.

## Notation Surface Audit

The public intent (E_cert_eq, E_cert_tail, threshold/tail fields) is minimal, and most dual, support, and sign variables are proof-local. However, c_M is a coefficient vector in unit_002 and is rebound to a scalar common scale in unit_004; this obscures the normalization provenance. The symbol e_{M,i} is introduced as a majorant but consumed as an exact signed defect, and must be given one stable definition. Rename the scalar and state the signed residual equality before exporting xi.

## Target-Step Assembly Audit

The assembly correctly orders E_cert -> raw/span/defect units -> threshold ledger -> barred equation, and it uses the accepted step_004 dependency. It cannot imply the exact target because the threshold unit is not valid and the ledger assembly omits the retained-core s_mix score bridge and singleton core-floor output. The assembly text also contains the malformed reference “Proposition ref{prop:step-004b-threshold}” at line 640; this should be fixed when the producer is regenerated, although it is secondary to the mathematical blockers.

## Review Rationale

REVISE_STEP with /proof-step step_004b is the smallest sound route. The accepted setting, target, dependency, mechanism source, and downstream interfaces can support the missing calculations without changing assumptions, algorithm, scope, probability mode, metric, or conclusion. A sketch revision or dependency reroute is unnecessary. A fresh proof-step review must be run against the corrected producer artifact before any downstream step consumes E_cert_tail.

