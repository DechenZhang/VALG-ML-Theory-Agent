# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_002/proof.md`, SHA-256 `6a5a9661acf92353ad5ddb01a502d596bb890cd3c19906fd8b951c3d3fae142e`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`, with status `ACCEPTED`
- Accepted dependency proof: `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`
- Accepted dependency review: `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256 `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, with status `ACCEPTED`
- Triggering prior review: SHA-256 `c807a9b711ad766b9f41d2b5ed178e56ac3de5f08ede4a3146e553747a8e4a46`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The statement proves exactly the reference-XOR, secondary-quotient, finite-height order, principal-core, and positive-endpoint geometry required by the accepted row. The repaired map is consistently denoted by \(\tau_i:Q_i\to U_i\), while \(\pi_i\) remains reserved for the sketch's scalar factor weight.
- Proof validity: XOR and evaluation quotienting preserve finite patterns and Littlestone trees. Incomparability plus the zero concept excludes a simultaneous positive label, so positive sets are chains and upsets. Every strict chain yields the complete threshold pattern, hence has length at most \(2^{d_i+1}\). Finite upsets and nonempty intersections are principal, and suffix cardinalities give exactly one point at each attained depth.
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-001-quotient-invariance} supplies the exact factor dimensions. The checked Yan threshold comparison supplies only \(\operatorname{TD}\le2^{d_i+1}\), after the proof has translated the current objects. No ordering, finite-domain, tree-selector, or measurable-section assumption is imported.
- Rigor checklist: The proof covers finite and countably infinite quotients, transform-induced coordinate collisions, the zero concept, nonempty active support, and \(d_i=1\). All quantifiers and finiteness claims are explicit.
- Local adversarial test: An incomparable pair cannot be jointly positive without shattering two points, and an infinite positive chain would contain a finite chain longer than the finite threshold bound. At \(d_i=1\), \(1\le H_i\le4\), so the active and positive-endpoint branches remain nonempty.
- Contribution to target step: Supplies the finite ordered depth domain and all core/layer geometry consumed by the remaining units.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: It proves the accepted row's needed improper-core interface, without strengthening the core to a proper concept.
- Proof validity: Comparable pairs miss pattern \((1,0)\) for every upset, while incomparable pairs miss \((1,1)\) for every nonempty core. Thus \(\operatorname{VC}(\mathcal K_i)\le1\). A realizable version space contains the target, and its core indicator agrees with every positive and negative block record.
- Cited-result and assumption audit: The unit uses only Lemma~\ref{lem:step-002-order-geometry}; version-space nonemptiness is derived from realizability rather than assumed.
- Rigor checklist: Empty positive sets, inactive coordinates, inconsistent blocks, empty cores, and both record labels are handled explicitly.
- Local adversarial test: Intersecting positive sets cannot restore a missing jointly-positive pattern on incomparable points, and adjoining the zero hypothesis cannot complete a shattered pair.
- Contribution to target step: Places every transformed target and realizable core indicator in one fixed VC-at-most-one class for the Yan generalization theorem.
- Verdict: PASS
- Repair direction: None

### unit_003: lemma

- Statement fidelity: The repaired statement now declares the countable discrete input/output spaces, \(0<b<1\), \(0<\varepsilon_c\le2\), \(0<\delta_c<1\), the exact BNSV thresholded rule, the immediate-empty-support totalization, replacement privacy, and the utility conclusion.
- Proof validity: The histogram identity (14) gives score and optimum sensitivity one and at most one newly positive output in either replacement direction. Positive supports have size at most \(t\), so all BNSV exponential normalizers and event sums remain finite. When one neighboring support is empty, the other contains one score-one point; the displayed low-OPT calculation gives nonbottom mass \(p\le\delta_c\), and (14a)--(14b) prove both DP directions for events with and without \(\bot\), including \(1\le e^{\varepsilon_c}(1-\delta_c)+\delta_c\).
- Cited-result and assumption audit: Frozen BNSV `alg:choosing`, `lem:CMprivacy`, and `lem:CMutility` use fixed-size replacement and the stated constants. The proof does not attribute the new countable or empty-support branches to BNSV; it proves those extensions locally.
- Rigor checklist: The cases of two empty supports, exactly one empty support, leaving or entering \(\bot\), two nonbottom summaries, and arbitrary measurable output events are complete. The utility implication correctly treats \(q(D,\bot)=0\).
- Local adversarial test: For an all-sentinel database adjacent to one score-one record, forced output \(\bot\) on the former side is private because the latter side passes the noisy threshold with probability at most \(\delta_c\); the reverse inequality for an event containing \(\bot\) is explicitly verified.
- Contribution to target step: Supplies the sole all-input privacy and positive-score interface for the second private stage.
- Verdict: PASS
- Repair direction: None

### unit_004: lemma

- Statement fidelity: The repaired statement explicitly names accepted Lemma~\ref{lem:step-001-logstar}, Lemma~\ref{lem:step-002-order-geometry}, and the fixed-accuracy Yan private-median interface, including the \(1/3\)-median, failure parameter, strict threshold, height, and \(s_i\ge2\) sources.
- Proof validity: Equations (23)--(28) correctly bound \(\log_2^*(H_i+1)\), the private-median threshold, the Hoeffding exponent, the BNSV choosing loss, the ceiling in \(t_i\), and the exact internal sample use. A universal integer \(C_T\) exists because only its last defining right-hand side grows logarithmically, and \(K_*=L_*(C_T+1)\) gives \(N_i\le q_i\) when the setting's universal \(K_Y\) is chosen large enough.
- Cited-result and assumption audit: Yan `thm:private median` supplies the stated universal fixed-accuracy bound on the finite domain \(\{0,\ldots,H_i\}\). Accepted \(s_i\ge2\) and the proved height bound discharge every logarithmic-domain and endpoint condition.
- Rigor checklist: Natural logarithms and base-two log-star are separated; strict and weak inequalities, ceilings, \(0<\delta<1\), and \(0<\varepsilon\le1/10\) are retained. Hidden constants have only universal source/numerical dependence.
- Local adversarial test: At \(d_i=1\), \(s_i=2\), \(H_i+1\le5\), and \(u_i\le3\); as \(\delta\uparrow1\), \(\Lambda_i\ge\log(20e)\). Neither boundary invalidates (23)--(28).
- Contribution to target step: Establishes the complete fixed-confidence internal threshold and its ceiling-safe domination by the exact quota \(q_i\).
- Verdict: PASS
- Repair direction: None

### unit_005: proposition

- Statement fidelity: The proposition defines the exact fixed, permutation-symmetrized, fully totalized rule on \(q_i\) quotient records with output in the accepted standard-Borel space.
- Proof validity: The retained \(N_i\) records split into the calibrated independent-sized blocks; every inconsistent version space, empty core, root layer, missing summary, empty choosing support, and failure output has a pre-data fallback. Since the fixed-length quotient input is countable discrete, every transition-probability function is measurable, and the finite sequence of kernels and deterministic maps gives a probability law on \(\mathcal H_i\). Uniform random permutation makes the law permutation invariant.
- Cited-result and assumption audit: Accepted output measurability supplies the codomain. The private median and choosing kernels are applied only on their checked finite/countable interfaces, and no raw-space standard-Borel or measurable-selector condition is introduced.
- Rigor checklist: The exact divisibility \(N_i=L_*t_i\), inequality \(N_i\le q_i\), countable input, randomized branches, and frozen tie/fallback conventions are explicit.
- Local adversarial test: Conflicting duplicate coordinates yield an empty version space and depth zero; an all-sentinel layer returns the fixed reference. Both remain total measurable probability transitions.
- Contribution to target step: Produces the exact Markov kernel later certified for privacy and utility.
- Verdict: PASS
- Repair direction: None

### unit_006: proposition

- Statement fidelity: It proves replacement-\((\varepsilon/2,\delta/2)\)-DP on all length-\(q_i\) inputs, including nonrealizable and totalization branches.
- Proof validity: Under a common fixed permutation, one replacement changes either no retained record or one record in one block. The depth vector therefore changes in one coordinate. For each released depth, the second stage is constant at zero or is the repaired replacement-private choosing rule on one changed summary. Adaptive composition and postprocessing give exactly (34), and mixing over the data-independent permutation preserves the inequality.
- Cited-result and assumption audit: Yan's private-median kernel and BNSV's replacement choosing interface are restated with current objects and discharged locally. The proof correctly excludes Yan's printed partial privacy wrapper.
- Rigor checklist: Used and unused positions, arbitrary depth changes, \(z=0\), \(z\ge1\), empty support, sentinel transitions, all measurable events, and both adjacency directions are covered.
- Local adversarial test: A changed block may remove one layer point and add another, but equation (14) handles that replacement rather than assuming addition-only adjacency. No privacy term depends on the size of the layer.
- Contribution to target step: Establishes the exact pointwise all-input factor privacy interface.
- Verdict: PASS
- Repair direction: None

### unit_007: lemma

- Statement fidelity: It gives the exact fixed marginal \(1/48\) bad-core probability and the \(t_i/12\) bad-count tail used by the fixed-confidence route.
- Proof validity: Independent permutation of an iid sample preserves the iid joint law of retained disjoint blocks. The transformed target and each data-dependent core indicator lie in one fixed VC-at-most-one class and agree empirically, so Yan `thm:learn vc` applies uniformly. Hoeffding gives exactly \(e^{-t_i/128}\le\eta\).
- Cited-result and assumption audit: The checked Yan theorem has the displayed \(48/a\), \(10\operatorname{VC}\log(48e/a)\), and \(\log(5/b)\) threshold, which is met by \(L_*\) at \(a=1/64\), \(b=1/48\).
- Rigor checklist: The population event is measurable on the countable quotient, block independence is used only here, and nonidentical bad probabilities bounded by \(1/48\) are allowed.
- Local adversarial test: Data dependence of the core does not invalidate the source event because the source conclusion is uniform over all pairs in \(\mathcal K_i\); no union bound over the \(t_i\) blocks is taken.
- Contribution to target step: Ensures that each median side contains a good comparison block at the required confidence.
- Verdict: PASS
- Repair direction: None

### unit_008: proposition

- Statement fidelity: The proposition proves exactly the unpadded iid quotient-risk guarantee \((1/64,1/4096)\), without asserting utility for padded or nonrealizable data.
- Proof validity: Realizability nests every nonempty core inside the transformed target chain. A successful \(1/3\)-median gives at least \(t_i/6\) blocks on each side. The deep side gives one layer point with score at least \(t_i/6\), and choosing slack leaves score at least \(t_i/12>0\). The shallow side contains a good core nested below the selected upset, so its target disagreement dominates the output disagreement. The \(z=0\) branch uses a good empty core. Reference XOR and \(\tau_i\) preserve mistakes pointwise.
- Cited-result and assumption audit: The proof consumes only the checked median output, repaired countable choosing result, Lemma~\ref{lem:step-002-good-cores}, and the locally proved order/core geometry. It does not consume Yan's all-block-good assertion or raw confidence corollary.
- Rigor checklist: The reference-zero target, empty cores, \(z=0\), positive support, random released depth, countable quotient, exact risk mode, and union of the three failure events are covered. The total failure is \(3/16384<1/4096\).
- Local adversarial test: If the transformed target is zero, every realizable core is empty and a successful median can only return zero. If \(z\ge1\), uniqueness of the depth-\(z\) point on the target chain prevents choosing a wrong positive-score branch.
- Contribution to target step: Establishes the complete fixed-confidence factor utility and zero-residual bridge back to the original quotient risk.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. Secondary quotient invariance and nested principal-upset geometry are proved in `unit_001`; the improper core class in `unit_002`; countable and empty-support replacement privacy in `unit_003`; every quantitative threshold in `unit_004`; kernel totality and measurability in `unit_005`; adaptive all-input privacy in `unit_006`; iid bad-core concentration in `unit_007`; and the two-sided median/choosing risk comparison in `unit_008`. The composition, mixture, XOR, and quotient steps used in the assembly are exact consequences already stated in those named units.

## Target Claim Audit

All binding and dependency hashes match the review identity. The accepted dependency supplies exactly the quotient dimensions, \(s_i\ge2\), standard-Borel output, and measurable zero-residual risk interface used here.

The three attempt-1 blockers are fully closed: \(\tau_i\) replaces the conflicting quotient-map symbol everywhere; Lemma~\ref{lem:step-002-countable-choosing} now states its parameters and measurable spaces and proves both empty-support DP directions; and Lemma~\ref{lem:step-002-calibration} names the height, log-star, and exact private-median sources in its statement.

The frozen Yan source `<TEMP_ROOT>/yan2505-src/main.tex` has SHA-256 `12d177c0dc94864dcc90bc904e558187dcdbd752de3fd0f412bfa6898ada8f06`; its `thm:learn vc`, threshold comparison, `thm:private median`, and median definition support the exact interfaces used. The frozen BNSV source `<TEMP_ROOT>/p1i3_bnsv.tex` has SHA-256 `ae85c2352f6373357d60166aa88626edcb11337d2a5f4efe5d1c83edf355649e`; `alg:choosing`, `lem:CMprivacy`, `lem:CMutility`, and their proofs support the replacement histogram constants. The locally new totalizations are proved rather than attributed to those sources.

The eight accepted units jointly prove the exact sketch-row claim for every factor, every allowed \(\varepsilon,\delta\), every length-\(q_i\) input for privacy, and every unpadded realizable iid quotient input for utility. The proof does not change the target, dependency list, primitive assumptions, output space, probability mode, or risk metric.

## Explicit Rate Audit

The proof exposes \(d_i,s_i,q_i,\varepsilon,\delta\), the fixed factor accuracy/confidence, and both internal privacy allocations. Hidden constants depend only on checked universal source constants and displayed numerical choices. Fixed quantities, high-probability utility, pointwise privacy, fixed-invocation horizon, exact \(0\)-\(1\) risk, and the no-padding utility condition are all stated.

Equations (23)--(28) explicitly dominate the \(TD+1\) log-star term, private-median threshold, Hoeffding tail, choosing loss, and ceiling. No term is absorbed by prose. The \(d_i=1\) and \(\delta\uparrow1\) boundaries remain valid, and no class, factor, quotient, or support cardinality enters the rate. At \(k=1\), the construction is the same quotient-first totalized factor rule at the stated quota order, so the inherited baseline is preserved.

## Notation Surface Audit

The public export is limited to \(\bar A_i^{\rm Yan}\), \(q_i\), factor privacy, and factor utility. The order geometry is appendix-local and the calibration/event objects are proof-local. Every helper has stated provenance and surface classification. The repaired secondary quotient map \(\tau_i\) no longer conflicts with the sketch-defined factor weight \(\pi_i=\omega_i\), and no other symbol is reused with a changed meaning.

## Target-Step Assembly Audit

The assembly cites all eight local results by theorem-style names and stable labels. Units 001--002 establish the transformed quotient and core class; units 003--004 establish the second private interface and exact quota; units 005--006 establish the total kernel and all-input privacy; and units 007--008 establish fixed-confidence unpadded utility. Their conclusions cover the deep and shallow median sides, inconsistent inputs, empty version spaces and cores, root and sentinel branches, empty choosing support, \(d_i=1\), countable quotients, reference XOR, exact risk, and source nonoutput boundaries. They jointly imply every component of `step_002` without an unreviewed bridge.

## Review Rationale

`ACCEPTED` is warranted because the current attempt preserves the accepted sketch interface and proves each local unit under allowed primitive assumptions, the accepted `step_001` outputs, or fully checked cited-result interfaces. Independent source and boundary checks found no remaining flaw in order geometry, improper-core closure, countable choosing privacy, calibration, Markov-kernel legality, adaptive privacy, confidence concentration, or final utility. All three triggering local defects are repaired without introducing a new assumption or changing the target, so no producer retry is required and `None` is the smallest retry target.
