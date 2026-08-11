# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_006/proof.md`, SHA-256 `491aa4890100830eb2aadb8856fc6c22ff45f25492aa7ee9f1abd57cdb4eea14`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`
- Accepted dependency: `step_001` proof SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a` and review SHA-256 `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`; the review records `ACCEPTED` for sketch attempt 1, unit attempt 1, and that proof hash.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-log-domination} states the exact log-domain and heterogeneous-log bridge required by the accepted `step_006` row. It names Assumptions~\ref{assump:vc-one-factors} and \ref{assump:global-privacy-range}, the accepted scalar dependency, the definitions of (L_i,L), and the precise conclusions (2\le s_i\le M), (1<L_i\le L), and \(\sum_i s_iL_i^2\le ML^2\).
- Proof validity: Accepted Lemma~\ref{lem:step-001-logstar} gives (s_i\ge2), (M=\sum_j s_j), and (M\ge2k). Positivity of the finite summands gives (s_i\le M). Since (0<\varepsilon\le1/10) and (0<\delta<1), one has (0<\varepsilon\delta<1/10), hence both (e s_i/(\varepsilon\delta)) and (eM/(\varepsilon\delta)) are finite and strictly greater than (20e). Strict monotonicity of the natural logarithm, followed by squaring positive quantities and summing with weights (s_i>0), proves the displayed heterogeneous bound without an extra factor of (k).
- Cited-result and assumption audit: No external theorem is used. The only inherited result is the accepted, hash-matched Lemma~\ref{lem:step-001-logstar}; its exact available conclusions and primitive basis are restated before use. The parameter range is the primitive Assumption~\ref{assump:global-privacy-range}; no generated condition or cardinality fact is assumed.
- Rigor checklist: The argument is uniform over every factor, finite (k\ge1), and all allowed positive privacy parameters. It distinguishes the setting's natural logarithm from the base-two iterated logarithm inside (s_i). All logarithms have checked positive finite arguments, and squaring is invoked only after positivity is established.
- Local adversarial test: At (\varepsilon=1/10) and (\delta\uparrow1), the smallest possible log argument has infimum (20e) but is always strictly larger because (\delta<1). As either positive parameter approaches zero, each argument remains finite at every admissible point and increases. For (k=1), (s_1=M) and (L_1=L). For arbitrarily heterogeneous (s_i), the proof remains termwise and uses no balance or comparability assumption.
- Contribution to target step: Supplies the endpoint-safe natural-log domination needed to replace every factor logarithm by the single public logarithm while preserving the exact (M) weight.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-ceiling-sum} targets every setting-defined quota (q_i), retains one explicit ceiling allowance per factor, and concludes exactly (Q_{\oplus}\le (K_YM/\varepsilon)L^2+k), the technical interface fixed by the sketch.
- Proof validity: The proof derives \(\lceil x\rceil\le x+1\) and applies it separately to the exact finite positive quantity (x_i=(K_Y/\varepsilon)s_iL_i^2) inside each quota. Summation yields the displayed (+k) allowance with no omitted ceiling. Multiplication of the `unit_001` inequality by (K_Y/\varepsilon>0) gives the second inequality with the correct direction and coefficient.
- Cited-result and assumption audit: The setting supplies (K_Y>0) and the exact quota definitions. The only prior mathematical input is the fully restated Lemma~\ref{lem:step-006-log-domination}, together with the accepted scalar dependency and the two named primitive assumptions. No ceiling theorem, asymptotic notation, or external source is invoked without proof.
- Rigor checklist: Integer and noninteger (x_i) are both covered; the non-strict upper bound remains valid when (x_i) is an integer. The sum is finite because (k<\infty), and all factors use the same setting-fixed universal (K_Y). The proof neither drops a ceiling nor hides the number of ceilings in a constant.
- Local adversarial test: When all (d_i=1), every (s_i=2), so all (k) ceilings are still present and the bound reads with (M=2k). For (k=1), it gives the exact one-factor upper estimate (q_1\le (K_YM/\varepsilon)L^2+1). Heterogeneous (s_i) do not alter the factorwise ceiling calculation or the preceding termwise log domination.
- Contribution to target step: Converts the exact technical quotas into a single heterogeneous sum plus the sole residual (+k), ready for public-scale absorption.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-public-quota-bridge} states the exact target public rate and explicitly defines (C_{\rm quota}=\max\{1,K_Y+1/20\}). It also states the required universal dependence and the absence of separate factor-count, factor-cardinality, and quotient-cardinality terms.
- Proof validity: With (A=(M/\varepsilon)L^2>0), the accepted dependency gives (k\le M/2). The identity (M/2=(\varepsilon/(2L^2))A), together with (\varepsilon\le1/10) and (L>1), gives (k\le A/20). Substitution into the accepted technical inequality yields (Q_{\oplus}\le(K_Y+1/20)A\le C_{\rm quota}A). Every inequality has the correct non-strict direction at (M=2k).
- Cited-result and assumption audit: There is no external citation. (K_Y) is the setting-fixed universal source constant, (1/20) is derived explicitly from the declared privacy range and the accepted (M\ge2k) control, and the proposition introduces no free threshold, tolerance, event, or hidden invariant.
- Rigor checklist: The constant is at least one as required and depends only on a universal fixed quantity. The bridge is deterministic; it makes no probability, horizon, or norm upgrade. Its full input surface is (k,(s_i)_i,M,\varepsilon,\delta,K_Y), so no class, quotient, domain, distribution, or support cardinality can enter implicitly.
- Local adversarial test: At the sharp structural boundary (M=2k), including all (d_i=1), the first inequality in the absorption is equality and the remaining domination still holds. At (k=1), the exact quota (Q_{\oplus}=q_1) and (M=s_1) are unchanged, and only its one ceiling is absorbed at the same order. The proof remains valid at (\varepsilon=1/10), for every (0<\delta<1), and along either excluded zero-endpoint limit.
- Contribution to target step: Completes the public Rate Specialization Bridge with an explicit universal constant and removes the displayed (+k) residual without changing the exact quota object consumed by `step_015`.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. Log-domain validity, natural-log monotonicity, positivity before squaring, and heterogeneous summation are contained in `unit_001`; the factorwise ceiling inequality and its finite aggregation are contained in `unit_002`; universal-constant provenance and (+k) absorption are contained in `unit_003`. The stress-case statements in the assembly are direct specializations of these named results and the accepted dependency, not new proof obligations. The claims of deterministic mode and absence of cardinality dependence follow from the displayed input surface and introduce no separate mathematical lemma.

## Target Claim Audit

The proof establishes exactly the accepted sketch-row claim
\[
Q_{\oplus}\le C_{\rm quota}\frac{M}{\varepsilon}
\log^2\!\left(\frac{eM}{\varepsilon\delta}\right)
\]
under Assumptions~\ref{assump:vc-one-factors} and \ref{assump:global-privacy-range} and the accepted `step_001` scalar conclusion. It neither weakens nor strengthens the parameter regime. Quantifiers cover every finite (k\ge1), all finite-Littlestone VC-one factor tuples, and every (0<\varepsilon\le1/10), (0<\delta<1). The target retains natural logarithms, exact setting-defined quotas, universal constants, deterministic fixed-sample mode, and no class/quotient cardinality or support restriction. The (k=1), all-(d_i=1), (M=2k), highly heterogeneous, and privacy-boundary regimes all satisfy the same statement.

## Explicit Rate Audit

The proof exposes (k,(d_i,s_i,q_i)_i,M,Q_{\oplus},\varepsilon,\delta), while the ambient (C_i,Q_i) contribute no size parameter. The only hidden/public constant is the explicit universal (C_{\rm quota}=\max\{1,K_Y+1/20\}), which may depend only on the setting-fixed universal (K_Y) and not on any class, domain, factor, cardinality, distribution, sample size, or privacy parameter. Fixed quantities, deterministic probability mode, static fixed-sample horizon mode, scalar quota-count norm mode, exact admissibility conditions, absence of auxiliary tolerances, and identity probability conversion are all declared. Equations (4)--(7), (8)--(10), and (14)--(16) provide the required displayed monotonicity, ceiling, and absorption inequalities. The (k=1) specialization preserves the exact one-factor quota and its public order, so the applicable baseline-reduction obligation passes.

## Notation Surface Audit

The proof correctly classifies the setting-defined (s_i,q_i,M,Q_{\oplus},\varepsilon,\delta,K_Y) and the exported (C_{\rm quota}) as public-facing. The repeated logarithms (L_i,L), the ceiling inputs (x_i), and the public-scale abbreviation (A) are lightweight proof-local aliases, each defined directly from setting quantities before use and not exported as assumptions or rate parameters. No appendix-local object is needed. The notation makes the log arguments, ceiling inputs, and absorption coefficient more visible and does not conceal finiteness, boundedness, dependence, or an unproved condition.

## Target-Step Assembly Audit

The assembly cites paper-ready named results and stable labels rather than bare unit IDs. Accepted Lemma~\ref{lem:step-001-logstar} supplies (s_i\ge2) and (M\ge2k); Lemma~\ref{lem:step-006-log-domination} supplies exact heterogeneous log domination; Lemma~\ref{lem:step-006-ceiling-sum} supplies the exact quota sum with (+k); and Proposition~\ref{prop:step-006-public-quota-bridge} supplies the explicit absorption and universal constant. These conclusions jointly imply every part of the target, including the natural-log endpoints, every ceiling, no separate (k), and no factor/quotient cardinality term. No unreviewed bridge, citation, dependency conclusion, or generated condition is used.

## Review Rationale

`ACCEPTED` is warranted because all three non-atomic local units are self-contained relative to the setting and the current accepted dependency, their derivations are valid line by line, and their named assembly proves the exact accepted `step_006` interface. The high-risk points all close with displayed inequalities: strict log-domain control at the allowed endpoints, termwise domination for heterogeneous factors, one ceiling allowance for each factor, (+k) absorption at the equality boundary (M=2k), and explicit universal constant provenance. The rate/mode fields are complete, the one-factor and all-(d_i=1) reductions pass, and no cardinality dependence or hidden assumption appears. Therefore no producer repair is required and `None` is the smallest retry target.
