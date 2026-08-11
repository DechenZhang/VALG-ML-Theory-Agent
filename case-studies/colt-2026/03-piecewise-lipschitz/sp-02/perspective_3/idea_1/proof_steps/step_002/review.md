# Proof Step Review

## Step Review Identity

- Sketch attempt: 3
- Step ID: step_002
- Unit attempt: 1
- Reviewed proof artifact: perspective_3/idea_1/proof_steps/step_002/proof.md (SHA-256 4cd4c582971538e2b91f59cd34e028b50f42db4eb0f244eb85cf0bbfe2f5b512)
- Accepted dependency: perspective_3/idea_1/proof_steps/step_001/proof.md (SHA-256 6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838), certified by perspective_3/idea_1/proof_steps/step_001/review.md (SHA-256 c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Borel measurability of the extended pivot speeds

- Statement fidelity: PASS. The statement proves exactly that every setting-defined extension (V_j:\Theta\to[0,+\infty]) is Borel, including the branch (F_j=0\Rightarrow V_j=+\infty), and that the pointwise minimum on nonempty (K_R) is finite, attained by the finite coordinate list, and bounded by \(\Gamma_{\rm piv}\).
- Proof validity: PASS. The set (U_j=\{F_j\ne0\}) is relatively open, the finite branch (W_j) is continuous there by the quotient rule, and extending (W_j) by (+\infty) off (U_j) gives Borel finite strict sublevel sets. This proves both extended-real Borel measurability and the exact equivalence (V_j<+\infty\Longleftrightarrow F_j\ne0). The accepted step_001 output supplies at least one finite coordinate at every point of nonempty (K_R), so the finite list has a finite attained minimum; its defining supremum gives \(\min_iV_i\le\Gamma_{\rm piv}<\infty\).
- Cited-result and assumption audit: PASS. Assumption~\ref{assump:shared-pfaffian-chain} supplies only (C^1) regularity. The compactness, pivot-availability, and fixed-family-finiteness inputs come from the current accepted step_001 proof and matching review. Assumption~\ref{assump:no-forced-root} is consumed only through that accepted dependency, and Assumption~\ref{assump:joint-density-cap} is not used.
- Rigor checklist: PASS. The proof handles the extended value (+\infty), relative topology on the compact interval, finite-coordinate attainment, and the empty-(K_R) branch without asserting continuity across denominator zeros. Quantifiers and the nonempty branch are explicit, and no probability or tolerance enters.
- Local adversarial test: PASS. A zero prescribed coordinate produces (V_j=+\infty) but does not obstruct another finite pivot; simultaneous absence of a finite pivot on (K_R) is excluded by step_001. The argument remains valid at compact-interval endpoints and for (N=1).
- Contribution to target step: PASS. It supplies the exact extended Borel data and finite winner needed for the lexicographic selector.
- Verdict: PASS
- Repair direction: None

### unit_002: Borel lexicographic pivot partition

- Statement fidelity: PASS. The proposition gives the accepted least-index selector, its exact fibers, a pairwise disjoint Borel cover of (K_R), complete tie handling, and exclusion of a selected zero pivot.
- Proof validity: PASS. The fiber formula
  \[
  E_j=K_R\cap\{V_j<+\infty\}
  \cap\bigcap_{i<j}\{V_j<V_i\}
  \cap\bigcap_{i>j}\{V_j\le V_i\}
  \]
  has the correct strict-before and weak-after comparisons for the least minimizer. Extended-real strict comparison is Borel by rational separation, including a finite value compared with (+\infty), and weak comparison is its complement in the reversed order. Every feasible point has a finite attained minimum, so the least minimizer belongs to exactly one displayed fiber. The fibers therefore are Borel, disjoint, and cover all of (K_R); finite-discrete fiber measurability proves (j_*) Borel.
- Cited-result and assumption audit: PASS. The unit uses only Lemma~\ref{lem:step-002-extended-speed-measurability} and the accepted dependency's Borelness of (K_R). The standard extended-real comparison and finite-discrete measurability facts are restated and applied in their exact directions.
- Rigor checklist: PASS. Least-index ties satisfy strict comparison against every earlier index and weak comparison against every later index. Since cell membership includes (V_j<+\infty), Lemma~\ref{lem:step-002-extended-speed-measurability} gives (F_j\ne0). The empty-domain map and (N=1) case are handled explicitly.
- Local adversarial test: PASS. At a many-way finite tie, only the least index satisfies the displayed formula. A coordinate with (F_j=0) has infinite speed and cannot be selected while the dependency supplies a finite winner. Zeros in unselected coordinates remain allowed.
- Contribution to target step: PASS. It supplies the exact measurable, disjoint chart domains with no chart duplication.
- Verdict: PASS
- Repair direction: None

### unit_003: Exact finite denominator exhaustion

- Statement fidelity: PASS. The lemma proves the exact setting formula (E_{j,m}=E_j\cap\{|F_j|\ge1/m\}), Borelness, monotonicity, and union (E_j), with no stronger uniform denominator condition.
- Proof validity: PASS. Continuity of (F_j) makes every weak superlevel set Borel. Since (1/(m+1)\le1/m), the levels increase. One inclusion of the union is immediate from the intersection with (E_j); for the reverse inclusion, selected-pivot nonvanishing gives (x=|F_j(\theta)|>0), and the Archimedean property gives a finite (m) with (1/m\le x).
- Cited-result and assumption audit: PASS. Assumption~\ref{assump:shared-pfaffian-chain} supplies continuity, and Proposition~\ref{prop:step-002-lexicographic-pivot-partition} supplies Borel (E_j) and nonzero selected denominators. No uniform margin, later step, or external theorem is imported.
- Rigor checklist: PASS. The weak inequality retains equality points ( |F_j|=1/m). Arbitrarily small positive pivots may enter late but always enter a finite level. Empty cells and the full (K_R=\varnothing) branch satisfy the same set identity.
- Local adversarial test: PASS. Replacing the weak threshold by a strict one would lose equality-boundary points, but the submitted proof uses the required weak threshold. No value of (1/m) appears in the theorem-facing derivative bound, so the exhaustion creates no auxiliary tolerance or remainder.
- Contribution to target step: PASS. It supplies the exact denominator localization consumed downstream while preserving all selected points.
- Verdict: PASS
- Repair direction: None

### unit_004: Exact Borel chart in original coordinates

- Statement fidelity: PASS. The proposition defines the selected chart for every (j), every \(\theta\in E_j\), and every nonpivot vector in the full cube, proves joint Borel measurability, and reconstructs the original affine root equation with zero residual. It correctly makes no claim that (T_j\in[-R,R]).
- Proof validity: PASS. With (J_j=\{1,\ldots,N\}\setminus\{j\}) identified with (\mathbb R^{N-1}) in increasing coordinate order, the expression
  \[
  T_j=-\frac b{F_j}-\sum_{i\in J_j}\beta_i\frac{F_i}{F_j}
  \]
  is jointly continuous on (U_j\times\mathbb R^{J_j}) and hence Borel on the selected Borel subspace. Inserting (T_j) into the original (j)-th coordinate and retaining each (\beta_i) at its original index gives
  \[
  b+T_jF_j+\sum_{i\in J_j}\beta_iF_i=0
  \]
  by direct cancellation. All coordinate components of the insertion map are therefore Borel as well.
- Cited-result and assumption audit: PASS. Assumption~\ref{assump:shared-pfaffian-chain} supplies continuity of the ratios on (U_j), and Proposition~\ref{prop:step-002-lexicographic-pivot-partition} supplies the legal nonzero selected denominator. No transformed-coordinate theorem or probability input is used.
- Rigor checklist: PASS. Coordinate ordering is explicit, no mathematical coordinate is permuted, and the residual is exactly zero. Unselected feature zeros cause only zero numerator terms. For (N=1), (J_1=\varnothing), the beta space is the singleton (\mathbb R^0), both sums are empty, and (T_1=-b/F_1). Empty (K_R) gives empty chart domains, and endpoints use the setting's relative convention.
- Local adversarial test: PASS. A value (T_j) outside ([-R,R]) still solves the algebraic equation and is intentionally retained at this step; the later consumer may impose the cube restriction. Only the selected feature is divided by, so an unselected zero cannot invalidate the chart.
- Contribution to target step: PASS. It supplies the exact same-object Borel graph map required for downstream sweeping.
- Verdict: PASS
- Repair direction: None

### unit_005: Exact selected-chart velocity

- Statement fidelity: PASS. The proposition proves the exact quotient derivative and literal accepted-row chain on every selected chart and every finite exhaustion restriction.
- Proof validity: PASS. For fixed beta, the chart expression is (C^1) on (U_j), and termwise differentiation gives
  \[
  \partial_\theta T_j
  =-\left(\frac b{F_j}\right)'
  -\sum_{i\ne j}\beta_i\left(\frac{F_i}{F_j}\right)'.
  \]
  The finite-sum triangle inequality and the separate bounds ( |\beta_i|\le R) give exactly
  \[
  |\partial_\theta T_j|
  \le \left|\left(\frac b{F_j}\right)'\right|
  +R\sum_{i\ne j}\left|\left(\frac{F_i}{F_j}\right)'\right|
  =V_j=\min_iV_i\le\Gamma_{\rm piv}.
  \]
  Cell membership supplies the equality with the pointwise minimum, and the defining supremum plus accepted step_001 finiteness supplies the last inequality.
- Cited-result and assumption audit: PASS. Assumption~\ref{assump:shared-pfaffian-chain} supplies (C^1) regularity; the accepted step_001 proposition supplies fixed-family finiteness; the two named step_002 propositions supply the selected denominator and exact chart expression. Quotient differentiation and finite-sum triangle inequality are restated with all hypotheses discharged.
- Rigor checklist: PASS. There is one exact factor (R) per nonpivot term and no chart sum, (N)-fold factor, hidden constant, probability input, auxiliary tolerance, infinite-sum interchange, or limit interchange. Restriction to (E_{j,m}) changes no identity. Endpoint derivatives, unselected zeros, zero beta coordinates, and (N=1) with an empty sum are handled literally.
- Local adversarial test: PASS. A selected zero is already excluded, an arbitrarily small selected denominator is legal at some finite exhaustion level, and no (1/m) enters the velocity estimate. In the empty-(K_R) branch the chart claim is vacuous and \(\Gamma_{\rm piv}=0\).
- Contribution to target step: PASS. It supplies the precise Jacobian integrand bound with no loss for the sole downstream consumer step_003.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. Extended-value measurability, finite least-index selection, exact exhaustion, chart measurability and reconstruction, and derivative control are all present in the five-unit map and matching derivations. Rational separation, finite-discrete measurability, the Archimedean property, restriction of a continuous map to a Borel subspace, finite affine-sum differentiation, and the triangle inequality are fully restated atomic tools. The derivative is taken from the (C^1) expression on the open chart (U_j) before restriction to the possibly nonopen Borel cell, so the Borel cell creates no hidden differentiability assumption. The diagnostic global pair and archived attempt-2 pair enter only provenance notes and no inference.

## Target Claim Audit

The proof establishes the exact sketch-attempt-3 step_002 row under only Assumption~\ref{assump:shared-pfaffian-chain} and the accepted derived outputs of step_001. It proves Borel extended speeds, a Borel least-minimizer, exact disjoint Borel fibers covering (K_R), the increasing exhaustive cells, exact original-coordinate root charts, and
\[
|\partial_\theta T_j|\le V_j\le\Gamma_{\rm piv}
\]
for every selected (j), feasible theta, and beta in the full nonpivot cube. Quantifier order, constants, deterministic mode, and scope match the accepted row. The COMPLETE producer status is supported. The proof neither adds a global pivot or positive-margin assumption nor exports probability, area, volume, or a polynomial general-instance bound on \(\Gamma_{\rm piv}\).

## Explicit Rate Audit

The rate-bearing interface exposes (N,R,\beta,V_j), and \(\Gamma_{\rm piv}\) and has no hidden constant. The family, its presentation, compact (\Theta), (N), and (R) are fixed; the statement is deterministic, static, and pointwise, with scalar absolute value and coordinatewise cube bounds. There is no confidence parameter, stochastic conversion, horizon, asymptotic regime, or auxiliary tolerance. The only quantitative simplification is the displayed termwise inequality (\sum_{i\ne j}|\beta_i|| (F_i/F_j)'|\le R\sum_{i\ne j}|(F_i/F_j)'|); no term is absorbed or dropped. The finite chart partition introduces no (N)-fold factor, and (1/m) is only an exact denominator localization. The (N=1) and empty-(K_R) reductions are exact. The monic baseline remains assigned to step_006 and is unchanged here.

## Notation Surface Audit

The setting-defined (U_j,V_j,j_*,E_j,E_{j,m},\beta,T_j), and \(\Gamma_{\rm piv}\) retain their original meanings. \(\Gamma_{\rm piv}\) is public-facing; the cells, exhaustion, and chart are appendix-local outputs consumed only by step_003. The new helpers (W_j,J_j,\alpha^{(j)}), rational (r), and integer (m) are correctly classified as proof-local and have direct definitions. No helper hides a margin, constant, residual, or transformed object. The stable assumption IDs `assump:shared-pfaffian-chain`, `assump:no-forced-root`, and `assump:joint-density-cap` resolve in setting.md; only the first is used primitively, the second is inherited through step_001, and the third is explicitly excluded. All five local theorem labels are unique, and every local and dependency reference resolves to a named result.

## Target-Step Assembly Audit

The assembly uses only paper-ready named results. Lemma~\ref{lem:step-002-extended-speed-measurability} supplies Borel speeds and a finite winner; Proposition~\ref{prop:step-002-lexicographic-pivot-partition} supplies the measurable disjoint cells and legal pivot; Lemma~\ref{lem:step-002-exact-denominator-exhaustion} supplies exact increasing coverage; Proposition~\ref{prop:step-002-exact-original-root-chart} supplies the Borel same-object graph; and Proposition~\ref{prop:step-002-exact-r-weighted-velocity} supplies the exact derivative chain. These results and the current accepted step_001 dependency jointly imply every clause of the target, with no reliance on subsection names, bare unit IDs, later steps, diagnostic files, or an unreviewed bridge.

## Artifact Integrity Audit

The reviewed proof SHA-256 is exactly 4cd4c582971538e2b91f59cd34e028b50f42db4eb0f244eb85cf0bbfe2f5b512. The binding idea, setting, accepted sketch, accepted sketch review, accepted global diagnostic pair, and accepted step_001 proof/review digests all match the frozen prompt. The stale live review matched SHA-256 6e87e9d11f307556a640246941f7a195ab7b5d178ce62b5f48e3a1ce84bef113 before overwrite, and the archived stale proof/review pair was excluded from current evidence.

The proof has every required heading and exactly five local-derivation units matching the five-row local lemma map. Its four-column local-lemma table and three-column application table have consistent row arity. It is ASCII text with no disallowed control byte. TeX surface checks found 299 inline opening delimiters and 299 inline closing delimiters, 37 display opening delimiters and 37 display closing delimiters, 266 opening braces and 266 closing braces, and no dollar delimiter. The five local labels are unique; the three dependency labels and all stable assumption IDs resolve. Constants, quantifiers, equality boundaries, coordinate order, zero branches, empty branches, and zero-dimensional conventions pass. The review write is confined to this review.md, and all protected artifact hashes remain unchanged.

## Review Rationale

ACCEPTED with Smallest Retry Target = None is the smallest controlled outcome because all five mapped units are self-contained, valid under the unchanged sketch row and accepted dependency, and jointly prove the exact measurable-chart and velocity interface. Every requested zero, tie, endpoint, exhaustion, empty-set, and (N=1) stress test passes; the rate has no chart-count loss, hidden constant, probability input, or tolerance; and the proof preserves the fixed-family `material_partial` boundary without claiming the unresolved polynomial Pfaffian-format control of \(\Gamma_{\rm piv}\). No proof-step, dependency, or sketch repair is required.
