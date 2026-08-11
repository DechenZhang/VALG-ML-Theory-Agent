# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_004/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact CP mode-matricization identities

- Statement fidelity: The lemma gives exactly the three current-ordering matricization identities needed to identify each block least-squares residual with the tensor objective in the accepted sketch row.
- Proof validity: Each rank-one unfolding is computed with the stipulated Khatri--Rao column order, summation gives the matrix products, and matricization preserves the Frobenius norm.
- Cited-result and assumption audit: No external result or dependency is used. The finite CP objects and fixed ordering come directly from `setting.md`, and no generated trajectory property is assumed.
- Rigor checklist: Dimensions and mode orderings are consistent; the conclusion applies to arbitrary finite factors, including zero or rank-deficient factors.
- Local adversarial test: Zero columns, repeated columns, and cancellation among CP terms do not alter the entrywise identities or the norm equality.
- Contribution to target step: It rules out a surrogate-objective gap when the matrix least-squares lemmas are applied to the three cALS blocks.
- Verdict: PASS
- Repair direction: None.

### unit_002: Singular-design Moore--Penrose least squares

- Statement fidelity: The lemma proves the exact unconstrained minimum-Frobenius-norm block formula required for the cALS `Y` and `Z` updates, uniformly over full-rank, rank-deficient, and zero designs.
- Proof validity: The compact-SVD decomposition separates the fitted and orthogonal design directions. The condition (UV_K=AU_K\Sigma^{-1}) characterizes all minimizers, (AK(K^{\mathsf T}K)^\dagger=AU_K\Sigma^{-1}V_K^{\mathsf T}), and orthogonal row-space/null-space splitting makes this the unique minimizer of smallest Frobenius norm.
- Cited-result and assumption audit: The finite-dimensional SVD and Gram pseudoinverse are restated in current notation and explicitly instantiated. No conditioning, Gram invertibility, or lower singular-value assumption is introduced.
- Rigor checklist: Matrix dimensions, the complete minimizer family, uniqueness of the minimum-norm choice, and finiteness at every fixed finite design are correct.
- Local adversarial test: For (K=0), the objective is constant in (U) and the formula returns (U_\star=0), the unique minimum-norm minimizer. For nonzero singular (K), arbitrary null-space components leave the fit unchanged and strictly increase norm unless zero.
- Contribution to target step: It supplies exact block optimality and handles the main singular-design obstruction without continuity of the update map.
- Verdict: PASS
- Repair direction: None.

### unit_003: Constrained orthogonal-\(Q\) block minimizer

- Statement fidelity: The lemma proves the exact constrained `X`-block formula on the formal orthonormal-(Q_{\mathrm{cALS}}) domain specified by the cALS algorithm.
- Proof validity: Writing (X=QC) is unique, the residual splits into Frobenius-orthogonal ((I-QQ^{\mathsf T})A) and (Q(Q^{\mathsf T}A-CK^{\mathsf T})) components, and unit_002 yields the reduced minimum-norm coefficient. Since (Q) is an isometry, minimum norm transfers from (C) to feasible (X).
- Cited-result and assumption audit: Orthogonality and the Moore--Penrose result are stated and discharged locally. The orthonormal-basis condition is part of the formal algorithmic domain, not an assumed trajectory invariant.
- Rigor checklist: The feasible set, coefficient dimensions, objective equality, and minimum-norm qualifier are all explicit. The argument remains valid without any rank condition on (K).
- Local adversarial test: At (K=0), every feasible (X) minimizes the objective and (X_\star=0) is uniquely minimum norm. An arbitrary component of (A) outside \(\operatorname{range}(Q)\) contributes only the fixed orthogonal residual and cannot affect the reduced minimizer.
- Contribution to target step: It bridges the general singular-design least-squares calculation to the displayed constrained cALS `X` update.
- Verdict: PASS
- Repair direction: None.

### unit_004: Exact finite minimum-norm cALS block updates

- Statement fidelity: The proposition instantiates the three displayed updates at their actual sequential designs and proves precisely their block-minimizer and one-block descent claims.
- Proof validity: Unit_001 identifies each actual objective; unit_003 gives the constrained `X` formula; unit_002 gives the unconstrained `Y` and `Z` formulas. Current `X_t` feasibility supplies the comparison point for the first inequality, and each later comparison uses the already updated preceding blocks.
- Cited-result and assumption audit: Only the named local lemmas are used, with their objects instantiated as (T_{(m)}) and (K_t^x,K_t^y,K_t^z). No dependency artifact, rank condition, or factor bound is imported.
- Rigor checklist: The proposition distinguishes cyclic Gauss--Seidel order from a simultaneous Jacobi update. Each pseudoinverse and product is finite for a fixed finite input, including singular Gram matrices.
- Local adversarial test: Zero or nonzero singular designs can make block minimizers nonunique, but the selected minimum-norm solution remains exact and each objective inequality remains non-strictly valid. Zero block drops cause no failure.
- Contribution to target step: It produces the three signed inequalities and finite selected updates consumed by the all-sweep induction.
- Verdict: PASS
- Repair direction: None.

### unit_005: Well-defined sequential cALS sweep and monotonicity

- Statement fidelity: The proposition proves finite-iterate existence, constrained `X` feasibility, and the exact sweep-level monotonicity required by `step_004`.
- Proof validity: (X_0\in\operatorname{range}(Q_{\mathrm{cALS}})) gives the entry state. Inductively, the left-(Q_{\mathrm{cALS}}) update makes (X_{t+1}) finite and feasible; the resulting finite designs then give finite (Y_{t+1}) and (Z_{t+1}). Chaining the three current-state inequalities yields (F_{\mathrm{cALS}}(t+1)\le F_{\mathrm{cALS}}(t)).
- Cited-result and assumption audit: The generated feasibility and finite-state properties are proved rather than assumed. The proposition uses only unit_004 and the formal finite initialization; no accepted dependency is required by the sketch row.
- Rigor checklist: The induction starts before the first constrained comparison, respects the exact (X\to Y\to Z) order, and makes no claim of factor boundedness, update continuity, strict descent, or parameter convergence.
- Local adversarial test: A singular or zero first design still produces a finite exact minimizer. If the current objective is zero, nonnegativity and exact block minimization force every within-sweep objective value to remain zero.
- Contribution to target step: It establishes the all-time deterministic monotone sequence whose scalar convergence is the exported interface.
- Verdict: PASS
- Repair direction: None.

### unit_006: Finite scalar cALS limit and drop budget

- Statement fidelity: The lemma proves the requested finite scalar limit and the accepted sketch's telescoping drop relation, without strengthening the conclusion to factor convergence or a rate.
- Proof validity: Nonnegativity and unit_005 give a finite, lower-bounded, nonincreasing real sequence. The infimum argument proves convergence to a finite (L_{\mathrm{cALS}}), and the finite sum of sweep drops telescopes exactly to (F_{\mathrm{cALS}}(0)-F_{\mathrm{cALS}}(N)\le F_{\mathrm{cALS}}(0)).
- Cited-result and assumption audit: Monotone convergence is proved directly by the epsilon argument. No positive objective floor, stationarity assumption, or downstream theorem conclusion is used.
- Rigor checklist: The limit is an ordinary deterministic scalar limit as (t\to\infty); finiteness follows from (0\le L_{\mathrm{cALS}}\le F_{\mathrm{cALS}}(0)<\infty). The telescoping identity has the correct indices and sign.
- Local adversarial test: Constant sequences, tied block minima, zero objective, and arbitrarily small nonnegative drops all satisfy the argument. No summability-to-parameter-convergence inference is made.
- Contribution to target step: It exports exactly the cALS scalar-limit certificate consumed by `step_007`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No unlisted independent nontrivial subclaim is used. The tensor-to-matrix objective identity, complete singular-design minimizer characterization, constrained minimum-norm reduction, finite block updates, trajectory feasibility and finite-state induction, sequential descent, telescoping, and scalar convergence each have a named local unit. The boundary discussion only instantiates these proved results and introduces no new proof authority.

## Target Claim Audit

The proof establishes the exact accepted `step_004` claim on the formal cALS domain: every displayed pseudoinverse update is an exact minimum-Frobenius-norm block minimizer; the three actual sequential block objectives are nonincreasing; every finite sweep exists; and (F_{\mathrm{cALS}}(t)) converges to a finite real limit. It neither assumes conditioning or bounded factors nor drifts to a simultaneous-update convention, factor convergence, stationarity, or a convergence rate.

## Explicit Rate Audit

The step is not rate-bearing. Its quantitative interface is exact deterministic monotonicity for every finite sweep and asymptotic scalar-limit existence. There are no hidden constants, auxiliary tolerances, probability conversions, norm changes, term absorptions, or conditioning parameters. The horizon mode is all finite sweeps followed by (t\to\infty), and the exact/zero-objective and singular/zero-design baselines preserve the same conclusion.

## Notation Surface Audit

The public-facing export is minimal: well-defined cALS sweeps, exact minimum-norm block updates, monotonicity of (F_{\mathrm{cALS}}(t)), and its finite scalar limit. The SVD factors, projectors, generic matrices, intermediate objectives, and infimum are properly confined to proof-local or appendix-local use. No helper notation hides a boundedness, finiteness, rank, or generated-invariant obligation.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-004-cp-matricization} identifies the actual objective, Lemma~\ref{lem:step-004-pseudoinverse-ls} handles all unconstrained singular designs, and Lemma~\ref{lem:step-004-constrained-block} handles the constrained `X` block. Proposition~\ref{prop:step-004-block-updates} instantiates the three exact current-block minimizers, Proposition~\ref{prop:step-004-sequential-descent} proves all finite iterates and chains the cyclic inequalities, and Lemma~\ref{lem:step-004-scalar-limit} supplies the finite scalar limit and telescoping budget. These named results jointly imply every clause of the target without a dependency artifact or an unreviewed bridge.

## Review Rationale

`ACCEPTED` is warranted because the proof closes each high-risk local obligation under the unchanged accepted sketch row. Singular and zero Khatri--Rao designs are covered by a complete compact-SVD minimizer calculation; the constrained minimum-norm block follows from an exact orthogonal split; finite-iterate existence and feasibility are established inductively before use; and the actual cyclic block inequalities yield a nonnegative monotone scalar sequence whose finite limit and telescoping drop budget are proved directly. No proof, dependency, or sketch repair is needed, so `Smallest Retry Target = None`.
