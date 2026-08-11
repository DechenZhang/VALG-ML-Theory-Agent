# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: `step_003`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_1/proof_steps/step_003/proof.md`, SHA-256 `e996e147d4fa8be902103db5feac786985db27a33df1b927d7674b490b8ce15d`
- Binding setting artifact: `perspective_1/idea_1/setting.md`, SHA-256 `f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83`
- Binding accepted sketch artifact: `perspective_1/idea_1/proof_sketch.md`, SHA-256 `2fa48ee16cca9a8d0379071f448d1e72ce98ae46d624482d772e74b97649c74a`
- Binding accepted sketch review artifact: `perspective_1/idea_1/proof_sketch_review.md`, SHA-256 `40b66331aa50a66607d068e266c545a865044bd175a56d81f012542e6d17d6f8`
- Accepted dependency proof artifact: `perspective_1/idea_1/proof_steps/step_002/proof.md`, SHA-256 `b59794f374d66ec07e21b8662c438251ef1d9ba42c8a4db03894d62c8560e69c`
- Accepted dependency review artifact: `perspective_1/idea_1/proof_steps/step_002/review.md`, SHA-256 `71bec34a7f197cb6480973516a1a47c5a30c196eb5144676c7fa5d5be8563a37`
- Accepted diagnostic global proof artifact: `perspective_1/idea_1/global_proof.md`, SHA-256 `45e93d102aa948c0d80886e5f21cf3bdaa412dfaa25611684eb363d48fa1f5b9`
- Accepted diagnostic global review artifact: `perspective_1/idea_1/global_proof_review.md`, SHA-256 `cd86cc68e3982c55aeb16fcafbda0759bb71464aee405c4a158bd41a308463db`
- Hash validation: All eight binding SHA-256 values above match the current files. The dependency review is `ACCEPTED`, identifies sketch attempt 2 and unit attempt 1, and reviews the displayed current dependency proof digest. The global pair is current and accepted but was used only as diagnostic context, never as proof evidence.
- Evidence boundary: The pre-review live review had SHA-256 `4deff6ec278ea016923b549d572393b3f2a840464ef983d1c6b1ce5722568579`, identical to the archived sketch-attempt-1 review. That stale review and all other `proof_history/` artifacts were not consumed as current proof evidence.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_003

## Blocking Issues

1. Location: `proof.md`, `## Allowed Assumptions And Dependencies`, lines 46--50, and every later use of accepted Proposition~\ref{prop:step-002-projective-speed}. Defect: the submitted proof records dependency proof SHA-256 `49765e6c5b90d32376cd6d897ee38978833783a445f579e55569b01369f4db1a` and dependency review SHA-256 `77b678ece545313b11204c39471dfc90511c167150b440fa457d550e849c8568`; those are the archived sketch-attempt-1 `step_002` artifacts, not the binding accepted sketch-attempt-2 artifacts. The current accepted values are respectively `b59794f374d66ec07e21b8662c438251ef1d9ba42c8a4db03894d62c8560e69c` and `71bec34a7f197cb6480973516a1a47c5a30c196eb5144676c7fa5d5be8563a37`. Downstream effect: all three local units and the target assembly invoke that accepted dependency, so the submitted artifact fails dependency freshness and cannot certify its otherwise valid derivation against the frozen attempt-2 inputs. Smallest repair direction: rerun `/proof-step step_003` to bind the exact current dependency proof/review digests and revalidate the unchanged dependency claim throughout the artifact; then obtain a fresh independent `/proof-step-review step_003`.

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-incidence-jacobians} states the exact regular-incidence and tangential-Jacobian interface required by the accepted row. Its assumptions are explicit, its interval is correctly restricted to the open interior for ordinary \(C^1\) manifold calculus, and it includes the tangent case \(u=0\).
- Proof validity: For \(g(\theta,a)=\langle a,\gamma(\theta)\rangle\), the full gradient is \((u,\gamma)\) and has squared norm \(1+u^2\). Thus regularity comes from the unit coefficient gradient and does not require root transversality. The tangent space is \(n^\perp\) for \(n=(u,\gamma)/\sqrt{1+u^2}\). The Gram determinant of coefficient projection is \(1-\|P_Te_0\|_2^2=|\langle e_0,n\rangle|^2\), giving \(J_{\mathcal S_J}\pi=|u|/\sqrt{1+u^2}\); the scalar tangential gradient gives \(J_{\mathcal S_J}\tau=1/\sqrt{1+u^2}>0\). Hence \(J_{\mathcal S_J}\pi=|\langle a,\gamma'(\theta)\rangle|J_{\mathcal S_J}\tau\) exactly, including \(u=0\), with no illegal division by \(u\).
- Cited-result and assumption audit: The regular level-set theorem is restated with the needed hypotheses, and the current accepted dependency does supply the same \(C^1\) unit curve. No simple-root, density, section-size, or transversality premise enters. However, the submitted dependency block binds this use to the stale attempt-1 proof/review digests, so its accepted-input provenance is invalid as written.
- Rigor checklist: The incidence has dimension \(N\) in \(\mathbb R^{N+1}\); \(\pi\) has an \(N\)-dimensional tangential Jacobian and \(\tau\) a one-dimensional tangential Jacobian. The hypersurface is embedded \(C^1\), hence countably \(N\)-rectifiable, and both coordinate projections are globally Lipschitz. All square roots are positive and all norms and orthogonal projections are Euclidean.
- Local adversarial test: At \(u=0\), the incidence remains regular, \(J\pi=0\), and \(J\tau=1\). For arbitrarily large finite \(u\), both displayed Jacobians remain well defined and their ratio is exactly \(|u|\). For \(N=1\), the formulas reduce to a one-dimensional incidence curve and remain algebraically valid. The mathematical tests pass.
- Contribution to target step: This lemma supplies the exact Jacobian product that converts projection area into the section integrand under coarea.
- Verdict: REVISE_STEP
- Repair direction: Preserve the derivation and bind its accepted Proposition~\ref{prop:step-002-projective-speed} input to the current dependency proof/review digests.

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-null-degeneracies} exactly covers normalization invariance, endpoint restoration, identically-zero coefficients, stationary normalized intervals, and the \(N=1\) branch under the allowed primitive assumptions and accepted dependency.
- Proof validity: Since \(F=\|F\|_2\gamma_F\) with a strictly positive norm, normalization preserves every root. At most two endpoint root sets are proper hyperplanes. For nonempty \(I\), the identically-zero coefficient set is an intersection of kernels contained in the proper hyperplane \(F(t_0)^\perp\), so it is a proper Lebesgue-null subspace. A \(C^1\) normalized curve with zero derivative on an interval interior is constant there and by continuity at included endpoints, so its sweep is one null hyperplane and its local integrand is zero. When \(N=1\), the anchor forces \(F=\gamma_F=(1)\), the root set is \(\{0\}\), and the section convention \(\mathcal H^0(\{0\})=1\) still gives zero integrand.
- Cited-result and assumption audit: The coordinatewise mean-value theorem is fully adequate for the stationary case. Proper-subspace nullity is proved directly by an orthogonal coordinate change and Fubini. Absolute continuity is mentioned only for the later null-probability consequence; no density cap or probability conversion is used to prove the coefficient-volume output. The same stale dependency-digest defect prevents current accepted-input certification.
- Rigor checklist: Empty, singleton, open, closed, and half-open intervals are covered because an interval differs from its ordinary interior by at most two points. The proof does not assume a finite number of roots or a nonzero derivative. Properness holds even for a singleton interval and even when the normalized curve is globally stationary.
- Local adversarial test: The zero coefficient, a nonzero coefficient in an identically-zero subspace, a curve stationary only on a subinterval, roots at either endpoint, an empty interval, a singleton interval, and \(N=1\) all give the claimed null contribution. The mathematical tests pass.
- Contribution to target step: This lemma removes all boundary and degenerate coefficient classes needed to replace the open incidence calculation by the exact arbitrary-interval, closed-cube target.
- Verdict: REVISE_STEP
- Repair direction: Preserve the null-set arguments and correct the frozen dependency provenance before this unit is consumed.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-central-volume} states exactly the accepted witness inequality for every interval, with the same coefficient cube, feature vector, normalized curve, Euclidean measures, and no density, section, or transversality assumption.
- Proof validity: The root set is Borel by compact exhaustion of the interval interior and finite endpoint restoration. Removing the coefficient-cube boundary changes no \(N\)-volume. The area formula is applied to the measurable, countably \(N\)-rectifiable incidence hypersurface and the 1-Lipschitz projection, with the extended multiplicity \(\mathcal N_J(a)\in\{0,1,\ldots,+\infty\}\); thus the event indicator is bounded by multiplicity even for infinite root fibers. The exact unit_001 identity followed by coarea for the 1-Lipschitz parameter map gives the section integral with no factor. Since \(J_{\mathcal S_J}\tau>0\), the effective division \(J\pi/J\tau=|\langle a,\gamma_F'\rangle|\) is valid everywhere; the proof uses the product identity and therefore never divides by a vanishing quantity. Intersections of a central hyperplane with the closed-cube boundary have dimension at most \(N-2\) for \(N\geq2\), so open and closed sections have the same \(\mathcal H^{N-1}\)-integral.
- Cited-result and assumption audit: The area and coarea formulas are restated with measurable, Lipschitz, countably rectifiable hypotheses and are applied in their extended nonnegative form. The independent Edelman--Kostlan Theorem 5.1 check is accurate under the mapping source coefficient dimension \(n+1=N\), source feature curve \(v(t)=F(\theta)\), normalized source curve \(y=\gamma_F\), source section measure \(da^n=d\mathcal H^{N-1}\), and source density \(\sigma\). Its formula cross-checks the factor \(|\langle\gamma_F'(\theta),a\rangle|\sigma(a)\) for expected zero density. No conclusion from it is used here. In particular it does not supply the unweighted truncated-cube union-volume inequality, indicator-to-multiplicity step, tangent critical-image nullity, endpoint or cube-boundary restoration, identically-zero or infinite-fiber handling, Ball's section bound, the density-cap conversion, the Pfaffian derivative bridge, or the affine chart. The submitted proof correctly derives every exported item from area/coarea, but its stale dependency digests still invalidate the accepted-input chain.
- Rigor checklist: Coarea fibers are \((N-1)\)-dimensional and isometric to \(\gamma_F(\theta)^\perp\cap(-R,R)^N\). The tangent locus is measurable; \(J\pi=0\) there, so its coefficient image is \(N\)-null by the same area formula. Multiple roots at one location are tangent incidences, distinct locations increase multiplicity, and an identically-zero combination may have infinite multiplicity on its already proved null subspace. All integrals and multiplicities are interpreted in \([0,+\infty]\).
- Local adversarial test: Tangent roots, higher-order roots, infinitely many isolated or nonisolated roots, an identically-zero fiber, coefficient vectors on every cube face, endpoint-only roots, a stationary normalized curve, and \(N=1\) do not break the inequality. A direct rotating-line test in \(N=2\) also confirms that the projection determinant is \(|\langle a,\gamma'\rangle|\) with no missing factor of two. The mathematical tests pass.
- Contribution to target step: This proposition combines the named local results into the exact central incidence projection interface consumed by `step_004`.
- Verdict: REVISE_STEP
- Repair direction: Keep the proposition, its exact constants, and all case handling unchanged; repair only the current accepted-dependency binding and rerun the producer validation.

## Hidden Subclaim Scan

No independent mathematical subclaim is missing from the three-unit map. Incidence regularity and both Jacobians are in Lemma~\ref{lem:step-003-incidence-jacobians}; normalization, endpoint, stationary, identically-zero, and \(N=1\) facts are in Lemma~\ref{lem:step-003-null-degeneracies}; measurability, compact exhaustion, coefficient-cube boundary restoration, extended multiplicity, area/coarea assembly, critical-image nullity, and multiple/infinite-fiber handling are all proved inside Proposition~\ref{prop:step-003-central-volume}. Standard tools are restated before use, and theorem-style labels rather than unit IDs carry mathematical authority. The blocking issue is dependency provenance, not an omitted mathematical lemma.

## Target Claim Audit

The displayed derivation preserves the exact accepted target:

\[
\operatorname{Leb}^N\{a\in[-R,R]^N:\exists\theta\in I,\ \langle a,F(\theta)\rangle=0\}
\leq
\int_I\int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
|\langle\gamma_F'(\theta),a\rangle|\,d\mathcal H^{N-1}(a)\,d\theta.
\]

It holds for every interval with literal factor one and with no stronger assumptions, narrower regime, altered norm, probability mode, or hidden section bound. The target row matches sketch attempt 2, `step_003`, dependency `step_002`, and R2's pre-section-bound output. Nevertheless, the proof cannot be certified against the frozen accepted dependency until its two internal dependency digests are corrected by the producer.

Artifact checks otherwise pass: all required proof headings are present in the required order; the target table has nine fields and every row has matching arity; the local map has four fields and exactly `unit_001` through `unit_003`; the proof is ASCII with no disallowed control bytes, tabs, or carriage returns; braces, inline/display TeX delimiters, and all four `aligned` environments balance; the three theorem-style labels are unique; every local or dependency reference resolves; equation tags (3.1)--(3.6) are unique; and the only setting IDs used are the stable `assump:parameter-regime` and `assump:anchored-unit-range` IDs.

## Explicit Rate Audit

This step is a literal deterministic coefficient-volume interface. It exposes \(N\), \(R\), \(I\), and the exact Euclidean local motion \(|\langle\gamma_F'(\theta),a\rangle|\); no hidden constant may depend on any of them. The deterministic presentation and cube are fixed, the horizon mode is every interval including empty and singleton intervals, the norm/measure modes are Euclidean inner product, \(N\)-dimensional Lebesgue volume, and \((N-1)\)-dimensional Hausdorff section measure, and there is no auxiliary tolerance or confidence parameter. No term is absorbed: indicator at most extended multiplicity is the sole inequality, while the Jacobian and coarea transitions are exact. No density assumption, Ball section estimate, law-wise integration, independence premise, or probability conversion appears. The \(N=1\), stationary, empty, and singleton reductions give equality \(0=0\). Thus the exact R2 rate interface is preserved mathematically; only the stale dependency binding blocks certification.

## Notation Surface Audit

The sole `public-facing` output is the boxed coefficient-volume inequality. The setting-defined \(F,\gamma_F,N,R,\Theta\) are unchanged. The aliases \(\gamma,K,K^\circ,J\), incidence objects \(g,\mathcal S_J,\pi,\tau,u,n\), tangent-space variables, multiplicity \(\mathcal N_J\), tangent locus \(\mathcal C_J\), endpoint hyperplanes, compact exhaustion, and identically-zero subspace are all scoped as proof-local objects; none is exported or hides a constant, event, threshold, margin, or boundedness premise. The notation is dimension-consistent and does not create a public helper dictionary. Stable assumption IDs and theorem-style labels are used correctly. The only provenance inconsistency is the pair of stale dependency hashes identified in Blocking Issue 1.

## Target-Step Assembly Audit

Mathematically, current accepted Proposition~\ref{prop:step-002-projective-speed}, Lemma~\ref{lem:step-003-incidence-jacobians}, Lemma~\ref{lem:step-003-null-degeneracies}, and Proposition~\ref{prop:step-003-central-volume} jointly imply the exact target. The assembly cites those named results, preserves the closed cube and arbitrary interval, and introduces no density, section estimate, probability conversion, hidden factor, or new lemma. Formally, however, the submitted artifact identifies the dependency proposition through archived digests. Silently substituting the current accepted digests would be a repair, so this review cannot certify the assembly as submitted.

## Review Rationale

REVISE_STEP with `Smallest Retry Target = /proof-step step_003` is the smallest sound decision. The accepted sketch interface is adequate, and the current `step_002` proof/review pair is accepted and supplies exactly the required \(C^1\), nonvanishing, unit-normalized curve; therefore neither `/proof-sketch` nor `/proof-step step_002` is warranted. All three local mathematical derivations, the exact source cross-check, the area/coarea hypotheses, constants, dimensions, and degenerate cases pass. The local proof artifact alone records the wrong, archived dependency digests. Correcting that frozen-input provenance in the producer artifact, without changing any claim or derivation, followed by a fresh review is the minimal required repair.
