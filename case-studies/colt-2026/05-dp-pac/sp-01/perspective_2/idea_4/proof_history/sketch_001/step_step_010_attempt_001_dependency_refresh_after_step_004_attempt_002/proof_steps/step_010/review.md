# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_010/proof.md`
- Reviewed proof SHA-256: `117f4a769b754335bafb792f0390fbae81beaf8967d93fb9aa89f3dafd0b1925`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Accepted proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Accepted proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs:
  - `step_001`: `0cd51e748813399f1c1e80bc659200d37f96aa013c97e75eda2adeaf74c5d530` / `83fee520299e99482863c0e2fe5b905f9b8a1aef70cfcb8b933decbdffe19b7c`
  - `step_004`: `dde324f382fb084af67f773a97140eb205597d15f7ab9d83e13605bf62b80cc8` / `254e4b8ef32bae1676cfb9512e4987bfdf81b629c38b193d4787dcf192b82fa0`
  - `step_009`: `b5c2dd0c3c737d906881e324a6aaacb4d958be8f288106b067a58b980cebbe52` / `71be50c1a5f40c03d5d64dd767a3ba948f2aed385cbdc3375b33ffdd4a5fc5c0`
- Independently checked primary source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `<TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex`, SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-010-score-support} proves exactly the list-interface obligations assigned to this unit: sensitivity one of the maximum occurrence query under replacement of one entire list coordinate, union size at most \(kL\), effective Sparse Sample support size at most \(kL+1\), a positive finite normalizer, and score zero for an all-empty tuple. It expressly does not promote list-coordinate replacement to raw-record adjacency or privacy.
- Proof validity: For each fixed \(\bar h\), changing one list changes its membership indicator by at most one. Taking maxima in both directions gives \(|q(\mathbf L)-q(\mathbf L')|\le1\). The accepted cap gives \(|\cup_iL_i|\le\sum_i|L_i|\le kL\). All scores lie in \(\{0,\ldots,k\}\), and the distinguished \(\perp\) term has strictly positive finite weight, so the finite categorical normalizer is positive and finite. When all lists are empty, every score is zero. The maximum is legal even for infinite \(H_C\): its score image is a nonempty subset of the finite set \(\{0,\ldots,k\}\).
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-001-calibration} supplies the exact cap, accepted Proposition~\ref{prop:step-001-totalization} supplies sanitized lists on every path, and accepted Lemma~\ref{lem:step-009-legal-state} supplies the current actual-function score interface. No generated success event is assumed. The frozen Lyu Algorithm 1 confirms that support is the set union plus one distinct failure symbol and that membership, rather than positional multiplicity, defines score.
- Rigor checklist: The proof distinguishes replacement of a whole list coordinate from changing one list item or one raw record. At a common adaptive transcript prefix both executions ask the same next stage query, which is the only adaptive-query statement made. Empty, singleton, repeated-position, and duplicate-across-list cases preserve the set-membership score and support bound.
- Local adversarial test: With every list empty, \(q=0\) and support is only \(\{\perp\}\). With one singleton repeated in all \(k\) lists, the union has one item and its score is \(k\). Duplicating an item inside an ordered encoding does not multiply its membership score. Replacing one whole list can change every pointwise score, but each by only one, so the maximum still changes by at most one.
- Contribution to target step: It supplies the sensitivity, finite-domain, normalizer, and empty-stage facts consumed by the two mechanism units without adding a privacy conclusion.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-010-abovethreshold} establishes the exact stopped-transcript interface in the accepted sketch: one simultaneous noise event of cost \(\beta_{\rm AT}\), accurate-enough `Below` reports, detection of every reached score-\(k\) stage, a legal first selected stage, and the selected-score lower bound \(q_{\widehat r}\ge B+\tau_{\rm SS}+2\). It permits safe early false positives and makes no privacy claim.
- Proof validity: The frozen Algorithm 2 uses independent \(\operatorname{Lap}(1/\eta)\) query noise and the rule \(q_r+Z_r\ge k/2\). Direct integration gives \(\Pr(|Z_r|>t)=e^{-\eta t}\); hence the union over the at most \(d+1\) latent noises is exactly bounded by \((d+1)e^{-\eta\tau_{\rm AT}}=\beta_{\rm AT}\). The teacher inequality implies \(\tau_{\rm AT}<k/2\). Thus `Below` implies \(q_r<k/2+\tau_{\rm AT}<k\), while \(q_r=k\) implies `Above`. Accepted Proposition~\ref{prop:step-009-termination} supplies a score-\(k\) stage, so either a prior safe false positive stops the process or that stage is reached and selected. At selection, \(Z_{\widehat r}\le\tau_{\rm AT}\) gives the exact teacher-margin chain.
- Cited-result and assumption audit: The source Algorithm 2, noise scale, threshold comparison, and Lemma 3.2 sensitivity-one hypothesis are restated with the current objects. The utility calculation uses only the exact source tests and a direct Laplace tail; Lemma 3.2's privacy conclusion is not exported. Assumption~\ref{assump:approximate-dp-regime} supplies positive parameters, Step 001 supplies the fixed threshold and teacher margin, and Step 009 supplies common actual support under its already derived source-good antecedent.
- Rigor checklist: Sampling all \(d+1\) noises in advance is distributionally identical to revealing only the stopped prefix. The proof needs no independence for its union bound and does not multiply confidence by the random selected stage. Strict and weak inequalities match the source rule: `Below` is strict, while score \(k\) crosses strictly on the good-noise event.
- Local adversarial test: An all-empty queried stage has \(q_r=0\) and cannot cross because \(Z_r\le\tau_{\rm AT}<k/2\). A score-\(k\) stage at \(r=0\) is selected immediately. If the first such stage is \(d\), either an earlier false positive already has the required margin or stage \(d\) is reached and selected. Partially empty and singleton-list tuples use the same inequalities. The formal dictionary is legal at \(k=2\), while the realized teacher cannot equal \(2\) because \(1-\tau_{\rm AT}<1<B+\tau_{\rm SS}+2\).
- Contribution to target step: It converts deterministic score-\(k\) support into one legal selected tuple with enough true-score separation for Sparse Sample.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-010-sparse-output} proves the required exponential-weight utility tail uniformly after adaptive selection, gives the exact failure-symbol mass bound, and proves that its score-good outcome is a literal member of a selected current list. It correctly allows an improper \(H_C\)-valued output and does not assert membership in \(\bar C\).
- Proof validity: The selected-score margin makes the union nonempty and gives an attained actual item of score \(q\). The exact Lyu Algorithm 1 law has weights \(e^{\varepsilon_{\rm SS}s(z)}\), with no factor \(1/2\), and a distinct \(\perp\) of score \(B\). The denominator contains \(e^{\varepsilon_{\rm SS}q}\); summing over at most \(kL+1\) bad support points gives \((kL+1)e^{-\varepsilon_{\rm SS}\tau_{\rm SS}}=\beta_{\rm SS}\). The same denominator term gives \(\Pr(W=\perp)\le e^{-\varepsilon_{\rm SS}(q-B)}\), and the teacher slack yields the displayed sharper mass bound. Since \(q-\tau_{\rm SS}\ge B+2>B=s(\perp)\), \(E_{\rm SS}\) excludes \(\perp\) exactly; the remaining categorical support is \(\cup_i\mathcal L_i^{\widehat r}\).
- Cited-result and assumption audit: The frozen v1 Algorithm 1 and Lemma 3.1 confirm the exponent, failure score, list cap premise, and one-list replacement statement. The proof uses only the exact categorical law for utility. The list-private conclusion of Lemma 3.1 and any raw-input mapping remain unused. Accepted Step 001 supplies \(\varepsilon_{\rm SS},B,L,\tau_{\rm SS}\); Unit 1 supplies effective support; Unit 2 supplies the selected-score margin.
- Rigor checklist: The conditional bound is uniform over every selected tuple and preceding transcript, so adaptive stopping causes no selection bias in the subsequent tower argument. The bad set includes low-score actual items as well as \(\perp\). No source-comment utility lemma, uncountable-domain union, asymptotic estimate, or hidden constant is used.
- Local adversarial test: If selected lists contain one distinct item repeated across all blocks, that item provides the denominator maximum and the proof is unchanged. Duplicates across lists reduce effective support while retaining occurrence score. Empty selected union is impossible under the margin. An output whose function value equals \(\bar c_0\) is still an actual categorical item when selected from the union. The strict failure-symbol exclusion remains valid at every ceiling boundary because it has slack \(2\).
- Contribution to target step: It turns the selected-score margin into the exact actual-list-member event with one \(\beta_{\rm SS}\) charge and no stage multiplier.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-010-mechanism-good} assembles precisely the requested mechanism ledger: conditional failure at most \(\beta_{\rm AT}+\beta_{\rm SS}=\beta/2\), an actual selected-stage list item, nonfallback transcript status, a positive producer mark, and exact projection to the unchanged released law. It explicitly keeps an actual output equal in value to \(\bar c_0\) distinct from fallback status.
- Proof validity: On \(E_{\rm AT}\), Unit 2 guarantees one legal selected tuple. Unit 3 gives a uniform conditional \(\beta_{\rm SS}\) tail for that one tuple. The tower property therefore bounds \(\Pr(E_{\rm AT}\cap E_{\rm SS}^c)\) by \(\beta_{\rm SS}\), and one union with \(\Pr(E_{\rm AT}^c)\le\beta_{\rm AT}\) proves the confidence ledger. On the intersection, the output lies in one selected list and therefore in that producer's all-stage union. The exact-list, legal-transcript, positive-normalizer, support, and \(\perp\)-exclusion facts rule out every totalized fallback status. Accepted Lemma~\ref{lem:step-004-occurrence} then gives a nonempty occurrence set, and accepted Proposition~\ref{prop:step-004-projection} removes the analysis-only mark with exact marginal equality.
- Cited-result and assumption audit: Every generated condition is produced before use: Step 009 produces the score-\(k\) stage, Units 2-3 produce \(E_{\rm AT}\) and \(E_{\rm SS}\), Step 001 supplies totalization, and Step 004 supplies the status-aware marked lift and projection. The local conditioning on a fixed realizable source-good sample/partition is exactly the accepted dependency interface, not a theorem-facing primitive assumption.
- Rigor checklist: Declaring \(E_{\rm SS}\) false when no legal call occurs makes the event total; Unit 2 proves that this branch is absent on \(E_{\rm AT}\). The proof distinguishes an invalid report, no success, invalid list, invalid normalizer, \(\perp\), out-of-support draw, and default terminal status. It uses one master sample, one fixed partition, one stopped transcript, and one post-selection call.
- Local adversarial test: First- and last-stage success, a safe false positive, all-empty and partially empty stages, singleton and duplicate lists, actual selection of \(\bar c_0\), fallback returning the same value, one or many producer occurrences, and the formal \(k=2\) mark all preserve the status and projection claims. Positive marks occur only on actual paths; fallback remains mark \(0\) even if its value appears in every list.
- Contribution to target step: It exports the minimal downstream interface: selected stage, actual current-list output, nonfallback status, mechanism confidence, positive occurrence mark, and unchanged released marginal.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the four-unit map. List-coordinate sensitivity, finite effective support and normalizer legality, simultaneous stopped-transcript accuracy, safe false positives, score-\(k\) detection, the selected-score margin, the finite exponential-weight tail, exact \(\perp\) mass and exclusion, adaptive confidence integration, total fallback exclusion, positive marking, and exact projection each appear in a named unit. The fallback table audit in Unit 4 is a direct case analysis from accepted totalization plus Units 1-3; it introduces no new mechanism theorem. The boundary discussion is a specialization of the same named results.

The proof does not smuggle in raw-record/list locality, raw or list privacy, empirical utility, population PAC utility, source-good probability, a second sample, or an additional stagewise confidence share. The restatements of Lyu Lemmas 3.1-3.2 record their privacy hypotheses and boundaries but no privacy conclusion is assembled or exported here.

## Target Claim Audit

The proof establishes the exact accepted `step_010` row on the positive-dimensional realizable source-good branch. Accepted Step 009 first supplies a literal score-\(k\) actual function. Unit 1 checks the finite list mechanism interface. Unit 2 runs one stopped AboveThreshold transcript, pays one simultaneous \(\beta_{\rm AT}\) event, handles false positives and both endpoint stages, and exports the exact teacher-margin score. Unit 3 conditions on the single selected tuple and pays one \(\beta_{\rm SS}\) tail to obtain a literal selected-list item rather than \(\perp\). Unit 4 combines the events, verifies actual rather than fallback status even under value equality with \(\bar c_0\), supplies a positive occurrence mark, and invokes the exact projection identity.

All quantifiers and modes are preserved: the mechanism tail is uniform conditional on any fixed realizable sample and partition satisfying the already generated \(E_{\rm good}\); randomness is only the one Laplace sequence and one categorical draw; the horizon is at most \(d+1\) threshold queries; and the conclusion is list membership in \(H_C\), not properness, privacy, empirical risk, population risk, or an unconditional PAC statement.

## Explicit Rate Audit

This step is rate-bearing only through its exact mechanism tolerances and confidence ledger. It exposes \(d,k,L,B,\eta,\varepsilon_{\rm SS},\beta_{\rm AT},\beta_{\rm SS},\tau_{\rm AT},\tau_{\rm SS}\), all inherited as fixed expressions from accepted Step 001. There is no new hidden constant; the direct tail bounds are exact. The mode is conditional high probability over fresh mechanism randomness after a fixed source-good sample/partition. The horizon is one stopped prefix of at most \(d+1\) tests followed by one Sparse Sample call. The controlled metric is integer occurrence score and exact categorical membership, not a norm or risk.

Every simplification is displayed: \((d+1)e^{-\eta\tau_{\rm AT}}=\beta_{\rm AT}\), \((kL+1)e^{-\varepsilon_{\rm SS}\tau_{\rm SS}}=\beta_{\rm SS}\), and \(q_{\widehat r}\ge k/2-\tau_{\rm AT}\ge B+\tau_{\rm SS}+2\). The tower plus one union gives exactly \(\beta/2\); no Sparse Sample union over stages and no new sample factor appears. The \(d=0\) branch remains the accepted no-mechanism, no-data baseline; \(k=2\) is a legal formal boundary but is excluded for the realized teacher by the exact margin. Public elimination of the auxiliary mechanism parameters correctly remains assigned to `step_014`.

## Notation Surface Audit

The notation surface is disciplined. The selected stage \(\widehat r\), mechanism event \(E_{\rm mech}\), and actual-output inclusion are appendix-local exports needed downstream. Generic tuples, unions, occurrence scores, latent noises, \(E_{\rm AT}\), \(E_{\rm SS}\), the selected draw \(W\), and the bad support set are proof-local. All constants and thresholds come from accepted Step 001; list and score objects come from accepted Step 009; marked-law objects come from accepted Step 004. No public-facing helper or derived invariant is introduced as an assumption.

## Target-Step Assembly Audit

The assembly is dependency-complete. Accepted Lemma~\ref{lem:step-001-calibration} and Propositions~\ref{prop:step-001-teacher} and~\ref{prop:step-001-totalization} provide the exact mechanism dictionary, margin, and total procedure. Accepted Proposition~\ref{prop:step-009-termination} provides common score-\(k\) support. Lemma~\ref{lem:step-010-score-support} supplies sensitivity and finite support; Proposition~\ref{prop:step-010-abovethreshold} supplies a legal score-separated selected stage; Lemma~\ref{lem:step-010-sparse-output} supplies the actual categorical output; and Proposition~\ref{prop:step-010-mechanism-good} supplies the confidence and status ledger. Accepted Step 004 then supplies positive occurrence and exact projection. These named results jointly imply the exact target with no unreviewed bridge.

## Review Rationale

`ACCEPTED` is the smallest sound status. The proof, setting, accepted sketch pair, all three dependency proof/review pairs, and frozen Lyu v1 source match their pinned hashes. The source confirms the exact Sparse Sample exponent and failure score, the list-cap privacy premise, the independent \(\operatorname{Lap}(1/\eta)\) AboveThreshold tests, and the sensitivity-one privacy premise. Fresh line-by-line and adversarial audits validate all four local units, the adaptive confidence arithmetic, all requested empty/singleton/duplicate, status-equality, \(k=2\), first/last-stage, and fallback boundaries, the explicit dependence, and the exact target assembly. No step, dependency, or sketch repair is required.
