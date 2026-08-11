# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_009/proof.md`
- Reviewed proof SHA-256: `b5c2dd0c3c737d906881e324a6aaacb4d958be8f288106b067a58b980cebbe52`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Accepted proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Accepted proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted `step_008` proof/review SHA-256: `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760` / `cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b`
- Independently checked primary source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `<TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex`, SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-009-legal-state} proves the required realizable entry condition before defining any DDim: the induced target \(\bar c\) has zero error on every block and belongs to every \(H_i^r\). It then defines the integer potential and the actual-function occurrence score on their legal domains, exactly as required by the accepted `step_009` row.
- Proof validity: Recordwise quotient factorization gives \(c(x_j)=\bar c(\kappa(x_j))\), so every block error is zero. The positive thresholds imply \(\bar c\in H_i^r\), hence every restriction is nonempty. The accepted decomposition result then gives \(D_{i,r}\in\{0,\ldots,d\}\), and finiteness of \([k]\) gives an attained \(M_r\). Although \(H_C\) can be infinite, its nonempty image under \(s_r\) is a subset of the finite set \(\{0,\ldots,k\}\), so \(q_r\) is attained. Score \(k\) is exactly membership of one actual function in every list.
- Cited-result and assumption audit: Assumption~\ref{assump:realizable-iid} supplies only pointwise label consistency; independence and probability tails are not used. Assumption~\ref{assump:finite-littlestone} and accepted `step_008` supply the restriction, scale, decomposition, DDim-range, and actual-list interfaces. Nonemptiness is derived locally rather than assumed.
- Rigor checklist: The proof treats only \(d\ge1\), uses all stages \(0\le r\le d\), distinguishes an empty essential list from an empty restriction, and never assigns DDim to an empty class. Maxima are shown to be attained rather than merely bounded.
- Local adversarial test: Repeated quotient records, infinite \(\bar C\) or \(H_C\), and all lists being empty do not affect the argument: realizability still proves restriction nonemptiness, while the all-empty-list score is the attained value zero. At \(d=1\), both stages have positive thresholds and legal DDim values.
- Contribution to target step: It supplies the noncircular entry state, legal integer potential, and exact common-item score used by all four later units.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-009-equality-common} proves exactly that equality of consecutive maximum DDim potentials forces one and the same actual quotient function to be essential to every current block. It does not claim that the witness is proper or essential to the next-stage class.
- Proof validity: A next-stage maximizer \(i_*\) has degree \(t=M_{r+1}\). For every current block, the accepted inclusion and exact pair \((p_{r+1},p_r)=(2p_r,p_r)\) give
  \[
  t=D_{i_*,r+1}\le D_{i,r}\le M_r=t,
  \]
  so the equality premise of Lyu Lemma 4.3 holds against every block. Fixing one optimal next tree and one dimension-\(t\) leaf fixes one actual function \(\bar f\). For each block and every arbitrarily chosen optimal current tree, the source lemma supplies a dimension-\(t\) leaf with pointwise SOA equal to that same \(\bar f\). This is precisely Definition 4.3's universal-tree condition, so \(\bar f\) belongs to every current essential list.
- Cited-result and assumption audit: The frozen v1 Lemma 4.3 states the comparison for arbitrarily chosen optimal \((2p,d)\)- and \((p,d)\)-decompositions and, under equality, for every maximal first-tree leaf. The submitted proof preserves that quantifier order and uses the accepted `step_008` wrapper to discharge nonemptiness, inclusion, LD bounds, exact scale pairing, and optimal-tree existence.
- Rigor checklist: One fixed next tree, one fixed next leaf, and one fixed SOA are held constant while the block and every current optimal tree vary. Equality is pointwise on all of \(Q_C\), not equality of sample traces. A maximal leaf exists because an optimal finite tree attains its integer degree.
- Local adversarial test: Nonunique optimal trees do not change the witness because every current tree is quantified over after \(\bar f\) is fixed. The argument also works at \(t=0\), and an improper SOA still lies in \(H_C\). No unavailable same-class two-scale equality or Corollary 4.1 Item 3 is used.
- Contribution to target step: It supplies the exact equality-to-commonality implication whose contrapositive drives signed descent.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-009-unit-drop} establishes the exact accepted recurrence \(q_r<k\Rightarrow M_{r+1}\le M_r-1\) for every legal transition on \(E_{\mathrm{good}}\).
- Proof validity: Choosing a next-stage maximizer and applying the accepted factor-two comparison against every current block yields \(M_{r+1}\le M_r\). Equality would invoke Proposition~\ref{prop:step-009-equality-common} and force \(q_r=k\), contradicting the local hypothesis. Thus \(M_{r+1}<M_r\); since both values are integers, \(M_{r+1}\le M_r-1\).
- Cited-result and assumption audit: The only event-dependent input is the accepted cross-block inclusion on \(E_{\mathrm{good}}\). Nonemptiness, DDim integrality, and the exact scale pair are supplied by the legal-state lemma and accepted dependency. No mechanism report is identified with the structural condition \(q_r<k\).
- Rigor checklist: The comparison direction is correct, the equality case is excluded before integrality is invoked, and the one-unit conclusion is not inferred from a merely real-valued strict inequality. The transition range remains \(0\le r<d\).
- Local adversarial test: If some current block has smaller DDim than the current maximum, the comparison only strengthens the conclusion. If the outer maxima are equal, Unit 2 forces score \(k\), so there is no equality counterexample under \(q_r<k\). There is no additive, stochastic, or approximation defect to accumulate.
- Contribution to target step: It provides the exact one-unit charge for every stage without a common actual list item.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-009-zero-support} supplies the required nonvacuous terminal support: at any stage with \(M_r=0\), the realizable target \(\bar c\) belongs to every list and hence has score \(k\).
- Proof validity: Nonnegativity and \(D_{i,r}\le M_r=0\) give \(D_{i,r}=0\) for every block. Unit 1 separately proves each class nonempty and contains \(\bar c\). Lyu Corollary 4.1 Item 4 then gives \(\operatorname{Ess}_{p_r,d}(H_i^r)=H_i^r\), so the same target belongs to all lists.
- Cited-result and assumption audit: The frozen v1 Corollary 4.1 Item 4 states that a DDim-zero class is finite and its essential hypotheses are exactly all its hypotheses. The proof checks the nonempty-class premise before every use and consumes the accepted current-list definition without altering its scale.
- Rigor checklist: An empty outer restriction is never called DDim zero, and potential nonnegativity is not used as a substitute for support. The conclusion uses one concrete actual function, not merely nonemptiness of each list separately.
- Local adversarial test: For singleton or larger finite DDim-zero restrictions, Item 4 gives exact set equality. On arbitrary nonrealizable inputs an empty restriction remains on the totalized empty-list path, and this proposition makes no claim there.
- Contribution to target step: It provides the source-adequate terminal mechanism needed when the descent potential reaches zero.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-009-termination} proves the exact common-stage output: some \(r_*\le M_0\le d\) has score \(k\), with an attaining actual \(\bar f_*\in\bigcap_i\mathcal L_i^{r_*}\).
- Proof validity: If \(M_0=0\), Unit 4 gives success at stage zero. Otherwise, either a stage \(r<M_0\) already has score \(k\), or Unit 3 applies at every \(r=0,\ldots,M_0-1\) and induction gives \(M_j\le M_0-j\). At \(j=M_0\), nonnegativity forces zero, and Unit 4 supplies the common target. Unit 1 converts score \(k\) into an attained actual common function in both branches.
- Cited-result and assumption audit: All inputs are named prior local results and the one inherited event condition. The unit invokes no new source theorem, generated event, stochastic independence, mechanism accuracy, or sampling claim.
- Rigor checklist: Since \(M_0\le d\), every used transition index is at most \(d-1\). The induction stops at a defined stage and never introduces \(H_i^{d+1}\) or \(M_{d+1}\). The recurrence has finite budget \(M_0\) and exact unit charge.
- Local adversarial test: When \(M_0=0\), no transition is taken. When \(d=1\), there is at most the sole transition \(0\to1\). When \(M_0=d\) and every earlier score is below \(k\), exactly \(d\) transitions reach the last stage \(d\), where Item 4 applies. Empty arbitrary-input totalization remains defined but outside the realizable utility claim. Nonunique trees were already handled before the recurrence is consumed.
- Contribution to target step: It assembles the potential budget into the score-\(k\) actual-function producer required by `step_010`, with no extra stage sample or confidence factor.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. Realizable nonemptiness, DDim and score attainment, equality-to-commonality with all-optimal-tree quantifiers, strict integer descent, DDim-zero support, and finite-horizon termination each have a named unit. The boundary discussion in Unit 5 is a direct specialization of those units. The proof does not hide a preferred decomposition, trace representative, list-nonemptiness assumption, stagewise probability union, mechanism-success event, or same-class two-scale premise.

## Target Claim Audit

The five units prove the exact accepted `step_009` claim on the positive branch: conditional on the already generated \(E_{\mathrm{good}}\) and a realizable sample, some stage \(r_*\in\{0,\ldots,d\}\) has one actual quotient function in all \(k\) essential lists. The proof first establishes nonempty restrictions, then uses the exact factor-two DDim comparison and the frozen source's arbitrary-tree SOA identity, obtains an exact one-unit integer descent whenever the current score is below \(k\), and uses Corollary 4.1 Item 4 at DDim zero. Quantifiers over targets, samples, blocks, stages, trees, leaves, and actual functions are preserved. The conclusion is structural and conditional; it does not claim mechanism accuracy, privacy, empirical utility, population utility, or an unconditional probability statement.

## Explicit Rate Audit

The only rate-bearing conclusion is the exact finite structural budget. The proof exposes \(d,k,r,p_r,D_{i,r},M_r,q_r\), has no hidden constant, and proves the displayed charge \(M_{r+1}\le M_r-1\) and horizon \(r_*\le M_0\le d\). Its mode is deterministic conditional on one fixed realizable sample, fixed partition, and \(E_{\mathrm{good}}\); it performs no probability conversion and adds no confidence loss. It reuses the already defined \(d+1\) stages and master sample, introduces no auxiliary tolerance, and does not multiply sample complexity by a stage factor. The \(d=0\) no-data bypass and \(d=1\) one-transition baseline remain exact.

## Notation Surface Audit

The appendix-local exports \(q_r,r_*,\bar f_*\) are the minimal interface needed downstream. The DDim values, potential, per-function score, tree/leaf witnesses, and \(\tau=M_0\) are correctly classified as proof-local. No public-facing helper is introduced. Every helper has setting, dependency, cited-source, or local-unit provenance, and the notation keeps nonempty-class legality, actual-function identity, tree nonuniqueness, and conditional event scope visible.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-009-legal-state} supplies nonempty legal states and the exact occurrence query. Proposition~\ref{prop:step-009-equality-common} turns equality of consecutive potentials into one common actual SOA using the full source quantifiers. Proposition~\ref{prop:step-009-unit-drop} converts failure of commonality into strict integer descent. Proposition~\ref{prop:step-009-zero-support} supplies a concrete common target at potential zero. Proposition~\ref{prop:step-009-termination} exhausts the finite budget and produces \(r_*\) and \(\bar f_*\). These named results jointly imply the exact target without an unreviewed bridge or stronger dependency.

## Review Rationale

`ACCEPTED` is the smallest sound status. The current proof and accepted dependency match their pinned hashes, and the frozen Lyu v1 source confirms both the arbitrary-optimal-tree/per-maximal-leaf quantifiers in Lemma 4.3 and the exact DDim-zero support statement in Corollary 4.1 Item 4. All five local units pass statement, derivation, citation, assumption-provenance, notation, boundary, and adversarial review. In particular, the proof establishes nonemptiness before DDim, fixes one actual SOA across every current list, converts strict integer decrease into a one-unit charge, handles \(M_0=0\), \(d=1\), the last stage, empty arbitrary-input totalization, and nonunique trees, and makes no mechanism, noise, probability, or sample-factor overclaim. No producer retry is required.
