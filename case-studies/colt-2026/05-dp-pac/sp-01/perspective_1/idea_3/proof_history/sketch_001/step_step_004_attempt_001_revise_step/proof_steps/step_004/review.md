# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_004/proof.md, SHA-256 0b8be65f5f17a795988213c8d996f2f11e8ccbd978161754ef6c1d30e06b7813
- Binding setting artifact: perspective_1/idea_3/setting.md, SHA-256 5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0
- Binding sketch artifact: perspective_1/idea_3/proof_sketch.md, SHA-256 6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d
- Binding sketch-review artifact: perspective_1/idea_3/proof_sketch_review.md, SHA-256 9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390
- Accepted dependency: step_001 proof/review SHA-256 c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a / baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004

## Blocking Issues

1. Location: Allowed Assumptions And Dependencies; the statement and proof of unit_001; the assumption-discharge row for Lemma~\ref{lem:step-004-binomial-accounting}; the statement of unit_003; and Notation And Assumption Notes. Defect: the proof repeatedly attributes measurability of the blocks \(X_i\), and hence the legality of \(\rho_i=D(X_i)\), \(I_{j,i}=\mathbf 1\{x_j\in X_i\}\), \(J_i\), and the sampled law \(D_c^n\), to Assumption~\ref{assump:canonical-product}. That assumption supplies only the finite whole-domain Cartesian partition. Block measurability is primitive in Assumption~\ref{assump:countably-coded-evaluation}, and target measurability is also obtained through the accepted step_001 quotient/decoder interface. Under Assumption~\ref{assump:canonical-product} alone, a Cartesian block can be nonmeasurable, so the local lemma as stated is not well-formed for every claimed \(D\). Downstream effect: unit_001 is not certified under its displayed assumption basis, and unit_003 therefore cannot export the shortage certificate from the currently stated local results even though its probability arithmetic is correct. Smallest repair direction: keep the accepted sketch claim and dependency list unchanged, but restate and consume the accepted dependency's Lemmas~\ref{lem:step-001-quotient-invariance} and \ref{lem:step-001-output-measurability}, or another exact accepted step_001 conclusion, to establish measurable targets and blocks before defining the indicators. For block measurability, instantiate the accepted decoder result with a quotient tuple equal to one on factor \(i\) and zero on the others; its decoded one-set is \(X_i\). Update the allowed-input classification, local statements, discharge table, derivation, and assumption notes consistently.

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The marginal binomial law, zero-mass convention, and weighted expectation identity match the corresponding part of the sketch-row target, but the displayed assumption basis is incomplete because it uses measurable block and target facts not supplied by Assumption~\ref{assump:canonical-product} alone.
- Proof validity: Once block and target measurability are legally supplied, the derivation is correct. For each fixed \(i\), iid sampling makes \(I_{1,i},\ldots,I_{n,i}\) independent Bernoulli variables with mean \(\rho_i\), so only the marginal law \(J_i\sim\operatorname{Bin}(n,\rho_i)\) is obtained or needed. Counts for different factors need not be independent. If \(\rho_i=0\), the weighted term is exactly zero for every realization and \(J_i=0\) almost surely. Since \(k<\infty\), \(\sum_i\rho_i=1\), and \(0\le W_{\rm short}\le1\), integrability and finite linearity suffice for equation (2); there is no limit interchange.
- Cited-result and assumption audit: The accepted dependency is current and accepted, but the proof restates only its log-star lemma. It omits the dependency's quotient/decoder measurability interface and instead makes the false source attribution that the blocks form a measurable partition under Assumption~\ref{assump:canonical-product}. This is a local dependency-use and assumption-provenance defect.
- Rigor checklist: The setting has \(n\in\mathbb N=\{1,2,\ldots\}\), so all later divisions by \(n\) are legal. Probability and expectation are over the fixed iid sample; learner randomness is absent. The zero-mass and finite-sum boundaries are handled exactly.
- Local adversarial test: If one retains only Assumption~\ref{assump:canonical-product}, the canonical Cartesian blocks need not belong to \(\Sigma\); then \(D(X_i)\) and \(I_{j,i}\) can be undefined. The full binding setting excludes this case, but the local statement must expose the accepted source that excludes it.
- Contribution to target step: Conditional on the missing measurable-input provenance, this unit supplies exactly the finite weighted marginal identity used by unit_003.
- Verdict: REVISE_STEP
- Repair direction: Cite and restate the accepted step_001 measurable quotient/decoder conclusions in the statement and proof, and correct every attribution of block and target measurability.

### unit_002: lemma

- Statement fidelity: The generic binomial lemma proves the exact heavy-factor interface required by the accepted row, including the displayed exponent and the universal \(e^{-16}\) specialization from \(q\ge1\).
- Proof validity: For \(u\in(0,1)\), \(j\mapsto e^{-uj}\) is decreasing, so the lower-tail event makes the exponential large and equation (5) applies Markov's inequality in the correct direction. Equations (6)-(8) correctly use the binomial transform, \(1+v\le e^v\), and \(e^{-u}\le1-u+u^2/2\). From \(q\le\mu/128\), \(J<q\) implies \(J\le\mu/128\), even when \(\mu/128\) is nonintegral: integer \(J<q\) gives \(J\le q-1<q\le\mu/128\). With \(u=127/128\),

  \[
  \frac{\mu u^2}{2}\ge
  \frac{128q}{2}\frac{127^2}{128^2}
  =\frac{16129}{256}q.
  \]

  Since \(q\ge1\), this exponent is at least \(16129/256=63+1/256>16\), so the probability is at most \(e^{-16129q/256}\le e^{-16}\). All inequality directions are correct.
- Cited-result and assumption audit: No external theorem is consumed. The exponential-moment tail is derived in full, and its generic hypotheses are discharged factorwise in unit_003.
- Rigor checklist: The heavy hypothesis forces \(\mu>0\); real-valued thresholds cause no lattice problem; constants, strictness, and probability mode are explicit.
- Local adversarial test: At the boundary \(\mu=128q\), the calculation gives the stated exponent exactly. If \(\mu/128\notin\mathbb Z\), equation (9) remains an inclusion in the required direction and does not round the threshold upward incorrectly.
- Contribution to target step: Supplies a uniform marginal shortage probability for every heavy factor, without any statement about joint counts.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: The proposition targets exactly \(\mathbb E W_{\rm short}\le128Q_\oplus/n+e^{-16}\), preserves arbitrary and zero masses, and additionally proves the required exact \(k=1\) no-shortage baseline.
- Proof validity: Apart from the inherited measurable-input provenance defect, the aggregation is correct. For light factors, \(\rho_i<128q_i/n\) and their weighted probability contribution is at most \(128Q_\oplus/n\). The strict middle inequality in (15) is valid when \(\mathcal L\ne\varnothing\); if \(\mathcal L=\varnothing\), both light sums are zero and the needed non-strict bound holds trivially, so the displayed strictness causes no target-level gap. For heavy factors, weighting the marginal bounds gives \(e^{-16}\sum_{i\in\mathcal H}\rho_i\le e^{-16}\). This is finite weighted linearity, not a bound on a union event, and neither a union bound nor cross-count independence occurs. If \(k=1\), the whole-domain partition gives \(X_1=X\), hence \(J_1=n\) pointwise and \(W_{\rm short}=0\) whenever \(n\ge q_1\).
- Cited-result and assumption audit: The proposition properly invokes the two named local results, but its assumption basis inherits unit_001's unsupported attribution of measurable sampling objects to Assumption~\ref{assump:canonical-product}. The scalar fact \(q_i\ge1\) does have valid provenance: accepted Lemma~\ref{lem:step-001-logstar} gives \(s_i\ge2\); Assumption~\ref{assump:global-privacy-range} gives \(\varepsilon,\delta>0\), \(\varepsilon\le1/10\), and \(\delta<1\); hence \(es_i/(\varepsilon\delta)>1\). With \(K_Y>0\), the quantity inside the defining ceiling for \(q_i\) is strictly positive, so its integer ceiling is at least one. This is a direct scalar consequence of binding setting data, not a generated invariant.
- Rigor checklist: Division by \(n\) is legal because \(n\in\mathbb N\). Light and heavy factors form a deterministic finite partition, zero-mass factors are light and contribute zero, and all constants are explicit. The pointwise \(k=1\) statement is stronger than the generic expectation estimate and is not weakened by it.
- Local adversarial test: All-heavy masses make \(\mathcal L\) empty but leave the desired light bound equal to \(0\le0\). Many tiny masses can make most factors light, yet their total contribution is controlled by the quota-weighted sum rather than factor count. Dependence of multinomial counts cannot affect the marginal weighted expectation.
- Contribution to target step: Once unit_001's assumption basis is repaired, this proposition and its named inputs imply the exact target and baseline with no additional lemma.
- Verdict: REVISE_STEP
- Repair direction: Consume the repaired unit_001 with its exact accepted measurability source; leave the light/heavy arithmetic unchanged, optionally replacing the strict middle sign in (15) by a universally valid non-strict sign or stating the empty-set case.

## Hidden Subclaim Scan

No independent probabilistic subclaim is missing from the three-unit map. The marginal occupancy identity, heavy binomial tail, and weighted aggregation are correctly isolated. Positivity of \(q_i\) is an atomic consequence of the setting definition, accepted \(s_i\ge2\), and the global privacy range, as audited above. The only uncovered input is not a new probabilistic lemma but the misclassified measurable-block and target provenance in unit_001 and unit_003.

The submitted file is ASCII-only and contains no C0 control bytes other than permitted whitespace, no form-feed byte, and no malformed theorem-style reference found in the reviewed surface. Each local unit has a paper-ready title and a stable lem: or prop: label.

## Target Claim Audit

The numerical and probabilistic derivation establishes the exact target for every mass vector arising in the binding full setting, with expectation over one fixed iid sample, no balance condition, and no all-factor union bound. It preserves exact pointwise zero when \(k=1\) and \(n\ge q_1\). The artifact cannot yet certify that conclusion from its displayed allowed-input interface because its first and third local statements omit the actual source of block and target measurability. This is assumption-basis drift, not a change in the target inequality, constants, quantifiers, probability mode, or scope.

## Explicit Rate Audit

The step exposes \(n,k,(\rho_i,q_i,J_i)_i,Q_\oplus\), and \(W_{\rm short}\), has no hidden constants, and records the exact universal constants \(128,e^{-16},16129/256\). The probability mode is expectation over the iid sample, the horizon is one fixed positive sample size, and the metric is exact risk-weighted shortage mass. Equations (10)-(11), (15), and (16) display every domination used. No probability conversion, term absorption, auxiliary tolerance, support condition, balance condition, or hidden dependence on \(\varepsilon,\delta\), cardinalities, or \(D\) is introduced. At \(k=1,n\ge q_1\), the baseline reduces to exact zero rather than the generic residual.

## Notation Surface Audit

The public-facing setting objects and exported proposition are minimal. The Bernoulli indicators, means, light/heavy sets, and Chernoff parameter are appropriately proof-local; the generic binomial variables are appropriately appendix-local. Every helper is explicitly defined and no notation cascade hides a constant or interchange. The only notation/provenance correction needed is to attach the measurable sampling objects to their accepted step_001 source instead of Assumption~\ref{assump:canonical-product} alone.

## Target-Step Assembly Audit

The assembly uses theorem-style references to all three named local results and correctly combines finite marginal linearity, the heavy tail, and the deterministic light/heavy split. Those results jointly imply the exact numerical target and one-factor baseline once unit_001 is valid under its stated inputs. As submitted, the assembly inherits unit_001's incomplete assumption basis, so it is not yet an accepted downstream interface. No new mathematical bridge, changed constant, changed dependency, or sketch-row target is required.

## Review Rationale

REVISE_STEP is the smallest sound status. The high-risk probability arguments all pass independently: \(n>0\), \(q_i\ge1\), marginal binomiality, exact zero-mass weighting, integrability and finite linearity, exponential-Markov direction, noninteger threshold inclusion, exponent \(16129q/256\), the \(e^{-16}\) comparison, the empty-light-set boundary, weighted heavy summation, and the pointwise one-factor baseline. The remaining defect is confined to how this proof states and consumes an already available measurable-input source. Because the accepted step_001 dependency can provide the needed quotient/decoder measurability interface without changing the sketch claim, dependency list, constants, or output target, the smallest producer retry is /proof-step step_004, followed by a fresh review.
