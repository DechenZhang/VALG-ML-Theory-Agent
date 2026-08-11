# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_016`
- Unit attempt: 3
- Review attempt: 4
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_016/proof.md`
- Reviewed proof SHA-256: `bd89e61edb9ba13a0198e603a87cee816d7a74ab95e5ef258e7399c0981c6e0b`
- Binding setting artifact: `perspective_2/idea_4/setting.md`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch artifact: `perspective_2/idea_4/proof_sketch.md`
- Binding proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review artifact: `perspective_2/idea_4/proof_sketch_review.md`
- Binding proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency `step_002` proof SHA-256: `880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f`
- Accepted dependency `step_002` review SHA-256: `090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5`
- Accepted dependency `step_003` proof SHA-256: `092c5ba976f43a4b7d1bf746aba05c1caa0d49f2bd3de55a254f58dc6e4c4a7f`
- Accepted dependency `step_003` review SHA-256: `5ba08c887b44fc901e74bd3bc2793a06e3accf2a7d999f62532ec042c211eb87`
- Accepted dependency `step_014` proof SHA-256: `9f040e514e388c5cd8feb190e9c4bfba48ba730be295d79c979304ce4742bbb8`
- Accepted dependency `step_014` review SHA-256: `04198f3e0db38202d74470af46f66ddf0a012f990e19ebdd2d3b8ffe75768bab`
- Accepted dependency `step_015` proof SHA-256: `bcb840332dff8fe4f0c2028744e46eff951fb4e7aa6e47f74fd4c3bcfdc7d492`
- Accepted dependency `step_015` review SHA-256: `ee3c367e9ab057d098023701bd7b10469eb3b5381f6c3cc3ff1cc7c1952e93bd`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-zero} states the exact shared (d=0) branch required by the sketch: singleton raw and quotient classes, the identical finite/old/VC (N=0) law, ((0,0))-privacy, zero decoded risk, and (m_C=0).
- Proof validity: Accepted Lemma~\ref{lem:step-002-ld} gives the singleton and (v=0) conclusions. The displayed Dirac law is a kernel on the unique empty input, is data independent, and accepted factorization and risk transfer identify its decoded output with every target. The accepted VC and live old-arm null propositions state the same quotient output, so literal equality of the three null laws follows.
- Cited-result and assumption audit: The unit uses only the two stated primitive assumptions and accepted Propositions~\ref{prop:step-002-factorization}, \ref{prop:step-002-risk}, \ref{prop:step-014-vc-arm}, and \ref{prop:step-015-zero}. The live Step 015 label is present in producer attempt 2 and accepted by its current review.
- Rigor checklist: The proof does not evaluate a positive-dimensional denominator or rate at (d=0). The conclusion is uniform in (D,c), and the definition of (m_C) permits (N=0).
- Local adversarial test: A unique concept may induce more than one quotient cell, but its factored quotient concept is still unique and decodes pointwise to the target; the argument therefore retains zero risk on arbitrary measurable raw spaces.
- Contribution to target step: It preserves the exact common null law before the finite construction or arm comparison is used.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-finite-kernel} constructs the finite arm on the fixed full class (\bar C), for every (N\in\mathbb N_0) and every labeled quotient input, with output in the setting space (H_C) and raw pullback through (T_N).
- Proof validity: Accepted factorization gives (|\bar C|=M\ge1). Every exponential weight is positive, the normalizer is a finite positive sum, and (2.4) is a Borel probability measure supported on the fixed finite set (\bar C\subseteq H_C). Countable-discrete input promotion makes all event-mass coordinates measurable, and accepted raw pullback applies after the proof explicitly places the pointwise law under the accepted quotient-kernel proposition.
- Cited-result and assumption audit: The accepted Step 002 and Step 003 results are restated in current notation with their exact input, output, and measurability roles. No external private-ERM theorem, measurable selector, empirical subclass, or generated event is used.
- Rigor checklist: The formula covers arbitrary and nonrealizable labels, (N=0), (M=1), and both finite and countably infinite (Q_C). Each singleton in the finite support is Borel because (H_C) is standard Borel.
- Local adversarial test: Empty input gives uniform positive weights on the fixed class; duplicate records and arbitrary label changes only alter the finite mistake counts. No data-dependent range or infinite-class truncation enters the construction.
- Contribution to target step: It supplies the complete measurable quotient/raw kernel interface for the finite arm.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-finite-dp} proves pure (\varepsilon)-DP for both the quotient finite law and its raw pullback on all replace-one inputs, which is stronger than the required ((\varepsilon,delta))-DP conclusion.
- Proof validity: One record changes each mistake count by at most one, so every unnormalized weight changes by a factor in ([e^{-\varepsilon/2},e^{\varepsilon/2}]). Summing the upper bound in the numerator and the lower bound in the normalizer gives the exact (e^\varepsilon) likelihood-ratio bound for every measurable output event. Accepted record transport then covers both equal quotient images and quotient neighbors.
- Cited-result and assumption audit: Privacy is derived directly; the only dependency use is accepted raw-to-quotient neighbor transport and the locally constructed kernel. Realizability and utility events are correctly absent.
- Rigor checklist: Replace-one adjacency is symmetric, all event numerators are finite sums, and the argument covers label changes, same-cell raw changes, nonrealizable inputs, and (N=0). Weakening pure DP to approximate DP by adding (delta>0) is valid.
- Local adversarial test: A replacement can change the minimizing hypothesis and the normalizer simultaneously; the two half-(\varepsilon) comparisons still give exactly the full (e^\varepsilon) ratio. A same-cell replacement that quotient-collapses gives equality.
- Contribution to target step: It supplies the finite arm's all-input privacy interface without citation or hidden sensitivity assumptions.
- Verdict: PASS
- Repair direction: None.

### unit_004: lemma

- Statement fidelity: Lemma~\ref{lem:step-016-finite-tail} states the required unconditional raw decoded-risk tail uniformly over every (D,c), including both iid sampling and mechanism randomness.
- Proof validity: Realizability gives the target quotient concept mistake count zero and hence normalizer at least one. For each fixed candidate, the expected unnormalized weight is the exact Bernoulli product ([1-p(1-e^{-\varepsilon/2})]^N). The displayed inequalities prove (1-e^{-\varepsilon/2}\ge\varepsilon/4); summing over the fixed finite bad set then gives (M e^{-N\varepsilon\alpha/4}). Accepted iid pushforward and exact risk transfer turn this quotient probability into the stated raw probability with no confidence loss.
- Cited-result and assumption audit: No concentration or finite-class theorem is cited. Independence, the Bernoulli mean, bad-set measurability, sample transport, and risk transport are all stated and discharged from the primitive realizable-iid condition and accepted Step 002 interfaces.
- Rigor checklist: The expectation/sum interchange is finite. Strict (p>\alpha) is used in the safe direction, (0<\varepsilon\le1) is exactly the range needed by (4.6), and the proof covers (N=0), an empty bad set, (p=0), and (p=1).
- Local adversarial test: Even when a bad hypothesis fits a particular sample perfectly, its integrated selection mass is controlled by the exact Bernoulli transform; no selected-output independence or separate uniform-convergence event is assumed.
- Contribution to target step: It gives the finite arm's complete PAC conversion and removes any need for an extra (log M/\alpha) sampling term.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-finite-arm} turns the preceding kernel, privacy, and tail results into a complete finite-class learner, treats the singleton by the exact null law, and assigns only the finite arm cost (+\infty) when (C) is infinite.
- Proof validity: For (d\ge1), the chosen integer sample size makes (N_{\mathrm{fin}}\varepsilon\alpha/4\ge\log M+\log(1/\beta)), so the direct tail is at most (\beta). The proof pays the ceiling through (x>16) and (lceil x\rceil\le2x), then uses (log M\le\log^+M) to obtain (N_{\mathrm{fin}}\le8R_{\mathrm{fin}}). The (d=0,M=1) branch instead retains the stronger exact sample size zero.
- Cited-result and assumption audit: Every input is a named earlier local result or a primitive setting assumption. The finite/infinite split is part of the target and is not an added theorem condition.
- Rigor checklist: When (d\ge1), non-singleton (C) implies (M\ge2), though the normalization remains valid for all (M\ge1). The finite learner is pure DP, the PAC bound is uniform, and every ceiling and (log^+M) boundary is explicit.
- Local adversarial test: At (M=1), the exact null branch dominates the positive envelope; for infinite (C), no empirical range, trace representative, or finite surrogate is constructed.
- Contribution to target step: It exports the normalized (R_{\mathrm{fin}}) arm with (K_{\mathrm{fin}}=8) and exponent zero.
- Verdict: PASS
- Repair direction: None.

### unit_006: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-minimum} compares only complete finite, old, and VC learners sharing the setting's output, decoder, raw adjacency, risk, confidence, and probability interfaces, and selects one law before data are observed.
- Proof validity: The live accepted Step 015 kernel, DP, PAC, and rate propositions provide the complete old row; accepted Proposition~\ref{prop:step-014-vc-arm} provides the VC row; and unit_005 provides the finite row when available. A fixed public-parameter tie rule selects the least certified threshold, which the definition of (m_C) permits. Each actual integer sample size is at most its threshold, and coordinatewise bounds with (Lambda\ge1) and (K_*=\max\{8,K_{\mathrm{old}},K_{\mathrm V}\}) imply (6.2).
- Cited-result and assumption audit: The current Step 015 producer attempt 2 contains and its accepted review certifies Propositions~\ref{prop:step-015-kernel}, \ref{prop:step-015-dp}, \ref{prop:step-015-pac}, and \ref{prop:step-015-rate}. The Step 014 and exact risk interfaces also match their current accepted artifacts.
- Rigor checklist: The selection depends only on allowed public parameters, not on data or mechanism output. Different arms may use different sample sizes and laws; no mixture, union bound, sample split, or probability-mode conversion occurs. At infinite (C), the extended-real finite threshold is omitted and both Lyu thresholds remain finite.
- Local adversarial test: If the arm with the smallest certified threshold does not have the smallest actual sample size, its actual size is still bounded by that minimum threshold, which is all the sample-complexity argument needs. Ties and (+\infty) are handled deterministically.
- Contribution to target step: It proves the common (K_*\Lambda^6\min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}) upper bound without combining laws.
- Verdict: PASS
- Repair direction: None.

### unit_007: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-frontier} states every required null, dimension, cardinality, fixed-(delta), scheduled-(delta), structural-rate, and conditional-scope boundary, without claiming a lower bound or characterization.
- Proof validity: A positive Littlestone dimension implies two concepts differ, hence (v\ge1); a VC-shattered set gives a same-depth Littlestone tree, hence (v\le d). Direct algebra gives (vd^4=d^5) at (v=d) and ratio (v/d) between the exposed Lyu structural factors. The selected sample size is bounded by the VC certified threshold regardless of which arm wins, so the exact VC schedule implies (N_*\delta\to0). The standalone old-arm implication is used only from live accepted Proposition~\ref{prop:step-015-boundaries} under its separate premise.
- Cited-result and assumption audit: The unit consumes only named local zero/finite/minimum results, accepted Proposition~\ref{prop:step-014-vc-arm}, and the live accepted Step 015 rate and boundary propositions. Propositions~\ref{prop:step-015-rate} and \ref{prop:step-015-boundaries} are present with exactly those conclusions in producer attempt 2 and are accepted by the bound review.
- Rigor checklist: Fixed positive (delta) is separated from numerical (N\delta) limits; the finite arm's pure privacy is not confused with such a limit. The fixed-parameter shorthand suppresses only the setting-permitted logarithmic factors, and the upper-certificate comparison is not presented as a lower bound on (m_C).
- Local adversarial test: The conclusions remain correct at (d=0), (d=v=1), (v=o(d)), (v=d), finite and infinite (C), fixed positive (delta), and sequences satisfying only the exact displayed schedule. An infinite class disables only the finite arm.
- Contribution to target step: It exports the exact formalized frontier and preserves all inherited baselines and remaining open scope.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the seven-unit map. The null-law identity is unit_001; finite-law measurability and totality are unit_002; the full numerator/normalizer privacy ratio is unit_003; the expected Gibbs-weight calculation, Bernoulli product, coefficient lower bound, finite bad-set sum, and raw probability transport are unit_004; the PAC threshold, ceiling, singleton, and infinite-class convention are unit_005; common-interface certification and deterministic threshold selection are unit_006; and (1\le v\le d), all schedule implications, structural comparisons, and source-scope qualifications are unit_007. No external citation, diagnostic artifact, subsection title, or local unit ID is used as mathematical authority.

The live Step 015 proof was checked directly at its bound hash. It is producer attempt 2 and contains all six consumed labels: Proposition~\ref{prop:step-015-zero}, Proposition~\ref{prop:step-015-kernel}, Proposition~\ref{prop:step-015-dp}, Proposition~\ref{prop:step-015-pac}, Proposition~\ref{prop:step-015-rate}, and Proposition~\ref{prop:step-015-boundaries}. Its current review is attempt 2, has status `ACCEPTED`, matches that proof hash, and gives `PASS` to the corresponding units 001, 006, 016, 021, 022, and 023. No archival artifact is needed for this validation.

## Target Claim Audit

The proof establishes the exact accepted `step_016` row and the controller-expanded target under exactly the four primitive setting assumptions and accepted Steps 002, 003, 014, and 015. It constructs the full finite-class quotient/raw learner and proves its kernel, all-input privacy, unconditional uniform PAC, integer sample size, and exact (R_{\mathrm{fin}}) normalization. It assigns (+\infty) only to the unavailable finite arm for infinite (C), then chooses one of three already complete common-interface learners and proves the required minimum. The (d=0), (v=1), (v=d), finite/infinite, fixed/scheduled (delta), and conditional open-problem scope clauses all match the binding setting and sketch. No assumption, dependency, output, norm, probability mode, or conclusion is strengthened, weakened, or drifted.

## Explicit Rate Audit

The rate-bearing proof exposes (|C|,d,v,\alpha,\beta,\varepsilon,\delta). The finite arm has the explicit constant (8) and exponent zero; the accepted VC arm has universal (K_{\mathrm V}) and exponent (4); the live old arm has universal (K_{\mathrm{old}}) and exponent (6); and (K_*=\max\{8,K_{\mathrm{old}},K_{\mathrm V}\}) is universal. No hidden constant depends on a setting parameter, class, domain, distribution, target, sample, event, list, support, output, or selected arm.

The full finite-parameter theorem fixes no varying quantity and holds for every allowed tuple. Its probability mode is all-input replace-one DP plus unconditional uniform realizable PAC; its horizon is one fixed sample for the one preselected learner; and its norm is decoded binary population zero-one risk with exact quotient equality. The source-facing shorthand fixes (alpha,\beta,\varepsilon) and invokes only the setting's declared small-(delta) convention.

All quantitative bridges are displayed: (4.6)-(4.7) prove the finite mechanism-and-sampling tail; (5.3) checks confidence; (5.5)-(5.7) pay the integer ceiling and compare with (log^+M); (6.3)-(6.4) prove the deterministic minimum under a common (Lambda^6) envelope; and (7.1)-(7.6) prove the structural and schedule specializations. No term is dropped by prose, no union bound over arms is taken, and exact pushforward/risk equality performs the finite-arm probability conversion. Baseline reduction is exact at (d=0), exposes (d^4) at (v=1), gives (vd^4=d^5) at (v=d), disables only the finite arm at infinite cardinality, preserves fixed-(delta) validity, and keeps the selected-learner and standalone-old schedules separate.

## Notation Surface Audit

The public-facing interface is limited to the setting objects, the finite learner specialized at (N_{\mathrm{fin}}), (N_{\mathrm{fin}}), the selected learner and (N_*), and the universal constants (8,K_*) and exponent (6). Generic finite-kernel families, empirical counts, weights, normalizers, and certified arm thresholds are appropriately appendix-local. Candidate risks, the bad finite set, ceiling helpers, and the tie index are proof-local and eliminated from the conclusion. The old kernel symbol (K_{\mathrm o}) remains distinct from the old universal scalar (K_{\mathrm{old}}). Every helper has setting, accepted-dependency, or local derivational provenance, and no notation dictionary hides finiteness, positivity, measurability, constant dependence, or a generated condition.

## Target-Step Assembly Audit

The assembly uses all seven theorem-style local labels in dependency order. Proposition~\ref{prop:step-016-zero} isolates the null branch; Proposition~\ref{prop:step-016-finite-kernel}, Proposition~\ref{prop:step-016-finite-dp}, and Lemma~\ref{lem:step-016-finite-tail} construct and certify the finite learner; Proposition~\ref{prop:step-016-finite-arm} chooses and normalizes its integer sample size; Proposition~\ref{prop:step-016-minimum} compares three complete interfaces; and Proposition~\ref{prop:step-016-frontier} proves all boundary and source-scope conclusions.

Accepted Steps 002 and 003 supply exactly the factorization, dimensions, record/sample/risk transport, kernel promotion, and raw pullback used by those local results. Accepted Proposition~\ref{prop:step-014-vc-arm} supplies the complete VC tuple. The bound Step 015 proof/review pair directly supplies all six consumed null, kernel, DP, PAC, rate, and boundary labels listed in the hidden-subclaim scan. These dependencies and the seven local results jointly imply every target clause. The assembly introduces no unreviewed lemma, external theorem, diagnostic evidence, mixed law, or missing producer-consumer link.

## Review Rationale

`ACCEPTED` is the smallest sound status. All binding and dependency SHA-256 identities match the current artifacts, the proof contains exactly seven non-atomic local units, and an independent full audit validates every statement, derivation, assumption discharge, dependency application, rate inequality, boundary case, notation classification, hidden-subclaim check, and assembly link. The new live Step 015 binding and all six consumed labels are current and accepted. No local proof flaw, dependency flaw, or sketch-interface change requires a producer rerun, so the smallest retry target is `None`.
