# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_007/proof.md`, SHA-256 `7d50f8863b85cbe3e619e20837cf10751abe025ff6621b77c3bd369550eb2113`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`
- Accepted dependency proof: `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`
- Accepted dependency review: `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256 `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, status `ACCEPTED`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The unseen-label lemma states the exact kernel-level lower bound required by the accepted `step_007` row for every fixed \(n\in\mathbb N\) and every unrestricted randomized learner. It uses only Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors} and the accepted shattered-witness conclusion of Lemma~\ref{lem:step-001-vc-cardinality}; it assumes neither privacy nor proper output.
- Proof validity: The accepted dependency supplies distinct points \(x_i\in X_i\) and all \(2^k\) target labelings. Conditional on an index tuple omitting \(j\) and on all target bits except \(B_j\), the labeled dataset is identical for \(B_j=0\) and \(B_j=1\). The measurable kernel events \(E_{j,0}\) and \(E_{j,1}\) partition the entire binary decoded output space, so averaging the two kernel probabilities gives exactly \(1/2\), without a random-seed representation or independence among output coordinates. Finite linearity and \(\Pr(U_j)=(1-1/k)^n\) then give the claimed risk lower bound.
- Cited-result and assumption audit: The sole dependency result is restated in current notation and its two primitive assumptions are discharged by the current binding setting and accepted `step_001` review. No external result is cited. The unseen events are generated finite-experiment events whose probabilities are proved, not assumptions. The learner's decoder measurability is part of the local unrestricted-learner condition from the setting.
- Rigor checklist: The argument keeps the quantifier order fixed learner -> random target/sample/output and conditions only on finite variables. It permits arbitrary coupling of predictions and arbitrary improper hypotheses. Repeated sample points are represented exactly by the iid index tuple; collisions do not invalidate the identity and only leave witness coordinates unseen. The finite sum in the risk permits no illegal expectation or conditioning interchange.
- Local adversarial test: Even if the learner knows the class, the witness, and every observed target bit, on \(U_j\) the fair bit \(B_j\) is absent from the dataset and independent of the conditioned bits. Changing \(B_j\) may change the selected full target away from the witness, but it cannot change the observed dataset, whose instances all lie in the witness. Thus the same kernel law is used on both sides of the fair-label identity. At \(k=1\), the right side is zero and remains valid.
- Contribution to target step: Establishes the randomized-improper, nonprivate averaged lower interface \(\mathbb E R_D\ge\frac12(1-1/k)^n\) on the exact global class and exact risk.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: The lemma converts precisely the setting's good event \(L\le1/16\) with probability at least \(15/16\) into the expectation ceiling \(31/256\), and states the strict contrapositive needed for the target PAC-failure event.
- Proof validity: Writing \(p=\Pr[L>1/16]\), boundedness gives \(\mathbb E L\le(1/16)(1-p)+p=1/16+(15/16)p\). The PAC premise gives \(p\le1/16\), hence \(\mathbb E L\le31/256\). Therefore \(\mathbb E L>31/256\) forces \(p>1/16\); both inequalities retain the exact strict/non-strict thresholds.
- Cited-result and assumption audit: No citation or dependency is used. The only inputs are measurability and \(0\le L\le1\), which hold for distributional binary risk in the binding learner model. No privacy, support, or generated-event hypothesis is introduced.
- Rigor checklist: The complement of the displayed good event is exactly \(L>1/16\), so there is no equality-boundary loss. The argument is finite and uses neither asymptotics nor an unstated integrability assumption; boundedness supplies integrability.
- Local adversarial test: A loss equal to \(1/16\) lies on the good event and is charged at \(1/16\), while an arbitrary bad-event loss is safely charged at one. Equality \(p=1/16\) yields only the non-strict ceiling, which is why the later expectation lower bound must and does remain strict.
- Contribution to target step: Supplies the exact expectation-to-PAC-event bridge used after deterministic target extraction.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: The proposition proves the exact accepted-row certificate for every unrestricted learner satisfying the global PAC premise and strengthens the unspecified universal constant to the explicit valid choice \(a_{\rm VC}=1/2\). It also exports the required deterministic target and strict failure event under the contradiction branch.
- Proof validity: The formal convention \(n\in\mathbb N=\{1,2,\ldots\}\) immediately gives \(n\ge k/2\) for \(k=1,2\). For the only remaining branch, \(k\ge3\) and \(n<k/2\), the proved Bernoulli inequality gives
  \[
  \frac12(1-1/k)^n\ge\frac12(1-n/k)>\frac14>\frac{31}{256}.
  \]
  The random-target expectation is a finite average of the deterministic-target expectations, so at least one target \(c^{b_*}\) has expectation strictly above \(1/4\). Lemma~\ref{lem:step-007-pac-conversion} then gives failure probability strictly above \(1/16\), contradicting the exact global PAC premise for that target and the uniform witness distribution.
- Cited-result and assumption audit: The proposition uses only the accepted shattered-witness result and the two preceding named local lemmas, all restated before use. The elementary product inequality is proved by induction in the proposition. The PAC guarantee and \(n<k/2\) are correctly classified as local conditional hypotheses, and the latter is discharged rather than exported.
- Rigor checklist: Finite averaging justifies deterministic-target extraction without minimax, selection, or measurability issues. The proof keeps one fixed learner, sample size, distribution, target, risk metric, and output kernel through the conversion. Integer and strict-threshold boundaries are explicit. The conclusion is independent of \(\varepsilon,\delta\), properness, computation, and privacy.
- Local adversarial test: For \(k=1\), \(n\ge1>1/2\); for \(k=2\), \(n\ge1=k/2\); for odd \(k\ge3\), an integer \(n<k/2\) is still covered by the strict ratio \(n/k<1/2\). If the finite target average is strict, it is impossible for every atom to be at most \(1/4\). If the PAC failure probability were exactly \(1/16\), the expectation would be at most \(31/256\), still contradicting the extracted strict lower bound.
- Contribution to target step: Exports exactly \(n\ge a_{\rm VC}k\) with \(a_{\rm VC}=1/2\), together with the deterministic PAC-failure witness consumed by later lower-calibration steps.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. The Markov-kernel unseen-label identity, the exact bounded-loss PAC conversion, and the finite deterministic-target/rate conclusion are isolated as the three named units. The only auxiliary inequality is proved inside the proposition. Finite atomic risk measurability, repeated-sample handling, and finite averaging are displayed at their exact elementary interfaces rather than used as hidden external facts.

## Target Claim Audit

The proof establishes the exact `step_007` sketch-row claim under the two listed primitive assumptions and the current accepted `step_001` dependency. Its quantifiers cover every fixed positive integer sample size and every unrestricted randomized, improper, computationally unbounded learner; privacy is neither assumed nor used. The hard target belongs to the full Cartesian class, the hard measure is an allowed probability measure, and the conclusion uses exact distributional binary risk. The proof returns from its finite random-target device to a deterministic target and the exact strict PAC failure event. The small-\(k\) convention and the universal constant \(a_{\rm VC}=1/2\) are valid exactly, with no weakened regime or hidden condition.

## Explicit Rate Audit

The step is rate-bearing in exactly \(k\) and the fixed candidate \(n\). The exported constant is explicitly \(a_{\rm VC}=1/2\), so there is no hidden-constant dependence. Accuracy and confidence are fixed at \(1/16\); the probability premise is high probability over the iid sample and learner kernel, while the random-target expectation is a finite proof device eliminated before export. The horizon is one fixed \(n\), not asymptotic or uniform in candidates, and the metric is exact distributional \(0\)-\(1\) risk. No privacy variable, auxiliary tolerance, term absorption, or probability-mode upgrade is hidden. At \(k=1\), the positive-integer sample convention preserves the additive one-factor baseline; at \(k=2\), it gives equality at the exported floor.

## Notation Surface Audit

The only public-facing output is \(a_{\rm VC}=1/2\) and the certificate \(n\ge a_{\rm VC}k\). Witness points, full-product targets, and the finite atomic distribution are appropriately appendix-local proof objects derived from the accepted dependency. Target bits, iid indices, unseen events, evaluation-cylinder events, and deterministic-target losses are proof-local and defined before use. Their provenance and measurability are explicit, no one-off alias hides a rate or boundedness claim, and no proof-local object is exported as a theorem-facing assumption.

## Target-Step Assembly Audit

Accepted Lemma~\ref{lem:step-001-vc-cardinality} supplies the exact \(k\)-point shattered witness. Lemma~\ref{lem:step-007-unseen-labels} supplies the kernel-valid averaged risk lower bound, Lemma~\ref{lem:step-007-pac-conversion} supplies the exact strict PAC conversion, and Proposition~\ref{prop:step-007-additive-vc} performs the finite target extraction and small-\(k\) closure. These named results jointly imply every component of the binding target and export \(a_{\rm VC}=1/2\) without an unreviewed bridge, bare unit-ID authority, changed probability mode, or changed learner scope.

## Review Rationale

`ACCEPTED` is warranted because each local unit is self-contained and valid under the unchanged accepted interface. The high-risk points all pass directly: the learner is handled as a Markov kernel on identical datasets, improper binary outputs still partition into the two evaluation events, unseen target labels remain fair after conditioning, repeated observations are included exactly, finite averaging yields a deterministic full-product target, the PAC expectation ceiling and its strict contrapositive use the exact \(1/16\) thresholds, and the formal \(n\ge1\) convention closes \(k=1,2\). The resulting fixed-candidate exact-risk certificate has the declared constant, modes, measurability, and downstream interface. No proof-step, dependency, or sketch repair is needed, so `None` is the smallest retry target.
