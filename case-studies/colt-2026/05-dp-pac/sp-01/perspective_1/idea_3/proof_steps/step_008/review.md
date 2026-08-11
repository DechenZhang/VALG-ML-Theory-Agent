# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_008
- Unit attempt: 2
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_008/proof.md, SHA-256 fd12b00bd08d505a0e99e1e0fd81894e2da77f97ccf6337127d886f79e51b049
- Binding setting artifact: perspective_1/idea_3/setting.md, SHA-256 5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0
- Binding sketch artifact: perspective_1/idea_3/proof_sketch.md, SHA-256 6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d
- Binding sketch-review artifact: perspective_1/idea_3/proof_sketch_review.md, SHA-256 9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390, status ACCEPTED
- Accepted dependency proof: perspective_1/idea_3/proof_steps/step_001/proof.md, SHA-256 c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a
- Accepted dependency review: perspective_1/idea_3/proof_steps/step_001/review.md, SHA-256 baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82, status ACCEPTED

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: The proposition has the exact accepted interface: even N >= 72, finite ordered threshold domain, arbitrary bit-vector (hence possibly improper) output, replacement-(0.1, eta)-DP on every labeled input, the displayed eta <= 1/(1000 N^2 log_2 N) cap, and expected empirical loss at most 1/8 on every realizable threshold database. Its conclusion is precisely N >= a0 log_2^* t.
- Proof validity: The repaired derivation defines the homogeneous-set interface and gives its current-notation size bound, exposes the sole expected-loss input to ALMM lem:reduction, derives the 1/(4N) probability-list jump, and then states and applies lem:AtoP, lem:prod, and lem:binary. The binary-search construction includes the choices of T and D, Hoeffding error, product privacy, the explicit D eta < 1/5 check, and the disjoint-event contradiction. The small-homogeneous-set branch is handled before the large-set construction, and the final iterated-log calculation yields a universal a0 without an asymptotic qualifier.
- Cited-result and assumption audit: Each consumed ALMM internal result (lem:finiteramsey/lem:ramsey, lem:reduction, lem:AtoP, lem:prod, lem:binary, and lem:lbhomog) is restated with current objects, hypotheses, and conclusion before use in the local derivation. The proof explicitly records that the printed PAC premise is used only to obtain the expected-loss line and does not cite thm:main or thm:ADPimpliesLD as an expected-risk theorem. Binary label relabeling, replacement adjacency, arbitrary finite-output restriction, and all-input privacy are discharged.
- Rigor checklist: The numerical privacy inequalities at N >= 72, the homogeneity error, telescoping denominator, D eta bound, product-privacy rearrangement, and terminal-event mass contradiction are displayed. The argument keeps expected, rather than high-probability, utility mode and uses no unsupported properness or finite-domain assumption beyond the explicitly finite witness.
- Local adversarial test: The N = 72 endpoint satisfies the 0.001 one-replacement bounds and the binary-search estimates; the k <= 2N+1 homogeneous-set branch is immediate; arbitrary output vectors and nonrealizable neighboring databases remain covered by the stated all-input privacy hypothesis. No unresolved source-interface or delta-discharge gap remains.
- Contribution to target step: Supplies the theorem-critical unrestricted ALMM expected-empirical-loss obstruction used by the factor floor.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: The lemma names Assumption assump:vc-one-factors and the accepted quotient-invariance lemma, fixes the Shelah witness, defines the finite learner-independent task universe, and states the exact log_2^* t_i >= r_i - 2 bridge required by the sketch.
- Proof validity: Quotient dimension and finite-pattern preservation transfer the Shelah threshold witness to the factor. Raw representatives and row-counting Dirac mixtures are legal without a measurable global section. The floor-one branch is handled by nonconstancy, and the displayed logarithmic inequalities prove the two-iteration base-two shift for r_i >= 8.
- Cited-result and assumption audit: The accepted dependency is named and its available dimension/pattern conclusion is used in current notation. ALMM thm:shelah is translated to the quotient points and factor concepts before the witness is used; the task family is fixed before any learner is supplied.
- Rigor checklist: Repeated rows are allowed, the finite universe remains finite for each m, and the d_i = 1 and r_i = 8 boundaries do not enter an invalid high-log-star branch. No quotient cardinality or support assumption is introduced.
- Local adversarial test: Distinct quotient witness cells have distinct raw representatives, while equivalent raw points cannot alter a realizable label pattern. The floor and ceiling in t_i are explicitly covered.
- Contribution to target step: Produces the fixed finite task universe and the dimension-to-threshold complexity bridge.
- Verdict: PASS
- Repair direction: None

### unit_003: lemma

- Statement fidelity: The lemma states the total all-input resampling wrapper, exact BNSV privacy parameters, the candidate delta cap, arbitrary finite-evaluation postprocessing, exact empirical/population risk equality on every task in the named universe, and the m = 8 boundary.
- Proof validity: The least even N_m >= 9m obeys 9m <= N_m <= 10m. The BNSV secrecy-of-the-sample formula is instantiated at privacy 0.1, with the required N_m >= 2m and all-input adjacency. Equations (15)--(17) correctly show delta_m' < delta and the ALMM base-two cap; equation (18) gives pointwise equality with multiplicities before expectation.
- Cited-result and assumption audit: BNSV Lemma 5.9 and its immediately preceding secrecy lemma are distinguished, with the source formula, hypotheses, and current m,N_m objects stated. Finite-evaluation measurability and totality justify the output vector on arbitrary, including nonrealizable, inputs.
- Rigor checklist: The exponential and ceiling estimates are valid at the endpoint m = 8; no repeated-row or empirical-to-population residual is omitted; privacy is not inferred only on realizable databases.
- Local adversarial test: At m = 8, N_m = 72, epsilon_m' = 1/15, and the delta multiplier is strictly below one. Odd m, duplicated rows, and arbitrary improper decoded outputs are covered by the same construction.
- Contribution to target step: Transfers the factor learner's expected distributional-risk premise to the exact ALMM empirical interface.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: The proposition now gives a self-contained theorem-style basis: both primitive assumptions and the exact named dependency/local results are listed, including Proposition prop:step-008-almm-expected, Lemma lem:step-008-shelah-tasks, and Lemma lem:step-008-resampling. It states the exact factor floor and the strict finite-task contrapositive.
- Proof validity: The r_i < 8 branch follows from m >= 8 and a_L <= 1. In the high-r_i branch, the resampling proposition supplies the ALMM hypotheses, N_m <= 10m, and the log-star bridge give m >= (a0/20) r_i >= a_L r_i. Negating the finite universal premise yields a strict > 1/8 task loss without choosing a task after observing the learner.
- Cited-result and assumption audit: All prior results used in the assembly are named by theorem-style labels rather than workflow IDs or equation-only references. The finite task universe is explicitly identified as the one supplied by Lemma lem:step-008-shelah-tasks; no new external theorem or hidden dependency is consumed.
- Rigor checklist: Constants a_L and c_delta retain universal provenance, strictness is preserved, and the fixed-factor/fixed-candidate expected-risk mode is not upgraded to a uniform claim.
- Local adversarial test: Equality at the floor is not incorrectly negated, the low-r_i branch cannot satisfy the strict subcritical premise, and the m = 8 resampling endpoint remains admissible.
- Contribution to target step: Exports the unrestricted expected-risk factor floor and the learner-independent finite hard-task universe to downstream lower-bound steps.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. The previously compressed ALMM chain is now expanded inside unit_001, including the homogeneous-set bound, expected-loss jump, finite-cube family, product composition, binary-search contradiction, and small-set branch. The witness construction, resampling privacy, risk identity, and final parameter conversion have separate named units. Target-step prose cites theorem-style labels and does not rely on local unit IDs, subsection titles, or a workflow phrase as mathematical authority.

## Target Claim Audit

The proof establishes exactly the accepted step_008 row: for every fixed factor and candidate m >= 8, an unrestricted replacement-(0.1, delta)-DP learner with the stated delta budget and expected risk at most 1/8 on all realizable tasks must have m >= a_L log_2^* d_i; the strict converse is witnessed inside a finite learner-independent Shelah task universe. The output may be improper, privacy is on all labeled inputs, and the utility mode is expected exact distributional 0-1 risk. No assumption, dependency, scope, or output target is strengthened or changed.

## Explicit Rate Audit

The exposed quantities are i, d_i, r_i, t_i, m, N_m, and delta, with fixed privacy and risk constants. The only hidden constants are universal source/combinatorial constants packaged into a0, a_L, and c_delta; no hidden dependence on the class, factor cardinality, learner, m, or delta is used. The proof states fixed-sample, fixed-factor expected-risk mode and exact empirical-risk norm, and displays the log-star shift, even-rounding bounds, privacy inflation, delta translation, and final constant absorption. There is no probability-mode or horizon upgrade, no dropped rate term, and no unsupported auxiliary tolerance. The k = 1 baseline is retained as the unrestricted ALMM one-factor expected-risk interface, with the later PAC-event conversion left to its accepted downstream step.

## Notation Surface Audit

All new symbols are defined from setting quantities, the accepted quotient dependency, or the explicitly restated cited results. The exported objects a_L, c_delta, and the finite universe T_{i,m} are classified as public-facing; the Shelah witness and N_m are appendix-local; resampling databases, probability lists, cube laws, and binary-search variables are proof-local. The notation is current-branch notation, with source labels translated and no unexplained boundedness, finiteness, threshold, or event object.

## Target-Step Assembly Audit

Lemma step-001-quotient-invariance supplies the quotient/factor dimension interface. Proposition step-008-almm-expected supplies the expected empirical ALMM obstruction; Lemma step-008-shelah-tasks supplies the fixed witness and log-star bridge; Lemma step-008-resampling supplies privacy and exact expected-risk transfer; and Proposition step-008-factor-floor assembles the factor floor and strict finite-task contrapositive. These named results jointly imply the exact sketch-row output with no residual or unreviewed bridge.

## Review Rationale

ACCEPTED is warranted. The repaired artifact satisfies both obligations from the prior review: every consumed ALMM internal result is restated and discharged in current notation, and the final proposition names the exact dependency and prior theorem-style results while identifying the task universe by its named Shelah-task lemma. Per-unit derivations, source assumptions, boundary cases, explicit rates, baseline behavior, and target assembly all pass. No proof-step, sketch, or dependency retry is required; therefore None is the smallest retry target.
