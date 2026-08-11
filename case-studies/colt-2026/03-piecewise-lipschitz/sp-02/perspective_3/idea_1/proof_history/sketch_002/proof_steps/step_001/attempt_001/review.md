# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_001
- Unit attempt: 1
- Reviewed proof artifact: 0a5355f86a9086ad945b96629d8e05f2dd8e77c9abcc1faa855a54dfd5e8d252

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Supported-root restriction and compact feasible set

- Statement fidelity: PASS. Lemma~\ref{lem:step-001-root-feasible} states exactly the compactness, cube-supported-root inclusion, empty-event, and empty-branch conditioning claims assigned to the first local unit. Its quantifiers cover every \(\alpha\in[-R,R]^N\) and every \(\theta\in\Theta\).
- Proof validity: PASS. Continuity of \(b,F_1,\ldots,F_N\) makes \(\lvert b\rvert-R\sum_i\lvert F_i\rvert\) continuous, so \(K_R\) is closed in compact \(\Theta\). At a root, the displayed triangle-inequality calculation gives \(\lvert b\rvert\le R\lVert F\rVert_1\), hence membership in \(K_R\). If \(K_R\) is empty, this implication excludes every cube-supported root, and the setting definition gives \(\Gamma_{\rm piv}=0\).
- Cited-result and assumption audit: PASS. The unit uses only the primitive regularity consequence of Assumption~\ref{assump:shared-pfaffian-chain} and the basic setting conditions \(N\ge1\), \(R>0\), and compact \(\Theta\). Closed-subset compactness and the triangle inequality are restated before use. Neither Assumption~\ref{assump:no-forced-root} nor Assumption~\ref{assump:joint-density-cap} is needed or invoked.
- Rigor checklist: PASS. The proof preserves the cube support, the \(\ell_1\) feasibility convention, all endpoint points of the compact interval, and the empty-set branch. It uses no probability, density, interior-point, differentiability, or nondegeneracy upgrade.
- Local adversarial test: PASS. Points with \(F(\theta)=0\) and \(b(\theta)\ne0\) fail the defining inequality for \(K_R\) and cannot be roots; a hypothetical simultaneous zero lies in \(K_R\) and is deliberately left for unit_002, so no forbidden nondegeneracy conclusion is hidden here.
- Contribution to target step: PASS. The unit supplies the compact root-feasible domain and completely closes the \(K_R=\varnothing\) branch used in target-step assembly.
- Verdict: PASS
- Repair direction: None

### unit_002: Compact available-pivot margin

- Statement fidelity: PASS. Lemma~\ref{lem:step-001-pivot-margin} states the exact nonempty-\(K_R\) claim: \(F\ne0\) throughout \(K_R\), the setting-derived quantity \(\rho=\min_{\theta\in K_R}\max_j\lvert F_j(\theta)\rvert\) exists and is strictly positive, and a coordinate of magnitude at least \(\rho\) is available at every feasible point.
- Proof validity: PASS. If \(F(\theta)=0\) at a point of \(K_R\), feasibility forces \(b(\theta)=0\), contradicting Assumption~\ref{assump:no-forced-root}. Thus the continuous function \(\max_j\lvert F_j\rvert\) is pointwise positive on the nonempty compact set supplied by Lemma~\ref{lem:step-001-root-feasible}; its attained minimum cannot be zero. Finite-coordinate maximization then supplies the pointwise pivot.
- Cited-result and assumption audit: PASS. The unit uses exactly Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root}, together with the named compactness conclusion of Lemma~\ref{lem:step-001-root-feasible}. Continuity of a finite maximum and the extreme-value theorem are restated and correctly instantiated. Assumption~\ref{assump:joint-density-cap} is absent.
- Rigor checklist: PASS. The minimum is taken only after the nonempty case split; strict positivity follows from attainment, not from a theorem-facing norm-margin assumption. Individual coordinate zeros, maximizer ties, \(N=1\), and endpoints are compatible with the argument.
- Local adversarial test: PASS. If a forced root \((b(\theta_0),F(\theta_0))=(0,0)\) were allowed, then \(\theta_0\in K_R\) and the maximum-coordinate function would vanish there. The proof identifies this exact failure and does not claim the conclusion in that forbidden regime.
- Contribution to target step: PASS. The unit derives the sole positive denominator source required by the quotient calculation, from primitive assumptions rather than by assumption or dependency.
- Verdict: PASS
- Repair direction: None

### unit_003: Fixed-family pivot-variation bound

- Statement fidelity: PASS. Proposition~\ref{prop:step-001-fixed-family-bound} defines finite \(B_0,B_1\), proves exactly \(\min_jV_j(\theta)\le2B_0B_1\rho^{-2}(1+R(N-1))\) for every \(\theta\in K_R\), and takes the supremum to obtain fixed-family finiteness of \(\Gamma_{\rm piv}\).
- Proof validity: PASS. The \(C^1\) setting makes \(b,F_i,b',F_i'\) continuous and bounded on compact \(\Theta\). At each feasible point, a largest-magnitude coordinate satisfies \(\lvert F_j\rvert\ge\rho>0\). The proof applies the quotient rule once to \(b/F_j\) and separately to each \(F_i/F_j\), bounds each numerator by \(2B_0B_1\) and each squared denominator below by \(\rho^2\), and sums one offset term plus exactly \(N-1\) feature terms. Since the minimum is at most the selected finite value, the pointwise and supremum conclusions follow.
- Cited-result and assumption audit: PASS. The proposition uses Assumption~\ref{assump:shared-pfaffian-chain} and the named output of Lemma~\ref{lem:step-001-pivot-margin}. The quotient rule, triangle inequality, and extreme-value theorem are restated in current notation with their hypotheses discharged. It uses no density assumption, external theorem, dependency artifact, or global diagnostic as proof evidence.
- Rigor checklist: PASS. The proof never divides by \(B_0\) or \(B_1\); \(B_0=0\) is impossible in the nonempty branch because \(B_0\ge\rho>0\), while \(B_1=0\) makes every displayed quotient numerator zero. For \(N=1\) the feature-ratio sum is empty. Zeros in numerator coordinates, pivot ties, and endpoint derivatives do not change the calculation, and only the selected nonzero coordinate is used as a denominator.
- Local adversarial test: PASS. Choosing a small or zero prescribed pivot could invalidate the quotient bound, but the pointwise largest-coordinate choice supplies \(\lvert F_j\rvert\ge\rho\). A tie is harmless because every maximizer has the same adequate magnitude, and no measurable selector is asserted. The bound is finite even when other coordinates vanish.
- Contribution to target step: PASS. The proposition converts the derived compact margin into the exact crude quotient estimate and the nonempty-branch finiteness certificate, without asserting control from Pfaffian-format descriptors.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. Compactness and root inclusion, strict pivot nondegeneracy, and quotient control are separated into the three mapped units. The elementary compactness, finite-maximum, extreme-value, triangle-inequality, and quotient-rule facts are explicitly restated and instantiated. The pointwise pivot choice does not require a measurable or globally consistent selector, and no such selector is smuggled into the assembly. Finiteness and positivity of every helper quantity are proved by named units before use.

## Target Claim Audit

The proof matches the accepted sketch-attempt-2 row exactly. It covers both \(K_R\) branches, derives rather than assumes \(\rho>0\), proves the requested bound with the exact factor \(1+R(N-1)\), and concludes \(\Gamma_{\rm piv}(b,F;R)<\infty\). Its only primitive technical assumptions are Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root}; Assumption~\ref{assump:joint-density-cap} is correctly unused. There is no dependency artifact and no probability or convergence-mode claim. The proof remains a `material_partial` fixed-family result and neither claims nor implies polynomial general-instance control of \(\Gamma_{\rm piv}\) from \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff},N,R,A\), or any other format descriptor.

## Explicit Rate Audit

The step's deterministic crude bound exposes \(N,R,B_0,B_1,\rho\) and \(\Gamma_{\rm piv}\) with no hidden multiplicative constant. The downstream public interface retains only the setting-defined \(N,R,\Gamma_{\rm piv}\); \(B_0,B_1,\rho\) are explicitly proof-local fixed-family finiteness witnesses. The family, its presentation, compact \(\Theta\), \(N\), and \(R\) are fixed; the mode is deterministic, static, and uniform over \(K_R\); the norm conventions are the setting's \(\ell_1\) feasibility test, maximum-coordinate margin, and scalar absolute ratio variation. No auxiliary tolerance, probability conversion, horizon upgrade, asymptotic simplification, dropped term, or hidden descriptor dependence occurs. The displayed quotient inequalities justify every term and the exact \(N-1\) count. This step performs no theorem-facing baseline specialization and does not weaken the later monic baseline obligation.

## Notation Surface Audit

The setting-defined \(K_R\), \(V_j\), and \(\Gamma_{\rm piv}\) remain public-facing with unchanged meanings. The new objects \(\rho,B_0,B_1\) are correctly classified as proof-local, are defined directly from setting functions, and are proved positive or finite before use. The pointwise maximizing index is an unexported finite choice rather than a new helper object. No appendix-local dictionary or unnecessary alias is introduced, and the step exports only supported-root feasibility, qualitative pivot availability, and fixed-family finiteness.

## Target-Step Assembly Audit

The assembly cites the exact paper-ready results it consumes. Lemma~\ref{lem:step-001-root-feasible} supplies compactness, root feasibility, and the empty branch. In the nonempty branch, Lemma~\ref{lem:step-001-pivot-margin} supplies \(\rho>0\), and Proposition~\ref{prop:step-001-fixed-family-bound} supplies the exact pointwise quotient estimate and its supremum consequence. These two branches jointly imply every clause of `step_001`. No dependency, external citation, bare unit ID, subsection title, diagnostic artifact, or unreviewed lemma is used as mathematical authority.

## Review Rationale

All three mapped local units have self-contained theorem-style statements, stable labels, valid derivations, legal assumption provenance, and exact contributions to the target claim. The boundary tests \(K_R=\varnothing\), \(N=1\), coordinate zeros, pivot ties, endpoints, \(B_0=0\), \(B_1=0\), and a hypothetical forced root all pass or fail exactly where the accepted theorem contract requires. There are no blocking issues and no proof, dependency, or sketch interface requiring repair, so ACCEPTED with Smallest Retry Target = None is the smallest sound decision.
