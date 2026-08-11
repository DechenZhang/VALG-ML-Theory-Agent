# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 6
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_003/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_003

## Blocking Issues

1. **The theorem-range Terracini tail remains unproved.** Lemma~\(\ref{lem:step-003-terracini-chaos}\) (`unit_005`) correctly proves that the stronger all-\(t\) formulas (21), (21j), and (21k) are false without large-deviation corrections. This does not prove or refute the only event consumed by the accepted sketch, namely a fixed-factor conditional bound at \(t=30\log r\) with norm scale \(\sqrt{k}/r+\sqrt{\log r/r}\) and finite \(C(\kappa)r^{-30}\) failure prefactor. Without that target-range producer, (TF), quotient coercivity, \(W_0\), and \(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\) cannot be exported. The smallest repair is local: retain the valid obstruction and prove either a target-range tail covering \(t=30\log r\), or a corrected all-confidence tail with the large-deviation terms in (21u), for all nine mode arrays or directly for the full quotient operator. A sketch repair is warranted only if the theorem-range event itself is shown false or requires a changed claim, assumption, dependency, or output interface.

## Per-Lemma Audit

### unit_001: uniform moments for conditioned elliptic angular laws

- Statement fidelity: The lemma uses exactly the primitive initialization law and the current accepted conditioning and Gaussianization outputs, uniformly conditional on a fixed realized triple in \(\mathcal E_{\rm cond}\).
- Proof validity: Direction normalization removes the nonzero scalar multiplier. The singular-value bounds for \(H_M\), spherical even moments, and central symmetry give (2)--(4) with dependence only on \(\kappa\).
- Cited-result and assumption audit: The current `step_001` attempt 2 and `step_002` attempt 1 proof/review pairs are synchronized and `ACCEPTED`; no generated Gram, radial, deficit, or trajectory event is assumed.
- Rigor checklist: Independence across modes and components, almost-sure nonvanishing, dimensions, covariance order \(1/r\), and fixed-factor uniformity are correct.
- Local adversarial test: Extremal allowed singular values of \(H_M\) preserve the displayed \(\kappa_1^2\) ratio and \(\kappa_1^4/r\) covariance bound.
- Contribution to target step: Supplies the ACG law, centering, and moments used by all later frame calculations.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact gauge quotient and Terracini blocks

- Statement fidelity: The proposition proves the exact two-dimensional CP gauge, the quotient spectrum, the raw tangent range, and every off-component block required by the accepted row.
- Proof validity: The parallel/perpendicular decomposition gives (11); orthogonality to the gauge plane forces equal parallel coefficients, yielding spectrum in \([1,3]\). Direct tensor pairings give (10), and accepted span transfer gives \(\operatorname{range}J=\mathscr S_0\).
- Cited-result and assumption audit: Only the current accepted dependencies and `unit_001` are used.
- Rigor checklist: Quotient inner product, adjoints, block ordering, and Frobenius conventions match the setting.
- Local adversarial test: The two zero-sum scaling directions are exactly null, while the common scaling direction survives with eigenvalue three.
- Contribution to target step: Supplies the within-component coercive source and exact nine-array algebra.
- Verdict: PASS
- Repair direction: None.

### unit_003: raw diagonal-core target correlation

- Statement fidelity: The lemma proves the exact raw-target event (TC), its \(k/r+\log r\) rate, and fixed-factor conditional failure at most \(r^{-25}\).
- Proof validity: Contraction with \(D_r\) gives the three Hadamard-product energies. Each summand lies in \([0,1]\), is independent across components, and has mean at most \(\kappa_1^8/r\). Scalar Bernstein and the three-pair union bound yield (12).
- Cited-result and assumption audit: Bernstein is restated with boundedness, independence, and mean assumptions discharged locally.
- Rigor checklist: Quotient projection is contractive, constants and confidence conversion are explicit, and no normalized surrogate replaces \(D_r\).
- Local adversarial test: At \(k=r^{5/4}\), the bound remains \(O_\kappa(r^{1/4}+\log r)=o(r)\).
- Contribution to target step: Completely proves (TC).
- Verdict: PASS
- Repair direction: None.

### unit_004: off-component split and the variance source

- Statement fidelity: The proposition claims only the exact same-mode form, block-row quadratic scale, six cross-mode arrays, and their two-stage factorizations.
- Proof validity: Equations (18)--(20a) follow from the exact block formula (10); conditional component and mode independence gives the \(O_\kappa(k/r^2)\) row variance in (19).
- Cited-result and assumption audit: The proposition uses only accepted angular inputs and the proved covariance bound; it does not assert operator concentration.
- Rigor checklist: Fixed-row variance is correctly distinguished from a uniform operator tail.
- Local adversarial test: Taking scalar block norms first loses one angular factor and incurs the identified \(k/r\) scale.
- Contribution to target step: Gives the exact same-mode and cross-mode interfaces used by `unit_005`.
- Verdict: PASS
- Repair direction: None.

### unit_007: fixed-input cross-mode mean square and raw-block lower tail

- Statement fidelity: The upper bound is explicitly limited to deterministic inputs, and the isotropic lower tail is explicitly limited to one unprojected block.
- Proof validity: Entrywise expansion, mode independence, and the angular covariance bound prove (20c). Conditioning on \(Q_{B,C}(Y)\) and using \(\mathbb E A_p^{\mathsf T}A_p=I_k\) proves (20d). The moment calculation and Paley--Zygmund inequality prove (20e).
- Cited-result and assumption audit: Every probabilistic input is restated and discharged; no fixed-input estimate is promoted to a data-dependent supremum.
- Rigor checklist: The ACG normalizer dependence and all mode permutations are handled correctly.
- Local adversarial test: The one-column input attains the natural \(\sqrt{k}/r\) response scale but does not by itself address quotient projection.
- Contribution to target step: Establishes target-scale fixed-input second moments and the norm-first route stress test.
- Verdict: PASS
- Repair direction: None.

### unit_008: quotient/full-operator lower bound at the leading scale

- Statement fidelity: The lemma is a diagnostic statement in the allowed isotropic specialization and concerns the actual projected full off-component operator.
- Proof validity: The selected input belongs to \(\mathcal H_{j_0}\). Quotient projection preserves the first-mode component perpendicular to \(p_i^a\), giving (20o). Conditional moments and Paley--Zygmund yield probability at least \(1/144\) and norm at least \(\sqrt{k-1}/(2r)\).
- Cited-result and assumption audit: The proof uses only the exact quotient algebra and restated spherical moments and Paley--Zygmund inequality.
- Rigor checklist: Measurability, unit normalization, the \(r\ge2\) boundary, and the passage from a unit response to operator norm are correct.
- Local adversarial test: Other projected mode components cannot cancel the retained perpendicular component.
- Contribution to target step: Confirms that \(\sqrt{k}/r\) is the necessary leading quotient scale.
- Verdict: PASS
- Repair direction: None.

### unit_009: canonical data-dependent top-singular alignment test

- Statement fidelity: The lemma is explicitly a one-slice diagnostic and does not claim control of the full adaptive multi-column class.
- Proof validity: The normalized-Gaussian good event gives \(\|A_p\|_{\rm op}\le5\sqrt{k/r}\), while Frobenius rank gives the matching lower order. Truncating one coordinate of a top singular vector and evaluating (20x)--(20z) gives the stated conditional RMS interval.
- Cited-result and assumption audit: Gaussian operator-norm, chi lower-tail, and spherical moments are restated and correctly instantiated.
- Rigor checklist: Data-dependent choices admit deterministic tie-breaking; dimensions, conditioning scopes, and normalization factors are consistent.
- Local adversarial test: The calculation correctly leaves open more efficient alignment distributed over several output slices.
- Contribution to target step: Rules out the canonical top-singular one-slice mechanism as a source of an extra leading factor.
- Verdict: PASS
- Repair direction: None.

### unit_005: full multi-column covariance reduction and all-confidence obstruction

- Statement fidelity: The exact covariance reduction and the new cap obstruction are valid local diagnostic claims. The unit does not establish its assigned theorem-facing output, because it leaves the \(t=30\log r\) tail unproved.
- Proof validity: The previously reviewed identities (21b)--(21h) remain unchanged and valid. The new obstruction also checks line by line. For (21m), the independent event \(5\sqrt r\le g_1\le6\sqrt r\), \(\|g_{2:r}\|\le2\sqrt r\) has probability at least \(e^{-20r}\) for large \(r\), and implies \(s_1\ge5/\sqrt{40}\). Two cap vectors have inner product at least \(2(25/40)-1=1/4\). Independence over the \(2k\) or \(3k\) direction arrays therefore gives \(e^{-40rk}\) and \(e^{-60rk}\) cap-event lower bounds. On \(\mathcal A_{bc}\), every same-mode off-diagonal entry is at least \(1/16\), so the normalized all-ones Rayleigh quotient gives (21o). On \(\mathcal A_{abc}\), the unit input with all columns \(e_1/\sqrt k\) gives each output's \(e_1\)-component at least \(5(k-1)/(32\sqrt k)\), proving the cross-mode squared lower bound (21q). For the full quotient, \(h_i=(p_i^a,p_i^b,p_i^c)/\sqrt{3k}\) is a unit vector in \(\mathcal H_i\), \(\widetilde J_i h_i=\sqrt{3/k}\,u_i\), and the Rayleigh quotient gives (21s).
- Cited-result and assumption audit: The isotropic choice \(H_A=H_B=H_C=I_r\) is an allowed fixed-factor specialization in \(\mathcal E_{\rm cond}\). Initialization directions remain independent conditional on that fixed triple. The accepted sketch review requires the frame event under the fixed-factor angular law before intersection with the normalized-Gram event, so the rare cap event legitimately stress-tests the all-\(t\) wrapper even though it need not lie in the generated Gram event.
- Rigor checklist: For arbitrary finite positive threshold and prefactor constants, choose \(k=r+1\). With \(t_{\rm sm}=r(k-1)^2/(4096C_{\rm sm}^2)\), the (21k) threshold is at most \((k-1)/32\), below the cap lower bound \((k-1)/16\), while \(t_{\rm sm}/(rk)\to\infty\). With \(t_{\rm cov}=25r(k-1)^2/(4096C_{\rm cov})\), the (21j) threshold is at most half of \(25(k-1)^2/1024\), while \(t_{\rm cov}/(rk)\to\infty\). With \(t_{\rm TF}=9r(k-1)^2/(65536C_{\rm TF}^2)\), the (21) threshold is at most half of \(3(k-1)/64\), while \(t_{\rm TF}/(rk)\to\infty\). In each case \(t\ge1\) for large \(r\), and the finite prefactor cannot reconcile \(e^{-O(rk)}\) with \(e^{-t}\). Thus all three all-confidence statements are genuinely false for every finite constant choice.
- Local adversarial test: The proposed corrections are consistent with the obstruction: at confidence \(t\asymp rk\), \(t/r\asymp k\) supplies the required norm-scale large deviation and \(t^2/r^2\asymp k^2\) supplies the required squared-norm scale. At the only consumed value \(t=30\log r\), sufficiently large \(r\) gives \(t\le r\), hence \(t^2/r^2\le t/r\) and \(t/r\le\sqrt{t/r}\); taking square roots in the cross-mode bound preserves \(\sqrt{k}/r+\sqrt{t/r}\) up to constants. The obstruction therefore invalidates the all-\(t\) wrapper but not the accepted theorem-range rate.
- Contribution to target step: It removes an invalid proof wrapper and identifies a valid repair shape, but supplies no high-probability TF event at \(t=30\log r\).
- Verdict: REVISE_STEP
- Repair direction: Prove the fixed-factor conditional theorem-range tail, either directly for \(\Pi\widetilde E\Pi\) or through all six corrected weighted-covariance and all three corrected same-mode tails, with finite constants depending only on \(\kappa\). Preserve the existing claim, dependencies, quotient convention, and raw deficit output. Also correct the two local cross-reference ranges that cite only (21m)--(21r) when the full quotient obstruction uses (21s)--(21t).

### unit_006: raw tangent deficit conditional on the frame estimate

- Statement fidelity: The proposition explicitly assumes the local TF--TC event and does not export its conclusion unconditionally.
- Proof validity: Within-block coercivity and (TF) give \(J^*J\succeq I/2\). The projection formula and proved (TC) give tangent energy at most \(2C_{\rm TC}(k/r+\log r)\le r/2\). Pythagoras and \(\widehat D_0\in\mathscr S_0\) yield the exact raw witness and deficit.
- Cited-result and assumption audit: The finite-dimensional projection formula and accepted raw-span identity are restated in the correct norm convention.
- Rigor checklist: Equations (22), (26), and (27) give the threshold and prefactor-aware probability conversion without an independence assumption between TF and TC.
- Local adversarial test: Removing TF loses the quotient inverse bound; removing TC loses the projection-energy bound. No further deterministic bridge is missing.
- Contribution to target step: Correctly closes the raw deficit once the missing target-range TF event is supplied.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The new cap probability, pairwise cap geometry, same-mode Rayleigh lower bound, cross-mode unit-input lower bound, quotient Rayleigh lower bound, and the three confidence contradictions all appear inside the named `unit_005` statement and derivation. The corrected terms in (21u) are presented only as obstruction-compatible candidate tails, not as proved concentration bounds. No target-range TF event is silently assumed. The only presentation defect is the local citation of (21m)--(21r) where the full quotient part also requires (21s)--(21t); this is a proof-local cross-reference repair, not a new mathematical interface.

## Target Claim Audit

The exact `step_003` target remains unproved. The proof establishes the current ACG moments, quotient geometry, raw tangent range, (TC), off-block formulas, fixed-input and quotient lower-scale diagnostics, exact full-adaptive covariance representation, both target-scale second-moment orientations, the valid all-confidence obstruction, and the conditional TF--TC-to-deficit implication. It does not establish a fixed-factor conditional TF event at the consumed confidence \(t=30\log r\), so it cannot export quotient coercivity, \(W_0\), or \(\mathcal E_{\rm deficit}\) with failure at most \(r^{-20}\). The current accepted dependency pairs are synchronized and are not the source of failure.

## Explicit Rate Audit

All proved portions preserve \(\kappa,r,k\), \(r<k\le r^{5/4}\), fixed-realization conditional probability, initialization-only scope, quotient/operator/Frobenius norms, and hidden dependence only on \(\kappa\). The cap lower bounds and explicit choices \(t_{\rm sm}\), \(t_{\rm cov}\), and \(t_{\rm TF}\) rigorously disprove the pure all-\(t\) formulas for every finite constant choice. The proposed corrected scales are absorbed at \(t=30\log r\): \(t^2/r^2\le t/r\) and \(t/r\le\sqrt{t/r}\) for large \(r\). A valid repaired tail must still provide a finite \(C(\kappa)r^{-30}\) failure bound at that confidence; combining it with the proved \(r^{-25}\) TC failure then gives (27) after the displayed finite thresholds. The exact raw target, initial core, tangent span, and coefficient residual remain unchanged, so the normalization baseline is preserved.

## Notation Surface Audit

The only intended public-facing output is \(W_0\), which is not exported by this partial proof. The ACG directions and quotient frame remain appendix-local; the weighted covariance objects, cap events, confidence choices, and diagnostic inputs are proof-local with explicit definitions. The proof correctly treats every TF constant as hypothetical or unresolved. The references to the complete cap obstruction should consistently use (21m)--(21t), not (21m)--(21r), where the full quotient argument is included.

## Target-Step Assembly Audit

Every assembly link after TF is valid. A repaired theorem-range tail gives (TF); the proved within-block lower bound then yields \(J^*J\succeq I/2\). The proved (TC), projection formula, Pythagoras, exact raw tangent span, and \(\widehat D_0\in\mathscr S_0\) then construct the required raw witness, and (27) gives the conditional failure budget. Since the TF producer is still absent, the present target-step assembly is incomplete.

## Review Rationale

`REVISE_STEP` is the smallest controlled status. Attempt 6 makes genuine local progress by proving, with correct constants and conditioning, that the all-confidence wrappers introduced in attempt 5 are false and by identifying large-deviation corrections that disappear at the theorem's polynomial-confidence value. That failure does not alter the accepted sketch row: the row asks only for (TF) with failure at most \(r^{-20}\), and its proof roadmap already permits a current-notation decoupling or matrix-concentration derivation whose large-deviation terms are absorbed at \(t=30\log r\). No primitive assumption, dependency, quotient interface, output target, theorem scope, norm, or exposed rate must change. The remaining obligation is therefore a local target-range concentration proof in `step_003`, followed by a fresh independent step review.
