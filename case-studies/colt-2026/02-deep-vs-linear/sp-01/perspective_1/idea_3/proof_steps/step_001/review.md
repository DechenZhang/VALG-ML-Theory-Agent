# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_001/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Finite-ball forward envelope

- Statement fidelity: The lemma supplies exactly the forward-coordinate control required by the accepted `step_001` row. It quantifies over every deterministic initialization, every parameter in the same closed coordinate ball used to define \(G_r\), and every Boolean input, without asserting that an SGD trajectory belongs to that ball.
- Proof validity: For \(B=\max\{1,\lVert\theta^{(0)}\rVert_\infty+r\}\), every weight coordinate in the ball has magnitude at most \(B\). Starting from \(\lvert z_{0,k}\rvert=\lvert x_k\rvert=1=a_0\), the exact layer equation gives
  \[
  |u_{\ell,j}|
  \le \sum_{k=1}^{n_{\ell-1}}|\theta_{\ell,jk}|\,|z_{\ell-1,k}|
  \le n_{\ell-1}Ba_{\ell-1}=a_\ell,
  \]
  and \(0\le\sigma(v)\le|v|\) gives the same bound for \(z_{\ell,j}\). The induction therefore proves the stated envelope at every hidden layer.
- Cited-result and assumption audit: No citation or dependency is used. The finite architecture and Boolean input normalization come from the basic setting and Assumption~\ref{assump:fixed-source-witnesses}; the deterministic finite radius is the primitive part of Assumption~\ref{assump:robust-tube} used here. Event membership, event probability, trajectory containment, gate stability, and selector continuity are not assumed.
- Rigor checklist: The recurrence has the correct fan-in factor \(n_{\ell-1}\), and its closed form \(a_\ell=B^\ell\prod_{q=0}^{\ell-1}n_q\) is correct. All quantities are finite because the architecture has finitely many finite coordinates and \(r<\infty\). Weak inequalities cover the radius boundary. For \(L=1\), the hidden-layer induction is correctly vacuous and \(a_0=1\).
- Local adversarial test: Zero weights, zero preactivations, width-one layers, negative inputs, and points with \(\lVert\theta-\theta^{(0)}\rVert_\infty=r\) all obey the same coordinate estimate. No lower bound, differentiability, or nonzero-gate condition is used.
- Contribution to target step: It supplies the exact bounded activation factor in every layer-gradient outer product used by Proposition~\ref{prop:p1-i3-step001-gradient}.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact fixed-selector gradient envelope

- Statement fidelity: The proposition proves the exact accepted target: a deterministic explicit finite bound on the setting-defined fixed-\(\kappa\) full-gradient envelope for every initialization and finite radius, together with \(G_r\le1\) when \(L=1\). It uses no dependency and exports no trajectory or continuity conclusion.
- Proof validity: The output adjoint is exactly
  \[
  \delta_{L,1}=-\frac{y}{1+e^{y f_\theta(x)}},
  \qquad |\delta_{L,1}|\le1=b_L.
  \]
  For \(\ell=L-1,\ldots,1\), the protocol-defined selected back-propagation recurrence
  \[
  \delta_{\ell,j}=\rho_\kappa(u_{\ell,j})
  \sum_{q=1}^{n_{\ell+1}}\theta_{\ell+1,qj}\delta_{\ell+1,q}
  \]
  and \(0\le\rho_\kappa\le1\) give \(|\delta_{\ell,j}|\le n_{\ell+1}Bb_{\ell+1}=b_\ell\). The exact outer-product formula then yields \(|[\nabla_\theta^{(\kappa)}\ell(yf_\theta(x))]_{\ell,jk}|\le b_\ell a_{\ell-1}\). Taking the supremum over precisely the domain defining \(G_r\) proves \(G_r\le C_r<\infty\).
- Cited-result and assumption audit: No external result or dependency is invoked. Direct logistic differentiation is displayed, Lemma~\ref{lem:p1-i3-step001-forward} is restated before use, and the selected adjoint and layer-gradient formulas instantiate the setting's exact back-propagation convention. The proof uses only the primitive architecture/protocol data, the fixed radius, and the preceding local lemma.
- Rigor checklist: The backward recurrence has the correct fan-out factor \(n_{\ell+1}\); its closed form \(b_\ell=B^{L-\ell}\prod_{q=\ell+1}^{L}n_q\) is correct with \(n_L=1\). The output-layer gradient uses \(b_La_{L-1}\), and every hidden-layer gradient uses the matching \(b_\ell a_{\ell-1}\). The bound is coordinatewise in the full vectorized parameter, so the resulting maximum exactly matches the coordinate sup norm in \(G_r\). No maximum-attainment or selector-continuity argument is used.
- Local adversarial test: At every hidden kink, including \(\kappa=0\), \(\kappa=1\), and intermediate \(\kappa\), the selected factor remains in \([0,1]\), so the recurrence is valid even though the selected gradient may be discontinuous. Zero weights, zero activations, closed-ball boundary points, and arbitrary finite scores cause no failure. When \(L=1\), there are no hidden adjoints and
  \[
  |[\nabla_\theta^{(\kappa)}\ell(yf_\theta(x))]_{1,1k}|
  =\frac{|x_k|}{1+e^{yf_\theta(x)}}\le1,
  \]
  so \(C_r=1\) and the claimed baseline is exact.
- Contribution to target step: It converts the local forward envelope into the only public-facing output needed downstream, namely the finiteness of the exact static \(G_r\) and its depth-one bound.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The weight-coordinate bound, forward induction, logistic derivative, selected-adjoint recursion, backward induction, layer-gradient outer-product formula, supremum step, finiteness conclusion, and \(L=1\) specialization are all stated and justified inside the two mapped theorem-style units. Lemma~\ref{lem:p1-i3-step001-forward} and Proposition~\ref{prop:p1-i3-step001-gradient} are the mathematical proof authorities; the local unit IDs are used only as audit handles.

## Target Claim Audit

The proof establishes, for every deterministic \(\theta^{(0)}\in\mathbb R^S\) and the finite setting radius \(r\),
\[
G_r(\theta^{(0)})
\le C_r(\theta^{(0)})
=\max_{1\le\ell\le L}b_\ell a_{\ell-1}
<\infty,
\]
for the exact fixed-\(\kappa\) selected full gradient and the exact coordinate-sup norm from the setting. It also proves \(C_r=1\) and \(G_r\le1\) for \(L=1\). The deterministic, static, whole-ball scope is unchanged, and no generated trajectory, event membership, gate-stability condition, or stronger regularity assumption enters the claim.

## Explicit Rate Audit

The step exposes \(\theta^{(0)},r,L,n_0,\ldots,n_L\) through the explicit quantities
\[
B=\max\{1,\lVert\theta^{(0)}\rVert_\infty+r\},
\quad
a_\ell=B^\ell\prod_{q=0}^{\ell-1}n_q,
\quad
b_\ell=B^{L-\ell}\prod_{q=\ell+1}^{L}n_q,
\]
and \(C_r=\max_\ell b_\ell a_{\ell-1}\). There is no hidden constant. The mode is deterministic and static, with no probability conversion or horizon upgrade; the norm is exactly the coordinate sup norm of the full all-layer gradient. The bound is uniform over the fixed protocol selector \(\kappa\in[0,1]\), inputs, and labels. The quantities \(T,\eta,\varepsilon,\delta_0,s_0\) are correctly absent from this static estimate; later steps alone consume \(T\eta G_r\le r\). The exact \(L=1\) reduction has no conservative loss.

## Notation Surface Audit

The only `public-facing` output is the setting-defined \(G_r\), its finiteness, and the depth-one bound. The helper envelopes \(B,a_\ell,b_\ell,C_r\) are appropriately `appendix-local`, explicitly derived from setting quantities, and introduce no new admissibility condition. The adjoints \(\delta_{\ell,j}\) are `proof-local` and are defined before use from the current score, weights, and fixed selector. No helper dictionary, radius, event, margin, trajectory quantity, or generated invariant leaks into the downstream interface.

## Target-Step Assembly Audit

Lemma~\ref{lem:p1-i3-step001-forward} bounds every activation factor on the entire ball. Proposition~\ref{prop:p1-i3-step001-gradient} combines that named result with the exact output derivative and selected backward recurrence to bound every coordinate of the full gradient over exactly the defining domain of \(G_r\). Taking the supremum gives the finite envelope, and the proposition separately closes the gate-free \(L=1\) formula. These units jointly imply the exact accepted `step_001` claim without a dependency or missing bridge.

## Review Rationale

Both mapped local units are self-contained under the binding setting and prove their claims by finite coordinate recurrences. The fan-in and fan-out indices, output-layer formula, full-gradient norm, fixed-kink convention, zero and radius-boundary cases, and gate-free depth-one specialization all survive independent audit. The proof does not smuggle in selector continuity, event membership, trajectory containment, or gate stability, and its explicit helper envelopes have complete provenance. There is no local flaw, dependency blocker, or sketch-interface change to repair, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest correct disposition.
