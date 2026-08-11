# Proof Sketch

## Formalized Setting

Let \(X\) be arbitrary and let \(C\subseteq\{0,1\}^X\) be a possibly infinite binary class with
\[
v:=\operatorname{VC}(C)\le d:=\operatorname{LD}(C)<\infty.
\]
Utility is distribution-free realizable PAC utility under `assump:realizable-iid`; privacy is central approximate DP on every neighboring pair of labeled datasets, including nonrealizable pairs, under `assump:approximate-dp-regime`. The only class condition is `assump:finite-littlestone`. Learners may be improper and computationally unbounded.

The proposed learner must retain Lyu's exact valid \((p,d)\)-decompositions, essential-SOA lists, sparse sampling, decomposition-dimension descent, and \(d+1\) stage counter. In Lyu, arXiv:2510.00076, the relevant source interfaces are `def: p-decomposition`, `claim: exist decomposition`, `lemma: number of leaves`, `lemma: p-decomposition`, `coro: essential hypotheses`, `algo:private sample`, `lemma: privacy of sparse sampling`, `algo: abovethreshold`, `lemma: privacy of abovethreshold`, `thm: DP-ERM-littlestone`, and `coro: PAC learning`.

The sole proposed change is to replace Lyu's stage scheduler by Cohen et al.'s Reorder-Slice-Compute (RSC) interface from arXiv:2211.06387 / DOI:10.1145/3564246.3585148. In `algo:partition`, computation \(t\) is supplied as a tuple
\[
(m_t,\mathcal A_t,E_t),
\]
where \(E_t\) is a deterministic adjacency-preserving map from multisets to lists and \(\mathcal A_t\) is already \((\varepsilon_0,\delta_0)\)-DP. A slice of random size \(m_t+\operatorname{Geom}(1-e^{-\varepsilon_0})\) is removed before the next tuple is processed. The applicable source conclusions are `theo:partition-private`, `coro:kdelayed`, and `theo:partition-privatek`; Cohen et al.'s threshold-specific utility conclusions are outside this branch.

## Formalized Goal

This is initial sketch attempt 1 in exact-goal mode. Prove that universal constants \(K\ge1\) and \(k_0\in\mathbb N\cup\{0\}\) exist such that the fully instantiated \(A_C^{\mathrm{RSC-Lyu}}\) is \((\varepsilon,\delta)\)-DP and, with probability at least \(1-\beta\), has population error at most \(\alpha\) using
\[
n\le K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^{k_0}
\left(
\frac{d^4\log(1/(\delta\beta))}{\varepsilon\alpha}
+\frac{v+\log(1/\beta)}{\alpha}
\right).
\]
The constants and logarithmic envelope may not hide any positive power of \(d\) or \(v\), any dependence on \(\log^+|C|\), or any Lyu/RSC list, stage, slice, support, transcript, or generated-event parameter. RSC applicability, adjacency preservation, per-slice privacy, record-use legality, noisy-slice utility, sparse-selection privacy, and the \(d^4\) rate must be derived rather than assumed.

## Sketch Identity

- Sketch attempt: 1
- Run mode: initial sketch, exact-goal mode

## Proof Roadmap

No viable roadmap survives source/interface preflight. The intended framework, "one RSC run with one noisy disjoint slice per Lyu stage," is recorded as rejected in `technical_survey.md`.

There are two independent earliest failures.

First, Cohen et al.'s RSC theorem is a privacy accounting theorem for computations that are already DP. It does not turn Lyu's deterministic stage maps or essential-list construction into DP computations. At the first RSC call, before any transcript exists, the branch supplies no \((\varepsilon_0,\delta_0)\)-DP algorithm \(\mathcal A_1\) having the exact required Lyu stage output. Lyu's sensitivity-one frequency test and Sparse Sample mechanism make a per-stage DP wrapper plausible, so this isolated omission is a sketch/interface defect rather than the decisive idea defect. Even granting such a wrapper, fresh disjoint stages lose Lyu's source utility interface; using the complete Lyu learner as the single already-DP computation preserves that interface but leaves its \(d^5\) bound unchanged.

Second, the claimed rate-saving factor is absent from the source proof. The proof of Lyu's `thm: DP-ERM-littlestone` chooses
\[
k_{\mathrm{teach}}=\frac{d^2\log(1/\delta)}{\varepsilon}
\quad\text{and}\quad
m_{\mathrm{block}}:=\frac{n}{k_{\mathrm{teach}}}\asymp\frac{d^3}{\alpha},
\]
so
\[
n=k_{\mathrm{teach}}m_{\mathrm{block}}
\asymp\frac{d^5\log(1/\delta)}{\varepsilon\alpha}
\]
at the source's displayed scale, up to its logarithmic and rounding conventions. The same \(k_{\mathrm{teach}}\) blocks are reused at all \(d+1\) stages. One AboveThreshold/Sparse-Vector execution searches for the first successful stage, and Sparse Sample is invoked only at that stage. Lyu explicitly identifies this sparse-vector scheduling as the device that already removes the naive factor from composition over \(d\) trials and improves the earlier \(d^6\) bound to \(d^5\). Thus the current source rate contains no additional multiplicative \(d+1\) stage-allocation term for RSC to amortize.

Because the fixed-block/disjoint-slice conflict and the missing rate mechanism require a changed procedure or a new theorem-critical source not present in the setting, no lemma-sized proof-step graph is opened. Repairing only the tuple wrapper would not produce a viable downstream graph.

## Rate Objectives

- Objective type: structural-parameter explicit, confidence-explicit, privacy-parameter explicit, fixed-sample PAC rate.
- Exposed variables: \(d,v,\alpha,\beta,\varepsilon,\delta\); \(|C|\) appears only in the separate finite-class baseline arm through \(\log^+|C|\).
- Hidden constants may depend on: nothing; \(K\) and the integer exponent \(k_0\) must be universal.
- Hidden constants may not depend on: \(X,C,D,c,|C|\), any decomposition, \(p\), any essential list or list size, \(d+1\), any RSC slice size or transcript, any support or good event, or any failure-allocation parameter.
- Fixed quantities: The theorem is uniform over all displayed parameters. In the source-facing class-complexity comparison, \(\alpha,\beta,\varepsilon\) are held fixed and \(\delta\) varies only along the self-consistent sequences specified in `setting.md`; \(X,D,c\) remain uniformly quantified.
- Probability mode: end-to-end DP over all algorithmic randomness on every neighboring dataset pair; utility with probability at least \(1-\beta\), jointly over the i.i.d. sample, scheduler randomness, and learner randomness.
- Horizon mode: fixed-sample minimax PAC complexity; no horizon, stopping-time, conditional-event, or expectation upgrade.
- Norm mode: population binary \(0\)-\(1\) risk \(\operatorname{err}_D(h,c)\).
- Required bridge or simplification obligations: instantiate the RSC base parameters \((\varepsilon_0,\delta_0,\widehat\delta,\tau)\); discharge every tuple hypothesis; eliminate \(p,L_{\mathrm{raw}},B,\tau\), noisy overshoots, and failure allocations; recover Lyu's utility on the RSC slices; prove the VC generalization term; and give explicit inequalities reducing the technical sample count to the displayed public rate.
- Baseline invariance obligations: retain universal coverage of every possibly infinite finite-Littlestone class; retain the existing \(\widetilde O(d^5)\) learner as a valid baseline rather than misreporting it as \(d^4\); and take the finite-class minimum only after the new arm has a valid common-parameter DP-PAC bound.

The required \(d^4\) bridge is unavailable. Retaining Lyu's source choices yields
\[
\frac{d^2\log(1/\delta)}{\varepsilon}\cdot\frac{d^3}{\alpha}
=\frac{d^5\log(1/\delta)}{\varepsilon\alpha}.
\]
The essential-list source also retains
\[
L_{\mathrm{raw}}(p,d)=p^d2^{d^2},
\qquad
B\ge \frac{10\log(L_{\mathrm{raw}}(p,d)/\delta)}{\varepsilon},
\]
while RSC changes neither this list envelope nor Lyu's fixed-block concentration requirement. Applying `theo:partition-private` only changes privacy parameters to
\[
\bigl(O(\varepsilon_0\log(1/\widehat\delta)),
\widehat\delta+2\tau\delta_0\bigr).
\]
It supplies no inequality eliminating a raw \(d\). Reusing a slice for all stages through `coro:kdelayed` instead gives
\[
O\!\left(\varepsilon_0(d+1+\log(1/\widehat\delta))\right)
\quad\text{and}\quad
\widehat\delta+2(d+1)\tau\delta_0,
\]
so privacy rescaling restores an explicit stage-count cost.

The literal disjoint-stage interpretation is even farther from the target. Retaining the source resources for each stage would require, at the displayed \(d\)-powers,
\[
n_{\mathrm{RSC}}
\asymp (d+1)k_{\mathrm{teach}}m_{\mathrm{block}}
=\widetilde O\!\left(\frac{d^6\log(1/\delta)}{\varepsilon\alpha}\right),
\]
where the notation records the instantiated construction scale, not a lower bound on all learners. If instead the original \(d^5\)-scale master sample is divided among \(d+1\) stages, a stage receives only about \(k_{\mathrm{teach}}/(d+1)=\widetilde O(d/\varepsilon)\) teacher blocks rather than the source choice \(\widetilde O(d^2/\varepsilon)\). At the requested \(d^4\) master-sample scale it receives only \(\widetilde O(1/\varepsilon)\). Neither RSC privacy theorem reduces the essential-list threshold \(B\), so no source common-item/Sparse-Sample utility conclusion applies at either reduced stage budget.

## Assumption Provenance Objectives

All theorem-facing conditions remain exactly the three primitive conditions in `setting.md`. The following necessary facts are derived outputs, not admissibility assumptions:

| Needed derived output | Primitive/source inputs that would have to imply it | Required producer | Status |
| --- | --- | --- | --- |
| A legal RSC tuple for every stage | `assump:finite-littlestone`, Lyu's sensitivity-one frequency query and Sparse Sample lemma, and Cohen `algo:partition` | A wrapper proving each \(\mathcal A_t\) already DP and each \(E_t\) adjacency preserving | Source ingredients exist, but the exact wrapper is absent; `blocker_001` |
| Legal record-use invariant | RSC removal of every slice and the released transcript | A producer showing later stages access no earlier raw block | Conflicts with Lyu's fixed-block reuse; `blocker_002` |
| Lyu interleaving/common-item event on noisy slices | `assump:realizable-iid`, Lyu \(E_{good}\), and RSC slice law | A coupling proving the exact cross-stage inclusion and decomposition descent | No current same-object bridge; `blocker_002` |
| Sparse-selection neighbor interface | Lyu's bounded essential lists and the raw-record-to-list map | A bridge showing one raw replacement changes at most one list at the one successful Sparse Sample call | Valid in Lyu's fixed partition, but not produced by the proposed RSC stage wrapper; `blocker_004` |
| End-to-end \((\varepsilon,\delta)\)-DP | Legal tuples, base-parameter allocation, and any delayed calls | A quantitative privacy bridge | Missing legal tuple inputs; `blocker_001` |
| \(d^4\) technical and public rates | All Lyu raw controls plus the RSC accounting | A rate-amortization and Rate Specialization Bridge | The purported removable factor is absent; `blocker_003` |

No conditional local lemma can make these facts theorem-facing because the formalized goal is unconditional.

## Mechanism-Source And Boundary Stress

### `blocker_001`: RSC compute-interface and privacy direction

- Step ID: `blocker_001` (no proof step is opened).
- Claim class: theorem-critical privacy wrapper and generated per-slice DP condition.
- Theorem role: make the proposed RSC-Lyu transcript and final hypothesis \((\varepsilon,\delta)\)-DP.
- Mechanism source: Cohen et al., arXiv:2211.06387, `algo:partition` and `theo:partition-private`; source objects are a multiset \(D_{t-1}\), deterministic adjacency-preserving \(E_t\), and an already \((\varepsilon_0,\delta_0)\)-DP \(\mathcal A_t\). The proposed branch objects are labeled samples, input-dependent Lyu classes and essential lists, and a stage transcript.
- Source-to-claim adequacy: Incomplete but plausibly repairable at sketch level. The source theorem controls privacy leakage caused by adaptive noisy disjoint slicing after the compute algorithms are DP. It does not privatize a deterministic stage map, essential-list producer, or arbitrary stage output. Lyu's sensitivity-one frequency query with Laplace noise and `lemma: privacy of sparse sampling` could supply a base-private stage output after proving that one raw replacement changes only one teacher list, but no exact current-notation \(\mathcal A_t\) or transcript interface is supplied. `theo:threshold-privacy` and `theo:learning-threshold` concern the separate finite-threshold procedure and export no arbitrary-class Lyu-stage wrapper.
- Residual-to-target adequacy: The produced source conclusion is RSC privacy conditional on legal tuples; the consumed target is privacy of the RSC-Lyu transcript. The residual consists of the missing base DP guarantee for every \(\mathcal A_t\), the missing exact \(E_t\), and the missing current-object mapping. None is controlled by `assump:finite-littlestone`, disjointness, or the RSC theorem.
- Key positive/control term or structural source: each record belongs to at most one removed slice, conditional on adjacency-preserving \(E_t\), together with the already-DP likelihood-ratio control of \(\mathcal A_t\).
- Opposing defect terms: nonprivate input-dependent candidate extraction, possible publication of a changed essential list, stateful AboveThreshold use, and an unspecified data-to-order map.
- Closure/dominance/absorption relation: Slice disjointness cannot dominate a missing per-slice DP hypothesis. A possible same-setting wrapper would internally partition one stage slice, keep essential lists private, publish only the noisy frequency decision or Sparse Sample output, and prove that one raw replacement changes one list; this bridge is absent and does not address `blocker_002` or `blocker_003`.
- Accumulation behavior / scope compatibility: Unsupported in the current artifact at the first call. If Lyu's mechanisms are assembled into independently DP stages, `theo:partition-private` can account for disjoint calls, but `blocker_002` and `blocker_003` remain. If the same slice is revisited \(d+1\) times, `coro:kdelayed` accumulates an explicit \(d+1\) term.
- Obligation locality classification: `sketch/interface defect`, downstream of the independent idea-level defects.
- Noncircular closure status: Missing but potentially noncircular. Calling an output "RSC-privatized" assumes the exact base privacy that Cohen's theorem requires as input; a valid wrapper would instead derive base privacy first from Lyu's private mechanisms.
- Entry-state / first-update stress result: With empty prior transcript, RSC must receive \((m_1,\mathcal A_1,E_1)\). The branch specifies only the exact Lyu stage map, not an already-DP \(\mathcal A_1\). The privacy mechanism is inactive before its output is consumed.
- Baseline conclusion preserved: Wrapping the complete already-DP Lyu learner as \(\mathcal A_1\) would preserve the existing universal \(d^5\) conclusion, but not the required new \(d^4\) conclusion.
- Producer-consumer provenance: the absent tuple wrapper should produce legal tuples for RSC privacy accounting and all later transcript consumers; there is no earlier producer.
- Null or boundary regime tested: The failure occurs for point functions (\(d=1\)), finite thresholds, and the full cube, because it is an interface requirement independent of class geometry. For \(d=0\), Lyu's displayed \(k=d^2\log(1/\delta)/\varepsilon\) and \(p_j=2^jnd\) do not instantiate a positive-block RSC tuple; a trivial constant-class branch would be an additional procedure case not currently specified.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. Without already-DP computes, disjointness alone does not imply DP.
- Repair route if source is unsupported: If the idea-level rate and record-reuse defects were first replaced, define the exact DP stage algorithms and maps in `/proof-sketch`. Wrapping the whole Lyu learner is already interface-valid but preserves only \(d^5\).

### `blocker_002`: fixed-block reuse versus removed noisy slices

- Step ID: `blocker_002` (no proof step is opened).
- Claim class: generated interleaving invariant, common-item support, and accumulated stage-utility closure.
- Theorem role: transfer Lyu's decomposition-dimension descent and low-error output guarantee to the RSC execution.
- Mechanism source: Lyu's proof of `thm: DP-ERM-littlestone`, where one random partition \(S_1,\ldots,S_{k_{\mathrm{teach}}}\) defines every \(H_i^j\), the event \(E_{good}\) holds simultaneously for all \(i,h\), and
  \[
  H_i^{j+1}\subseteq\bigcap_{i'}H_{i'}^j.
  \]
  Cohen `algo:partition` instead removes every noisy prefix \(S_t\) before stage \(t+1\).
- Source-to-claim adequacy: Fails for the consumed execution. Lyu's source theorem proves its inclusion and descent for the same fixed teacher blocks across stages. It gives no conclusion for adaptively ordered, geometrically perturbed, stage-specific disjoint slices. Cohen's RSC theorem is privacy-only and exports no concentration, list-membership, common-item, or empirical-risk conclusion.
- Residual-to-target adequacy: The produced source object is the fixed-partition family \(\{H_i^j\}_{i,j}\); the consumed target is a family built from distinct RSC stage slices. They are different random objects. The residual includes different empirical errors, variable slice sizes, adaptive leftovers, and the missing cross-stage set inclusion. No equality or risk/list transfer bound is supplied.
- Key positive/control term or structural source: Lyu's simultaneous relative-error event with tolerance \(1/(5d)\) on every fixed block.
- Opposing defect terms: fresh-slice empirical fluctuations, geometric overshoot, adaptive reorder/leftover dependence, and loss of access to prior raw blocks.
- Closure/dominance/absorption relation: None under the exact source interface. Giving every stage a fresh source-sized collection multiplies sample use by up to \(d+1\); reusing old blocks violates RSC removal unless delayed computation is used, and delayed computation still requires already-DP calls and incurs the explicit call-count loss.
- Accumulation behavior / scope compatibility: Unsupported. The stagewise mismatch persists for each of \(d+1\) stages and has no telescoping, cancellation, or finite source budget compatible with the \(d^4\) target.
- Obligation locality classification: `idea/theorem-contract defect` under the exact scheduler-only and exact-rate contract.
- Noncircular closure status: Failed. Assuming the source interleaving event for the new noisy slices would assume the generated invariant that must be proved.
- Entry-state / first-update stress result: At stage 1, the first slice can define a stage-1 family. After its removal, stage 2 has a different sample, so the source relation comparing \(H_i^2\) to every stage-1 teacher family has no producer before it is used.
- Baseline conclusion preserved: The fixed-partition Lyu execution preserves its \(d^5\) utility. The disjoint-slice execution has no source-equivalent utility conclusion.
- Producer-consumer provenance: a missing coupling should produce the cross-stage inclusion, essential-list compatibility, common item, and low-error event for decomposition descent, sparse selection, and final PAC utility.
- Null or boundary regime tested: For point functions and finite thresholds the mismatch already appears between the first and second stages. Threshold-specific RSC utility does not prove the Lyu inclusion. For the full cube with \(d=v\), there are \(d+1\) stages and fresh source-sized stage samples exacerbate rather than remove polynomial \(d\)-dependence. In a single-stage \(d=0\) case the cross-stage issue disappears, but the source parameterization is undefined and does not establish the universal asymptotic claim.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. Without the interleaving inclusion, failure to find a common item does not imply one-unit decomposition-dimension descent.
- Repair route if source is unsupported: Reuse the fixed partition, or design and prove a new fresh-slice utility algorithm. The former abandons the proposed disjoint scheduler and the latter changes the source procedure and rate analysis; candidate route `/subagent-idea-generator`.

### `blocker_003`: nonexistent one-power stage amortization

- Step ID: `blocker_003` (no proof step is opened).
- Claim class: explicit structural-rate improvement and public Rate Specialization Bridge.
- Theorem role: export the universal \(d^4\) sample bound with no hidden replacement factor.
- Mechanism source: The claimed source is RSC avoidance of naive adaptive composition. The audited Lyu source already uses `algo: abovethreshold` / `lemma: privacy of abovethreshold` to locate the first successful stage and calls Sparse Sample once. Lyu explicitly states that this replaces the earlier naive composition over \(d\) trials and accounts for its prior \(d^6\)-to-\(d^5\) improvement.
- Source-to-claim adequacy: Fails. RSC controls a privacy-composition loss that is not a multiplicative term in the current PAC sample arithmetic. The source instead chooses \(k_{\mathrm{teach}}=d^2\log(1/\delta)/\varepsilon\) and \(m_{\mathrm{block}}\asymp d^3/\alpha\), not \((d+1)\) copies of a \(d^4\) stage budget.
- Residual-to-target adequacy: After any scheduler-only substitution, the technical count remains
  \[
  n_{\mathrm{source}}\asymp d^5\log(1/\delta)/(\varepsilon\alpha)
  \]
  at the displayed source scale. The residual \(d\) relative to the required \(d^4\) scale is persistent unless a new argument improves a teacher-count or block-size control. RSC supplies no such bound on \(L_{\mathrm{raw}}\), \(B\), the teacher count, or the fixed-block concentration size.
- Key positive/control term or structural source: None for eliminating a remaining raw \(d\). RSC's positive privacy control only replaces composition across legal DP slice computations.
- Opposing defect terms: \(d^2\) in the teacher/list/privacy threshold scale and \(d^3\) in the fixed-block interleaving scale. Literal disjoint staging adds a further \(d+1\) copies of those resources; splitting a fixed master sample among stages leaves too few teacher lists for the unchanged source threshold.
- Closure/dominance/absorption relation: The required inequality would need to prove \(d^5\le \operatorname{polylog}(d)d^4\) uniformly in growing \(d\), which is false. The factor cannot be absorbed into \(\Lambda^{k_0}\).
- Accumulation behavior / scope compatibility: The raw factor is multiplicative and nondecaying across the universal class-complexity regime; it has no finite failure budget, cancellation, or rescaling source.
- Obligation locality classification: `idea/theorem-contract defect`.
- Noncircular closure status: Failed. Calling one of the existing raw factors "per-stage privacy splitting" merely renames, rather than derives away, the factor.
- Entry-state / first-update stress result: Before stage 1, the learner has already allocated \(k_{\mathrm{teach}}\) blocks of source-required size. The \(d^5\) count is incurred before any RSC stage-composition saving could activate.
- Baseline conclusion preserved: The exact source calculation preserves the \(d^5\) baseline. Replacing it syntactically by \(d^4\) would violate baseline-reduction and explicit-rate contracts.
- Producer-consumer provenance: no producer exists for the claimed amortization; final privacy, PAC utility, and the public \(\min\{\log^+|C|,d^4\}\) frontier all consume it.
- Null or boundary regime tested: Point functions and thresholds with fixed \(d\) cannot witness an asymptotic power saving. The full cube \(C=\{0,1\}^{[d]}\) exposes growing \(d=v\) and leaves the audited raw multiplication unchanged. For all \(d\to\infty\), \(d^5/(d^4\Lambda^{k_0})=d/\Lambda^{k_0}\) is not uniformly bounded for a fixed polylogarithmic envelope exponent.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. Without a new teacher-count or block-size theorem, the requested technical-to-public rate implication is false.
- Repair route if source is unsupported: Improve an actual raw Lyu control or change the learner. Either adds a theorem-critical mechanism beyond a scheduler substitution; candidate route `/subagent-idea-generator`.

### `blocker_004`: adjacency, candidate support, and ordering wrapper

- Step ID: `blocker_004` (downstream; no proof step is opened).
- Claim class: adjacency-preserving slice extraction and input-dependent sparse-selection interface.
- Theorem role: map a neighboring raw-record replacement to the source privacy units used by RSC and Sparse Sample.
- Mechanism source: Cohen `algo:partition` requires deterministic adjacency-preserving \(E_t\) under its add/remove adjacency convention. Lyu `lemma: privacy of sparse sampling` gives \((2\varepsilon_s,\delta_s)\)-DP under arbitrary addition, removal, or replacement of one bounded list \(\mathcal L_i\), with \(B\ge10\log(L/\delta_s)/\varepsilon_s\).
- Source-to-claim adequacy: Partial only for Lyu's original fixed partition. Candidate appearance or disappearance does not itself violate Sparse Sample privacy; the source lemma already permits wholesale replacement of one list. What is missing is a legal RSC map showing how one raw neighboring record moves through the ordered noisy slices and changes at most the source-authorized unit for the published computation. An input-dependent candidate ordering is not automatically adjacency preserving, and no \(E_t\) is defined.
- Residual-to-target adequacy: The produced Lyu guarantee is privacy on a dataset of lists; the consumed target is privacy on raw labeled datasets under replacement adjacency and the RSC transcript. The raw-record-to-one-list and raw-record-to-one-slice transfer is absent for the proposed stage execution. Cohen's add/remove adjacency can be converted to replacement adjacency through one deletion and one insertion with only constant-factor privacy loss, so that convention mismatch is not a polynomial-rate blocker.
- Key positive/control term or structural source: bounded essential-list size and, in the original learner, the fact that one raw record changes one fixed teacher block.
- Opposing defect terms: a neighboring record can change an entire essential list, an input-dependent ordering can move many records between prefixes, and stage adaptation can alter later tuple choices.
- Closure/dominance/absorption relation: A data-independent fixed ordering, conditioned on its coins, could preserve adjacency at the raw-list level; it would not solve the missing per-slice DP, utility, or rate interfaces. No candidate-dependent ordering relation is supplied.
- Accumulation behavior / scope compatibility: Downstream unsupported. RSC can handle adaptive tuple choices only after every tuple hypothesis is met; the missing transfer cannot be charged to disjointness alone.
- Obligation locality classification: `sketch/interface defect` downstream of `blocker_001`-`blocker_003`.
- Noncircular closure status: Failed for the proposed wrapper because the record-to-slice/list invariant has no producer.
- Entry-state / first-update stress result: For neighboring datasets whose differing record lies at the first-slice boundary, a fixed adjacency-preserving ordering yields adjacent prefixes under Cohen's coupling. If the ordering is recomputed from input-dependent Lyu candidates, the source theorem gives no such relation. In either case, the first computation must still already be DP.
- Baseline conclusion preserved: Lyu's original one-block-change analysis remains available for its fixed partition; it is not a bridge for the new RSC transcript.
- Producer-consumer provenance: a missing wrapper should feed RSC privacy, Sparse Sample privacy, transcript postprocessing, and final DP.
- Null or boundary regime tested: Candidate support can appear or disappear even for point functions and thresholds; Sparse Sample tolerates this only at the one-list replacement interface. The full cube offers no extra stability. Empty lists are allowed only together with the source algorithm's failure symbol and threshold analysis, not as proof of raw-data adjacency.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes for the proposed raw-data privacy transfer, though this issue alone could be repaired at sketch level if the earlier idea-level defects were absent.
- Repair route if source is unsupported: Define and prove the exact fixed-coin \(E_t\), raw-neighbor-to-list mapping, and tuple privacy wrapper in a revised viable idea; smallest downstream candidate `/proof-sketch`, sequenced after idea revision.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Legal adaptive RSC tuple sequence | Cohen `algo:partition` states the required interface; no branch producer | Stage count \(d+1\), labeled master sample, exact Lyu stage descriptions | RSC controls adaptive tuple selection only after base DP and adjacency; base DP and exact \(E_t\) are uncontrolled | Conditional RSC objects are not equal to the unspecified branch tuples | None; disjointness cannot imply base DP | None | RSC privacy theorem and transcript | `blocker_001` |
| Cross-stage Lyu interleaving and common-item event | Lyu fixed-partition \(E_{good}\) only | Source relative concentration on the same \(k_{\mathrm{teach}}\) blocks | Fixed-block sampling error is controlled; fresh noisy-slice, adaptive-leftover, and cross-stage object mismatch are uncontrolled | Fixed-partition \(H_i^j\) is not the RSC-slice \(H_{i,t}^j\); no same-target bridge | Missing set-inclusion/risk-transfer relation | Source tolerance \(1/(5d)\), only for the fixed partition | Decomposition descent, essential-list overlap, sparse selection, utility | `blocker_002` |
| Raw-neighbor sparse-selection interface | Lyu `coro: essential hypotheses` and `lemma: privacy of sparse sampling` | \(\lvert\mathcal L_i\rvert\le p^d2^{d^2}\) and one-list replacement in the original partition | Candidate support changes are controlled by approximate DP at list level; raw-to-RSC-list transfer is uncontrolled | Dataset-of-lists privacy is not yet raw-dataset transcript privacy | Need one-record-to-one-list plus legal RSC tuple mapping | \(B\ge10\log(L/\delta_s)/\varepsilon_s\) | Successful-stage output and final DP | `blocker_004` |
| End-to-end \((\varepsilon,\delta)\)-DP | Cohen `theo:partition-private` plus Lyu private mechanisms, if interfaces were legal | Formula \((O(\varepsilon_0\log(1/\widehat\delta)),\widehat\delta+2\tau\delta_0)\) | Parameter rescaling is controllable; missing base computes, ordering maps, and data reuse are not | The formula cannot transfer through absent tuple hypotheses | No valid hypothesis-discharge implication | Privacy budget \((\varepsilon,\delta)\), but no base allocation can cure missing source interfaces | Final theorem | `blocker_001`, `blocker_002`, `blocker_004` |
| Public \(d^4\) sample bound | No producer; Lyu exports only its \(d^5\) theorem | \(k_{\mathrm{teach}}=d^2\log(1/\delta)/\varepsilon\), \(m_{\mathrm{block}}\asymp d^3/\alpha\), list envelope, stage counter | Logs are allowed; the remaining multiplicative \(d\) in the displayed source construction is uncontrolled | The source-instantiated \(d^5\) count exceeds the \(d^4\Lambda^{k_0}\) target in growing \(d\) unless a new raw-control theorem is supplied | Required uniform domination of the unchanged source count is false | No positive slack source; \(\Lambda\) is polylogarithmic only | PAC theorem and finite-class minimum frontier | `blocker_003` |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Already-DP Lyu stage computation \(\mathcal A_t\) | No current wrapper; Lyu supplies plausible private frequency and Sparse Sample ingredients, while Cohen assumes the assembled output | RSC tuple and privacy theorem | Transcript and output privacy | Missing before first RSC call | derived | `blocker_001` |
| Adjacency-preserving \(E_t\) and raw-neighbor transfer | None for the proposed stage-dependent ordering | RSC slicing and sparse-selection bridge | Raw-dataset DP | Missing before slice extraction | derived | `blocker_004` |
| Cross-stage inclusion and decomposition descent on RSC slices | Lyu proves only the fixed-partition version | common-item argument, termination, utility | Low empirical and population error | Proposed RSC coupling -> descent -> selection; first arrow missing | derived | `blocker_002` |
| Legal no-raw-reuse transcript invariant | RSC removal rule, but no Lyu-compatible producer | every later stage | DP composition and postprocessing | Slice removal conflicts with source block reuse | derived | `blocker_002` |
| Sparse-selection list-level privacy | Lyu `lemma: privacy of sparse sampling`, conditional on bounded lists and one-list replacement | successful-stage output | One component of final DP | Fixed partition only; RSC raw-data bridge missing | derived | `blocker_004` |
| \(d^4\) amortized technical sample count | None | Rate Specialization Bridge and final theorem | Claimed material-partial improvement | Missing after all audited source rates | derived | `blocker_003` |

## Sketch Steps

None

## Dependency Notes

No dependency graph is opened. A valid first privacy step would require the current-notation per-slice DP wrapper that the present branch has not assembled. A valid first rate step would consume a removable stagewise \(d\) factor that is absent from Lyu's current arithmetic. Adding downstream concentration, support, privacy-accounting, or PAC-generalization steps would therefore create backward dependencies on nonexistent outputs rather than an acyclic proof roadmap.

## Blockers

1. **RSC direction mismatch (`sketch/interface defect`, downstream).** `algo:partition` and `theo:partition-private` require each \(\mathcal A_t\) to be DP before RSC is invoked. The idea's phrase "RSC-privatized stage output" reverses this implication. Lyu's private frequency and Sparse Sample mechanisms make a per-stage wrapper plausible, but the exact tuple and raw-neighbor bridge are absent. Repairing them alone leaves the idea-level utility and rate defects unchanged.
2. **Record reuse and utility mismatch (`idea/theorem-contract defect` under the exact contract).** Lyu's \(d+1\) stages reuse one fixed family of teacher blocks and its utility descent uses a simultaneous cross-stage inclusion. RSC removes disjoint noisy slices. Fresh full-utility stage slices add rather than remove sample dependence; revisiting old slices invokes the delayed-compute theorem with an explicit \(d+1\) call loss and still requires DP computations.
3. **No removable stage factor (`idea/theorem-contract defect`).** Lyu already uses sparse vector instead of naive composition over the stages and explicitly credits that change for the \(d^6\)-to-\(d^5\) improvement. Its current \(d^5\) count is \(d^2\) teacher blocks times \(d^3/\alpha\) examples per block. RSC changes neither raw factor, so no allowed Rate Specialization Bridge can produce \(d^4\) without a new teacher-count, list, or concentration theorem.
4. **Raw-record adjacency wrapper (`sketch/interface defect`, downstream).** Sparse Sample already tolerates arbitrary appearance or disappearance of candidates when one bounded list is replaced. The proposed RSC execution nevertheless lacks an exact deterministic adjacency-preserving \(E_t\), a raw-record-to-one-list transfer, and legal per-slice outputs. This bridge would need a new sketch only after the idea-level defects are replaced.
5. **Boundary instantiation.** At \(d=0\), the displayed Lyu choices yield zero teacher blocks and \(p_j=0\), so the specified RSC-Lyu algorithm needs a separate constant-class branch. At \(d=1\), the first-to-second-stage fixed-block reuse mismatch remains; finite thresholds are covered only by Cohen's separate threshold-specific algorithm; and the full cube with growing \(d=v\) exposes the undiminished \(d^5\) arithmetic. None of these boundaries supplies the missing universal mechanism.

The earliest decisive obstruction is not an unresolved local proof: the quantitative premise identifies a stage-allocation factor that Lyu's current learner has already removed, while the proposed disjoint slicing conflicts with the fixed-block utility mechanism. The RSC tuple wrapper is an additional downstream interface gap. A target-preserving proof sketch therefore cannot be formed without changing the algorithm/procedure or adding a theorem-critical rate mechanism unsupported by the current idea.
