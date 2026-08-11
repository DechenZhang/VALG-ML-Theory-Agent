# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_006
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_006/proof.md (SHA-256: b8152474825779fa2d95fb9db30c4f107ff76ee777338c5065612c14e6136bea)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-affine-hull} states the exact affine-hull obligation in the accepted `step_006` row under the primitive ranges \(d\geq3\), \(R>0\), and \(q\in(0,1)\) and accepted Proposition~\ref{prop:step-004-exact-support}. It claims equality with the three-coordinate subspace \(E_d\), not merely nonplanarity, and explicitly includes \(d=3\).
- Proof validity: Every support point lies in \(E_d\), and the accepted collapsed origin makes the affine hull a linear subspace. The four displayed support points are valid because \(\rho_q(\pm R/2)=R/2\). Their differences and linear combinations give the independent directions \(e_0,e_1,e_2\): \(p_+-p_-=Re_1\), \(p_++p_-=(R/2)e_2\), and \(r-p_+=(R/2)e_0\). Since \(R>0\), these span \(E_d\), proving both containments and exact dimension three.
- Cited-result and assumption audit: The only consumed prior result is the exact support conclusion of accepted `step_004`. Its proof has SHA-256 `1185a072dbcfcc7d54534cb11631b38b4a0f7d937c65b0c963d2812739f9e65a`; its matching review has SHA-256 `d1ec21173c373c8771589f2ccc178b269eb5a180c93c345680722f86c7af5a03`, status `ACCEPTED`, and retry target `None`. No conditional-density, cap, or root-hitting conclusion is imported.
- Rigor checklist: The projected determinant is \(R^2/4>0\), so no sign or normalization is lost. The use of \(p_++p_-\) is valid because the affine hull contains the origin and is therefore linear. For \(d=3\), the trailing-coordinate list is empty and \(E_d=\mathbb R^3\); no ambient dimension is silently added.
- Local adversarial test: The collapsed fiber at \(z=0\), arbitrarily small \(R>0\), the endpoint fibers, the minimal dimension \(d=3\), and every \(q\in(0,1)\) preserve all three independent directions. Curvature alone would give only the two projected directions, but the nonzero endpoint intercept fiber supplies the required third direction.
- Contribution to target step: This proposition supplies the exact affine-support dimension used to force any full-rank latent representation to have \(k=3\).
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-null-volume} states the exact within-hull nullity obligation. It uses the graph domain \(D_q\) and map \(T(a,z)=(a,z,z^2/R,0,\ldots,0)\), asserts the exact identity \(T(D_q)=S_q\), and targets induced three-dimensional Hausdorff volume in the affine hull identified by Proposition~\ref{prop:step-006-affine-hull}.
- Proof validity: Both inclusions in \(T(D_q)=S_q\) follow directly from the definitions, including at \(z=0\), without division by \(\rho_q(z)\). For \(|z|,|z'|\leq R/2\), the identity \(|z^2-(z')^2|/R=|z-z'||z+z'|/R\leq|z-z'|\) yields the displayed global \(\sqrt2\)-Lipschitz bound. The accepted bound \(\rho_q\leq R/2\) places \(D_q\) in a bounded planar square. Its mesh-cover cubed-diameter sum is \(O(\delta)\), hence \(\mathcal H^3(D_q)=0\); the restated Lipschitz Hausdorff-measure inequality then gives \(\mathcal H^3_{E_d}(S_q)=0\).
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-004-exact-support} supplies the actual sheet and accepted Proposition~\ref{prop:step-004-cube-width} supplies \(\rho_q\leq R/2\). The Lipschitz image inequality is restated with its covering proof and instantiated in the exact Euclidean metrics. No regularity theorem for the Holder latent parametrization is cited or needed.
- Rigor checklist: The mesh covers an enclosing square, so no smoothness or even interior regularity of \(D_q\) is assumed. The Hausdorff measure is taken in the induced Euclidean metric on the exact three-dimensional hull. The constant is global on all of \(D_q\), not local away from the cusp. All constants retain their exact \(R\)-dependence.
- Local adversarial test: At \(z=0\), the domain may have a Holder cusp, but \(T\) itself remains globally Lipschitz. At \(z=\pm R/2\), \(|z+z'|\leq R\) remains valid. The argument works unchanged for \(d=3\), every \(R>0\), and the full range \(q\in(0,1)\). Replacing \(T\) by the original \((z,u)\)-parametrization would fail to supply the stated Lipschitz control near zero, and the proof correctly avoids that substitution.
- Contribution to target step: This proposition supplies zero three-volume inside the exact hull, which is the independent obstruction needed after affine dimension leaves \(k=3\) possible.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-monic-embedding} gives the exact branch-to-source coordinate translation \(\iota_d(a_0,\ldots,a_{d-1})=(1,a_{d-1},\ldots,a_0)\). It fixes the monic leading coordinate, reverses the lower coefficients into the source's descending order, and preserves support, affine dimension, within-hull nullity, full column rank, and Gram normalization.
- Proof validity: Differences under \(\iota_d\) cancel the fixed leading coordinate and reverse the remaining coordinates, so \(\iota_d\) is an affine isometry onto the closed fixed-monic hyperplane. Writing its linear part as \(Q_d\) gives \(Q_d^\top Q_d=I_d\), hence \((Q_dB)^\top(Q_dB)=B^\top B\) for every lower-coordinate linear part \(B\). The homeomorphism and closed-image argument transports topological support exactly. Affine isometries commute with affine hulls and preserve induced Hausdorff measure, so the earlier dimension and nullity conclusions transfer without loss.
- Cited-result and assumption audit: This unit consumes only Propositions~\ref{prop:step-006-affine-hull} and \ref{prop:step-006-null-volume}. Its coordinate order is checked against cached source lines 30--33, which unambiguously use the full vector \((\alpha_d,\ldots,\alpha_0)\). The fixed value \(\alpha_d=1\) is primitive monicity from the setting, not an added assumption.
- Rigor checklist: The translation is affine rather than linear, but all rank, Gram, dimension, and Hausdorff claims concern differences and are therefore preserved. The support image is closed because the accepted support is compact and \(\iota_d\) is continuous. For \(d=3\), the map embeds the three lower coefficients into \(\mathbb R^4\) with no indexing ambiguity.
- Local adversarial test: Ascending versus descending lower-coordinate order, the fixed leading coordinate, non-square lower-coordinate maps, \(d=3\), and arbitrary full-column-rank \(B\) all preserve the exact Gram determinant. The source statement's line-8 coordinate-count typo is not propagated; the proof uses only the internally consistent full-vector convention in the source proof.
- Contribution to target step: This lemma provides the exact source-convention bridge required before the geometric certificate can be compared with the cited affine-latent class.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-affine-pushforward} restates the precise source-side interface: a bounded-support latent probability with bounded Lebesgue density in \(\mathbb R^k\), pushed forward by an affine map whose linear part has full column rank, is absolutely continuous with respect to induced \(k\)-volume in its affine image, has density normalized by \(J_A=\sqrt{\det(A^\top A)}\), and has affine-support dimension exactly \(k\).
- Proof validity: Full column rank gives the inverse \(A^\dagger\) on \(L=b+\operatorname{im}(A)\). The linear area formula \(\mathcal H^k_L(b+AB)=J_A\mathcal L^k(B)\) yields the exact pushforward density \(p(A^\dagger(y-b))/J_A\) and the bound \(\kappa/J_A\). For the support claim, the pushforward is concentrated on the closed affine space \(L\) and every Borel probability gives full mass to its topological support. If that support had proper affine hull \(H\subsetneq L\), then \(\mathcal H^k_L(H)=0\), while absolute continuity would give \(\nu(H)=0\), contradicting full support mass \(\nu(H)=1\). Thus the affine hull is all of \(L\) even when the latent density has holes or no positive lower bound.
- Cited-result and assumption audit: The audited source cache has SHA-256 `abd2e9340e00ad71fa2657bfbc0fb86b6f480b698eaaf39fee3dd3b6b6fad65d`. Cached lines 30--33 give the full descending coefficient vector and Gram-determinant volume, lines 56--59 use a \(k\)-dimensional affine image, and lines 96--101 give the inherited density normalization. Those passages require and expose full column rank. The proposition independently derives the interface in current notation rather than treating the source's later root theorem as authority.
- Rigor checklist: The argument does not assume that the latent density is positive throughout its bounding cube. Absolute continuity and total mass one alone exclude concentration on a proper affine subspace. The Gram determinant is positive exactly because \(A\) has rank \(k\). The probability, measure, ambient-space, and support quantifiers remain distinct, and no converse from coefficient density to latent density is asserted.
- Local adversarial test: Densities supported on disconnected or thin positive-volume sets, densities vanishing on open sets, rectangular matrices, \(k=1\), \(k=3\), and \(k=d+1\) all retain affine-support dimension \(k\). Rank deficiency would invalidate \(J_A>0\), but it is explicitly outside the binding source convention rather than silently absorbed.
- Contribution to target step: This proposition supplies both source-side facts used in the contradiction: dimension matching for \(k\neq3\) and within-image absolute continuity for \(k=3\).
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-nonmembership} states the exact output target: nonmembership of \(\mu_q\) in the cited full-column-rank, bounded-support, bounded-density affine-latent class. It does not claim exclusion of rank-deficient maps with singular latent laws or any broader baseline.
- Proof validity: Any representation in the branch's ascending lower-coordinate order composes with \(\iota_d\) to a source-order fixed-monic representation, with rank and Gram determinant preserved. Under an assumed positive-dimensional source representation, equality in law gives equality of topological supports. The left support has affine dimension three, while Proposition~\ref{prop:step-006-affine-pushforward} gives dimension \(k\) on the right, forcing \(k=3\). In that remaining case both affine hulls are the same space \(L\); the left law places mass one on the \(\mathcal H^3_L\)-null set \(\iota_d(S_q)\), whereas the right law is absolutely continuous there, yielding the stated contradiction. A zero-dimensional latent image is a point, and \(k>d+1\) cannot have full column rank, so the degenerate and over-ambient cases are also closed.
- Cited-result and assumption audit: The contradiction uses only the accepted support dependency, the fixed-monic embedding, and the directly checked affine-pushforward interface. The phrase "source-style representation" inherits the comparison-local bounded-support and bounded-density conditions stated before the local map. The source's no-forced-root premise at cached lines 9--11, its root-section intersections, Cauchy root bound, and quantitative root-hitting conclusion are neither premises nor proof steps here.
- Rigor checklist: Equality in law justifies support equality. Absolute continuity is applied only after dimension identifies the same three-dimensional affine image. Equation (36) uses actual mass-one support, not merely topological membership. Every nonnegative integer latent dimension is covered: \(k=0\), positive \(k\neq3\), \(k=3\), and dimensions too large for a full-column-rank ambient map. No conclusion depends on a latent full-support or lower-density condition.
- Local adversarial test: For \(d=3\), the embedded law lies in \(\mathbb R^4\), has a three-dimensional affine hull, and remains null in that hull, so the \(k=3\) contradiction is unchanged. A highly irregular bounded density still has full affine-support dimension by unit_004. A singular latent law or rank-deficient map could evade unit_004, and the proposition correctly records those objects as outside the cited class rather than claiming to exclude them.
- Contribution to target step: This proposition combines the exact dimension, nullity, coordinate, and source interfaces into the required all-latent-dimensions nonmembership certificate.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial claim is missing from the local lemma map. Exact support-point membership, noncollinearity, the intercept direction, and the full affine-hull equality are contained in unit_001. The exact graph image, global Lipschitz estimate, planar three-nullity, and Lipschitz transfer are contained in unit_002. Coordinate reversal, fixed monicity, support transport, rank preservation, and Gram preservation are contained in unit_003. The linear area formula, pushforward density, full support mass, and affine-support dimension are contained in unit_004. Equality-of-law support comparison, the \(k\neq3\) dimension split, the \(k=3\) nullity contradiction, \(k=0\), and over-ambient dimensions are contained in unit_005. The source typo and non-output boundaries are exposed in the citation audit rather than used as mathematical premises. No root-event fact, no-forced-root condition, latent lower-density condition, or diagnostic-only assertion is smuggled into the proof.

## Target Claim Audit

The proof establishes the exact accepted `step_006` row for every \(d\geq3\), \(R>0\), and \(q\in(0,1)\). It proves
\[
\dim\operatorname{aff}(S_q)=3,
\qquad
\mathcal H^3_{\operatorname{aff}(S_q)}(S_q)=0,
\]
including the collapsed origin, endpoint fibers, and minimal dimension \(d=3\). It transports those exact facts into the source's fixed-monic descending full-coefficient order. It then excludes every latent dimension within the cited full-column-rank bounded-density convention: dimension excludes \(k\neq3\), within-image absolute continuity excludes \(k=3\), a point excludes \(k=0\), and full-column-rank linear algebra excludes \(k>d+1\). The source's additional no-forced-root premise and every root-bound conclusion remain known non-outputs. The proof imposes neither setting technical assumption and exports no stronger claim about singular latent laws or rank-deficient maps.

## Explicit Rate Audit

None. The target step is a structural support/nonmembership comparison. The exact factor \(\sqrt{\det(A^\top A)}\) is retained only to verify source measure normalization; no root-hitting rate, asymptotic rate, hidden constant, probability conversion, horizon mode, auxiliary tolerance, or term absorption is introduced.

## Notation Surface Audit

All helper objects are defined from setting, dependency, or source-comparison quantities and are classified. The accepted support abbreviation \(S_q\), the geometric objects \(E_d,D_q,T\), and the fixed-monic embedding \(\iota_d\) are appendix-local. The support points, isometry components, generic affine-map variables, pseudoinverse, density, and support hull are proof-local. The only public-facing export is affine dimension three, zero within-hull volume, and cited-class nonmembership. Constants \(R/2\), \(R/4\), \(\sqrt2\), and \(J_A\) have displayed derivations. The source radius is renamed \(R_{\mathrm{lat}}\), preventing collision with the branch coefficient radius. No helper dictionary or comparison-local condition is exported into the theorem assumptions.

## Target-Step Assembly Audit

The assembly uses paper-ready named results in the required dependency order. Proposition~\ref{prop:step-006-affine-hull} proves exact dimension three. Proposition~\ref{prop:step-006-null-volume} proves zero induced three-volume using the exact graph map. Lemma~\ref{lem:step-006-monic-embedding} translates both facts into the fixed-monic descending source convention while preserving rank and normalization. Proposition~\ref{prop:step-006-affine-pushforward} proves the source-side dimension and absolute-continuity interface. Proposition~\ref{prop:step-006-nonmembership} then performs the exhaustive dimension split and contradiction. These named conclusions jointly imply every clause of the exact target row; the assembly introduces no new lemma, assumption, rate, root premise, or comparison class.

## Review Rationale

ACCEPTED is warranted because the reviewed artifact matches sketch attempt 1, `step_006`, unit attempt 1, and SHA-256 `b8152474825779fa2d95fb9db30c4f107ff76ee777338c5065612c14e6136bea`; the binding sketch and accepted dependency identities are current; and all five local units prove their exact interfaces from allowed inputs. The affine-hull calculation, global Lipschitz/null-volume argument, fixed-monic ordering bridge, full-rank density normalization, affine-support dimension, exhaustive latent-dimension split, source-boundary discipline, helper-object classification, and named assembly all pass independent adversarial review. No local, dependency, citation, or sketch defect remains, so `None` is the aligned smallest retry target.
