# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_011
- Unit attempt: 2
- Review attempt: 2
- Reviewed proof artifact:
  perspective_2/idea_4/proof_steps/step_011/proof.md
- Reviewed proof SHA-256:
  3acb55b6a2cd5af3f9dbd5133637547a76474743e7f519384088bd24773fa83e
- Binding setting SHA-256:
  a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4
- Accepted proof-sketch SHA-256:
  cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7
- Accepted proof-sketch-review SHA-256:
  302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789
- Accepted dependency proof/review SHA-256 pairs:
  - step_003: b55c3326656c172d547fc0e26cc17d5ec006ef35a631e7c98934c6bd078d3280 / c39a5a44a4c9e0b6bc33f6ceaa9ce98e5f00c61dc4ee701d301f0f96e8fa51aa
  - step_008: 903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760 / cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b
  - step_010: f119835bca16b5d87d71cfd4e52f0cd9bddc4d0b2fdfe21a5d9f96146e9a8e98 / 46714f79e4b8525356b6f736fd6849f7e58ca6f68c0d06741fde5849a60c8e74
- Independently checked frozen source: Xin Lyu, *Private Learning of
  Littlestone Classes, Revisited*, arXiv:2510.00076v1,
  <TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex, SHA-256
  b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.
- Evidence boundary: the prior step_011 review, proof_history/, global
  diagnostics, assembly artifacts, trackers, and final-review artifacts were
  not used as mathematical evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-record-locality} states the
  exact raw-to-quotient and quotient-to-block transport required by the
  accepted row, including equality after quotienting and the \(N=0\) case.
- Proof validity: Coordinatewise application of \(T_N\) preserves every
  unchanged record. A fixed partition sends the sole possibly changed index
  to one and only one ordered block, so all other blocks agree exactly. The
  argument does not use labels consistent with any concept.
- Cited-result and assumption audit: No external result or generated event is
  used. The record map and replace-one convention are setting-defined.
- Rigor checklist: Quantifiers cover every \(N\in\mathbb N_0\), every raw
  ordered neighbor pair, every quotient ordered neighbor pair, and every
  fixed partition. Equality, same-cell replacement, changed labels,
  duplicates, and the empty tuple are handled separately and correctly.
- Local adversarial test: Replacing a raw point by a different point in the
  same quotient cell with the same label makes the quotient tuples equal;
  changing the label preserves exactly one quotient-coordinate change. Both
  cases satisfy the statement.
- Contribution to target step: This is the non-eventwise producer of the one
  changed block used by list locality and the final raw pullback.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-list-locality} proves
  the accepted missing interface: one quotient replacement changes at most
  one whole stage-list coordinate, simultaneously at all stages, and every
  next occurrence query has sensitivity at most one at a common stopped
  transcript prefix.
- Proof validity: Accepted Step 008 defines each restriction and its fixed
  essential-list lookup from one indexed block alone and exports an
  unconditional cap, including empty-list totalization. Thus identical block
  states give identical restrictions, choices, sets, orderings, and
  sanitation outcomes. The pointwise membership difference is at most one;
  applying it in both directions to the two maxima proves query sensitivity.
- Cited-result and assumption audit: The proposition uses only the current
  accepted Step 003 coding interface, Step 008 block-local list results, Step
  010 list-interface sensitivity result, and Unit 1. It does not import Step
  008's event-conditional cross-block inclusion or Step 010's utility event.
- Rigor checklist: The maximum is attained on the finite union when nonempty
  and is defined as zero when all lists are empty. Mathematical lists are
  sets; positional duplicates do not alter membership, while the same
  function in different block lists is correctly counted once per block.
  The same affected block works at every stage because the partition is
  reused.
- Local adversarial test: Arbitrary nonrealizable labels may make one local
  restriction empty, nonempty, or change its entire list. Only that block's
  coordinate changes. All-empty tuples, partial emptiness, repeated records,
  different fixed orderings across different local states, and sanitized
  invalid values preserve both the one-coordinate relation and the cap.
- Contribution to target step: It discharges both Lyu privacy lemmas' exact
  sensitivity/locality hypotheses without assuming candidate-wise stability
  or a mechanism-success event.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-at-privacy} targets one
  finite first-Above transcript, including the selected stage or exhaustion
  tag, and proves its exact \((\varepsilon/4,\delta/2)\) all-input privacy
  allocation at a fixed partition.
- Proof validity: Unit 2 gives sensitivity one at every common history. The
  frozen Lyu Lemma 3.2 applies to the single AboveThreshold interaction with
  \(K=1\); finite truncation after \(d+1\) queries, stopping at the first
  Above, and retaining only the prefix are deterministic transcript
  postprocessings. The displayed substitution of \(\eta\) and
  \(\log(2/\delta)\le\log(4/\delta)\) yields
  \(\varepsilon_{\rm AT}\le\varepsilon/4\).
- Cited-result and assumption audit: The source statement, current query
  objects, sensitivity premise, crossing count, \(\delta_{\rm AT}>0\), and
  conclusion are all restated and discharged. The universal constant
  \(c_{\rm AT}\) only resolves the source's universal big-O constant and is
  inherited from the accepted mechanism dictionary.
- Rigor checklist: The proof establishes each ordered DP direction by a
  separate application to the symmetric neighbor relation. It does not
  condition on Laplace accuracy, realizability, list nonemptiness, or any
  source-good event, and it incurs no per-stage composition cost.
- Local adversarial test: Immediate selection, selection at stage \(d\), all
  Below, all-empty queries, arbitrary false-positive crossings, and different
  neighboring stopping times are ordinary transcripts covered by the same
  source inequality.
- Contribution to target step: This is the first private component consumed
  by the adaptive composition unit.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-sparse-privacy} gives a
  total \(H_C\)-valued second kernel for every common first-transcript value,
  with the exact \((\varepsilon/4,\delta/2)\) allocation for a selected stage
  and a constant continuation for every no-call or invalid history.
- Proof validity: For a fixed selected history \(t\), both databases use the
  same stage. Unit 2 gives one-list replacement and the cap \(L\), while the
  accepted ceiling for \(B\) discharges Lyu Lemma 3.1. Its conclusion is
  \((2\varepsilon_{\rm SS},\delta_{\rm SS})
  =(\varepsilon/4,\delta/2)\)-DP. Mapping \(\perp\) to \(\bar c_0\) is
  measurable postprocessing, including when an actual categorical item is
  also \(\bar c_0\).
- Cited-result and assumption audit: The frozen Sparse Sample algorithm and
  Lemma 3.1 are restated on the fixed global domain
  \(H_C\cup\{\perp\}\), with list size, threshold, exponent parameter,
  adjacency type, and output conclusion checked. No actual-output or Sparse
  Sample utility statement is used.
- Rigor checklist: All-empty lists give support \(\{\perp\}\) and a positive
  normalizer; partially empty tuples require no special branch. The family is
  defined even on zero-probability histories. Fresh sequential mechanism
  coins give the history-indexed kernel used in Unit 5.
- Local adversarial test: Neighboring executions may select different stages
  or only one may select. The proof correctly never compares cross-stage
  lists; it proves privacy for each common \(t\), leaving transcript
  divergence to the first private component. Out-of-range, exhausted, and
  invalid histories are input-independent constant continuations.
- Contribution to target step: This is the uniformly private optional second
  component, with every failure symbol and no-call path totalized before
  composition.
- Verdict: PASS
- Repair direction: None.

### unit_005: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-adaptive-composition} proves
  exactly the finite-history sequential composition and postprocessing fact
  needed here, rather than assuming equal histories or citing an unchecked
  composition theorem.
- Proof validity: The clipped submeasure \(P^0\le P\) has missing mass at
  most \(\delta_1\) and is dominated by \(e^{\varepsilon_1}Q\). Each clipped
  conditional submeasure \(P_t^0\) has missing mass at most \(\delta_2\) and
  is dominated by \(e^{\varepsilon_2}Q_t\). Their finite-history product is a
  joint submeasure with missing mass at most
  \(1-(1-\delta_1)(1-\delta_2)\le\delta_1+\delta_2\) and is dominated by the
  reversed joint law with exponent \(\varepsilon_1+\varepsilon_2\). Adding
  the missing mass proves the displayed inequality.
- Cited-result and assumption audit: The proof is self-contained. Finiteness
  of the transcript space removes any measurable-selection issue for the
  clipped conditional laws.
- Rigor checklist: Event sections are measurable, the product law is the
  actual adaptive kernel, and the additive term has no erroneous exponential
  multiplier. The reverse direction is reproved for the reversed ordered
  pair. Measurable postprocessing follows by event preimages.
- Local adversarial test: The argument remains valid when a transcript has
  zero probability under one database, when a no-call conditional is
  constant, and when \(\delta_1\) or \(\delta_2\) mass lies on different
  histories. It never conditions the privacy inequality on a realized
  history.
- Contribution to target step: It is the exact bridge from private history
  plus uniformly private continuations to a private joint and released law.
- Verdict: PASS
- Repair direction: None.

### unit_006: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-quotient-dp} assembles
  the two mechanisms, every terminal route, measurable output
  postprocessing, and the data-independent partition mixture into all-input
  quotient \((\varepsilon/2,\delta)\)-DP.
- Proof validity: Units 3 and 4 satisfy Unit 5 with
  \((\varepsilon_1,\delta_1)=(\varepsilon/4,\delta/2)\) and
  \((\varepsilon_2,\delta_2)=(\varepsilon/4,\delta/2)\). The resulting joint
  law has cost \((\varepsilon/2,\delta)\), and the released value is its
  measurable postprocessing. Integrating the fixed-partition inequality
  against the same partition law on both databases retains one additive
  \(\delta\), not one per partition.
- Cited-result and assumption audit: The accepted Step 003 coding/kernel
  interface identifies the postprocessed conditional laws and their mixture
  with the actual quotient kernel. Step 008 makes every nonempty current
  restriction's list finite and capped; empty or sanitized lists still enter
  the two private mechanisms. Thus no data-dependent pre-mechanism fallback
  is left outside the composition.
- Rigor checklist: The proof covers arbitrary measurable
  \(E\in\mathcal H_C\), all quotient input atoms, improper functions,
  duplicates, and arbitrary labels. Mechanism coins are already integrated
  in each \(K_C^\pi\), and the partition is finite and independent of data.
- Local adversarial test: Empty and partially empty stages, an Above on an
  empty stage, first-stage and last-stage selection, exhaustion, \(\perp\),
  actual output equal to the default, unreachable malformed states, and
  different neighboring selected stages all remain inside composition or
  postprocessing. No utility event is invoked to exclude any path.
- Contribution to target step: It supplies the exact all-input quotient
  inequality consumed by the raw pullback.
- Verdict: PASS
- Repair direction: None.

### unit_007: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-raw-dp} proves the
  exact target output: raw replacement \((\varepsilon,\delta)\)-DP, while
  retaining the stronger intermediate \((\varepsilon/2,\delta)\) guarantee
  and the setting-defined null-arm boundary.
- Proof validity: Accepted raw pullback gives
  \(A_N(s,E)=K_C(T_N(s),E)\). Equal quotient images yield equality of laws;
  strict quotient neighbors use Unit 6. Since
  \(e^{\varepsilon/2}\le e^\varepsilon\), the stronger inequality implies
  the requested one. Symmetry is handled by reapplying the proof to the
  reversed ordered pair.
- Cited-result and assumption audit: The current Step 003 propositions
  export exactly the kernel and pullback used. Universally they give only
  \(A_0=K_0\). The Dirac conclusion is invoked only after identifying the
  present law as the setting-defined VC-Lyu \(d=0,N=0\) arm, whose accepted
  arm-specific clause gives \(K_0=\delta_{\bar c_0}\).
- Rigor checklist: The decoder is not part of the release and is unnecessary
  for privacy. The proof is pointwise for all labels and every measurable
  event. No property of the unique empty input is used to assert that an
  arbitrary separately supplied \(K_0\) is Dirac.
- Local adversarial test: Same-cell raw replacement, changed labels,
  \(d=0,N=0\), first/different/last-stage selections, no selection, fallback,
  and the formal \(k=2\) boundary all pass. For \(N=0\), there is no
  partition or private mechanism; for \(k=2\), no privacy line divides by
  \(k-1\) or consumes the teacher utility margin.
- Contribution to target step: It closes the quotient-to-raw object bridge
  and the exact null/boundary distinctions required by the setting.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the seven-unit map.
Record transport is Unit 1; block-local list construction, sanitation,
ordering, duplicates, maxima, and common-prefix sensitivity are Unit 2; the
two source privacy applications are Units 3 and 4; adaptive approximate-DP
composition is Unit 5; terminal-route postprocessing and partition mixing are
Unit 6; and raw pullback, privacy monotonicity, and the null boundary are Unit
7. The cited-result section restates every external or dependency interface
before use. The assembly introduces no new lemma, utility premise, event,
adjacency notion, or output transformation.

The high-risk early-fallback scan also passes. Empty and sanitized list
coordinates are fed into the same occurrence query and Sparse Sample law;
all-empty tuples remain legal; no-selection is a first-transcript outcome;
and \(\perp\) or residual mechanism statuses are output postprocessings.
Accepted Step 008 supplies valid finite capped lists for every nonempty
restriction on every input, so no private validity test selects between an
unaccounted constant mechanism and the composed mechanism.

## Target Claim Audit

The proof establishes exactly the accepted step_011 row. For every raw
replace-one pair, including arbitrary nonrealizable labels, and every
\(E\in\mathcal H_C\), it proves

\[
 A_N(s,E)\le e^{\varepsilon/2}A_N(s',E)+\delta
 \le e^\varepsilon A_N(s',E)+\delta.
\]

Its dependency and assumption interface is unchanged: the only primitive
condition used directly is
Assumption~\ref{assump:approximate-dp-regime}; kernel, list, cap, mechanism,
and pullback facts are accepted derived interfaces. Fixed partition and
common transcript are local proof devices removed by mixture and
composition. Realizability, \(E_{\rm good}\), mechanism accuracy,
actual-list output, empirical error, and population error are never assumed.

All requested boundary classes are covered: equal quotient images, strict
quotient neighbors, replacement in every block, arbitrary labels, empty and
partially empty lists, first/last/different selected stages, no call,
exhaustion, \(\perp\), actual-default collision, residual invalid tags,
improper outputs, \(N=0,d=0\), and formal \(k=2\). The proof neither narrows
the all-input scope nor changes the release, adjacency, dependencies, or
source mechanism interface.

## Explicit Rate Audit

This is rate-bearing only through its explicit privacy allocation. The
exported variables are \(\varepsilon,\delta\); the already fixed branch also
exposes \(d,v,\alpha,\beta,N,k,m,L,B\), and the mechanism dictionary exposes
\(c_{\rm AT},g_\delta,\eta,\varepsilon_{\rm SS},
\varepsilon_{\rm AT},\varepsilon_{\rm sp},\delta_{\rm AT},
\delta_{\rm SS}\). The sole hidden source constant is universal and is
exposed as \(c_{\rm AT}\); it cannot depend on the class, data, partition,
lists, transcript, event, or output.

The mode is deterministic distributional DP for every ordered neighboring
pair and measurable event. The horizon is one finite first-Above process of
at most \(d+1\) queries and at most one subsequent Sparse Sample call. The
metric is labeled replace-one adjacency and the measurable-event DP
inequality. There is no probability conversion or utility conditioning. The
exact displayed calculations verify

\[
 \varepsilon_{\rm AT}\le\varepsilon/4,
 \qquad 2\varepsilon_{\rm SS}=\varepsilon/4,
 \qquad \delta_{\rm AT}+\delta_{\rm SS}=\delta,
\]

and hence \(\varepsilon/2\le\varepsilon\), with no prose-only absorption.
Partition mixing adds no term. This step exports the privacy component later
consumed by step_014 and performs no sample-size specialization. The baseline
reduction is exact: the setting-defined \(d=0,N=0\) arm is the accepted Dirac
law and \((0,0)\)-DP, whereas a universal empty-input pullback asserts only
\(A_0=K_0\). A no-call second component is exactly constant; use of its
allocated upper bound is conservative without weakening the target.

## Notation Surface Audit

The sole public-facing export is raw all-input
\((\varepsilon,\delta)\)-DP. \(K_C,A_N,T_N,H_C,\bar c_0\) and the public
parameters retain their setting meanings. Fixed-partition kernels, occurrence
queries, transcript and continuation kernels, partition law, mechanism
allocations, and the generic composition kernel are properly classified as
appendix-local. Changed indices, temporary list tuples, \(\phi\), event
sections, and clipped submeasures are proof-local. Every helper has setting,
accepted-dependency, frozen-source, or local-unit provenance. No unnecessary
helper dictionary is exported, and no alias hides a finiteness, measurability,
constant, threshold, or assumption obligation.

## Target-Step Assembly Audit

The named results assemble in the required dependency order.
Lemma~\ref{lem:step-011-record-locality} localizes a raw change.
Proposition~\ref{prop:step-011-list-locality} converts it to one-list
replacement and sensitivity-one queries at every common prefix.
Propositions~\ref{prop:step-011-at-privacy} and
\ref{prop:step-011-sparse-privacy} supply the two exact private components.
Lemma~\ref{lem:step-011-adaptive-composition} combines them without a
same-stage premise. Proposition~\ref{prop:step-011-quotient-dp} performs
output postprocessing and common partition mixing.
Proposition~\ref{prop:step-011-raw-dp}, using the current accepted Step 003
kernel and pullback claims, transfers the quotient inequality exactly to
every raw neighbor and invokes the arm-specific null law only where its
premise holds.

These results jointly imply the exact target and nothing stronger in scope:
the stronger privacy epsilon is a valid quantitative improvement, but no
utility, PAC, rate, occurrence-mark privacy, or unrestricted-quotient theorem
is asserted. All dependencies are current, accepted, and matched to the
reviewed proof by the pinned hashes.

## Review Rationale

ACCEPTED with Smallest Retry Target = None is the smallest sound decision.
The proof, setting, accepted sketch and sketch review, three dependency
pairs, and frozen source match their required hashes. Independent
line-by-line review confirms all seven statements and derivations, exact
source applicability, assumption provenance, adaptive stopping and
composition, one-list locality, terminal-path totalization, partition
mixture, measurable postprocessing, raw pullback, directionality, and every
requested boundary. No local proof defect, dependency defect, hidden
subclaim, or sketch-interface change remains.
