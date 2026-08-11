# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_002/proof.md`, SHA-256 `d0034bd3eca13915507bbdb9038a5363e0050e2536a870fe15d7bb99bb33fd78`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Evaluation coordinates determine the fixed topology

- Statement fidelity: The lemma states exactly the positive-rank coordinate obligation in the accepted `step_002` row. Under the two permitted primitive assumptions and the accepted conclusions of Propositions~\(\ref{prop:step-001-mean-response-space}\) and~\(\ref{prop:step-001-fixed-coordinates}\), it proves that actual point evaluations span \(V_A^*\), selects \(r_A\) of them, makes \(E_Z\) an isomorphism, and identifies its norm topology with the already fixed finite-dimensional topology. It neither assumes coefficient bounds nor changes the closure topology defining \(K_A\).
- Proof validity: The contradiction argument for dual spanning is sound. If the evaluation span had dimension \(s<r_A\), the common kernel of a basis of those \(s\) functionals would contain a nonzero \(f\in V_A\). Every point evaluation would then vanish on \(f\), forcing \(f\) to be the zero function in \(\mathbb R^{\mathcal X}\), a contradiction. A basis can therefore be extracted from the evaluation family. Vanishing of the resulting \(r_A\) coordinate evaluations implies pointwise vanishing, so \(E_Z\) is injective; equal finite dimensions give surjectivity. The two row-sum inequalities for the invertible matrix \(M=(\psi_j(z_i))\) prove equivalence of \(\|E_Zf\|_\infty\) and the accepted basis-coordinate norm, hence equality of the relevant topologies.
- Cited-result and assumption audit: No external theorem is invoked. Finite dimension and the fixed basis/coordinate map come from the accepted `step_001` pair, whose proof and review hashes match the submitted dependency declaration and whose review status is `ACCEPTED`. The primitive rank assumption supplies finiteness; no compactness, continuity, representation margin, or generated membership is imported.
- Rigor checklist: Quantifiers are correct even when \(\mathcal X\) is infinite. The selected functionals are actual evaluations, not arbitrary dual coordinates. Positive rank itself excludes the empty-domain case. Matrix constants are finite proof-local quantities and are used only for topological equivalence, not as uniform bounds on generators. No probability operation, limiting interchange, or norm-mode upgrade occurs.
- Local adversarial test: A family of pointwise-bounded functions can have unbounded coefficients in an arbitrary basis, but the proof does not use those coefficients for boundedness. If two domain points induce the same evaluation functional, they cannot both enter the independent selected list; the extraction still obtains exactly \(r_A\) independent evaluations because their full family spans the dual. No separation failure remains.
- Contribution to target step: This lemma supplies the fixed evaluation coordinate system and the precise norm/topology interface used by every later local unit.
- Verdict: PASS
- Repair direction: None.

### unit_002: Heine--Borel in evaluation coordinates

- Statement fidelity: The lemma proves exactly the closed-and-evaluation-bounded implication needed downstream, conditional on the positive-rank coordinate lemma and under the unchanged accepted inputs. It does not assert compactness of \(K_A\) before that body's closedness and boundedness are separately proved.
- Proof validity: The isometric homeomorphism \(E_Z\) sends the candidate set to a closed bounded subset of finite-dimensional \(\mathbb R^{r_A}\). The coordinatewise bisection argument yields a convergent subsequence from every sequence, with closedness retaining the limit. The proof then correctly derives total boundedness by excluding an infinite separated sequence and derives a Lebesgue number for an arbitrary relative open cover by contradiction using a convergent subsequence. A finite net and that Lebesgue number give a finite subcover. Pullback through the continuous inverse establishes compactness in the fixed topology.
- Cited-result and assumption audit: The lemma does not rely on an external citation. Completeness of \(\mathbb R\), finite coordinate extraction, and elementary metric arguments are used explicitly in the proof. The accepted dependency supplies only the finite space and coordinates; Lemma~\(\ref{lem:step-002-evaluation-coordinates}\) supplies the homeomorphism. No compactness conclusion is borrowed from `step_001`.
- Rigor checklist: The argument covers an empty candidate set vacuously and any finite positive \(r_A\). Coordinatewise convergence equals sup-norm convergence because the coordinate count is finite. The relative-ball form of the Lebesgue-number argument is correct for a cover in the subspace topology. No sequential-compactness-to-compactness implication is merely asserted; the metric bridge is displayed.
- Local adversarial test: If total boundedness failed, the recursively selected pairwise-separated sequence could not possess a convergent subsequence, contradicting the established property. If no cover-scale existed, a convergent subsequence of the bad centers eventually has its shrinking relative ball inside a cover member around the limit. These tests close the two usual gaps in a sequential Heine--Borel proof.
- Contribution to target step: The lemma supplies the exact finite-dimensional compactness engine used after \(K_A\)'s closedness and boundedness are proved.
- Verdict: PASS
- Repair direction: None.

### unit_003: The fixed response body is compact and convex

- Statement fidelity: The proposition establishes the accepted row's body claim for \(r_A>0\): \(K_A\) is nonempty, closed, bounded, convex, and compact in the one fixed topology, with the explicit evaluation-norm bound \(\|f\|_Z\le1\). Its assumption basis names the accepted generator conclusions and the two required prior local lemmas.
- Proof validity: Accepted nonemptiness of \(\mathfrak R_A^{\mathrm{all}}\) makes the generator family and convex hull nonempty. The accepted pointwise bound \(|F_R(z_i)|\le1\) passes to every finite convex combination, placing the convex hull in the closed \(\|\cdot\|_Z\)-unit ball. Since unit_001 identifies that norm topology with the defining closure topology, the closure remains in the same ball. Closedness is by definition. The displayed approximation argument correctly proves that the closure of the convex hull is convex. Unit_002 then turns the established closedness and boundedness into compactness.
- Cited-result and assumption audit: Lemma~\(\ref{lem:step-001-complete-rules}\) supplies generator nonemptiness, and Proposition~\(\ref{prop:step-001-mean-response-space}\) supplies generator membership and the binary pointwise bound. The local coordinate and Heine--Borel lemmas supply only their stated interfaces. No bound on the accepted basis coordinates \(a(F_R)\) is assumed.
- Rigor checklist: The convex-combination inequalities allow every finite number of generators and all \(\theta\in[0,1]\). The norm unit ball is proved closed by norm continuity before closure boundedness is used. The same topology is used for closure, closedness, boundedness, and compactness. Nonemptiness is not lost on closure.
- Local adversarial test: Pointwise boundedness alone would not compactify an infinite-dimensional family, but finite rank and the evaluation isomorphism are already available. Bounds at only the selected points are sufficient because they define a norm on the whole finite-dimensional function space. A limit cannot escape that ball because it is closed in the identical topology.
- Contribution to target step: The proposition produces the nonempty compact convex fixed body consumed by minimax and finite-intersection arguments.
- Verdict: PASS
- Repair direction: None.

### unit_004: Every point evaluation is continuous with exact reconstruction

- Statement fidelity: The lemma proves every point evaluation continuous for \(r_A>0\) and states the exact reconstruction formula and zero-residual factorization required by the accepted output interface. It does not claim an unnecessary uniform-in-\(x\) coefficient bound.
- Proof validity: For fixed \(x\), the functional \(\ell_x=\delta_x\circ E_Z^{-1}\) is linear on \(\mathbb R^{r_A}\). Expanding in the standard basis gives coefficients \(b_i(x)=(E_Z^{-1}e_i)(x)\), and the finite coefficient sum yields the displayed sup-norm bound. Substituting \(y=E_Zf\) gives both continuity and the exact identity \(f(x)=\sum_i b_i(x)f(z_i)\). The residual vanishes because \(E_Z^{-1}E_Z\) is the identity on the same function space.
- Cited-result and assumption audit: The only substantive input is Lemma~\(\ref{lem:step-002-evaluation-coordinates}\), together with the accepted definition of \(V_A\). The finite-coordinate calculation is proved directly. No Riesz representation theorem, uniform evaluation bound, or external continuity result is imported.
- Rigor checklist: Each \(b_i(x)\) is a finite real value because \(E_Z^{-1}e_i\in V_A\subseteq\mathbb R^{\mathcal X}\). The proof is pointwise for every arbitrary \(x\), including points outside \(Z\). It preserves the exact function object and pointwise metric, with no surrogate or approximation.
- Local adversarial test: Evaluation outside the selected coordinate points could be unbounded uniformly over \(x\), but the target requires continuity separately for each fixed \(x\), which the finite coefficient sum proves. No unproved uniformity is exported or consumed downstream.
- Contribution to target step: The lemma supplies closedness of later pointwise margin constraints and certifies zero object-transfer residual.
- Verdict: PASS
- Repair direction: None.

### unit_005: Direct zero-dimensional and empty-domain branch

- Statement fidelity: The proposition separately covers the complete \(r_A=0\) branch required by the sketch: \(V_A=K_A=\{0\}\), the empty evaluation map is an isomorphism, the body is nonempty compact convex, and every available point evaluation is zero and continuous. It includes empty-domain and zero-query specializations without selecting nonexistent points.
- Proof validity: Dimension zero forces \(V_A=\{0\}\). Accepted nonemptiness of the complete-rule family and generator membership in \(V_A\) force every generator, its convex hull, and its closure to equal \(\{0\}\). The empty map between singleton vector spaces is directly an isomorphism. Singleton compactness follows from the open-cover definition, convexity is immediate, and every functional on the singleton domain has value zero. The empty-domain and \(m=0\) conclusions follow from the accepted dependency exactly as stated.
- Cited-result and assumption audit: The proposition uses only the accepted nonempty rule family, accepted mean-response space, and the local hypothesis \(r_A=0\). It does not invoke the positive-dimensional evaluation or Heine--Borel lemmas and does not assume a query round, a target, or a distribution.
- Rigor checklist: When \(\mathcal X=\varnothing\), the universal statement about point evaluations is vacuous and no point is chosen. When \(\mathcal X\ne\varnothing\) but \(r_A=0\), every evaluation on \(V_A\) is still the zero map. At \(m=0\), the unique empty rule provides the nonempty generator family with no response operation.
- Local adversarial test: A nonempty domain does not force positive response rank in this step, so the direct zero-space proof correctly remains valid without importing the later correlation argument. Conversely, an empty domain cannot fall into the positive-rank branch because its entire function space is zero-dimensional.
- Contribution to target step: The proposition closes every degenerate topological and evaluation clause without weakening or changing the target.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the five-unit map. The annihilator argument, finite extraction of evaluation functionals, bijectivity of \(E_Z\), and norm-topology comparison are all contained in unit_001. The nested-interval subsequence construction, total-boundedness implication, relative Lebesgue-number argument, and finite-subcover conclusion are all proved inside unit_002. Generator nonemptiness, convex-combination boundedness, closed-ball inheritance, convexity of the closure, and compactness are contained in unit_003. Exact factorization and pointwise continuity are contained in unit_004, while every zero-dimensional and empty-domain fact is contained in unit_005.

The uses of finite-dimensional dual coordinates, completeness of the real line, finite matrix inequalities, and elementary norm properties are explicitly exposed at their points of use and do not act as unreviewed theorem-facing outputs. The diagnostic note is expressly non-evidentiary, and neither the derivation nor assembly relies on a global-proof artifact, an unstated citation, a generated validity condition, or a future proof step.

## Target Claim Audit

The submitted claim is identical to the accepted `step_002` sketch row. Under primitive `assump:adaptive-sq-interface` and `assump:mean-response-rank` and only the accepted `step_001` outputs, it proves the positive-rank selection of domain evaluation points, injectivity and surjectivity of \(E_Z\), compact convexity of \(K_A\) in the fixed finite-dimensional topology, and continuity of every point evaluation. It also proves all corresponding zero-rank statements directly. The proof introduces no target, distribution, valid-policy choice, coefficient bound, compactness premise, or topology varying with a finite restriction.

The quantifier and boundary coverage is exact: \(r_A>0\) forces a nonempty domain and permits selection of \(r_A\) evaluations; \(r_A=0\) permits a nonempty domain but makes all evaluations zero; empty \(\mathcal X\) necessarily lies in the zero-rank branch; and \(m=0\) works in either possible rank branch from the unique empty rule. The proof is independent of \(\mathcal H\), as the target requires. The exported body and evaluations concern the same functions in \(V_A\), so object-transfer residual is identically zero.

## Explicit Rate Audit

None. The target step is not rate-bearing. It uses only the already accepted fact \(r_A<\infty\), introduces no quantitative theorem rate or hidden constant, and performs no probability conversion, horizon upgrade, norm-rate conversion, auxiliary-tolerance choice, term absorption, or public specialization. The proof-local matrix and point-evaluation coefficient bounds establish topology and continuity only and are not exported as rates.

## Notation Surface Audit

The only public-facing generated output is the already setting-defined body \(K_A\), together with compactness, convexity, nonemptiness, and continuity of its point evaluations. The symbols \(Z,E_Z,\|\cdot\|_Z,E_\varnothing\) are appropriately appendix-local witnesses. The annihilator span \(W\), temporary dual basis, homogeneous-system coefficients, matrix \(M\), coordinate image \(D\), bisection/net quantities, and coefficients \(b_i(x)\) are correctly classified as proof-local. Every symbol is defined from setting or accepted dependency objects before use, and each finite multiplier has explicit provenance. No helper event, radius, margin, threshold, rate, boundedness assumption, or long public dictionary is introduced.

## Target-Step Assembly Audit

The assembly uses only paper-ready named and labeled local results and accepted dependency conclusions. Lemma~\(\ref{lem:step-002-evaluation-coordinates}\) supplies evaluation coordinates and topology identity. Proposition~\(\ref{prop:step-002-compact-body}\), through Lemma~\(\ref{lem:step-002-heine-borel}\), supplies the positive-rank compact convex body. Lemma~\(\ref{lem:step-002-continuous-evaluations}\) supplies continuity and exact factorization, and Proposition~\(\ref{prop:step-002-zero-dimensional}\) supplies the entire degenerate branch. These conclusions jointly imply every clause of the sketch-row target. The assembly does not use bare unit IDs as mathematical authority, omit a rank branch, or require an additional bridge.

## Review Rationale

`ACCEPTED` is warranted because all five nontrivial local units are self-contained, correctly sourced, and valid, and their named conclusions assemble to the exact accepted step interface. The main failure modes have been ruled out: pointwise boundedness is converted to boundedness only after evaluations are proved to define a norm; the defining closure and compactness use the identical topology; arbitrary evaluations factor continuously through the same function coordinates; and the zero-dimensional branch is handled without a nonexistent evaluation selection. The accepted dependency pair is current and hash-matched, no hidden assumption or citation is used, and no sketch interface must change. Therefore `None` is the smallest retry target.
