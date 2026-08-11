# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_005/proof.md, SHA-256 d00fe96f2e35c4fffc4b48aa926dc259c79f94597d2ea523fd4f0552e2646d0f
- Binding setting artifact: perspective_1/idea_3/setting.md, SHA-256 5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0
- Binding sketch artifact: perspective_1/idea_3/proof_sketch.md, SHA-256 6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d
- Binding sketch-review artifact: perspective_1/idea_3/proof_sketch_review.md, SHA-256 9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390, with status ACCEPTED for sketch attempt 1.
- Accepted dependency proof artifact: perspective_1/idea_3/proof_steps/step_002/proof.md, SHA-256 6a5a9661acf92353ad5ddb01a502d596bb890cd3c19906fd8b951c3d3fae142e.
- Accepted dependency review artifact: perspective_1/idea_3/proof_steps/step_002/review.md, SHA-256 d2e4430b129d0751ec576d5978c6d25c96c1ea69942f8b79481abe43ee927c68, with status ACCEPTED for sketch attempt 1 and unit attempt 2.
- Accepted dependency proof artifact: perspective_1/idea_3/proof_steps/step_004/proof.md, SHA-256 fa018c266c2e8f1b689da53f8002c8cddbea40504231fdabca1f6af0939e5a84.
- Accepted dependency review artifact: perspective_1/idea_3/proof_steps/step_004/review.md, SHA-256 b3b558ed2b5bb7235326026cb9b0f2b5fe99d55308ecad0b6271593743cef17d, with status ACCEPTED for sketch attempt 1 and unit attempt 3.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma states the exact sample/output measurability interface required before any bad-event expectation or conditioning is used. It covers ordered routed prefixes, factor risks, every \(\mathsf B_i\), and \(W_{\rm bad}\) for fixed \(n,c,D\), and it records the needed bound \(0\le W_{\rm bad}\le1\).
- Proof validity: The position events in (3) form a finite measurable pasting for every routed coordinate, including padding, so each \(\bar T_i\) is measurable into a countable discrete space. The accepted factor kernels then compose into the finite product kernel (6). On measurable rectangles its transition probability is a finite product of measurable functions; the stated Dynkin-system argument contains the generating rectangle pi-system and therefore proves legality on the full product sigma-field. The resulting sample-kernel law (7) has the exact factor marginal (8). For \(\rho_i>0\), the factor risk is a nondecreasing limit of measurable finite coordinate sums on the finite-or-countable quotient, so the strict risk event is measurable. Finite summation and \(\sum_i\rho_i=1\) prove measurability, integrability, and (1).
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-002-kernel} has the matching current proof and accepted-review hashes and supplies a total Markov kernel on every factor input. Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation} supply the finite whole-domain partition, measurable blocks and quotient maps, and countable quotient structure. No routed-input regularity, risk-event measurability, joint output law, or generated good event is assumed.
- Rigor checklist: The argument covers \(q_i>n\), padding, finite and countably infinite quotients, arbitrary raw support, all measurable product-output events, and zero-mass factors. Countable monotone limits occur only in the nonnegative risk series; all factor aggregation is finite. The product-kernel construction uses the algorithm's prescribed separate random seeds, while later utility calculations consume only its marginals.
- Local adversarial test: On a non-countably-generated raw space, no raw regular conditional law is needed for this unit: routing is a measurable finite pasting through \(\kappa_i\), and output randomness is introduced by an already-given kernel. A nonrectangle output event remains legal because the pi-lambda argument explicitly extends rectangle measurability to the entire finite product sigma-field.
- Contribution to target step: Establishes the measurable joint experiment and every random variable or event consumed by the remaining four units.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: The lemma supplies exactly the conditional unpadded premise needed by accepted factor utility, only for \(\rho_i>0\) and positive-probability block-position atoms with at least \(q_i\) occurrences. It explicitly withholds utility on shortage branches and avoids defining \(D_i\) or \(\bar D_i\) at zero mass.
- Proof validity: For a positive-mass atom \(\{G=a\}\), equation (14) follows directly from the iid product law and identifies the full conditional coordinate law by equality on measurable rectangles. The positions of the first \(q_i\) occurrences are deterministic once \(a\) is fixed, so quotient pushforward and deterministic realizable labels give the exact law \(\nu_i^{q_i}\) in (16). Combining that law with the explicitly constructed factor-kernel marginal yields the integral in (17), to which accepted Proposition~\ref{prop:step-002-factor-utility} applies verbatim. This proves the conditional failure bound with both prefix sampling and factor randomness included.
- Cited-result and assumption audit: The accepted utility proposition applies to every quotient target and quotient distribution on exactly \(q_i\) iid realizable records, with failure probability at most \(1/4096\), and asserts no padding utility. The current proof independently verifies precisely that premise on each atom. The only conditioning is division by the positive probability of an atom in a finite partition; no existence theorem for regular conditional probabilities on the raw sample space is used.
- Rigor checklist: Zero-probability position vectors are never conditioned on. Every coordinate appearing in a positive atom has positive block mass, shortage atoms are separated before utility is invoked, and the case \(q_i>n\) has no no-shortage atom. Other factor samples and outputs remain unrestricted, and no simultaneous-good event is introduced.
- Local adversarial test: With arbitrary-support \(D_i\), equation (14) remains an identity of measures on the original measurable blocks, and only afterward is it pushed through the measurable quotient map. If \(\rho_i=0\), every position atom containing \(i\) has probability zero and the proof assigns zero risk weight without manufacturing a conditional distribution.
- Contribution to target step: Discharges the exact iid first-prefix hypothesis needed for each marginal factor-failure estimate.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: The proposition proves the binding expectation bound with the exact constants and joint expectation mode, under the two accepted dependency interfaces and the preceding measurable-prefix results. It explicitly rules out factor-output independence and an all-factor union bound.
- Proof validity: For each positive-mass factor, shortage and the no-shortage failure event \(F_i\) are disjoint. Summing the unit_002 conditional estimate over the finitely many positive-probability position atoms gives the sharper marginal inequality \(\Pr(F_i)\le(1/4096)\Pr(J_i\ge q_i)\). Finite linearity then yields \(\mathbb EW_{\rm bad}\le\mathbb EW_{\rm short}+1/4096\), with every zero-mass term exactly zero. Substitution of accepted Proposition~\ref{prop:step-004-weighted-shortage} gives (18).
- Cited-result and assumption audit: The current step_004 proof and matching accepted review establish \(\mathbb EW_{\rm short}\le128Q_{\oplus}/n+e^{-16}\) for every arbitrary mass vector. The step_002 utility conclusion is used only through the locally discharged unpadded iid premise. All bad events are generated measurable objects proved in unit_001, not theorem-facing assumptions.
- Rigor checklist: The expectation over the sample-only shortage variable agrees with its expectation under the joint sample/output law. Every sum over factors and position atoms is finite. The proof never estimates \(\Pr(\bigcup_iF_i)\), factors a joint probability, or assumes independence among multinomial counts or output failures.
- Local adversarial test: Arbitrarily many tiny-mass factors contribute only through their exact weights, while one dominant factor still receives only its marginal failure charge. Correlated factor failures would leave equations (20)--(23) unchanged because only indicator expectations and finite linearity are used.
- Contribution to target step: Establishes the exact weighted bad-mass expectation certificate required by the sketch row.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: The proposition proves the exact pointwise decoded-risk inequality \(R_D\le1/64+W_{\rm bad}\), not an expectation-only or simultaneous-good-event surrogate, and states measurability of the resulting risk random variable.
- Proof validity: By definition of \(\mathsf B_i^c\), every positive-mass good factor has risk at most \(1/64\); a bad factor has binary risk at most one. Equation (25) therefore holds pointwise. Equation (26) is the exact disjoint-block and quotient-pushforward identity for arbitrary raw support. Weighting (25), summing the finite positive-mass factors, and inserting zero-mass factors with zero weight gives (24). The countable factor-risk maps from unit_001 also make the global risk measurable.
- Cited-result and assumption audit: The identity is derived directly in current notation from Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation}; no finite-support approximation, balance condition, or unproved quotient residual is imported. Lemma~\ref{lem:step-005-measurable-bad-mass} supplies the legal output and event objects.
- Rigor checklist: Shortage factors are automatically bad and hence are covered by the risk-one branch. Zero-mass factors require neither a conditional distribution nor a risk map in the sum. Equality at local risk \(1/64\) lies on the good side because the bad event uses a strict inequality.
- Local adversarial test: Even if every bad factor outputs an everywhere-wrong hypothesis and every factor event is maximally correlated, the exact weighted risk is still bounded by the single mass \(W_{\rm bad}\) plus the \(1/64\) good contribution. No all-factor event is needed.
- Contribution to target step: Converts the weighted defect certificate into the exact global distributional risk used by the PAC event.
- Verdict: PASS
- Repair direction: None

### unit_005: proposition

- Statement fidelity: The proposition supplies a concrete universal \(C_{\rm up}=65536\), the exact closed-success \((1/16,1/16)\) PAC statement for every target and arbitrary distribution, and the binding stronger \(k=1\) factor baseline.
- Proof validity: From \(n\ge\lceil65536Q_{\oplus}\rceil\), equation (30) is valid. The explicit comparison \(e^{-16}<2^{-16}=1/65536\) gives \(\mathbb EW_{\rm bad}<145/65536<3/1024\). The pointwise Markov indicator in (33) then yields \(\Pr(W_{\rm bad}>3/64)<1/16\). Pointwise risk domination gives the exact strict-event inclusion (35), because \(1/16-1/64=3/64\). Thus equality at \(W_{\rm bad}=3/64\) remains a success boundary and the final closed good event has probability at least \(15/16\).
- Cited-result and assumption audit: The only imported inputs are the matching accepted factor-utility and weighted-shortage propositions plus the preceding local expectation and risk propositions. The ceiling, exponential comparison, Markov inequality, and event conversion are all displayed rather than hidden in a large-constant assertion.
- Rigor checklist: \(Q_{\oplus}\ge1\), so the threshold is nondegenerate; all constants and inequality directions check exactly. The result is fixed-sample and high probability over the full joint experiment. At \(k=1\), \(X_1=X\), \(J_1=n\) pointwise, and the threshold implies \(n\ge q_1\), so the routed prefix is unpadded iid data and accepted factor utility directly gives risk at most \(1/64\) with probability at least \(4095/4096\).
- Local adversarial test: The generic Markov route is not used to weaken the one-factor specialization. At the global failure boundary, risk \(>1/16\) forces the strict event \(W_{\rm bad}>3/64\); replacing either strict sign by a non-strict one would lose the stated arithmetic, but the submitted proof uses the correct boundaries throughout.
- Contribution to target step: Completes the quantitative high-probability conversion and preserves the exact stronger one-factor recovery needed downstream.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. Joint sample/output legality, finite-product kernel measurability, the product-kernel marginal, countable quotient-risk measurability, and integrability are contained in Lemma~\ref{lem:step-005-measurable-bad-mass}. The finite-atom conditional product calculation, exact first-prefix law, quotient pushforward, and factor-utility discharge are contained in Lemma~\ref{lem:step-005-prefix-iid}. Weighted marginal failure accounting is isolated in Proposition~\ref{prop:step-005-weighted-bad-mass}; exact decoded-risk transfer is isolated in Proposition~\ref{prop:step-005-risk-domination}; and every numerical absorption, Markov conversion, strict boundary, and baseline specialization is isolated in Proposition~\ref{prop:step-005-pac-closure}. The target assembly cites these theorem-style results and both accepted dependencies rather than treating local unit IDs, subsection names, or diagnostic artifacts as proof authority.

## Target Claim Audit

The reviewed hash and all binding/dependency hashes match the current artifacts and accepted attempts. The proof establishes every clause of the exact step_005 sketch row: measurable \(\mathsf B_i\) and \(W_{\rm bad}\), the expectation bound
\[
\mathbb EW_{\rm bad}\le\frac{128Q_{\oplus}}n+e^{-16}+\frac1{4096},
\]
the pointwise exact-risk comparison \(R_D\le1/64+W_{\rm bad}\), and a universal threshold giving the closed \((1/16,1/16)\) PAC guarantee for every target and every allowed arbitrary-support distribution. The quantifiers, assumptions, fixed-sample horizon, joint probability mode, exact risk metric, lack of balance or finite-support conditions, and absence of output-independence or factor-union requirements all match the binding interface. No claim, dependency, mechanism, or output target needs alteration.

## Explicit Rate Audit

This is a rate-bearing step, and the submitted audit satisfies the binding rate objective. It exposes \(n\), \(k\), the masses, counts and quotas, \(Q_{\oplus}\), both generated weighted masses, and all fixed local/global accuracy and confidence levels. The dependence on \((d_i,s_i,\varepsilon,\delta)\) remains exactly inherited through the setting-defined \(q_i\) and \(Q_{\oplus}\); the separate public unpacking of that quota is assigned to step_006 and is not silently specialized here. The exported constant is explicitly \(C_{\rm up}=65536\), and the proof states that no hidden constant may depend on the class, factor count, dimensions, quotient or class cardinalities, target, distribution or support, masses, sample size, privacy parameters, or confidence parameters. It records fixed quantities, expectation and high-probability modes, fixed-sample horizon, exact distributional \(0\)-\(1\) risk, admissibility conditions, and the absence of auxiliary tolerances. Equations (30)--(35) display every term comparison and probability conversion. The stronger \(k=1\) reduction is proved directly, so no baseline loss is hidden in the generic weighted rate.

## Notation Surface Audit

The public-facing export is minimal: the setting-defined \(\mathsf B_i\) and \(W_{\rm bad}\), their measurability and expectation bound, the exact risk comparison, and \(C_{\rm up}\) with its PAC conclusion. The factor-risk map, output coordinates, factor kernels, and finite product kernel are properly classified as appendix-local objects needed to expose measurability and learner randomness. Position-selection events, the finite block-index vector and its atoms, the labeled quotient law, and \(F_i\) are properly classified as proof-local. Each helper is defined from setting notation or an accepted dependency before use, and no one-off alias hides a finiteness, measurability, conditioning, constant, or rate obligation.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-002-kernel} supplies the total factor kernels, accepted Proposition~\ref{prop:step-002-factor-utility} supplies the exact unpadded iid utility interface, and accepted Proposition~\ref{prop:step-004-weighted-shortage} supplies the weighted shortage certificate. Lemmas~\ref{lem:step-005-measurable-bad-mass} and \ref{lem:step-005-prefix-iid} make all objects legal and discharge the conditional iid premise. Propositions~\ref{prop:step-005-weighted-bad-mass} and \ref{prop:step-005-risk-domination} give the expectation and exact-risk interfaces, and Proposition~\ref{prop:step-005-pac-closure} performs the sole global probability conversion and baseline specialization. These accepted dependencies and five proved local results jointly imply the exact target with no missing bridge or unreviewed residual.

## Review Rationale

ACCEPTED is warranted because the current proof closes each theorem-critical obligation under the unchanged setting, sketch row, and accepted dependencies. The sample/output law and risk events are measurably legal, the no-shortage prefix has the exact iid factor law under only finite-atom conditioning, zero-mass and padded branches are separated before utility is used, weighted expectation accounting needs neither output independence nor an all-factor union bound, and exact quotient/raw risk is transferred pointwise. The displayed constants and strict boundaries make Markov's conversion valid, all explicit-rate fields are preserved, and the stronger one-factor factor-utility conclusion is recovered directly. No retry is required, so None is the smallest retry target.
