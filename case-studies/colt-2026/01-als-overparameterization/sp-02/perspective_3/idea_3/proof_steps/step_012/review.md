# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_012`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_012/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: exact trilinear coefficient expansion

- Statement fidelity: The lemma targets the exact raw map in `setting.md`, uses the fixed realized left inverses, and identifies precisely the value term, three first-order terms, three quadratic terms, and one cubic term for every component. It neither changes coordinates nor invokes a generic smoothness surrogate.
- Proof validity: Linearity gives \(A^\dagger x_i'=\alpha_i+\Delta\alpha_i\) and its two mode analogues. Expanding the product of these three two-term factors gives exactly eight tensors. The three terms containing one increment form the displayed linear map in \((\Delta X,\Delta Y,\Delta Z)\), which is the Frechet derivative of the trilinear polynomial map; subtracting them and the value leaves exactly the four displayed higher-order tensors. There is no omitted mixed term or multiplicity.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-001-realized-conditioning} supplies full column rank on \(\mathcal E_{\rm cond}\), so the coefficient convention is exactly the setting convention. The algebra uses only the fixed maps \(A^\dagger,B^\dagger,C^\dagger\), with no trajectory property or additional primitive condition.
- Rigor checklist: Tensor dimensions are \(r\times r\times r\), the derivative is linear in the full product-space increment, and the identity holds for every finite \(k\), including zero component increments. No limit interchange, probability statement, or asymptotic notation is used.
- Local adversarial test: Setting any one or two increment blocks to zero removes exactly the terms containing those blocks; setting all three to zero leaves a zero remainder. These specializations expose no missing term.
- Contribution to target step: Supplies exactly the three quadratic families and one cubic family bounded in the next proposition.
- Verdict: PASS
- Repair direction: None.

### unit_002: quadratic raw Taylor bound from a base-column radius

- Statement fidelity: The proposition proves the generic Taylor interface under accepted conditioning, a radius condition only on the base columns, and \(0\le d\le1\). Its conclusion has exactly \(C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R)\) and imposes no comparison-point radius.
- Proof validity: Each fixed left inverse contributes one factor \(\kappa_1\). For \(Q_{xy}\), finite-sum Cauchy gives
  \[
    \sum_i\|\Delta x_i\|_2\|\Delta y_i\|_2
    \le \|\Delta X\|_F\|\Delta Y\|_F\le d^2,
  \]
  and the unchanged third coefficient contributes at most \(\kappa_1R\); the \(xz\) and \(yz\) families follow identically. Hence each quadratic family is at most \(\kappa_1^3Rd^2\). For the cubic family,
  \[
    \sum_i a_ib_ic_i
    \le \|a\|_2\Bigl(\sum_i b_i^2c_i^2\Bigr)^{1/2}
    \le \|a\|_2\|b\|_2\|c\|_2,
  \]
  because \(\sum_i b_i^2c_i^2\le(\sum_i b_i^2)(\sum_i c_i^2)\). Each block norm is at most \(d\), so the cubic family is at most \(\kappa_1^3d^3\le\kappa_1^3d^2\). The four family bounds sum exactly to \(\kappa_1^3(3R+1)d^2\).
- Cited-result and assumption audit: The pseudoinverse bounds are restated in current notation and match accepted `step_001`. The rank-one Frobenius identity and both finite-sum inequalities are stated and discharged on finite component-norm sequences. No external theorem, unproved invariant, or normalized-coordinate result is used.
- Rigor checklist: All norm comparisons have the correct direction, no factor depending on \(k\) is lost, and all constants are visible. The estimate covers \(R=0\), \(d=0\), and \(d=1\); only the cubic degree reduction uses \(d\le1\). The quadratic bounds are loose but valid because every block Frobenius norm is at most \(d\).
- Local adversarial test: If all displacement lies in one mode, every higher-order family vanishes. If all three blocks concentrate on one component, the cubic inequality still applies without independence or orthogonality. At \(d=1\), \(d^3=d^2\), so no strict slack is hidden.
- Contribution to target step: Establishes the exact deterministic raw-coefficient remainder bound and constant consumed by the endpoint specialization.
- Verdict: PASS
- Repair direction: None.

### unit_003: one-endpoint raw coefficient remainder

- Statement fidelity: The proposition specializes only to \((\theta_0,\theta_\infty)\) on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\). It preserves the conditional scope, raw coefficient Frobenius norm, single-endpoint horizon, radius \(R=3\), and required constant.
- Proof validity: Accepted Proposition~\ref{prop:step-011-uniform-factor-radius} supplies the base-column radius at \(\theta_0\), while Proposition~\ref{prop:step-011-path-radius} supplies \(d_{\rm bal}(\theta_\infty,\theta_0)\le E_\star\le1\). Since \(\mathcal E_{\rm init\_norm}\subseteq\mathcal E_{\rm cond}\), accepted `step_001` supplies the left-inverse bounds on the same realization. Proposition~\ref{prop:step-012-raw-remainder} gives the first two inequalities, and
  \[
    E_\star=\min\left\{1,\sqrt{\frac{\delta_0}
      {16C_{\rm CP}(\kappa,3)}}\right\}
  \]
  gives \(C_{\rm CP}(\kappa,3)E_\star^2\le\delta_0/16\).
- Cited-result and assumption audit: The accepted `step_011` results are restated with the actual endpoint, exact metric, event, and radius. Accepted `step_001` is used only through constituent conditioning. No endpoint, radius, or conditioning fact is promoted to a primitive assumption.
- Rigor checklist: Only the base radius is consumed; no bound on \(\theta_\infty\) is needed by the generic proposition. The endpoint is finite before evaluation, the event inclusion is exact, and all inequalities are non-strict. At zero path the remainder vanishes; at unit displacement the generic bound remains valid.
- Local adversarial test: The conditional path probability may be zero without changing this deterministic implication. At maximal \(E_\star\), the defining minimum yields both \(E_\star\le1\) and the exact absorption inequality. No per-time estimate is summed or upgraded.
- Contribution to target step: Exports precisely the one-endpoint raw remainder interface consumed by `step_013`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. Lemma~\ref{lem:step-012-exact-expansion} contains the eight-term expansion and derivative identification. Proposition~\ref{prop:step-012-raw-remainder} contains the three quadratic estimates, cubic finite-sum inequality, degree reduction, and exact constant. Proposition~\ref{prop:step-012-endpoint-remainder} contains the event inclusion, base-radius discharge, endpoint displacement, and \(E_\star\) absorption. The proof uses no generic smoothness assertion, big-O term, time accumulation, physical-residual substitution, or unstated comparison-point bound.

## Target Claim Audit

The proof establishes the exact accepted `step_012` claim. On \(\mathcal E_{\rm cond}\), for every base point of column radius at most \(R\ge0\) and every comparison point with \(d_{\rm bal}(\theta',\theta)\le1\), the raw coefficient remainder is at most
\[
  \kappa_1^3(1+3R)d_{\rm bal}(\theta',\theta)^2.
\]
On \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), this specializes to \((\theta_0,\theta_\infty)\), \(R=3\), and remainder at most \(C_{\rm CP}(\kappa,3)E_\star^2\le\delta_0/16\). Quantifiers, conditional scope, norm, and downstream output match the setting and sketch without strengthening or weakening.

## Explicit Rate Audit

The step is rate-bearing and exposes \(\kappa_1=2\kappa^2\), \(R\), \(d\), \(C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R)\), and at the endpoint \(R=3\), \(E_\star\), and \(\delta_0\). There are no hidden constants or dependence on \(n,r,k\), component index, initialization realization, time, or horizon. Probability mode is deterministic on the stated event; horizon mode is one endpoint; norm mode is raw coefficient tensor Frobenius norm controlled by physical product Frobenius displacement. The displayed absorptions are the three \(\kappa_1^3Rd^2\) bounds, \(\kappa_1^3d^3\le\kappa_1^3d^2\), and \(C_{\rm CP}(\kappa,3)E_\star^2\le\delta_0/16\). The zero-displacement and zero-path baseline has exactly zero remainder.

## Notation Surface Audit

The setting-defined \(\Psi_{A,B,C}\), \(d_{\rm bal}\), \(\kappa_1\), \(C_{\rm CP}\), \(E_\star\), and \(\delta_0\) are correctly public-facing. Physical increments and their exact raw coefficient images are appendix-local. The four family names and scalar norm sequences are proof-local and are not exported. The local parameters \(R,d\) have explicit proposition-level provenance and are discharged before endpoint export. No helper dictionary obscures a bound; the sole new public-facing output is the endpoint remainder inequality.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-012-exact-expansion} supplies the four exact remainder families. Proposition~\ref{prop:step-012-raw-remainder} combines the accepted left-inverse bound with the rank-one Frobenius identity and finite-sum inequalities to prove the generic constant. Proposition~\ref{prop:step-012-endpoint-remainder} combines that result with accepted `step_011` endpoint and radius interfaces and the exact definition of \(E_\star\). These named units and dependencies jointly imply the exact sketch-row output; the assembly uses no bare unit ID, subsection title, global diagnostic, or unreviewed bridge.

## Review Rationale

Every local unit is faithful and complete. The polynomial expansion is exact, all tensor and finite-sum inequalities are valid with the displayed constants, and the endpoint specialization uses only accepted generated outputs while preserving conditional scope. No local repair, dependency repair, or sketch-interface change is needed, so `ACCEPTED` with `Smallest Retry Target = None` is the controlled result.
