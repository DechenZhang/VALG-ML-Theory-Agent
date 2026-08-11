# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_008
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_3/proof_steps/step_008/proof.md
- Reviewed proof SHA-256: 42121742c564d1ac023afd576efc2e2e946a9b447f620d5c7cd087bc76fc8a43
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted step_001 proof/review SHA-256: 061c31df9fd9ebb495de80126984df01e0f75a7e8d711b96fb14c6567499b486 / 1c08770404c3d9c8a40ad34913620008d83a573c6c115dc9acfe081c3aa65ca6
- Accepted step_005 proof/review SHA-256: 044406cb03ff7ebc62a8c44e317ec731030192eb2f4e585650335feea30e2191 / 189873c0b2f032e76014d9ebb953db45efa3842a7010829750f0afeb25940cff
- Accepted step_007 proof/review SHA-256: ac2b7cf238b2c88552225bb275163a22ba5d83b427f6ec06404ab1b57c9677ce / 87a0bc9830d9ba85b2789eaa5be179c78cbb71dbd8e92054a5e7b91969043859
- Diagnostic global proof/review binding SHA-256: dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407 / fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710; verified but not used as proof evidence.
- Primary-source preflight: Xin Lyu, Private Learning of Littlestone Classes, Revisited, arXiv:2510.00076v1; independently downloaded official source archive SHA-256 1b70f9de20e75e5684cd2495b36e30420e25f6d46f8220c585dfd019a682b301 and verified submission/main.tex SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Simultaneous two-sided AboveThreshold accuracy

- Statement fidelity: The lemma proves exactly the accepted row's finite AboveThreshold accuracy interface: both report implications, detection of a score-k stage, rejection of an empty stage, and the exact beta_AT charge. It does not claim query sensitivity or privacy.
- Proof validity: Official v1 Algorithm 2 uses the exact test q_r + Z_r >= k/2 with Z_r distributed as Laplace(1/eta), no threshold noise, and independent query noises. Direct integration gives P(|Z_r| > t) = exp(-eta t). The definition of tau_AT and a union bound over d+1 potential queries give (13). Every implication in (14) has the correct weak or strict direction. The accepted teacher margin implies k/2 > tau_AT, so q_r = k is detected and q_r = 0 is rejected.
- Cited-result and assumption audit: Assumption assump:approximate-dp-regime makes the allocations legal. Accepted Lemma Candidate and allocation legality and Proposition Feasible witness, least teacher, and realized dictionary supply the exact eta, tau_AT, k, and margin. The frozen source confirms the plus-noise sign, scale, independence, unnoised threshold, and weak Above comparison.
- Rigor checklist: Pre-sampling unused post-stopping noises is a finite product-space coupling with the same submitted-prefix law. No independence from E_good is used. Threshold equality, boundary noises, odd k, d = 1, and k = 2 preserve all displayed directions.
- Local adversarial test: At an empty union, q_r = 0 < k/2 - tau_AT, so no good-noise false positive occurs. At a score-k stage, k > k/2 + tau_AT, including at r = d, so the process cannot miss all structural successes on the good-noise event.
- Contribution to target step: It supplies the exact reported-stage lower margin and finite mechanism failure charge used by the stopped-process proposition.
- Verdict: PASS
- Repair direction: None.

### unit_002: First-Above stopping preserves the teacher margin

- Statement fidelity: The proposition consumes the accepted score-k stage on E_good and proves a first reported stage no later than r_star <= d, with q_rhat >= B + tau_SS(k) + 2. It permits an earlier noise-induced Above, as the accepted sketch requires.
- Proof validity: If no earlier report occurs, the accepted stage r_star is submitted and unit_001 reports it Above; otherwise external stopping defines rhat < r_star. At any reported stage, unit_001 and the accepted teacher inequality give (20). Positivity forces a nonempty finite actual-function union and rules out exhaustion.
- Cited-result and assumption audit: Accepted Proposition Finite DDim budget produces a full-score stage supplies one actual common function and q_rstar = k on E_good. Accepted Proposition Total arbitrary-input learner supplies first-Above stopping and the one-call procedure. No unsupported list, transcript, or privacy fact is introduced.
- Rigor checklist: The proof separates an earlier report from first success at r_star, handles r_star = 0 and r_star = d, and never submits an undefined d+1-st query. A positive maximum over the accepted finite union is attained by an actual function on X.
- Local adversarial test: A false positive with score below k remains harmless because every good-noise Above retains the full teacher margin. Empty lists cannot be selected, while a score-k final stage prevents an all-Below transcript.
- Contribution to target step: It converts structural support into the exact quantitative interface needed by the unique Sparse Sample call.
- Verdict: PASS
- Repair direction: None.

### unit_003: Sparse Sample effective-domain utility

- Statement fidelity: The lemma proves the exact effective-domain count and exponential-weight lower-tail bound assigned to this step, including the adaptively selected unique call. It uses Lemma 3.1 only for source-interface compatibility, not as a utility or nonfailure result.
- Proof validity: The accepted list bounds give size(union_i L_i^r) <= kL and hence size(U_r) <= kL + 1. When the actual-function union is nonempty, an actual maximizer has score q_r, so the normalizer is at least exp(epsilon_s q_r); summing at most kL+1 weights below q_r - tau_SS(k) gives exactly beta_SS. When the union is empty, the bad event is empty because V = perp, s_r(perp) = B >= 0, and q_r - tau_SS(k) < 0.
- Cited-result and assumption audit: Official v1 Algorithm 1 has exactly the codomain, score s_r(perp) = B, and weights proportional to exp(epsilon_s s_r(u)) used in (9)-(10). Accepted Lemma Exact essential-list envelope and Proposition Feasible witness, least teacher, and realized dictionary supply L, B, epsilon_s, and tau_SS(k). List-coordinate adjacency is correctly left to step_009.
- Rigor checklist: Duplicate functions only decrease the union size. Strict membership in the bad set justifies the exponential upper bound. Conditioning on a complete AboveThreshold prefix fixes the unique stage for the already-constructed list tuple; fresh Sparse Sample randomness gives the same uniform bound, and the tower property introduces no stage union.
- Local adversarial test: The result remains valid if B > q_r because the denominator comparison uses an actual score-q_r maximizer and does not assume that it globally maximizes over perp. The later teacher margin, rather than this lemma, supplies q_rhat > B.
- Contribution to target step: It supplies the exact tau_SS(k) loss and single beta_SS charge at the adaptive call.
- Verdict: PASS
- Repair direction: None.

### unit_004: One actual current-list output and exact mechanism confidence

- Statement fidelity: The proposition packages the two proved mechanism events, gives failure at most beta_AT + beta_SS, and on E_good proves output of an actual current essential-SOA list function rather than perp, the default, exhaustion, or a trace surrogate. This is exactly the accepted output target.
- Proof validity: The conditional Sparse Sample bound is uniform over every AboveThreshold prefix, so the tower property gives P(E_SS failure) <= beta_SS; a union bound with unit_001 gives (28). On E_good intersect E_mech, units 002 and 003 yield s_rhat(V) >= B + 2 > B = s_rhat(perp). The exact Algorithm 1 codomain then forces V into the actual list union, and accepted totality returns that same function.
- Cited-result and assumption audit: Accepted step_001 supplies the fixed mechanism and strict margin, step_005 supplies the separately charged trace event, and step_007 supplies the score-k stage. The proposition uses no diagnostic artifact, generated condition as a primitive assumption, or privacy conclusion.
- Rigor checklist: Equation (30) needs no independence between the good events. Integrating the uniform conditional mechanism bound over realizable E_good instances and adding the accepted trace failure gives exactly 3 beta/4, leaving beta_gen = beta/4. Immediate, last-stage, empty-list, false-positive, all-Below, perp, and fallback paths are all classified.
- Local adversarial test: If an earlier reported stage has q_rhat < k, the selected-score inequality still exceeds B. If the failure symbol has the largest weight off the good event, no conclusion is made. At r_star = d, exactly the declared d+1 query horizon suffices.
- Contribution to target step: It exports the mechanism-good event and actual selected item for steps 009-011, with the exact confidence ledger.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the four-unit map. Lemma Simultaneous two-sided AboveThreshold accuracy contains the finite-noise coupling and transcript implications. Proposition First-Above stopping preserves the teacher margin contains stopped-stage existence and margin. Lemma Sparse Sample effective-domain utility contains domain counting, exponential-weight comparison, and adaptive-call conditioning. Proposition One actual current-list output and exact mechanism confidence contains event packaging, strict exclusion of perp, terminal-path coverage, and the confidence ledger. Pre-sampling unused independent noises, finite union bounds, and the tower property are atomic probability operations inside those results.

The proof does not smuggle in query sensitivity, list-coordinate adjacency, privacy, exact leaf identity, empirical error, or PAC generalization. Those remain downstream obligations. The proof and assembly use theorem-style names and stable labels as mathematical authority; unit IDs are audit handles only.

## Target Claim Audit

The proof establishes the exact accepted step_008 claim under Assumption assump:approximate-dp-regime and the current accepted step_001, step_005, and step_007 conclusions. It proves both AboveThreshold transcript directions for the exact source convention, detects a score-k stage, derives a first reported-stage margin, proves the kL+1 effective-domain tail at the unique adaptive call, and concludes actual-list output with mechanism failure at most beta_AT + beta_SS = beta/2.

Quantifiers, strict inequalities, and probability modes are preserved: the mechanism bound is uniform for every fixed input and partition; actual output is conditional on the earlier-derived E_good; and the trace charge is added only after that conditional calculation. The proof neither weakens output to trace membership nor strengthens this step into privacy or population utility.

## Explicit Rate Audit

The step is rate-bearing through its finite mechanism-loss interface. It exposes d, k, L, B, eta, epsilon_s, tau_AT, tau_SS(k), beta_AT, and beta_SS. Public d, v, alpha, beta, epsilon, and delta dependence is inherited from the accepted fixed dictionary. It introduces no hidden constant and does not alter inherited universal constants.

The probability mode is simultaneous high probability over d+1 potential Laplace noises plus conditional high probability for one fresh Sparse Sample draw. The horizon is fixed and finite, with first-Above stopping and at most one call. The metric is integer list-frequency score and exact actual-function membership. Equations (16), (17)-(19), (24)-(25), and (31) explicitly discharge every tail, domain-size, threshold, and failure-symbol term; no stage factor, ceiling, or logarithm is absorbed by prose. Public elimination of k, L, and B remains assigned to step_012.

The baseline reduction passes: the d = 0, N = 0 learner bypasses every mechanism expression, while d = 1, immediate success, stage-d success, empty stages, odd k, k = 2, and all accepted fallback paths retain the source-compatible procedure.

## Notation Surface Audit

Every new helper is classified. The public-facing surface contains only q_r, rhat, fhat, and E_mech. E_AT and E_SS are appendix-local. Latent noises, the score map, effective domain, bad set, Sparse Sample return, and structural witness are proof-local and eliminated from the exported conclusion. All constants, thresholds, events, and helpers have setting, accepted-dependency, frozen-source, or named-local-result provenance. The step exports only the actual selected-item and mechanism-confidence interface needed downstream.

## Target-Step Assembly Audit

Accepted Proposition Feasible witness, least teacher, and realized dictionary supplies the exact teacher/list/noise dictionary and strict margin. Accepted Proposition Total arbitrary-input learner supplies the stopped procedure. Accepted Proposition Exact allocation of the trace failure supplies the earlier event and separate charge. Accepted Proposition Finite DDim budget produces a full-score stage supplies a queried score-k stage with one actual common function.

Lemma Simultaneous two-sided AboveThreshold accuracy converts source noises into transcript guarantees. Proposition First-Above stopping preserves the teacher margin transfers the teacher margin to the selected stage. Lemma Sparse Sample effective-domain utility proves the unique-call exponential-weight tail. Proposition One actual current-list output and exact mechanism confidence strictly dominates the failure-symbol score and packages the confidence events. These named results jointly imply the exact sketch row without a new dependency, bridge, assumption, or output target.

## Review Rationale

ACCEPTED is the smallest correct status. Every artifact and attempt binding matches the current files; all three dependency reviews are current and ACCEPTED; and the independently downloaded official arXiv v1 source matches the frozen hashes and exact mechanism statements. The four local units are valid under the unchanged sketch row, cover all boundary and adaptive-stopping cases, preserve assumption and probability provenance, and assemble to the exact actual-function output with the required beta_AT + beta_SS charge. No producer, dependency, or sketch repair is required, so None is the aligned smallest retry target.
