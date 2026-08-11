# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_015`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_015/proof.md` (SHA-256 `d2e40b565478a02abb7a3e615f723f9dc1d375d6be35b9eaa2f29a76a51ca1a7`)
- Binding setting: SHA-256 `f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17`
- Binding accepted sketch: SHA-256 `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`
- Binding accepted sketch review: SHA-256 `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`

### Direct Dependency Identity Table

| Step ID | Accepted proof SHA-256 | Accepted review SHA-256 | Producer status | Review status |
| --- | --- | --- | --- | --- |
| `step_005` | `4bdeddb090ff889aa710ca8126b91bb792f56635a6f60223f698edbfeb4f335a` | `f12de095c3827725cd4d7c8e7ab89fa2b450c0e7a878bd56d766ea5e6aab750b` | `COMPLETE` | `ACCEPTED` |
| `step_014` | `e6e77fc6686a74877692baf9a453e8c14855f52adcee0130753b54295e86c9a4` | `bd7d030a5bc30dd97d56b92569712e783b5dadf8ac7971b93b3234aecb75061d` | `COMPLETE` | `ACCEPTED` |

All displayed hashes match the reviewed artifacts. Each dependency review certifies the current producer attempt and reports no blocker or retry target.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma states the exact conditional closure required by the accepted `step_015` row. Its basis is explicit: Assumptions~\ref{assump:candidate-regime}, \ref{assump:central-dp}, and \ref{assump:distribution-free-realizable-pac}, together with accepted Propositions~\ref{prop:step-005-certificate} and \ref{prop:step-014-fixed-contradiction}. Its sole local condition is the strict negation (n<ak\log_2^*N), and its conclusion is that no fixed candidate satisfying all those premises can obey that negation.
- Proof validity: Constants and (N_0) are fixed before the candidate. Accepted Proposition~\ref{prop:step-005-certificate} applies to the identical (k,N,n,\varepsilon,\delta) and exact (M=\max\{8,\lceil4n/k\rceil\}), producing (N\ge N_*), (8\le M<b_*\log_2^*N), (0<\varepsilon\le0.1), and (0<\delta<d_*/(M^2\log M)), while preserving both primitive candidate-(\delta) conjuncts. The fixed learner's central-DP and distribution-free PAC premises are unchanged. This is exactly the premise package consumed by the accepted `step_014` interface, whose fixed-instance risk is simultaneously (>2^{-9}) and \(\le2^{-12}\). Since (2^{-9}>2^{-12}), the conditional hypothesis is impossible.
- Cited-result and assumption audit: Both accepted dependencies are restated before use with their current-candidate objects, assumptions, conclusions, and boundary scope. The hard regime and privacy cap are derived dependency outputs, not primitive assumptions. The fixed hard instance and contradiction are consumed only from accepted `step_014`; no hard prior, simulator event, averaged PAC statement, or diagnostic artifact is re-assumed.
- Rigor checklist: The argument is pointwise in one fixed candidate. The extracted vector may depend on the already-fixed learner, which is compatible with the universal fixed-instance PAC premise. Both risk inequalities concern literally the same deterministic expectation over the same size-(n) iid sample law and learner coins. Strictness, fixed-size mode, replacement-DP convention, and population-risk metric are preserved.
- Local adversarial test: The invocation remains valid at (N=N_0), (M=8), (n=1), (n<k), and (k=2); (k=3) and every larger (k) are covered by the same universal interfaces. Endpoint thresholds, point-mass block laws, randomized improper outputs, equality in either primitive (\delta)-bound, and smaller (\varepsilon,\delta) do not alter the identical-object contradiction.
- Contribution to target step: It proves that the exact strict negation of R1 is impossible under the approved candidate premises.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: The proposition fixes the once-for-all constants and then restores the exact candidate quantifier order from `setting.md`: (k\ge2), (N\ge N_0), integer (n\ge1), admissible (\varepsilon,\delta), arbitrary randomized computationally unrestricted improper (A), followed by the central-DP and distribution-free realizable-PAC antecedents. Its conclusion is exactly (n\ge ak\log_2^*N), with no rounding, asymptotic qualification, or extra condition.
- Proof validity: For an arbitrary approved candidate, failure of the weak real inequality (n\ge ak\log_2^*N) is exactly the strict inequality (n<ak\log_2^*N). Lemma~\ref{lem:step-015-negated-target} excludes that strict negation. The total-order inference is valid regardless of whether (ak\log_2^*N) is integral, so no ceiling or floor may or need be inserted.
- Cited-result and assumption audit: This unit uses only the preceding named lemma. Its theorem-facing assumptions are exactly the three primitive setting assumptions; every hard-regime, source-privacy, simulation, prior, extraction, and fixed-instance fact has already been derived in an accepted dependency. No conditional hypothesis survives into the conclusion.
- Rigor checklist: The existential theorem constants precede all candidate quantifiers and are independent of (k,N,n,\varepsilon,\delta,A). The implication is deterministic and pointwise, (n) remains the exact fixed sample size, and no probability, expectation, supremum, or limit interchange occurs in the closure step.
- Local adversarial test: Equality (n=ak\log_2^*N) is correctly allowed by the weak conclusion. Nonintegral right-hand sides are handled by real order rather than an unproved integer reformulation. The smallest allowed (n), floor-budget branch, candidate-domain boundary, and all privacy/PAC boundary cases remain inside the universal statement.
- Contribution to target step: It discharges the local contradiction hypothesis and exports the exact public R1 theorem used by `step_016` and final assembly.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The only two nontrivial obligations are (i) activating the accepted fixed-instance contradiction for the same candidate under the strict negation and (ii) converting impossibility of that strict negation into the universal weak lower bound. They are exactly the two named local units. Constant calibration, exact-budget control, source privacy membership, fixed-instance extraction, and probability conversion are consumed from accepted dependencies rather than reproved or assumed. The proof explicitly displays the numerical clash, preserves the primitive candidate-(\delta) conjunction, and uses no diagnostic statement as mathematical authority.

## Target Claim Audit

The proof establishes the exact accepted sketch-row claim and the formalized goal's candidate order. Universal constants

\[
a=b_*/16,\quad c_\delta=d_*,\quad \varepsilon_0=0.1,\quad
\alpha_0=\beta_0=2^{-13},\quad N_0
\]

are fixed before all candidate choices. For every allowed (k,N,n,\varepsilon,\delta,A), the exact three primitive antecedents imply (n\ge ak\log_2^*N). The proof neither strengthens the antecedent, weakens the learner or distribution scope, changes the adjacency/risk modes, nor substitutes an averaged, conditional, rounded, or asymptotic conclusion. The strict negation is exact, and equality in the final lower bound remains permitted.

## Explicit Rate Audit

The step satisfies the R1 rate contract. It exposes (k,N,n,\varepsilon,\delta), (L_N=\log_2^*N), and exact (M=m_{n,k}); the learner is universally quantified rather than hidden in a constant. The public constants are explicitly (a=b_*/16), (c_\delta=d_*), (\varepsilon_0=0.1), (\alpha_0=\beta_0=2^{-13}), and the accepted fixed (N_0). Their only provenance is the universal one-block constants, and none depends on a candidate, learner, instance, sample, or random choice. Constants are fixed before candidates; the theorem mode is deterministic and pointwise; the horizon is the exact fixed (n) with exact auxiliary budget (M); and the metric is population 0-1 risk. Both candidate-(\delta) bounds remain theorem-facing, no auxiliary tolerance is introduced, and the only final simplification is the displayed (2^{-9}>2^{-12}).

The sketch also records \(\operatorname{VC}\), \(\operatorname{LD}\), and \(|C|\) as setting-derived structural quantities. This step neither drops nor hides dependence on them: its exact public R1 interface is intentionally in (k,N), while the accepted sketch assigns their deterministic re-expression to `step_016`. No public-rate specialization is performed here, so no separate Rate Specialization Bridge is needed at this step. The unrestricted improper, fixed-size, two-term-(\delta), and population-risk baselines, including (n=1), (n<k), (M=8), (k=2,3), and (N=N_0), are preserved without loss.

## Notation Surface Audit

The notation surface is valid and economical. The theorem constants and Proposition~\ref{prop:step-015-exact-closure} are `public-facing`; (L_N), exact (M), and Lemma~\ref{lem:step-015-negated-target} are `appendix-local`; and the dependency-produced vector (\boldsymbol z^*\), its product law, and its target are `proof-local` and disappear after the contradiction. Every helper has setting or accepted-dependency provenance. No proof-local dictionary leaks into the public conclusion, no one-off alias obscures a bound, and the exported interface contains only the constants, primitive antecedents, and exact R1 inequality needed downstream.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-005-certificate} supplies the exact scalar hard-regime and source-privacy interface under the strict negation. The candidate's primitive central-DP and distribution-free PAC assumptions remain attached to the same map and sample size. Accepted Proposition~\ref{prop:step-014-fixed-contradiction} then supplies the same-instance numerical contradiction. Lemma~\ref{lem:step-015-negated-target} combines those named interfaces, and Proposition~\ref{prop:step-015-exact-closure} applies the exact logical negation to conclude (n\ge ak\log_2^*N). These results jointly imply the target with no missing bridge, unlisted dependency, bare unit-ID authority, or downstream assumption.

## Review Rationale

Both local units are valid under the hash-matched setting, accepted sketch, and accepted dependency interfaces. The proof fixes universal constants before candidates, retains every candidate-regime and learner quantifier, activates the fixed-instance contradiction only after the strict negation supplies its exact hard-regime premises, and discharges that negation by the correct real-order logic. Its explicit-rate, boundary, assumption-provenance, notation-surface, and public R1 interfaces are complete. No proof, dependency, or sketch repair is required, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest sound outcome.
