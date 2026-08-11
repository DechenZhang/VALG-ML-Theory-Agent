# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_011`
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_011/proof.md`
- Reviewed proof SHA-256: `4d74815bd98d393bbf1f6645eb3baf852b0c1cd3b0315f8d9740440dd0fd09ef`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs:
  - `step_003`: `092c5ba976f43a4b7d1bf746aba05c1caa0d49f2bd3de55a254f58dc6e4c4a7f` / `5ba08c887b44fc901e74bd3bc2793a06e3accf2a7d999f62532ec042c211eb87`
  - `step_008`: `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760` / `cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b`
  - `step_010`: `117f4a769b754335bafb792f0390fbae81beaf8967d93fb9aa89f3dafd0b1925` / `ac0b37a40b9d38d6c49c5ffc5e5e91dec51b2f264eed56c9e03da84c6b6897e3`
- Independently checked primary source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, frozen source SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-record-locality} states exactly the raw-to-quotient and quotient-to-one-block localization needed by the sketch, including equality after quotienting and the empty-input case.
- Proof validity: Coordinatewise application of (T_N) preserves every unchanged record, so one raw replacement becomes equality or one quotient replacement. A fixed index partition places the unique changed coordinate in exactly one block, leaving every other ordered block identical. No label/feature consistency or realizability is used.
- Cited-result and assumption audit: The proof uses only the setting-defined record map, replace-one adjacency, and data-independent partition. These are definitions rather than hidden generated invariants; no unlisted dependency is consumed.
- Rigor checklist: Equality and strict-neighbor cases, same-cell collapse, label changes, duplicate records, every changed block, and (N=0) are distinguished correctly. The direction is pointwise and deterministic.
- Local adversarial test: Replacing a raw point by a different point in the same quotient cell with the same label gives identical quotient tuples; changing its label gives one quotient replacement; both routes satisfy the statement. The unique empty tuple creates no mechanism or partition ambiguity.
- Contribution to target step: It supplies the exact record transport used to prove one-list locality and the final raw pullback.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-list-locality} proves the missing all-input record-to-one-list interface simultaneously at all (d+1) stages and the exact sensitivity-one query condition at every common transcript prefix.
- Proof validity: Accepted Step 008 defines each restriction and essential list from its one ordered block and public stage data, totalizes empty restrictions locally, and gives the unconditional cap (L). Hence all unchanged blocks have identical lists under a quotient replacement. The displayed pointwise membership difference is at most one; taking maxima in both directions correctly yields (|q_r-q'_r|\le1).
- Cited-result and assumption audit: The current Step 003, Step 008, and Step 010 proof/review pairs match their pinned hashes and are accepted. Only Step 008's unconditional block-local list and cap interfaces and Step 010's algebraic list-score interface are used; the event-conditional Step 008 inclusions and Step 010 mechanism-good conclusion are not used.
- Rigor checklist: The maximum is attained on the finite union when nonempty and is zero when all lists are empty. Coordinatewise sanitation cannot alter another block. Fixed encodings do not create positional multiplicity, while the same function in different block sets is correctly counted once per block. A common prefix selects the same next public stage.
- Local adversarial test: Completely replacing the affected block's list, all-empty and partially empty tuples, an invalid list sanitized to empty, repeated encodings, duplicate functions across blocks, arbitrary nonrealizable labels, and first/last-stage queries all retain one-coordinate adjacency and sensitivity one.
- Contribution to target step: It discharges both source privacy lemmas' data-to-list/query hypotheses without using a utility event.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-at-privacy} establishes one finite first-`Above` transcript with exactly the allocated ((\varepsilon/4,\delta/2)) privacy cost, rather than composing over stages.
- Proof validity: At each common prefix Unit 2 supplies a sensitivity-one query. Frozen Lyu Lemma 3.2 applies to the interactive process with at most one counted crossing; stopping at the first crossing and truncating after (d+1) queries are postprocessings. The calculation with (g_\delta=\log(4/\delta)) and the universal (c_{\rm AT}) correctly bounds the source first coordinate by (\varepsilon/4).
- Cited-result and assumption audit: The frozen source states the Cohen--Lyu AboveThreshold guarantee as (\eta O(\sqrt{K\log(1/\delta_a)}+\log(1/\delta_a))) for sensitivity-one queries. The accepted parameter dictionary fixes (c_{\rm AT}) to dominate that universal constant. Assumption~\ref{assump:approximate-dp-regime} supplies (0<\delta<1), so every logarithm and allocation is legal.
- Rigor checklist: The proof obtains the reverse inequality by reapplying DP to the reversed ordered pair. Transcript exhaustion, empty-list scores, arbitrary labels, and no-selection are ordinary transcript outcomes. No good-noise, realizability, or accuracy event is conditioned upon.
- Local adversarial test: Arbitrarily many `Below` reports up to the finite horizon, immediate `Above`, stage-(d) `Above`, and no `Above` are all one stopped transcript governed by the same source guarantee. Thus no hidden (d+1) privacy multiplier appears.
- Contribution to target step: It proves the first private component with the exact allocation required for adaptive composition.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-sparse-privacy} supplies a uniformly private second kernel for every common transcript value, including selected stages, no-call histories, exhaustion, and invalid tags, without requiring neighboring executions to select the same stage.
- Proof validity: For a fixed selected-stage history, Unit 2 maps quotient neighbors to list tuples differing in at most one entire coordinate, all capped by (L). The ceiling-defined (B) satisfies frozen Lyu Lemma 3.1, yielding ((2\varepsilon_{\rm SS},\delta_{\rm SS})=(\varepsilon/4,\delta/2))-DP. Mapping (\perp) to (\bar c_0) is measurable postprocessing; every no-call continuation is constant.
- Cited-result and assumption audit: Frozen Lyu Algorithm 1 samples on the global domain from the finite union plus (\perp), and Lemma 3.1 has exactly the list-cap, threshold, and one-list addition/removal/replacement conclusion used here. No selected-score, actual-output, or source-good premise enters the privacy application.
- Rigor checklist: All-empty support has the positive finite (\perp) normalizer; partially empty lists need no exception. An actual item equal to (\bar c_0) and (\perp) may share the postprocessed value without changing the preimage argument. Zero-probability histories are totalized so the family is uniform over the finite history space.
- Local adversarial test: If neighboring first transcripts select different stages, the proof never compares cross-stage lists. Each common history has its own private second kernel, and transcript divergence is left to Unit 5. Selected all-empty, invalid/sanitized, (\perp), out-of-support, and no-call paths all remain covered.
- Contribution to target step: It proves the exact second-component privacy interface required by adaptive composition.
- Verdict: PASS
- Repair direction: None.

### unit_005: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-adaptive-composition} gives precisely the finite-history adaptive composition and measurable postprocessing theorem needed for histories that may differ across neighboring runs.
- Proof validity: The hockey-stick submeasure (P^0=\min\{p,e^{\varepsilon_1}q\}\lambda) loses at most (\delta_1) mass and is dominated by (e^{\varepsilon_1}Q). Applying the same construction to every finite-history second kernel loses at most (\delta_2) conditionally. Their joint submeasure has mass at least ((1-\delta_1)(1-\delta_2)\ge1-\delta_1-\delta_2) and is dominated by (e^{\varepsilon_1+\varepsilon_2}\mathsf J_{x'}), proving the displayed sum-(\delta) bound.
- Cited-result and assumption audit: No external composition theorem is invoked. Finiteness of the transcript makes the conditional submeasure family measurable, and the statement explicitly requires uniform DP for every history-indexed second kernel.
- Rigor checklist: The proof establishes domination of a genuine joint submeasure, controls its missing mass without an erroneous exponential factor on (\delta_2), repeats the argument for the reverse ordered pair, and applies postprocessing only through measurable preimages.
- Local adversarial test: Disjoint transcript supports up to the allowed (\delta_1), second-stage bad mass varying with history, and neighboring runs selecting different stages are all covered by the same joint-submeasure calculation. No shared-noise or equal-history coupling is assumed.
- Contribution to target step: It converts Units 3-4 into a valid adaptive joint law with cost ((\varepsilon/2,\delta)).
- Verdict: PASS
- Repair direction: None.

### unit_006: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-quotient-dp} proves the exact all-input quotient-kernel inequality for every measurable (H_C)-event after adaptive composition, output totalization, and mixing over the data-independent partition.
- Proof validity: Units 3-5 give ((\varepsilon/2,\delta))-DP for each fixed-partition transcript/output law. The released hypothesis is a measurable postprocessing of this joint law. Integrating the pointwise fixed-partition inequalities against the common partition law preserves the exponent and pays the additive (\delta) once because the partition weights sum to one.
- Cited-result and assumption audit: Accepted Step 003 supplies the finite transcript and quotient kernels on every input. The exact procedure uses fresh Sparse Sample coins after the first transcript, so its law has the history-indexed factorization used in Unit 5. No event-conditional Step 008 or Step 010 utility output is consumed.
- Rigor checklist: The six-route fallback audit covers empty restrictions/lists, selected all-empty or partially empty tuples, no selection, exhaustion, (\perp), actual/default value collision, coordinatewise sanitation, invalid transcript tags, zero-normalizer and out-of-support zero-probability paths. Mechanism coins are already integrated inside each conditional kernel.
- Local adversarial test: Arbitrary nonrealizable labels, duplicates, different selected stages, immediate or absent success, every fixed changed block, improper outputs, and every measurable event remain in (31). Randomizing the partition cannot reveal which block changed because its law is data-independent and is not released.
- Contribution to target step: It establishes the theorem-facing quotient replacement-DP result before raw pullback.
- Verdict: PASS
- Repair direction: None.

### unit_007: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-raw-dp} gives the exact quotient-to-raw transfer, the requested ((\varepsilon,\delta)) conclusion, and the (d=0,N=0) null branch.
- Proof validity: Unit 1 leaves only equality or strict quotient adjacency. Equality gives equality of pulled-back laws; strict adjacency permits direct application of Unit 6. Since (e^{\varepsilon/2}\le e^\varepsilon), the stronger ((\varepsilon/2,\delta)) inequality implies the target guarantee without changing (\delta).
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-003-raw-pullback} supplies the exact identity (A_N(s,E)=K_C(T_N(s),E)) and the raw Markov kernel. The null law is the accepted exact Dirac branch, not a generated event or asymptotic specialization.
- Rigor checklist: The reverse direction is reproved for the reversed pair. Same-cell replacement, label-only change, arbitrary labels, every measurable (H_C)-event, and improper release are covered. The decoder is correctly left outside the private release and would only be postprocessing.
- Local adversarial test: At (d=0,N=0) there is one empty input and a constant law, hence ((0,0))-DP. At the formal (k=2) positive-branch boundary, list replacement, occurrence sensitivity, and both source mechanisms remain well-defined; no privacy line divides by (k-1) or uses the utility teacher margin.
- Contribution to target step: It closes all raw-input and null/boundary obligations and exports exactly the requested privacy interface.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the seven-unit map. Raw record transport, simultaneous all-stage list locality, adaptive-query sensitivity, both cited mechanism instantiations, differing-history composition, output/fallback postprocessing, partition mixing, and raw pullback each have a named unit. The fixed-partition mechanism law factors as the private first transcript followed by the uniformly private history-indexed continuation because the exact accepted procedure draws the optional Sparse Sample outcome only after the transcript. Measurability of these kernels and of every fallback/status coordinate is supplied by accepted Step 003. No stage-agreement, actual-output, realizability, (E_{\mathrm{good}}), mechanism-good, empirical-risk, population-risk, or occurrence-mark premise is hidden in the assembly.

## Target Claim Audit

The proof establishes the exact accepted Step 011 row. For every raw replace-one pair, including arbitrary nonrealizable labels, it proves equality or quotient replacement, one changed block, one changed list coordinate at every stage, sensitivity one at every common AboveThreshold prefix, one ((\varepsilon/4,\delta/2))-private stopped transcript, and one uniformly ((\varepsilon/4,\delta/2))-private optional Sparse Sample continuation. Exact adaptive composition yields quotient ((\varepsilon/2,\delta))-DP, partition mixing preserves it, and the raw pullback gives the stronger raw ((\varepsilon/2,\delta)) guarantee and hence the requested ((\varepsilon,\delta)) guarantee. Quantifiers cover all measurable output events, all terminal paths, different selected stages, (d=0,N=0), and the formal (k=2) boundary. No utility or rate theorem is overclaimed.

## Explicit Rate Audit

This step is rate-bearing only through its explicit privacy allocation. It exposes (\varepsilon,\delta,\eta,c_{\rm AT},g_\delta,\varepsilon_{\rm SS},\varepsilon_{\rm AT},\varepsilon_{\rm sp},\delta_{\rm AT},\delta_{\rm SS},L,B), while (d,N,k) determine the already fixed finite mechanism horizon and list interface. The source constant (c_{\rm AT}) is universal and exposed; no hidden constant depends on the class, input, partition, list, transcript, or generated event. The probability mode is a deterministic all-input DP inequality, the horizon is one finite stopped transcript plus at most one second call, and the metric is replace-one labeled-data adjacency with measurable-event output comparison. Equations (8), (18), and the proved composition display every simplification:

\[
 2\varepsilon_{\rm SS}=\varepsilon/4,\qquad
 \varepsilon_{\rm AT}\le\varepsilon/4,\qquad
 \varepsilon/4+\varepsilon/4=\varepsilon/2\le\varepsilon,
 \qquad \delta/2+\delta/2=\delta.
\]

There is no probability conversion, sample-size simplification, or hidden stage multiplier. The partition mixture retains one additive (\delta). Baseline reduction is exact at (d=0,N=0); no-call reduces the second component to a constant kernel; and the formal (k=2) specialization changes no privacy calculation.

## Notation Surface Audit

The sole public-facing export is the raw learner's ((\varepsilon,\delta))-DP guarantee. Fixed-partition kernels, occurrence queries, transcript tags, history-indexed continuations, generic composition measures, and privacy-allocation variables are appropriately appendix-local or proof-local and are all classified in the proof. The notation preserves setting meanings for (K_C,A_N,T_N,H_C,\bar c_0); it introduces no unproved constant, event, boundedness condition, generated invariant, or theorem-facing helper dictionary. The stronger ((\varepsilon/2,\delta)) bound is a transparent intermediate, not an altered public target.

## Target-Step Assembly Audit

The assembly is dependency-complete and uses theorem-style names and labels throughout. Lemma~\ref{lem:step-011-record-locality} and Proposition~\ref{prop:step-011-list-locality} supply exact record/block/list/query locality. Propositions~\ref{prop:step-011-at-privacy} and~\ref{prop:step-011-sparse-privacy} instantiate the two frozen source privacy lemmas with checked hypotheses and allocations. Lemma~\ref{lem:step-011-adaptive-composition} handles different histories and postprocessing, Proposition~\ref{prop:step-011-quotient-dp} handles all quotient inputs and partition mixing, and Proposition~\ref{prop:step-011-raw-dp} applies the accepted raw-kernel identity. These results jointly imply the exact target without a new lemma, changed dependency, strengthened assumption, utility event, or sketch-interface bridge.

## Review Rationale

`ACCEPTED` is the smallest sound status. The binding setting/sketch pair, submitted proof, all three dependency proof/review pairs, and frozen Lyu source match their pinned hashes. Fresh per-unit, source, assumption-provenance, hidden-subclaim, boundary, and adversarial audits validate the all-input list locality, raw and quotient neighbor handling, both mechanism allocations, finite-history adaptive composition, fallback totalization, differing selected stages, partition mixture, (d=0,N=0), and formal (k=2) case. The exact Step 011 claim follows under the unchanged accepted sketch, so no producer or sketch retry is warranted.
