# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_014`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_014/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: exact mode-span projection of the physical residual

- Statement fidelity: The lemma proves the exact same-target projection interface required by the accepted sketch row, for the actual physical residual (T-S(\theta)) and the setting-defined coefficient residual (D_r-\Psi_{A,B,C}(\theta)). It neither replaces (T) nor introduces a surrogate model or residual.
- Proof validity: Accepted Proposition~\ref{prop:step-001-realized-conditioning} makes (A,B,C) full column rank on \(\mathcal E_{\rm cond}\). Hence (P_M=M(M^{\mathsf T}M)^{-1}M^{\mathsf T}=MM^\dagger) is the orthogonal projector onto \(\operatorname{range}(M)\). Tensoring self-adjointness and idempotence makes \(\mathcal P=P_A\otimes P_B\otimes P_C\) the orthogonal projector onto the tensor product of the three ranges. The identities \(\mathcal PT=T=(A\otimes B\otimes C)D_r\) and \(\mathcal PS(\theta)=(A\otimes B\otimes C)\Psi_{A,B,C}(\theta)\) follow term by term, so their difference is exactly (T1). Orthogonality of \(\mathcal P v\) and \((I-\mathcal P)v\) gives the displayed Pythagorean decomposition.
- Cited-result and assumption audit: The only dependency used is the accepted sketch-attempt-10, unit-attempt-2 conditioning proposition. The inclusion \(\mathcal E_{\rm init\_norm}\subseteq\mathcal E_{\rm cond}\) discharges its later use. Projection legality, the tensor action, and Pythagoras are derived locally; no external result or generated condition is assumed.
- Rigor checklist: The coefficient tensor on the right of (T1) lies in \((\mathbb R^r)^{\otimes3}\), and (A\otimes B\otimes C) maps it into \((\mathbb R^n)^{\otimes3}\), matching the physical residual. The identity remains valid when any model column is zero. If the orthogonal residual component vanishes, Pythagoras is equality; if it is nonzero, its squared norm is nonnegative and can only increase the physical residual norm.
- Local adversarial test: Taking (S(\theta)) partly or wholly outside the product mode span does not change (T1): projection removes exactly those orthogonal components while preserving the in-span coefficient representation. No normalization of (D_r), quotient target, or alternative physical target appears.
- Contribution to target step: Establishes the exact physical-target bridge and proves that the sole discarded term is the nonnegative orthogonal squared residual \(\|(I-\mathcal P)(T-S(\theta))\|_F^2\).
- Verdict: PASS
- Repair direction: None.

### unit_002: positive relative physical loss

- Statement fidelity: The proposition uses precisely the accepted conditioning and raw-margin outputs to prove both bounds in (T2), strict target nonvanishing, and (T3) on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\). It exports no stronger probability, convergence, or trajectory claim.
- Proof validity: Compact singular-value decompositions show that the singular values of (A\otimes B\otimes C) are the products \(\sigma_i(A)\sigma_j(B)\sigma_\ell(C)\). Thus the exact operator bounds are \(\kappa_1^{-3}\|H\|_F\le\|(A\otimes B\otimes C)H\|_F\le\kappa_1^3\|H\|_F\). Since \(\|D_r\|_F=\sqrt r\), these give (0<\kappa_1^{-3}\sqrt r\le\|T\|_F\le\kappa_1^3\sqrt r\). Applying the lower product bound to the projected residual and the accepted step-013 floor yields \(\|T-S(\theta_\infty)\|_F\ge\kappa_1^{-3}(15/16)\delta_0\sqrt r\). The upper bound on \(\|T\|_F\) is then used in the correct direction, namely \(\sqrt r\ge\kappa_1^{-3}\|T\|_F\), producing the relative factor \((15/16)\delta_0\kappa_1^{-6}\) before squaring and exactly \(\epsilon_0=((15/16)\delta_0)^2\kappa_1^{-12}\).
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-013-preserved-raw-margin} supplies the exact raw endpoint norm floor on the unchanged conditional event, and accepted Proposition~\ref{prop:step-001-realized-conditioning} supplies all mode singular bounds. The endpoint raw margin already carries the needed endpoint object, so this row does not require a new convergence dependency or hypothesis.
- Rigor checklist: Because \(r\ge1\), \(\delta_0=1/8>0\), and \(\kappa_1=2\kappa^2>0\), both \(\|T\|_F\) and \(\epsilon_0(\kappa)\) are strictly positive. The Frobenius norm, tensor dimensions, conditional event, and endpoint horizon remain unchanged throughout. No hidden constant or probability conversion is used.
- Local adversarial test: For (r=1), \(\|D_r\|_F=1\) and all inequalities remain valid. Equality in any permitted singular bound still leaves the lower product positive. A zero projected-orthogonal component gives equality in the projection comparison, while a nonzero one only strengthens it. A zero raw residual contradicts the accepted positive floor; a zero target contradicts injectivity of (A\otimes B\otimes C) on nonzero (D_r). Zero model columns do not affect the projection identity. At (E_{\rm path}=0\), the accepted full raw margin gives the stated stronger baseline constant \(\delta_0^2\kappa_1^{-12}\).
- Contribution to target step: Transfers the accepted exact raw margin to the actual physical loss and performs the correctly directed relative normalization with exponent \(-12\).
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. Orthogonal-projector legality, the two termwise projection identities, Pythagoras, tensor-product singular values, \(\|D_r\|_F=\sqrt r\), target nonvanishing, comparison direction, squaring, positivity, and all requested boundary cases are stated and proved within the two mapped units. No external citation, surrogate target, normalized residual, or unlisted event is used.

## Target Claim Audit

The proof establishes exactly the sketch-attempt-10 `step_014` claim on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\):
\[
  (P_A\otimes P_B\otimes P_C)(T-S(\theta_\infty))
  =(A\otimes B\otimes C)(D_r-\Psi_{A,B,C}(\theta_\infty)),
\]
the two bounds in (T2), and
\[
  F(\theta_\infty)\ge
  \left((15/16)\delta_0\right)^2\kappa_1^{-12}\|T\|_F^2>0.
\]
The objects are the exact physical target and model from `setting.md`. Projection discards only the nonnegative orthogonal residual component. The proof retains the sole theorem-facing conditional hypothesis \(\mathcal C_{\rm path}\) and does not assert a probability lower bound for it.

## Explicit Rate Audit

The exposed variables and constants are (r\ge1), \(\kappa\ge1\), \(\kappa_1=2\kappa^2\), \(\delta_0=1/8\), the absolute \(\sqrt r\)-scale floor, and \(\epsilon_0(\kappa)=((15/16)\delta_0)^2\kappa_1^{-12}\). There are no hidden constants and no dependence on (n,k,q), the base triple, realization, time, or horizon. Probability mode is deterministic conditional-on-event; horizon mode is the accepted asymptotic endpoint; norm mode is raw coefficient and physical tensor Frobenius norm together with mode-matrix singular values. Equations (9)--(11) explicitly perform the only rate specialization, with no dropped term or probability conversion. The zero-path baseline preserves the stronger full-margin constant.

## Notation Surface Audit

The setting and dependency objects remain public-facing. The aliases \(\mathcal P\) and \(\mathcal L\) are appendix-local and have explicit domains through their definitions; compact-SVD factors are proof-local. The only new public-facing quantity is \(\epsilon_0(\kappa)\), defined directly from setting constants with explicit positive value and no hidden dependence. No helper dictionary or notation drift obscures the target identity or singular-value transfer.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-014-mode-span-projection} proves (T1) and the exact orthogonal decomposition for the actual physical residual. Proposition~\ref{prop:step-014-positive-physical-loss} combines that named lemma with accepted Propositions~\ref{prop:step-001-realized-conditioning} and \ref{prop:step-013-preserved-raw-margin} to prove (T2)--(T3). These named results jointly imply the full target without an additional lemma, altered dependency, or missing raw-to-physical interface.

## Review Rationale

Both local units are exact and contract-valid. The first establishes the same-target orthogonal projection identity; the second uses the exact tensor singular products and correctly directed target comparison to obtain the positive relative floor with exponent \(-12\). Conditional scope, strict positivity, and the (r=1), equality, zero-component, and zero-path boundaries are all covered. No substantive repair or missing interface is present, so the overload rule does not trigger sketch revision and `ACCEPTED` with `Smallest Retry Target = None` is the smallest controlled result.
