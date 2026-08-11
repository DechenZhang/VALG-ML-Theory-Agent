# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_002/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: balanced spherical law and exact coefficient Gaussianization

- Statement fidelity: The lemma proves the exact balanced common-radius representation, the SVD-coordinate representation, and the single- and pair-mode conditional covariances required by the accepted sketch row, conditional only on the accepted realized-factor event.
- Proof validity: Writing each raw column as \(h/\sqrt n=Ru\) makes balancing give \(g(u^x,u^y,u^z)\) exactly. Compact-SVD algebra then yields
  \(\bar\zeta^M=(s^m/\sqrt r)H_Mz^M\). Since all directions are independent of all radii, conditioning on the common radius \(g_i\) preserves the uniform and cross-mode independent direction laws, so (6)--(7) follow with the stated \((M^{\mathsf T}M)^{-1}/r\) and Kronecker-product covariances.
- Cited-result and assumption audit: Gaussian radius-direction independence and orthogonal Gaussian invariance are restated in current notation. Assumption~\(\ref{assump:independent_initialization}\) supplies all mode/component independence, and Proposition~\(\ref{prop:step-001-realized-conditioning}\) supplies full rank. The proof does not require the projected Gaussian \(z_i^M\) to be independent of the radial multiplier \(s_i^m\).
- Rigor checklist: The zero-radius branch is null, all dimensions and normalization factors are correct, and the conditional laws are uniform over every fixed realized triple in \(\mathcal E_{\rm cond}\).
- Local adversarial test: Dependence of \(s_i^m\) on the same raw Gaussian as \(z_i^M\) does not break any later step: the representation is exact and the subsequent transfer uses only pointwise radial bounds plus a union bound.
- Contribution to target step: Establishes the natural normalized scale and the exact representation used by the pair-Gram proof.
- Verdict: PASS
- Repair direction: None.

### unit_002: simultaneous radial control and the initial-size event

- Statement fidelity: The lemma proves the generated size event and the internal balancing-scalar bounds from primitive initialization randomness; it does not promote the radial event to an assumption.
- Proof validity: The chi-square tail with \(\delta=1/2\) gives per-column failure \(2e^{-n/32}\); union over \(3k\) columns gives \(6ke^{-n/32}\le r^{-25}\) under \(n\ge r^4\log r\) and \(k\le r^{5/4}\). On the event, geometric-mean and ratio bounds give \(g_i\in[1/\sqrt2,\sqrt{3/2}]\) and \(s_i^m\in[1/\sqrt3,\sqrt3]\), hence every actual balanced column has norm below \(2\).
- Cited-result and assumption audit: The chi-square inequality is restated and instantiated with the exact raw Gaussian radii. Conditioning on the realized factors is harmless because initialization is independent of smoothing.
- Rigor checklist: Endpoint inclusions, maximal \(k\), minimal allowed \(n\), arbitrarily large \(n\), and the separate \(r^{-20}\) public size budget are all handled explicitly.
- Local adversarial test: At the radial endpoints, the worst ratio is exactly \(\sqrt3\), so every pair multiplier remains in \([1/3,3]\); no strict-margin assumption is used.
- Contribution to target step: Produces \(\mathcal E_{\rm size}\) and the deterministic diagonal bounds needed for anisotropic Gram transfer.
- Verdict: PASS
- Repair direction: None.

### unit_003: constant-window Gaussian Khatri--Rao concentration

- Statement fidelity: The lemma proves the required constant natural-scale window for an \(r^2\times k\) standard Gaussian Khatri--Rao matrix uniformly throughout \(r<k\le r^{5/4}\).
- Proof validity: The identity \(V^{\mathsf T}V=r^{-2}\sum_bD_{y_b}SD_{y_b}\) is exact. Conditional on the first Gaussian mode, the clipped row summands are independent, centered, self-adjoint, and bounded by \(R_r=1440\log r/r^{3/4}\). The variance proxy \(rR_r^2=1440^2(\log r)^2/\sqrt r\) tends to zero, so matrix Bernstein at \(t=1/4\) gives failure at most \(r^{-30}\) after a finite numerical threshold. The conditional mean has spectrum in \([9/16,5/4]\), yielding the claimed window after the \(1/4\) fluctuation allowance.
- Cited-result and assumption audit: Chi-square concentration, the rectangular Gaussian operator-norm tail, and self-adjoint matrix Bernstein are each restated with their instantiated objects and hypotheses. Coordinatewise symmetric clipping preserves centering and independence.
- Rigor checklist: The clipping bias satisfies \(1-\mu_r\le\sqrt6r^{-20}\); the original and clipped Grams agree on the explicitly budgeted maximum-entry event; the \(Z\)-good event, conditional Bernstein event, and clipping event total at most \(4r^{-30}\le r^{-25}\). The large threshold is numerical and introduces no hidden \(n,k,\kappa\), or realized-factor dependence.
- Local adversarial test: The proof does not infer concentration for the unclipped matrix from a clipped expectation alone. It couples the matrices by exact equality on the maximum-entry event, and the event dependence is handled by union bounds. At \(k=r^{5/4}\), both \(R_r\) and \(rR_r^2\) still vanish.
- Contribution to target step: Supplies the standard Gaussian near-isometry used for each normalized mode pair.
- Verdict: PASS
- Repair direction: None.

### unit_004: uniform normalized pair-Gram windows

- Statement fidelity: The proposition proves all three normalized Gram windows, uniformly conditional on every realized triple in \(\mathcal E_{\rm cond}\), with the exact \(r^{-20}\) failure interface consumed downstream.
- Proof validity: For each pair, the exact factorization \(\bar K=(H_M\otimes H_N)VD_{MN}\), the accepted singular-value interval for \(H_M\otimes H_N\), the Gaussian Khatri--Rao window, and \(D_{MN}\in[1/3,3]\) give singular values in \([1/(6\kappa_1^2),3\sqrt2\kappa_1^2]\), hence Gram eigenvalues in \([1/(36\kappa_1^4),18\kappa_1^4]\). The argument is deterministic on the intersected radial and Gaussian events.
- Cited-result and assumption audit: The exact accepted dependency claim is restated and its current SVD objects are mapped correctly. All three Gaussian pair matrices have the required marginal law conditional on the realized factors; pairwise dependence and dependence on the radial event are irrelevant to the union bound.
- Rigor checklist: One radial failure plus three pair failures gives \(4r^{-25}\le r^{-20}\). The single condition \(r^{20}\ge36\kappa_1^4\) embeds the constant interval in \([r^{-20},r^{20}]\), including both endpoints.
- Local adversarial test: Sharing one Gaussian mode between two pair Grams does not invalidate the proof, since no product-probability or conditional independence assertion is made. Arbitrarily large \(n\) does not enter the normalized window.
- Contribution to target step: Produces the complete generated event \(\mathcal E_{\rm gram}^{\rm norm}\) with the required uniform conditional budget.
- Verdict: PASS
- Repair direction: None.

### unit_005: exact raw/normalized Gram and tangent-span transfer

- Statement fidelity: The proposition proves the exact raw scale and tangent-span equality required by the setting and accepted sketch, without changing the target core or residual metric.
- Proof validity: From \(\alpha=\sqrt{r/n}\,\bar\alpha\) and its analogues, every raw pair column is exactly \(r/n\) times its normalized counterpart, so \(G_{\rm raw}=(r/n)^2G_{\rm norm}\). Every normalized tangent generator is the nonzero scalar \(n/r\) times the corresponding raw generator, proving equality of the three generated spans.
- Cited-result and assumption audit: No external result, event, or dependency beyond the definitions is used.
- Rigor checklist: The identities hold realization by realization, including arbitrarily large \(n\); no fixed raw lower threshold is asserted. \(D_r\), \(\widehat D_0\), the raw coefficient residual, and physical loss are not normalized.
- Local adversarial test: Possible zero coefficient vectors do not affect the span equality because the raw-to-normalized relation uses the fixed nonzero scalar \(\sqrt{n/r}\), not division by a coefficient norm.
- Contribution to target step: Supplies the exact no-dilution bridge and the tangent-space interface consumed by `step_003`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The balanced law and covariances, radial/size control, clipped Khatri--Rao concentration, anisotropic three-pair transfer, exact scale identity, and tangent-span equality each appear as named local units. The conditional-on-\(\mathcal E_{\rm cond}\) conversion follows from the uniform fixed-realization bounds and initialization/smoothing independence; it does not assume a generated Gram or radial event. The proof explicitly accounts for dependence between balancing radii and projected Gaussians and among the three pair-Gram events.

## Target Claim Audit

The proof establishes the exact `step_002` sketch-row claim under Assumptions~\(\ref{assump:dimension}\), \(\ref{assump:rank_window}\), and \(\ref{assump:independent_initialization}\), plus the accepted `step_001` output. Uniformly over every allowed \(n,r,k\), every deterministic base triple, and every fixed realized triple in \(\mathcal E_{\rm cond}\), it proves the balanced spherical/SVD representation and conditional covariances, all three normalized Gram windows with conditional failure at most \(r^{-20}\), \(\mathbb P(\mathcal E_{\rm size}^c\mid\mathcal E_{\rm cond})\le r^{-20}\), the exact raw scale, and raw/normalized tangent-span equality. Quantifiers, probability mode, initialization scope, constants, and norm conventions match the accepted row.

## Explicit Rate Audit

The step preserves every exposed variable \(n,r,k,\kappa,q\), the rank window, the normalized public window, and the separate \(r^{-20}\) confidence budgets. Hidden thresholds are declared: \(r_{\rm rad}\) and \(r_{\rm KR}\) are numerical, while the final embedding threshold may depend only on \(\kappa\) and the setting threshold on \((\kappa,q)\); none depends on \(n,k\), the base triple, or a realized conditioned factor. The probability mode is initialization-high-probability uniformly conditional on realized factors, the horizon mode is initialization-only, and the norm mode is Euclidean/operator/Gram eigenvalue. Every absorption and conversion is displayed, including the radial tail, clipped Bernstein exponent, clipping coupling, three-pair union, constant-to-polynomial window embedding, and exact \((r/n)^2\) raw transfer. The baseline scale repair is preserved for arbitrarily large \(n\), with no normalization of the raw target, initial core, residual, or physical metric.

## Notation Surface Audit

The public-facing outputs are exactly \(\mathcal E_{\rm gram}^{\rm norm}\), \(\mathcal E_{\rm size}\), the raw Gram identity, and tangent-span equality. Radius/SVD/Gaussianization objects, the radial event, clipping parameters, auxiliary Gaussian matrices, and pairwise diagonal multipliers are correctly classified as appendix-local or proof-local and have explicit provenance. No proof-local dictionary is exported downstream, and no one-off alias hides a boundedness, covariance, or probability obligation.

## Target-Step Assembly Audit

Lemma~\(\ref{lem:step-002-balanced-gaussianization}\) supplies the exact representation and covariance identities. Lemma~\(\ref{lem:step-002-radial-size}\) supplies the size event and radial multipliers. Lemma~\(\ref{lem:step-002-gaussian-kr}\) supplies the standard constant-window pair geometry. Proposition~\(\ref{prop:step-002-normalized-grams}\) combines these with accepted Proposition~\(\ref{prop:step-001-realized-conditioning}\) to produce all three public normalized Gram windows and their confidence. Proposition~\(\ref{prop:step-002-exact-scale}\) supplies the exact raw scale and tangent-span equality. These named results jointly imply every clause of the target step without an unreviewed bridge.

## Review Rationale

The submitted proof closes the difficult local obligations under the unchanged accepted sketch interface. In particular, the covariance conditioning is valid because radii and directions separate; the clipped matrix-Bernstein proof includes both truncation bias control and an exact coupling back to the original Gram; radial and projected-Gaussian dependence is handled without an independence claim; all three anisotropic normalized windows and both public failure budgets are explicit; and the raw-scale and tangent-span identities are exact. The accepted dependency is current and supplies precisely the needed singular-value bounds. No step, sketch, or dependency repair is required, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest controlled outcome.
