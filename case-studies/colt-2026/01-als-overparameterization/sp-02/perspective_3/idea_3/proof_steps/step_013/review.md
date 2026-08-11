# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_013`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_013/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: raw tangent-range cancellation at initialization

- Statement fidelity: The lemma proves exactly the derivative-range interface required by the accepted sketch row. It evaluates the raw coefficient map at the unmodified base point \(\theta_0\), uses the physical endpoint increment \(\Delta\theta=\theta_\infty-\theta_0\), and concludes membership in the exact setting-defined raw span \(\mathscr S_0\), followed by pairing cancellation against the accepted raw witness \(W_0\).
- Proof validity: Accepted Lemma~\ref{lem:step-012-exact-expansion} gives
  \[
  \begin{aligned}
    D\Psi_{A,B,C}(\theta_0)[\Delta\theta]
    =\sum_{i=1}^k\bigl(&
      (A^\dagger\Delta x_i)\otimes\beta_{i,0}\otimes\gamma_{i,0}
      +\alpha_{i,0}\otimes(B^\dagger\Delta y_i)\otimes\gamma_{i,0}\\
      &+\alpha_{i,0}\otimes\beta_{i,0}\otimes(C^\dagger\Delta z_i)
    \bigr).
  \end{aligned}
  \]
  The three displayed summands belong respectively to the three raw tangent-generator families in `setting.md`, because each left-inverse image is an element of \(\mathbb R^r\). Their finite sum is therefore in \(\mathscr S_0\). Accepted Proposition~\ref{prop:step-009-raw-witness} gives the exact orthogonality \(W_0\perp\mathscr S_0\), so the derivative pairing is exactly zero.
- Cited-result and assumption audit: The derivative formula is restated in current raw coordinates from accepted `step_012`; witness orthogonality is restated from accepted `step_009`; and endpoint existence is supplied by accepted `step_011`. All three dependency reviews match sketch attempt 10 and their current unit attempt 1 proofs. No primitive condition or generated invariant is silently added.
- Rigor checklist: The argument is valid for every endpoint increment, including zero, and requires neither componentwise membership of the physical increment nor a trajectory tangent hypothesis. It uses only linearity of the fixed left inverses and the algebraic definition of \(\mathscr S_0\). There is no normalized target, quotient tangent, gauge representative, hidden closure operation, limiting interchange, or unsupported derivative-range assertion.
- Local adversarial test: Even if \(\Delta x_i,\Delta y_i,\Delta z_i\) have arbitrary components outside the realized factor spans, their left-inverse images remain arbitrary vectors in \(\mathbb R^r\), which the three generator families already allow. At \(\Delta\theta=0\), the derivative and pairing both vanish exactly.
- Contribution to target step: Removes the complete first-order endpoint contribution in the exact raw coefficient pairing, leaving only the accepted initial margin and the one endpoint remainder.
- Verdict: PASS
- Repair direction: None.

### unit_002: preserved positive raw coefficient margin

- Statement fidelity: The proposition proves both exact outputs of `step_013` on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\): the positive pairing floor and the raw coefficient Frobenius-norm floor, each with constant \((15/16)\delta_0\sqrt r\). It does not transfer to physical coordinates, accumulate errors over time, change the conditional scope, or strengthen the conclusion.
- Proof validity: With
  \[
    R_\infty=\Psi_{A,B,C}(\theta_\infty)-\Psi_{A,B,C}(\theta_0)
      -D\Psi_{A,B,C}(\theta_0)[\theta_\infty-\theta_0],
  \]
  rearrangement gives the exact endpoint decomposition
  \[
    D_r-\Psi_{A,B,C}(\theta_\infty)
    =D_r-\Psi_{A,B,C}(\theta_0)
      -D\Psi_{A,B,C}(\theta_0)[\Delta\theta]-R_\infty.
  \]
  The setting identity \(\Psi_{A,B,C}(\theta_0)=\widehat D_0\), `unit_001` cancellation, and the accepted initial margin reduce the pairing to a lower bound by \(\delta_0\sqrt r-\langle R_\infty,W_0\rangle_F\). The proof correctly assigns no sign to this last term and instead uses
  \[
    |\langle R_\infty,W_0\rangle_F|
    \le \|R_\infty\|_F\|W_0\|_F
    =\|R_\infty\|_F
    \le \frac{\delta_0}{16}
    \le \frac{\delta_0\sqrt r}{16}.
  \]
  Thus the pairing is at least \((15/16)\delta_0\sqrt r>0\). A second unit-witness Cauchy--Schwarz application then gives the same lower bound for \(\|D_r-\Psi_{A,B,C}(\theta_\infty)\|_F\).
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-009-raw-witness} supplies unit norm and the initial raw margin; accepted Lemma~\ref{lem:step-011-finite-path-limit} and Proposition~\ref{prop:step-011-path-radius} supply the endpoint and conditional path interface; accepted Proposition~\ref{prop:step-012-endpoint-remainder} supplies exactly the single-endpoint raw remainder bound. The proof consumes no unproved convergence, coefficient margin, physical transfer, or extra path condition.
- Rigor checklist: The inequality \(\delta_0/16\le\delta_0\sqrt r/16\) uses only \(r\ge1\), and positivity of the resulting pairing justifies dropping the absolute value in the final norm floor. Constants, signs, norm modes, and the one-endpoint horizon are all exact. No hidden constant or probability conversion appears.
- Local adversarial test: If \(E_{\rm path}=0\), accepted `step_011` gives \(\theta_\infty=\theta_0\) and hence \(R_\infty=0\), preserving the full initial margin. At \(E_{\rm path}=E_\star\), the accepted non-strict remainder bound still applies. Equality in the initial margin remains sufficient under the worst-sign remainder, and at \(r=1\) the last scale comparison is equality. An adversarial sign of \(\langle R_\infty,W_0\rangle_F\) is already covered by absolute value.
- Contribution to target step: Absorbs the sole nonlinear endpoint defect and exports exactly the positive raw coefficient floor consumed by `step_014`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The exact derivative formula, membership of each of its three summand families, witness orthogonality, endpoint decomposition, initial identity \(\Psi_{A,B,C}(\theta_0)=\widehat D_0\), worst-sign remainder control, and unit-witness norm conversion are all stated and proved within the two mapped units or supplied by current accepted dependencies. The proof introduces no normalized or quotient tangent, closure argument, physical-coordinate comparison, time sum, or changed conditional hypothesis.

## Target Claim Audit

The proof establishes the exact sketch-attempt-10 `step_013` claim on the unchanged event \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\):
\[
  \left\langle D_r-\Psi_{A,B,C}(\theta_\infty),W_0\right\rangle_F
  \ge \frac{15}{16}\delta_0\sqrt r,
  \qquad
  \left\|D_r-\Psi_{A,B,C}(\theta_\infty)\right\|_F
  \ge \frac{15}{16}\delta_0\sqrt r.
\]
All objects remain the raw setting objects, and the sole theorem-facing conditional hypothesis remains \(\mathcal C_{\rm path}\). The proof neither assumes nor performs physical transfer and makes no statement about the conditional event's probability.

## Explicit Rate Audit

The step exposes \(r\ge1\), \(\delta_0=1/8\), the accepted endpoint error \(\delta_0/16\), and the retained margin \((15/16)\delta_0\sqrt r\). There are no hidden constants. Probability mode is deterministic conditional-on-event; horizon mode is the single accepted asymptotic endpoint; norm mode is the exact raw coefficient Frobenius norm and pairing. The complete absorption is displayed as
\[
  |\langle R_\infty,W_0\rangle_F|
  \le\|R_\infty\|_F
  \le C_{\rm CP}(\kappa,3)E_\star^2
  \le\frac{\delta_0}{16}
  \le\frac{\delta_0\sqrt r}{16}.
\]
No probability conversion, auxiliary choice, or rate specialization is made. The zero-path baseline preserves the full initial margin, and the maximal-path, equality-margin, and \(r=1\) boundaries remain valid with non-strict inequalities.

## Notation Surface Audit

The only new helper \(R_\infty\) is correctly classified as appendix-local and is the exact accepted endpoint Taylor remainder. The endpoint increment and component increments are appendix-local aliases. The setting and dependency objects remain public-facing, and the sole newly exported public interface is the coefficient floor. No helper dictionary, one-off public constant, or unnecessary theorem-facing notation is introduced.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-013-tangent-cancellation} places the exact derivative at \(\theta_0\) in \(\mathscr S_0\) and cancels it against the accepted raw normal witness. Proposition~\ref{prop:step-013-preserved-raw-margin} combines that named result with accepted Proposition~\ref{prop:step-009-raw-witness}, accepted endpoint existence from `step_011`, accepted Proposition~\ref{prop:step-012-endpoint-remainder}, and the setting identity at \(\theta_0\). These inputs jointly imply the exact pairing and norm floors without an additional lemma, dependency, or interface change.

## Review Rationale

Both local units are exact and contract-valid. The first proves derivative-range membership directly from the three setting-defined raw tangent families; the second performs a worst-sign endpoint absorption with the unit witness and retains the required positive margin in every requested boundary case. No local repair, dependency repair, or sketch revision is needed, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest controlled result.
