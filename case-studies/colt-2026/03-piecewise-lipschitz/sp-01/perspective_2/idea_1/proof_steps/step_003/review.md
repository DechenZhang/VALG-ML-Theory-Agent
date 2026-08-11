# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 3
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_003/proof.md (SHA-256: ee49de9b8de6d218926e612450f7172e209465eb6bcda1a8c254f624fc93cebd)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The statement exactly supplies the sketch-row cap interface for both endpoint kernels: a measurable representative, a.s. equality with the conditional density \(L^\infty\)-norm, simultaneous domination of every Borel pivot set, preservation of the primitive mean bounds, conditional support, kernel- and density-version invariance, and the common degree-one interface. Its assumptions are precisely the relevant primitive conditions, with no dependency or generated-invariant premise.
- Proof validity: The proof first constructs the finite kernel product \(\gamma_i=\nu_i\otimes Q^i\), identifies it with the actual joint law by finite-measure uniqueness on rectangles, verifies sigma-finiteness of \(\beta_i=\nu_i\otimes\lambda\), proves \(\gamma_i\ll\beta_i\) by Tonelli null sections and fiberwise absolute continuity, and obtains a jointly measurable Radon--Nikodym density. A countable generating pi-system containing the whole space then identifies this density with \(Q^i_y\) on one full-measure set. The rational-interval formula is measurable and equals the fiber \(L^\infty\)-norm: the upper bound is immediate, while the lower bound uses a Lebesgue point, rational-endpoint approximation, and the explicitly proved absolute continuity of \(\int_E|q|\,d\lambda\). The subsequent version-independence, Borel-set domination, mean-bound, finiteness, and support arguments are valid.
- Cited-result and assumption audit: The measure-kernel product theorem, product/Tonelli facts, Radon--Nikodym theorem, finite-measure uniqueness, monotone convergence, and Lebesgue differentiation theorem are each restated in current notation. Their finiteness, sigma-finiteness, measurability, absolute-continuity, and integrability hypotheses are discharged before use. Assumptions~\ref{assump:indexed-regime}, \ref{assump:compact-cube-support}, and \ref{assump:mean-endpoint-conditional-caps} are used only in their primitive roles.
- Rigor checklist: Quantifiers and common full-measure sets are handled through countable intersections. The proof covers infinite essential supremum before using the finite primitive expectation, arbitrary null-fiber kernel modifications, possibly singular conditioning marginals, and \(d=1\). No ambient joint density or a.s. uniform cap is inferred.
- Local adversarial test: Changing density versions leaves the norm unchanged; changing regular conditional kernels on null fibers leaves all rational-interval values, hence the cap, unchanged a.s. A singular \(\nu_i\), an unbounded pointwise cap on exceptional fibers, and a Borel set depending on no preselected exceptional set do not break the argument. PASS.
- Contribution to target step: Lemma~\ref{lem:step-003-kernel-caps} provides exactly the measurable, version-independent cap and simultaneous density-domination interface consumed by the matching-kernel disintegration.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: The lemma proves Borelness for every bounded source interval with arbitrary endpoint convention, including empty and singleton cases, and identifies the exact inner and outer pivot sections required by the sketch. It uses only the compact-domain, indexed-regime, and cube-support primitive assumptions.
- Proof validity: Every such interval is explicitly exhausted by an increasing sequence of compact subsets. For each compact subset, the polynomial zero set inside the compact coefficient cube is compact, so its coefficient projection is compact; the countable union is therefore Borel. Continuous coordinate reconstruction then gives Borel product events and Borel sections. Direct pivot algebra proves the cube-intersected inner identity and, after division only by nonzero \(\theta^{d-1}\), both outer identities.
- Cited-result and assumption audit: The finite-product, closed-subset, continuous-image compactness facts and connected-image fact are correctly restated and instantiated. Compactness of \(\Theta\) supplies boundedness, cube support supplies the compact coefficient factor, and monicity supplies the exact pivot equations.
- Rigor checklist: The proof avoids projecting an arbitrary Borel set, preserves all four endpoint conventions under the compact exhaustion, treats the two outer signs separately, and covers \(d=1\), tangencies, multiple roots, empty intervals, and singleton intervals.
- Local adversarial test: Open and half-open intervals remain countable unions of compact pieces; roots at \(\pm1\) are assigned only to the inner chart; negative outer coordinates permit the stated division; and a general Borel-projection pathology cannot occur because every projected set is compact. PASS.
- Contribution to target step: Lemma~\ref{lem:step-003-borel-sections} supplies the exact Borel chart events and coordinate sections needed for legal kernel evaluation and disintegration.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: The proposition combines precisely the two prior named lemmas into the target matching-kernel interface. It states the exact disintegration identities, integrand measurability, full-measure cap domination, separation of inner and outer kernels for \(d\geq2\), and their required coincidence for \(d=1\).
- Proof validity: The first pi--lambda argument proves measurability of \(y\mapsto Q_y(E_y)\) for every Borel product event. The second proves the full disintegration identity from regular conditionality on rectangles; both arguments include the whole product, and the disjoint-union step is justified by kernel countable additivity and monotone convergence. Applying the generic identity to the exact coordinate events gives the desired probabilities. Conditional support removes the cube intersection without changing probability, and the simultaneous Borel-set domination from unit_001 applies to the exact continuous-image interval.
- Cited-result and assumption audit: The pi--lambda and monotone-convergence uses are stated with their current product order, generating pi-system, whole-space mass, nonnegativity, and pointwise convergence checks. The proposition consumes only the two named local lemmas and the four primitive assumptions; there is no hidden dependency.
- Rigor checklist: Product order, coordinate reconstruction, section measurability, the two distinct conditioning sigma-fields, and the one-point \(d=1\) state space are all explicit. Empty and singleton images are handled by absolute continuity.
- Local adversarial test: A conditioning-dependent image is legal because the entire product event is Borel and the section integral is measurable. Event overlap, singular conditioning marginals, and null conditioning fibers do not affect the identity. Neither endpoint kernel is substituted for the other when \(d\geq2\). PASS.
- Contribution to target step: Proposition~\ref{prop:step-003-disintegration} exports the exact legal event-fiber interface consumed by step_004.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The proof exposes the three independent nontrivial claims in the local lemma map. The remaining ingredients are either fully restated standard results with discharged hypotheses or explicit subderivations inside the appropriate named unit: kernel-product construction and fiber identification in unit_001, compact exhaustion and exact pivot algebra in unit_002, and the two pi--lambda closures in unit_003. The target-step assembly cites only the named lemmas and proposition. No global diagnostic, dependency artifact, subsection title, or bare local-unit identifier is used as mathematical authority.

The final notation note mentions provenance for prior unit attempt 2. That sentence is stale workflow metadata, but it is not an identity field, assumption, cited result, or proof premise. The controlled identity at the head of the reviewed artifact is sketch attempt 1 / step_003 / unit attempt 3, and the exact reviewed SHA above binds this review to the current producer artifact. The stale sentence must not be carried into public proof prose.

## Target Claim Audit

The accepted sketch is current at sketch attempt 1, and the proof header matches that identity and unit attempt 3. The proof establishes the exact step_003 claim under the four listed primitive assumptions and no dependencies: both measurable cap representatives, a.s. equality and exact primitive mean bounds, simultaneous Borel-set domination, Borel chart root events for every endpoint convention, exact sections, and legal matching-kernel disintegration. It neither assumes an a.s. slice cap nor changes the law class, chart convention, quantifier order, probability mode, or \(d=1\) boundary.

## Explicit Rate Audit

This step preserves the only quantitative inputs it touches:
\[
\mathbb E\widehat K_0(Y_0)\leq\bar\kappa_0,\qquad
\mathbb E\widehat K_\infty(Y_\infty)\leq\bar\kappa_\infty.
\]
It introduces no multiplicative constant, auxiliary tolerance, asymptotic absorption, confidence conversion, horizon change, or norm change. The exposed variables are \(d,R,\bar\kappa_0,\bar\kappa_\infty\); \(\eta\) and \(\Theta\) remain fixed as specified; the probability mode is an a.s. fiber identity followed by exact expectation bounds; and the norm is the conditional one-dimensional \(L^\infty(\lambda)\) norm. The \(d=1\) specialization recovers the single unconditional cap exactly.

## Notation Surface Audit

The two pivot pairs, conditioning marginals, kernels, cap representatives, coordinate maps, and product events are correctly classified as appendix-local; the product measures, Radon--Nikodym density, rational generators, compact exhaustions, finite measure \(\rho\), generic pi--lambda classes, and local approximation variables are proof-local. No helper is exported to the public theorem, and no one-off symbol conceals finiteness, measurability, support, or a constant. The only public-facing interface is the original mean-cap and Borel event-fiber conclusion. The stale prior-attempt provenance sentence is workflow-only and should be omitted from assembly, but it does not alter the mathematical notation surface.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-003-kernel-caps} proves cap measurability, version invariance, exact mean preservation, simultaneous Borel-set domination, and conditional support. Lemma~\ref{lem:step-003-borel-sections} proves event Borelness and exact sections. Proposition~\ref{prop:step-003-disintegration} combines those outputs into the exact matching-kernel disintegration identities and fiberwise inequalities. These named results jointly imply every part of the sketch-row target, including separate endpoint kernels for \(d\geq2\), the common kernel for \(d=1\), arbitrary endpoint conventions, and null-fiber handling.

## Review Rationale

The reviewed proof has the required current identity and exact producer hash, uses only allowed primitive inputs, and closes every local measure-theoretic and topological obligation without changing the accepted sketch interface. All three local units pass statement, citation, rigor, boundary, and assembly audits. There is no mathematical or contract defect requiring a producer rerun, so the smallest target is None.
