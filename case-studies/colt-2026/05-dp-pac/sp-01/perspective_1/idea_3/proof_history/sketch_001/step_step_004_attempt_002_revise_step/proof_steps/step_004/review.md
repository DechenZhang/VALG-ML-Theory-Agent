# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 2
- Review attempt: 2
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_004/proof.md`, SHA-256 `b6e2381955a6e837b0827f0c78946a9cbe88daada4d9e2b373f639c943c915df`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`, with status `ACCEPTED` for sketch attempt 1.
- Accepted dependency proof artifact: `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`.
- Accepted dependency review artifact: `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256 `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, with status `ACCEPTED` for sketch attempt 1 and unit attempt 1.
- Triggering repair-context review: prior `step_004/review.md`, SHA-256 `b6f8350c5ade4ed69a9883d688ff86b2706b80141bd9d9a13ce63b3a77afc02e`; consumed only as repair context, not as current proof evidence.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004

## Blocking Issues

1. Location: `unit_003`, equation (15), specifically the strict inequality
   \[
   \sum_{i\in\mathcal L}\rho_i
   <\frac{128}{n}\sum_{i\in\mathcal L}q_i.
   \]
   Defect: the allowed all-heavy boundary has \(\mathcal L=\varnothing\), in which case both sums are zero and the displayed assertion is the false statement \(0<0\). This boundary is nonvacuous, for example when \(k=1\) and \(n\ge128q_1\). The preceding factorwise strict inequality does imply the required non-strict summed bound for every \(\mathcal L\), but the submitted display does not state that universally valid relation. Downstream effect: the target inequality is mathematically available with a one-symbol correction, and all later weighted aggregation is otherwise valid, but Proposition~\ref{prop:step-004-weighted-shortage} is not proved line by line for every allowed mass/sample regime as written. Smallest repair direction: replace this middle `<` by `\le`, or explicitly separate the empty-light-set case before using the strict inequality. No claim, dependency, constant, probability mode, or sketch interface needs to change.

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma states the exact marginal occupancy law, zero-mass behavior, integrability, and finite weighted expectation identity needed by the target, uniformly over every target, probability measure, and fixed iid sample.
- Proof validity: The constant quotient tuple \(\bar b^{(i)}\), equal to one on factor \(i\) and zero on every other factor, belongs to the accepted product output space and decodes to \(\mathbf 1_{X_i}\). Accepted Lemma~\ref{lem:step-001-output-measurability} therefore makes its one-set \(X_i\) measurable. Accepted Lemma~\ref{lem:step-001-quotient-invariance} identifies each target restriction with a quotient representative, and the accepted decoder lemma then makes the decoded target \(c\) measurable. Only after these accepted conclusions are used does the proof define \(\rho_i\), \(I_{j,i}\), \(J_i\), and \(D_c^n\). For fixed \(i\), the indicators are iid Bernoulli\((\rho_i)\), hence \(J_i\sim\operatorname{Bin}(n,\rho_i)\). Finite linearity gives the displayed expectation identity; no cross-factor independence or limit interchange is used.
- Cited-result and assumption audit: The current `step_001` proof and its matching accepted review have the recorded identities and hashes. The repaired proof correctly classifies the finite whole-domain partition as primitive under Assumption~\ref{assump:canonical-product}, while block and target measurability are derived conclusions from the accepted dependency. No measurable-block legality remains attributed to Assumption~\ref{assump:canonical-product} alone.
- Rigor checklist: Quantifiers cover every finite \(k\ge1\), \(n\in\mathbb N\), target, and probability measure. The sample law and events are measurable before probabilities are taken. Since \(0\le W_{\rm short}\le\sum_i\rho_i=1\), integrability is immediate. The probability mode is expectation over the fixed iid sample only.
- Local adversarial test: If \(\rho_i=0\), its weighted shortage term is identically zero on every sample, while \(J_i=0\) almost surely; no conditional distribution on \(X_i\) is defined. Uncountable raw blocks cause no issue because the accepted decoder conclusion supplies their measurability through countable quotient evaluation.
- Contribution to target step: Supplies the legal generated objects and the exact finite marginal identity consumed by the weighted split.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: The lemma proves the exact heavy-factor shortage bound required by the sketch row, including the explicit exponent \(16129q/256\) and its specialization to \(e^{-16}\) from \(q\ge1\).
- Proof validity: Exponential Markov is applied in the correct direction because \(j\mapsto e^{-uj}\) is decreasing. The binomial transform and \(1+v\le e^v\), followed by the directly proved inequality \(e^{-u}\le1-u+u^2/2\), give \(\Pr[J\le(1-u)\mu]\le e^{-\mu u^2/2}\). From \(q\le\mu/128\), integer-valued \(J<q\) implies \(J\le\mu/128\), including nonintegral \(\mu/128\). Taking \(u=127/128\) gives
  \[
  \frac{\mu u^2}{2}\ge\frac{16129}{256}q\ge\frac{16129}{256}>16,
  \]
  with all inequality directions correct.
- Cited-result and assumption audit: No external result is invoked; the lower-tail inequality is derived completely. The generic binomial hypotheses are discharged factorwise in `unit_003`, and the binding row permits the deterministic scalar fact \(q_i\ge1\).
- Rigor checklist: The heavy hypothesis forces positive mean, the lattice boundary is handled correctly, constants are explicit, and the conclusion is a marginal probability statement at one fixed sample size.
- Local adversarial test: Equality \(\mu=128q\), nonintegral thresholds, \(q=1\), and arbitrarily large means all satisfy the displayed derivation. No assumption on other counts is introduced.
- Contribution to target step: Provides the uniform heavy-factor marginal bound used in the weighted average.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: The proposition states the exact target expectation bound for arbitrary induced mass vectors, with no balance or positive-mass restriction, and also states the exact \(k=1\), \(n\ge q_1\) zero-shortage baseline.
- Proof validity: The deterministic light/heavy split is appropriate. Each light term is bounded by its risk mass, and the required non-strict aggregate bound \(\sum_{i\in\mathcal L}\rho_i\le(128/n)\sum_{i\in\mathcal L}q_i\) follows factorwise. Each heavy marginal is at most \(e^{-16}\), so weighting and using \(\sum_i\rho_i=1\) gives a total heavy contribution at most \(e^{-16}\). The final finite sum uses no union bound and no cross-count independence. However, equation (15) states the stronger strict summed inequality, which is false when \(\mathcal L\) is empty; this is the sole line-by-line failure.
- Cited-result and assumption audit: The proposition uses the two named local results and the accepted measurable-block conclusion. The mass identity uses the accepted measurability conclusion together with the primitive finite whole-domain partition. No occupancy event, balance condition, or all-quotas-met condition is assumed.
- Rigor checklist: Division by \(n\) is legal; zero masses are light and contribute zero; the heavy summation is a weighted average of marginal probabilities rather than a union-event estimate. The exact \(k=1\) proof is valid: \(X_1=X\), \(\rho_1=1\), and \(J_1=n\) pointwise, so \(W_{\rm short}=0\) whenever \(n\ge q_1\).
- Local adversarial test: Many tiny masses, one dominant block, all-light, mixed light/heavy, and all-heavy regimes were checked. The all-heavy regime exposes the false strict empty-sum line. It does not invalidate the intended non-strict estimate, but the submitted proof must state the correct relation rather than rely on an implicit repair.
- Contribution to target step: Once equation (15) is corrected locally, the proposition assembles the exact target and baseline with no other change.
- Verdict: REVISE_STEP
- Repair direction: Replace the strict empty-sensitive inequality in equation (15) by its universally valid non-strict version, or add the explicit empty-set case.

## Hidden Subclaim Scan

No independent probabilistic or measurable subclaim is missing from the local lemma map. `unit_001` now covers block/target/sample legality, marginal binomiality, zero-mass behavior, integrability, and finite expectation linearity. `unit_002` proves rather than cites the Chernoff interface. `unit_003` isolates deterministic light/heavy aggregation and the one-factor specialization. Positivity of \(q_i\) is a permitted deterministic consequence of the binding quota interface, not a generated invariant. The only defect is the explicit strict empty-sum assertion identified above; no hidden union bound, independence assumption, conditional distribution, or global-diagnostic authority is used.

## Target Claim Audit

The proof targets the exact accepted `step_004` row: one fixed iid sample size, expectation of the exact risk-weighted shortage mass, arbitrary factor masses induced by an arbitrary distribution, explicit constants \(128\) and \(e^{-16}\), exact zero-mass handling, and no all-factor union bound. The repaired provenance chain legally supplies measurable blocks and targets through accepted `step_001`, including the constant quotient tuple whose decoder has one-set \(X_i\). The marginal laws, Chernoff exponent, weighted heavy contribution, and pointwise \(k=1\) conclusion are correct. Equation (15)'s false strict assertion at \(\mathcal L=\varnothing\) prevents certification for every allowed boundary as written, but requires no target or sketch change.

## Explicit Rate Audit

The exposed quantities are \(n,k,(\rho_i,q_i,J_i)_i,Q_{\oplus}\), and \(W_{\rm short}\). There are no hidden constants: \(128\), \(16\), and \(16129/256\) are explicit universal numbers. The mode is expectation over one fixed iid sample, with no learner randomness, probability conversion, horizon upgrade, auxiliary tolerance, balance/support condition, or dependence on class or quotient cardinality. The light and heavy dominations are displayed, except that the light display must use the correct non-strict relation in the empty case. At \(k=1,n\ge q_1\), the proof preserves exact zero shortage rather than weakening it to the generic residual.

## Notation Surface Audit

The public-facing setting objects and the exported proposition are minimal. The indicators \(I_{j,i}\), constant tuple \(\bar b^{(i)}\), means \(\mu_i\), split sets \(\mathcal L,\mathcal H\), and Chernoff parameter are correctly classified and defined as proof-local; the generic binomial variables are appendix-local. No helper notation hides a constant, stochastic mode, or assumption. The assumption notes correctly separate the primitive partition from the accepted derived measurability interface.

## Target-Step Assembly Audit

The assembly cites accepted dependency Lemmas~\ref{lem:step-001-quotient-invariance} and \ref{lem:step-001-output-measurability}, then the three current named local results by theorem-style labels. Its measurability and assumption provenance are now sound, and it does not rely on bare unit IDs or a diagnostic artifact. The exact target follows from the named results once Proposition~\ref{prop:step-004-weighted-shortage}'s equation (15) is corrected for the empty-light boundary. Until then, the assembly consumes a proposition whose submitted derivation contains a false universally quantified line.

## Review Rationale

`REVISE_STEP` is the smallest sound status. The attempt-1 blocker is repaired: accepted `step_001` quotient invariance and output measurability legally produce the measurable target and measurable blocks, including the constant quotient tuple decoding to \(\mathbf1_{X_i}\), and the proof no longer attributes that legality to Assumption~\ref{assump:canonical-product} alone. All substantive probability mathematics also passes: marginal binomiality, direct Chernoff derivation, constants, zero-mass handling, weighted heavy aggregation, absence of a union bound, and the exact \(k=1\) baseline. The remaining defect is confined to one strict inequality in the current proof and can be repaired without changing the sketch row, dependency, assumptions, constants, scope, or output target. Therefore `/proof-step step_004` is the smallest producer retry; a fresh accepted review remains required afterward.
