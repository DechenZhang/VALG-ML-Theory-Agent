# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_009
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_3/proof_steps/step_009/proof.md
- Reviewed proof SHA-256: 14bb90ee313a2bf52148337859b9da3d17ba747119a01a5efcac80e576294925
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted global diagnostic/review SHA-256: dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407 / fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710
- Accepted step_001 proof/review SHA-256: 061c31df9fd9ebb495de80126984df01e0f75a7e8d711b96fb14c6567499b486 / 1c08770404c3d9c8a40ad34913620008d83a573c6c115dc9acfe081c3aa65ca6
- Accepted step_006 proof/review SHA-256: 3a761879525b3a4832fcfaa0b119a9307b7c027594271fd20e392ffbb1bc464f / 331d52e75329220d7fa686561708c7e91dbf261704597893d8e5da5d83bd3303
- Primary-source preflight: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1; frozen `submission/main.tex` SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

All listed identities were recomputed independently before review. The paired global diagnostic has status PARTIAL_BLOCKED with routing None, and its review has status ACCEPTED; it was checked only for identity and consistency and was not used as proof evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Ordered raw replacement changes one list coordinate

- Statement fidelity: The proposition proves exactly the fixed-partition RawList interface in the accepted row. It quantifies over every ordered neighboring raw pair, stage, and reached transcript prefix, and it identifies the unique partition block containing the replaced index.
- Proof validity: For every unaffected block, the indexed labeled records and therefore every empirical-error sum agree term by term. The public threshold then gives equality of the two restriction classes, and the deterministic accepted essential-list map gives equality of the corresponding lists. The affected block may change arbitrarily, including between empty and nonempty, which is precisely one-coordinate list replacement.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-001-totality} supplies the fixed block-local restriction formula and total empty-class convention. Accepted Proposition~\ref{prop:step-006-essential-lists} supplies the deterministic actual-function list map and finite envelope. Neither dependency conclusion used here requires a utility event. Assumption~\ref{assump:approximate-dp-regime} supplies only the already-fixed positive-branch parameter package.
- Rigor checklist: The argument is pointwise in the fixed partition and raw index, uses ordered replacement rather than add/remove adjacency, and remains valid for arbitrary or inconsistent labels, repeated domain points, empty restrictions, and empty lists. The same affected block works at every stage. No realizability or stochastic conditioning is used.
- Local adversarial test: Replacing a record in block (b) can change every function's membership in \(\mathcal L_b^r\), but no other list coordinate; the cited sparse-sampling interface permits exactly this arbitrary replacement. Empty-to-nonempty and nonempty-to-empty changes therefore do not break the conclusion.
- Contribution to target step: It supplies the exact raw-record-to-one-list map required by both the score query and every fixed-transcript Sparse Sample kernel.
- Verdict: PASS
- Repair direction: None.

### unit_002: Sensitivity one of every max-frequency query

- Statement fidelity: The lemma converts RawList into the exact sensitivity-one hypothesis required by Lyu Lemma 3.2, including stages whose entire union of lists is empty.
- Proof validity: Extending membership frequencies by zero to the common universe makes every function's frequency change by at most the single affected indicator. Taking maxima gives both one-sided inequalities, and swapping the neighboring datasets gives absolute difference at most one. Finite accepted lists ensure the nonzero support is finite, while the all-empty convention gives maximum zero.
- Cited-result and assumption audit: The only nontrivial input is Proposition~\ref{prop:step-009-raw-list}. The proof counts membership of the same actual function across blocks and does not substitute sample traces or representatives.
- Rigor checklist: The maximum exists, duplicate membership across different blocks is counted correctly, and duplicates within a set are irrelevant. If one tuple is all empty, the other can have a nonempty list only in the affected coordinate, so its maximum frequency is at most one, agreeing with the displayed proof.
- Local adversarial test: A complete replacement of one list can simultaneously remove many old functions and add many new ones, but each individual frequency still changes by at most one; hence the maximum cannot jump by two or more.
- Contribution to target step: It discharges query sensitivity uniformly for the full stopped AboveThreshold interaction without a per-stage composition factor.
- Verdict: PASS
- Repair direction: None.

### unit_003: Privacy of the complete stopped AboveThreshold transcript

- Statement fidelity: The proposition targets the entire report transcript of one process with positive-report budget one and external first-Above stopping, not separate privacy guarantees for (d+1) stages.
- Proof validity: For fixed (P), every submitted \(q_r^P\) is a fixed raw-dataset query and unit_002 gives replacement sensitivity at most one. The checked Lyu Lemma 3.2 therefore applies to the whole interactive process. With \(\delta_{\rm AT}=\delta/2\), the conservative logarithm \(g_\delta=\log(4/\delta)\), and the accepted definition of \(\eta\), the first privacy coordinate is at most \(\varepsilon/4\). First-Above stopping and finite all-Below truncation expose only a transcript prefix and are postprocessing of the interactive reports.
- Cited-result and assumption audit: The frozen source states that sensitivity-one queries give \((\eta O(\sqrt{K\log(1/\delta_a)}+\log(1/\delta_a)),\delta_a)\)-DP. The accepted universal \(c_{\rm AT}\) wrapper, (K=1), \(\eta>0\), and \(\delta_a=\delta/2>0\) discharge every source hypothesis. The source does not supply raw sensitivity, and the proof correctly obtains it from unit_002.
- Rigor checklist: The guarantee concerns the joint adaptive transcript, so it has no multiplicative (d+1) factor. The query sequence is public as a sequence of functions of the raw dataset once (P,C), and the parameters are fixed; only its evaluations are private. Empty stages use the total score zero. No utility or common-item event enters.
- Local adversarial test: Immediate Above, final-stage Above, all Below, and neighboring executions with different stopping times are all prefixes of the same one-process interface. Stopping after the first positive report cannot reveal more than the full Lyu transcript.
- Contribution to target step: It supplies the first uniform \((\varepsilon/4,\delta/2)\)-DP component for adaptive composition.
- Verdict: PASS
- Repair direction: None.

### unit_004: Uniform privacy of the transcript-indexed optional call

- Statement fidelity: The proposition defines a raw-input kernel for every fixed stopped transcript, including transcript values that need not be realized on a particular input. It covers one Sparse Sample call after any first Above and the constant default after all-Below exhaustion.
- Proof validity: At a fixed selected stage, accepted list finiteness gives \(|\mathcal L_i^{r_*}|\le L\) on every arbitrary input, unit_001 gives at most one replaced list coordinate, and the accepted ceiling gives \(B\ge10\log(L/\delta_{\rm SS})/\varepsilon_s\). The checked Lyu Lemma 3.1 then yields \((2\varepsilon_s,\delta_{\rm SS})=(\varepsilon/4,\delta/2)\)-DP. Mapping \(\perp\) to fixed \(h_0\) is postprocessing; the no-call kernel is constant and hence \((0,0)\)-DP.
- Cited-result and assumption audit: The frozen Lyu Algorithm 1 has fixed universe, (k\ge1) bounded lists, exponent parameter \(\varepsilon_s>0\), failure score (B), and codomain equal to the list union plus \(\perp\). Lemma 3.1 gives exactly one-list addition/removal/replacement privacy under the displayed size and threshold condition. Both neighboring tuples satisfy the same list bound, and the current raw replacement maps exactly to the source replacement convention.
- Rigor checklist: The parameters are uniform in the transcript and stage, which is the condition needed for adaptive composition. All-empty lists still give the valid \(\perp\)-only mechanism. Immediate Above, intermediate Above, final Above, \(\perp\), arbitrary labels, and empty restrictions are explicitly covered.
- Local adversarial test: Even when a transcript selects a stage impossible under one or both neighboring inputs, the kernel remains a well-defined DP map on both inputs because the stage and transcript are held fixed while the totalized list tuple is evaluated. Thus no conditioning-on-a-common-transcript assumption is hidden.
- Contribution to target step: It supplies the uniform second mechanism for every transcript, including the no-call/default path.
- Verdict: PASS
- Repair direction: None.

### unit_005: Fixed-partition end-to-end privacy under transcript divergence

- Statement fidelity: The proposition proves privacy of the complete fixed-partition learner and explicitly permits neighboring executions to produce different report prefixes and stopping stages.
- Proof validity: Standard adaptive composition applies because the first transcript is \((\varepsilon/4,\delta/2)\)-DP and every fixed-transcript continuation kernel is uniformly \((\varepsilon/4,\delta/2)\)-DP as a function of the same raw input. Hence the joint release is \((\varepsilon/2,\delta)\)-DP. Projection to the released hypothesis and all actual-item, \(\perp\), and exhausted-transcript mappings are data-independent postprocessing.
- Cited-result and assumption audit: The proof restates the exact adaptive-composition theorem it uses. That theorem compares full joint laws and does not require the two neighboring runs to realize the same transcript. Concurrent composition, while source-compatible, is not needed for this branch because the optional call begins only after the stopped AboveThreshold interaction.
- Rigor checklist: The two \(\delta/2\) terms sum to \(\delta\), and there is exactly one optional second call. The result handles immediate stopping, continued querying, different selected stages, all-Below exhaustion, and default output without conditioning on any transcript event.
- Local adversarial test: If one dataset stops at stage zero and its neighbor reaches stage (d), the adaptive theorem still applies: it integrates each transcript against its own first-mechanism law and uses the uniformly private kernel indexed by that transcript. No cross-run stage matching is needed.
- Contribution to target step: It closes fixed-partition all-path privacy with no stage factor.
- Verdict: PASS
- Repair direction: None.

### unit_006: Data-independent partition mixture and all-input privacy

- Statement fidelity: The proposition exports the exact public claim: all-input \((\varepsilon,\delta)\)-DP, together with the stronger positive-branch \((\varepsilon/2,\delta)\) bound and the exact (d=0) boundary.
- Proof validity: The partition law is identical for neighboring inputs because it is a uniform permutation of public indices, independent of labels and record values. Integrating the pointwise fixed-(P) DP inequality preserves both \(e^{\varepsilon/2}\) and the single additive \(\delta\). The zero-dimensional learner is deterministic on its sole length-zero input, and monotonicity in the first privacy parameter gives the advertised \((\varepsilon,\delta)\) guarantee.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-001-boundary-entry} supplies the exact zero-sample branch; Proposition~\ref{prop:step-009-fixed-partition} supplies the pointwise inequality. No utility or realizability conclusion is consumed.
- Rigor checklist: The integration uses the same fixed partition only inside each pointwise comparison, which is exactly the standard data-independent-mixture argument. Replacement remains at one indexed coordinate under the common partition. The additive term integrates to \(\delta\), not a multiple of the number of partitions.
- Local adversarial test: Repeated records do not affect index independence, and an arbitrary nonrealizable replacement still changes only the unique block containing that index. At (d=0), no positive-branch object or division is evaluated.
- Contribution to target step: It removes the fixed-partition conditioning and proves the final all-input DP statement.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the six-unit map. Block locality, max-frequency sensitivity, one-process stopped-transcript privacy, every fixed-transcript continuation kernel, adaptive composition under transcript divergence, and the data-independent partition mixture each have a named theorem-style result. Postprocessing, constant-mechanism privacy, symmetry of ordered adjacency, and integration of a pointwise DP inequality are atomic uses stated where they occur.

The proof does not assume realizability, (E_{\rm good}), common support, actual-selection utility, or population generalization. It also does not treat Lyu's list-level privacy as raw-record privacy: unit_001 supplies that exact bridge before either cited mechanism is used.

## Target Claim Audit

The proof establishes the exact accepted step_009 row under Assumption~\ref{assump:approximate-dp-regime} and accepted step_001/step_006 outputs. For every fixed partition it proves RawList on every labeled neighboring pair; it derives sensitivity one for every stage query; it applies one stopped AboveThreshold privacy guarantee and one uniformly transcript-indexed optional Sparse Sample guarantee; it composes the full laws without matching neighboring transcripts; and it averages over the data-independent partition.

The quantifiers and scope are correct for arbitrary labels, every stage and transcript path, possibly empty restrictions and lists, immediate or final Above, all Below, \(\perp\), default output, exhaustion, and (d=0). The conclusion is unconditional all-input replacement DP and does not depend on a generated utility event.

## Explicit Rate Audit

- Exposed privacy variables are \(\varepsilon\) and \(\delta\). The finite horizon (d+1), list parameters (k,L,B), and mechanism parameters are inherited auxiliaries and do not add a positive structural power to privacy loss.
- The sole hidden source constant is the fixed universal (c_{\rm AT}); it is independent of all exposed parameters, data, partitions, lists, stages, and transcripts.
- Probability mode is the measurable-output-event DP inequality for every ordered neighboring pair, over all partition and mechanism randomness. It is neither high probability nor conditional on utility.
- Horizon mode is one finite stopped transcript followed by at most one optional call. Lyu Lemma 3.2 accounts for the transcript once, so no (d+1) composition term is omitted.
- The exact allocations are
  \[
  c_{\rm AT}\eta(\sqrt{g_\delta}+g_\delta)=\varepsilon/4,
  \qquad 2\varepsilon_s=\varepsilon/4,
  \]
  \[
  (\varepsilon/4,\delta/2)+(\varepsilon/4,\delta/2)
  =(\varepsilon/2,\delta)\preceq(\varepsilon,\delta).
  \]
  The list-size and threshold admissibility conditions are checked before the Sparse Sample call.
- Baseline reduction is exact: the (d=0) branch remains \((0,0)\)-DP with zero samples, while (d=1), immediate/final Above, and all-Below paths use the same constant allocation.

## Notation Surface Audit

The proof classifies the final all-input DP conclusion as public-facing; (F_r^P,T_P,K_t^P,A_P) as appendix-local; and the affected-block index, extended frequency, and partition law as proof-local. Each helper is defined from the accepted total learner or fixed randomization and is eliminated before the public conclusion. No new threshold, margin, event, or theorem-facing assumption is introduced, and the step exports only the privacy interface needed by step_012.

## Target-Step Assembly Audit

The assembly uses theorem-style labels for all six local results. Proposition~\ref{prop:step-009-raw-list} and Lemma~\ref{lem:step-009-score-sensitivity} supply the two raw-data interfaces. Propositions~\ref{prop:step-009-at-privacy} and \ref{prop:step-009-conditional-sparse} supply uniform constituent mechanisms. Proposition~\ref{prop:step-009-fixed-partition} composes their full joint laws, and Proposition~\ref{prop:step-009-mixture} averages the pointwise inequality and adds the exact zero-dimensional branch. These conclusions jointly imply the target verbatim, including all terminal paths and the absence of a stage privacy factor.

## Review Rationale

ACCEPTED is warranted because all six local units are faithful to the unchanged sketch row and valid line by line. The independently checked Lyu statements have exactly the list-size, threshold, one-list replacement, query-sensitivity, positive-report-budget, and approximate-DP interfaces used here. The proof supplies every source-to-current bridge itself, handles transcript divergence through a uniform-kernel adaptive composition argument, and covers every empty, failure, exhaustion, arbitrary-label, and boundary path. No proof-step, dependency, or sketch repair is needed, so None is the smallest retry target.
