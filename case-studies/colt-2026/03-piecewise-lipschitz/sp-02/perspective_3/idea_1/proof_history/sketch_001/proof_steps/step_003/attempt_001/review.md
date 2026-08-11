# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_003/proof.md`, SHA-256 `38086ac69a640ffd22b3dc9f7ca26c26f868a1ec9b78bfdb078e429c4085504f`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma states the exact measurability and ambient-regularity interface needed for the accepted `step_003` row. It uses Assumption~\ref{assump:shared-pfaffian-chain} and the named accepted `step_002` chart results, defines the original-coordinate map and exhausted domain, and includes interval endpoints, coefficient-cube boundaries, and the zero-dimensional \(N=1\) convention.
- Proof validity: Each \(C^1\) setting function is extended across the endpoints of the compact interval by an affine continuation matching both value and first derivative. Thus the extended quotient chart is \(C^1\) on the genuinely open ambient set \(O_j=\{\widetilde F_j\ne0\}\times\mathbb R^{N-1}\). Since \(E_{j,m}\subset\{|F_j|\ge1/m\}\), every \(D_{j,m}\) lies in that open set. The accepted Borel cells, the Borel interval and cube, and the closed condition \(|T_j|\le R\) make \(D_{j,m}\) Borel. Its continuous image is analytic, and the direct coefficient projection of the Borel zero set makes \(S_I\) analytic; both are therefore Lebesgue measurable.
- Cited-result and assumption audit: The analytic-set theorem is restated with its Polish-space, Borel-map, projection, countable-union, and universal-measurability conclusions. Assumption~\ref{assump:shared-pfaffian-chain} supplies exactly the \(C^1\) input, while selected-pivot nonvanishing and exhaustion come from the current accepted `step_002` artifact whose review hash is `a3b9d7e80b6e8e820ca06e37421713181c50a2510a26e3f749bf0e1991ce68ec`. No density, simple-root, or global fixed-pivot premise is introduced.
- Rigor checklist: The extension handles both endpoints and the degenerate one-point interval. Relative Borel subsets of \(\Theta\) are ambient Borel, closed cube faces and the constraints \(T_j=\pm R\) remain included, and analytic rather than unjustifiably Borel image measurability is claimed. For \(N=1\), the domain is \(\mathbb R\times\mathbb R^0\cong\mathbb R\), so the same argument applies without a beta coordinate.
- Local adversarial test: A selected pivot may approach zero over \(E_j\), but every finite level stays inside the nonzero-pivot ambient open set; no uniform lower bound is used after localization. Open, closed, half-open, singleton, and empty interval conventions remain Borel and are used exactly rather than replaced by closures.
- Contribution to target step: It supplies the Borel domains, measurable images and target event, and ambient local-Lipschitz hypothesis required before applying the area formula or continuity from below.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: The proposition proves the full signed Jacobian identity and the exact finite-level image-volume bound required by the sketch, with no injectivity, transversality, finite-fiber, localization-count, or \(N=1\) loss.
- Proof validity: With domain coordinates ordered as \((\theta,\beta_1,\ldots,\beta_{j-1},\beta_{j+1},\ldots,\beta_N)\), moving target row \(j\) to the first row yields the block matrix with diagonal entries \(\partial_\theta T_j,1,\ldots,1\). The permutation has sign \((-1)^{j-1}\), so \(J_N\Psi_j=|\partial_\theta T_j|\). The compact set \(C_{j,m}\subset O_j\) admits a finite cover by neighborhoods on which the \(C^1\) map is Lipschitz; disjoint refinement permits the area formula and image subadditivity with no numerical factor. Tonelli, the accepted bound \(|\partial_\theta T_j|\le V_j\), and \(\lambda_{N-1}(B_j)=(2R)^{N-1}\) then give the displayed estimate.
- Cited-result and assumption audit: The equal-dimensional Euclidean area formula is restated in its full multiplicity form
  \[
  \int_D J_N\Psi=\int_{\mathbb R^N}N(\Psi,D,y)\,dy,
  \]
  allowing \(N(\Psi,D,y)=+\infty\), and its image-measure consequence is used in the correct direction. The source convention, Euclidean domain and target objects, local-Lipschitz condition, Borel domain, Jacobian, and lack of an injectivity output are all checked. The exact chart derivative is inherited from the hash-matched accepted `step_002` proof rather than assumed.
- Rigor checklist: The beta-derivative entries occupy only the upper-right block and do not affect the determinant. The localization pieces partition the domain, so summing their Jacobian integrals is exact even when their images overlap. All integrands are nonnegative and Borel, which justifies Tonelli. Equation (8), \(\partial_\theta T_j=-\phi_\alpha'/F_j\), follows with the correct sign from the exact root identity.
- Local adversarial test: Multiple roots become multiple preimages and can only increase the multiplicity integral. Tangent or differentiably multiple roots lie in the critical set, whose image has zero \(N\)-volume by the same area inequality. Infinite root sets and interval-identically-zero fibers are permitted because the multiplicity may be \(+\infty\); no finite-root assertion is smuggled in. For \(N=1\), the determinant is the ordinary derivative and \(\lambda_0(B_1)=1=(2R)^0\).
- Contribution to target step: It converts the accepted chart velocity into the exact finite-level coefficient-volume estimate, with the literal beta-cube factor and all multiplicity cases covered.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The lemma proves both directions of the exact identity
  \[
  S_I=\bigcup_{j=1}^N\bigcup_{m\ge1}\Psi_j(D_{j,m})
  \]
  and the fixed-chart monotonicity required for the \(m\to\infty\) closure. It expressly covers least-index ties, cube and interval boundaries, empty branches, multiple or infinite root fibers, and \(N=1\).
- Proof validity: Since \(E_{j,m}\uparrow E_j\) and every other defining condition is fixed, \(D_{j,m}\uparrow D_j\), and a fixed map preserves increasing unions at the set level. For \(\alpha\in S_I\), accepted `step_001` root feasibility places a witness \(\theta\) in \(K_R\); the accepted disjoint selector assigns exactly one \(j\), the accepted exact-chart result gives \(T_j=\alpha_j\), and selected-pivot nonvanishing places \(\theta\) in some finite exhaustion level. Conversely, every chart image lies coordinatewise in the original coefficient cube and satisfies the original affine root equation at its domain point.
- Cited-result and assumption audit: The dependency path is exact: the accepted `step_001` review hash `c935a43af6c57c18a18af36c36ce74083a6ba91edbaf75fb9c83a6c04339e489` certifies root feasibility, and the accepted `step_002` artifacts certify the partition, exhaustion, and same-object graph identity. No conclusion from the diagnostic global proof is used.
- Rigor checklist: The proof chooses a root only as an existential witness and never assumes uniqueness. Closed inequalities preserve \(\alpha_i=\pm R\), and use of the actual \(I\) preserves exactly whichever endpoints belong to the interval. A tie is assigned to one least-index cell, while different roots of the same coefficient may create several preimages without changing set equality.
- Local adversarial test: A coefficient with infinitely many roots still enters the union through any one witness; an identically zero fiber is neither omitted nor counted as a positive-volume family by coverage alone. Empty \(K_R\) makes both sides empty. For \(N=1\), the unique empty beta tuple yields the scalar graph map and the same two-way argument.
- Contribution to target step: It identifies the measured chart union with the exact target event and supplies the nested measurable images needed for continuity from below.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition states and proves the exact sketch-row certificate for every interval \(I\subseteq\Theta\), including zero length, empty \(K_R\), empty cells, all boundaries, tangent, multiple, and infinite fibers, and \(N=1\). It retains the literal constant \((2R)^{N-1}\Gamma_{\rm piv}\) and introduces no chart-count factor.
- Proof validity: Continuity from below applies to the measurable nested images. Monotone convergence applies to the nonnegative Borel functions equal to \(V_j\) on \(I\cap E_{j,m}\) and zero elsewhere, giving the full-cell integrals without a \(0\cdot(+\infty)\) convention. Finite image subadditivity and exact coverage produce the sum over \(j\). On \(E_j\), the accepted selector gives \(V_j\le\Gamma_{\rm piv}\), while the disjoint partition gives exactly
  \[
  \sum_{j=1}^N|I\cap E_j|=|I\cap K_R|\le|I|.
  \]
  Combining these relations proves the target inequality.
- Cited-result and assumption audit: Continuity from below, monotone convergence, and finite subadditivity are restated and applied only after measurability and nestedness have been proved. Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} enter through the named local results and the frozen accepted dependencies; `assump:joint-density-cap` is correctly reserved for `step_004`.
- Rigor checklist: The functions \(V_j\) are finite on their selected cells, so their restrictions are legitimate nonnegative integrands. The finite sum over the disjoint cells is an exact length identity, not a union bound over charts. A zero-length interval makes all chart integrals zero even if it contains a root; the area formula then correctly makes the corresponding coefficient event Lebesgue-null. Empty branches yield zero on both sides.
- Local adversarial test: Neither a large number of roots nor an infinite fiber alters the bound because multiplicity was handled before exhaustion and summation. A pivot that becomes arbitrarily small is reached by monotone exhaustion without leaving a residual term. For \(N=1\), the unique cell and zero-dimensional beta volume give exactly \(\lambda_1(S_I)\le\Gamma_{\rm piv}|I|\).
- Contribution to target step: It closes the limiting and finite-chart assembly and exports exactly the coefficient-volume certificate consumed by `step_004`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. Ambient extension, domain and event measurability, analytic images, and local Lipschitzness are contained in Lemma~\ref{lem:step-003-measurable-charts}; determinant computation, Lipschitz localization, the full multiplicity formula, beta integration, and critical or infinite-fiber handling are contained in Proposition~\ref{prop:step-003-area-bound}; exact two-way event coverage and nestedness are contained in Lemma~\ref{lem:step-003-exact-coverage}; and continuity from below, monotone convergence, finite chart summation, and the disjoint-length identity are contained in Proposition~\ref{prop:step-003-volume-certificate}. The submitted local lemma map has exactly these four matching derivation subsections.

## Target Claim Audit

The proof establishes the exact accepted `step_003` claim for the original coefficient event, with the same \(N,R,b,F,I,K_R\), cells, and conditioning functional as `setting.md`. It proves

\[
\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
\]

under only the primitive regularity and no-forced-root assumptions plus the current hash-matched accepted `step_001` and `step_002` conclusions. It neither assumes nor proves a density conversion, a simple-root condition, a finite root count, a fixed prescribed pivot, or a stronger Borel-image claim. All interval, cube, tie, exhaustion, critical-root, infinite-fiber, empty-set, and \(N=1\) cases requested by the sketch row are closed.

## Explicit Rate Audit

The step is deterministic and rate-bearing through R1. It exposes exactly \(N,R,\Gamma_{\rm piv}(b,F;R)\), and \(|I|\), with no hidden constant. The probability mode is deterministic Lebesgue coefficient volume; the scope is every fixed interval, with a static monotone exhaustion rather than a horizon limit; and the norm and measure modes remain the setting's coefficient cube, scalar chart velocity, one-dimensional length, and Euclidean \(N\)-volume. The equalities \(\lambda_{N-1}([-R,R]^{N-1})=(2R)^{N-1}\), \(\lambda_0([-R,R]^0)=1\), and \(\sum_j|I\cap E_j|=|I\cap K_R|\) are displayed, so no term is absorbed and no boundary, multiplicity, localization, or chart-count constant is hidden. Density domination and probability conversion remain correctly downstream. The proof preserves the exact monic coefficient dimension for the later baseline specialization.

Crucially, this is a fixed-family `material_partial` result. Neither the rate audit nor any local argument claims or implies polynomial control of \(\Gamma_{\rm piv}\), a pivot margin, or any auxiliary quantity by \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or by general Pfaffian-format parameters.

## Notation Surface Audit

The public-facing output is only \(S_I\) and its coefficient-volume bound. The ordered beta cube \(B_j\), insertion map \(\Psi_j\), and domains \(D_{j,m},D_j\) are properly classified as appendix-local. The extensions, ambient open sets, compact localizations, disjoint pieces, row permutation, multiplicity count, and numerator alias are properly proof-local. Every helper object is defined from setting or accepted dependency objects, and no helper constant, threshold, margin, or dictionary is exported. The exhaustion index \(m\) disappears exactly and is not a theorem parameter.

## Target-Step Assembly Audit

The assembly uses only named theorem-style results and current accepted dependencies. Lemma~\ref{lem:step-001-root-feasible} supplies feasible-set restriction; the three named `step_002` results supply the partition, exhaustion, exact graph, and velocity; Lemma~\ref{lem:step-003-measurable-charts} supplies measure and regularity hypotheses; Proposition~\ref{prop:step-003-area-bound} supplies multiplicity-safe finite-level volume; Lemma~\ref{lem:step-003-exact-coverage} supplies exact event identity and nesting; and Proposition~\ref{prop:step-003-volume-certificate} supplies the limiting disjoint-cell estimate. These conclusions jointly imply every clause of the target without relying on subsection names, bare unit IDs, or diagnostic artifacts as mathematical authority.

## Review Rationale

`ACCEPTED` with `Smallest Retry Target = None` is the smallest valid decision. All four nontrivial local units are structurally complete, their assumptions and cited tools are discharged in current notation, and their proofs jointly establish exact graph-image coverage and the literal coefficient-volume constant. The proof handles ambient endpoint regularity, analytic measurability, full area-formula multiplicity, monotone exhaustion, disjoint length accounting, interval and cube boundaries, tangent, multiple and infinite fibers, and zero-dimensional beta measure without changing the accepted sketch interface. It also preserves the branch's fixed-family `material_partial` boundary and makes no polynomial general-Pfaffian conditioning claim.
