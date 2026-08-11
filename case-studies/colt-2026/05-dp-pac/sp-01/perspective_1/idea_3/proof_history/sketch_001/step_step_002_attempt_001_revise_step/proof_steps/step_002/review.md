# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_002/proof.md`, SHA-256 `7772e92a9fa51d6395b554b28f56a48123f8085dac2a7b18b12f17a73a2fccd9`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`, with status `ACCEPTED`
- Accepted dependency proof: `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`
- Accepted dependency review: `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256 `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, with status `ACCEPTED`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_002

## Blocking Issues

1. **Location:** Lemma~\ref{lem:step-002-order-geometry}, equations (4), (30), and (43), and `## Notation And Assumption Notes`. **Defect:** the proof defines the secondary quotient map as \(\pi_i:Q_i\to U_i\), while the accepted sketch has already fixed \(\pi_i:=\omega_i=s_i/M\) as the factor weight. This is symbol reuse with a different type and meaning inside the binding branch. **Downstream effect:** later lower steps and final assembly use \(\pi_i\) for the factor masses, so the step cannot be translated or consumed with a stable notation surface. **Smallest repair direction:** rename the secondary quotient map, for example to \(\tau_i\), in all eight-unit statements, derivations, output definitions, and notation notes; do not alter the sketch-row claim or exported kernel interface.

2. **Location:** Lemma~\ref{lem:step-002-countable-choosing}, especially its statement and the empty-positive-support paragraph after equation (14). **Defect:** the statement does not declare \(0<b<1\), \(0<\delta_c<1\), the discrete output sigma-field, or the exact BNSV thresholded kernel parameters. The proof then asserts privacy of the new immediate-\(\bot\) branch without displaying the source Case-(a) precondition for the unique score-one neighbor or both DP directions for events containing \(\bot\). The target instantiation does satisfy the needed conditions, but they are not part of the theorem statement or fully discharged in its proof. **Downstream effect:** Proposition~\ref{prop:step-002-factor-privacy} relies on this lemma for all-input replacement privacy, including empty-support and sentinel transitions, so its cited-result discharge is incomplete as written. **Smallest repair direction:** state the missing parameter and measurable-space conditions and add the short calculation that a score-one neighbor lies in BNSV's low-\(\operatorname{OPT}\) case, hence has nonbottom probability at most \(\delta_c\), followed by the two directional event inequalities, including \(1\le e^{\varepsilon_c}(1-\delta_c)+\delta_c\).

3. **Location:** the statement of Lemma~\ref{lem:step-002-calibration}. **Defect:** it lists only Assumptions~\ref{assump:vc-one-factors} and \ref{assump:global-privacy-range}, but its conclusion uses the height \(H_i\le2^{d_i+1}\) from Lemma~\ref{lem:step-002-order-geometry}, \(s_i\ge2\) from accepted Lemma~\ref{lem:step-001-logstar}, and the exact fixed-accuracy Yan private-median threshold represented by \(C_{PM}\). Those sources appear only in the proof body. This violates the required self-contained local-statement and assumption-provenance interface. **Downstream effect:** the exact quota certificate \(N_i\le q_i\), and therefore the kernel's declared input length, cannot be cited downstream from the lemma statement alone. **Smallest repair direction:** name both prior lemmas and the restated Yan private-median interface in the statement, including the \(1/3\)-median and failure-\(\eta\) instantiation; retain equations (15)--(28) unchanged.

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The statement covers the accepted row's reference transform, secondary quotient, VC/LD preservation, finite height, principal cores, and positive \(TD+1\) endpoint under the allowed structural inputs.
- Proof validity: XOR and the second evaluation quotient preserve finite patterns and trees. Incomparability plus the zero concept excludes the \((1,1)\) pattern, so each positive set is a chain and an upset. A strict chain realizes the source threshold pattern, giving height at most \(2^{d_i+1}\). Finite upsets and their nonempty intersections are principal, and suffix sizes give one point at each integer depth. The derivation is valid.
- Cited-result and assumption audit: Accepted `step_001` supplies \(\operatorname{VC}=1\) and \(\operatorname{LD}=d_i\). Yan v2's unlabeled comparison immediately before `cor: threshold dimension and littlestone dimension` does state \(TD\le2^{d_L+1}\). No source tree selector or finite-domain convention is imported.
- Rigor checklist: Quantifiers cover finite and countably infinite quotients, transform-induced coordinate collisions, the zero concept, and \(d_i=1\). The only contract failure is the reuse of \(\pi_i\) for a map after the accepted sketch fixed it as a scalar weight.
- Local adversarial test: Incomparable points cannot both be positive under one concept without shattering a pair; an infinite positive chain would contain arbitrarily long finite threshold patterns and contradict finite LD. At \(d_i=1\), \(1\le H_i\le4\), so the active domain and the positive endpoint remain nonempty.
- Contribution to target step: Supplies all order, depth, finite-height, and core geometry used by the remaining units.
- Verdict: REVISE_STEP
- Repair direction: Rename the secondary quotient map consistently; the mathematical derivation need not change.

### unit_002: lemma

- Statement fidelity: It proves the exact improper-core replacement required by the sketch rather than asserting that a version-space core is proper.
- Proof validity: Comparable points miss \((1,0)\) for every upset; incomparable points miss \((1,1)\) for every nonempty core. Thus \(\operatorname{VC}(\mathcal K_i)\le1\). A transformed target is its singleton-version-space core indicator, or zero, and a realizable version core agrees with every labeled block record.
- Cited-result and assumption audit: Only Lemma~\ref{lem:step-002-order-geometry} is used. Version-space nonemptiness is derived from realizability and is not promoted to an assumption.
- Rigor checklist: Inactive coordinates, empty positive sets, empty cores, inconsistent blocks, positive labels, and negative labels are handled separately.
- Local adversarial test: For an incomparable pair, every defining positive set omits at least one point, so intersection cannot restore \((1,1)\); adding the zero function cannot restore a missing shattering pattern.
- Contribution to target step: Produces one fixed VC-one class containing both the data-dependent core hypothesis and the transformed target for Yan `thm:learn vc`.
- Verdict: PASS
- Repair direction: None

### unit_003: lemma

- Statement fidelity: The intended claim is the correct local bridge from BNSV's 1-bounded-growth choosing mechanism to a countable solution set, replacement adjacency, sentinels, and empty support.
- Proof validity: For nonempty support, equation (14) gives coordinate sensitivity one, \(\operatorname{OPT}\) sensitivity one, and at most one newly positive output in each direction. Because each positive support has size at most \(t\), every exponential-mechanism normalization remains a finite sum, so the BNSV proof extends to the countable discrete solution space. The immediate-empty-support branch is repairable for the target parameters but is not completely proved in the submitted unit.
- Cited-result and assumption audit: Frozen BNSV `alg:choosing`, `lem:CMprivacy`, and `lem:CMutility` use fixed-size one-row replacement and give the quoted constant \(16/\varepsilon_c\). Their privacy proof at the frozen source's choosing appendix uses exactly the sensitivity and directional-support facts claimed here. The new countable/empty-support wrapper is not a printed BNSV output and therefore must carry its own complete parameter and event audit.
- Rigor checklist: Leaving/entering nonbottom summaries and transitions to or from \(\bot\) satisfy equation (14). The missing \(b,\delta_c\) ranges and two-direction empty-support inequalities are material local-statement defects.
- Local adversarial test: If one database has all-sentinel summaries and its neighbor has one non-sentinel summary, the submitted totalization changes the former law to a point mass at \(\bot\). Privacy follows only after proving the neighbor's nonbottom mass is at most \(\delta_c\) and checking events containing \(\bot\); those displayed checks are absent.
- Contribution to target step: It is the sole all-input privacy and positive-score source for the second private stage.
- Verdict: REVISE_STEP
- Repair direction: Add the exact parameter/sigma-field statement and the empty-support likelihood inequalities described in Blocking Issue 2.

### unit_004: lemma

- Statement fidelity: The numerical conclusions are exactly the median-size, Hoeffding, choosing-slack, and quota obligations in the accepted row, including the \(d_i=1\) endpoint.
- Proof validity: Equations (23)--(28) are correct. In particular, \(u_i\le s_i+1\le3s_i/2\), \(\Lambda_i\ge\log(20e)\), the implicit universal choice of \(C_T\) exists because its left side is linear and its right side logarithmic, and \(N_i\le K_*\Xi_i\le q_i\) is ceiling-safe. The source's strict private-median sample inequality is also dominated strictly.
- Cited-result and assumption audit: Yan `thm:private median` has the stated \(\log^*|\mathcal X|\), \(\varepsilon^{-1}\), and squared-log dependence; fixing median accuracy \(1/3\) permits its factor to be absorbed into \(C_{PM}\). The proof uses accepted \(s_i\ge2\) and the preceding height lemma correctly, but the statement fails to name them.
- Rigor checklist: Natural and base-two logarithms are separated, ceilings are retained, \(0<\delta<1\) and \(0<\varepsilon\le1/10\) are used explicitly, and no exposed quantity enters a hidden constant.
- Local adversarial test: At \(d_i=1\), \(s_i=2\), \(H_i+1\le5\), and \(u_i\le3\); equations (24)--(28) remain valid. As \(\delta\uparrow1\), \(\Lambda_i\ge\log(20e)\), so none of the logarithmic domination arguments degenerates.
- Contribution to target step: Supplies the complete fixed-confidence internal threshold and exact \(q_i\) interface.
- Verdict: REVISE_STEP
- Repair direction: Restate the lemma with its named prior-result and cited-source basis; retain the derivation and constants.

### unit_005: proposition

- Statement fidelity: The rule is defined on exactly \(q_i\) records, is permutation symmetrized, is total on every input, and has the accepted standard-Borel quotient output.
- Proof validity: The first \(N_i\) permuted records split into the declared blocks; every inconsistent version space, empty core, missing layer, empty choosing support, and off-utility output has a fixed branch. A finite/countable discrete fixed-length input makes every transition-probability map measurable, and the selected countable output map into \(\mathcal H_i\) is measurable.
- Cited-result and assumption audit: The accepted dependency supplies the standard-Borel output. The finite-domain private median and finite-positive-support choosing kernels define probability laws for every fixed input. No raw-space standard-Borel or measurable-selector assumption is introduced.
- Rigor checklist: \(N_i\le q_i\), exact block divisibility, countable input, randomized output, and data-independent frozen conventions are explicit.
- Local adversarial test: Inconsistent labels on one transformed coordinate give an empty version space and depth zero; all-sentinel layer summaries return the fixed reference; both paths still define probability measures and measurable transitions.
- Contribution to target step: Produces the exact total Markov kernel consumed by privacy and utility.
- Verdict: PASS
- Repair direction: None beyond propagating the required quotient-map rename and repaired upstream statements.

### unit_006: proposition

- Statement fidelity: It targets replacement-\((\varepsilon/2,\delta/2)\)-DP on all length-\(q_i\) inputs, including nonrealizable and totalization branches.
- Proof validity: Under a common data-independent permutation, one raw replacement changes either no used record or one record in one block. Hence it replaces one depth, and for fixed released depth it replaces at most one layer summary. Adaptive composition of the private median and fixed-depth choosing kernels gives equation (34), and postprocessing plus mixing over the common permutation preserves it.
- Cited-result and assumption audit: Yan's DP definition is one-entry replacement, and `thm:private median` supplies the first kernel. Frozen BNSV also defines neighboring fixed-size databases by one-row replacement. The cited printed Yan `thm:privacy-OPTPrivateLearner` is correctly excluded because it does not establish these totalized leaving/entering branches.
- Rigor checklist: Same-block replacement, unused records, arbitrary depth changes, \(z=0\), \(z\ge1\), empty support, sentinel transitions, measurable events, and both privacy directions are within the construction, subject to repair of unit_003's explicit empty-support audit.
- Local adversarial test: A replacement can remove one layer point and introduce a different one, but equation (14) gives one decrement and one increment rather than an addition-only change. No privacy cost depends on the number of possible layer points.
- Contribution to target step: Establishes the exact all-input factor privacy interface once unit_003 is made locally complete.
- Verdict: PASS
- Repair direction: None beyond the required unit_003 repair.

### unit_007: lemma

- Statement fidelity: It gives the fixed marginal \(1/48\) bad-core probability and the \(t_i/12\) bad-count tail required by the fixed-confidence route.
- Proof validity: Independent permutation of an iid sample leaves the retained coordinates iid; disjoint blocks are independent. The target and core indicators lie in one fixed VC-at-most-one class and have zero empirical disagreement, so Yan `thm:learn vc` applies even though the core is data dependent. Hoeffding gives exactly \(e^{-t_i/128}\).
- Cited-result and assumption audit: The frozen Yan statement has the exact factor \(48/a\), the \(10VC\log(48e/a)\) term, and \(\log(5/b)\). Equation (16) is a valid ceiling specialization at \(a=1/64\), \(b=1/48\), and \(VC\le1\).
- Rigor checklist: The population event is measurable on the countable quotient; independence is blockwise, not asserted for later private outputs; the inequality allows nonidentical bad probabilities bounded by \(1/48\).
- Local adversarial test: A data-dependent core does not invalidate the VC theorem because the source event is uniform over pairs in \(\mathcal K_i\). No union bound over the \(t_i\) blocks is used.
- Contribution to target step: Supplies a good shallow comparison block with failure probability \(\eta\).
- Verdict: PASS
- Repair direction: None

### unit_008: proposition

- Statement fidelity: It proves the exact unpadded iid quotient-risk guarantee \((1/64,1/4096)\), with no padded or nonrealizable utility claim.
- Proof validity: Realizability places every core below the transformed target on one finite chain. The deep median side gives at least \(t_i/6\) identical layer-\(z\) summaries; choosing slack leaves positive score at least \(t_i/12\). The shallow side contains a good core below the selected upset, making target disagreement monotone as in (42). The \(z=0\) branch uses a good empty core. XOR and the secondary quotient preserve the error indicator exactly.
- Cited-result and assumption audit: The proof consumes only the private-median output, the repaired BNSV choosing interface, unit_007, and directly proved order geometry. Yan's printed all-block-good lemma and raw \((t+2)\beta\) corollary are correctly nonoutputs.
- Rigor checklist: The three failure events total \(3/16384<1/4096\); no independence between them is required. The reference target, empty cores, \(z=0\), positive score, countable support, and exact risk mode are covered.
- Local adversarial test: If the transformed target is zero, every realizable version core is empty and a successful median must return zero. For \(z\ge1\), all nonbottom summaries have the unique target-chain point of depth \(z\), so choosing cannot select a wrong branch point with positive score.
- Contribution to target step: Establishes the complete factor utility and zero-residual reference/quotient bridge.
- Verdict: PASS
- Repair direction: None beyond the local repairs already identified.

## Hidden Subclaim Scan

The second quotient's pointwise error preservation, iid preservation under independent permutation, adaptive fixed-depth composition, and the monotonicity in (41)--(42) are present in the appropriate named units and do not require new sketch steps. The only underproved independent local subclaim is the immediate-empty-support modification of BNSV choosing: it is assigned to `unit_003`, but its parameter precondition and full event inequalities must be displayed there. The one-sentence inference that a finite nonempty positive upset is principal is elementary from unit_001's finite-chain and upset facts and does not require a ninth unit.

## Target Claim Audit

All binding artifact hashes and both dependency hashes match the controller-supplied identities. The accepted dependency exports exactly the factor VC/LD values, \(s_i\ge2\), standard-Borel output, and exact measurable risk used here.

The frozen Yan source was independently checked at `<TEMP_ROOT>/yan2505-src/00README.json` (version 2, SHA-256 `82b43c687c36f1cb274b80688cc68934a133505a931cdd9936e2b8e948bb512b`) and `<TEMP_ROOT>/yan2505-src/main.tex` (SHA-256 `12d177c0dc94864dcc90bc904e558187dcdbd752de3fd0f412bfa6898ada8f06`). The exact labels and the unlabeled threshold comparison support the restatements. The proof correctly does not consume Yan's `thm:privacy-OPTPrivateLearner`, unlabeled all-block-good claim, raw \((t+2)\beta\) corollary, or partial tree algorithm as the missing wrapper conclusions.

The frozen BNSV source `<TEMP_ROOT>/p1i3_bnsv.tex` (SHA-256 `ae85c2352f6373357d60166aa88626edcb11337d2a5f4efe5d1c83edf355649e`) was independently checked at `alg:choosing`, `lem:CMprivacy`, `lem:CMutility`, and their appendix proofs. It uses fixed-size one-row replacement and proves the quoted constants for finite positive support. Countable finite-positive-support extension is valid; immediate empty-support totalization is a new local wrapper and requires the missing explicit audit in Blocking Issue 2.

Modulo the three local defects, the eight conclusions imply the exact sketch-row claim with the correct quantifiers, fixed-factor high-probability mode, pointwise all-input privacy, exact \(0\)-\(1\) risk, and no padding utility. No stronger/weaker target, new dependency, new primitive condition, or changed source interface is needed, so `REVISE_SKETCH` and `BLOCKED_BY_DEPENDENCY` would be too broad.

## Explicit Rate Audit

The proof exposes \(d_i,s_i,q_i,\varepsilon,\delta\), the fixed factor accuracy/confidence, and the two internal privacy allocations. Hidden constants are restricted to the checked universal source/numerical constants. The probability mode is high-probability utility and pointwise replacement privacy; the horizon is one fixed factor call; the norm is exact quotient \(0\)-\(1\) risk; and no auxiliary tolerance is hidden.

Equations (23)--(28) explicitly dominate the private-median threshold, Hoeffding tail, choosing loss, ceiling, and complete internal use. At \(d_i=1\), \(s_i=2\), \(H_i+1\le5\), and every logarithm remains in its declared domain. The bound remains uniform as \(\delta\uparrow1\), and there is no class-, quotient-, support-, or factor-cardinality dependence. At \(k=1\), the constructed factor rule retains the same quotient-first Yan quota order and risk interface; no baseline conclusion is weakened. The rate derivation itself passes, but its local theorem statement must be repaired as in Blocking Issue 3.

## Notation Surface Audit

The public export is appropriately limited to \(\bar A_i^{\rm Yan}\), \(q_i\), factor privacy, and factor utility. The order geometry is appendix-local and the calibration/event objects are proof-local. However, the secondary quotient map \(\pi_i\) conflicts with the accepted sketch's public factor weight \(\pi_i=\omega_i\). This is a blocking notation-surface violation even though the two meanings do not occur in the same displayed equation in this step. Renaming the map removes the conflict without expanding the public interface.

## Target-Step Assembly Audit

The assembly cites all eight local results by theorem-style names and stable labels. Units 001--002 provide the current order/core objects; unit_003 supplies the second private component; unit_004 supplies exact sample calibration; units 005--006 supply the total kernel and privacy; and units 007--008 supply fixed-confidence utility. The deep and shallow median sides, all-input totalization, source nonoutputs, \(d_i=1\), countable quotients, inconsistent inputs, empty supports, the reference target, and unpadded-only utility are all represented.

The mathematical dependency graph is complete, but the assembly cannot yet certify the exact target because it consumes unit_003's incomplete empty-support privacy interface, unit_004's non-self-contained statement, and notation that conflicts with the binding sketch. No new bridge lemma or changed output target is required.

## Review Rationale

`REVISE_STEP` is the smallest sound status. Independent source inspection and adversarial checking found no failure in the order geometry, improper-core argument, quota inequalities, confidence ledger, one-changed-block privacy reduction, or final risk comparison. The defects are nevertheless blocking under the proof-step contract: a binding symbol is redefined, one new all-input privacy wrapper omits conditions and a required two-direction branch check, and one rate-bearing local statement hides its named dependency/source basis in the proof body. All three can be repaired in `step_002` without changing the accepted sketch row, assumptions, dependencies, intended tools, output target, or rate. A fresh `/proof-step-review step_002` is required after the producer repair before downstream use.
