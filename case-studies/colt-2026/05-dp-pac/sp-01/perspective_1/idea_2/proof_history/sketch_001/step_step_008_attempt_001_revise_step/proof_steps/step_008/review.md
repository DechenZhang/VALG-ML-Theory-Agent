# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_008/proof.md`, SHA-256 `bd636c4441ff06a52380723d1c6db3e37ee2e57bd8f9e0cac4cea09bc4b0079e`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_008

## Blocking Issues

1. **Location:** `unit_003`, especially the invocation of ALMM `lem:AtoP` and `lem:binary` after (8.8), and the choice of \(c_0\) following (8.9). **Defect:** The expected-loss-only utility trace is correct, but the submitted proof silently treats two defects in the exact active ALMM v3 source as if the printed argument applied verbatim. First, the active proof obtains \(p_j-p_{j-1}\ge 1/(4N)\), while its subsequent `lem:AtoP` proof prints the midpoint \(r=(p_{j+1}+p_j)/2\); the separation actually requires an explicit reindexing or the corrected midpoint \(r=(p_j+p_{j-1})/2\). Second, the active `lem:binary` proof sets \(T_{\rm bin}=10^3N^2\log^2N-1\) and \(D=10^2N^2\log T_{\rm bin}\), and its final privacy comparison requires \(D\delta\le1/6\). At the proof's displayed value \(\delta=1/(10^3N^2\log N)\), however,
   \[
   D\delta=\frac1{10}\frac{\log T_{\rm bin}}{\log N}>\frac16
   \]
   throughout the relevant \(N\ge72\) range (and it tends to \(1/5\)). Thus the sentence that the source \(10^{-3}\) choice directly supplies the bound is not a valid exact constant check. A smaller universal \(c_0\) can plausibly repair this, but the review may not make that repair silently. **Downstream effect:** Proposition~\ref{prop:step-008-almm-expected}, including the provenance of \(c_0\) and hence \(c_\delta\), is not currently proved from the exact cited source; `unit_005` and the target assembly therefore lack their theorem-critical lower-bound input. **Smallest repair direction:** In `unit_003`, explicitly reindex/correct the `lem:AtoP` midpoint and derive its separated-marginal conclusion from (8.8); then choose and display a universal \(c_0\) small enough that \(D\delta\le1/6\) and every other ALMM privacy inequality holds, before deriving (8.9). This preserves the accepted sketch claim and needs no new dependency.

2. **Location:** `unit_004`, the claimed exact factor/source mechanism map. **Defect:** The proof defines only the output restriction \(h\mapsto(2h(x_b)-1)_{b=1}^T\). It does not define the rowwise input relabeling from an arbitrary ALMM database in \((\{x_1,\ldots,x_T\}\times\{\pm1\})^N\) to the \(0/1\)-labeled database on which \(\widetilde B_N\) operates. Output postprocessing alone does not establish privacy of a source mechanism. In particular, the claimed all-input adjacency statement needs the source mechanism to be defined on nonrealizable databases and needs a proof that one source-row replacement maps to one factor-row replacement. **Downstream effect:** The object to which Proposition~\ref{prop:step-008-almm-expected} is applied is not fully constructed, so its replacement-DP hypothesis on all labeled inputs is not discharged despite the valid all-input privacy result in `unit_002`. **Smallest repair direction:** Define the rowwise bijection \(\psi(x,y)=(x,(y+1)/2)\) on every source row and the complete mechanism \(A_{\rm src}(Z)=\phi(\widetilde B_N(\psi^{\otimes N}(Z)))\), where \(\phi\) is the output restriction/relabeling. Prove directly that \(\psi^{\otimes N}\) preserves replacement adjacency, including for nonrealizable inputs, and separately verify the already claimed loss identity on realizable threshold databases.

## Per-Lemma Audit

### unit_001: uniform fixed-database resampling preserves expected loss exactly

- Statement fidelity: The lemma supplies exactly the expected empirical-loss interface assigned to the resampling unit and uses the local contradiction hypothesis only conditionally.
- Proof validity: For a fixed realizable database \(Z\), the row-counting distribution \(P_Z\) satisfies \(R_{P_Z}(h,c)=L_Z(h)\) pointwise for every output \(h\). Independent uniform indices give the ordered with-replacement sample exactly the law \((P_Z)_c^m\). Conditioning first on the sampled rows and then on learner randomness gives the displayed expectation identity without a Jensen, Markov, or independence shortcut.
- Cited-result and assumption audit: No external result is needed. Repeated rows are handled by multiplicity in \(P_Z\); realizability makes repeated-instance labels consistent. No utility claim is made on nonrealizable inputs.
- Rigor checklist: The equality is in expectation over both resampling and learner randomness, exactly matching the target probability mode. The hypothesis \(N\ge m\) is stronger than necessary for the identity but is satisfied later and causes no scope change.
- Local adversarial test: Duplicated rows, a sequence-sensitive learner, and an improper output do not break the argument because the sample law is ordered i.i.d. and the loss equality is pointwise in the output.
- Contribution to target step: Correctly converts worst-case expected population risk at most \(1/8\) into expected empirical loss at most \(1/8\) on every fixed realizable database.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact privacy of the even ninefold wrapper

- Statement fidelity: The unit supplies the exact with-replacement privacy parameters, even sample size, and all-input adjacency interface required by the accepted row.
- Proof validity: Bun--Nissim--Stemmer--Vadhan Lemma 5.9, in both the contemporaneous arXiv v1 source and the current source, states precisely that for \(\epsilon\le1\), \(N\ge2m\), and an \((\epsilon,\delta)\)-DP \(m\)-row mechanism, with-replacement sampling from \(N\) rows gives
  \[
  \left(6\epsilon m/N,\ e^{6\epsilon m/N}(4m/N)\delta\right)\text{-DP}.
  \]
  The submitted instantiation has \(\epsilon=0.1\) and \(N\ge9m\), so both hypotheses hold. The inequalities \(1/15<0.1\) and \(e^{1/15}(4/9)<1\) correctly give parameter domination.
- Cited-result and assumption audit: The cited lemma uses fixed-size one-row replacement adjacency and arbitrary output events. Treating a labeled example as one row exactly matches the branch. The factor learner's DP guarantee on nonrealizable databases supplies the cited lemma's all-input premise.
- Rigor checklist: \(N=2\lceil9m/2\rceil\) is even; it equals \(9m\) for even \(m\) and \(9m+1\) for odd \(m\), hence \(9m\le N\le9m+1\le10m\). Duplicate selections are part of the cited calculation rather than an unproved group-privacy step.
- Local adversarial test: Odd \(m\), repeated selection of the changed row, arbitrary labels, and nonrealizable adjacent databases are all covered. Privacy monotonicity also validly handles an original \(\varepsilon<0.1\).
- Contribution to target step: Establishes the exact privacy and parity wrapper needed before invoking ALMM.
- Verdict: PASS
- Repair direction: None.

### unit_003: ALMM threshold lower bound from expected empirical loss

- Statement fidelity: The proposed conclusion is the accepted sketch's current-notation expected-loss wrapper rather than an incorrect quotation of ALMM's formal PAC theorem.
- Proof validity: Inspection of the active ALMM v3 proof confirms that empirical utility is invoked only in `lem:reduction`: expected empirical loss at most \(1/8\) gives (8.7), the \(3/4\) and \(1/4\) endpoint witnesses, and then the probability-list jump. `lem:ramsey`, the post-jump indistinguishable-family argument, binary search, and final Ramsey calculation use no further utility event and no properness. However, the submitted proof does not resolve the exact source indexing and privacy-constant defects stated in Blocking Issue 1, so the proposition is not yet a complete derivation.
- Cited-result and assumption audit: The source's arbitrary-output and replacement-adjacency conventions match. The utility-mode replacement is source-compatible. The exact quantitative applicability is not discharged because the printed `lem:AtoP` index and `lem:binary` \(D\delta\) condition are skipped.
- Rigor checklist: Evenness and \(N\ge72\) cover the balanced database and small-\(N\) boundaries. The claimed passage from the homogeneous-set bounds to \(\log_2^*T\le N+\log_2^*N+C_0\) is structurally consistent, but its \(c_0\) premise needs the missing displayed calculation.
- Local adversarial test: Setting \(\delta\) at the submitted source-scale boundary exposes the failure: the exact active source's \(D\delta\le1/6\) line does not follow from the printed \(10^{-3}\) coefficient. Following the printed probability-list indices also fails to center the separated marginals around the jump actually proved.
- Contribution to target step: This is the theorem-critical expected-risk source wrapper; until repaired, it does not legally export \(b_0,c_0\).
- Verdict: REVISE_STEP
- Repair direction: Repair the two exact active-source calculations inside this unit under the unchanged proposition statement.

### unit_004: finite Shelah threshold witness and exact factor/source map

- Statement fidelity: The intended witness size and unrestricted-output interface match the accepted sketch row.
- Proof validity: ALMM `thm:shelah` and its combinatorial appendix support a base-two witness of size \(T=\lfloor\log_2d\rfloor\); the pattern \(c_a(x_b)=1\iff a\le b\) is the source threshold family up to order reversal and binary relabeling. Restricting an improper factor output to the finite witness indeed gives an allowed arbitrary source hypothesis, and disagreement loss is preserved pointwise. The proof is incomplete only at the input side of the mechanism map described in Blocking Issue 2.
- Cited-result and assumption audit: Finite \(d\ge1\) and binary label relabeling discharge the Shelah hypotheses. Infinite ambient domain/class cardinality causes no issue. The all-input privacy transfer is not yet discharged because the source-input relabeling is absent.
- Rigor checklist: The active regime in `unit_005` has \(T\ge2\), so the \(T=0\) boundary is not consumed. Distinctness and order are supplied by the threshold witness. Output restriction introduces no properness.
- Local adversarial test: A nonrealizable source database with arbitrary \(\pm1\) labels reveals the missing definition: the submitted output postprocessing does not by itself specify what \(0/1\)-labeled input is passed to the factor wrapper or prove preservation of adjacency.
- Contribution to target step: The witness is correct, but the claimed exact source mechanism and its all-input privacy interface are incomplete.
- Verdict: REVISE_STEP
- Repair direction: Add the explicit rowwise input bijection, complete source mechanism, and adjacency/event proof; retain the current witness and output restriction.

### unit_005: current-notation unrestricted factor risk floor

- Statement fidelity: The proposition states exactly the strict \(>1/8\) target with the required \(m,\delta,d\) quantifiers and universal constants.
- Proof validity: Conditional on valid \(b_0,c_0\) and a complete factor/source map, the assembly arithmetic is correct. For \(m\ge8\), \(N^2\log N\le200m^2\log(m+1)\). From \(m<a_{\mathrm L}r\), \(a_{\mathrm L}\le1\), and \(m\ge8\), one gets \(r>8\); with \(T=\lfloor\log_2d\rfloor\), the displayed three-log comparison gives \(\log_2^*T\ge r-3\ge r/2\). Then \(N\le10m\) yields \(m\ge(b_0/20)r\ge a_{\mathrm L}r\), contradicting the strict premise.
- Cited-result and assumption audit: The accepted `step_001` dependency supplies \(d\ge1\), though the active regime is much stronger. This unit otherwise consumes only named local results. Its current failure is inherited from `unit_003` and `unit_004`, not from the accepted dependency.
- Rigor checklist: \(m=8\) gives \(N=72\); odd/even rounding is correct; all natural logarithms are positive. The logical negation of worst-case risk \(\le1/8\) is strict risk \(>1/8\) because the supremum lies in \([0,1]\). The \(d=1\) regime is correctly inactive.
- Local adversarial test: Equality at the delta boundary and strictness at \(m=a_{\mathrm L}r\) are handled correctly: the theorem assumes the former inclusively and excludes the latter. No additive log-star term is silently absorbed.
- Contribution to target step: Its numerical and contrapositive assembly is sound, but it currently invokes an unproved source proposition and an incomplete source mechanism map.
- Verdict: REVISE_STEP
- Repair direction: Reuse this arithmetic after repairing `unit_003` and `unit_004`; no target or constant form needs to change.

## Hidden Subclaim Scan

Two independent hidden obligations were found. The first is the correction and quantitative revalidation of the active ALMM `lem:AtoP`/`lem:binary` path needed to turn the verified \(1/8\) utility line into constants \(b_0,c_0\). The second is the adjacency-preserving source-input label map on arbitrary databases. Both are currently compressed into broad source-faithfulness prose rather than proved in a named unit's derivation.

No other hidden subclaim was found. The resampling tower identity, Bun et al. multiplicity calculation, even-size rounding, Shelah witness size, improper-output restriction, delta denominator comparison, three-iterate log-star comparison, and strict contrapositive are all exposed in declared local units. The target assembly uses theorem-style labels rather than bare local-unit IDs.

## Target Claim Audit

The submitted claim is faithful to the accepted `step_008` row: it is candidate-wise in the integer \(m\ge8\), fixes privacy epsilon at \(0.1\), exposes \(\delta\le c_\delta/[m^2\log(m+1)]\), allows arbitrary improper outputs, and concludes strict worst-case expected distributional risk \(>1/8\) below \(a_{\mathrm L}\log_2^*d\). The probability, adjacency, and risk modes do not drift.

The exact source inspection validates the main conceptual strengthening from PAC utility to expected loss: ALMM's active lower proof consumes utility only through expected empirical loss at most \(1/8\). Nevertheless, the target is not yet proved because the exact post-jump source calculation and the full all-input factor/source mechanism map are incomplete. No flaw was found in the accepted `step_001` dependency, and neither blocker requires a change to the sketch-row claim, assumptions, dependency list, or output target.

## Explicit Rate Audit

The proof correctly declares \(d,m,\delta\), fixed \(\varepsilon=0.1\), expected 0-1 risk, fixed-sample scope, and universal hidden constants. Equations (8.2)--(8.4) validly preserve privacy; (8.14)--(8.15) validly translate \(m^2\log(m+1)\) to \(N^2\log N\); and (8.16) validly translates the Shelah witness size to the branch's base-two log-star convention. The factor \(20\) in \(a_{\mathrm L}\) follows exactly from \(N\le10m\) and \(\log_2^*T\ge r/2\).

The rate audit fails only at the source provenance of \(c_0\): the proof's appeal to the displayed ALMM \(10^{-3}\) coefficient does not satisfy the active `lem:binary` \(D\delta\le1/6\) inequality. A repaired proof must choose \(c_0\) by an explicit inequality covering that condition and any fixed log-base conversion. This is a universal-constant repair, not a change in exposed dependence. The one-factor ALMM baseline, small-\(d\) exclusion, expectation mode, and candidate-wise horizon remain preserved.

## Notation Surface Audit

The classifications of \(d,m,\delta,a_{\mathrm L},c_\delta\), \(N,T,r\), \(Z,P_Z,U,\widetilde B_N\), and the probability-list quantities are otherwise economical and consistent. A repaired `unit_003` should distinguish the ALMM binary-search depth parameter from the threshold-domain size \(T\), for example by using \(T_{\rm bin}\), so the constant check is visible rather than hidden by symbol reuse. A repaired `unit_004` should classify the rowwise input bijection \(\psi\), output restriction \(\phi\), and composed source mechanism as proof-local. No new public-facing object is needed.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-008-resampling} and Lemma~\ref{lem:step-008-privacy} correctly provide the expected-loss and all-input privacy controls. The Shelah witness and output restriction in Lemma~\ref{lem:step-008-threshold-map} are mathematically compatible with ALMM, and Proposition~\ref{prop:step-008-factor-floor} correctly performs the final arithmetic and strict contradiction. The current assembly nevertheless fails because Proposition~\ref{prop:step-008-almm-expected} has not discharged the exact active-source constant/index obligations and because the mechanism passed to it is not defined on arbitrary source-labeled inputs. Once those two local repairs receive a fresh accepted review, the named results would jointly imply the exact target claim.

## Review Rationale

`REVISE_STEP` is the smallest valid status. The expected-loss wrapper is viable under the accepted setting and proof-sketch interface, Bun et al.'s exact resampling lemma applies, the Shelah restriction is available, and the final quantitative contradiction is sound. The defects are confined to the submitted step's source derivation and object mapping: they require an explicit correction/constant choice and an explicit adjacency-preserving input map, not a new assumption, dependency, bridge step, or weakened conclusion. Therefore `/proof-step step_008` is the smallest retry target; the repaired proof will still require a fresh `/proof-step-review step_008` before downstream use.
