# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 3
- Review attempt: 3
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_004/proof.md, SHA-256 fa018c266c2e8f1b689da53f8002c8cddbea40504231fdabca1f6af0939e5a84
- Binding setting artifact: perspective_1/idea_3/setting.md, SHA-256 5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0
- Binding sketch artifact: perspective_1/idea_3/proof_sketch.md, SHA-256 6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d
- Binding sketch-review artifact: perspective_1/idea_3/proof_sketch_review.md, SHA-256 9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390, with status ACCEPTED for sketch attempt 1.
- Accepted dependency proof artifact: perspective_1/idea_3/proof_steps/step_001/proof.md, SHA-256 c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a.
- Accepted dependency review artifact: perspective_1/idea_3/proof_steps/step_001/review.md, SHA-256 baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82, with status ACCEPTED for sketch attempt 1 and unit attempt 1.
- Triggering repair-context review: perspective_1/idea_3/proof_history/sketch_001/step_step_004_attempt_002_revise_step/proof_steps/step_004/review.md, SHA-256 22c746c87950eae3b4361a7d33c1cddfa77464c9ddfdd520d272c3cd253134c8; consumed only as repair context, not as current proof evidence.
- Authorized repair delta: independently verified to consist only of the unit-attempt identity change \(2\to3\) and equation (15)'s strict \(<\) changing to \(\le\).

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma states the exact marginal binomial laws, zero-mass behavior, integrability, and finite weighted expectation identity needed by the binding target, uniformly over every target, probability measure, and fixed iid sample.
- Proof validity: Accepted Lemma~\ref{lem:step-001-quotient-invariance} represents each target by its quotient tuple. Accepted Lemma~\ref{lem:step-001-output-measurability} makes the decoded target measurable and, when instantiated by the tuple that is one exactly on factor \(i\), makes its decoded one-set \(X_i\) measurable. Thus \(D_c^n\), \(\rho_i\), the block indicators, and the counts are legal before probabilities are taken. For fixed \(i\), iid sampling makes the indicators iid Bernoulli\((\rho_i)\), so \(J_i\sim\operatorname{Bin}(n,\rho_i)\). Finite linearity then proves the expectation identity.
- Cited-result and assumption audit: The current step_001 proof and its matching accepted review have the recorded identities and hashes. The finite whole-domain partition is primitive under Assumption~\ref{assump:canonical-product}; block and target measurability are accepted derived conclusions. No stochastic event, occupancy bound, balance condition, or measurable-selector premise is imported.
- Rigor checklist: The proof covers every finite \(k\ge1\), \(n\in\mathbb N\), target, and probability measure. It uses no independence among different factor counts and no limit interchange. The bound \(0\le W_{\mathrm{short}}\le\sum_i\rho_i=1\) gives integrability.
- Local adversarial test: If \(\rho_i=0\), the weighted term is identically zero for every sample and \(J_i=0\) almost surely; no conditional distribution on \(X_i\) is formed. Arbitrary-support distributions and uncountable raw blocks remain legal because the accepted decoder conclusion uses their countable measurable evaluation quotients.
- Contribution to target step: Supplies the measurable generated objects, marginal occupancy laws, and exact weighted expectation decomposition consumed by the light/heavy split.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: The lemma proves the exact heavy-factor shortage bound required by the sketch row, including the explicit exponent \(16129q/256\) and its uniform specialization to \(e^{-16}\) from \(q\ge1\).
- Proof validity: Exponential Markov is applied in the correct direction to the decreasing transform \(e^{-uJ}\). The binomial transform, \(1+v\le e^v\), and the directly proved inequality \(e^{-u}\le1-u+u^2/2\) yield
  \[
  \Pr[J\le(1-u)\mu]\le e^{-\mu u^2/2}.
  \]
  From \(\mu\ge128q\), integer-valued \(J<q\) implies \(J\le\mu/128\). Taking \(u=127/128\) gives
  \[
  \frac{\mu u^2}{2}
  \ge\frac{16129}{256}q
  \ge\frac{16129}{256}>16,
  \]
  so every inequality direction and numerical constant is correct.
- Cited-result and assumption audit: No external theorem is consumed; the Chernoff estimate is derived in full. The generic hypotheses are discharged factorwise in Proposition~\ref{prop:step-004-weighted-shortage}, and \(q_i\ge1\) is the permitted deterministic quota fact.
- Rigor checklist: Positive mean follows from the heavy hypothesis. Equality \(\mu=128q\), nonintegral \(\mu/128\), the endpoint \(q=1\), and arbitrarily large means are covered. The conclusion is a marginal fixed-sample statement.
- Local adversarial test: At equality \(\mu=128q\), the event inclusion remains valid; enlarging \(\{J<q\}\) to \(\{J\le\mu/128\}\) only weakens the bound. No property of the other multinomial counts is used.
- Contribution to target step: Supplies the universal heavy-factor marginal tail used in the weighted aggregation.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: The proposition states exactly the arbitrary-mass expectation bound and separately preserves the pointwise \(k=1,n\ge q_1\) zero-shortage baseline.
- Proof validity: The light/heavy split is exhaustive at the equality boundary: light means \(\mu_i<128q_i\), while equality is heavy. For light factors, equation (15) now uses the universally valid relation
  \[
  \sum_{i\in\mathcal L}\rho_i
  \le\frac{128}{n}\sum_{i\in\mathcal L}q_i,
  \]
  including the empty-light case \(0\le0\). Each heavy marginal is at most \(e^{-16}\), and risk weighting gives at most \(e^{-16}\sum_{i\in\mathcal H}\rho_i\le e^{-16}\). Combining the two finite sums proves the target without a union bound.
- Cited-result and assumption audit: The proposition uses exactly Lemmas~\ref{lem:step-004-binomial-accounting} and \ref{lem:step-004-heavy-shortage}, the setting quota sum, the primitive finite whole-domain partition, and accepted block measurability. No extra assumption or generated invariant is introduced.
- Rigor checklist: Division by \(n\) is legal because \(n\in\mathbb N\). Zero-mass factors are light and contribute exactly zero. Empty light, empty heavy, all-light, all-heavy, and mixed splits all satisfy the displayed non-strict bounds. The heavy calculation is a weighted average of marginal probabilities, not an event union.
- Local adversarial test: Many tiny masses are charged only through their total risk mass; one dominant factor is handled by its marginal tail; dependence among counts is irrelevant. For \(k=1\), \(X_1=X\) gives \(J_1=n\) pointwise, so \(W_{\mathrm{short}}=0\) whenever \(n\ge q_1\), independently of the generic residual bound.
- Contribution to target step: Assembles the exact weighted shortage certificate and exact one-factor baseline from the two preceding named results.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. Lemma~\ref{lem:step-004-binomial-accounting} covers block/target/sample legality, marginal binomiality, zero-mass behavior, integrability, and finite expectation linearity. Lemma~\ref{lem:step-004-heavy-shortage} proves the complete tail interface. Proposition~\ref{prop:step-004-weighted-shortage} isolates the deterministic split, weighted aggregation, and one-factor specialization. Positivity of \(q_i\) is a binding deterministic quota consequence, not a generated condition. No union event, cross-factor independence, conditional factor law, or global diagnostic is used as proof authority.

## Target Claim Audit

The proof establishes the exact accepted step_004 claim under the declared primitive input and accepted step_001 dependency: for every fixed \(n\), target, and arbitrary probability measure, it controls the expectation of the exact risk-weighted shortage mass by \(128Q_{\oplus}/n+e^{-16}\). The quantifiers, constants, expectation mode, fixed-sample horizon, arbitrary mass imbalance, zero-mass factors, and absence of an all-factor union bound all match the binding row. The equation-(15) repair closes the only previously failing all-heavy/empty-light boundary without changing the claim, dependency, assumptions, or output interface.

## Explicit Rate Audit

The exposed quantities are \(n,k,(\rho_i,q_i,J_i)_i,Q_{\oplus}\), and \(W_{\mathrm{short}}\). There are no hidden constants: \(128\), \(16\), and \(16129/256\) are explicit universal numbers. The mode is expectation over one fixed iid sample, with no learner randomness, probability conversion, horizon upgrade, auxiliary tolerance, balance/support restriction, or class/quotient-cardinality dependence. Equations (10)--(11), corrected equation (15), and equation (16) display every domination. At \(k=1,n\ge q_1\), the exact zero-shortage baseline is retained rather than replaced by the generic upper bound.

## Notation Surface Audit

The setting-defined masses, counts, quotas, quota sum, and shortage mass are the only public-facing objects, and the proposition exports only the expectation certificate plus the one-factor baseline. The indicators \(I_{j,i}\), constant decoder tuple \(\bar b^{(i)}\), means \(\mu_i\), split sets \(\mathcal L,\mathcal H\), and Chernoff parameter are correctly classified as proof-local; the generic binomial variables are appendix-local. Every helper is defined before use, and no notation hides measurability, a constant, or an assumption.

## Target-Step Assembly Audit

The assembly cites accepted dependency Lemmas~\ref{lem:step-001-quotient-invariance} and \ref{lem:step-001-output-measurability}, followed by all three current named local results. The dependency conclusions legally establish block and target measurability before the sample law and counts are consumed. The binomial identity, heavy tail, corrected light aggregation, weighted heavy aggregation, and exact baseline jointly imply every component of the binding target. No bare unit ID, external citation, stale review, or diagnostic artifact is used as mathematical authority.

## Review Rationale

ACCEPTED is warranted because the current attempt proves the exact step claim from its allowed primitive input and matching accepted dependency. The entire proof passes independently: block and target measurability have a valid step_001 producer path; each count is marginally binomial; zero mass is exact; the direct Chernoff constants and event inclusions are correct; weighted aggregation neither union-bounds nor assumes count independence; and the \(k=1\) baseline is pointwise exact. The attempt-2 blocker was solely the false strict empty-sum assertion, and the authorized non-strict correction now covers that boundary. No retry is required, so None is the smallest retry target.
