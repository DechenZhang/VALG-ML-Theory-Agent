# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 2
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_003/proof.md
- Reviewed proof SHA-256: b8cb5b9bb8c0184323bb733055e58cd0a77312e2d331210e8bc3cc5433142f81

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_003

## Blocking Issues

1. **Location:** unit_001, the definition of \(\mathscr J_{\mathbb Q}\) and equation (4), proof lines 348 and 352. **Defect:** the displayed family is written as `\mathscr J_{\mathbb Q}:={(a,b):\cdots\}`, where the opening set brace is an unescaped TeX grouping brace while the closing brace is escaped, and the cap is written with bare `sup_{J\in\mathscr J_{\mathbb Q}}` rather than the operator `\sup_{J\in\mathscr J_{\mathbb Q}}`. Thus the central proof-local definition is malformed as LaTeX and does not render the intended set and supremum notation. **Downstream effect:** although the surrounding argument unambiguously intends the correct rational-interval supremum and is mathematically valid under that intended definition, unit_001 and the target-step assembly are not paper-ready as submitted. **Smallest repair direction:** change the two expressions to \(\mathscr J_{\mathbb Q}:=\{(a,b):a,b\in\mathbb Q,\ a<b\}\) and \(\widehat K_i(y):=\sup_{J\in\mathscr J_{\mathbb Q}}Q^i_y(J)/|J|\), without changing any claim, assumption, dependency, citation, or proof argument.

## Per-Lemma Audit

### unit_001: Measurable endpoint-kernel caps

- Statement fidelity: The statement matches the step_003 cap target exactly. It separately treats the inner and outer regular conditional kernels, requires only Assumptions~\ref{assump:indexed-regime}, \ref{assump:compact-cube-support}, and \ref{assump:mean-endpoint-conditional-caps}, exports a measurable version-independent cap, gives simultaneous domination for every Borel pivot set on one full-measure set, preserves the two exact primitive mean bounds, and identifies the common degree-one interface. It adds no dependency, joint-density assumption, almost-sure uniform cap, or hidden conditioning restriction.
- Proof validity: The measure-kernel product \(\gamma_i=\nu_i\otimes Q^i\) is constructed on \(S_i\times\mathbb R\), has mass one, and is identified with \(\mathcal L_\mu(Y_i,X_i)\) by agreement on the rectangle pi-system and finite-measure uniqueness. The dominating product \(\beta_i=\nu_i\otimes\lambda\) is correctly shown sigma-finite using \(S_i\times[-n,n]\), including when \(S_i=\mathbb R^0\). Tonelli's null-section conclusion and the primitive a.s. conditional absolute continuity imply \(\gamma_i\ll\beta_i\), so all Radon--Nikodym hypotheses are discharged before the jointly measurable \(q_i\) is introduced.
- Cited-result and assumption audit: The kernel-product, product-measure/Tonelli, Radon--Nikodym, finite-measure uniqueness, monotone-convergence, and Lebesgue-differentiation statements are restated in current notation with sources and the needed conclusions. The explicit generator
  \[
  \mathscr P_{\mathbb Q}
  =\{\varnothing,\mathbb R\}\cup\{(a,b]:a,b\in\mathbb Q,\ a<b\}
  \]
  is a generating pi-system containing the whole pivot space. Equality for \(B=\mathbb R\) first proves that both fiber measures have mass one; finite-measure uniqueness then identifies \(q_i(y,\cdot)\,d\lambda\) with \(Q^i_y\) for every Borel pivot set on one common full-measure set. Cube support is separately converted into conditional pivot support and conditioning-state support. No research-paper theorem is used as proof authority.
- Rigor checklist: The intended rational-interval cap formula is mathematically correct. On each density fiber its upper bound by \(\|q\|_\infty\) is immediate. For the reverse bound, every finite \(a<\|q\|_\infty\) yields a positive-measure superlevel set and a Lebesgue point with a bounded interval of average greater than \(a\). The finite measure \(\rho(E)=\int_E|q|\,d\lambda\) and
  \[
  \rho(E)\leq N\lambda(E)+\int_{\{|q|>N\}}|q|\,d\lambda
  \]
  correctly prove absolute continuity of the integral. Monotone convergence applied to \(|q|\mathbf 1_{\{|q|\leq N\}}\) makes the tail vanish, so rational-endpoint approximations preserve the strict average inequality. The proof handles finite and infinite essential suprema, then uses the finite primitive expectations to obtain finite caps a.s. Density-version and kernel-version invariance use Radon--Nikodym uniqueness and countability, respectively. The only failed rigor item is the malformed notation in the defining display identified above.
- Local adversarial test: A singular conditioning marginal \(\nu_i\) causes no problem because the dominating measure is \(\nu_i\otimes\lambda\), not ambient Lebesgue measure. Null conditioning fibers are never consumed. Potentially unbounded fiber caps are allowed before the finite-expectation conclusion. The simultaneous Borel-set domination has no set-dependent exceptional fiber. At \(d=1\), the one-point conditioning space makes the two kernels and caps literally identical, and both primitive mean inequalities remain available.
- Contribution to target step: Subject only to correcting the displayed definition, this lemma proves the exact measurable-cap, a.s.-identity, version-independence, support, and Borel-set domination interface required by step_003 and consumed by unit_003.
- Verdict: REVISE_STEP
- Repair direction: Correct only the opening set delimiter and the \(\sup\) operator in the two displayed lines. The measure-theoretic proof and exported conclusion require no change.

### unit_002: Borel root events and exact chart sections

- Statement fidelity: The lemma proves the required Borelness for every bounded source interval with arbitrary open, closed, or half-open endpoint convention, including empty and singleton intervals, and identifies the exact inner and two outer pivot sections. It uses only Assumptions~\ref{assump:compact-parameter-domain}, \ref{assump:indexed-regime}, and \ref{assump:compact-cube-support}.
- Proof validity: Compactness of \(\Theta\) makes \(J\) bounded. The displayed endpoint-sensitive \(K_n\) form an increasing compact exhaustion of each of the four possible endpoint conventions. Each zero set \(Z_n\) is compact in \([-R,R]^d\times K_n\); its coefficient projection is compact, and the countable union of those projections is exactly \(H_{d,J}\). Thus the proof never relies on projection preserving Borelness for arbitrary Borel sets. Continuity of the reconstruction maps makes \(E_J^i\) Borel, and the section class argument correctly gives Borel sections.
- Cited-result and assumption audit: The compactness, continuous-image, and connected-image facts are restated with their current Euclidean objects and discharged. The exact inner identity solves for \(\alpha_0\). The outer identity divides only by nonzero \(\theta^{d-1}\) on each outer chart and solves for \(\alpha_{d-1}\). Intersecting with \([-R,R]\) and declaring sections empty for conditioning values outside their support cube gives the exact section formulas.
- Rigor checklist: The exhaustion covers all endpoint conventions without adding omitted endpoints. Empty and singleton cases are explicit. The points \(\pm1\) are used only by the inner chart; each outer chart stays on a connected nonzero component. Negative outer coordinates cause no direction or parity issue because an equality, not an inequality, is divided by \(\theta^{d-1}\). Tangencies and multiple roots are harmless because only existential zero-set identities are used.
- Local adversarial test: At \(d=1\), both sums are empty, both reconstruction maps are \((x,\varnothing)\mapsto(x)\), and both images equal \(-J\). For conditioning values outside the cube the sections are genuinely empty. No hidden compactness of an open interval is asserted; compactness is applied only after the explicit exhaustion.
- Contribution to target step: The lemma supplies all Borel chart events and their exact measurable pivot sections for the matching-kernel disintegration.
- Verdict: PASS
- Repair direction: None.

### unit_003: Matching-kernel Borel disintegration interface

- Statement fidelity: The proposition exports exactly the legal inner and outer disintegrations and the matching cap-times-image-measure inequalities. It keeps the two conditioning kernels separate for \(d\geq2\), uses their common unconditional form only at \(d=1\), and does not prematurely claim the chart probability bounds assigned to step_004.
- Proof validity: In the first pi--lambda argument, the rectangle pi-system on \(W=\mathbb R\times S\) explicitly contains \(W\), generates the full product Borel sigma-algebra, and is contained in the lambda-system of sets with measurable section probabilities. Complement and disjoint-union closure are correct. In the second argument, the disintegration class also explicitly contains \(W\); rectangle membership follows from regular conditionality, complement closure uses equal whole-space mass one, and disjoint-union closure is justified by kernel countable additivity and the displayed monotone-convergence passage. Equation (13) therefore holds for every Borel product event.
- Cited-result and assumption audit: The Dynkin pi--lambda and monotone-convergence results are stated before use, with whole-space membership and nonnegativity checked. Lemma~\ref{lem:step-003-borel-sections} provides the exact Borel events and sections, while Lemma~\ref{lem:step-003-kernel-caps} provides conditional support and simultaneous Borel-set domination. Continuous interval images are Borel intervals, so the cap applies directly to the exact image rather than an approximation.
- Rigor checklist: The product order \((x,y)\) agrees with the reconstruction maps and section notation. Conditional support justifies removing the intersection with \([-R,R]\) at the probability level. The inner and outer equations use only their matching kernels. Empty and singleton images have conditional probability zero by absolute continuity. No interchange of an infinite sum and integral is left implicit.
- Local adversarial test: The one-point space \(S=\mathbb R^0\) satisfies both pi--lambda arguments, and at \(d=1\) all four displayed interfaces reduce to the same unconditional coefficient law and cap. For \(d\geq2\), no common refinement or illicit comparison of the distinct conditioning sigma-fields is used.
- Contribution to target step: Conditional on the named local lemmas, the proposition gives the exact Borel event-fiber and matching-kernel interface consumed downstream.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No missing independent mathematical unit was found. The kernel-product/Radon--Nikodym construction, fiber identification, cap identity, finite-measure truncation argument, event Borelness, exact section identities, and parameterized disintegration are allocated to the three listed units. The auxiliary facts inside those proofs are either explicitly restated standard results or short derivations whose hypotheses and conclusions are displayed. In particular, the two uses of monotone convergence, both pi--lambda arguments, equality of the finite fiber measures on the explicit generator, and the compact-before-projection construction are visible rather than hidden in "standard" prose. The malformed definition in unit_001 is a notation-surface defect, not an unlisted mathematical claim.

## Target Claim Audit

The proof is mathematically faithful to the accepted step_003 row. It uses no dependency step and only the four named primitive assumptions. It establishes measurable kernel-version-independent representatives, a.s. equality with the setting's conditional \(L^\infty\) caps, exact preservation of their two mean bounds, simultaneous domination for every Borel pivot set, Borelness and exact sections of all chart events under arbitrary endpoint conventions, and legal matching-kernel disintegration. Quantifiers, null-fiber handling, support, arbitrary endpoints, and the \(d=1\) specialization all match the target. No joint density, independence, a.s. uniform cap, stronger interval assumption, or changed output interface is introduced. Acceptance is withheld only because the cap's central defining display is not valid LaTeX as submitted.

## Explicit Rate Audit

The rate interface otherwise passes. The step exposes the two cap parameters separately and preserves
\[
\mathbb E\widehat K_0(Y_0)\leq\bar\kappa_0,\qquad
\mathbb E\widehat K_\infty(Y_\infty)\leq\bar\kappa_\infty
\]
without a new factor. There are no hidden constants; none may depend on \(d,R,\mu,I,\Theta\), a conditioning value, or a kernel/density version. The mode is an a.s. conditional identity followed by an exact deterministic expectation bound, static and interval-uniform, in the conditional \(L^\infty(\mathbb R,\lambda)\) norm and one-dimensional Lebesgue measure. There is no horizon, confidence conversion, auxiliary tolerance, term absorption, or public rate simplification. The exact degree-one reduction is preserved.

## Notation Surface Audit

The proof otherwise classifies its surface correctly: the conditioning pairs, marginals, kernels, measurable caps, and coordinate reconstructions are appendix-local; the product measures, jointly measurable densities, generators, truncation objects, and pi--lambda classes are proof-local; no helper object is exported to the public theorem. Symbols are derived from the setting and are consistently scoped, with no ambient-density implication for \(\mu\). The sole blocking notation defect is the malformed definition at lines 348 and 352: the rational-interval set lacks a printable opening brace and the supremum lacks the \(\sup\) operator. Correcting those two tokens restores the intended minimal interface.

## Target-Step Assembly Audit

The assembly uses only theorem-style references to Lemmas~\ref{lem:step-003-kernel-caps}, \ref{lem:step-003-borel-sections}, and Proposition~\ref{prop:step-003-disintegration}. Equations (1)--(3), (6)--(7), and (9)--(12) jointly imply every component of the exact target, and the assembly explicitly records separate conditioning for \(d\geq2\), common conditioning for \(d=1\), no dependency artifact, and no use of a global diagnostic as proof evidence. The mathematical assembly is complete, but its reference to the rational-interval cap construction inherits unit_001's malformed defining display. No new lemma or sketch interface is needed.

## Review Rationale

\(\mathrm{REVISE\_STEP}\) is the smallest controlled status because the accepted sketch row, assumptions, dependency list, intended tools, citations, and output target all remain valid, and units unit_002 and unit_003 contain no independent defect. The sole blocker is local to the submitted step proof and can be repaired by correcting two LaTeX tokens in unit_001. Therefore the smallest producer retry target is exactly \(/proof-step\ step_003\); the repaired proof still requires a fresh accepted \(/proof-step-review\ step_003\) before downstream use.
