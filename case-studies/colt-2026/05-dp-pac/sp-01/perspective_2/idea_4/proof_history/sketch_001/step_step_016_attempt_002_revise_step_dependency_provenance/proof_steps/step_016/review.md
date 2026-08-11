# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_016
- Unit attempt: 2
- Review attempt: 3
- Reviewed proof artifact: perspective_2/idea_4/proof_steps/step_016/proof.md
- Reviewed proof SHA-256: 95f363e5cf54ca4ba055d3ebdb62b544f424484f99fc80db20b6ea6cb73b973c
- Binding setting artifact: perspective_2/idea_4/setting.md
- Binding setting SHA-256: a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4
- Binding proof-sketch artifact: perspective_2/idea_4/proof_sketch.md
- Binding proof-sketch SHA-256: cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7
- Binding proof-sketch-review artifact: perspective_2/idea_4/proof_sketch_review.md
- Binding proof-sketch-review SHA-256: 302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789
- Live accepted dependency step_002 proof/review SHA-256: 880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f / 090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5
- Live accepted dependency step_003 proof/review SHA-256: 092c5ba976f43a4b7d1bf746aba05c1caa0d49f2bd3de55a254f58dc6e4c4a7f / 5ba08c887b44fc901e74bd3bc2793a06e3accf2a7d999f62532ec042c211eb87
- Live accepted dependency step_014 proof/review SHA-256: 9f040e514e388c5cd8feb190e9c4bfba48ba730be295d79c979304ce4742bbb8 / 04198f3e0db38202d74470af46f66ddf0a012f990e19ebdd2d3b8ffe75768bab
- Live accepted dependency step_015 proof/review SHA-256: bcb840332dff8fe4f0c2028744e46eff951fb4e7aa6e47f74fd4c3bcfdc7d492 / ee3c367e9ab057d098023701bd7b10469eb3b5381f6c3cc3ff1cc7c1952e93bd
- Superseded step_015 pair recorded by the producer: db98cdf01c034c742d9c7df0898d227e60a5d796c4211b7b7c26704b5abcce38 / ec4b5bc1759d73c4802108da738617ddece09d8c387c6cd4527bd23ec5f1a837

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_016

## Blocking Issues

1. Location: Step Identity, the final identity sentence, Allowed Assumptions And Dependencies, and the accepted-Step-015 citations used by Units 001, 006, 007, and the target-step assembly. Defect: the producer declares the superseded Step 015 attempt-1 pair db98cdf01c034c742d9c7df0898d227e60a5d796c4211b7b7c26704b5abcce38 / ec4b5bc1759d73c4802108da738617ddece09d8c387c6cd4527bd23ec5f1a837 to be the exact accepted dependency artifacts and states that those listed artifacts are current and matching. The live accepted dependency is producer attempt 2, proof/review bcb840332dff8fe4f0c2028744e46eff951fb4e7aa6e47f74fd4c3bcfdc7d492 / ee3c367e9ab057d098023701bd7b10469eb3b5381f6c3cc3ff1cc7c1952e93bd. The live theorem labels and conclusions used here remain compatible, but this review cannot silently reinterpret an exact artifact-identity assertion or certify the submitted proof against a dependency it does not bind. Downstream effect: the old-arm null, kernel, privacy, PAC, rate, boundary, minimum, and frontier uses lack current producer provenance even though their mathematical interfaces agree. Smallest repair direction: rerun /proof-step step_016 to bind the live Step 015 pair, correct the exact-dependency assertion, and revalidate the cited live labels prop:step-015-zero, prop:step-015-kernel, prop:step-015-dp, prop:step-015-pac, prop:step-015-rate, and prop:step-015-boundaries. No sketch change or mathematical weakening is indicated.

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: The shared zero-sample statement matches the sketch: \(d=0\) gives \(v=0\), singleton \(C\) and \(\bar C\), one common \(N=0\) law, exact \((0,0)\)-privacy, zero decoded risk, and \(m_C=0\).
- Proof validity: Against the live theorem statements, the argument is valid. Accepted Littlestone preservation gives the singleton branch, the locally defined finite law is the Dirac law at the unique \(\bar c_0\), exact risk transfer gives zero risk, and the live Step 014 and Step 015 null conclusions use that same unique output.
- Cited-result and assumption audit: The Step 002 and Step 014 labels match their live accepted artifacts. The mathematical conclusion of live Proposition~\ref{prop:step-015-zero} also matches the restatement, but the producer binds that label to the superseded Step 015 artifact rather than the live accepted pair.
- Rigor checklist: The proof avoids every positive-dimensional denominator and handles \(N=0\), arbitrary \(D\), a possibly multi-cell quotient, and exact rather than asymptotic privacy and risk.
- Local adversarial test: A singleton concept that is nonconstant on \(X\) can induce two quotient cells, but still has a unique quotient factor and zero decoded risk; the argument remains valid.
- Contribution to target step: It supplies the common baseline required before any arm comparison.
- Verdict: REVISE_STEP
- Repair direction: Rebind the Step 015 null proposition to the live accepted proof/review pair; no change to the unit's derivation is otherwise needed.

### unit_002: proposition

- Statement fidelity: The proposition constructs exactly the finite-class quotient law on the fixed full class \(\bar C\) for every \(N\in\mathbb N_0\), with the setting output, decoder, raw record map, and arbitrary-label domain.
- Proof validity: The bijection gives \(1\le M=|\bar C|<\infty\). Every exponential weight is positive, the \(M\)-term normalizer is finite and nonzero, and the resulting pointwise law is a Borel probability measure supported in \(H_C\). Countable-atom promotion gives the quotient kernel, and measurable composition with \(T_N\) gives the raw kernel.
- Cited-result and assumption audit: The live accepted Step 002 and Step 003 statements exactly supply factorization, \(T_N\), pointwise-law promotion, quotient-kernel construction, and raw pullback. No external finite-ERM theorem is used as proof authority.
- Rigor checklist: The construction covers \(N=0\), duplicate records, arbitrary and nonrealizable labels, \(M=1\), and both finite and countably infinite \(Q_C\). It uses no data-dependent range or selector.
- Local adversarial test: On the empty sample every weight equals one and \(Z=M>0\); on adversarial labels the loss remains a finite integer and the same kernel argument applies.
- Contribution to target step: It establishes the complete measurable finite-arm law before privacy or utility is claimed.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: The proposition targets pure \(\varepsilon\)-DP for the quotient and raw finite laws on all replace-one labeled inputs and then validly weakens it to \((\varepsilon,\delta)\)-DP.
- Proof validity: Replacement changes each mistake count by at most one. The two-sided \(e^{\pm\varepsilon/2}\) weight comparison bounds the event numerator above and the full normalizer below, producing the exact \(e^\varepsilon\) likelihood inequality. Raw neighbor transport preserves equality or one replacement.
- Cited-result and assumption audit: Only live accepted record transport and the preceding finite-kernel proposition are consumed. Realizability and any utility event are correctly absent.
- Rigor checklist: The event \(E\) is arbitrary in \(\mathcal H_C\); zero numerators, equal inputs, \(N=0\), same-cell replacements, and nonrealizable label changes all satisfy the displayed inequalities.
- Local adversarial test: Simultaneously maximizing the numerator change and minimizing the normalizer accounts for both \(e^{\varepsilon/2}\) factors, so there is no missing normalization loss.
- Contribution to target step: It supplies the finite arm's all-input privacy interface.
- Verdict: PASS
- Repair direction: None.

### unit_004: lemma

- Statement fidelity: The lemma gives the required direct unconditional population-risk tail \(M e^{-N\varepsilon\alpha/4}\), uniformly over \(D,c\), with exact raw decoding and no added sampling event.
- Proof validity: Realizability makes the target loss zero and hence \(Z_{\bar S}\ge1\). For each fixed \(\bar h\), the iid Bernoulli transform is exact. The inequalities \(1-u\le e^{-u}\) and \(1-e^{-\varepsilon/2}\ge\varepsilon/4\) have the correct direction. Summing over the fixed finite bad set and then applying exact iid pushforward and risk transfer proves the raw tail.
- Cited-result and assumption audit: The live Step 002 pushforward and risk propositions match the instantiated quotient experiment. No generalization theorem or external concentration citation is used.
- Rigor checklist: Expectations and the finite sum may be interchanged directly; the bad set is fixed by \(D,c\), not by the sample. The proof covers \(N=0\), \(p_{\bar h}=0,1\), strict \(p_{\bar h}>\alpha\), and \(0<\varepsilon\le1\).
- Local adversarial test: At \(N=0\) the right side is \(M\ge1\), so the bound remains valid; for \(p_{\bar h}=1\), the exact transform still obeys the stated exponent.
- Contribution to target step: It closes finite-arm PAC utility without an invented \(\log M/\alpha\) term.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: The proposition supplies a complete finite learner, exact \(d=0\) recovery, the positive-branch integer threshold, failure at most \(\beta\), \(N_{\mathrm{fin}}\le8R_{\mathrm{fin}}\), and \(+\infty\) disabling only when \(C\) is infinite.
- Proof validity: The threshold implies \(N_{\mathrm{fin}}\varepsilon\alpha/4\ge\log M+\log(1/\beta)\), so Unit 004 gives failure at most \(\beta\). With \(b=\log(1/\beta)>1\), the unrounded \(x>16\), and \(\lceil x\rceil\le2x\) pays the ceiling. The inequalities \(\log M\le\log^+M\) and nonnegativity of the second \(R_{\mathrm{fin}}\) summand give the factor 8.
- Cited-result and assumption audit: Units 001-004 provide every kernel, privacy, tail, and null input. No finite surrogate is introduced on the infinite branch.
- Rigor checklist: \(M=1\) is isolated as the exact \(d=0,N=0\) branch; \(d\ge1\) implies \(M\ge2\). All constants are numerical, \(q_{\mathrm{fin}}=0\), and the probability, horizon, and risk modes remain unchanged.
- Local adversarial test: The ceiling-dominated regime, \(\varepsilon=1\), \(\alpha,\beta\) near \(1/4\), and \(M=1\) all preserve the claimed bound.
- Contribution to target step: It exports the finite arm on the same complete learner interface as the two Lyu arms.
- Verdict: PASS
- Repair direction: None.

### unit_006: proposition

- Statement fidelity: The proposition takes the minimum only after listing three complete kernels with the same \(H_C\), decoder, raw adjacency, population-risk, and confidence interfaces; it selects one learner before observing data and does not mix laws.
- Proof validity: Against the live accepted arm theorems, the deterministic threshold argument is correct. Each actual sample size is bounded by its certified threshold, \(\Lambda\ge1\), and \(K_*=\max\{8,K_{\mathrm{old}},K_{\mathrm V}\}\) yields the common \(\Lambda^6\) envelope. For infinite \(C\), only the finite threshold is \(+\infty\), while both Lyu thresholds remain finite.
- Cited-result and assumption audit: The Step 002 risk and Step 014 arm labels are current. The live Step 015 kernel, privacy, PAC, and rate statements exactly support the old row, including \(N_{\mathrm o}\le K_{\mathrm{old}}\Lambda^6R_{\mathrm{old}}\), but the submitted proof identifies their superseded artifact pair as the accepted source.
- Rigor checklist: The arm choice is data independent, ties are fixed, each arm uses its own integer sample size, and the definition of \(m_C\) permits dependence on \(C\) and all learning parameters. No probability union, arm mixing, or common-sample assumption occurs.
- Local adversarial test: If the finite threshold is \(+\infty\), the minimum still has two finite candidates; if thresholds tie, the fixed tie rule preserves privacy and PAC because exactly one complete learner is run.
- Contribution to target step: It is the sole bridge from three separate certified arms to the displayed minimum.
- Verdict: REVISE_STEP
- Repair direction: Rebind and revalidate the old-arm row against the live accepted Step 015 kernel/DP/PAC/rate artifact pair; the deterministic comparison algebra itself needs no repair.

### unit_007: proposition

- Statement fidelity: The proposition states all requested \(d=0\), \(v=1\), \(v=d\), \(v=o(d)\), finite/infinite-class, fixed-\(\delta\), selected-schedule, standalone-old-schedule, and conditional-source boundaries without claiming a lower bound or characterization.
- Proof validity: The direct VC-to-Littlestone tree construction proves \(1\le v\le d\) on \(d\ge1\). The identities \(vd^4/d^5=v/d\) and \(vd^4=d^5\) at \(v=d\) are exact. Since the selected threshold is no larger than \(B_{\mathrm V}\), the setting schedule implies \(N_*\delta\to0\). The finite arm is pure DP, and the standalone old sample-size limit is correctly kept under its separate sufficient condition.
- Cited-result and assumption audit: The live Step 014 arm supports fixed-\(\delta\) validity and its exact schedule. The live Step 015 rate and boundary propositions support the \(d^5\) profile, fixed-\(\delta\) theorem, and separate old schedule, but the submitted identity binds these labels to the superseded Step 015 pair.
- Rigor checklist: The positive branch never evaluates a zero-dimensional denominator; \(\log^+|C|=+\infty\) disables only the finite arm; fixed \(\alpha,\beta,\varepsilon\) and the declared \(\delta\)-schedule are explicit for the tilde shorthand; arm-specific logarithms are not promoted to polynomial equality.
- Local adversarial test: At \(v=1\) the exposed VC profile is \(d^4\); at \(v=d\) it is exactly \(d^5\); fixed positive \(\delta\) gives no numerical \(N\delta\) limit; and an infinite class retains both Lyu arms.
- Contribution to target step: It exports the exact formalized frontier and every baseline-invariance clause.
- Verdict: REVISE_STEP
- Repair direction: Refresh the live Step 015 rate/boundary provenance and preserve the current separate old-arm schedule statement; no boundary formula needs alteration.

## Hidden Subclaim Scan

No additional mathematical blocker was found. Kernel measurability and normalization are localized in Unit 002; sensitivity and both normalizer inequalities are in Unit 003; the unconditional Bernoulli transform and raw probability transfer are in Unit 004; ceilings and \(\log^+\) normalization are in Unit 005; deterministic arm selection is in Unit 006; and \(1\le v\le d\), schedule conversion, and structural comparisons are proved in Unit 007. The finite/infinite case split, \(M=1\), \(N=0\), improper-output compatibility, and fixed-versus-scheduled \(\delta\) boundaries are explicit. The stale exact Step 015 dependency identity is an overt producer-provenance defect, not a hidden mathematical lemma, and cannot be repaired by reviewer reinterpretation.

## Target Claim Audit

Conditioned on the live accepted Step 015 interface, the seven units prove the exact accepted sketch row: a finite-class pure-DP/PAC arm with \(N_{\mathrm{fin}}\le8R_{\mathrm{fin}}\), a deterministic minimum of three complete common-interface learners, and the requested boundary and conditional-scope frontier. All quantifiers, output/decoder/raw-neighbor interfaces, unconditional confidence mode, population zero-one-risk norm, fixed-sample horizon, finite/countable quotient restriction, and infinite-cardinality convention agree with the setting. The submitted proof nevertheless is not certifiable as written because it expressly binds the Step 015 theorem labels to a superseded proof/review pair and falsely states that this pair is the exact current accepted dependency.

## Explicit Rate Audit

The proof exposes \(|C|,d,v,\alpha,\beta,\varepsilon,\delta\). The finite arm has the explicit universal constant \(8\) and exponent zero; the live VC arm has universal \(K_{\mathrm V}\) and exponent \(4\); the live old arm has universal \(K_{\mathrm{old}}\) and exponent \(6\); and the common bound uses universal \(K_*\) and \(\Lambda^6\). Hidden constants depend on none of the problem, sampling, generated-object, or arm-selection quantities. The theorem is fixed-sample, all-input DP plus unconditional \((\alpha,\beta)\)-PAC in decoded population zero-one risk. Equations (4.6), (5.3)-(5.7), (6.3)-(6.4), and (7.2)-(7.6) visibly discharge the coefficient, ceiling, normalization, minimum, probability, and structural specializations. Exact \(d=0\), \(v=1\), \(v=d\), finite/infinite-class, fixed-\(\delta\), selected-learner schedule, and separate standalone-old schedule reductions are mathematically preserved. Certification of the old rate and schedule uses is withheld only because their producer hashes are stale in this artifact.

## Notation Surface Audit

The notation surface is economical and correctly classified. The specialized finite kernel/raw learner, \(N_{\mathrm{fin}}\), numerical finite-arm constants, and selected-learner interface are public-facing. Generic finite-kernel families, \(M\), losses, weights, normalizer, event numerator, arm thresholds, and the ceiling expression are appropriately appendix-local. Risk probabilities, the bad set, scalar ceiling helper, and tie index are proof-local. \(K_{\mathrm o}\) remains the old quotient kernel while \(K_{\mathrm{old}}\) remains its universal rate constant, so no symbol collision occurs. Every helper is defined from setting quantities, live accepted dependency outputs, or a named local result; none hides a finiteness, normalizer, probability, rate, or selection obligation.

## Target-Step Assembly Audit

The named local results and the live Step 002, Step 003, Step 014, and Step 015 theorem statements mathematically close the exact target. Units 002-005 give a complete finite arm; live Proposition~\ref{prop:step-014-vc-arm} gives the complete VC arm; live Propositions~\ref{prop:step-015-kernel}, \ref{prop:step-015-dp}, \ref{prop:step-015-pac}, and \ref{prop:step-015-rate} give the complete old arm; Unit 006 takes the deterministic minimum; and Unit 007 supplies all remaining baselines. The assembly uses theorem-style labels rather than unit IDs and introduces no new lemma. It cannot, however, be certified for downstream consumption until the producer replaces the superseded Step 015 proof/review identity with the live accepted pair and reissues the corresponding dependency assertions.

## Review Rationale

REVISE_STEP is the smallest sound status. The refreshed Step 015 attempt 2 and its accepted review preserve every old-arm theorem statement Step 016 needs, including constants, null branch, kernel, all-input privacy, unconditional PAC mode, \(K_{\mathrm{old}}\Lambda^6R_{\mathrm{old}}\), fixed-\(\delta\) validity, and the separate old schedule. Thus neither BLOCKED_BY_DEPENDENCY nor REVISE_SKETCH is warranted, and no mathematical change to the seven-unit route is presently indicated. But the proof-step contract treats dependencies and submitted identity statements as binding: the reviewer may not silently substitute the live pair for the exact superseded pair named by the producer. A producer refresh through /proof-step step_016, followed by a fresh review, is therefore the minimal certification repair.
