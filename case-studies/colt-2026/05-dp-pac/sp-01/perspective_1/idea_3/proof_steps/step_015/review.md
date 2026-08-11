# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_015`
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_015/proof.md`, SHA-256 `0be35cd431201d82d80701c7be8a27d210b6aaff995de9d88fd8ab637d80bcb9`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`, status `ACCEPTED`
- Accepted dependency `step_001` proof/review: SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a` / `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, status `ACCEPTED`
- Accepted dependency `step_003` proof/review: SHA-256 `fc66927e8f05a0784e367e04507ba48fc174e9a36f7ad2fc9bbcf94f4ba608fc` / `992e19494f947b9ecbf5bbf0dac7653b262cd3a7e491ebe6adbf3b461a1ef530`, status `ACCEPTED`
- Accepted dependency `step_005` proof/review: SHA-256 `d00fe96f2e35c4fffc4b48aa926dc259c79f94597d2ea523fd4f0552e2646d0f` / `bfabe6904f48c9e512cb239baee1caeae1473038ecdab62ff333f2a29cd44226`, status `ACCEPTED`
- Accepted dependency `step_006` proof/review: SHA-256 `491aa4890100830eb2aadb8856fc6c22ff45f25492aa7ee9f1abd57cdb4eea14` / `a76af75f1103f2908f584dd03d46daf429d6c49e05502832d7d7b5c5d3e11d92`, status `ACCEPTED`
- Accepted dependency `step_014` proof/review: SHA-256 `fdda03bc4eddf577fe529168c38537b610187f60fd3aac85cededc24b3861572` / `cf6d387bbf0b239ad43583d608b02c96355006921a8787ebec0878399a2619f6`, status `ACCEPTED`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-015-global-upper} states the complete arbitrary-\(\delta\) upper clause required by the binding row: the specified routed quotient rule is a measurable Markov kernel, is all-input replacement-\((\varepsilon,\delta)\)-DP, and is PAC for every target and arbitrary probability measure at \(n\ge\lceil C_{\rm up}Q_{\oplus}\rceil\). It also states both the sample-complexity consequence and public quota bound, explicitly without Assumption~\ref{assump:candidate-delta-budget}.
- Proof validity: Accepted Propositions~\ref{prop:step-003-product-kernel} and \ref{prop:step-003-joint-composition} give the exact tuple kernel, measurable decoder/risk events, and privacy on every labeled adjacent input. Accepted Proposition~\ref{prop:step-005-pac-closure} gives the exact closed PAC event uniformly in \(c,D\), while accepted Lemmas~\ref{lem:step-001-output-measurability} and \ref{lem:step-001-risk-pullback} identify a legal unrestricted output and the exact raw risk. The successful-sample-size set is nonempty because it contains the displayed integer threshold; well-ordering of \(\mathbb N\) therefore gives an attained least element no larger than that threshold. Accepted Proposition~\ref{prop:step-006-public-quota-bridge} gives the second inequality without an omitted ceiling or cardinality term.
- Cited-result and assumption audit: Every dependency is hash-matched and accepted, and each consumed conclusion is restated in current notation before use. The only theorem-facing assumptions are Assumptions~\ref{assump:canonical-product}, \ref{assump:vc-one-factors}, \ref{assump:countably-coded-evaluation}, and \ref{assump:global-privacy-range}. Kernel legality, all-input privacy, PAC utility, and quota control remain accepted derived outputs rather than promoted primitive assumptions. No external paper result is invoked directly in this assembly.
- Rigor checklist: Quantifiers cover every fixed sample size above threshold, every full-product target, every arbitrary-support \(D\), every adjacent labeled dataset including nonrealizable inputs, and every measurable output event. The utility probability is over both the iid sample and learner randomness, privacy is pointwise, and the horizon is fixed-sample. Since the upper conclusion uses only \(0<\delta<1\), neither lower delta cap enters implicitly.
- Local adversarial test: If a distribution has zero-mass blocks or infinite raw support, the accepted exact risk and weighted PAC interfaces remain valid. If adjacent inputs are padded, inconsistent, or nonrealizable, accepted all-input privacy still applies. Taking \(\delta\uparrow1\) within the allowed open range changes the quota but does not activate the candidate-wise lower assumption.
- Contribution to target step: Supplies the measurable global upper kernel, all-input DP, arbitrary-distribution PAC theorem, finite attained sample complexity, and public quota rate.
- Verdict: PASS
- Repair direction: None

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-015-candidate-lower} states the exact fixed-candidate lower theorem for an unrestricted measurable replacement-private learner. It retains both the global \(1/[n\log(n+1)]\) cap and every factor-budget cap, concludes \(n\ge c_{\rm low}M\), and records the deterministic full-product strict PAC-failure witness on the contradicted branch.
- Proof validity: Equations (11)-(12) are exactly the two conjuncts of Assumption~\ref{assump:candidate-delta-budget} at the same candidate and exact budgets. Accepted Proposition~\ref{prop:step-014-candidate-closure} therefore gives the lower comparison for the same \(n,A_n\), output convention, and exact risk. Accepted Proposition~\ref{prop:step-014-deterministic-atom}, as used in that closure, removes the finite proof prior and yields a target \(c\in C\), a legal mixture \(D\) with \(D(X_i)=\omega_i\), and the strict event \(R_D>1/16\). For an arbitrary learner on a candidate with \(n<c_{\rm low}M\), failure of the universal PAC premise already supplies such a task by logical negation; assuming that premise activates the accepted construction and yields the same contradiction. Thus the forward and failure-witness formulations agree.
- Cited-result and assumption audit: The lower producer statements are accurately restated, including the unrestricted possibly improper and joint learner, arbitrary measurable output model, exact strict event, and one-candidate horizon. The candidate budget is a primitive static numerical check; all hard priors, simulations, couplings, risk floors, and deterministic witnesses are accepted derived objects. A finite-support hard task may be selected as an allowed witness but is not imposed as a theorem or learner restriction.
- Rigor checklist: The same \(n\), \((m_{n,i})_i\), \(\delta\), learner, target class, and risk metric are used throughout. Equality in either non-strict delta cap is allowed, \(n=1\) is covered, and no uniform-in-candidate, asymptotic, properness, factorwise-output, quotient-output, or computational restriction is introduced. The strict failure event is exactly the complement of the closed PAC success event.
- Local adversarial test: Dropping either delta conjunct would invalidate the accepted source scope, but both are displayed and retained. A learner with an arbitrary joint improper output is still within the accepted lower quantifier. A candidate at which either cap fails is not claimed to satisfy this lower result.
- Contribution to target step: Supplies the candidate-wise unrestricted lower theorem and the exact deterministic failure branch.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-015-conditional-sandwich} states the conditional characterization at the actual attained sample complexity \(n_*\), requires both lower delta conditions only after that substitution, gives all three exact inequalities, and explicitly leaves only the upper conclusion when the check fails.
- Proof validity: Proposition~\ref{prop:step-015-global-upper} first proves that the defining subset of \(\mathbb N\) is nonempty, so its least element \(n_*\) is finite, belongs to the set, and has a witnessing unrestricted private PAC learner. Equations (14)-(15) are precisely Assumption~\ref{assump:candidate-delta-budget} at that integer, allowing Proposition~\ref{prop:step-015-candidate-lower} to be applied without a candidate switch. Since every \(q_i\) and \(C_{\rm up}=65536\) are integers, \(C_{\rm up}Q_{\oplus}\) is an integer and equation (17) removes the outer ceiling exactly. Multiplication of the accepted public quota inequality by the positive universal \(C_{\rm up}\) proves the last bound.
- Cited-result and assumption audit: Both local propositions used here have already stated their complete assumptions and scopes. No candidate condition is used to define or prove finiteness of \(n_*\); it is checked only after the arbitrary-\(\delta\) upper theorem. The lower condition is not asserted as a uniform schedule or inferred from one of its conjuncts.
- Rigor checklist: Quantifier order is upper existence, definition of the attained least sample size, candidate-condition check at that integer, and only then lower substitution. The hidden constant in the final big-O statement is the universal product \(C_{\rm up}C_{\rm quota}\). Probability, horizon, and exact-risk modes are unchanged.
- Local adversarial test: If the first cap holds but one factor cap fails, or conversely, no lower claim at \(n_*\) is made. This failure cannot affect the already established upper theorem. There is no circular use of a lower bound to prove that \(n_*\) exists.
- Contribution to target step: Supplies the exact conditional \(n_*\) sandwich and its public rate with no hidden ceiling residual or uniform-in-candidate upgrade.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-015-one-factor-upper} states the required theorem-facing baseline by object identity: when \(k=1\), the routed learner is the same measurable quotient-first Yan factor kernel, its input is an unpadded quota-length iid prefix, \(Q_{\oplus}=q_1\), and quotient decoding has zero risk residual. It retains the stronger accepted \((1/64,1/4096)\) factor utility rather than only the generic global PAC conclusion.
- Proof validity: The one-block whole-domain partition gives \(X_1=X\) and \(J_1(S)=n\) pointwise, while the definitions give \(M=s_1\) and \(Q_{\oplus}=q_1\). Because \(C_{\rm up}\ge1\), every theorem sample size satisfies \(n\ge q_1\), so no padding enters the factor input. The setting then identifies the coordinate law with \(\bar A_1^{\rm Yan}\). Accepted product-kernel, decoder, exact-risk, PAC-closure, and quota-bridge results give measurability, the same quotient output, exact arbitrary-support risk, stronger factor utility, and the same quota order. The inherited output notation \(\bar H_1\) is the sole coordinate of this accepted factor kernel.
- Cited-result and assumption audit: The result uses no direct appeal to Yan's paper; all source-sensitive mechanism, measurability, totalization, and utility claims enter through accepted dependency propositions with current-notation restatements. No finite raw support, properness, ordering, or set-theoretic-only surrogate is introduced.
- Rigor checklist: The first \(q_1\) quotient records remain iid under every arbitrary-support \(D\), the probability includes sample and factor-kernel randomness as in the accepted interface, and the decoded risk is exact distributional binary risk. Only one factor privacy cost is present, so cross-factor composition is absent rather than merely bounded.
- Local adversarial test: At \(d_1=1\), the same definitions give \(M=s_1=2\) and the exact displayed quota. At \(n=q_1\), the prefix is exactly full and contains no padding. Countably infinite evaluation quotients remain covered by the accepted measurable quotient-first wrapper.
- Contribution to target step: Proves the exact unpadded one-factor Yan upper baseline at the same quota order.
- Verdict: PASS
- Repair direction: None

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-015-one-factor-lower} states the required unrestricted VC/ALMM baseline, including \(\omega_1=1\), \(M=s_1\), the exact budget \(m_{n,1}=\max\{8,4n\}\), deterministic zero overflow, both lower delta conjuncts, and the exact strict PAC-failure conclusion for the same arbitrary improper learner.
- Proof validity: At \(k=1\), the definitions give \(\omega_1=s_1/M=1\) and \(\lceil4n\omega_1\rceil=4n\). Every one of the \(n\) global mixture rows lies in the sole factor, so the one-use simulation requests exactly \(n\) rows. Since \(m_{n,1}\ge4n\ge n\), the overflow event is empty. Accepted Proposition~\ref{prop:step-014-candidate-closure} then preserves its ordinary unrestricted VC branch at bounded iterated-log complexity and its unrestricted ALMM branch at high complexity, with the deterministic strict PAC-failure conversion already completed. Substituting \(M=s_1=1+\log^*(d_1+1)\) gives the displayed lower rate.
- Cited-result and assumption audit: The dependency review explicitly accepts the two source branches, zero-overflow specialization, strict event, and unrestricted output scope. The present step does not invoke VC or ALMM by title or theorem number and does not narrow the learner to a proper, factorwise, finite-output, quotient-coded, or efficient rule. Candidate admissibility remains exactly the setting condition.
- Rigor checklist: Overflow is proved zero pointwise, not bounded in probability. The floor-eight budget, \(n=1\), low- and high-complexity branches, and equality in either candidate delta cap are all compatible with the derivation. No low-factor mass is discarded at weight one.
- Local adversarial test: When \(4n<8\), the floor-eight branch only enlarges the available factor budget and overflow is still impossible. When \(4n\ge8\), the budget is exactly \(4n\). In either case every requested row is used at most once, and the accepted unrestricted lower conclusion applies on its stated fixed-candidate scope.
- Contribution to target step: Proves the exact one-factor VC/ALMM lower baseline with zero overflow and no learner-scope loss.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the five-unit map. Global upper closure and sample-complexity attainment are in Proposition~\ref{prop:step-015-global-upper}; candidate-wise lower closure and the strict failure witness are in Proposition~\ref{prop:step-015-candidate-lower}; the attained-candidate substitution and exact ceiling removal are in Proposition~\ref{prop:step-015-conditional-sandwich}; and the two baseline-invariance obligations are separately proved in Propositions~\ref{prop:step-015-one-factor-upper} and \ref{prop:step-015-one-factor-lower}. Universal-constant simultaneity follows directly from the three restated accepted constants, and the final big-O statement is the immediate form of the displayed exact inequality. Mathematical authority is supplied by theorem-style labels rather than local unit IDs, subsection names, workflow IDs, or diagnostic artifacts.

## Target Claim Audit

The proof establishes the exact `step_015` sketch-row claim and the complete formalized goal. The upper theorem is measurable, all-input private, and distribution-free for arbitrary \(0<\delta<1\) under Assumption~\ref{assump:global-privacy-range}. The lower theorem remains candidate-wise and unrestricted and uses both conjuncts of Assumption~\ref{assump:candidate-delta-budget}. The two scopes meet only after the condition is checked at the attained \(n_*\). The public quota and sample-complexity rates have universal constants and no class-cardinality, quotient-cardinality, support, balance, properness, output, or efficiency dependence. Both exact \(k=1\) baselines are preserved. The result is correctly labeled `conditional` and material but partial: it covers the declared canonical finite product of countably coded VC-one factors, does not cover uncountable evaluation quotients or arbitrary finite-Littlestone classes, and does not claim to close the parent source problem.

## Explicit Rate Audit

The step exposes \(k\), \((d_i,s_i,q_i,Q_i,m_{n,i})_i\), \(M=M_{\oplus}(C)\), \(Q_{\oplus}\), \(n\), \(n_*\), \(\varepsilon\), and \(\delta\). It records the fixed accuracy/confidence values, privacy split, logarithm convention, and source constants. The constants \(C_{\rm up}=65536\), \(C_{\rm quota}=\max\{1,K_Y+1/20\}\), and \(c_{\rm low}>0\) are inherited universal constants and are independent of every class, factor, cardinality, distribution, learner, candidate, and privacy parameter. Upper utility is high probability over iid data and learner randomness; privacy is pointwise in adjacent datasets and measurable events; the lower result is a fixed-candidate impossibility statement; and the metric is exact distributional binary \(0\)-\(1\) risk. Accepted Proposition~\ref{prop:step-006-public-quota-bridge} contains the heterogeneous-log and quota-ceiling absorption, while equations (17)-(18) remove the final sample-threshold ceiling exactly. Both lower delta conjuncts are retained at the actual candidate, and failure of either leaves the arbitrary-\(\delta\) upper result intact. The two one-factor propositions provide the required baseline-reduction checks without a conservative loss.

## Notation Surface Audit

The public-facing aliases \(M=M_{\oplus}(C)\) and \(n_*=\operatorname{SC}_{\varepsilon,\delta}(C)\) are setting-defined quantities, and \(n_*\) is introduced only after finiteness is proved. Equations (11)-(12) and (14)-(15) are proof-local expansions of the setting's candidate budget; the one-factor row count is a proof-local deterministic specialization. The constants are inherited from accepted dependencies, and \(\bar H_1\) is the inherited sole output coordinate of the accepted factor kernel. No new helper dictionary, event, threshold, rate, or generated invariant is exported. The proof exposes only the minimal theorem interface and classifies its genuinely new aliases without hiding assumption or constant provenance.

## Target-Step Assembly Audit

Accepted Lemmas~\ref{lem:step-001-output-measurability} and \ref{lem:step-001-risk-pullback} provide the legal decoded output and exact risk. Accepted Propositions~\ref{prop:step-003-product-kernel} and \ref{prop:step-003-joint-composition} provide the global kernel and all-input privacy. Accepted Proposition~\ref{prop:step-005-pac-closure} provides arbitrary-distribution PAC utility and the stronger one-factor utility. Accepted Proposition~\ref{prop:step-006-public-quota-bridge} provides the exact public rate, and accepted Propositions~\ref{prop:step-014-deterministic-atom} and \ref{prop:step-014-candidate-closure} provide the candidate-wise unrestricted lower theorem and strict witness. The five named local propositions assemble these interfaces without changing their assumptions, quantifiers, probability modes, metrics, candidate identity, or baseline conclusions. They jointly imply the exact conditional theorem, and no unreviewed bridge or dependency flaw remains.

## Review Rationale

`ACCEPTED` is warranted because all supplied artifact hashes match, every dependency has a matching accepted review, all five local proposition statements and derivations are valid under their displayed primitive conditions and accepted interfaces, and their named assembly proves the exact binding target. The controller-identified high-risk obligations all pass: global kernel/measurability/all-input DP/PAC, ceiling-resolved public quota control, candidate-wise unrestricted lower scope, both delta conjuncts, attained-sample-complexity substitution and its failure branch, arbitrary-\(\delta\) scope separation, exact unpadded Yan and zero-overflow VC/ALMM baselines, universal constant dependence, and the material-partial `conditional` source-gap label. No proof, dependency, or sketch repair is required, so `None` is the smallest retry target.
