# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_002/proof.md`, SHA-256 `54baabedeb5ca0c51351e233c8cc2c3043f541e4defdaa2f536803b9119f92a1`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma states exactly the extended-real Borel and pairwise-comparison interface required by the accepted `step_002` row, under Assumption~\ref{assump:shared-pfaffian-chain} alone.
- Proof validity: On the relatively open set (U_j=\{F_j\ne0\}), the quotient-rule expressions are continuous because (b,F_i,F_j) are (C^1) and the denominator is nonzero. Extending the resulting nonnegative continuous function by (+\infty) on the closed complement gives an extended-real Borel map. The formula
  \[
  \{V_j<V_k\}=\bigcup_{r\in\mathbb Q}
  \bigl(\{V_j<r\}\cap\{V_k>r\}\bigr)
  \]
  is exact: strict inequality forces (V_j) to be finite, so a finite rational separator exists even when (V_k=+\infty). Weak comparison is exactly the complement of the reversed strict comparison.
- Cited-result and assumption audit: Only elementary Borel calculus and the quotient rule are used, both restated in current notation. Assumption~\ref{assump:shared-pfaffian-chain} supplies precisely the needed (C^1) regularity; no pivot availability or density condition is silently used.
- Rigor checklist: The comparison formulas handle finite/finite, finite/(+\infty), and (+\infty/+\infty) values correctly. Subspace Borel sets in the Borel interval (\Theta) remain Borel in the ambient line, and no undefined arithmetic involving (+\infty) occurs.
- Local adversarial test: At a zero of (F_j), the extension is (+\infty); if two pivots vanish, their strict comparisons are both false and their weak comparisons are both true, exactly as required for later tie resolution.
- Contribution to target step: It supplies every measurable comparison used to define the least-index selector.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: The proposition gives the exact least-minimizer selector, disjoint Borel partition, selected-pivot nonvanishing, and pointwise (V_j\le\Gamma_{\rm piv}) certificate required by the sketch row, including the empty-(K_R) branch.
- Proof validity: The hash-matched accepted `step_001` dependency establishes a finite (V_k(\theta)) at every point of nonempty (K_R) before the minimum is formed. The cell formula
  \[
  E_j=K_R\cap\bigcap_{k<j}\{V_j<V_k\}
      \cap\bigcap_{k>j}\{V_j\le V_k\}
  \]
  is exactly the least-index rule: ties with earlier indices exclude (j), while ties with later indices retain it. These Borel cells contain each feasible point exactly once. A selected value is finite, hence the extension rule forces (F_j\ne0), and only then is the selected denominator made available. The supremum definition gives (V_j=\min_kV_k\le\Gamma_{\rm piv}<\infty).
- Cited-result and assumption audit: The accepted dependency proof has SHA-256 `2a44be9fcaa15c23fdfcde0d473d4cd3019c264628c431a082c1d90f1bcb634a`, and its `ACCEPTED` review has SHA-256 `c935a43af6c57c18a18af36c36ce74083a6ba91edbaf75fb9c83a6c04339e489`. It supplies compact/Borel (K_R), pointwise finite-pivot availability, and finite (\Gamma_{\rm piv}). Assumption~\ref{assump:no-forced-root} is consumed only through that accepted derived interface, not promoted to a new primitive use.
- Rigor checklist: Quantifiers and the order of operations are correct: finite availability precedes minimization, selection, and all later division. The selector is Borel because its singleton fibers are the Borel (E_j). For (K_R=\varnothing), the empty selector and empty cells make every pointwise claim vacuous; for (N=1), both comparison intersections are empty and (E_1=K_R).
- Local adversarial test: A zero-valued candidate pivot has (V_j=+\infty) and cannot defeat an available finite pivot. Arbitrary finite ties select exactly the smallest index, so neither overlap nor omission is possible.
- Contribution to target step: It produces the disjoint measurable chart allocation and proves selected finiteness before any chart denominator is used.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The lemma states the exact Borel, monotone, and exhaustive properties of (E_{j,m}=E_j\cap\{|F_j|\ge1/m\}), with no theorem-facing tolerance.
- Proof validity: Continuity of (F_j) makes each threshold set closed, hence each (E_{j,m}) Borel. Since (1/(m+1)\le1/m), the threshold sets and therefore the cells increase. Conversely, selected-pivot nonvanishing gives (|F_j(\theta)|>0) at every (\theta\in E_j), and an integer (m\ge\max\{1,|F_j(\theta)|^{-1}\}) places that point in a finite level. Thus the union is exactly (E_j).
- Cited-result and assumption audit: Assumption~\ref{assump:shared-pfaffian-chain} supplies continuity, and Proposition~\ref{prop:step-002-selector-partition} supplies the Borel cell and strict selected-pivot nonvanishing. No uniform pivot margin is assumed.
- Rigor checklist: The inclusion direction follows the decreasing threshold, and the pointwise choice of (m) covers arbitrarily small nonzero pivots. Empty (E_j), empty (K_R), and (N=1) require no separate exception.
- Local adversarial test: A sequence of selected pivots tending to zero need not lie in one common level, but every individual point enters some level; this is exactly the claimed pointwise exhaustion and no stronger uniform claim is made.
- Contribution to target step: It supplies the finite-denominator exhaustion consumed downstream while leaving the exported rate independent of (m).
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition states the exact original-coordinate chart identity, uniqueness, regularity, material derivative, (R)-weighted velocity cap, and (N=1) convention required by the target row.
- Proof validity: Proposition~\ref{prop:step-002-selector-partition} first gives (F_j(\theta)\ne0). Substituting
  \[
  T_j(\theta,\beta)=-\frac{b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)}{F_j(\theta)}
  \]
  as the original coefficient (\alpha_j) cancels the original affine equation exactly. Conversely, division by the same nonzero (F_j) forces this value, proving uniqueness without a transformed target or residual. With (\beta) fixed, quotient differentiation yields
  \[
  \partial_\theta T_j=-\left(\frac b{F_j}\right)'
  -\sum_{i\ne j}\beta_i\left(\frac{F_i}{F_j}\right)',
  \]
  and (|\beta_i|\le R) gives exactly (|\partial_\theta T_j|\le V_j\le\Gamma_{\rm piv}).
- Cited-result and assumption audit: The quotient rule and fixed-(\beta) partial differentiation are restated and directly proved applicable. The only primitive input is Assumption~\ref{assump:shared-pfaffian-chain}; denominator validity and the final speed cap come from the named prior proposition.
- Rigor checklist: No derivative of (\beta) is introduced, no coefficient permutation changes the mathematical object, and no unsupported claim that (T_j\in[-R,R]) is needed at this step. For (N=1), (\beta) is the unique point of (\mathbb R^0), all sums vanish, (T_1=-b/F_1), and (|\partial_\theta T_1|=V_1\le\Gamma_{\rm piv}); the standard zero-dimensional cube convention is consistent.
- Local adversarial test: Zeros of nonselected (F_i) cause no singularity, a selected zero is already excluded, and cancellation or tangency can only decrease the absolute material velocity. Boundary values (|\beta_i|=R) attain but do not violate the displayed cap.
- Contribution to target step: It exports the exact same-object graph and Jacobian-speed interface needed by `step_003`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is hidden outside the local lemma map. Extended-value and comparison measurability are in Lemma~\ref{lem:step-002-borel-velocities}; selector existence, exact tie handling, partition properties, empty-(K_R) behavior, selected nonvanishing, and the (\Gamma_{\rm piv}) cap are in Proposition~\ref{prop:step-002-selector-partition}; monotonicity and exhaustion are in Lemma~\ref{lem:step-002-chart-exhaustion}; and chart regularity, exact root algebra, uniqueness, fixed-(\beta) differentiation, the (R)-weighted bound, and the empty-tuple case are in Proposition~\ref{prop:step-002-exact-chart}. The local map has four well-formed rows matching these four derivation subsections.

## Target Claim Audit

The proof establishes the exact accepted `step_002` claim, neither strengthening nor weakening it. It covers every (N\ge1), both branches of (K_R), all least-index ties, all selected pivots including arbitrarily small nonzero ones, and every (\beta\in[-R,R]^{N-1}). The primitive/derived split is correct: Assumption~\ref{assump:shared-pfaffian-chain} is used directly, while compactness, finite-pivot availability, and finite (\Gamma_{\rm piv}) come from the current hash-matched accepted `step_001` artifacts. The hash-matched accepted sketch and global review fix the interface, but `global_proof.md` is used only as diagnostic context and supplies no proof evidence.

## Explicit Rate Audit

This deterministic step is rate-bearing through R1. It exposes (N,R,V_j,\Gamma_{\rm piv}), and the coordinate bounds (|\beta_i|\le R), with no hidden constant. The deterministic family, compact interval, (N), and (R) are fixed; the probability mode is deterministic, the horizon mode is static with a pointwise monotone exhaustion, and the norm modes are scalar absolute velocity and coordinatewise cube bounds. The exact triangle inequality retains every term and the literal factor (R); no absorption, probability conversion, auxiliary tolerance, or (m)-dependent loss occurs. The (N=1) specialization reduces exactly to the empty-sum formula. No baseline or public-rate conclusion is weakened.

## Notation Surface Audit

The public-facing (V_j) and (\Gamma_{\rm piv}) retain their setting definitions. The chart objects (U_j,j_*,E_j,E_{j,m},\beta,T_j) are correctly classified as appendix-local, already arise in the setting/accepted interface, and are not exported into the public theorem statement. There is no new helper dictionary, unexplained constant, margin, or threshold. The index (m) is only a proof-local exhaustion index and carries no quantitative dependence.

## Target-Step Assembly Audit

The assembly cites all four results by theorem-style names and stable labels. The accepted dependency first supplies finite pivot availability; Lemma~\ref{lem:step-002-borel-velocities} supplies measurable comparisons; Proposition~\ref{prop:step-002-selector-partition} supplies the exact Borel partition and selected cap; Lemma~\ref{lem:step-002-chart-exhaustion} supplies (E_{j,m}\uparrow E_j); and Proposition~\ref{prop:step-002-exact-chart} supplies exact original-coordinate solving and the material-velocity inequality. These conclusions jointly imply every clause of the sketch row without a global pivot, chart-count union bound, unreviewed lemma, or diagnostic-proof premise.

## Review Rationale

`ACCEPTED` with `Smallest Retry Target = None` is the smallest valid decision. All four non-atomic local units are structurally complete and mathematically correct, every inherited fact has a current accepted dependency source, and the assembly proves the exact measurable-chart interface including all requested degenerate cases. The proof also respects the theorem boundary: it certifies a fixed-family material-partial chart construction and makes no polynomial claim for (\Gamma_{\rm piv}), a pivot margin, or any other conditioning quantity in ((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})) or general Pfaffian-format data.
