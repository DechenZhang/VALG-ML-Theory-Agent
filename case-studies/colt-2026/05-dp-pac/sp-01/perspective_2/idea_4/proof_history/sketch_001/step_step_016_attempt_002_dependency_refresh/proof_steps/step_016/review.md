# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_016
- Unit attempt: 2
- Review attempt: 2
- Reviewed proof artifact: perspective_2/idea_4/proof_steps/step_016/proof.md
- Reviewed proof SHA-256: 95f363e5cf54ca4ba055d3ebdb62b544f424484f99fc80db20b6ea6cb73b973c
- Binding setting SHA-256: a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4
- Binding proof-sketch SHA-256: cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7
- Binding proof-sketch-review SHA-256: 302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789
- Accepted dependency proof/review SHA-256 pairs:
  - step_002: 880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f / 090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5
  - step_003: 092c5ba976f43a4b7d1bf746aba05c1caa0d49f2bd3de55a254f58dc6e4c4a7f / 5ba08c887b44fc901e74bd3bc2793a06e3accf2a7d999f62532ec042c211eb87
  - step_014: 9f040e514e388c5cd8feb190e9c4bfba48ba730be295d79c979304ce4742bbb8 / 04198f3e0db38202d74470af46f66ddf0a012f990e19ebdd2d3b8ffe75768bab
  - step_015: db98cdf01c034c742d9c7df0898d227e60a5d796c4211b7b7c26704b5abcce38 / ec4b5bc1759d73c4802108da738617ddece09d8c387c6cd4527bd23ec5f1a837
- Evidence scope: Fresh review of the live setting, accepted sketch and sketch review, current Unit Attempt 2 proof, and the exact live accepted dependency claims/reviews. No proof_history/ artifact or global diagnostic was read or used as mathematical evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-zero} states the exact common \(d=0\) branch required by the sketch: \(v=0\), singleton \(C\) and \(\bar C\), one identical quotient/raw \(N=0\) Dirac law for all three arms, \((0,0)\)-DP, zero decoded risk, and \(m_C=0\).
- Proof validity: Accepted Lemma~\ref{lem:step-002-ld} proves the singleton and \(v=0\) conclusions. Accepted Proposition~\ref{prop:step-002-factorization} transfers the singleton exactly to \(\bar C\), and accepted Proposition~\ref{prop:step-002-risk} gives zero decoded risk for every \(D,c\). The locally defined finite law is the unique Dirac law, while the accepted VC- and old-arm results identify their null branches with the same output. Data independence gives exact privacy, and the definition of \(m_C\) gives zero sample complexity.
- Cited-result and assumption audit: The theorem statement names both primitive conditions needed for the structural null branch and every accepted theorem-style dependency it consumes. Realizability and the positive-dimensional parameter regime are not smuggled into the derivation; the arm citations identify already accepted null-law outputs.
- Rigor checklist: The argument allows a singleton concept that is nonconstant on \(X\), so \(Q_C\) need not be a singleton. It evaluates no expression involving \(v^{-1}\), positive sample size, ceilings, or a \(\delta\)-schedule.
- Local adversarial test: Distinct raw quotient cells, arbitrary \(D\), the unique empty input, and the possibility that the unique concept takes both labels all retain the same decoded target and zero risk.
- Contribution to target step: It fixes the exact common baseline before the finite, old, and VC positive-dimensional laws are compared.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-finite-kernel} constructs exactly the required fixed-range finite quotient law for every finite \(M=|C|\) and every \(N\in\mathbb N_0\), including arbitrary labels and \(N=0\), and exports the raw pullback on the setting's \(H_C,T_N,\operatorname{Dec}_C\) interface.
- Proof validity: The quotient bijection gives a fixed nonempty set \(\bar C\) of exactly \(M\) Borel points. Every weight is positive, the normalizer is a finite positive sum, and (2.4) is therefore an everywhere-defined Borel probability measure. Countability of \(Z_Q^N\) makes every event-mass coordinate measurable.
- Cited-result and assumption audit: The statement names accepted quotient factorization and record transport, accepted Lemma~\ref{lem:step-003-countable-promotion}, and the exact accepted quotient-kernel/raw-pullback propositions. The scope of accepted Step 003 is respected: its generic proposition explicitly accepts a separately supplied totalized finite-class pointwise law, and the raw-pullback result applies only after the proof has made this law a kernel produced there.
- Rigor checklist: No measurable selector, empirical subclass, finite surrogate, propriety condition, or realizability premise appears. Singletons of \(H_C\) are Borel under the setting's standard-Borel conclusion, and every finite sum is well-defined.
- Local adversarial test: \(M=1\), \(N=0\), duplicate records, nonrealizable labels, finite or countably infinite \(Q_C\), and arbitrary variation of weights between input atoms all preserve totality and measurability.
- Contribution to target step: It supplies the complete measurable finite-arm law required before privacy or utility is asserted.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-finite-dp} proves pure \(\varepsilon\)-DP for both quotient and raw finite laws on every replace-one labeled input, then correctly weakens it to \((\varepsilon,\delta)\)-DP for every allowed \(\delta\).
- Proof validity: Replacing one record changes each mistake count by at most one. The numerator is therefore multiplied by at most \(e^{\varepsilon/2}\), while the normalizer is bounded below by \(e^{-\varepsilon/2}\) times its neighbor, giving the exact \(e^\varepsilon\) likelihood-ratio bound for every measurable event. Accepted raw record transport converts a raw replacement to equality or one quotient replacement.
- Cited-result and assumption audit: The statement names the record-map authority and the prior finite-kernel proposition. Realizability, a good event, and any external exponential-mechanism theorem are correctly absent.
- Rigor checklist: Both directions of the pointwise weight comparison are used, the normalizer is strictly positive, and the proof covers arbitrary measurable output events rather than only support atoms.
- Local adversarial test: Same-cell raw replacements, label-only changes, nonrealizable datasets, \(N=0\), and events of zero numerator mass all satisfy the displayed inequality.
- Contribution to target step: It establishes the finite arm's all-input privacy independently of its PAC analysis.
- Verdict: PASS
- Repair direction: None.

### unit_004: lemma

- Statement fidelity: Lemma~\ref{lem:step-016-finite-tail} states the exact unconditional raw decoded-risk tail, uniformly over every \(D,c\), for every finite \(M\) and \(N\in\mathbb N_0\).
- Proof validity: Realizability makes the target's mistake count zero and hence its normalizer contribution one. For each fixed \(\bar h\), the exact Bernoulli transform is
  \[
  \mathbb E e^{-(\varepsilon/2)L_{\bar S}(\bar h)}
  =[1-p_{\bar h}(1-e^{-\varepsilon/2})]^N.
  \]
  The inequalities \(1-u\le e^{-u}\) and
  \(1-e^{-\varepsilon/2}\ge\varepsilon/4\) are correctly derived for
  \(0<\varepsilon\le1\). Summing over the fixed finite bad set gives
  \(M e^{-N\varepsilon\alpha/4}\).
- Cited-result and assumption audit: Accepted iid pushforward and exact risk transfer are restated and used at their exact scopes. The proof integrates the actual mechanism weights and introduces no generalization event, empirical-to-population theorem, or confidence split.
- Rigor checklist: The probability is over both iid data and mechanism randomness, the bad set is fixed after \(D,c\) rather than selected from the sample, and the strict risk condition \(p_{\bar h}>\alpha\) is weakened in the correct direction.
- Local adversarial test: \(N=0\), \(M=1\), risk arbitrarily close to \(\alpha\), repeated quotient atoms, improper ambient outputs, and arbitrary distributions all retain the bound and exact raw/quotient probability conversion.
- Contribution to target step: It supplies a complete finite-arm PAC tail without an invented sampling term.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-finite-arm} assembles a complete common-interface finite learner, handles the exact \(d=0\) branch, chooses the positive-branch integer sample size, proves failure at most \(\beta\), and derives \(N_{\mathrm{fin}}\le8R_{\mathrm{fin}}\). It assigns only the finite arm cost \(+\infty\) when \(C\) is infinite.
- Proof validity: The threshold (5.1) makes \(N_{\mathrm{fin}}\varepsilon\alpha/4\ge\log M+\log(1/\beta)\), so the direct tail is at most \(\beta\). With \(x=4(\log M+\log(1/\beta))/(\varepsilon\alpha)\), the parameter range gives \(x>16\), hence \(\lceil x\rceil\le x+1\le2x\). Then \(\log M\le\log^+M\) and the nonnegative second summand of \(R_{\mathrm{fin}}\) yield the exact factor \(8\).
- Cited-result and assumption audit: The statement names all four primitive assumptions and all four prior theorem-style results used in assembly. Finiteness is a target case split, not an added theorem assumption or a generated condition.
- Rigor checklist: The \(M=1\) case uses the exact zero-sample law instead of the positive formula. Every ceiling is paid, \(K_{\mathrm{fin}}=8\) and \(q_{\mathrm{fin}}=0\) are numerical, and no \(\Lambda\) factor or hidden class dependence is introduced.
- Local adversarial test: \(M=1\), \(M=2\), \(\beta\uparrow1/4\), \(\alpha\uparrow1/4\), \(\varepsilon=1\), and infinite \(C\) all follow the stated branch without a missing denominator or finite surrogate.
- Contribution to target step: It exports the third complete arm in the same kernel, output, decoder, privacy, risk, and confidence modes as the accepted Lyu arms.
- Verdict: PASS
- Repair direction: None.

### unit_006: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-minimum} states the exact deterministic comparison of three complete learner certificates and the common \(K_*\Lambda^6\min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}\) bound, with only \(R_{\mathrm{fin}}\) disabled for infinite \(C\).
- Proof validity: Each table row is already a complete kernel learner with the same output, decoder, adjacency, risk, probability, and confidence interfaces. Choosing the least certified threshold with a fixed tie rule before observing data selects one law and its own integer sample size. Thus \(m_C\le N_{j_*}\le\min_j B_j\). Componentwise \(B_j\le K_*\Lambda^6R_j\), with \(\Lambda\ge1\), implies the displayed minimum bound.
- Cited-result and assumption audit: The theorem statement names all four primitive assumptions, the local zero/finite-arm results, accepted quotient-risk transfer, the accepted complete VC-arm theorem, and the old kernel, privacy, PAC, and rate propositions. These are the exact theorem-style authorities used by the table and comparison; no diagnostic or broad "accepted arm" prose substitutes for them.
- Rigor checklist: \(K_*=\max\{8,K_{\mathrm{old}},K_{\mathrm V}\}\) is universal. The old kernel \(K_{\mathrm o}\) is never confused with the scalar \(K_{\mathrm{old}}\). Different arms may use different sample sizes and different laws; only their theorem interfaces are identified.
- Local adversarial test: A finite-class arm winning, either Lyu arm winning, equal thresholds, infinite \(C\), and \(d=0\) all give one admissible learner rather than a mixture or a union-bound construction.
- Contribution to target step: It proves the final sample-complexity minimum only after all three arms have complete matching interfaces.
- Verdict: PASS
- Repair direction: None.

### unit_007: proposition

- Statement fidelity: Proposition~\ref{prop:step-016-frontier} states all required \(d=0\), \(v=1\), \(v=d\), \(v=o(d)\), finite/infinite-class, fixed-\(\delta\), scheduled-\(\delta\), and remaining-scope conclusions without claiming a lower bound, characterization, or unrestricted solution.
- Proof validity: The direct shattered-set-to-tree construction proves \(1\le v\le d\) on \(d\ge1\). The identities \(vd^4/d^5=v/d\) and \(vd^4=d^5\) at \(v=d\) are exact exposed-factor comparisons. Since the selected arm has the least threshold, \(N_*\le B_{\mathrm V}=K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\); multiplying by \(\delta\) proves the selected-law limit under exactly the accepted VC schedule. The standalone old-arm limit is kept under its separate accepted premise.
- Cited-result and assumption audit: The statement names all four primitive assumptions, all local results it uses, the accepted VC-arm theorem, and the accepted old rate and boundary propositions. The finite/infinite and schedule claims therefore have theorem-style authorities in the statement itself.
- Rigor checklist: Fixed positive \(\delta\) is separated from asymptotic schedules. Pure privacy of the finite arm is not misread as \(N_{\mathrm{fin}}\delta\to0\). At fixed \(\alpha,\beta,\varepsilon\), the confidence terms are fixed and \(v\ge1\), so the three permitted tilde profiles are exactly \(\log^+|C|,d^5,vd^4\).
- Local adversarial test: \(d=0\), \(d=v=1\), \(v=1<d\), \(v=d\), \(v=o(d)\), finite and infinite \(C\), fixed positive \(\delta\), the selected learner under the VC schedule, and the standalone old learner under only its own schedule all follow the stated branch.
- Contribution to target step: It preserves every baseline and records the conditional countable-quotient boundary and the remaining open parent problem.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the seven-unit map. The common null law, finite pointwise law and kernel promotion, pure privacy, unconditional PAC tail, ceiling-aware finite rate, deterministic complete-arm comparison, and boundary/schedule frontier are separately stated and proved. The finite bad-risk sum, the direct \(v\le d\) tree construction, the extended-real disabling convention, and the selected-sample schedule squeeze occur inside the named units whose statements export them. No subsection title, local unit ID, dependency review, archived artifact, or global diagnostic is used as mathematical authority.

## Target Claim Audit

The seven named results prove the exact accepted step_016 row and controller-expanded target. For finite \(C\), the proof constructs a fixed-range quotient law on all inputs, promotes it within the exact accepted Step 003 scope, pulls it back through \(T_N\), proves pure all-input privacy, proves unconditional uniform realizable PAC utility, pays the integer ceiling, and derives the setting's exact \(R_{\mathrm{fin}}\) envelope. For infinite \(C\), it assigns \(+\infty\) only to that arm and constructs no surrogate. The comparison selects one already complete learner, and the final proposition preserves all required dimensional, cardinality, schedule, and conditional-scope baselines. Quantifiers, risk mode, confidence, output codomain, decoder, raw adjacency, and the finite-or-countable quotient restriction all match the setting.

## Explicit Rate Audit

- Exposed variables are \(|C|,d,v,\alpha,\beta,\varepsilon,\delta\). The finite arm exposes cardinality only through \(\log^+|C|\); the accepted old and VC rates remain unchanged.
- The finite constant is exactly \(K_{\mathrm{fin}}=8\) with \(q_{\mathrm{fin}}=0\). The inherited \(K_{\mathrm V}\) and \(K_{\mathrm{old}}\) are universal scalars, so \(K_*=\max\{8,K_{\mathrm{old}},K_{\mathrm V}\}\) is universal and the common exponent \(6\) is explicit.
- The probability mode is all-input raw replacement DP plus unconditional fixed-sample realizable PAC over iid sampling and the single selected mechanism. The norm is binary population risk under exact quotient/raw equality. There is no random or data-dependent arm selection.
- Equations (4.5)-(4.7) prove the direct finite tail; (5.3)-(5.7) verify the PAC threshold, ceiling, \(\log^+\) boundary, and factor \(8\); (6.3)-(6.4) verify the common minimum without dropping an arm-specific term.
- The selected-law schedule is valid because \(N_*\le B_{\mathrm V}\), not because the selected law is assumed to be the VC law. The standalone old schedule remains separate, and no fixed positive \(\delta\) is claimed to produce an \(N\delta\) limit.
- Baseline reduction is exact: \(d=0\) uses no samples; \(v=1\) exposes \(d^4\); \(v=d\) gives \(vd^4=d^5\); finite classes retain \(\log^+|C|\); and infinite classes disable only the finite arm. Hidden factors contain no positive power of \(d,v,\log^+|C|\).

## Notation Surface Audit

The notation surface is economical and correctly classified. Setting-defined objects and the specialized finite learner at \(N_{\mathrm{fin}}\), its sample size, \(K_{\mathrm{fin}}\), \(K_*\), and the selected-learner interface with \(N_*\) are public-facing. The generic families \(K^{\mathrm{fin}}_{C,N}\) and \(A_N^{\mathrm{fin}}\), the recurring shorthand \(M=|C|\), mistake counts, weights, normalizers, and certified thresholds are appendix-local. One-use tail and ceiling helpers are proof-local. The selected sample size \(N_*\) is legitimately public-facing because it carries the final schedule statement, whereas its tie index is proof-local. The kernel symbol \(K_{\mathrm o}\) and scalar \(K_{\mathrm{old}}\) remain distinct throughout. No helper notation hides finiteness, boundedness, rate dependence, or an assumption.

## Target-Step Assembly Audit

The assembly uses paper-ready named results throughout. Proposition~\ref{prop:step-016-zero} supplies the null branch; Proposition~\ref{prop:step-016-finite-kernel}, Proposition~\ref{prop:step-016-finite-dp}, Lemma~\ref{lem:step-016-finite-tail}, and Proposition~\ref{prop:step-016-finite-arm} supply the complete finite tuple. Accepted Proposition~\ref{prop:step-014-vc-arm} and accepted Propositions~\ref{prop:step-015-kernel}, \ref{prop:step-015-dp}, \ref{prop:step-015-pac}, and \ref{prop:step-015-rate} supply the other two complete tuples. Proposition~\ref{prop:step-016-minimum} then selects exactly one learner, and Proposition~\ref{prop:step-016-frontier} proves all remaining baselines and scope statements. These authorities jointly imply the exact target with no unreviewed bridge, law mixing, dependency flaw, or sketch-interface change.

## Review Rationale

ACCEPTED with Smallest Retry Target = None is the smallest sound decision. A fresh full audit of all seven units validates the finite kernel, pure privacy calculation, unconditional PAC tail, ceiling and rate bounds, dependency-complete theorem statements, deterministic common-interface comparison, notation surface, boundary regimes, and fixed/scheduled-\(\delta\) distinctions. Every binding artifact matches its expected hash, every dependency review is accepted, and the exact conditional countable-quotient scope and remaining parent open problem are preserved. No local, dependency, or sketch repair remains.
