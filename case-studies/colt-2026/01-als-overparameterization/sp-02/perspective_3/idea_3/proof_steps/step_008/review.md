# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_008`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_008/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact oblique-basis projection transfer

- Statement fidelity: The lemma targets exactly the deterministic transfer from the accepted identity `\mathscr S_0=LQE` to the fixed-subspace projection consumed by this step, including the required `d=0` branch.
- Proof validity: For `d>0`, `LU` has full column rank and the formula `LU(U^{\mathsf T}L^{\mathsf T}LU)^{-1}U^{\mathsf T}L^{\mathsf T}` is the orthogonal projector onto `LQE`. Writing `b=U^{\mathsf T}L^{\mathsf T}x`, the identity for the squared projected norm is correct. The lower bound `U^{\mathsf T}L^{\mathsf T}LU\succeq\sigma_{\min}(L)^2I_d` and `\|U^{\mathsf T}X\|_2^2=\|P_{QE}X\|_F^2` give the displayed inequality. When `d=0`, both subspaces and both projection energies are zero.
- Cited-result and assumption audit: The only dependency input is the exact accepted factorization from Proposition~\ref{prop:step-006-exact-equivariance}; invertibility of `L` is part of that interface. No generated event or extra assumption is introduced.
- Rigor checklist: Matrix dimensions, invertibility, orthogonal-projector symmetry and idempotence, inverse Loewner order, Frobenius/Euclidean identification, and the degenerate branch are correct.
- Local adversarial test: The proof remains valid for a one-dimensional `E`, at the worst permitted singular value of `L`, and for `E=\{0\}`. It does not require `L` to be symmetric or orthogonal.
- Contribution to target step: Supplies the exact full-column oblique projection formula and the first singular-value factor with no residual.
- Verdict: PASS
- Repair direction: None.

### unit_002: Elliptic transfer with the exact condition-number loss

- Statement fidelity: The proposition preserves the exact raw subspace and target interface and exports precisely the worst-case elliptic comparison needed before the Haar specialization.
- Proof validity: Tensor-product singular values give `\sigma_{\min}(L)\ge\kappa_1^{-3}` and `\sigma_{\max}(L)\le\kappa_1^3`. Combining the preceding lemma with `\|L^{\mathsf T}x\|_F\le\sigma_{\max}(L)\|x\|_F` yields the factor `\sigma_{\min}(L)^{-2}\sigma_{\max}(L)^2\le\kappa_1^{12}`. Specializing to `x=D_r` is exact, and the `d=0` branch remains zero.
- Cited-result and assumption audit: Accepted realized conditioning and the accepted elliptic Gaussianization interface give `\sigma(H_m)\subset[\kappa_1^{-1},\kappa_1]`; accepted step 006 gives `L=H_a\otimes H_b\otimes H_c` and `\mathscr S_0=LQE`. All objects are fixed after conditioning as claimed.
- Rigor checklist: Transposition does not change singular values; the three-mode products, two squared extreme-singular-value losses, quantifiers over nonzero `x`, and raw Frobenius norm are correct.
- Local adversarial test: Simultaneously taking all lower singular values at `\kappa_1^{-1}` and all upper singular values at `\kappa_1` produces exactly the displayed worst-case `\kappa_1^{12}` bound. The identity-anisotropy case reduces to the direct product-Haar projection.
- Contribution to target step: Exports the exact anisotropic energy transfer for the unchanged raw target.
- Verdict: PASS
- Repair direction: None.

### unit_003: Exact raw target leverage bound

- Statement fidelity: The proposition uses the full accepted rank window, the exact dimension bound, the fixed-target Haar tail, and the preceding elliptic transfer to target exactly (LEV), not a normalized target, surrogate residual, or operator supremum.
- Proof validity: The mathematical argument is correct. Since `\kappa_1\ge1`, `\tau_\kappa=(4\kappa_1^{12})^{-1}` lies in `(0,1]`. Assumption~\ref{assump:rank_window} and `d\le3kr` give `d/r^3\le3k/r^2\le3r^{-3/4}`. The threshold `r\ge\lceil(12\kappa_1^{12})^{4/3}\rceil` is exactly equivalent to `3r^{-3/4}\le\tau_\kappa`, and equation (16) now encodes this comparison with the valid `\le` command. Conditioning on the factors and shapes fixes `L,E,d,X=L^{\mathsf T}D_r`, while `Q` remains product Haar. Thus the accepted tail with `t=\tau_\kappa` gives `h\le2\tau_\kappa`; the elliptic transfer and `\|D_r\|_F^2=r` give (LEV).
- Cited-result and assumption audit: Accepted Propositions~\ref{prop:step-006-product-shape} and \ref{prop:step-006-exact-equivariance} supply the fixed internal subspace, dimension bound, product-Haar independence, and exact raw span. Accepted Lemma~\ref{lem:step-007-sequential-twirl} and Proposition~\ref{prop:step-007-product-tail} supply the exact mean and tail. Assumption~\ref{assump:rank_window} supplies the maximal-rank inequality. No new event is assumed.
- Rigor checklist: The maximal case `k=\lfloor r^{5/4}\rfloor`, `d=0`, nonzero `X`, tolerance range, uniform integration over shapes, exponent `c_Hr/(16\kappa_1^{24})`, orthonormality calculation `\|D_r\|_F^2=r`, and repaired display syntax all pass.
- Local adversarial test: At maximal `k` and worst elliptic singular values, the chosen threshold still leaves exactly half the raw target energy as the upper bound. For `d=0`, (LEV) is deterministic. No retired incidence combinatorics, target supremum, or residual bridge is used.
- Contribution to target step: Derives the exact raw leverage certificate and its exponential conditional failure with a valid mean-threshold display.
- Verdict: PASS
- Repair direction: None.

### unit_004: Explicit conversion to the polynomial failure budget

- Statement fidelity: The lemma performs exactly the required conversion from the exponential failure exported by `unit_003` to `r^{-20}` using an explicit threshold depending only on `\kappa`.
- Proof validity: For `r\ge1`, `\log r\le\sqrt r`. The threshold `r\ge((20+\log8)/a_\kappa)^2` gives `a_\kappa\sqrt r\ge20+\log8`; multiplying by `\sqrt r` and using both `\sqrt r\ge\log r` and `\sqrt r\ge1` yields `a_\kappa r\ge20\log r+\log8`. Exponentiation gives `8e^{-a_\kappa r}\le r^{-20}`. The same maximum includes the mean-dominance threshold.
- Cited-result and assumption audit: The constant `a_\kappa=c_H/(16\kappa_1^{24})` is inherited directly from the accepted Haar exponent and the chosen tolerance. No external result or hidden constant is used.
- Rigor checklist: Positivity of `a_\kappa`, ceiling and maximum handling, monotonicity of `\sqrt r-\log r`, logarithm convention, and the final exponential algebra are correct.
- Local adversarial test: Equality at the explicit square threshold still gives the required domination. Enlarging `r` only strengthens the conversion.
- Contribution to target step: Supplies the exact conditional failure budget `r^{-20}` under an explicit admissible large-`r` threshold.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent mathematical subclaim was found. The full-column projector identity, inverse Gram bound, tensor-product singular values, exact `\kappa_1^{12}` loss, conditioning/disintegration, rank-window mean domination, `\|D_r\|_F^2=r`, shape integration, and exponential tail conversion all appear in named units or checked dependency restatements.

## Target Claim Audit

The derivation targets the exact sketch-row output: conditional on every realized factor triple in `\mathcal E_{\rm cond}`, the raw coefficient projection `\|P_{\mathscr S_0}D_r\|_F^2` is at most `r/2` with failure at most `r^{-20}` for the full window `r<k\le\lfloor r^{5/4}\rfloor` and sufficiently large `r` depending only on `\kappa`. The target `D_r`, span `\mathscr S_0`, Frobenius norm, and probability mode are unchanged. No retired `TOP`, `INC`, pointwise `P3`, or `21z` mechanism, normalized/surrogate target, operator supremum, residual gap, or theorem drift appears. The repaired mean-threshold display is syntactically and mathematically valid.

## Explicit Rate Audit

The exposed variables `r,k,d,\kappa,\kappa_1,\tau_\kappa,c_H,a_\kappa` are complete. Constants are universal or depend only on `\kappa` through displayed formulas and thresholds, not on `n,r,k`, the base triple, shapes, target direction, time, or horizon. The probability mode is conditional high probability after fixing factors, followed by a shape-uniform integration with no union loss; the horizon is initialization-only; the norm is raw coefficient Frobenius projection energy. The admissibility checks `\tau_\kappa\in(0,1]`, `d/r^3\le3k/r^2\le3r^{-3/4}\le\tau_\kappa`, `\kappa_1^{12}(2\tau_\kappa)=1/2`, and `8e^{-a_\kappa r}\le r^{-20}` are mathematically and syntactically valid under the explicit threshold. The identity case `L=I` reduces to the exact direct product-Haar bound, preserving the raw-target baseline.

## Notation Surface Audit

The proof exports only (LEV). The accepted objects `L,Q,E,d,h` retain their meanings; `U,b` and the oblique Gram matrix are proof-local; `X=L^{\mathsf T}D_r`, `\tau_\kappa`, `a_\kappa`, and `r_{0,\rm LEV}` are appropriately appendix-local with explicit provenance. Delimiter counts are balanced, no bare reference or citation command was found, and equation (16) now uses the valid relation command `\le`.

## Target-Step Assembly Audit

The four named local results, together with accepted steps 001, 006, and 007, imply the exact raw leverage claim and conditional `r^{-20}` failure budget. The assembly uses theorem-style labels, retains `D_r` and `\mathscr S_0` exactly, introduces no new bridge or lemma, and now contains a valid equation (16).

## Review Rationale

The current proof has the correct identity for sketch attempt 10, `step_008`, unit attempt 2. Comparison with the archived unit-attempt-1 proof shows exactly two changes: the unit-attempt field and the isolated correction of equation (16) from bare `le` to `\le`. The repaired inequality is valid, while all previously passing projection, singular-value, conditioning, threshold, probability, raw-target, notation, and assembly interfaces are unchanged. The sole prior blocker is discharged, so `ACCEPTED` with `Smallest Retry Target = None` is the controlled result.
