# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_011`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_011/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: finite total variation gives a finite balanced-factor limit

- Statement fidelity: The lemma proves exactly the first part of the accepted `step_011` row. Under Assumption~\ref{assump:gd_step}, its sole local conditional hypothesis is the setting-defined \(\mathcal C_{\rm path}\), and that hypothesis contains only the finite nonnegative series \(\sum_{t\ge0}d_{\rm bal}(\theta_{t+1},\theta_t)\le E_\star\). The statement does not assume convergence, boundedness, trapping, loss control, or any stronger trajectory property.
- Proof validity: Repeated use of the triangle inequality in the exact Euclidean product metric gives \(d_{\rm bal}(\theta_s,\theta_t)\le\sum_{u=s}^{t-1}\ell_u\). Since the nonnegative partial sums converge to the finite value \(E_{\rm path}\), the exact tails \(R_s=\sum_{u=s}^\infty\ell_u\) decrease to zero. This proves the Cauchy property without circularly using a limit. The space \((\mathbb R^{n\times k})^3\), equipped with the displayed product Frobenius norm, is finite-dimensional and complete, so the proof legally derives a finite \(\theta_\infty\).
- Cited-result and assumption audit: Assumption~\ref{assump:gd_step} is used only to identify the setting trajectory. Finite-dimensional Euclidean completeness is restated in the exact current norm and needs no external citation. No dependency event or probabilistic conclusion is used in this unit.
- Rigor checklist: The proof handles arbitrary \(s,t\), the empty or zero-tail cases, the exact infinite-series definition, and both boundary values \(E_{\rm path}=0\) and \(E_{\rm path}=E_\star\). At zero path, nonnegativity forces every increment to vanish and hence \(\theta_t=\theta_0\) for all \(t\). No convergence-mode or probability-mode upgrade occurs.
- Local adversarial test: A path with slowly decaying but summable increments remains covered because only the tail sum, not a rate of decay, is used. A bounded but nonsummable path would not satisfy \(\mathcal C_{\rm path}\), so the argument does not silently replace finite variation by boundedness. The limit is taken in the same metric as the increments, not in a quotient or altered trajectory metric.
- Contribution to target step: Supplies the noncircular existence of the finite endpoint consumed by the radius propositions and downstream endpoint arguments.
- Verdict: PASS
- Repair direction: None.

### unit_002: horizon-uniform path and endpoint radius

- Statement fidelity: The proposition exports precisely the horizon-uniform and endpoint displacement bounds required by the sketch row: \(d_{\rm bal}(\theta_t,\theta_0)\le E_{\rm path}\le E_\star\le1\) for every finite \(t\), and \(d_{\rm bal}(\theta_\infty,\theta_0)\le E_{\rm path}\le E_\star\).
- Proof validity: The finite-time inequality is equation (1) with \(s=0\), followed by monotonicity of the nonnegative partial sums. The endpoint inequality follows by continuity of the exact Euclidean product norm under the convergence proved in Lemma~\ref{lem:step-011-finite-path-limit}. The setting definition of \(E_\star\) gives \(E_\star\le1\) directly.
- Cited-result and assumption audit: The only mathematical input beyond the setting definition is the preceding named lemma. The proposition does not use the probability estimate from `step_010`, an all-time invariant, or an assumed endpoint.
- Rigor checklist: The case \(t=0\) is covered by the empty sum, the bounds are non-strict at \(E_{\rm path}=E_\star\), and the endpoint bound preserves the exact path budget rather than replacing it by a larger constant. The horizon is genuinely all finite times plus the limit.
- Local adversarial test: At \(E_{\rm path}=0\), the endpoint bound yields the already-proved identity \(\theta_\infty=\theta_0\). At the maximal budget, no strict slack is needed. The proof would fail for a merely bounded path, but that weaker condition is neither assumed nor claimed.
- Contribution to target step: Provides the exact displacement interface needed for component-radius control and for the downstream one-endpoint Taylor estimate.
- Verdict: PASS
- Repair direction: None.

### unit_003: uniform component bounds along the path and at the limit

- Statement fidelity: On the exact event \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the proposition proves the requested radius \(2+E_\star\le3\) for every component, every mode, every finite time, and the endpoint. It neither strengthens the claim to an unconditional trajectory theorem nor adds a balanced-limit or stationary-point conclusion.
- Proof validity: The accepted `step_010` interface and the setting's exact event intersection give \(\mathcal E_{\rm init\_norm}\subseteq\mathcal E_{\rm size}\); accepted `step_004` identifies the constituent's deterministic content \(\|m_{i,0}\|_2\le2\). For each mode and column, \(\|m_{i,t}-m_{i,0}\|_2\le\|M_t-M_0\|_F\le d_{\rm bal}(\theta_t,\theta_0)\), so Proposition~\ref{prop:step-011-path-radius} gives the finite-time bound. Product-space convergence implies blockwise Frobenius and columnwise Euclidean convergence, and the same endpoint displacement inequality gives the limit bound.
- Cited-result and assumption audit: Proposition~\ref{prop:step-004-balanced-size-transfer} and Propositions~\ref{prop:step-010-conditional-union}--\ref{prop:step-010-public-confidence} are current accepted dependencies for sketch attempt 10 and unit attempt 1. Only the exact event inclusion and initial radius are consumed; the initialization probability is not converted into deterministic convergence.
- Rigor checklist: The column-versus-Frobenius comparison has the correct direction, and each mode Frobenius norm is dominated by the full product norm. Quantifiers over \(i\), mode, and time are explicit. Both \(E_{\rm path}=0\) and \(E_{\rm path}=E_\star\) give the claimed non-strict radius, including at \(\theta_\infty\).
- Local adversarial test: A single column may realize all of a mode's displacement, but the Frobenius bound still controls it. The argument does not use cancellation among modes or components. The exact order of \(\mathcal E_{\rm size}\) and \(\mathcal E_{\rm deficit}\) in the event intersection is immaterial by commutativity and does not alter the event.
- Contribution to target step: Exports the radius-\(3\) domain required by later Taylor and physical-loss steps.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The triangle/tail-sum estimate, vanishing tails, completeness argument, endpoint passage, event inclusion, column-versus-Frobenius comparison, and finite-time/limit radius bounds are all represented by the three mapped units and proved where used. The proof does not assume convergence or boundedness through \(\mathcal C_{\rm path}\), and it does not infer either property from Assumption~\ref{assump:gd_step}.

No additional balanced-limit property is consumed by this row or its downstream sketch interfaces. The exported object is the ambient product-space limit of the setting-defined balanced-GD representatives, together with its displacement and column bounds. The proof does not silently assert equality of the three limiting component norms, preservation of a nonzero branch, fixed-point behavior, or any quotient-space property; `step_012` through `step_015` require only the finite endpoint, the exact \(d_{\rm bal}\) displacement, and radius \(3\).

## Target Claim Audit

The proof establishes the exact accepted `step_011` claim on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\): the setting trajectory converges in the unaltered metric \(d_{\rm bal}\) to a finite \(\theta_\infty\), every finite-time and endpoint displacement from initialization is at most \(E_\star\), and every factor column at every finite time and at the limit has norm at most \(3\). The sole local conditional hypothesis remains finite total variation. No unconditional convergence statement, positive probability for \(\mathcal C_{\rm path}\), loss conclusion, or stronger balancing assertion is added.

## Explicit Rate Audit

The step is horizon-uniform and quantitatively explicit. It exposes the increments \(\ell_t\), tail sums, \(E_{\rm path}\), \(E_\star\), the initial radius \(2\), and the output radius \(3\). There are no hidden constants. Probability mode is deterministic conditional-on-event; horizon mode is all finite times plus the asymptotic endpoint; norm mode is the exact product Frobenius metric, with mode Frobenius and column Euclidean norms obtained by displayed domination. The required simplifications are explicit:
\[
  d_{\rm bal}(\theta_s,\theta_t)
  \le \sum_{u=s}^{t-1}\ell_u
  \le \sum_{u=s}^{\infty}\ell_u\to0,
\]
\[
  d_{\rm bal}(\theta_t,\theta_0),\,
  d_{\rm bal}(\theta_\infty,\theta_0)
  \le E_{\rm path}\le E_\star,
  \qquad 2+E_\star\le3.
\]
No probability conversion, term absorption by prose, or convergence-mode upgrade occurs. The zero-path baseline is exact: \(\theta_\infty=\theta_0\).

## Notation Surface Audit

The ambient space \(\mathcal H\), increments \(\ell_t\), partial sums \(S_N\), and tails \(R_s\) are correctly classified as proof-local. Generic mode and column aliases are appendix-local. The only new public-facing object is the derived endpoint \(\theta_\infty\); the other public quantities and events are setting defined. The step exports only the minimal downstream interface: convergence, endpoint displacement, and radius \(3\).

## Target-Step Assembly Audit

Lemma~\ref{lem:step-011-finite-path-limit} derives convergence from the sole finite-variation certificate. Proposition~\ref{prop:step-011-path-radius} converts the same path budget into exact finite-time and endpoint displacement bounds. Accepted `step_004` and `step_010` provide \(\mathcal E_{\rm init\_norm}\subseteq\mathcal E_{\rm size}\) and the initial radius \(2\), and Proposition~\ref{prop:step-011-uniform-factor-radius} combines these with the displacement bounds to obtain radius \(3\) at every finite time and at the endpoint. These named results jointly imply the exact sketch-row claim with no missing all-time bridge or changed dependency interface.

## Review Rationale

All three units are faithful, noncircular, and complete in the exact setting metric. Finite total variation supplies the entire convergence mechanism; accepted initialization outputs supply only the initial radius; and the proof keeps the conditional and probability modes unchanged. The boundary cases, endpoint passage, componentwise norm transfer, and downstream interface are all explicit. There is no local flaw or sketch/interface defect, so `ACCEPTED` with `Smallest Retry Target = None` is the controlled result.
