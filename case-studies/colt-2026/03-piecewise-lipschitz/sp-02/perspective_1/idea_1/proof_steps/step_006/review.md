# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: `step_006`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_1/proof_steps/step_006/proof.md`, SHA-256 `4ec1534fcbcb44eb50e275a2526c60831fc7dd92b59a1d9db3cf90c68320f068`
- Binding setting: `perspective_1/idea_1/setting.md`, SHA-256 `f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83`
- Accepted sketch: `perspective_1/idea_1/proof_sketch.md`, SHA-256 `2fa48ee16cca9a8d0379071f448d1e72ce98ae46d624482d772e74b97649c74a`
- Accepted sketch review: `perspective_1/idea_1/proof_sketch_review.md`, SHA-256 `40b66331aa50a66607d068e266c545a865044bd175a56d81f012542e6d17d6f8`
- Accepted dependency proof: `perspective_1/idea_1/proof_steps/step_001/proof.md`, SHA-256 `6c4e3048df8a590bd8c24f6f6b1d6be157c7fe8895af38bd8736ea1c419ac939`
- Accepted dependency review: `perspective_1/idea_1/proof_steps/step_001/review.md`, SHA-256 `cd4bc2cee3dabe3638d749cf6996ab6a3bcf6d2a69743bfafcf78b44ad88c3a7`
- Diagnostic global proof: `perspective_1/idea_1/global_proof.md`, SHA-256 `45e93d102aa948c0d80886e5f21cf3bdaa412dfaa25611684eb363d48fa1f5b9`
- Accepted diagnostic global review: `perspective_1/idea_1/global_proof_review.md`, SHA-256 `cd86cc68e3982c55aeb16fcafbda0759bb71464aee405c4a158bd41a308463db`
- Evidence boundary: the accepted global pair was used only as diagnostic context. The stale live review at SHA-256 `1f945740984079d404309c917115e57bb70da724b1ad94b04286d978fe1c5d1c` and the archived sketch-attempt-1 proof/review were not used as current proof evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-finite-chart-legality} states the exact finite-level legality obligation under the four relevant primitive assumptions and accepted Proposition~\ref{prop:step-001-coordinate-envelope}. It fixes arbitrary \(I,j,m\), defines the precise margin \(\lvert F_j\rvert\geq 1/m\), includes the \(N=1\) convention, and asserts no margin or Lipschitz constant uniform in \(m\).
- Proof validity: The unit-box coefficient estimate gives \(\lvert F_i\rvert\leq B_Q\), and the accepted dependency plus the exact coordinate change gives \(\lvert F_i'\rvert\leq D_*/h\). Compact \(C^1\) regularity of \(F_0\) makes \(B_H\) and \(L_H\) finite. For two points of the possibly disconnected set \(E_{j,m}\), the direct quotient comparison is valid without a path between them and yields
  \[
  \lvert T_j(\theta,\beta)-T_j(s,\zeta)\rvert
  \leq (mL_H+m^2B_HL_F)\lvert\theta-s\rvert
       mB_Q\lVert\beta-\zeta\rVert_1.
  \]
  Thus \(T_j\) and the original-coordinate insertion map are genuinely Lipschitz on the measurable finite-level domain. On the open nonzero-pivot locus the quotient is \(C^1\), so its derivative agrees almost everywhere at density points of any measurable restriction; ambient endpoints are null.
- Cited-result and assumption audit: The only dependency is the current accepted `step_001` proposition with the exact bound and hashes recorded above. The other inputs are primitive setting conditions. The mean-value and quotient estimates are direct. No root event, transversality condition, generated pivot margin, or independence property is assumed.
- Rigor checklist: The constants \(L_F=D_*/h\), \(B_H=\lVert F_0\rVert_\infty+(N-1)RB_Q\), and \(L_H=\lVert F_0'\rVert_\infty+(N-1)RL_F\) have explicit provenance. The proof uses norm equivalence only to establish Lipschitz existence, not to alter a target constant. Measurability, almost-everywhere differentiability, compactness, and the one-sided endpoint convention are handled in the required modes.
- Local adversarial test: Disconnected cells with opposite pivot signs still satisfy the displayed endpoint quotient estimate. Pivots arbitrarily close to zero enter only at larger \(m\); no global margin is inferred. Null or empty cells, endpoint slices, \(N=1\), \(F_j'=0\), and \(D_*=0\) do not invalidate the construction.
- Contribution to target step: It supplies exactly the finite-level measurable Lipschitz wrapper required by the equal-dimensional area formula.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-chart-jacobian} uses the domain required by the sketch,
  \[
  D_{j,m}=\{(\theta,\beta):\theta\in E_{j,m},\ \beta\in[-R,R]^{N-1},
  \lvert T_j(\theta,\beta)\rvert\leq R\},
  \]
  and states cube membership, both directions of the root/chart correspondence, the exact determinant, and tangent-root behavior.
- Proof validity: Inserting \(T_j=-H_j/F_j\) in coordinate \(j\) gives the exact identity \(F_0+\langle\Psi_j,F\rangle=H_j+T_jF_j=0\). Conversely, a cube coefficient with a root and \(\theta\in E_{j,m}\) solves uniquely for \(\alpha_j=T_j(\theta,\alpha_{-j})\), so the domain restriction and coefficient equality are exact. After only a magnitude-one output permutation, the derivative matrix is triangular with diagonal \(\partial_\theta T_j,I_{N-1}\); hence \(\lvert\det D\Psi_j\rvert=\lvert\partial_\theta T_j\rvert\). Differentiating the root identity at fixed \(\beta\) gives \(g_\alpha'=-F_j\partial_\theta T_j\).
- Cited-result and assumption audit: This unit uses the proved finite-level legality lemma and algebra on the setting-defined \(T_j\). It does not invoke an external affine theorem. The coordinate permutation changes neither the coefficient vector nor the absolute determinant.
- Rigor checklist: The determinant conclusion is needed only almost everywhere on the measurable area-formula domain and is available there from the surrounding \(C^1\) formula. The converse preserves the original coefficient ordering and uses \(\lvert T_j\rvert\leq R\) exactly. The \(0\times0\) determinant convention makes the formula correct for \(N=1\).
- Local adversarial test: Coefficients on the cube faces \(T_j=\pm R\), zero chart velocity, tangent roots, several distinct roots, and roots with infinitely many preimages remain in the exact chart correspondence. Since \(F_j\neq0\) on the selected cell, tangency is equivalent to zero chart Jacobian; no simple-root premise appears.
- Contribution to target step: It supplies the exact object mapping and Jacobian used in every finite-level area estimate.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-null-affine-sets} separately states the fixed-point, included-endpoint, and identically-zero coefficient classes under the exact primitive assumptions needed for absolute continuity and the anchor.
- Proof validity: Since \(F_1(\theta_0)=1\), every fixed-\(\theta_0\) root set is the graph of one affine equation in \(\alpha_1\), hence a proper affine hyperplane. Tonelli gives zero \(N\)-dimensional Lebesgue measure, including the one-point \(N=1\) case, and the full density law makes it null. There are at most two included interval endpoints. For nonempty \(I\), \(\mathcal Z_I=\bigcap_{\theta\in I}\mathcal H_\theta\) is empty or an affine subspace and is contained in one proper hyperplane.
- Cited-result and assumption audit: The anchor is a primitive lower/nonzero source, not a generated invariant. Tonelli is stated in the cited-result section and is applied to the exact affine graph fibers. Absolute continuity follows directly from `assump:cube-density-laws`; no coordinate independence is used.
- Rigor checklist: The nonempty-\(I\) condition makes selection of \(\theta_0\) legal. Empty intervals are handled separately as empty root events. Singleton intervals produce one proper hyperplane, so their probability is zero even though their chart integral is zero.
- Local adversarial test: The result remains valid when \(F_0\) is zero or constant, when the affine combination is identically zero for a continuum of \(\theta\), at either ambient endpoint, and for \(N=1\). An infinite root fiber is therefore either already covered by the area formula or belongs to a law-null identically-zero class.
- Contribution to target step: It validates all endpoint and affine-identically-zero exceptional classes without deleting them from chart coverage.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-finite-level-area} states the finite chart event, its completed measurability, the exact coefficient-cube indicator integral, its unweighted domination, finiteness at each fixed \(m\), and the absence of injectivity or multiplicity hypotheses.
- Proof validity: The area formula applies to each measurable \(D_{j,m}\) because the chart restriction is Lipschitz and has the displayed approximate derivative almost everywhere. A Lebesgue-measurable domain decomposes into a Borel part and a null part; the Borel image is analytic and the equal-dimensional Lipschitz image of the null part is null. Therefore each chart image is Lebesgue measurable. The area formula gives
  \[
  \operatorname{Leb}^N(\Psi_j(D_{j,m}))
  \leq\int_{D_{j,m}}\lvert\partial_\theta T_j\rvert,
  \]
  exactly producing the indicator after writing out \(D_{j,m}\). Finite subadditivity and \(f_\mu\leq\kappa\) then give the claimed probability bound under one arbitrary-correlated full joint law.
- Cited-result and assumption audit: The equal-dimensional Euclidean area formula is stated with a measurable domain, Lipschitz map, approximate derivative, multiplicity function that may be infinite, and its image-volume corollary; \(A=D_{j,m}\) and \(\Phi=\Psi_j\) are explicitly mapped. The measurable-image facts are separately stated and mapped. Density domination and Tonelli are stated in the exact completed-measure and nonnegative extended-real forms used here. Balcan--Dick--Pegden Theorem 18 supplies no premise or conclusion.
- Rigor checklist: Multiple and infinite preimages only increase area-formula multiplicity. On the zero-Jacobian subset, including tangent-root representations, the area formula forces the image to be Lebesgue-null. Overlap between different \(j\)-charts is harmless under subadditivity. The finite-level derivative bound and finite product measure make both right sides finite.
- Local adversarial test: Non-Borel measurable pivot cells, density-point failures on null subsets, chart overlaps, tangent roots, multiple or infinite fibers, identically-zero combinations, cube-boundary outputs, endpoint slices, and null chart domains all obey the image-volume inequality. For \(N=1\), the zero-dimensional beta measure is one and the same one-dimensional area formula applies.
- Contribution to target step: It converts exact finite chart coverage into the indicator-weighted coefficient probability bound with literal factor \(\kappa\).
- Verdict: PASS
- Repair direction: None.

### unit_005: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-exhaustive-coverage} states measurable least-level cells, their disjoint cumulative decomposition, increasing finite chart events, and exact equality of their union with the full affine root event.
- Proof validity: The thresholds satisfy \(E_{j,m}\uparrow E_j\). The differences \(C_{j,m}=E_{j,m}\setminus E_{j,m-1}\) are measurable and partition each cumulative level. Because the cube restriction is independent of \(m\), intersecting with it gives \(D_{j,m}=\bigsqcup_{\ell\leq m}\widehat D_{j,\ell}\). For every \(\theta\in E_j\), nonzero \(F_j(\theta)\) makes the terminal set \(\{m:\lvert F_j(\theta)\rvert\geq1/m\}\) nonempty and gives a unique least activation level. The primitive partition gives a unique chart owner. The converse chart identity then proves both event inclusion directions.
- Cited-result and assumption audit: Pivot nonvanishing and chart ownership come exactly from the primitive `assump:affine-chart-data`; no uniform threshold is assumed. The full event is also identified as the projection of a Borel zero set and hence analytic and universally measurable. Finite event measurability was already established by Proposition~\ref{prop:step-006-finite-level-area}.
- Rigor checklist: The same \(\Psi_j\) is used at every level, so image inclusion follows from domain inclusion with no chart-count factor. Equality at the threshold is handled by the closed condition \(\lvert F_j\rvert\geq1/m\). The countable union is exact setwise before any probability limit is taken.
- Local adversarial test: Pivots greater than one activate at \(m=1\); pivots tending to zero activate at increasingly large but finite levels; empty cells and null cells contribute nothing. Coefficients with several roots or infinitely many roots need only one witness. Endpoint, tangent, multiple, and identically-zero witnesses are retained. Empty \(I\) gives equality of empty sets.
- Contribution to target step: It proves the noncircular, measurable, lossless event exhaustion needed for continuity from below.
- Verdict: PASS
- Repair direction: None.

### unit_006: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-affine-bound} quantifies over every admissible \(\mu\) and every interval \(I\), states both the sharper indicator-weighted inequality and the exact accepted unweighted inequality, and explicitly places both in \([0,+\infty]\).
- Proof validity: Exact event exhaustion and completed measurability give \(\mu(\mathcal R_I)=\lim_m\mu(\mathcal R_m)\) by continuity from below. For each fixed \(j\), the nonnegative functions
  \[
  \mathbf 1_{E_{j,m}}
  \mathbf 1_{\{\lvert T_j\rvert\leq R\}}
  \lvert\partial_\theta T_j\rvert
  \]
  increase pointwise to the full-cell integrand. The finite-level inequality, monotone convergence, and the finite \(j\)-sum therefore give the indicator-weighted bound. Dropping the indicator is the explicit pointwise domination needed for the accepted target.
- Cited-result and assumption audit: Continuity from below and monotone convergence are stated in their extended-real forms and mapped to \(\mathcal R_m\) and the exact chart integrands. The density cap was already applied at finite level to the full coefficient event; no conditional density, product law, or second stochastic conversion is introduced.
- Rigor checklist: All limits and integrals are nonnegative and taken in \([0,+\infty]\), so a divergent limiting chart integral is legal. The proof preserves the order "fixed arbitrary law and interval, then inequality" and has no hidden uniformity or interchange of a supremum.
- Local adversarial test: Empty and singleton intervals, included endpoints, \(N=1\), zero chart derivative, tangent roots, pivots approaching zero, multiple or infinite fibers, affine-identically-zero branches, and \(+\infty\) right sides all give valid inequalities in the declared mode.
- Contribution to target step: It is the single public-facing proposition exporting the exact R3 affine theorem to `step_008` and `step_010`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. The coefficient and derivative envelopes, the disconnected-cell quotient estimate, and finite-level Lipschitz legality are in Lemma~\ref{lem:step-006-finite-chart-legality}. Exact original-coordinate insertion, cube restriction, root equivalence, determinant, and tangency are in Lemma~\ref{lem:step-006-chart-jacobian}. Proper affine endpoint and identically-zero null classes are in Lemma~\ref{lem:step-006-null-affine-sets}. Measurable images, area multiplicity including infinite fibers, critical-image nullity, finite-level finiteness, chart overlap, and full-joint-density domination are in Proposition~\ref{prop:step-006-finite-level-area}. Measurable least ownership, increasing domains and events, analytic full-event measurability, and exact exhaustion are in Lemma~\ref{lem:step-006-exhaustive-coverage}. Continuity from below, monotone convergence, extended-real passage, and indicator removal are in Proposition~\ref{prop:step-006-affine-bound}.

The standard area, measure, integration, and descriptive-set facts are stated before use with their current domains, maps, measures, hypotheses, conclusions, and local destinations. No conclusion of Balcan--Dick--Pegden Theorem 18 is used. References in the derivation and assembly use theorem-style names and stable labels; local unit IDs appear only as audit handles.

## Target Claim Audit

The proof establishes the exact sketch-attempt-2 `step_006` row under precisely the five primitive assumptions and accepted `step_001` regularity interface. For every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\), it proves first

\[
\Pr_\mu[\exists\theta\in I:F_0(\theta)+\langle\alpha,F(\theta)\rangle=0]
\leq
\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf 1_{\{\lvert T_j(\theta,\beta)\rvert\leq R\}}
\lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta,
\]

and then the exact target with the indicator removed. The stronger intermediate bound does not change the exported interface. Quantifier order, literal factor \(\kappa\), arbitrary-correlation scope, every-interval mode, coefficient dimension, deterministic affine offset, and extended-real interpretation are unchanged. No transversality, simple-root, finite-fiber, uniform-pivot, finite-integral, or coordinate-independence premise is added.

The boundary audit passes for \(N=1\), empty and singleton intervals, open/closed/half-open endpoints, zero chart velocity, tangent and multiple roots, infinite fibers, pivots approaching zero, cube faces, and affine-identically-zero coefficients. The proof neither asserts the downstream monic specialization nor adds a final-assembly conclusion.

## Explicit Rate Audit

R3 is rate-bearing and passes the full rate contract. The exposed objects are \(N,R,\kappa,F_0,F,I,(E_j)_{j=1}^N\) and the exact chart velocities and integrals. There is no hidden constant; the probability coefficient is literally \(\kappa\). The deterministic affine data and partition are fixed while one arbitrary admissible full joint law is considered. Probability mode is ordinary probability, horizon mode is every interval with an extended-real limiting value, and norm/measure mode is \(N\)-dimensional coefficient Lebesgue measure, absolute determinant, and \((N-1)\)-dimensional beta-cube measure.

The auxiliary threshold \(1/m\) is proof-local and disappears through monotone convergence. The only simplification is the displayed inequality
\[
\mathbf 1_{\{\lvert T_j\rvert\leq R\}}
\lvert\partial_\theta T_j\rvert
\leq\lvert\partial_\theta T_j\rvert.
\]
No term, pivot dependence, correlation dependence, or probability conversion is hidden. The deterministic \(F_0\) remains outside the random vector, preserving the exact affine-monic baseline interface without proving or altering the later `step_007` or `step_008` obligations.

## Notation Surface Audit

\(T_j\), \(\partial_\theta T_j\), the beta cube, and the pivot partition are correctly classified as setting-defined public-facing objects. \(E_{j,m}\), \(D_{j,m}\), \(\Psi_j\), the coordinate insertion/deletion convention, and the coefficient-cube indicator are appendix-local. \(H_j,B_H,L_H,L_F,C_{j,m},\widehat D_{j,m},m_*(\theta)\), and the event/hyperplane abbreviations are proof-local and have explicit definitions and provenance. The inherited \(D_*\) is used only to prove finite-level legality and is not added to the affine output surface.

The helper dictionary is proportionate to the six independent obligations, and no one-off alias hides boundedness, measurability, a constant, a rate, or a generated invariant. The boxed assembly exports only the minimal setting-defined affine inequality required downstream.

## Target-Step Assembly Audit

The assembly uses the accepted Proposition~\ref{prop:step-001-coordinate-envelope}, Lemmas~\ref{lem:step-006-finite-chart-legality}, \ref{lem:step-006-chart-jacobian}, \ref{lem:step-006-null-affine-sets}, and \ref{lem:step-006-exhaustive-coverage}, Proposition~\ref{prop:step-006-finite-level-area}, and Proposition~\ref{prop:step-006-affine-bound}. These named results jointly provide all regularity, mapping, null-set, area, density, coverage, and limiting premises and yield the exact target display.

The accepted global pair is not cited as proof authority, and the stale attempt-1 artifacts supply no premise. The assembly introduces no new lemma, assumption, algebraic constant, monic certificate, or final-theorem clause. Its only downstream statement is that the proved affine interface is available to `step_008` and `step_010`, which matches the accepted dependency graph.

## Review Rationale

`ACCEPTED` with `Smallest Retry Target = None` is the smallest valid decision. All six named units pass independently, the standard-tool applications are legally instantiated on the current measurable chart objects, and their assembly proves the exact attempt-2 R3 target with literal constants and all required null, degenerate, multiplicity, correlation, measurability, and extended-real branches. No proof-local defect, dependency defect, or sketch-interface change remains.
