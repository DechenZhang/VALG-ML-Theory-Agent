# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_001`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_001/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_001

## Blocking Issues

1. **Location:** `unit_001`, displayed bound at proof line 141. **Defect:** the formula contains the literal text `\kappa,quad` rather than the LaTeX spacing command `\kappa,\quad`. This leaves the paper-ready statement malformed even though the intended operator bound is clear and is used correctly afterward. **Downstream effect:** the local lemma cannot be certified as a clean theorem-style proof unit for assembly. **Smallest repair direction:** correct this local typographical defect only; no claim, assumption, constant, rate, dependency, or sketch interface needs to change.

## Per-Lemma Audit

### unit_001: conditioning of the deterministic base matrices

- Statement fidelity: The statement exactly derives the required base singular interval from Assumption~\ref{assump:base_conditioning}.
- Proof validity: The factorization `\bar M=\bar M^\circ D_M`, the lower singular bound, and submultiplicative upper bound are mathematically correct. The displayed premise has the malformed `\kappa,quad` token identified above.
- Cited-result and assumption audit: No external result is needed; all inputs are primitive and correctly cited by stable assumption id.
- Rigor checklist: Column nonvanishing makes `D_M` invertible; rectangular dimensions, normalization, and the worst singular-value boundary are handled. The only defect is the paper-ready formula typo.
- Local adversarial test: At column norms and normalized singular values equal to their extreme values, the product bounds remain `\kappa^{-2}` and `\kappa^2`.
- Contribution to target step: Supplies exactly the deterministic margin needed by Weyl.
- Verdict: REVISE_STEP
- Repair direction: Replace the malformed spacing token without changing the derivation.

### unit_002: simultaneous Gaussian perturbation control

- Statement fidelity: The lemma proves the exact uniform three-mode perturbation event with failure at most `r^{-20}` and no upper restriction on `n`.
- Proof validity: Variance normalization `\Xi_M=(r^{-q}/\sqrt n)G_M` is exact. With `u_r=\sqrt{2\log(3r^{20})}`, the rectangular Gaussian operator tail gives per-mode failure `(3r^{20})^{-1}`. For `r\ge3` and `C(\kappa,q)\ge1`, `u_r^2\le42\log r\le r^4\log r\le n`, `n\ge r`, and hence the tail threshold is at most `3r^{-q}`. The displayed `r_{0,\rm cond}` gives `3r^{-q}\le(2\kappa^2)^{-1}`.
- Cited-result and assumption audit: The Gaussian operator-norm tail is restated in current notation with variance, objects, confidence parameter, and assumption discharge. Only Assumptions~\ref{assump:dimension} and \ref{assump:gaussian_smoothing} are used.
- Rigor checklist: The union over three modes is correct and needs no independence. Constants are uniform in the deterministic bases and improve as `n` increases. The choices cover `q=4`, `\kappa=1`, the smallest admitted `r`, and arbitrarily large `n`.
- Local adversarial test: At `n=C r^4\log r`, maximal variance scale, and `q=4`, all displayed inequalities remain valid; increasing `n` cannot worsen the bound.
- Contribution to target step: Supplies the exact perturbation radius and confidence budget consumed by Weyl.
- Verdict: PASS
- Repair direction: None.

### unit_003: realized-factor conditioning

- Statement fidelity: The proposition proves the exact `\mathcal E_{\rm cond}` interface with `\kappa_1=2\kappa^2` and adds only the valid pseudoinverse consequence.
- Proof validity: Weyl gives `\sigma_{\min}(M)\ge\kappa^{-2}-(2\kappa^2)^{-1}=(2\kappa^2)^{-1}`. The triangle inequality and `\kappa\ge1` give `\|M\|_{\rm op}\le\kappa^2+(2\kappa^2)^{-1}\le2\kappa^2`. Full column rank then yields `\|M^\dagger\|_{\rm op}=\sigma_{\min}(M)^{-1}\le\kappa_1`.
- Cited-result and assumption audit: Weyl is restated with current matrices and both prior named lemmas are cited. No dependency artifact or generated invariant is assumed.
- Rigor checklist: The bounds are simultaneous on the produced event, preserve the exact operator norm and probability mode, and cover equality at the worst permitted margins.
- Local adversarial test: Zero smoothing recovers the stronger base interval; perturbation at the allowed radius still leaves the claimed positive lower singular bound.
- Contribution to target step: Converts the two preceding units into precisely `\mathcal E_{\rm cond}` with failure `r^{-20}`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent mathematical subclaim was found. The product singular-value inequalities, Gaussian tail instantiation, dimension comparisons, three-mode union, Weyl transfer, and pseudoinverse identity are either proved in their named units or restated before use. The malformed token in `unit_001` is a local presentation defect, not a missing lemma or changed interface.

## Target Claim Audit

Apart from the paper-readiness defect, the proof establishes the exact sketch-row claim: uniformly over admissible deterministic bases, all `r\ge r_{0,\rm cond}(\kappa,q)`, every `n\ge C(\kappa,q)r^4\log r` with `C(\kappa,q)\ge1`, and all allowed `k`, smoothing produces `\mathcal E_{\rm cond}` with probability at least `1-r^{-20}`. The probability is smoothing-high-probability and therefore also valid in the joint smoothing-initialization space. No horizon, tangent, initialization-geometry, or trajectory claim is imported.

## Explicit Rate Audit

The exposed variables `n,r,\kappa,q,\rho=r^{-q}` are complete; `k` is correctly absent and the result is uniform over it. Hidden constants are limited to `\kappa,q`, while the bound is uniform in `n,k`, the base triple, initialization, and time. The proof explicitly states the initialization-only horizon and operator/singular-value norm mode. The choices
`u_r=\sqrt{2\log(3r^{20})}`,
`r_{0,\rm cond}=\max\{3,\lceil(6\kappa^2)^{1/q}\rceil\}`,
and `C(\kappa,q)\ge1` correctly discharge the `q\ge4` boundary, the `r^4\log r` dimension scale, the perturbation threshold, and the three-mode probability conversion. The zero-smoothing baseline gives a stronger interval and is preserved.

## Notation Surface Audit

`\kappa_1` is the sole public-facing export and has setting provenance. `\Xi_M` is appendix-local; `G_M`, `u_r`, `r_{0,\rm cond}`, and `\mathcal E_{\rm pert}` are properly proof-local with explicit definitions. `\mathcal E_{\rm cond}` is setting-defined and proved rather than assumed. The pseudoinverse bound is an appendix-local consequence. The only notation/presentation failure is the malformed `\kappa,quad` token in `unit_001`.

## Target-Step Assembly Audit

The assembly cites Lemma~\ref{lem:step-001-base-conditioning}, Lemma~\ref{lem:step-001-gaussian-perturbation}, and Proposition~\ref{prop:step-001-realized-conditioning} by theorem-style labels. These results jointly imply the exact event, singular bounds, uniformity, and failure probability. No bare unit ID or subsection title is used as mathematical authority, and there are no dependency artifacts.

## Review Rationale

The proof mechanism, constants, probability accounting, boundary regimes, and exact target assembly are sound under the accepted sketch. No sketch interface or dependency requires revision. However, the local-unit contract requires each non-atomic unit to be paper-ready, and `unit_001` currently contains a malformed displayed formula. The smallest valid route is therefore `REVISE_STEP` for `step_001`, limited to that typographical repair; the repaired producer still requires a fresh accepted `/proof-step-review step_001` before downstream use.
