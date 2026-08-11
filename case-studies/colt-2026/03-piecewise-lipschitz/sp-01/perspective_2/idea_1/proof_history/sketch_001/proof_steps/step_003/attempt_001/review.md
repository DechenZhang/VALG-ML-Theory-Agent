# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_003/proof.md; SHA-256: 826572f09a2165fa971ed4c47a7e2863744d42c8dea30b63fb2b5ee0db4791f8

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma states the exact cap interface required by the accepted step row. It constructs separate measurable representatives for the inner and outer endpoint kernels, gives almost-sure equality with the setting-defined conditional density norms, preserves the two primitive mean bounds, proves simultaneous domination for every Borel pivot set on one full-measure set per kernel, and identifies the two interfaces in degree one. Conditional support is a useful derived conclusion needed to remove the cube intersection in unit_003 and does not strengthen a theorem assumption.
- Proof validity: The product measure \(\gamma_i(dy,dx)=\nu_i(dy)Q^i_y(dx)\) is correctly shown absolutely continuous with respect to \(\nu_i\otimes\lambda\). This argument uses only fiberwise absolute continuity for \(\nu_i\)-almost every \(y\), so it remains valid when the conditioning marginal \(\nu_i\) is atomic, lower-dimensional, or otherwise singular with respect to ambient Lebesgue measure. A jointly measurable Radon--Nikodym derivative is converted into a fiber density on one full-measure set by a countable generating pi-system. The countable rational-interval formula makes \(\widehat K_i\) measurable on every fiber, and Lebesgue differentiation plus rational endpoint approximation proves \(\widehat K_i(y)=\|q_i(y,\cdot)\|_\infty\) on every density fiber, including the extended-valued case. The pointwise essential bound then yields \(Q^i_y(A)\leq\widehat K_i(y)\lambda(A)\) simultaneously for all Borel \(A\), without an \(A\)-dependent conditioning exceptional set. Finite primitive expectation bounds imply finite caps almost surely, and conditional support follows from disintegrating the zero probability of leaving \([-R,R]\).
- Cited-result and assumption audit: The kernel Radon--Nikodym construction, regular-conditional-kernel uniqueness, and one-dimensional Lebesgue differentiation theorem are restated in current notation with their hypotheses discharged by Assumption~\ref{assump:mean-endpoint-conditional-caps} and the Euclidean standard-Borel conditioning spaces. Assumption~\ref{assump:compact-cube-support} is used only for conditional pivot support. No joint coefficient density, density of \(\nu_i\), independence, or almost-sure uniform cap is assumed. There are no dependency artifacts.
- Rigor checklist: Quantifiers and probability modes are preserved. Kernel and density versions may differ on null fibers, but the rational-interval formula gives the same cap \(\nu_i\)-almost surely. Values on bad fibers may be extended-valued and are not consumed. The proof keeps the inner and outer conditioning marginals separate for \(d\geq2\), and for \(d=1\) the unit mass on \(\mathbb R^0\) forces both labels to use the same unconditional law and cap. No hidden constant or conditioning-value dependence is introduced.
- Local adversarial test: The construction survives a singular conditioning marginal such as a point mass, arbitrary changes to a regular conditional kernel on a marginal-null fiber, a density with unbounded essential supremum on an exceptional conditioning set, and the coincident degree-one pivot. An atom in a good pivot fiber would break the claimed domination, but it is excluded exactly by the primitive conditional absolute-continuity assumption. No unresolved case remains.
- Contribution to target step: This unit supplies the version-independent measurable cap, simultaneous Borel-set domination, exact mean-cap interface, null-fiber discipline, conditional support, and degree-one kernel identification consumed by unit_003 and downstream step_004.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: The lemma proves the target's Borel root-event requirement and the exact inner and outer event sections for every chart interval, while explicitly covering empty and singleton intervals and arbitrary open, closed, or half-open endpoint conventions. The statement uses only the three setting assumptions listed in the accepted sketch row for this subclaim.
- Proof validity: Compactness of \(\Theta\) makes every relevant \(J\) bounded. The displayed compact exhaustion \(J=\bigcup_nK_n\) preserves included and excluded endpoints. For each \(K_n\), the polynomial zero set in \([-R,R]^d\times K_n\) is compact, so its coefficient projection is compact and Borel; the countable union is exactly \(H_{d,J}\). Thus the proof does not rely on projection preserving Borelness for arbitrary Borel sets. The reconstruction maps are continuous, their inverse images are Borel, and product-Borel sections are Borel. Solving the root equation for \(\alpha_0\) gives the exact inner section. Dividing by nonzero \(\theta^{d-1}\) separately on either outer chart gives the exact \(\alpha_{d-1}\) section. Intersecting with \([-R,R]\) and declaring sections empty for conditioning values outside the cube correctly reflects the definition of \(H_{d,J}\).
- Cited-result and assumption audit: Compact zero-set projection and Borel-section facts are stated in current objects and proved or reduced to standard compactness and sigma-algebra closure. Assumption~\ref{assump:compact-parameter-domain} supplies boundedness, Assumption~\ref{assump:indexed-regime} supplies finite-dimensional indices, and Assumption~\ref{assump:compact-cube-support} supplies the coefficient cube and monic polynomial. No probabilistic density assumption is used in this unit.
- Rigor checklist: The compact exhaustion covers open, closed, half-open, empty, and singleton cases. Tangencies and multiple roots are harmless because the argument uses an existential zero-set identity rather than transversality. The two outer signs are treated only where \(\theta\neq0\), and \(\pm1\) are allocated to the inner chart. For \(d=1\), both reconstruction maps are the same and both section formulas reduce to \([-R,R]\cap(-J)\).
- Local adversarial test: Fully open intervals, one-sided open intervals, singleton chart pieces, roots at \(\pm1\), conditioning points outside the coefficient cube, negative outer parameters, tangencies, and repeated roots all preserve the compact-exhaustion and exact-section conclusions. No analytic-set-only projection or endpoint leakage occurs.
- Contribution to target step: This unit supplies Borel root events and the exact Borel sections to which the matching kernels and caps can legally be applied in unit_003.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: The proposition assembles exactly the accepted output interface: legal disintegration of each chart event through its matching conditional kernel, measurable section probabilities, and cap domination of the exact pivot images. It keeps the inner and outer kernels distinct for \(d\geq2\) and uses the coincident unconditional kernel and cap for \(d=1\).
- Proof validity: The pi-lambda argument correctly proves measurability of \(y\mapsto Q_y(E_y)\) for every product-Borel event and extends the regular-conditional identity from rectangles to all such events. Applying this identity to \(E^0_J\) uses only \((X_0,Y_0)=(\alpha_0,\alpha_{1:d-1})\), while applying it to \(E^\infty_J\) uses only \((X_\infty,Y_\infty)=(\alpha_{d-1},\alpha_{0:d-2})\). On each full-measure set \(G_i\), conditional support removes the cube intersection from the exact section, and unit_001's simultaneous domination applies to the Borel interval image. These steps prove equations (9)--(12) without conflating conditioning sigma-fields or requiring measurability of the image description independently of the Borel product event.
- Cited-result and assumption audit: The proposition uses only the four primitive setting assumptions and the two preceding named local lemmas. The parameterized-kernel and disintegration facts are proved in current notation. No paper result, global diagnostic claim, dependency artifact, ambient joint density, or common refinement of the two conditional kernels is used.
- Rigor checklist: All exceptional sets are fixed by kernel rather than by chart interval or Borel pivot set. Arbitrary values on conditioning-null fibers do not affect the disintegrals. Empty and singleton images are Borel and have zero conditional probability by absolute continuity. Singular conditioning marginals remain legal because kernel integration is with respect to their own laws \(\nu_0\) and \(\nu_\infty\). In degree one, both coordinate pairs are exactly \((\alpha_0,\varnothing)\), so equations (9)--(12) use one kernel rather than two independently selected versions.
- Local adversarial test: Replacing either conditional kernel on a null fiber, taking mutually singular inner and outer conditioning marginals, using an ambiently singular coefficient law, choosing open or half-open chart intervals, or setting \(d=1\) does not alter the asserted integrated identities or fiberwise inequalities. Attempting to apply the inner kernel to an outer section would be invalid, but the proof never does so.
- Contribution to target step: This unit converts the cap and section lemmas into the exact version-independent Borel event-fiber interface consumed by step_004.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

The proof exposes all independent nontrivial claims in the local lemma map. Jointly measurable fiber densities, measurable rational-interval caps, version independence, simultaneous Borel-set domination, conditional support, compact-exhaustion Borelness, exact chart sections, parameterized section measurability, and matching-kernel disintegration are proved in unit_001, unit_002, or unit_003. Standard atomic facts used inside those units are stated with their current-notation hypotheses. The target-step assembly cites only the named lemmas and proposition, not bare unit IDs or subsection prose.

The note concerning global proof diagnostics is planning provenance only. No statement from a global diagnostic is used as proof evidence, a cited result, an assumption source, or authority to alter the target. The rational-interval cap, compact exhaustion, and all exported interfaces are independently derived in the submitted proof. This review therefore does not consume any global diagnostic artifact.

No hidden independent subclaim was found.

## Target Claim Audit

The submitted target matches the accepted step_003 sketch row verbatim in substance and preserves its `Depends on: None` interface. Under Assumptions~\ref{assump:compact-parameter-domain}, \ref{assump:indexed-regime}, \ref{assump:compact-cube-support}, and \ref{assump:mean-endpoint-conditional-caps}, it constructs measurable representatives for both endpoint caps, proves their almost-sure equality to the setting-defined conditional \(L^\infty\) norms, preserves the separate primitive expectation bounds, and obtains simultaneous domination of every Borel pivot set on one full-measure set per kernel. It proves Borelness of all relevant root events through compact exhaustion, identifies the exact inner and outer sections, and supplies their legal matching-kernel disintegrations.

The proof does not strengthen mean caps into an almost-sure uniform cap, require a joint coefficient density, assume independence, narrow the permitted interval endpoint conventions, or change the quantifier order over \(d,R,\mu\), and chart intervals. Singular conditioning marginals and conditioning-null fibers are allowed. The \(d=1\) case correctly has a single pivot, conditioning point, unconditional kernel, and cap under both labels. The exact target claim is established.

## Explicit Rate Audit

This step is rate-bearing only as an exact interface for the later root-hitting rate. It exposes \(d,R,\bar\kappa_0,\bar\kappa_\infty\) and preserves the two separate inequalities
\[
\mathbb E\widehat K_0(Y_0)\leq\bar\kappa_0,
\qquad
\mathbb E\widehat K_\infty(Y_\infty)\leq\bar\kappa_\infty
\]
with no hidden constant or extra dependence on \(\mu\), conditioning values, kernel or density versions, chart intervals, or \(\Theta\). The fixed quantities are \(\eta\) and \(\Theta\). The probability mode is almost-sure fiber identity followed by an exact expectation bound; there is no confidence conversion. The horizon mode is static, and the norm mode is conditional \(L^\infty(\mathbb R,\lambda)\) together with one-dimensional Lebesgue measure. There are no auxiliary tolerances, absorptions, thresholds, or public-rate simplifications in this step. At \(d=1\), the interface reduces exactly to the sole unconditional density cap without loss. The explicit-rate contract is satisfied.

## Notation Surface Audit

The pivot-conditioning pairs, their marginals and kernels, the cap representatives, reconstruction maps, event lifts, and sections are classified as appendix-local. The product measures, jointly measurable densities, rational interval family, full-measure sets, compact-exhaustion objects, and pi-lambda class are classified as proof-local. Their definitions are directly tied to setting objects, and \(q_i\) is correctly identified as a density relative to \(\nu_i\otimes\lambda\), not an ambient Lebesgue density of \(\mu\). No helper constant, radius, threshold, margin, or admissibility condition is introduced. The only downstream export is the minimal appendix-level cap and event-fiber interface; no proof-local dictionary is promoted to the public theorem surface.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-003-kernel-caps} proves measurable, version-independent caps, exact primitive mean bounds, simultaneous Borel-set domination, conditional support, null-fiber safety, and the degree-one identification. Lemma~\ref{lem:step-003-borel-sections} proves Borel root events and exact chart sections for all endpoint conventions. Proposition~\ref{prop:step-003-disintegration} combines precisely those conclusions to obtain the matching inner and outer disintegrations and fiberwise cap interfaces. The assembly uses theorem-style names and stable labels, has no dependency input, and does not invoke global diagnostics as mathematical authority. Together the three accepted local units imply the exact step_003 claim and provide the interface required by step_004.

## Review Rationale

All three local units are self-contained under the primitive setting assumptions, their standard facts are instantiated in current notation, and their conclusions assemble without a missing lemma, hidden assumption, dependency, or target change. The requested stress cases, including singular conditioning marginals, null fibers, arbitrary endpoint conventions, exact chart sections, distinct inner and outer kernels, and the coincident degree-one kernel, are handled explicitly. The proof is therefore accepted, with no retry target.
