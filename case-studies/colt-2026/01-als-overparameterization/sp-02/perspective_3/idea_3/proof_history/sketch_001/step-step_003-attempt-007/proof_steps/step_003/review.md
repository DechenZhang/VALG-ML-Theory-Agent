# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 7
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_003/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_003

## Blocking Issues

1. **The fixed-moment Gaussian trace estimate (21z) is not proved.** The current proof reduces the normalized ACG quotient operator exactly to the trace-one-covariance Gaussian operator \(\widetilde E_G\), but no named local unit, checked cited theorem, or complete trace-word derivation proves
   \[
   \mathbb E\operatorname{tr}|\widetilde E_G|^{2p_0}
   \le 3kr\left[C_G(\kappa)\left(\frac{\sqrt k}{r}+\sqrt{\frac{p_0}{r}}+\frac{p_0}{r}\right)\right]^{2p_0},
   \qquad p_0=\lceil31\log r\rceil.
   \]
   The quadratic variance identities (21g)--(21h) do not control the repeated-component and high-influence contractions of this degree-four Gaussian operator chaos. Without (21z), (TF), quotient coercivity, \(W_0\), and \(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\) remain unavailable. The smallest repair is to add and prove a theorem-style local unit for (21z), including every needed contraction estimate, under the unchanged `step_003` assumptions and dependencies.
2. **The displayed Markov-to-(TF) constant is too small.** The target-step assembly claims that the factor \(16e\sqrt{31/30}\) absorbs the radial conjugation, the ceiling in \(p_0=\lceil31\log r\rceil\), and the extra \(p_0/r\) term. It does not: for large \(r\), \(p_0\le32\log r\) and \(p_0/r\le\sqrt{p_0/r}\), so the bracket in (21z) is bounded by
   \[
   2\sqrt{32/30}\left(\frac{\sqrt k}{r}+\sqrt{\frac{30\log r}{r}}\right),
   \]
   and a safe displayed choice is \(C_{\rm TF}(\kappa)=32e\sqrt{32/30}\,C_G(\kappa)\). This is a local explicit-rate repair; it does not alter the target rate or routing.

## Per-Lemma Audit

### unit_001: uniform moments for conditioned elliptic angular laws

- Statement fidelity: The lemma uses exactly the primitive initialization law and the accepted fixed-factor conditioning and Gaussianization outputs.
- Proof validity: Normalization removes the balancing scalar; the singular-value bounds for \(H_M\), spherical moments, and central symmetry give the stated ACG moments and covariance order \(1/r\).
- Cited-result and assumption audit: Current `step_001` attempt 2 and `step_002` attempt 1 proof/review pairs are synchronized and `ACCEPTED`; no generated event is assumed.
- Rigor checklist: Independence, almost-sure nonvanishing, dimensions, and dependence only on \(\kappa\) are correct.
- Local adversarial test: Extremal allowed singular values preserve the \(\kappa_1^4/r\) covariance bound.
- Contribution to target step: Supplies the angular laws and moments used throughout the frame calculation.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact gauge quotient and Terracini blocks

- Statement fidelity: The proposition proves the exact two-dimensional gauge, quotient spectrum, raw tangent range, and all off-component blocks required by the accepted row.
- Proof validity: The parallel/perpendicular decomposition gives the kernel and spectrum \([1,3]\); direct tensor pairings give the block formula, and accepted span transfer gives \(\operatorname{range}J=\mathscr S_0\).
- Cited-result and assumption audit: Only synchronized accepted dependencies and `unit_001` are used.
- Rigor checklist: Quotient inner product, adjoints, block ordering, and Frobenius convention match the setting.
- Local adversarial test: The two zero-sum scaling directions are exactly null, while common scaling remains coercive.
- Contribution to target step: Supplies the within-component positive source and exact operator algebra.
- Verdict: PASS
- Repair direction: None.

### unit_003: raw diagonal-core target correlation

- Statement fidelity: The lemma proves the exact raw-target event (TC), rate \(k/r+\log r\), and fixed-factor failure at most \(r^{-25}\).
- Proof validity: The three Hadamard-product energies are bounded, independent over components, and have mean at most \(\kappa_1^8/r\); scalar Bernstein and a three-pair union bound give the result.
- Cited-result and assumption audit: Bernstein is restated and all hypotheses are discharged locally.
- Rigor checklist: Quotient projection is contractive, constants are explicit, and raw \(D_r\) is preserved.
- Local adversarial test: At \(k=r^{5/4}\), the bound remains \(o(r)\).
- Contribution to target step: Completely proves (TC).
- Verdict: PASS
- Repair direction: None.

### unit_004: off-component split and the variance source

- Statement fidelity: The proposition claims only exact same-mode structure, the row variance source, the six cross-mode arrays, and their factorizations.
- Proof validity: Equations (18)--(20a) follow from the quotient block formula, and conditional component/mode independence gives the \(O_\kappa(k/r^2)\) row variance.
- Cited-result and assumption audit: No unproved operator concentration is imported.
- Rigor checklist: Fixed-row variance is correctly distinguished from a uniform operator tail.
- Local adversarial test: Taking scalar block norms first loses one angular factor, as stated.
- Contribution to target step: Gives the exact kernel consumed by the covariance and Gaussian-chaos reductions.
- Verdict: PASS
- Repair direction: None.

### unit_007: fixed-input cross-mode mean square and raw-block lower tail

- Statement fidelity: The upper result is limited to deterministic inputs and the lower result to one unprojected isotropic block.
- Proof validity: Entrywise expansion and angular covariance prove (20c)--(20d); the explicit first and second moments plus Paley--Zygmund prove (20e).
- Cited-result and assumption audit: Every probabilistic input is restated; no fixed-input result is promoted to an adaptive supremum.
- Rigor checklist: ACG normalizers and all mode permutations are handled correctly.
- Local adversarial test: The one-column input attains the necessary \(\sqrt{k}/r\) scale without addressing quotient scope.
- Contribution to target step: Supplies the fixed-input scale and the norm-first route stress test.
- Verdict: PASS
- Repair direction: None.

### unit_008: quotient/full-operator lower bound at the leading scale

- Statement fidelity: The lemma is a diagnostic isotropic statement for the actual projected complete off-component operator.
- Proof validity: The chosen unit input lies in the quotient; projection preserves the retained perpendicular component, and conditional moments plus Paley--Zygmund yield the stated probability and norm lower bound.
- Cited-result and assumption audit: Only exact quotient algebra and restated spherical moments are used.
- Rigor checklist: Measurability, normalization, boundary \(r\ge2\), and the unit-response-to-operator step are correct.
- Local adversarial test: Other projected components cannot cancel the retained perpendicular component.
- Contribution to target step: Confirms that \(\sqrt{k}/r\) is the necessary quotient leading order.
- Verdict: PASS
- Repair direction: None.

### unit_009: canonical data-dependent top-singular alignment test

- Statement fidelity: The lemma remains explicitly one-slice and diagnostic.
- Proof validity: Gaussian/chi control, the Frobenius-rank lower bound, singular-vector truncation, and the conditional spherical moment calculation give the stated RMS interval.
- Cited-result and assumption audit: All invoked Gaussian facts are restated and correctly instantiated.
- Rigor checklist: Data-dependent choices, conditioning scopes, matrix dimensions, and constants are consistent.
- Local adversarial test: The argument correctly leaves multi-slice adaptive alignment unresolved.
- Contribution to target step: Rules out the canonical one-slice alignment as a source of an extra leading factor.
- Verdict: PASS
- Repair direction: None.

### unit_005: full multi-column covariance reduction and all-confidence obstruction

- Statement fidelity: The unit's exact covariance identities and isotropic all-confidence obstruction are valid diagnostic contributions; it no longer purports to prove the theorem-range tail.
- Proof validity: The preserved identities (21b)--(21h), cap probability, same-mode Rayleigh bound, cross-mode unit-input bound, full quotient Rayleigh bound, and the three explicit all-\(t\) contradictions remain correct. Attempt 7 also fixes the prior incomplete citation range to (21m)--(21t).
- Cited-result and assumption audit: The isotropic specialization is allowed in \(\mathcal E_{\rm cond}\), and the fixed-factor angular law retains mode/component independence.
- Rigor checklist: Each confidence choice eventually exceeds one, its threshold lies below the cap lower bound, and its ratio to \(rk\) diverges, defeating every finite prefactor.
- Local adversarial test: The obstruction requires norm correction \(t/r\) and squared-norm correction \(t^2/r^2\) at confidence \(t\asymp rk\), but neither changes the consumed logarithmic-confidence rate.
- Contribution to target step: Removes false all-confidence wrappers and identifies the compatible large-deviation shape.
- Verdict: PASS
- Repair direction: None.

### unit_010: exact elliptic-radial transfer to a Gaussian Terracini chaos

- Statement fidelity: The lemma is a proof-local reduction of the existing TF obligation. It introduces no theorem-facing assumption, event, dependency, norm, or output change.
- Proof validity: With \(\vartheta_M=\operatorname{tr}(H_M^{\mathsf T}H_M)\), the vectors \(u_i^M=H_Mz_i^M/\sqrt{\vartheta_M}\) are independent centered Gaussians with trace-one covariance \(\Omega_M\) and \(\|\Omega_M\|_{\rm op}\le\kappa_1^4/r\). For Laurent--Massart at \(x=r/(256\kappa_1^4)\), the normalized lower deviation is at most \(1/8\) and the upper deviation is at most \(1/8+1/128\). Hence \((q_i^M)^2\in[7/8,145/128]\subset[1/4,4]\), giving \(q_i^M\in[1/2,2]\) with per-pair failure at most \(2e^{-x}\), and the \(3k\)-pair union gives (21y). The identities \(\widetilde J=\widetilde J_GD\) and \(\widetilde E=D\widetilde E_GD\) are exact because \(D\) is component-block diagonal, so it also conjugates the removed within-component blocks. On \(\mathcal R_{\rm ell}\), \(\|D\|\le4\); contractivity of \(\Pi\), without any commutation claim, gives the factor 16.
- Cited-result and assumption audit: Laurent--Massart is restated in current notation; accepted conditioning supplies the spectral ratios, and accepted Gaussianization supplies the exact \(H_Mz_i^M\) representation and independence.
- Rigor checklist: The radial failure threshold depends only on \(\kappa\), and \(6k e^{-r/(256\kappa_1^4)}\le r^{-30}\) follows uniformly from \(k\le r^{5/4}\). The exact algebra holds outside the radial event as well.
- Local adversarial test: \(D\) need not preserve the quotient subspaces or commute with \(\Pi\); the proof correctly uses only the full-space norm bound. Highly anisotropic allowed factors still satisfy the trace-one and operator-covariance bounds.
- Contribution to target step: Validly removes ACG normalization and reduces TF to the single Gaussian moment assertion (21z).
- Verdict: PASS
- Repair direction: None.

### unit_006: raw tangent deficit conditional on the frame estimate

- Statement fidelity: The proposition assumes the local TF--TC event explicitly and does not export it as an unconditional conclusion.
- Proof validity: Within-block coercivity plus TF gives \(J^*J\succeq I/2\); the projection formula and TC give tangent energy at most \(r/2\); Pythagoras and \(\widehat D_0\in\mathscr S_0\) give the exact raw witness.
- Cited-result and assumption audit: The projection formula and accepted raw-span identity are restated in the correct convention.
- Rigor checklist: The event union requires no independence, and all threshold comparisons are finite-large-\(r\) statements.
- Local adversarial test: Removing either TF or TC destroys the corresponding inverse or projection-energy control.
- Contribution to target step: Correctly completes the raw deficit once TF is legally produced.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

All preserved nontrivial claims remain represented by named units, and the new covariance normalization, radial event, conjugation, and quotient transfer are collected in `unit_010`. The trace estimate (21z) is explicitly marked unresolved rather than assumed, but it is an independent nontrivial claim and must become a named theorem-style local unit before acceptance. The Markov step itself is elementary and correct; only its displayed rate-specialization constant needs the repair stated above.

## Target Claim Audit

The exact `step_003` claim is not proved. The proof establishes the angular laws, gauge quotient, raw tangent range, (TC), all off-block formulas, fixed-input and quotient lower-scale diagnostics, exact full-adaptive covariance identities, the all-confidence obstruction, the elliptic-radial event, and the exact ACG-to-Gaussian conjugation. It does not prove (21z), so it cannot produce (TF), the lower bound on the full quotient Gram, \(W_0\), or \(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\). The accepted dependencies are current and are not the source of failure.

## Explicit Rate Audit

The Laurent--Massart calculation exposes only \(\kappa,r,k\), has fixed-factor conditional probability mode and initialization-only horizon, and gives a radial failure at most \(r^{-30}\). Conditional on (21z), Markov is valid because \(\|\widetilde E_G\|^{2p_0}\le\operatorname{tr}|\widetilde E_G|^{2p_0}\):
\[
\mathbb P\left(\|\widetilde E_G\|>eC_Gs_{p_0}\mid A,B,C\right)
\le3kr e^{-2p_0}\le r^{-40},
\]
where \(s_{p_0}=\sqrt k/r+\sqrt{p_0/r}+p_0/r\). The factor-16 conjugation and the corrected absorption in Blocking Issue 2 then preserve the required \(\sqrt k/r+\sqrt{\log r/r}\) TF rate. The radial, Gaussian-moment, and TC failures combine by a union bound to at most \(r^{-30}+r^{-40}+r^{-25}\le r^{-20}\) for large \(r\), with no independence requirement. The raw target, initial core, tangent span, and coefficient residual remain unchanged, so baseline normalization fidelity is preserved.

## Notation Surface Audit

The new objects \(\vartheta_M,u_i^M,q_i^M,\Omega_M,\mathcal R_{\rm ell},D\), and \(\widetilde E_G\) are explicitly defined and correctly classified as proof-local. The only public-facing output remains \(W_0\), which is not exported. The unresolved constant \(C_G(\kappa)\) is correctly identified as hypothetical rather than established. The notation does not leak a generated radial event into the theorem assumptions.

## Target-Step Assembly Audit

After a proved version of (21z), Markov and `unit_010` would give TF at logarithmic confidence, the corrected finite constant would absorb the ceiling and \(p_0/r\) term, and `unit_006` plus the proved TC event would construct the raw deficit witness with the required probability. Those downstream links are valid, but the current assembly lacks the trace-moment producer and understates the displayed specialization constant.

## Review Rationale

`REVISE_STEP` is the smallest controlled status. The new ACG-to-Gaussian transfer is correct and materially sharpens the remaining obligation. Equation (21z) is a proof-local moment formulation of the exact TF event already assigned to `step_003`; it changes no primitive assumption, dependency, theorem scope, quotient convention, output target, probability mode, norm, or exposed rate. A trace-word, decoupled Gaussian-chaos, or equivalent matrix-concentration derivation is an internal realization of the accepted direct random-frame calculation, not a new downstream bridge. The existing lower-bound diagnostics do not refute (21z) at \(p_0=\Theta(\log r)\). Route to `/proof-sketch` only if a future counterexample shows that (21z), or every equivalent theorem-range TF estimate, requires an unabsorbed extra term or a changed interface. At present the missing trace-moment unit and the local rate arithmetic are both repairs to `/proof-step step_003`.
