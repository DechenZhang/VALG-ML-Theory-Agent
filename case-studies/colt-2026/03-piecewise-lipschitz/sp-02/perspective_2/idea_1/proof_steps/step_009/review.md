# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: `step_009`
- Unit attempt: 2
- Reviewed proof artifact: `<WORKSPACE_ROOT>/colt_2026_v336_piecewise_lipschitz_open_problem/colt_2026_v336_002_invited-open-problem-online-optimization-of-piecewise-lipschitz-functi/subproblem_002/perspective_2/idea_1/proof_steps/step_009/proof.md` (SHA-256: `8da586dbdd81e96baba3d3767b4982caf24ecbe40c3bb7987ba41a06477208e3`)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Augmented Monomial Presentation

- Statement fidelity: The proposition states the exact ordered augmented tuple
  \((F_0,F_1,\ldots,F_d)=(\theta^d,1,\theta,\ldots,\theta^{d-1})\), the actual coefficient vector \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\), the pointwise identity \(F_0+\langle\alpha,F\rangle=p_\alpha\), and the literal anchor \(F_1=1\). It keeps the leading coefficient deterministic and outside \(\alpha\).
- Proof validity: The map \(k\mapsto i=k+1\) is bijective from lower-coefficient indices \(0,\ldots,d-1\) to feature indices \(1,\ldots,d\). The empty-chain convention gives \(q=M=0\); the output degrees give \(\Delta=d\); the feature count gives \(N=d\); and the setting definition gives \(A=(2R)^d\kappa\). The displayed inner-product expansion is coefficientwise exact for every real \(\theta\), including \(d=1\).
- Cited-result and assumption audit: No cited result or dependency is used. The primitive parameter and common-chain conditions retain their stable IDs. The anchor is verified from \(Q_1=\theta^0=1\), rather than imported as an unproved generated fact; closure for the concrete tuple is separately verified in `unit_002`.
- Rigor checklist: Quantifiers, dimensions, degree conventions, coefficient ordering, and deterministic/random roles are explicit. No density, probability statement, root theorem, randomized leading coordinate, or hidden amplitude condition enters.
- Local adversarial test: At \(d=1\), the tuple is \((\theta,1)\), \(\Delta=N=1\), and the cube is exactly \([-R,R]\). Arbitrarily small or large \(R\) changes only the declared cube and \(A\), not the object identity.
- Contribution to target step: It supplies the exact monic object, descriptor values, lower-coefficient cube, anchor, and polynomial identity consumed by every later local unit.
- Verdict: PASS
- Repair direction: None

### unit_002: Exact Derivative-Shift Certificate

- Statement fidelity: The lemma fixes a constant \((d+1)\)-square matrix with only \(B_{0,d}=d\) and \(B_{k+1,k}=k\) for \(1\leq k\leq d-1\), states \(m=0\), and claims the exact setting-defined height \((\sum_{k=1}^d k^2)^{1/2}\), including the separate \(d=1\) matrix.
- Proof validity: Row \(0\) differentiates \(F_0=\theta^d\) through column \(d\); row \(1\) differentiates the anchor; and rows \(k+1\), \(1\leq k\leq d-1\), differentiate \(F_{k+1}=\theta^k\) through \(F_k=\theta^{k-1}\). These rows exhaust \(0,\ldots,d\). With the constant coefficient list, the setting formula reduces exactly to the Frobenius square \(d^2+\sum_{k=1}^{d-1}k^2=\sum_{k=1}^d k^2\); no \(T\)-factor remains because \(T_*^0=1\).
- Cited-result and assumption audit: The lemma is explicitly based on the named monomial-presentation proposition and uses only direct differentiation and the setting's coefficient-height definition. It proves the concrete derivative closure rather than using that identity as a hidden premise.
- Rigor checklist: The empty index range at \(d=1\) is handled, giving \(B=\left(\begin{smallmatrix}0&1\\0&0\end{smallmatrix}\right)\), height one, and both row identities. Matrix size, row/column indices, coefficient degree, nonnegative square root, and Frobenius convention are all explicit.
- Local adversarial test: For \(d=2\), the entries are exactly \(B_{0,2}=2\) and \(B_{2,1}=1\), so the height is \(\sqrt5\). Moving \(J\) arbitrarily far from zero or changing \(R\) does not change the constant matrix or certificate.
- Contribution to target step: It supplies the exact derivative-shift identity, matrix support, \(m=0\), and coefficient-height certificate.
- Verdict: PASS
- Repair direction: None

### unit_003: Two-Pivot Coefficient Charts

- Statement fidelity: The proposition uses exactly \(E_1=J\cap\{|\theta|\leq1\}\) and \(E_d=J\cap\{|\theta|>1\}\), assigns both transition points to \(E_1\), identifies the prescribed pivots, and states the exact two chart formulas with \((d-1)\)-dimensional nonpivot cubes.
- Proof validity: Intersections of an interval with the closed inner set and open outer set are measurable, disjoint, and cover \(J\). The inner pivot is legal because \(F_1=1\). For \(d\geq2\), the outer pivot is legal because \(F_d=\theta^{d-1}\neq0\) on \(|\theta|>1\). Solving the same polynomial equation gives
  \[
  T_1=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
  \qquad
  T_d=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
  \]
  Both insertion maps have the declared dimension, and direct substitution proves a zero of the same \(p_\alpha\), not of a surrogate polynomial.
- Cited-result and assumption audit: The only prior mathematical authority is the named monomial-presentation proposition. No area formula, density bound, probability theorem, or `step_003` result is invoked. The proof correctly separates chart legality from the later indicator that checks whether the inserted pivot lies in \([-R,R]\).
- Rigor checklist: The coefficient labels \(\alpha_0\) and \(\alpha_{d-1}\) are consistently translated to feature pivots \(1\) and \(d\). Division in the outer chart is restricted to \(|\theta|>1\), and the transition convention avoids singular powers at \(0\) or \(\pm1\).
- Local adversarial test: At \(\theta=0,\pm1\), only the constant inner pivot is used. For negative outer \(\theta\), \(\theta^{d-1}\) may change sign but never vanishes. Empty, singleton, or one-region intervals preserve the measurable partition identities.
- Contribution to target step: It supplies the legal disjoint pivots, insertion maps, and exact same-polynomial chart identities.
- Verdict: PASS
- Repair direction: None

### unit_004: Inner-Region Chart Velocity

- Statement fidelity: The lemma states the literal inner bound \(|\partial_\theta T_1|\leq d+R\sum_{k=1}^{d-1}k=d+Rd(d-1)/2\) on the exact inner cell and cube.
- Proof validity: Termwise differentiation gives \(-d\theta^{d-1}-\sum_{k=1}^{d-1}k\beta_k\theta^{k-1}\). Every exponent is nonnegative; \(|\theta|\leq1\) and \(|\beta_k|\leq R\) give the displayed term-by-term domination. The reverse-list pairing proves the complete arithmetic-sum identity without an omitted parity case.
- Cited-result and assumption audit: The named two-pivot proposition supplies the exact chart and domain. Only the restated finite differentiation, triangle, power, and arithmetic-sum facts are used.
- Rigor checklist: At \(\theta=0\), the \(k=1\) term has exponent zero and is bounded by \(R\), while all positive-exponent terms vanish. At \(\theta=\pm1\), all power bounds remain equalities or valid inequalities. No \(0^0\) or negative-power convention is needed.
- Local adversarial test: The estimate holds unchanged for arbitrarily small or large positive \(R\), every sign pattern of the beta coordinates, and the transition points. Direct extreme-coefficient checks at \(d=2,3,6\) attain no value above the common cap.
- Contribution to target step: It proves the exact inner velocity cap and its full arithmetic constant.
- Verdict: PASS
- Repair direction: None

### unit_005: Outer-Region Chart Velocity

- Statement fidelity: The lemma states the exact reciprocal-power bound, the exact reindexing \(m=d-1-k\), the regional cap \(1+Rd(d-1)/2\), and its domination by the common cap \(d+Rd(d-1)/2\).
- Proof validity: Differentiation gives
  \[
  -1-\sum_{k=0}^{d-2}\beta_k(k-d+1)\theta^{k-d}
  =-1+\sum_{k=0}^{d-2}(d-1-k)\beta_k\theta^{k-d}.
  \]
  Thus the negative sign is handled before absolute values. Under \(m=d-1-k\), the exponent is exactly \(-m-1\), so the sum becomes \(\sum_{m=1}^{d-1}m/|\theta|^{m+1}\). Since \(|\theta|>1\), every reciprocal factor is below one. The arithmetic sum and \(1\leq d\) prove both final inequalities.
- Cited-result and assumption audit: The named chart proposition supplies the formula and legal outer domain. No result about roots, laws, or intervals is imported.
- Rigor checklist: The order reversal in the finite sum is explicit. Integer-power absolute values make the calculation valid for negative outer \(\theta\). The proof uses no upper bound on \(|\theta|\), so no interval-location factor is hidden.
- Local adversarial test: The nearest outer points \(\theta\to1^+\) and \(\theta\to-1^-\) give the largest reciprocal bounds and still satisfy the cap; very large \(|\theta|\) only decreases the coefficient terms. Extreme beta signs and both very small and very large \(R\) pass the same literal inequality.
- Contribution to target step: It proves the exact outer velocity estimate and the common location-free cap.
- Verdict: PASS
- Repair direction: None

### unit_006: Global Linear-Case Chart

- Statement fidelity: The repaired proposition now binds at statement level to the named Augmented Monomial Presentation specialized to \(d=1\). It explicitly states \([-R,R]^0=\{()\}\), the object \((\theta,1)\), the actual coefficient \(\alpha_0\), the sole legal pivot, \(T_1=-\theta\), derivative magnitude one, and equality with the common cap.
- Proof validity: The constant feature makes the pivot legal at every point of every bounded \(J\). Solving \(\theta+\alpha_0=0\) gives the chart, the empty beta tuple creates no omitted sum, and direct substitution gives the same-polynomial root identity. Differentiation gives exactly one. The earlier derivative-shift lemma is correctly cited for the compatible \(2\)-by-\(2\) matrix \(B_{0,1}=1\) and height one.
- Cited-result and assumption audit: The prior unit-attempt defect is removed: the monomial-presentation proposition is part of this proposition's written assumption basis, not merely used inside its proof. The matrix/certificate cross-check uses the already proved named derivative-shift lemma and is not needed as a hidden premise for the chart conclusion.
- Rigor checklist: Zero-dimensional domain, empty-sum, coefficient dimension, matrix dimension, legal pivot, root identity, derivative, certificate compatibility, and exact cap are all explicit. No two-region construction is incorrectly imposed at \(d=1\).
- Local adversarial test: The chart is valid at \(0,\pm1\), on negative and positive far-away intervals, for empty or singleton \(J\), and for every \(R>0\). The common cap remains exactly one.
- Contribution to target step: It closes the separate linear branch with a statement-level valid theorem interface.
- Verdict: PASS
- Repair direction: None

### unit_007: Location-Free Boundary and Index Closure

- Statement fidelity: The claim explicitly binds to all six preceding named results with the correct \(d\geq2\) and \(d=1\) branches, and states every required boundary, sign, empty-cell, dimension, interval-location, and deterministic-leading-coordinate conclusion.
- Proof validity: The inner pivot handles \(0\) and both transition points; the outer proof handles negative \(\theta\) only after differentiating signed powers; empty cells and empty \(J\) are treated vacuously; and one-region intervals activate only the applicable chart. The displayed \(d=2\) matrix, height \(\sqrt5\), two charts, derivatives, and bounds are all correct. Compact containment of an arbitrarily located bounded \(J\), together with \(m=0\), removes all \(T\) and location dependence.
- Cited-result and assumption audit: Every nontrivial conclusion is traced to a named local theorem-style result. The stable setting IDs are preserved, and no dependency artifact or external citation is used.
- Rigor checklist: The coefficient map has exactly \(d\) coordinates, beta dimension \(d-1\), and augmented matrix dimension \(d+1\). The leading coefficient remains in deterministic \(F_0\); no extra density or singular/random leading coordinate is introduced.
- Local adversarial test: Direct checks pass for \(d=1\), \(d=2\), \(\theta=0\), \(\theta=\pm1\), negative outer \(\theta\), empty and one-region intervals, arbitrarily remote bounded intervals, and arbitrarily small or large \(R\).
- Contribution to target step: It closes all boundary and indexing obligations needed for the complete deterministic monic package.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

The local lemma map contains exactly the seven independent nontrivial units used by the proof, and each has a matching theorem-style statement, stable label, and immediately following proof. The finite monomial differentiation rule, negative-power domain restriction, triangle and power facts, complete arithmetic-sum identity, and elementary measurability facts are restated before use and independently check out. Compact containment of a bounded interval is elementary and is used only to instantiate the setting, not to create a quantitative bound.

No prose or calculation smuggles in a density bound, probability conversion, area formula, polynomial-root theorem, accepted dependency, generated invariant, beta-volume integration, pivot margin, or interval-location estimate. The possible failure of an inserted pivot to lie in the coefficient cube is explicitly left to the downstream chart indicator and is not silently assumed away. The downstream-facing \(V_d\) is defined only after both regional caps and the \(d=1\) value are proved. No hidden independent subclaim remains.

## Target Claim Audit

For every integer \(d\geq1\) and every bounded interval \(J\), the proof establishes the exact actual tuple, lower-coefficient vector, polynomial identity, descriptor values \(q=M=m=0\), \(\Delta=N=d\), \(A=(2R)^d\kappa\), literal anchor, constant derivative-shift matrix, and exact coefficient height. For \(d\geq2\), it establishes the prescribed measurable disjoint cells, transition convention, legal pivots, exact charts, regional velocity bounds, and common cap. For \(d=1\), it establishes the separate zero-dimensional chart with the same cap.

The checks at \(d=1,2\), \(\theta=0,\pm1\), negative outer \(\theta\), empty and one-region intervals, remote bounded intervals, and extreme positive \(R\) expose no exception. The proof is neither weaker nor stronger than the accepted row: it exports the deterministic monic presentation/certificate/pivot/velocity package and deliberately does not export the downstream probability theorem. The accepted `progress_type=full` boundary is preserved.

## Explicit Rate Audit

This is a deterministic rate-bearing specialization. The exposed quantities are \(d,R,\kappa,A,T\) through the setting certificate, the matrix entries, the bounded interval \(J\), and \(V_d=d+Rd(d-1)/2\); the disclosed descriptors are \(q=M=m=0\) and \(\Delta=N=d\). Hidden constants are absent. For each instance, the tuple, matrix, coefficient cube, and a compact \(\Theta\supseteq J\) are fixed. Probability mode is deterministic, horizon mode is pointwise on the two cells and uniform in the location of \(J\), and norm mode is scalar absolute value plus the setting's Euclidean/Frobenius coefficient-height convention.

All simplifications are displayed: the two arithmetic sums equal \(d(d-1)/2\), the outer reciprocal sum is termwise dominated on \(|\theta|>1\), and the outer regional constant is bounded by the common cap using \(1\leq d\). No auxiliary tolerance, hidden threshold, term absorption, confidence conversion, or suppressed \(T\)-dependence occurs. R1 reduces exactly to \((\sum_{k=1}^d k^2)^{1/2}\), and R4 retains the actual \(d\)-dimensional lower-coefficient object and literal velocity package for the downstream named wrapper. No separate baseline theorem is invoked.

## Notation Surface Audit

The proof classifies the setting-derived and downstream objects as public-facing, the insertion maps and zero-dimensional product convention as appendix-local, and coefficient lists, dummy indices, and reindexing variables as proof-local. The public export is minimal: the tuple, descriptors, matrix/certificate, cells, charts, and common velocity cap. The insertion maps are retained only to certify coefficient identity.

All symbols have visible provenance. In particular, \(A\) is setting-defined, every entry of \(B\) is explicit, the height and velocity constants are proved by named results, and \(V_d\) is introduced after its bounds. The outer dummy \(m=d-1-k\) is explicitly proof-local and does not change the public matrix-degree descriptor \(m=0\). There is no notation cascade, changed-meaning public symbol, or unclassified helper object.

## Target-Step Assembly Audit

The assembly cites the exact named proposition, lemma, and claim labels rather than subsection names, local unit IDs, or bare step IDs. The presentation proposition supplies the object and descriptors; the derivative-shift lemma supplies \(m=0\), the matrix, closure, and height; the two-pivot proposition supplies the partition and charts; the two velocity lemmas supply the regional bounds; the linear-case proposition supplies \(d=1\); and the boundary/index claim closes all degenerate and location regimes. These conclusions jointly imply every clause of the accepted `step_009` row without a dependency artifact or cited theorem.

The exported interface is exactly what the sole direct downstream wrapper requires. No probability conclusion, area-formula result, density use, beta-volume factor, or final assembly claim is added. Thus the target-step assembly is dependency-closed and preserves the full-progress producer-consumer boundary.

## Artifact Integrity Audit

- Protected setting: `perspective_2/idea_1/setting.md`, SHA-256 `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`, verified.
- Protected accepted sketch: `perspective_2/idea_1/proof_sketch.md`, SHA-256 `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4`, verified.
- Protected accepted sketch review: `perspective_2/idea_1/proof_sketch_review.md`, SHA-256 `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9`, verified; its controlled sketch status accepts attempt 2.
- Protected controller-open tracker: `perspective_2/idea_1/proof_tracker.md`, SHA-256 `a8a37f5e07c130fae8b5097a4cad51548dabef04d383af5adc778e8b81cecc44`, verified; its open row is exactly sketch attempt 2, `step_009`, unit attempt 2.
- Submitted proof: `perspective_2/idea_1/proof_steps/step_009/proof.md`, SHA-256 `8da586dbdd81e96baba3d3767b4982caf24ecbe40c3bb7987ba41a06477208e3`, verified; its identity matches this review.
- Dependency artifacts: None, matching the accepted target row.
- Global diagnostics: Omitted from evidence exactly as instructed; neither global diagnostic is needed or treated as proof authority.
- Stale provenance: The consumed live unit-attempt-1 review and its archival copy both hash to `fea482225091b0abe6dde7a92d3d1118e0f95da239a26adb00ed2155112401e3`; the archived attempt-1 proof hashes to `130965111a7aa8a28eada371f33377fd5fa9394c56d086f0b33f3bcb4aceb81e`. These stale artifacts were hash-checked only and were not opened or used as review evidence.
- Scope discipline: The fixed live `review.md` is the sole review output. Concurrent files outside `perspective_2/idea_1` are outside the branch-local audit and are not attributed to this worker.

## Review Rationale

The submitted unit-attempt-2 proof establishes the unchanged accepted sketch-row claim from the primitive monic specialization alone. The only prior local statement-interface defect is repaired by placing the named monomial-presentation proposition in the linear-case proposition's statement basis. Independent algebraic, indexing, boundary, measurability, notation, rate, and assembly checks find no remaining material flaw. No sketch interface or dependency must change, so no producer rerun is required and `None` is the smallest sound retry target.
