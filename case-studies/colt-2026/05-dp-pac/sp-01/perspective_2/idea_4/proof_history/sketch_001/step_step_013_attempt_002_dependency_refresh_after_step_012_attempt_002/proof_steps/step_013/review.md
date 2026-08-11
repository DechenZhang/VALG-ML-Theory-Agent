# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_013
- Unit attempt: 2
- Review attempt: 3
- Reviewed proof artifact:
  perspective_2/idea_4/proof_steps/step_013/proof.md
- Reviewed proof SHA-256:
  1ca22e42524dd15fbff1b782d8de1ff06984fc89f1b02e89c35cb1b4287f09c9
- Binding setting artifact: perspective_2/idea_4/setting.md
- Binding setting SHA-256:
  a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4
- Accepted proof-sketch artifact: perspective_2/idea_4/proof_sketch.md
- Accepted proof-sketch SHA-256:
  cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7
- Accepted proof-sketch-review artifact:
  perspective_2/idea_4/proof_sketch_review.md
- Accepted proof-sketch-review SHA-256:
  302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789
- Audited direct dependency live proof/review SHA-256 pairs:
  - step_004:
    aded5334e6b420fa91d8de54cf36290a5aa726ab4d955f84586afa67311192e5 /
    483174aef76458d0433547a4eb68628cb79d92d3ceddd0010c6e4835a94b15ec
  - step_007:
    f8da4dbdc8ee467385d1a04b64904f31ea93215443cb260ba05e1cdeb9cd34f1 /
    6c4dee49c2466974c1f6f1e46e2e9d790a933abaad85e85b8b52bc654ba0b5e1
  - step_008:
    903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760 /
    cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b
  - step_010:
    f119835bca16b5d87d71cfd4e52f0cd9bddc4d0b2fdfe21a5d9f96146e9a8e98 /
    46714f79e4b8525356b6f736fd6849f7e58ca6f68c0d06741fde5849a60c8e74
  - step_012:
    d8606bac937e01dc07248f136ffdd13a6cbf7b27ceb0475f58261a651e7b25fa /
    8f09c96a0c478b443e137ace265dbbf34b6dc24912132091ea3effbc40253a79
- Audited transitive live ancestor proof/review SHA-256 pairs:
  - step_001:
    0cd51e748813399f1c1e80bc659200d37f96aa013c97e75eda2adeaf74c5d530 /
    83fee520299e99482863c0e2fe5b905f9b8a1aef70cfcb8b933decbdffe19b7c
  - step_002:
    880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f /
    090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5
  - step_003:
    b55c3326656c172d547fc0e26cc17d5ec006ef35a631e7c98934c6bd078d3280 /
    c39a5a44a4c9e0b6bc33f6ceaa9ce98e5f00c61dc4ee701d301f0f96e8fa51aa
  - step_005:
    f1ba8be90c3ec4c84ac79bed9bb8ad537d9912e5737e6362e50647c3634557c5 /
    40bbda8f8bb5f05d545f348a4d1a047454e86a8a6833db9f28a756d0a12ef67b
  - step_006:
    5177f69ab096c7afcb360bbb2d016461fe16fc334c3eb39f2353945f56c7cf7b /
    3ea50da72012b8307579c24a6a56d25d9c5cab9e90e82cf91e7603879e452e76
  - step_009:
    b5c2dd0c3c737d906881e324a6aaacb4d958be8f288106b067a58b980cebbe52 /
    71be50c1a5f40c03d5d64dd767a3ba948f2aed385cbdc3375b33ffdd4a5fc5c0
- Superseded Step 010 identity embedded in the live Step 012 pair:
  117f4a769b754335bafb792f0390fbae81beaf8967d93fb9aa89f3dafd0b1925 /
  ac0b37a40b9d38d6c49c5ffc5e5e91dec51b2f264eed56c9e03da84c6b6897e3
- Frozen primary-source SHA-256 independently recomputed:
  b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87
- Progress type: conditional. The theorem remains restricted to the finite-or-countable measurable evaluation quotient. No unrestricted DP-PAC result is claimed.
- Evidence boundary: no proof_history artifact, prior Step 013 review, global diagnostic, assembly artifact, or final-review artifact was used as proof evidence.

## Step-Review Status

BLOCKED_BY_DEPENDENCY

## Smallest Retry Target

/proof-step step_012

## Blocking Issues

1. Location: the live Step 012 proof/review identity, consumed by Step 013 in Proposition~\ref{prop:step-013-pathwise}, Proposition~\ref{prop:step-013-finite-integration}, Proposition~\ref{prop:step-013-pac}, and the target-step assembly. Defect: the live Step 012 files match each other and the Step 012 review records ACCEPTED, but both bind superseded Step 010 attempt 1, proof/review pair 117f4a769b754335bafb792f0390fbae81beaf8967d93fb9aa89f3dafd0b1925 / ac0b37a40b9d38d6c49c5ffc5e5e91dec51b2f264eed56c9e03da84c6b6897e3. The live accepted Step 010 attempt 2 pair is f119835bca16b5d87d71cfd4e52f0cd9bddc4d0b2fdfe21a5d9f96146e9a8e98 / 46714f79e4b8525356b6f736fd6849f7e58ca6f68c0d06741fde5849a60c8e74. Under the currentness contract, Step 012 is therefore not a current accepted dependency for downstream consumption. Downstream effect: the Step 012 empirical certificate used in Units 2, 4, and 6 has no controller-valid current provenance chain, so Step 013 cannot be accepted even though its submitted derivation is mathematically sound conditional on that certificate. Smallest repair direction: rerun /proof-step step_012 against the live Step 010 pair, then require a fresh accepted /proof-step-review step_012. Any changed Step 012 pair must then be rebound by a refreshed Step 013 producer and fresh Step 013 review before downstream use.

## Dependency Provenance Audit

The setting, sketch, sketch review, target proof, and all direct dependency files match the live SHA-256 values recorded above. Direct proof-to-review identity checks pass for Steps 004, 007, 008, 010, and 012. Recursive currentness has the following result:

- Step 004 is current through live Step 003 attempt 3, which binds the live Step 001 and Step 002 pairs.
- Step 007 is current through live Steps 001 and 006; Step 006 binds live Step 005, and Step 005 binds live Steps 001 and 002.
- Step 008 is current through the live Step 006 and Step 007 chains.
- Step 010 is current through live Steps 001, 004, and 009; Step 009 binds live Step 008.
- Step 012 fails currentness only at its Step 010 edge. Its Step 006 and Step 008 edges are current, but its recorded Step 010 pair is superseded by the live attempt-2 pair.

This is a controller-provenance failure, not a finding that the formulas in the live Step 012 or Step 013 submissions are false. The live Step 012 argument is locally compatible with the mechanism-good conclusion stated by live Step 010, making a dependency-local provenance refresh plausible without changing the accepted sketch row. Compatibility cannot substitute for the required fresh producer/reviewer chain.

## Per-Lemma Audit

### unit_001: Measurable block-local all-stage candidate family

- Statement fidelity: The lemma states the exact finite block-local family required by the accepted Step 013 row, under the named countable-quotient and current Step 004/008 interfaces. It exports only measurability, block locality, actual-function identity, and the cap \((d+1)L\).
- Proof validity: Each list is a deterministic function of the producer block on the countable-discrete space \(Z_Q^m\). Finite concatenation and dynamic membership are measurable, the Step 008 list cap gives the cardinality bound, and the quotient risk map is the monotone limit of countable measurable coordinate sums. Therefore the bad-candidate section is a measurable finite random union.
- Cited-result and assumption audit: Step 004 and Step 008 have current accepted recursive provenance. The countable evaluation quotient is used only as a primitive static measurability condition; no generated list, event, or utility fact is treated as primitive.
- Rigor checklist: The proof covers empty lists, repeated candidates, countably infinite \(Q_C\), uncountable \(H_C\) as a set, and fixed arbitrary \(D,c\). It does not enumerate \(H_C\) or form an uncountable supremum.
- Local adversarial test: Empty all-stage families give the empty event; duplicate entries merely repeat a measurable disjunct; an adaptive selected stage cannot affect the all-stage family because all stages are included before mechanism conditioning.
- Contribution to target step: It produces the finite producer-local sections needed for the pathwise inclusion and later tower integral.
- Verdict: PASS
- Repair direction: None.

### unit_002: Full-path marked inclusion and Holdout

- Statement fidelity: The proposition exactly implements the sketch-mandated order: actual mark support and the full-master empirical certificate imply Holdout and the finite bad-candidate inclusion on complete paths before any independence claim.
- Proof validity: Conditional on the stated dependency claims, the derivation is correct. Deleting the nonnegative producer-block errors from the full \(n_0=km\) sum gives
  \[
  \widehat{\operatorname{err}}_{-i}(\bar H)
  \leq \frac{k}{k-1}\frac{\alpha}{8}
  \leq\frac{\alpha}{4}
  \]
  for \(k\geq2\), and the same literal \(\bar H\) witnesses the finite union when its population error exceeds \(\alpha\).
- Cited-result and assumption audit: The Step 004 lift and current Step 010 actual-status interface are current. The required Step 012 empirical certificate is mathematically restated exactly but is not controller-current because Step 012 binds superseded Step 010 attempt 1.
- Rigor checklist: No conditioning on \(J=i\) is used to assert independence. Full, complement, and population errors use the same function and target. Fallback paths are excluded by actual mechanism status.
- Local adversarial test: At \(k=2\), the factor is exactly two. First- and last-stage selection, an actual output equal to the default value, repeated records, and duplicate list occurrences preserve the pathwise implication. Removing the Step 012 certificate would leave the Holdout numerator uncontrolled.
- Contribution to target step: It is the required bridge from adaptive marked output to a producer-local fixed-candidate event.
- Verdict: BLOCKED_BY_DEPENDENCY
- Repair direction: Refresh and freshly accept Step 012 against live Step 010 before this proposition can be certified.

### unit_003: Direct one-sided iid Bernoulli lower tail

- Statement fidelity: The lemma is self-contained under Assumption~\ref{assump:realizable-iid} and proves the exact fixed-candidate tail, complement size, threshold, and exponent required by the sketch.
- Proof validity: For \(p>\alpha\), \(\{Y/M\leq\alpha/4\}\subseteq\{Y\leq Mp/4\}\). Exponential Markov with \(\lambda=\log4\) gives exponent \(Mp(\lambda/4-3/4)\). Since \(\log4<3/2\), this is at most \(-3Mp/8\), which is stronger than \(-9Mp/32\). Substitution \(M=(k-1)m\) is exact.
- Cited-result and assumption audit: No external concentration result or dependency is used. Realizable iid quotient sampling supplies iid Bernoulli error indicators for the fixed function.
- Rigor checklist: The Markov inequality direction, strict \(p>\alpha\), \(M\geq1\), constants, and probability mode are correct. No selected-output independence is assumed.
- Local adversarial test: The proof remains valid for \(p\) arbitrarily close to \(\alpha\), for \(p=1\), and at \(k=2\). The forbidden \(M=0\) case is bypassed because \(k\geq2,m\geq1\).
- Contribution to target step: It supplies the fixed-candidate complement tail used after producer-block conditioning.
- Verdict: PASS
- Repair direction: None.

### unit_004: Finite producer integration after the pathwise inclusion

- Statement fidelity: The proposition conditions only after the pathwise inclusion and targets exactly the finite multiplicity bound required by the accepted row.
- Proof validity: Conditional on a deterministic data-independent partition, the producer block and complement are independent iid coordinate groups. After fixing the countable producer state, \(\mathcal G_i(s_i)\) is a fixed family of at most \((d+1)L\) functions, so Unit 3 applies termwise. The finite union, tower integration, and disjoint positive-mark sum give the displayed factor \(k(d+1)L\). The chosen iid complement version on zero-probability producer atoms is legitimate on the countable-discrete state space.
- Cited-result and assumption audit: Unit 1 and Unit 3 are current and valid. The pathwise inclusion supplied by Unit 2 is blocked by the non-current Step 012 certificate, so this proposition cannot receive controller certification despite the correctness of its conditional integration.
- Rigor checklist: The proof does not condition on \(J\), \(\bar H\), the selected stage, or a mechanism event to obtain independence. It conditions on the partition and producer data only after the inclusion. Measurable finite sections justify the tower.
- Local adversarial test: At \(k=2\), the complement is the other indexed block and is not independent conditional on the complete sample, but it is independent before realization after fixing the data-independent partition; this is exactly the mode used. Empty families and duplicate candidates can only lower the union size.
- Contribution to target step: It converts the adaptive output event into the finite core population-failure charge.
- Verdict: BLOCKED_BY_DEPENDENCY
- Repair direction: Refresh and freshly accept Step 012, then rebind the repaired pathwise proposition before certifying this unit.

### unit_005: Exact finite-multiplicity domination

- Statement fidelity: The lemma states the exact rate-bearing multiplicity inequality under the current Step 007 fixed point and calibration and the current Step 008 list formula.
- Proof validity: The deductions
  \[
  \log n_0\leq(C_{\rm fp}+1)\log Q,\qquad
  \log L\leq(C_{\rm fp}+4)d^2\log Q
  \]
  are valid for \(d\geq1\). The proof pays \(b\), \(\log(d+1)\), \(\log L\), and \(\log(1/\beta_{\rm gen})\) explicitly. The accepted calibration gives a much stronger coefficient than \(C_{\rm fp}+7\), and the lower ceiling inequality for \(m\) completes the exponent domination.
- Cited-result and assumption audit: The Step 007 and Step 008 pairs and their recursive ancestor chains are current. The universal \(C_{\rm blk}\) calibration is fixed before sampling and is not parameter dependent.
- Rigor checklist: Every logarithm has a positive argument; \(1\leq v\leq d\), \(k\geq2\), \(\log Q>1\), and both ceiling directions are used correctly. No multiplicity or confidence term is absorbed by prose.
- Local adversarial test: The inequalities remain legal at \(d=v=1\), \(v=d\), \(k=2\), and ceiling-dominated \(m\). Empty lists only decrease \(L\)'s realized use and do not invalidate the authoritative cap.
- Contribution to target step: It charges the complete producer, stage, list, and confidence multiplicity to \(\beta_{\rm gen}=\beta/4\).
- Verdict: PASS
- Repair direction: None.

### unit_006: Unconditional released quotient PAC ledger

- Statement fidelity: The proposition targets exactly the unconditional quotient-space PAC event, includes the positive and \(d=0\) branches, and expressly stops before raw-risk, privacy, properness, or public-rate claims.
- Proof validity: Conditional on current accepted inputs, the ledger is correct. The uniform Step 010 mechanism charge integrates over successful \(E_{\rm good}\) sections; Step 007 pays \(E_{\rm good}^c\); Units 4 and 5 pay core population failure; and exact Step 004 projection removes the unreleased mark. The four shares sum to \(\beta\).
- Cited-result and assumption audit: Step 004, Step 007, and Step 010 are current. The deterministic empirical certificate and the resulting Units 2 and 4 depend on non-current Step 012 provenance, which blocks certification of the final ledger.
- Rigor checklist: The bad-risk set is measurable by the countable quotient risk sum. No empirical-certificate failure is recharged on the core event. Fallback is paid by the trace/mechanism complement, and mark zero is excluded from the positive producer sum.
- Local adversarial test: The \(d=0\) branch bypasses all positive-dimensional denominators; \(d=1\), \(k=2\), \(v=1\), \(v=d\), empty lists, repeated candidates and records, first/last-stage selection, fallback, and infinite \(H_C\) retain the claimed conditional calculation.
- Contribution to target step: It is the final probability and projection assembly for the released quotient output.
- Verdict: BLOCKED_BY_DEPENDENCY
- Repair direction: Refresh and freshly accept Step 012, then refresh the Step 013 producer identity and review before downstream use.

## Hidden Subclaim Scan

No independent mathematical subclaim is missing from the six-unit map. Block-local finite-family measurability is Unit 1; the full-path inclusion and Holdout are Unit 2; the fixed-candidate Bernoulli tail is Unit 3; post-inclusion producer conditioning and finite integration are Unit 4; exact scalar domination is Unit 5; and the unconditional marked-to-released ledger is Unit 6.

The zero-section conditional law, countable risk measurability, disjoint positive-mark decomposition, and exact projection are explicitly justified within their owning units. The proof contains no hidden post-selection independence, block independence conditional on the master sample, uncountable candidate union, properness premise, or raw-risk transfer. The only unresolved obligation is the explicit dependency-currentness blocker above.

## Target Claim Audit

Mathematically, conditional on the exact dependency statements recorded in the proof, the six named results establish the accepted Step 013 claim with the correct quantifiers, constants, event scopes, probability mode, fixed-sample horizon, and quotient zero-one-risk metric. The proof does not strengthen or weaken the sketch row.

Controller-valid target closure fails because the Step 012 empirical certificate is not supplied by a current accepted dependency chain. A direct dependency whose accepted review binds a superseded ancestor cannot be consumed downstream. Consequently the submitted proof cannot presently certify the unconditional quotient PAC event.

The scope label is correct and mandatory: all conclusions remain conditional on Assumption~\ref{assump:countable-evaluation-quotient}. Classes with uncountably many evaluation types remain outside the claim. This review does not claim a solution of the unrestricted DP-PAC open problem, a universal polynomial in \(v,\log d\) or \(v,\log^*d\), or a characterization of private sample complexity.

## Explicit Rate Audit

This step is rate-bearing through the exact finite-reconstruction term
\[
k(d+1)L\exp\!\left(-\frac{9\alpha(k-1)m}{32}\right)
\leq\beta_{\rm gen}.
\]
It exposes \(d,v,k,m,n_0,L,a,Q,\alpha,\beta\), all four confidence shares, \(M=(k-1)m\), and \(C_{\rm fp}\). The only inherited hidden constant is the already fixed universal \(C_{\rm blk}\); it may not depend on any problem, distribution, sample, partition, list, stage, event, output, or privacy parameter. No new hidden constant is introduced.

The probability mode is a fixed-candidate conditional iid lower tail followed by finite measurable-section integration and an unconditional high-probability quotient PAC conclusion. The horizon is one fixed master sample, one data-independent partition, \(d+1\) finite list stages, one learner transcript, and one analysis-only mark. The norm is quotient population binary zero-one error, with the same binary loss on the full sample and complement. The \(d=0\) branch bypasses every positive-dimensional quantity.

The proof displays every required simplification: the Holdout factor \(k/(k-1)\leq2\), the direct \(9/32\) lower-tail exponent, the exact \(\log L\) formula, the producer/stage/list/confidence multiplicity, and the accepted block-exponent domination. The four probability shares are added explicitly. The \(d=0\), \(d=1\), \(v=1\), \(v=d\), and \(k=2\) baselines are preserved. No rate, probability-mode, horizon-mode, norm-mode, or baseline defect was found; the failure is solely dependency provenance.

## Notation Surface Audit

The proof's surface classification is sound. The released quotient PAC statement is the sole public-facing export. The all-stage family \(\mathcal G_i\), marked law, and finite-reconstruction inequality are appendix-local. The marked experiment, core and failure events, risk alias, section events, complement size, confidence abbreviation, fixed-point constant, Bernoulli count, and exponential parameter are proof-local.

Every helper has setting, current-dependency, or named-local-result provenance. The all-stage family is proved finite and measurable rather than assumed; the risk is derived as a countable sum; and no helper dictionary hides finiteness, boundedness, rate dependence, event status, or target identity. The Step 012 provenance failure does not create notation drift, but it prevents the inherited empirical-bound symbol from serving as current accepted authority.

## Target-Step Assembly Audit

The mathematical assembly order is correct. Current Step 008 supplies literal block-local lists; Unit 1 forms their finite all-stage union; current Step 004 and current Step 010 supply actual marked support; Step 012 is intended to supply the full-master empirical certificate; Unit 2 proves Holdout and the full-path inclusion; Unit 3 proves the fixed-candidate tail; Unit 4 performs post-inclusion conditioning and finite integration; Unit 5 pays the multiplicity; and Unit 6 combines the trace, mechanism, reconstruction, and exact projection ledgers.

The named local results jointly imply the exact target only if the Step 012 input is controller-current. Because the live Step 012 pair binds superseded Step 010 attempt 1, that assembly edge is invalid for downstream consumption. No new local lemma or sketch change is needed; the dependency edge must first be refreshed and freshly reviewed.

## Review Rationale

BLOCKED_BY_DEPENDENCY is the smallest sound status. ACCEPTED is forbidden by the stale Step 012 transitive provenance. REVISE_STEP is too deep because the six submitted Step 013 derivations contain no local mathematical, citation, notation, rate, or assembly error once their stated dependency claims are available. REVISE_SKETCH is also too deep because the accepted Step 012 and Step 013 interfaces, assumptions, tools, and output targets need not change.

The nearest defect is the locally refreshable Step 012 producer identity. The controller should first run /proof-step step_012 against live Step 010 attempt 2 and require a fresh accepted /proof-step-review step_012. Since that refresh will change the Step 012 pair bound by the current Step 013 proof, the controller must subsequently refresh Step 013 and obtain a fresh Step 013 review. Those later downstream refreshes do not change the smallest immediate retry target. No repair, budget update, routing action, or unrestricted-theorem claim is performed in this review.

