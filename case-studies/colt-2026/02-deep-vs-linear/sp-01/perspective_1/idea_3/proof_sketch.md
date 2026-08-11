# Proof Sketch

## Formalized Setting

Let \(\mathcal X=\{-1,+1\}^n\), \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\), and use the fixed source conventions \(s_0=\operatorname{sign}(0)\) and \(\kappa\in[0,1]\). The source architecture is the bias-free fully connected ReLU network of depth \(1\le L\le L_0\), widths \(n_0=n,\ldots,n_L=1\), and
\[
S=\sum_{\ell=1}^{L}n_\ell n_{\ell-1}.
\]
It uses fan-in Gaussian initialization, exact one-sample all-layer logistic SGD for \(T\ge1\) steps, and the fixed-tie sign of the latter-half aggregate.

For \(r>0\), define the closed coordinate ball \(B_\infty(\theta^{(0)},r)\), the static hidden-preactivation margin \(M_r(\theta^{(0)})\), the worst-case full-gradient envelope \(G_r(\theta^{(0)})\), and
\[
E_r=\{M_r(\theta^{(0)})>0,\ \eta T G_r(\theta^{(0)})\le r\}
\]
exactly as in `setting.md`, with \(M_r=+\infty\) when \(L=1\). The four primitive conditions are `assump:fixed-source-witnesses`, `assump:universal-expected-success`, `assump:constant-depth`, and `assump:robust-tube`; in particular \(0\le\delta_0\le\varepsilon<1/4\) and \(\Pr_{\theta^{(0)}}(E_r)\ge1-\delta_0\).

Let
\[
\mathcal I_{\rm path}=\prod_{\ell=0}^{L-1}[n_\ell],
\qquad
d_{\rm path}=\prod_{\ell=0}^{L-1}n_\ell,
\]
and let \(\varphi_{\theta^{(0)}}\) be the initialization-gate feature map from `setting.md`. Its Gaussian pushforward law \(\mathcal P_{\rm gate}\) is fixed by the architecture and initialization distribution before every \((\mathcal D,h)\), and remains defined on \(E_r^c\).

## Formalized Goal

In exact-goal mode for this conditional branch, prove with the single law \(\mathcal P_{\rm gate}\) that, for every \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\),
\[
\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}
\left[\inf_{w\in\mathbb R^{d_{\rm path}}}
R_{\mathcal D,h}(w,\varphi)\right]
\le\varepsilon+\delta_0.
\]
Consequently prove
\[
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
\le d_{\rm path}\le S^{L_0},
\qquad
\operatorname{dc}_{2\varepsilon}(\mathcal H)\le S^{L_0}.
\]

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

Use the selected robust-tube fixed-gate framework from `technical_survey.md`. First derive an explicit finite static bound for \(G_r\), then use its definition and \(\eta T G_r\le r\) to induct over **every** possible labeled history and keep all \(T+1\) states inside the closed ball. Next use continuity of forward preactivations, connectedness of the ball, and \(M_r>0\) to prove that every hidden gate for every input has its initialization sign throughout the ball; handle \(L=1\) as a gate-free case.

With gates fixed, expand each exact network output into all input-to-output paths. The feature coordinate contains only the input coordinate and initialization gates, while the coefficient contains the current product of trained weights. Summing coefficient vectors over the prescribed latter-half iterates gives exact scalar equality with the source aggregate, including zero scores and the fixed tie convention.

For fixed \((\mathcal D,h,\theta^{(0)}\in E_r)\), define the best path-linear risk before drawing the training sample path. Each realized path supplies a feasible coefficient vector, so this one path-independent infimum is at most every realized SGD risk and hence at most their conditional average. Finally average over initialization, charge \(E_r^c\) by the trivial risk bound one, invoke the joint expected-SGD premise, and preserve the quantifier order \(\exists\mathcal P_{\rm gate}\ \forall\mathcal D\ \forall h\). Count paths and apply error-monotonicity for the public \(2\varepsilon\) corollary.

The failed `idea_2` transcript-to-SCO/convex-fiber/exact-derandomization route is not used.

## Rate Objectives

### Objective RO-1: expected probabilistic-representation error

- Objective type: confidence-explicit, regularity-explicit, and fixed-horizon.
- Exposed variables: \(\varepsilon,\delta_0,T,\eta,r\), the static controls \(M_r,G_r\), and the fixed conventions \(s_0,\kappa\); the final error is exactly \(\varepsilon+\delta_0\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(n,\mathcal H,\mathcal D,h,S,T,\eta,r,L\), widths, \(\varepsilon,\delta_0,s_0,\kappa\), or initialization/sample paths.
- Fixed quantities: The architecture, \(S,L,L_0,T,\eta,r,\varepsilon,\delta_0,s_0,\kappa\) and initialization law are fixed before \(\mathcal D,h\); then \((\mathcal D,h)\) is arbitrary.
- Probability mode: The learner premise is joint expectation over initialization and \(T\) samples; the tube premise is probability at least \(1-\delta_0\) over initialization only; the conclusion is expectation over the unconditional law \(\mathcal P_{\rm gate}\). No conditioning remains in the theorem.
- Horizon mode: Fixed finite horizon \(T\), including states \(t=0,\ldots,T\).
- Norm mode: Coordinate sup norm for containment; pointwise scalar equality for path expansion; tie-resolved \(0\)-\(1\) risk for the learner and representation.
- Required bridge or simplification obligations: Prove the all-history containment from the static event, exact path-score identity, the conditional infimum comparison in the legal order, Tonelli/Fubini conditioning, and the additive \(E_r^c\) charge \(\Pr(E_r^c)\le\delta_0\).
- Baseline invariance obligations: For \(L=1\), recover the gate-free feature \(\varphi(x)=x\) and exact linear output; for \(\delta_0=0\), remove the event penalty exactly; preserve zero-score ties through scalar equality rather than a margin approximation.

### Objective RO-2: polynomial dimension and public \(2\varepsilon\) bridge

- Objective type: structural-parameter explicit quantitative specialization.
- Exposed variables: \(d_{\rm path},S,L,L_0,\varepsilon,\delta_0\).
- Hidden constants may depend on: None; the polynomial exponent is the fixed universal integer \(L_0\).
- Hidden constants may not depend on: Any problem, learner, architecture-width, or probability parameter.
- Fixed quantities: The same quantities as RO-1; only the deterministic dimension arithmetic and error-threshold comparison are performed.
- Probability mode: No new probability conversion; reuse the expected representation witness from RO-1.
- Horizon mode: Fixed horizon inherited from RO-1; \(T\) enters only through the robust-tube admissibility relation.
- Norm mode: Dimension of a real Euclidean feature map and monotonicity of tie-resolved classification risk threshold.
- Required bridge or simplification obligations: Prove each \(n_\ell\le S\), hence \(d_{\rm path}\le S^L\le S^{L_0}\), and prove \(\varepsilon+\delta_0\le2\varepsilon\) followed by \(\operatorname{dc}_{2\varepsilon}\le\operatorname{dc}_{\varepsilon+\delta_0}\).
- Baseline invariance obligations: Preserve \(d_{\rm path}=n_0=S\) when \(L=1\), equality when \(S=1\), and \(2\varepsilon=0\) when \(\varepsilon=\delta_0=0\).

## Assumption Provenance Objectives

- The four stable `assump:` items are primitive. `assump:robust-tube` supplies only a probability bound for the static event; it does not supply trajectory containment or gate stability.
- Finiteness of \(G_r\) is a direct derived static fact from finite widths, bounded weights on the ball, \(|\ell'(a)|\le1\), and \(0\le\rho_\kappa\le1\). `step_001` proves it before the induction uses it.
- Radius-\(r\) membership for all iterates and all labeled histories is a derived invariant. `step_002` proves it from the primitive event and `step_001`.
- Gate constancy is a derived invariant. `step_003` proves it from containment, \(M_r>0\), and continuity before path expansion uses it.
- The current-weight path coefficients, latter-half coefficient, and exact score identity are derived outputs of `step_004`; they are not feature-law assumptions.
- The conditional best-linear-risk comparison is derived in `step_005`. Its sample-path-dependent coefficient is only a feasible comparison point inside a path-independent infimum, never a theorem-facing random feature.
- The unconditional expected representation inequality and correct \(\exists\mathcal P_{\rm gate}\ \forall\mathcal D\ \forall h\) order are derived in `step_006`; no good-event conditioning appears in the final assumption list.
- The polynomial dimension and \(2\varepsilon\) claims are derived in `step_007` from primitive depth/error ranges and accepted prior outputs.

## Mechanism-Source And Boundary Stress

### `step_001`

- Step ID: `step_001`.
- Claim class: Static boundedness certificate for the worst-case gradient envelope.
- Theorem role: Makes the radius induction nonvacuous without assuming a realized trajectory bound.
- Mechanism source: Direct current-notation derivation. Set \(B=\max\{1,\|\theta^{(0)}\|_\infty+r\}\), \(a_0=1\), \(a_\ell=n_{\ell-1}Ba_{\ell-1}\), \(b_L=1\), and \(b_\ell=n_{\ell+1}Bb_{\ell+1}\). Forward propagation gives \(|z_{\ell,j}|\le a_\ell\); \(|\ell'(yf)y|\le1\) and \(0\le\rho_\kappa\le1\) give back-propagated magnitudes at most \(b_\ell\), so every weight-gradient coordinate is at most \(b_\ell a_{\ell-1}\).
- Source-to-claim adequacy: The bound uses the exact bias-free architecture, coordinate sup norm, Boolean \(|x_i|=1\), logistic loss, and fixed kink selector from the setting. It applies at kink points because it needs only \(\rho_\kappa\in[0,1]\), not differentiability or continuity of the selected gradient.
- Residual-to-target adequacy: The produced finite scalar bounds the exact full gradient whose sup defines \(G_r\); there is no surrogate norm or omitted coordinate.
- Key positive/control term or structural source: Finite coordinate box and bounded logistic derivative/gate selector.
- Opposing defect terms: Products over depth and width can be large but remain finite; no claimed uniform architecture-independent numerical bound is needed.
- Closure/dominance/absorption relation: \(G_r\le\max_{1\le\ell\le L}b_\ell a_{\ell-1}<\infty\); for \(L=1\), this gives \(G_r\le1\).
- Accumulation behavior / scope compatibility: N/A; this is a static finite-ball bound.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The forward/backward recursions use only primitive architecture/ball data, before `step_002` consumes \(G_r\).
- Entry-state / first-update stress result: At \(t=0\), the exact selected gradient is bounded even if a ReLU preactivation is zero; \(L=1\) has no gate selector and gradient coordinates have magnitude at most one.
- Baseline conclusion preserved: The gate-free \(L=1\) bound is exact; no smoothness/genericity condition is added.
- Producer-consumer provenance: `step_001` exports finite \(G_r\) to `step_002` and the event interface used through `step_006`.
- Null or boundary regime tested: Zero weights, ReLU kinks, \(\kappa=0,1\), and \(r\) arbitrary finite.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without a finite exact gradient envelope, \(\eta T G_r\le r\) cannot support containment.
- Repair route if source is unsupported: None; the direct bound is available under the unchanged setting.

### `step_002`

- Step ID: `step_002`.
- Claim class: Finite-horizon generated invariant and all-history basin containment.
- Theorem role: Places every possible source trajectory inside the ball where \(M_r,G_r\) were defined.
- Mechanism source: `step_001`, event membership \(\eta T G_r\le r\), the exact update, and the closed-ball definition.
- Source-to-claim adequacy: For any deterministic history \((x^{(t)},y^{(t)})\in\mathcal X\times\{\pm1\}\), if \(D_t=\|\theta^{(t)}-\theta^{(0)}\|_\infty\le r\), then the exact gradient is at most \(G_r\) and \(D_{t+1}\le D_t+\eta G_r\).
- Residual-to-target adequacy: The controlled object is the exact current parameter vector consumed by gate stability; the same coordinate norm and the same center/radius define both producer and target ball.
- Key positive/control term or structural source: Finite budget \(T\eta G_r\le r\).
- Opposing defect terms: Each update has arbitrary sign and can move outward by \(\eta G_r\); no cancellation is assumed.
- Closure/dominance/absorption relation: Starting at \(D_0=0\), induction yields \(D_t\le t\eta G_r\le r\) for every \(0\le t\le T\).
- Accumulation behavior / scope compatibility: Finite-budgeted over exactly \(T\) updates. The accumulated forcing is the nonnegative worst-case sum \(\sum_{q<t}\eta G_r=t\eta G_r\); the one-step charge is \(\eta G_r\), and the primitive event supplies the finite terminal budget \(T\eta G_r\le r\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` produces the bound before the induction; the induction checks ball membership at time \(t\) before applying the ball supremum, then proves membership at \(t+1\). Path: primitive event -> `step_001` -> `step_002` -> `step_003`--`step_006`.
- Entry-state / first-update stress result: \(D_0=0\); the first update obeys \(D_1\le\eta G_r\le r\). Equality \(T\eta G_r=r\) is valid because the ball is closed.
- Baseline conclusion preserved: The conclusion holds for every labeled history, hence for every \((\mathcal D,h)\) sample path, without conditioning on likely histories.
- Producer-consumer provenance: Produces all-time-to-\(T\) ball membership for `step_003`, `step_004`, and the conditional comparison in `step_005`.
- Null or boundary regime tested: Zero gradient, maximal outward increments, \(T=1\), and terminal equality at radius \(r\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without the finite budget, iterates may leave the static tube and initialization gates need not represent trained outputs.
- Repair route if source is unsupported: None; the event was designed to supply this exact recurrence budget.

### `step_003`

- Step ID: `step_003`.
- Claim class: Structural nondegeneracy and hidden-gate invariance.
- Theorem role: Produces one initialization-dependent gate pattern valid for all inputs, iterates, and labeled histories.
- Mechanism source: On \(E_r\), \(M_r>0\); forward preactivations are continuous in \(\theta\); \(B_\infty(\theta^{(0)},r)\) is convex/connected; `step_002` places every iterate there.
- Source-to-claim adequacy: If a hidden \(u_{\ell,j}(\theta,x)\) changed sign between \(\theta^{(0)}\) and any \(\theta\) in the ball, continuity along the line segment would give a zero, contradicting \(|u_{\ell,j}|\ge M_r>0\). Thus its strict sign and gate indicator equal their initialization values throughout the ball.
- Residual-to-target adequacy: The produced gate is exactly the strict indicator used in \(\varphi_{\theta^{(0)}}\) and consumed by the forward ReLU expansion; no approximate margin or surrogate gate remains.
- Key positive/control term or structural source: Uniform positive margin \(M_r\).
- Opposing defect terms: Potential sign crossings and kink-convention dependence are source-excluded on \(E_r\).
- Closure/dominance/absorption relation: \(|u|\ge M_r>0\) on the connected ball excludes every zero crossing; `step_002` then transfers this static fact to every update.
- Accumulation behavior / scope compatibility: Source-excluded rather than accumulated: no gate-change defect occurs at any of the finitely many iterates because every state stays in the same ball.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The positive static margin is available before gate stability is consumed; containment is independently produced by `step_002`. Path: `assump:robust-tube` + `step_002` -> `step_003` -> `step_004`.
- Entry-state / first-update stress result: Initialization preactivations are already nonzero on \(E_r\); after the first update, containment and the ball-wide margin keep the same sign. For \(L=1\), there are no hidden gates, \(M_r=+\infty\), and the conclusion is vacuous rather than assumed.
- Baseline conclusion preserved: Fixed \(\kappa\) remains the protocol convention, but is never invoked on \(E_r\); \(L=1\) retains its exact gate-free behavior.
- Producer-consumer provenance: Produces the gate identity consumed by `step_004` for all \(x,t\) and histories.
- Null or boundary regime tested: \(M_r=0\) lies in \(E_r^c\) and is not silently discarded; ball-boundary states and \(L=1\) are covered.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If \(M_r\) vanishes, a gate can change and the initialization feature map need not represent later outputs.
- Repair route if source is unsupported: None on \(E_r\); `step_006` explicitly charges the complement.

### `step_004`

- Step ID: `step_004`.
- Claim class: Exact fixed-gate path representation and generated aggregate coefficient.
- Theorem role: Converts every actual latter-half predictor on \(E_r\) into a linear score in the single map \(\varphi_{\theta^{(0)}}\).
- Mechanism source: Direct expansion using \(\sigma(a)=\mathbf1\{a>0\}a\) away from zero and the exact gate identity from `step_003`.
- Source-to-claim adequacy: For \(p=(i_0,\ldots,i_{L-1})\), set
  \[
  c_p(\theta)=(\theta_L)_{1,i_{L-1}}
  \prod_{\ell=1}^{L-1}(\theta_\ell)_{i_\ell,i_{\ell-1}}.
  \]
  Recursive expansion gives \(f_\theta(x)=\langle c(\theta),\varphi_{\theta^{(0)}}(x)\rangle\) for every \(\theta\) in the ball. For a sample path \(\omega\), \(w_\omega=\sum_{t=\lceil T/2\rceil}^{T}c(\theta^{(t)}(\omega))\) gives the exact aggregate.
- Residual-to-target adequacy: Produced and consumed scores are the same scalar for every \(x\); residual is identically zero in the theorem's tie-resolved classification interface.
- Key positive/control term or structural source: Exact multilinear path algebra under fixed gates.
- Opposing defect terms: Moving weights and sample/target dependence are retained entirely in \(c(\theta^{(t)})\); they do not alter the feature map.
- Closure/dominance/absorption relation: Sum the exact per-iterate identities; no approximation or term absorption occurs.
- Accumulation behavior / scope compatibility: Finite exact summation over the prescribed latter-half indices; the residual is zero term-by-term and therefore zero after accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_002` and `step_003` produce containment/gates before expansion; no representation conclusion is assumed.
- Entry-state / first-update stress result: The formula holds at \(t=0\) and after the first update because both states use the same gates. For \(L=1\), \(p=i_0\), \(c_p(\theta)=(\theta_1)_{1,i_0}\), and \(\varphi(x)=x\).
- Baseline conclusion preserved: Exact scalar equality preserves the fixed \(s_0\) decision even when the aggregate equals zero.
- Producer-consumer provenance: Produces \(w_\omega\) and score equality for `step_005`; the feature map remains generated solely by initialization.
- Null or boundary regime tested: Zero path weights, cancellation to zero aggregate, \(T=1\), \(L=1\), and arbitrary \(\kappa\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without fixed gates, coefficients alone cannot absorb input-dependent gate changes into the initialization map.
- Repair route if source is unsupported: None; it is exact algebra after accepted gate stability.

### `step_005`

- Step ID: `step_005`.
- Claim class: Conditional best-linear-risk comparison with legal infimum order.
- Theorem role: Transfers actual SGD performance to the representation objective for each stable initialization.
- Mechanism source: Exact score/tie identity from `step_004` and the elementary fact that an infimum is no larger than every feasible candidate.
- Source-to-claim adequacy: Fix \((\mathcal D,h,\theta^{(0)}\in E_r)\) before drawing \(\omega\sim\mathcal D^T\), and set \(F(\theta^{(0)})=\inf_wR_{\mathcal D,h}(w,\varphi_{\theta^{(0)}})\). For every \(\omega\), `step_004` gives a feasible \(w_\omega\) with
  \[
  R_{\mathcal D,h}(w_\omega,\varphi_{\theta^{(0)}})
  =\mathcal L_{\mathcal D,h}(\widehat h_{\theta^{(0)},\omega}).
  \]
  Therefore \(F(\theta^{(0)})\le R(w_\omega,\varphi)\) pointwise and remains on the left when averaging over \(\omega\).
- Residual-to-target adequacy: The fresh-evaluation distribution, target, score, strict loss, and tie convention are identical on both sides; residual is zero.
- Key positive/control term or structural source: Path-independent infimum over all \(w\), containing every path-dependent \(w_\omega\) as a comparison point.
- Opposing defect terms: \(w_\omega\) depends on the training path and target through SGD. This is legal only inside the pointwise candidate comparison and is never exported as a fixed optimizer.
- Closure/dominance/absorption relation: \(F\le R(w_\omega,\varphi)\) for all \(\omega\) implies \(F\le\mathbb E_{\omega\mid\theta^{(0)}}\mathcal L\); no exchange of \(\inf\) and expectation is asserted.
- Accumulation behavior / scope compatibility: Sample-path averaging of a bounded nonnegative risk; no pathwise defect accumulates.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The feature and each candidate coefficient are produced by `step_004` before the infimum comparison; the best-linear risk is not assumed.
- Entry-state / first-update stress result: For \(T=1\), the coefficient sums the prescribed states \(t=1\) only (since \(\lceil1/2\rceil=1\)); the same pointwise comparison holds.
- Baseline conclusion preserved: If a score is zero, both predictors output \(s_0\), so no tie residual is hidden.
- Producer-consumer provenance: Produces the conditional inequality consumed by `step_006`; \(w_\omega\) itself is not consumed beyond this step.
- Null or boundary regime tested: Nonattainment of the infimum, zero score, path-dependent coefficients, and deterministic sample paths. Infimum attainment is unnecessary.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without exact score equality, classification errors could differ at arbitrarily small or zero margins.
- Repair route if source is unsupported: None; the quantifier order is explicit and exact.

### `step_006`

- Step ID: `step_006`.
- Claim class: Event-to-unconditional expectation conversion and probabilistic-dimension closure.
- Theorem role: Produces the final feature-law witness with the correct order and error \(\varepsilon+\delta_0\).
- Mechanism source: `step_005`, \(0\le F\le1\), static \(E_r\), `assump:robust-tube`, `assump:universal-expected-success`, and Tonelli/tower property for bounded nonnegative risks.
- Source-to-claim adequacy: For fixed \((\mathcal D,h)\), pushforward gives
  \[
  \mathbb E_{\varphi\sim\mathcal P_{\rm gate}}[\inf_wR(w,\varphi)]
  =\mathbb E_{\theta^{(0)}}F(\theta^{(0)}).
  \]
  Because \(\mathcal X\) and \(\mathcal I_{\rm path}\) are finite and every feature coordinate lies in \(\{-1,0,+1\}\), the gate-map law has finite support and \(F\) is measurable without a selector for the infimum.
  Split by the initialization-only event, use `step_005` on \(E_r\), use \(F\le1\) on \(E_r^c\), and apply
  \[
  \mathbb E[\mathbf1_{E_r}\mathbb E(\mathcal L\mid\theta^{(0)})]
  =\mathbb E[\mathbf1_{E_r}\mathcal L]
  \le\mathbb E\mathcal L.
  \]
- Residual-to-target adequacy: The only residual is the unstable-initialization contribution, bounded in the same risk metric by \(1\cdot\Pr(E_r^c)\le\delta_0\). The stable contribution is the exact source loss with no transform residual.
- Key positive/control term or structural source: Universal expected-risk bound \(\varepsilon\) and static event mass \(1-\delta_0\).
- Opposing defect terms: Arbitrary behavior on \(E_r^c\), controlled only by the unit risk bound; no claim is made there.
- Closure/dominance/absorption relation: \(\mathbb E F\le\mathbb E[\mathbf1_E\mathcal L]+\Pr(E^c)\le\varepsilon+\delta_0\).
- Accumulation behavior / scope compatibility: Finite two-part decomposition. The complement defect has adversarial sign but bounded magnitude one and one-time budget \(\delta_0\); it is not iterated or union-bounded over histories.
- Obligation locality classification: `step-local`.
- Noncircular closure status: \(E_r\) is defined before samples/\((\mathcal D,h)\); `step_005` produces the stable conditional bound; primitive assumptions separately control the two expectation terms. Path: primitives -> `step_001`--`step_005` -> `step_006` -> theorem.
- Entry-state / first-update stress result: The event is evaluated at initialization and does not depend on whether the first sample is favorable. On \(E_r^c\), the feature is still defined and is charged rather than removed from \(\mathcal P_{\rm gate}\).
- Baseline conclusion preserved: If \(\delta_0=0\), the complement term vanishes exactly; no conditional theorem remains. The unconditional Gaussian pushforward law is used in all cases.
- Producer-consumer provenance: Produces \(\mathcal P_{\rm gate}\) as a witness for \(\operatorname{dc}_{\varepsilon+\delta_0}\), consumed by `step_007` and final assembly.
- Null or boundary regime tested: \(\delta_0=0\), \(\varepsilon=0\), \(E_r^c\) with arbitrary predictors, and multiple initializations inducing the same feature map. The infimum depends only on the map, so pushforward equality remains valid.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without a static event independent of \((\mathcal D,h,\omega)\), conditioning could change the feature law or invalidate the universal quantifier order.
- Repair route if source is unsupported: None; all probability interfaces are explicit.

### `step_007`

- Step ID: `step_007`.
- Claim class: Structural polynomial-dimension and public error specialization.
- Theorem role: Converts the exact path count to \(S^{L_0}\) and produces the advertised \(2\varepsilon\) corollary.
- Mechanism source: Direct integer arithmetic, `assump:constant-depth`, \(0\le\delta_0\le\varepsilon\), and monotonicity of \(\operatorname{dc}_\alpha\).
- Source-to-claim adequacy: For every \(0\le\ell\le L-1\), the summand \(n_{\ell+1}n_\ell\le S\) and \(n_{\ell+1}\ge1\) give \(n_\ell\le S\). Hence \(d_{\rm path}\le S^L\le S^{L_0}\). Since \(\varepsilon+\delta_0\le2\varepsilon\), the same feature-law witness is admissible at error \(2\varepsilon\).
- Residual-to-target adequacy: The produced dimension is exactly that of the consumed path map; no extra coordinate or hidden factor is introduced. The error specialization enlarges the allowed threshold and drops no risk term.
- Key positive/control term or structural source: Positive integer widths, \(S\ge1\), fixed \(L\le L_0\), and threshold monotonicity.
- Opposing defect terms: None; \(T,\eta,r\) remain in theorem admissibility but do not enter the feature dimension.
- Closure/dominance/absorption relation: Coordinatewise factor bounds multiply; threshold inclusion directly reuses the witness.
- Accumulation behavior / scope compatibility: Finite multiplication over exactly \(L\) path factors; no stochastic accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_006` produces the representation witness before deterministic specialization; dimension/error arithmetic does not assume the corollary.
- Entry-state / first-update stress result: N/A; this is a static specialization. The \(L=1,S=1\) boundary is checked directly.
- Baseline conclusion preserved: At \(L=1\), \(d_{\rm path}=n_0=S\); at \(\varepsilon=\delta_0=0\), both thresholds are zero.
- Producer-consumer provenance: Produces the polynomial and \(2\varepsilon\) statements for final assembly.
- Null or boundary regime tested: \(L=L_0=1\), \(S=1\), \(\delta_0=\varepsilon\), and \(\varepsilon=0\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without constant depth, \(S^L\) is not a fixed polynomial in \(S\); without \(\delta_0\le\varepsilon\), the \(2\varepsilon\) corollary need not follow.
- Repair route if source is unsupported: None; both are explicit primitive restrictions of the conditional theorem.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Finite static \(G_r\) | `step_001` direct forward/backward bounds | Finite ball, finite widths, \(\lvert x_i\rvert=1\), \(\lvert\ell'\rvert\le1\), \(\rho_\kappa\in[0,1]\) | Depth/width products may be large but finite; no continuity defect | Exact selected full gradient in coordinate sup norm | \(G_r\le\max_\ell b_\ell a_{\ell-1}<\infty\) | Finite \(B=\max(1,\lVert\theta^{(0)}\rVert_\infty+r)\) | `step_002` | None |
| All-history containment \(\lVert\theta^{(t)}-\theta^{(0)}\rVert_\infty\le t\eta G_r\le r\) | `step_002` | Finite \(G_r\), exact update, event budget | Arbitrary-sign increments controlled individually; no unmodeled forcing | Exact parameter state and exact ball/norm | \(D_{t+1}\le D_t+\eta G_r\), \(D_0=0\), \(T\eta G_r\le r\) | Static event budget | `step_003`, `step_004`, `step_005` | None |
| One gate signature and \(\varphi_{\theta^{(0)}}\) valid for all iterates/histories | `step_003` | \(M_r>0\), continuity, connected ball, containment | Gate-crossing defect source-excluded on \(E_r\); complement uncontrolled and later charged | Produced strict gates equal those in the consumed feature map | Any sign change forces a zero, contradicting \(M_r>0\) | Positive margin \(M_r\) | `step_004` | None |
| Exact aggregate coefficient \(w_\omega\) in the initialization feature map | `step_004` | Fixed gates, current exact weights, prescribed time index set | Moving weights/path dependence retained in coefficients; zero residual | \(A(x)=\langle w_\omega,\varphi_{\theta^{(0)}}(x)\rangle\) for the same input/score/tie metric | Recursive path identity and finite exact sum | No positive score margin needed; equality handles ties | `step_005` | None |
| Conditional best-linear-risk bound \(F(\theta^{(0)})\le\mathbb E_\omega\mathcal L\) | `step_005` | Exact path coefficient for every sample path | Path-dependent candidate is controlled by pointwise infimum comparison; no optimizer is exported | Same \(\mathcal D,h\), fresh risk, score, and tie convention; zero residual | \(F\le R(w_\omega,\varphi)=\mathcal L_\omega\) before averaging | Full feasible set \(\mathbb R^{d_{\rm path}}\) | `step_006` | None |
| Unconditional \(\mathcal P_{\rm gate}\) witness at error \(\varepsilon+\delta_0\) | `step_006` | Stable conditional bound, \(F\le1\), \(\Pr(E^c)\le\delta_0\), expected SGD risk \(\le\varepsilon\) | Stable defect zero; unstable contribution arbitrary but bounded by \(\delta_0\) | Pushforward uses the exact same gate map; complement remains in the law | \(\mathbb EF\le\mathbb E[1_E\mathcal L]+\Pr(E^c)\le\varepsilon+\delta_0\) | Unit loss bound and event probability | `step_007`, final theorem | None |
| \(d_{\rm path}\le S^{L_0}\) and \(\operatorname{dc}_{2\varepsilon}\le S^{L_0}\) | `step_007` | Positive widths, parameter-count sum, \(L\le L_0\), \(\delta_0\le\varepsilon\), `step_006` | No uncontrolled term | Same path feature dimension and same representation risk | \(n_\ell\le S\); \(S^L\le S^{L_0}\); \(\varepsilon+\delta_0\le2\varepsilon\) | Primitive depth/error ranges | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Finite \(G_r\) | `step_001` direct exact-gradient bound | `step_002` | Activate the static step budget | Primitives -> `step_001` -> `step_002` | `derived` | None |
| Radius-\(r\) membership for every state/history | `step_002` | `step_003`, `step_004`, `step_005` | Keep actual runs in the static validity region | `step_001` + event -> `step_002` -> consumers | `derived` | None |
| Initialization gate invariance | `step_003` | `step_004` | Make one feature map represent all time indices | Margin + containment -> `step_003` -> `step_004` | `derived` | None |
| Exact per-iterate coefficients and \(w_\omega\) | `step_004` | `step_005` | Supply feasible linear predictors | Gates -> `step_004` -> `step_005` | `derived` | None |
| Conditional best-linear-risk inequality | `step_005` | `step_006` | Stable-initialization contribution | Exact score -> `step_005` -> `step_006` | `derived` | None |
| Unconditional \(\mathcal P_{\rm gate}\) representation witness | `step_006` | `step_007`, final assembly | Prove \(\operatorname{dc}_{\varepsilon+\delta_0}\le d_{\rm path}\) | Primitives + `step_001`--`step_005` -> `step_006` | `derived` | None |
| Polynomial count and \(2\varepsilon\) corollary | `step_007` | Final assembly | Public conditional theorem | `step_006` + primitive ranges -> `step_007` | `derived` | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | For every initialization and finite \(r\), derive an explicit finite bound on \(G_r\), with \(G_r\le1\) for \(L=1\), using the exact fixed-\(\kappa\) gradient. | None | Primitive `assump:fixed-source-witnesses`; static \(r\) from `assump:robust-tube` | Bound all forward activations and back-propagated coordinates without assuming selector continuity. | Direct forward/backward recurrences and \(\lvert\ell'\rvert\le1\). | Finite static gradient envelope. | RO-1: establish finite \(G_r\) with no hidden uniform constant required. | PENDING |
| `step_002` | On \(E_r\), for every possible length-\(T\) labeled history, prove \(\lVert\theta^{(t)}-\theta^{(0)}\rVert_\infty\le t\eta G_r\le r\) for all \(t\le T\). | `step_001` | Primitive `assump:fixed-source-witnesses`, `assump:robust-tube`; derived finite \(G_r\) | Use a ball-defined supremum noncircularly at the boundary and control arbitrary-sign update accumulation. | Finite induction with recurrence \(D_{t+1}\le D_t+\eta G_r\). | All-history tube-membership invariant. | RO-1: fixed-horizon admissibility \(T\eta G_r\le r\). | PENDING |
| `step_003` | On \(E_r\), prove every hidden gate for every \(x\) has its initialization sign throughout the ball and along all histories; prove the gate-free \(L=1\) case separately. | `step_002` | Primitive `assump:robust-tube`; derived containment | Convert a uniform absolute preactivation margin into global sign constancy without using the kink derivative convention. | Continuity, convexity of the ball, intermediate value theorem. | One fixed initialization gate signature. | RO-1: exact zero-defect gate stability. | PENDING |
| `step_004` | For every iterate/history on \(E_r\), prove the exact path expansion in \(\varphi_{\theta^{(0)}}\), define \(w_\omega\), and prove aggregate scalar/tie equality. | `step_002`, `step_003` | Primitive `assump:fixed-source-witnesses`; derived containment and gates | Keep one initialization map while all trained weights move; include \(L=1\) and zero-score cancellation. | Exact recursive ReLU path algebra. | Path coefficient vectors and exact aggregate score identity. | RO-1: no approximation/numerical residual. | PENDING |
| `step_005` | For fixed \((\mathcal D,h,\theta^{(0)}\in E_r)\), prove \(\inf_wR(w,\varphi_{\theta^{(0)}})\le\mathbb E_{\omega\mid\theta^{(0)}}\mathcal L(\widehat h_{\theta^{(0)},\omega})\) with the correct path-dependent-candidate/infimum order. | `step_004` | Primitive `assump:fixed-source-witnesses`; derived exact score identity | Prevent an illegal exchange of infimum and sample expectation while allowing each comparison coefficient to depend on the sample history. | Pointwise feasible-candidate inequality followed by bounded expectation. | Stable-initialization representation-risk interface. | RO-1: exact conditional risk transfer. | PENDING |
| `step_006` | With the unconditional law \(\mathcal P_{\rm gate}\), prove the expected best-linear risk is at most \(\varepsilon+\delta_0\) for every \((\mathcal D,h)\), hence \(\operatorname{dc}_{\varepsilon+\delta_0}\le d_{\rm path}\). | `step_005` | Primitive `assump:universal-expected-success`, `assump:robust-tube`, `assump:fixed-source-witnesses`; derived conditional bound | Preserve \(\exists\mathcal P\forall\mathcal D\forall h\), condition only on initialization, and charge rather than discard unstable maps. | Pushforward identity, tower property/Tonelli, \(0\le F\le1\). | Unconditional probabilistic-dimension witness. | RO-1: \(\varepsilon+\delta_0\) with exact probability conversion. | PENDING |
| `step_007` | Prove \(d_{\rm path}\le S^L\le S^{L_0}\) and use \(\delta_0\le\varepsilon\) plus monotonicity to obtain \(\operatorname{dc}_{2\varepsilon}\le S^{L_0}\). | `step_006` | Primitive `assump:constant-depth`, `assump:robust-tube`; derived representation witness | Keep all factors/threshold directions correct at \(L=1,S=1,\varepsilon=0\). | Direct integer inequalities and witness monotonicity. | Polynomial dimension and public corollary. | RO-2: exact \(S^{L_0}\) and \(2\varepsilon\) specialization. | PENDING |

## Dependency Notes

The graph is acyclic and every edge points forward: `step_001` produces the static envelope; `step_002` uses it to produce containment; `step_003` combines containment with the primitive margin; `step_004` uses the accepted gates; `step_005` uses only the exact path identity; `step_006` performs the probability/quantifier closure; and `step_007` performs deterministic specialization. No trajectory, gate, representation, or good-event conclusion is used before its producer.

The assembly is
\[
\text{static tube controls}
\Rightarrow
\text{all-history containment}
\Rightarrow
\text{fixed gates}
\Rightarrow
\text{exact path scores}
\Rightarrow
\text{conditional best-linear risk}
\Rightarrow
\text{unconditional }\mathcal P_{\rm gate}\text{ witness}
\Rightarrow
\text{polynomial/}2\varepsilon\text{ bridge}.
\]

## Blockers

None.
