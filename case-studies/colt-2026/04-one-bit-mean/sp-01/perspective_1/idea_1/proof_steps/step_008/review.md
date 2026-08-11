# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_1/proof_steps/step_008/proof.md`, SHA-256 `13363eff6ae9349ab6ce6e8d8ad4a7ff0b7e380671405b20f1944f45214a66d5`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact level and offset law

- Statement fidelity: The lemma states the complete legality interface needed by the accepted row: a nonempty finite sampled-level set, positive and normalized (p_j), exact mass (1/m) for each nonempty group, no use of an empty-group normalizer, and the selected ordered-pair probability (1/16). It explicitly includes (j=0), (j=J-1), and (J=1).
- Proof validity: The calculation
  \[
  H_*/h_0=(b_k/\gamma_k)(\sigma/\epsilon)^{k/(k-1)}>1
  \]
  correctly gives (J\geq1). The fine/coarse predicates form a disjoint partition, every weight is finite and positive, and summing (p_j=m^{-1}w_j/W_G) inside each nonempty group gives exactly (1/m). Independent uniform (A_i,B_i\in\mathcal S) give probability ((1/4)^2=1/16) even when the two selected offsets coincide.
- Cited-result and assumption audit: No cited result is used. The parameter and scale domains are setting-defined, while Assumption~\(\ref{assump:iid-independent-randomness}\) supplies independence and the exact offset laws. No normalizer estimate from `step_003` and no activity fact from `step_007` is imported.
- Rigor checklist: A nonempty group has a finite positive sum, so every inverse (p_j^{-1}) is legal. If one group is empty, it supplies no index or denominator and the remaining group has (m=1). At (j=J-1), the second selector is the setting-defined (a_J(t)); for (J=1), this is the sole calculation at (j=0=J-1).
- Local adversarial test: Empty coarse and hypothetically empty fine auxiliary groups do not create (0/0). Equality (h_j=\sigma) is assigned only to the fine group. The smallest possible sampled-level set still has total probability one.
- Contribution to target step: This lemma establishes the exact level/match probabilities and makes every importance weight in the mean and square calculations well defined.
- Verdict: PASS
- Repair direction: None.

### unit_002: Conditional refinement kernel and integrability

- Statement fidelity: The lemma supplies exactly the conditioning, measurability, integrability, and square-integrability interface required before iterated expectation. It fixes the full localization sigma-field, places (c) in it, preserves the complete refinement product law, and proves finiteness for every deterministic center.
- Proof validity: The accepted `step_001` center is measurable with respect to
  \(
  \mathscr F_{\rm loc}=\sigma(R_{\rm loc},(X_r)_{r\in I_{\rm loc}})
  \), since every localization bit is a measurable function of these objects. Assumption~\(\ref{assump:iid-independent-randomness}\) makes the refinement tuple independent of this sigma-field, so its conditional law is the displayed product law almost surely. The submitted (Z_i(t)) is exactly the setting formula with (c) replaced by (t): it retains (16/p_{L_i}), the selected-pair indicator, (3h_{L_i}), the response indicator, and the matching threshold-at-(t) indicator. Since the centered indicator belongs to \(\{-1,0,1\}\),
  \[
  |Z_i(t)|\leq48\max_{j<J}h_j/p_j<\infty,
  \]
  which proves both first- and second-order integrability without a moment assumption. The accepted digit range gives
  \(|D_j^t(x)-D_j^t(t)|<3h_j\), so all finite mean and square kernels are absolutely finite.
- Cited-result and assumption audit: The proof uses only the current accepted center from `step_001`, digit range and Borel decoder selection from `step_005`, and the preceding level-law lemma. Their roles are restated before use. It correctly treats (Y_i) as a function of the refinement tuple and never as an independent seed.
- Rigor checklist: The finite-selector representation makes the signed kernels Borel in (t); the absolute kernel is Borel because (z\mapsto\mathbb E_D|F_{j,a,b}(X)-z|) is finite and 1-Lipschitz. Finiteness of (J) and positivity of all (p_j) justify every maximum, sum, and conditional expectation. The proof does not condition on the dither-dependent response while applying a dither identity.
- Local adversarial test: Arbitrarily small positive (p_j) only enlarges a finite deterministic bound. Dither endpoints, digit thresholds, and negative floor cells remain inside the accepted Borel interface. The zero-query localization branch still leaves the refinement tuple independent of the resulting deterministic center.
- Contribution to target step: This lemma validates substitution of the random center into the deterministic refinement kernel and licenses all subsequent conditional expectations and finite interchanges.
- Verdict: PASS
- Repair direction: None.

### unit_003: Exact importance-weighted conditional mean

- Statement fidelity: The proposition proves the exact binding mean claim and defines only the requested public interface
  \(
  \theta(t)=\mathbb E_DT_t(X)
  \). It states both conditioning modes, first on the full localization sigma-field and then on (c), without assuming localization success.
- Proof validity: Conditional on level (j), the match indicator selects exactly the ordered pair \((a_j(t),a_{j+1}(t))\). The accepted dither identity then gives \(\Delta_j^t(x)=D_j^t(x)-D_j^t(t)\). Averaging offsets, the sample, and the level yields the exact cancellation
  \[
  p_j\frac{16}{p_j}\frac1{16}=1,
  \]
  and finite summation gives \(\mathbb E Z_i(t)=\sum_j\mathbb E_D\Delta_j^t(X)=\mathbb E_DT_t(X)\). Independence makes the same calculation valid conditional on \(\mathscr F_{\rm loc}\). Since \(\sigma(c)\subseteq\mathscr F_{\rm loc}\) and \(\theta(c)\) is \(\sigma(c)\)-measurable, the tower property correctly gives \(\mathbb E[Z_i(c)\mid c]=\theta(c)\).
- Cited-result and assumption audit: The dither first-moment result is restated in current notation with its conditional-law requirement, and Lemmas~\(\ref{lem:step-008-level-offset-law}\) and~\(\ref{lem:step-008-refinement-kernel}\) discharge match probability, inverse-weight legality, product law, measurability, and integrability. No future variance, bias, or activity result is used.
- Rigor checklist: The signed orientation matches the setting's response-minus-center convention. All sums are finite and all summands bounded, so the order of offset, dither, sample, and level expectations is legal. The equality is almost sure in the random center and valid on and off \(\mathcal E_{\rm loc}\).
- Local adversarial test: Coincident digit values, either ordering of the two thresholds, threshold ties, (U=-1,2), (j=0), and (j=J-1) are already covered by the accepted exact dither identity and the local level law. None changes the cancellation coefficient or sign.
- Contribution to target step: This proposition identifies the exact conditional center of the refinement pseudo-observation as the selected telescope mean.
- Verdict: PASS
- Repair direction: None.

### unit_004: Exact raw second moment with retained square structure

- Statement fidelity: The proposition proves the requested raw second-moment equality, not a variance bound, and keeps every (p_j) explicit. It also gives exact fine/coarse substitutions without invoking an activity or moment estimate.
- Proof validity: Writing the one sampled level as a disjoint indicator sum is exact. Products from distinct levels vanish pathwise because \(\mathbf1\{L_i=j\}\mathbf1\{L_i=\ell\}=0\) for (j\ne\ell). Within one digit, the proof retains
  \[
  (I_x-I_t)^2=I_x+I_t-2I_xI_t,
  \]
  and invokes the accepted exact dither-square calculation rather than dropping the cross term. Since (M_j^2=M_j), the factors combine as
  \[
  p_j\frac{256}{p_j^2}\frac1{16}(3h_j)
  =\frac{48h_j}{p_j},
  \]
  giving exactly
  \[
  \mathbb E[Z_i(c)^2\mid c]
  =48\sum_{j=0}^{J-1}\frac{h_j}{p_j}
    \mathbb E_D|D_j^c(X)-D_j^c(c)|.
  \]
  Here (1/16) is the match probability, (16/p_j) is the original weight, (256/p_j^2) is its square, and (3h_j) is the exact dither-square factor. The resulting coefficient (48) is therefore correct.
- Cited-result and assumption audit: The accepted `step_005` square identity is accurately restated, including ties, reversed order, and support endpoints. The local kernel lemma supplies conditional square-integrability before the square is averaged. No statement from `step_007`, `step_009`, or `step_010` appears.
- Rigor checklist: The calculation is a raw second moment and never subtracts \(\theta(c)^2\). Passing from \(\mathscr F_{\rm loc}\) to (c) uses the same valid tower argument as for the mean. Substitution of (p_j^{-1}=mW_G/w_j) gives (h_j/w_j=\sigma) on fine levels and (h_j/w_j=\sigma^{2-k}h_j^{k-1}) on coarse levels. Empty groups contribute no term and require no normalizer.
- Local adversarial test: At coincident thresholds or (X=c), the internal square is exactly zero. At a reversed threshold ordering, the half-open interval changes orientation but not length. At (J=1), the disjoint-level expansion has one term and the same coefficient. Very small (p_j) remains explicit rather than being hidden in a constant.
- Contribution to target step: This proposition exports the exact square interface consumed by the later, separately reviewed fine and coarse variance steps.
- Verdict: PASS
- Repair direction: None.

### unit_005: Exact telescope target, residuals, and zero baseline

- Statement fidelity: The proposition exports the exact signed same-target relation required by the sketch and retains both residual expectations. It makes no top-tail, fine-bias, variance, or concentration claim and separately preserves the (X_i=c) baseline.
- Proof validity: The accepted `step_001` first-moment bridge and finite mean range give \(\mathbb E_D|X|\leq\sigma+\lambda<\infty\), discharging the explicit integrability condition in the accepted `step_006` residual proposition. Substituting \(\theta(t)=\mathbb E_DT_t(X)\) into that exact identity gives
  \[
  (\mu-t)-\theta(t)
  =\mathbb E_DR_0^t(X)+\mathbb E_DR_H^t(X)
  \]
  with the correct signs, first for every deterministic (t) and then at (t=c). If (X_i=c), the response and centering indicators are identical for every seed and dither value, so (Z_i(c)=0) pathwise; the accepted telescope result gives exact vanishing of all remaining centered quantities.
- Cited-result and assumption audit: The proposition uses only the accepted first-moment, residual-interface, and zero-displacement results that it names. It does not use the `step_001` localization event, `step_007` support, or any later residual bound.
- Rigor checklist: Both residuals are integrable before expectations are taken. Evaluating a pointwise-in-(t) deterministic kernel identity at the measurable (c) requires no exchange between the center law and (D). The equality remains signed and no absolute-value inequality is silently substituted.
- Local adversarial test: A negative expectation for either residual leaves the identity unchanged. At (X_i=c), the result is pointwise rather than merely almost sure in (U_i), including mismatched offsets and all levels. If (D) is concentrated at (c=\mu), both exact conditional moments and the complete residual interface reduce to zero.
- Contribution to target step: This proposition connects the exact telescope mean to the eventual target \(\mu-c\) while leaving the two legal downstream bias obligations visible.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. Positivity, normalization, empty-group legality, and boundary levels are in Lemma~\(\ref{lem:step-008-level-offset-law}\); localization/refinement independence, joint measurability of the relevant kernels, first- and second-order integrability, and finite-interchange legality are in Lemma~\(\ref{lem:step-008-refinement-kernel}\); the exact mean and the full-to-coarse conditioning passage are in Proposition~\(\ref{prop:step-008-conditional-mean}\); cross-level exclusion, the within-indicator cross term, and every numerical factor in the raw square are in Proposition~\(\ref{prop:step-008-raw-square}\); and the signed residual and zero-displacement interfaces are in Proposition~\(\ref{prop:step-008-target-interface}\). Endpoint ties and reversed thresholds are supplied by the exactly restated accepted dither proposition. No broad prose imports a new activity, variance, bias, tail, or localization-success assertion.

## Target Claim Audit

The submitted definition used in the calculation matches `setting.md` exactly:

\[
Z_i(c)=\frac{16}{p_{L_i}}
\mathbf1\{(A_i,B_i)=(a_{L_i}(c),a_{L_i+1}(c))\}
3h_{L_i}\left[Y_i-
\mathbf1\{F_{L_i,A_i,B_i}(c)/h_{L_i}\geq U_i\}\right].
\]

The proof establishes the exact accepted `step_008` claim conditional on the independent center, with no localization-event restriction: \(\mathbb E[Z_i(c)\mid c]=\theta(c)=\mathbb E_DT_c(X)\) and the exact raw square with coefficient (48). It keeps all (p_j)-dependence visible, gives exact group substitutions, and exports the signed residual relation without a future bias claim. The current accepted dependency proof/review hashes match the submitted restatements: `step_001` `dc22a361441e6cdbc4c54537ca39e3cc38b3071069e3f089d9ad758bb17c379b` / `67dada641fad3ab0cf52d7a5aed94d3f647fd2d014ab235fdcf06f03b2f305b7`; `step_005` `a11175474544ac3d7c1045a381d9825baa441cdd6a7599bbc74d4659acba9239` / `11deb0dfc65ff1c5c6cc05af4dd9ad00cafbfd2e8db286b1938aa2c7b19cfeb6`; and `step_006` `8b9032652aff80e875da03cecdc2e04cf5757618826735a131911d400f55ab58` / `df17f07d57218738adde9fb53eeb95f98fb6f971b8b6bcd11584f30aaf0f26b4`. All three reviews record `ACCEPTED` for sketch attempt 1 and unit attempt 1.

## Explicit Rate Audit

This step exports an exact quantitative interface rather than an asymptotic rate. Every (h_j/p_j) factor is displayed, and the exact group forms expose (m), (W_G), (\sigma), (k), and (h_j); no hidden constant is present. The proof explicitly declares fixed (k), the fixed finite scale family and index, exact conditional-expectation/raw-second-moment probability mode, one-observation deterministic fixed-horizon mode, and scalar absolute-value norm for the square integrand. It introduces no auxiliary tolerance, domination, probability conversion beyond the tower property, or term absorption. The exact (X=c) zero-displacement baseline is preserved.

## Notation Surface Audit

The sole new public-facing object is \(\theta(t)=\mathbb E_DT_t(X)\), exactly the minimal downstream mean interface. The full raw-square formula is exported directly rather than hidden behind a bundled constant. The repeated digit difference \(\Delta_j^t\) is appendix-local and expanded in every public conclusion; \(\mathscr F_{\rm loc}\), (M_j^t), (G_{j,a,b}^t), (I_x,I_t), and \(\phi_{j,a,b}\) are proof-local. The factors (16), (256), (3h_j), and (48), all normalizers, and every helper's measurability and finiteness have explicit provenance. No notation cascade or unexplained bounded quantity is exported.

## Target-Step Assembly Audit

Lemma~\(\ref{lem:step-008-level-offset-law}\) makes the exact importance law legal; Lemma~\(\ref{lem:step-008-refinement-kernel}\) supplies the conditional product kernel and all finiteness/measurability checks; Proposition~\(\ref{prop:step-008-conditional-mean}\) gives \(\theta(c)\); Proposition~\(\ref{prop:step-008-raw-square}\) gives the exact raw square and group interfaces; and Proposition~\(\ref{prop:step-008-target-interface}\) supplies the signed telescope residual and exact zero baseline. These named results jointly imply every component of the binding claim. The assembly introduces no new lemma and uses neither a bare local-unit identifier nor an unaccepted step as mathematical authority.

## Review Rationale

The five local units prove the unchanged sketch-row claim under exactly the allowed primitive independence condition and the current accepted `step_001`, `step_005`, and `step_006` interfaces. The definition of (Z_i(c)), all inverse-probability and dither constants, the internal and cross-level square structure, conditional laws, sigma-field passage, integrability, finite interchanges, endpoint and small-(J) cases, signed residual relation, and zero baseline all check exactly. No local, dependency, or sketch defect remains, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest controlled disposition.
