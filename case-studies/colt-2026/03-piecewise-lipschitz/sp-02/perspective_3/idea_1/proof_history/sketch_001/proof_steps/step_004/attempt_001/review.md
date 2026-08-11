# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_004/proof.md`, SHA-256 `84d16264879bff1e5842820f8291b7981beeb279683fe7701e56135cab476a91`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-004-density-conversion} states the exact pairwise claim in the accepted `step_004` row for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval of positive length. It preserves the original root event, ordinary-probability mode, arbitrary full-joint correlation, the coefficient dimension \(N\), and both exact constant forms. Its statement names Assumption~\ref{assump:joint-density-cap} and the two accepted `step_003` results that supply measurability and coefficient-volume control.
- Proof validity: Cube support gives \(\mu([-R,R]^N)=1\), so the goal event agrees almost surely with the accepted cube-restricted event \(S_I\). The accepted Lemma~\ref{lem:step-003-measurable-charts} makes that event analytic, universally measurable, and Lebesgue measurable. Hence the density representation and the essential joint ceiling give
  \[
  \mu(S_I)=\int_{S_I}f_\mu\,d\lambda_N
  \le \kappa\lambda_N(S_I)
  \le \kappa(2R)^{N-1}\Gamma_{\rm piv}|I|.
  \]
  Since \(R>0\) and \(A=(2R)^N\kappa\), the displayed calculation
  \(\kappa(2R)^{N-1}=A/(2R)\) is exact and uses no inequality or hidden constant.
- Cited-result and assumption audit: The only primitive input introduced here is the full joint-density and cube-support condition in Assumption~\ref{assump:joint-density-cap}. Event measurability, finite \(\Gamma_{\rm piv}\), and the literal coefficient-volume certificate come from the current hash-matched accepted `step_003` proof/review pair. The dependency is restated in current notation with the same \(b,F,N,R,I,S_I\), and no global-proof diagnostic, marginal-density claim, independence assumption, generated event, or unproved invariant is used.
- Rigor checklist: The proof uses an almost-everywhere density ceiling in the valid integral sense, retains the closed coefficient-cube boundary, and never enlarges or closes \(S_I\). For \(N=1\), \((2R)^{N-1}=1\) and \(A/(2R)=\kappa\). If \(K_R=\varnothing\), the accepted dependency gives both \(S_I=\varnothing\) and \(\Gamma_{\rm piv}=0\). Open, closed, half-open, and relative-endpoint interval conventions, as well as tangent, multiple, and infinite root fibers, pass through unchanged because density domination acts only on the already certified measurable set.
- Local adversarial test: A density may exhibit arbitrary dependence and may concentrate as strongly as allowed near the swept root set; the full joint ceiling still bounds its mass by \(\kappa\lambda_N(S_I)\). No factorization or conditional density is needed. Singular laws are correctly outside \(\mathcal D_{N,R,\kappa}\), and a right-hand side exceeding one remains a valid upper bound without an unstated small-interval restriction.
- Contribution to target step: It supplies the exact law-by-law and interval-by-interval probability inequality that is both the main affine theorem and the sole input needed for the uniform ratio proposition.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-004-uniform-ratio} states exactly the nested law and positive-length interval suprema from the accepted row, with the same ordering and the same constant \(A\Gamma_{\rm piv}/(2R)\). It explicitly includes the accepted finiteness conclusion for \(\Gamma_{\rm piv}\).
- Proof validity: Proposition~\ref{prop:step-004-density-conversion} holds for every admissible pair \((\mu,I)\). The proof first checks \(|I|>0\), divides by that positive quantity, observes that the resulting right-hand side is independent of both indices, and then applies the least-upper-bound property to the interval class and the law class in the displayed order. Thus both suprema preserve the pairwise constant exactly. Finally \(A<\infty\), \(R>0\), and accepted \(\Gamma_{\rm piv}<\infty\) make the upper bound finite.
- Cited-result and assumption audit: The proposition uses only Assumption~\ref{assump:joint-density-cap}, the accepted dependency's finiteness output, and the named preceding local proposition. It adds no condition on a realized coefficient vector, no independence or marginal hypothesis, and no hidden nonemptiness, threshold, asymptotic, or conditioning requirement to any admissible pair.
- Rigor checklist: Positivity is established before division; no division by a zero-length interval occurs. Taking the two suprema is an order-preserving operation on a genuinely pairwise uniform inequality and introduces no union bound or probability conversion. Empty indexing classes have no admissible pair that can violate the displayed upper bound, while for nonempty classes the ordinary least-upper-bound argument is literal.
- Local adversarial test: Allowing the maximizing interval and law to vary jointly cannot increase the ratio past the constant because inequality (6) already holds pointwise for every pair. The argument remains valid when \(\Gamma_{\rm piv}=0\), including the empty-\(K_R\) branch, and for \(N=1\).
- Contribution to target step: It converts the pairwise probability theorem into the exact finite law- and interval-uniform anti-concentration ratio required by the formalized goal.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. Cube support and total density mass justify the reduction to \(S_I\); accepted dependency results supply event measurability, volume control, finiteness, and all root/boundary cases; Proposition~\ref{prop:step-004-density-conversion} contains the density domination and exact \(A/(2R)\) algebra; and Proposition~\ref{prop:step-004-uniform-ratio} contains positivity, division, both least-upper-bound operations, and finiteness. These are the two independent obligations listed in the local lemma map. No assertion about product structure, conditional or marginal densities, simple roots, or polynomial control of \(\Gamma_{\rm piv}\) appears in prose or assembly.

## Target Claim Audit

The proof establishes the exact accepted `step_004` claim. For every admissible possibly correlated full-joint law and every positive-length interval it proves
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\le \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
=\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|,
\]
then proves the two nested suprema are bounded by the same finite constant. Quantifiers, event, coefficient dimension, ordinary-probability mode, interval scope, exact constants, and dependence on \(N,R,\kappa,A,\Gamma_{\rm piv},|I|\) match `setting.md` and the accepted sketch row. The proof neither strengthens nor weakens the claim.

## Explicit Rate Audit

The step is rate-bearing under R1. It exposes exactly \(N,R,\kappa,A=(2R)^N\kappa,\Gamma_{\rm piv}(b,F;R)\), and \(|I|\) before ratio cancellation, with no hidden constant. The deterministic family and Pfaffian descriptors are fixed; laws and intervals vary. The mode is ordinary probability followed by law and interval suprema, with no horizon, confidence parameter, or conditioning event. The norm and measure conventions remain the setting's \(\ell_1\) feasibility test, coordinate-ratio variation, Euclidean coefficient volume, and one-dimensional interval length. No term is absorbed: density domination is displayed, the algebraic conversion is an equality, and division uses the stated \(|I|>0\). The exact \(N=1\) reduction and same \(N\)-dimensional coefficient space preserve the later monic baseline specialization.

The branch remains a fixed-family `material_partial` result. The proof correctly treats \(\Gamma_{\rm piv}\) as a finite setting-defined conditioning certificate and makes no claim, explicit or implicit, that it admits polynomial control in \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or any other general Pfaffian-format instance data.

## Notation Surface Audit

The public-facing surface consists only of the setting-defined event \(S_I\), \(N,R,\kappa,A,\Gamma_{\rm piv}\), \(|I|\), and the two target inequalities. The density \(f_\mu\) is a proof-local representative supplied by the primitive assumption. No appendix-local dictionary, helper constant, event enlargement, threshold, margin, or auxiliary parameter is introduced, and the step exports only the minimal theorem interface required by `step_006` and final assembly.

## Target-Step Assembly Audit

The assembly uses accepted Lemma~\ref{lem:step-003-measurable-charts} for exact event measurability and accepted Proposition~\ref{prop:step-003-volume-certificate} for the coefficient-volume inequality. Proposition~\ref{prop:step-004-density-conversion} then gives the exact pairwise probability theorem on that identical event, and Proposition~\ref{prop:step-004-uniform-ratio} gives the ratio and both suprema after positive division. These named results jointly imply every clause of the target and are referenced by theorem-style names and labels, not bare unit IDs or workflow prose.

## Review Rationale

`ACCEPTED` with `Smallest Retry Target = None` is the smallest valid decision. Both local propositions are self-contained relative to the primitive full-joint density assumption and the current accepted dependency; their algebra, measurability path, positivity, supremum operations, correlation scope, finiteness, and degenerate cases are valid. The exact event and constants reach the target without a residual term or altered interface, and the proof expressly preserves the unresolved polynomial general-instance control of \(\Gamma_{\rm piv}\) as outside this `material_partial` theorem.
