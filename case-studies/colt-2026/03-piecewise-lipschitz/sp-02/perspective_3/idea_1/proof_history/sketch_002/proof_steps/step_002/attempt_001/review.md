# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_002
- Unit attempt: 1
- Reviewed proof artifact: f283dcd2fe425f336a16a3dfa06f6bebbc822d8f86407aaa6214a7b48d033ed6

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Borel extended pivot speeds and finite feasible minimum

- Statement fidelity: PASS. Lemma~\ref{lem:step-002-borel-speeds} states the exact extended-real measurability obligation, the finite pointwise minimum on nonempty \(K_R\), the bound by the finite fixed-family \(\Gamma_{\rm piv}\), and the vacuous empty-set branch. Its assumption basis names Assumption~\ref{assump:shared-pfaffian-chain} and the three accepted theorem-style results from `step_001`.
- Proof validity: PASS. On the relatively open Borel set \(U_j=\{F_j\ne0\}\), the quotient-rule formulas make the finite branch of \(V_j\) continuous. Extending it by \(+\infty\) off \(U_j\) preserves Borel measurability because every finite strict sublevel is a Borel subset of \(U_j\). At each \(\theta\in K_R\), the accepted pivot-margin lemma supplies a nonzero coordinate and hence a finite speed; finite minimization is attained, and the definition of the supremum gives \(\min_jV_j(\theta)\le\Gamma_{\rm piv}<\infty\).
- Cited-result and assumption audit: PASS. The unit uses only primitive \(C^1\) regularity from Assumption~\ref{assump:shared-pfaffian-chain} and the current accepted `step_001` conclusions. Pivot availability is consumed as a derived dependency output, not as a primitive assumption. Neither Assumption~\ref{assump:no-forced-root} nor Assumption~\ref{assump:joint-density-cap} is independently invoked.
- Rigor checklist: PASS. The extended codomain \([0,+\infty]\), relative topology on \(\Theta\), endpoint convention, finite coordinate set, nonempty/empty case split, and supremum quantifier are all handled. No continuity of the extended map, global prescribed pivot, law, or probability statement is asserted.
- Local adversarial test: PASS. A zero coordinate has speed \(+\infty\), while simultaneous coordinate zeros on \(K_R\) are excluded by the accepted dependency. Thus individual zeros, \(N=1\), endpoints, and \(K_R=\varnothing\) do not break measurability or finite minimization.
- Contribution to target step: PASS. The lemma supplies exactly the Borel extended data and finite winner needed by the least-index selector.
- Verdict: PASS
- Repair direction: None

### unit_002: Borel least-pivot selector and disjoint cells

- Statement fidelity: PASS. Proposition~\ref{prop:step-002-borel-selector} states the least-minimizer rule, an explicit fiber formula, Borel measurability, pairwise disjoint coverage of \(K_R\), nonzero selected pivots, and the empty-domain case.
- Proof validity: PASS. For Borel extended-real \(f,g\), the rational-separation identity for \(\{f<g\}\) remains valid when \(g=+\infty\), and complementation gives \(\{f\le g\}\). The displayed fiber formula uses strict comparison against every earlier index and weak comparison against every later index, which is exactly least-index tie breaking. A finite minimum exists by Lemma~\ref{lem:step-002-borel-speeds}; the fibers therefore cover once and only once. The finite-fiber criterion proves the selector Borel, and \(V_j<+\infty\) implies \(F_j\ne0\).
- Cited-result and assumption audit: PASS. The proposition consumes the named preceding lemma and the compact/Borel \(K_R\) conclusion of accepted Lemma~\ref{lem:step-001-root-feasible}; both are restated before use. It adds no primitive nondegeneracy, tolerance, measurable-selection theorem, or external source.
- Rigor checklist: PASS. Ties involving earlier and later indices, finite values versus \(+\infty\), all subsets of the finite discrete codomain, coordinate zeros, \(N=1\), and the empty domain are covered with the correct quantifiers.
- Local adversarial test: PASS. When several finite speeds tie, exactly the smallest index satisfies the strict/weak formula. An all-infinite list cannot occur on \(K_R\), and a zero selected coordinate is impossible, while zeros in unselected coordinates remain allowed.
- Contribution to target step: PASS. The proposition produces the unique Borel cells whose disjointness prevents chart-count duplication downstream.
- Verdict: PASS
- Repair direction: None

### unit_003: Borel finite-level exhaustion of each selected cell

- Statement fidelity: PASS. Lemma~\ref{lem:step-002-finite-exhaustion} states for every \(j\) and finite integer \(m\ge1\) that \(E_{j,m}\) is Borel, the levels are increasing, their union is exactly \(E_j\), and every selected point enters a finite level.
- Proof validity: PASS. Continuity of \(F_j\) makes \(\{|F_j|\ge1/m\}\) relatively closed, the thresholds decrease with \(m\), and selected-pivot nonvanishing permits the Archimedean choice of a finite \(m\) satisfying \(1/m\le|F_j(\theta)|\). Both inclusions in the union identity follow.
- Cited-result and assumption audit: PASS. The unit uses Assumption~\ref{assump:shared-pfaffian-chain}, Proposition~\ref{prop:step-002-borel-selector}, and the explicitly restated Archimedean fact. Nonzero selected pivots are a proved prior conclusion rather than an assumed local-validity condition.
- Rigor checklist: PASS. Equality at the threshold, monotonicity direction, finite-level entry, endpoints, empty cells, and the full \(K_R=\varnothing\) branch are correct.
- Local adversarial test: PASS. Arbitrarily small positive pivots may require large \(m\) but enter some finite level; a zero pivot would fail exhaustion but is excluded by the selector proposition. The threshold is an exact localization device, not a hidden auxiliary tolerance.
- Contribution to target step: PASS. The lemma supplies the monotone denominator-bounded exhaustion without deleting selected points or adding a boundary remainder.
- Verdict: PASS
- Repair direction: None

### unit_004: Exact selected-coordinate chart and pivot velocity

- Statement fidelity: PASS. Proposition~\ref{prop:step-002-exact-chart} states joint Borel measurability, the original-coordinate root equation with zero residual, the exact derivative identity, and the literal \(|\partial_\theta T_j|\le V_j=\min_iV_i\le\Gamma_{\rm piv}\) bound for every selected \(j,\theta\) and every \(\beta\in[-R,R]^{N-1}\), including every exhaustion restriction.
- Proof validity: PASS. Since \(E_j\subseteq U_j\), the quotient is well-defined and is the restriction of a continuous map on \(U_j\times\mathbb R^{N-1}\). Multiplication by \(F_j\) reconstructs exactly \(b+\alpha_jF_j+\sum_{i\ne j}\alpha_iF_i=0\). Direct differentiation gives \(\partial_\theta T_j=-(b/F_j)'-\sum_{i\ne j}\beta_i(F_i/F_j)'\), and the triangle inequality with each \(|\beta_i|\le R\) gives exactly the setting definition of \(V_j\). Cell membership gives the minimum, and the accepted dependency makes \(\Gamma_{\rm piv}\) finite.
- Cited-result and assumption audit: PASS. The proposition uses Assumption~\ref{assump:shared-pfaffian-chain}, the current accepted pivot-margin and finiteness results from `step_001`, and Proposition~\ref{prop:step-002-borel-selector}. The quotient rule and triangle inequality are restated and fully discharged. No density, independence, event, law, area-formula, or source-interface assumption enters.
- Rigor checklist: PASS. The calculation retains one literal \(R\) weight for each actual nonpivot coordinate, with no hidden constant, slack, chart sum, or factor \(N\). It preserves original coefficient ordering and does not falsely assert \(T_j\in[-R,R]\); that exact restriction remains available to the downstream chart domain.
- Local adversarial test: PASS. Selected pivots are nonzero, unselected coordinate zeros are harmless, arbitrarily small selected pivots are covered by finite exhaustion, ties preserve \(V_j=\min_iV_i\), endpoints use the setting's \(C^1\) convention, and \(N=1\) reduces to the beta-free identity \(T_1=-b/F_1\) with an empty sum. Empty \(K_R\) makes every chart claim vacuous and leaves \(\Gamma_{\rm piv}=0\).
- Contribution to target step: PASS. The proposition exports the exact original-root graph and area-integrand bound consumed by `step_003`, without chart-count or \(N\)-fold loss.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. The four mapped units account separately for extended-real Borel measurability, finite least-index selection, finite monotone exhaustion, and exact chart algebra/velocity. Joint Borel measurability of \(T_j\), comparison measurability, finite-level entry, and the \(N=1\) reduction are proved inside their mapped units. Every standard fact is restated before use. No stale attempt-1 or `proof_history/` artifact is cited as evidence; the two current dependency SHA-256 identities match their binding values. The current global diagnostic identities recorded by the proof also match, but those diagnostics are expressly non-evidentiary. No generated invariant, probability law, density condition, independence assumption, auxiliary tolerance, or polynomial general-instance estimate for \(\Gamma_{\rm piv}\) is smuggled into the derivation.

## Target Claim Audit

The submitted identity is exactly sketch attempt 2, `step_002`, unit attempt 1, and its SHA-256 is f283dcd2fe425f336a16a3dfa06f6bebbc822d8f86407aaa6214a7b48d033ed6. The setting, accepted sketch, accepted sketch review, dependency proof, and dependency review match the six binding SHA-256 values in the review request. The accepted sketch review is `ACCEPTED`, and the dependency review records sketch attempt 2, `step_001`, unit attempt 1, `ACCEPTED`, with the matching dependency-proof digest.

The proof preserves the exact `step_002` row: Borel extended \(V_j\), Borel least minimizer, disjoint Borel cells, \(E_{j,m}\uparrow E_j\), exact reconstruction of the original root equation, and \(|\partial_\theta T_j|\le V_j\le\Gamma_{\rm piv}\). It uses only primitive Assumption~\ref{assump:shared-pfaffian-chain} and the accepted derived `step_001` interface. Empty \(K_R\), \(N=1\), endpoints, ties, selected and unselected coordinate zeros, finite exhaustion, and deterministic mode are all closed without narrowing the scope.

Artifact checks pass: all required proof headings are present; the local map and derivation contain exactly `unit_001` through `unit_004`; each non-atomic unit has a theorem-style title and unique stable label; all non-assumption references resolve against the current proof/dependency pair; stable assumption IDs agree with `setting.md`; both Markdown tables have constant arity; the file is ASCII with no forbidden control bytes; inline/display TeX delimiters, `aligned` environments, and braces balance; and no source-interface or progress-boundary change appears.

## Explicit Rate Audit

This is the R1 chart-velocity component. It exposes \(N,R,\beta_i,V_j(\theta)\), and \(\Gamma_{\rm piv}(b,F;R)\), with the deterministic family, its presentation, compact \(\Theta\), \(N\), and \(R\) fixed. Hidden constants are absent. The mode is deterministic and static, not probabilistic, conditional, asymptotic, or horizon-dependent; the norm modes are scalar absolute chart velocity, coordinatewise cube bounds, and the setting's coordinate-ratio variation. The displayed inequality keeps the exact term-by-term weights
\[
\sum_{i\ne j}|\beta_i|\left|(F_i/F_j)'\right|
\le R\sum_{i\ne j}\left|(F_i/F_j)'\right|,
\]
then uses the disjoint least-index cell to obtain \(V_j=\min_iV_i\le\Gamma_{\rm piv}\). No term is dropped or absorbed, no chart-count or \(N\)-fold factor appears, and \(1/m\) is only an exact exhaustion threshold. The exported interface therefore preserves the downstream factor \((2R)^{N-1}\). The \(N=1\) baseline has an empty sum and no conservative loss. The result remains fixed-family-only and neither states nor implies polynomial control of \(\Gamma_{\rm piv}\) from \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\), or other Pfaffian-format data.

## Notation Surface Audit

The setting-defined \(U_j,V_j,j_*,E_j,E_{j,m},\beta,T_j\), and \(\Gamma_{\rm piv}\) retain their exact meanings. The chart objects are correctly classified as appendix-local/downstream-facing, while \(\Gamma_{\rm piv}\) is the only already public-facing quantity. The rational comparison variable and exhaustion index are bound proof variables, not exported parameters; the dependency's \(\rho\) is used only for provenance and is not added to this step's interface. No new constant, radius, margin, event, law, or helper dictionary is introduced.

## Target-Step Assembly Audit

The assembly cites the four exact theorem-style results. Lemma~\ref{lem:step-002-borel-speeds} supplies Borel finite speeds; Proposition~\ref{prop:step-002-borel-selector} supplies the unique disjoint Borel cells and nonzero selected pivots; Lemma~\ref{lem:step-002-finite-exhaustion} supplies exact finite exhaustion; and Proposition~\ref{prop:step-002-exact-chart} supplies zero-residual root reconstruction and the literal velocity chain. Together with the current accepted `step_001` conclusions, they imply every clause of the target and no stronger probability or complexity claim. The assembly uses theorem-style names rather than bare unit IDs or subsection titles as mathematical authority, and the disjoint cells expose the no-chart-count-loss interface to `step_003`.

## Review Rationale

All four local units have self-contained statements, legal assumption/dependency provenance, valid derivations, complete boundary handling, and exact contributions to the accepted sketch row. The proof is current, deterministic, tolerance-free, fixed-family-only, and faithful to the original coefficient/root interface. No proof-local repair, dependency repair, or sketch-interface change is required, so ACCEPTED with Smallest Retry Target = None is the smallest sound decision. This review replaces only the stale live `perspective_3/idea_1/proof_steps/step_002/review.md`; no submitted proof, accepted dependency, sketch, setting, tracker, history, or other run artifact is modified.
