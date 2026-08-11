# Proof Sketch

## Formalized Setting

Use exactly `perspective_2/idea_2/setting.md`: the Gaussian-smoothed rank-\(r\) third-order CP target, the full rank window \(r<k\le r^{5/4}\), well-conditioned deterministic bases, iid Gaussian initialization, and the unconstrained half-relaxed parallel Jacobi ALS map followed by the product-preserving gauge. The only theorem-facing conditional interface is

\[
\mathsf C_2(\delta,L_P,\zeta,C_T),
\]

with exactly its four stated clauses: normalized entry deficit, finite adaptive-projector path, unsquared finite represented-tensor variation, and relative smoothing/target scale. These clauses are explicitly conditional hypotheses, not consequences of the primitive assumptions. No Gram bound, factor bound, fixed-subspace condition, basin, persistent residual, positive loss, convergence assertion, or certificate-probability assertion may be added.

## Formalized Goal

Prove the exact event inclusion in `setting.md`: on \(\mathsf C_2\), the represented tensor converges, the objective has a finite limit, and

\[
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge \epsilon\|T\|_F^2
\]

for a positive \(\epsilon=\epsilon(\kappa,q)\), uniformly over the declared \(r,n,k\) and deterministic base triples. The statement is a deterministic implication on every realized trajectory in \(\mathsf C_2\). It neither claims nor consumes a lower bound on \(\mathbb P[\mathsf C_2]\).

## Sketch Identity

- Sketch attempt: 1
- Goal mode: exact conditional goal
- Roadmap status: viable stable-step graph

## Proof Roadmap

Selected framework: **conditional projector transport and exact same-target coordinate bridge**, as recorded in `technical_survey.md`. Kolda--Bader (2009, DOI:10.1137/07070111X) supplies only the CP/ALS conventions; all theorem-critical implications below are direct current-notation derivations.

1. `step_001` proves the fixed coordinate-map bound \(\|Q\|_{\rm op}\le\kappa^6\), verifies gauge compatibility, and exports the exact same-target identity \(Q(T-\widehat T_t)=D_r+E_\rho-C_t\) with \(C_t\in\mathcal S_t\).
2. `step_002` consumes only clauses 1 and 2 of \(\mathsf C_2\) and telescopes projector motion to obtain the all-time normalized coefficient deficit \(\operatorname{dist}_F(D_r,\mathcal S_t)\ge(\delta-L_P)\|D_r\|_F\).
3. `step_003` consumes `step_001`, `step_002`, and only clause 4 to export the horizon-uniform ambient residual floor
   \[
   \|T-\widehat T_t\|_F\ge
   \frac{\delta-L_P-\zeta}{\kappa^6C_T}\|T\|_F.
   \]
4. `step_004` consumes only clause 3 and proves that \((\widehat T_t)_t\) is Cauchy, hence convergent, and that \(\mathcal L_t\) has a finite limit.
5. `step_005` combines the all-time floor and the objective limit, sets \(\epsilon=((\delta-L_P-\zeta)/(\kappa^6C_T))^2\), and proves the event inclusion without any probability upgrade.

The half-relaxed ALS map and gauge determine the realized trajectory to which the clauses apply. The deterministic implication does not need a hidden descent or regularity property of that map.

## Rate Objectives

- Objective type: conditional-on-event, horizon-uniform, structural-parameter-explicit relative residual lower bound followed by an asymptotic objective-limit lower bound.
- Exposed variables: \(\kappa,q,r,n,k,\delta,L_P,\zeta,C_T\), the time index \(t\), and
  \[
  \epsilon=\left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2.
  \]
  The dependence on \(r,n,k\) appears only in the theorem scope and in the certificate objects, not in \(\epsilon\).
- Hidden constants may depend on: none in the displayed residual and loss bounds. The theorem-facing choices \(\delta,L_P,\zeta,C_T,r_0,C_{\rm dim}\) may depend only on \(\kappa,q\), as stated in `setting.md`.
- Hidden constants may not depend on: \(r,n,k,t\), the admissible deterministic base triple, or the smoothing/initialization realization.
- Fixed quantities: \(\kappa,q\) and the selected theorem constants while \(r,n,k\) vary over the declared regime.
- Probability mode: deterministic implication on the realized event \(\mathsf C_2\), expressed as an event inclusion under the joint smoothing-and-initialization law. No conditional probability, high-probability event, expectation, or lower bound on \(\mathbb P[\mathsf C_2]\) is asserted.
- Horizon mode: all-time for the projector-distance and ambient-residual floors; infinite-horizon absolute variation for convergence; asymptotic for the objective limit.
- Norm mode: coefficient Frobenius norm and its induced projector operator norm for \(D_r,\mathcal S_t,P_t,E_\rho,C_t\); ambient tensor Frobenius norm for \(T,\widehat T_t\), residuals, increments, and objective.
- Required bridge or simplification obligations: prove \(\|Q\|_{\rm op}\le\kappa^6\); telescope the exact projector recurrence with total charge \(L_P\); dominate the fixed smoothing residual by \(\zeta\|D_r\|_F\); use \(\|T\|_F\le C_T\|D_r\|_F\); square the norm floor only after all terms are retained; and keep the probability mode conditional.
- Baseline invariance obligations: in the exact/noiseless coordinate-orthonormal specialization \(Q=I\), \(E_\rho=0\), and \(T=D_r\), the proof must retain a constant relative loss floor. The roadmap gives the stronger specialized norm floor \((\delta-L_P)\|T\|_F\); it does not replace the baseline conclusion by an absolute or vanishing remainder.

## Assumption Provenance Objectives

- Primitive conditions: `assump:dimension`, `assump:rank_window`, `assump:base_conditioning`, `assump:gaussian_smoothing`, and `assump:independent_initialization` specify the theorem scope, fixed coordinate maps, trajectory, and joint law. Only `assump:base_conditioning` is needed for the deterministic norm bound on \(Q\); the other primitive conditions remain part of the exact theorem scope.
- Explicitly conditional hypotheses: exactly the four clauses of \(\mathsf C_2\). Clause 1 is consumed by `step_002`; clause 2 is consumed by `step_002`; clause 3 is consumed by `step_004`; clause 4 is consumed by `step_003`. They have no `assump:` ids and are not claimed to follow from the primitive conditions.
- Derived invariant: the all-time coefficient deficit \(\operatorname{dist}_F(D_r,\mathcal S_t)\ge(\delta-L_P)\|D_r\|_F\), produced by `step_002` before `step_003` consumes it.
- Derived structural certificate: the all-time relative ambient residual floor, produced by `step_003` before `step_005` consumes it.
- Derived convergence output: \(\widehat T_t\to\widehat T_\infty\) and \(\mathcal L_t\to\|T-\widehat T_\infty\|_F^2\), produced by `step_004` before `step_005` consumes it.
- Residual source-level obligation: a uniform positive lower bound on \(\mathbb P[\mathsf C_2]\). It has no producer in this sketch and no consumer in the formalized conditional theorem, so it is not hidden as an admissibility or good-event premise.

## Mechanism-Source And Boundary Stress

### `step_001`: exact coordinate and gauge interface

- Step ID: `step_001`
- Claim class: structural operator bound, exact object mapping, and same-target residual identity.
- Theorem role: place the adaptive coefficient span and the ambient residual in one exact interface and quantify the only norm distortion used downstream.
- Mechanism source: direct derivation from `assump:base_conditioning`, multilinearity of tensor products, and the product-one gauge defined in `setting.md`. In the branch convention \(\bar M=\widetilde M D_{\bar M}\), so \(\sigma_{\min}(\bar M)\ge\kappa^{-2}\), \(\|\Lambda_M\|_{\rm op}\le\kappa^2\), and \(\|Q\|_{\rm op}=\|\Lambda_A\|\|\Lambda_B\|\|\Lambda_C\|\le\kappa^6\).
- Source-to-claim adequacy: exact in the current Frobenius tensor-product convention. Linearity gives \(Q(x_i\otimes y_i\otimes z_i)=p_{i,t}\), hence \(Q\widehat T_t=C_t\); the definition \(E_\rho=QT-D_r\) gives \(Q(T-\widehat T_t)=D_r+E_\rho-C_t\). The positive product-one gauge preserves every represented rank-one tensor and every \(p_{i,t}\); the zero rule preserves the zero tensor and zero coefficient feature.
- Residual-to-target adequacy: the produced object is the exact coefficient image of the consumed ambient residual, not a whitened or reference surrogate. The theorem metric is ambient Frobenius norm, and \(\|Q R\|_F\le\|Q\|_{\rm op}\|R\|_F\) is the exact transfer relation. The only residual term in coefficient space is the explicitly named \(E_\rho\), controlled later by clause 4.
- Key positive/control term or structural source: the lower singular-value bound \(\sigma_{\min}(\bar M)\ge\kappa^{-2}\) and exact tensor-product linearity.
- Opposing defect terms: possible base-coordinate distortion and smoothing error \(E_\rho\); no base-range-orthogonal term is dropped because applying \(Q\) only weakens the ambient norm in the valid lower-bound direction.
- Closure/dominance/absorption relation: \(\|Q\|_{\rm op}\le\kappa^6\) controls coordinate distortion, while the exact identity retains \(E_\rho\) for explicit domination in `step_003`.
- Accumulation behavior / scope compatibility: pointwise identity for every \(t\); no accumulated defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: N/A; this step derives a static identity and operator bound directly from primitive definitions before any downstream floor is used.
- Entry-state / first-update stress result: at the raw iid entry the identity holds by definition. After the first raw sweep, positive product-one rescaling leaves both the ambient component tensor and its coefficient tensor unchanged; if a component contains a zero factor, both are zero before and after the zero rule. Rank changes of \(\mathcal S_t\) do not affect the identity.
- Baseline conclusion preserved: when \(Q=I\) and \(E_\rho=0\), the identity reduces exactly to \(T-\widehat T_t=D_r-C_t\).
- Producer-consumer provenance: primitive base conditioning and definitions -> `step_001` -> `step_003` -> `step_005`.
- Null or boundary regime tested: zero components, \(\mathcal S_t=\{0\}\), rank-changing coefficient spans, and the exact/noiseless coordinate-orthonormal case.
- Target conclusion false or theorem-critical obstruction present if source vanishes: if base conditioning vanished, \(Q\) could be undefined or have unbounded norm, so the ambient transfer would be unsupported; this regime is explicitly outside the branch.
- Repair route if source is unsupported: N/A under the stated setting.

### `step_002`: finite projector-path transport

- Step ID: `step_002`
- Claim class: all-time structural lower-bound preservation and recurrence closure.
- Theorem role: convert the normalized entry deficit into a persistent adaptive-span deficit without assuming a fixed subspace or persistent residual.
- Mechanism source: explicitly conditional clauses 1 and 2 of \(\mathsf C_2\), plus the direct orthogonal-projector identity \(\operatorname{dist}_F(D_r,\mathcal S_t)=\|(I-P_t)D_r\|_F\).
- Source-to-claim adequacy: exact. With \(a_t=\|P_{t+1}-P_t\|_{\rm op}\) and \(d_t=\|(I-P_t)D_r\|_F\), the reverse triangle inequality gives
  \[
  d_{t+1}\ge d_t-a_t\|D_r\|_F.
  \]
  Therefore \(d_t\ge d_0-\|D_r\|_F\sum_{s<t}a_s\ge(\delta-L_P)\|D_r\|_F\).
- Residual-to-target adequacy: the produced and consumed object is the same \(D_r\) in the same coefficient Frobenius geometry. No componentwise motion, represented-sum surrogate, or alternative metric is used.
- Key positive/control term or structural source: the clause-1 entry reserve \(d_0\ge\delta\|D_r\|_F\).
- Opposing defect terms: one-step adaptive projector rotation \(a_t\|D_r\|_F\), with adversarial sign for the lower bound.
- Closure/dominance/absorption relation: each step charges at most \(a_t\|D_r\|_F\) against the entry reserve; clause 2 supplies the exact finite all-time budget \(\sum_ta_t\le L_P\), leaving reserve \((\delta-L_P)\|D_r\|_F\).
- Accumulation behavior / scope compatibility: finite-budgeted under the declared all-time scope with controlled nonnegative forcing \(a_t\). The one-step charge is \(a_t\|D_r\|_F\); the total charge is at most \(L_P\|D_r\|_F\). No cancellation or unproved decay is needed.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the noncircular sources are the entry clause and the explicitly conditional total projector-path budget. The recurrence derives, rather than assumes, the persistent deficit. Dependency path: clauses 1--2 -> `step_002` -> `step_003` -> `step_005`.
- Entry-state / first-update stress result: at \(t=0\), \(d_0\ge\delta\|D_r\|_F\). The first update satisfies \(d_1\ge d_0-a_0\|D_r\|_F\) before any persistent conclusion is consumed. If \(P_0=0\), then \(d_0=\|D_r\|_F\); if \(P_1=P_0\), the first charge is zero.
- Baseline conclusion preserved: in the exact/noiseless coordinate case, the same all-time normalized deficit holds with no smoothing term.
- Producer-consumer provenance: explicitly conditional clauses 1 and 2 -> `step_002` -> `step_003` and final assembly in `step_005`.
- Null or boundary regime tested: \(P_t=0\), rank jumps, stationary projectors, and saturation of the total path budget. Orthogonal projectors remain valid in every case.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without clause 1 or clause 2, an entry reserve or all-time charge budget is absent and the adaptive span may reach \(D_r\). Both sources are present exactly as conditional clauses.
- Repair route if source is unsupported: N/A for the literal conditional theorem.

### `step_003`: same-target ambient residual floor

- Step ID: `step_003`
- Claim class: horizon-uniform nondegenerate lower bound, residual transfer, and quantitative specialization.
- Theorem role: turn the derived coefficient deficit into the relative ambient objective scale required by the theorem.
- Mechanism source: `step_001`, `step_002`, and explicitly conditional clause 4 of \(\mathsf C_2\).
- Source-to-claim adequacy: exact. Since \(C_t\in\mathcal S_t\),
  \[
  \begin{aligned}
  \|Q(T-\widehat T_t)\|_F
  &=\|D_r+E_\rho-C_t\|_F\\
  &\ge \operatorname{dist}_F(D_r+E_\rho,\mathcal S_t)\\
  &\ge \operatorname{dist}_F(D_r,\mathcal S_t)-\|E_\rho\|_F.
  \end{aligned}
  \]
  The step-2 floor and clause 4 give \(\|Q(T-\widehat T_t)\|_F\ge(\delta-L_P-\zeta)\|D_r\|_F\).
- Residual-to-target adequacy: produced control is the exact coefficient image \(Q(T-\widehat T_t)\); consumed target is the same ambient residual \(T-\widehat T_t\) in Frobenius norm. `step_001` controls the transfer by \(\kappa^6\). Clause 4 controls the only additive residual by \(\zeta\|D_r\|_F\) and supplies \(\|D_r\|_F\ge\|T\|_F/C_T\). Thus every residual is dominated at the required relative-target scale.
- Key positive/control term or structural source: the coefficient reserve \((\delta-L_P)\|D_r\|_F\) from `step_002`.
- Opposing defect terms: smoothing residual \(\zeta\|D_r\|_F\) and coordinate distortion \(\kappa^6\).
- Closure/dominance/absorption relation: clause 4 subtracts only \(\zeta\|D_r\|_F\), and \(L_P<\delta/4\), \(\zeta<\delta/4\) imply \(m:=\delta-L_P-\zeta>\delta/2>0\). Hence
  \[
  \|T-\widehat T_t\|_F\ge \frac{m}{\kappa^6C_T}\|T\|_F
  \quad\text{for every }t.
  \]
- Accumulation behavior / scope compatibility: the only accumulated term, projector motion, was already closed by `step_002`. The smoothing residual is fixed in time and is dominated pointwise, so no persistent additive forcing is summed again.
- Obligation locality classification: `step-local`.
- Noncircular closure status: noncircular producer path `step_001` + `step_002` + clause 4 -> `step_003` -> `step_005`. Neither clause 4 nor either dependency assumes positive loss.
- Entry-state / first-update stress result: the residual floor already holds at \(t=0\); after the first update, `step_002` pays exactly the first projector charge before this step reuses the same bridge. Thus the lower-bound source is active before every theorem-facing loss bound is consumed.
- Baseline conclusion preserved: if \(Q=I\), \(E_\rho=0\), and \(T=D_r\), the argument gives the stronger floor \(\|T-\widehat T_t\|_F\ge(\delta-L_P)\|T\|_F\).
- Producer-consumer provenance: `step_001`, `step_002`, and explicitly conditional clause 4 -> `step_003` -> `step_005`.
- Null or boundary regime tested: maximal allowed \(L_P\) and \(\zeta\), exact smoothing residual \(E_\rho=0\), zero or rank-deficient component spans, and \(T=0\). On \(\mathsf C_2\), the strict margin remains positive; if \(T=0\), the relative conclusion is trivial and the displayed lower bridge remains consistent.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without the normalized entry reserve, projector budget, smoothing bound, target upper scale, or base conditioning, the relative floor need not follow. All are supplied by the unchanged setting or exactly the stated clauses.
- Repair route if source is unsupported: N/A under the four-clause certificate.

### `step_004`: finite represented-tensor variation implies objective convergence

- Step ID: `step_004`
- Claim class: convergence and asymptotic-mode closure.
- Theorem role: produce the finite objective limit required by the event inclusion without invoking factor convergence, Gram conditioning, descent, or KL theory.
- Mechanism source: explicitly conditional clause 3 and completeness of the finite-dimensional ambient tensor Frobenius space.
- Source-to-claim adequacy: exact. Let \(v_t=\|\widehat T_{t+1}-\widehat T_t\|_F\). For \(m>n\),
  \[
  \|\widehat T_m-\widehat T_n\|_F\le\sum_{t=n}^{m-1}v_t.
  \]
  Clause 3 makes the right-hand tail tend to zero, so \(\widehat T_t\to\widehat T_\infty\). Continuity gives \(\mathcal L_t\to\|T-\widehat T_\infty\|_F^2<\infty\).
- Residual-to-target adequacy: produced object \(\widehat T_\infty\) and consumed objective use the same ambient tensor and Frobenius norm. There is no factor-space, quotient, or surrogate convergence claim.
- Key positive/control term or structural source: the realized finite variation budget \(V_0=\sum_{t\ge0}v_t<\infty\).
- Opposing defect terms: increments may have arbitrary directions and signs, but their norms are absolutely summable.
- Closure/dominance/absorption relation: with tail budget \(V_n=\sum_{t\ge n}v_t\downarrow0\), every pair of later iterates differs by at most \(V_n\). This is the concrete Cauchy and convergence relation.
- Accumulation behavior / scope compatibility: summable under the declared infinite horizon. The one-step charge is \(v_t\ge0\), its total realized budget is finite by clause 3, and its tail vanishes; no signed cancellation or quantitative uniform cap is required for mere convergence.
- Obligation locality classification: `step-local`.
- Noncircular closure status: clause 3 explicitly supplies finite variation, not convergence. The Cauchy argument independently produces convergence before `step_005` consumes it. Dependency path: clause 3 -> `step_004` -> `step_005`.
- Entry-state / first-update stress result: the first increment contributes \(v_0\) to the finite budget. If the trajectory is stationary at entry, all increments vanish and the conclusion is immediate; if not, the tail argument applies after the first update without requiring descent.
- Baseline conclusion preserved: exact/noiseless data do not alter the argument; zero variation gives a stationary represented tensor and a well-defined objective limit.
- Producer-consumer provenance: explicitly conditional clause 3 -> `step_004` -> final assembly `step_005`.
- Null or boundary regime tested: stationary trajectories, zero components, factor divergence with a convergent represented tensor, and rank changes in the least-squares designs. Only represented-tensor convergence is claimed, so none is an obstruction.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without absolute variation or another convergence source, objective convergence need not follow from the other three clauses. Clause 3 supplies exactly the needed source.
- Repair route if source is unsupported: N/A for the literal conditional theorem.

### `step_005`: conditional theorem assembly and probability boundary

- Step ID: `step_005`
- Claim class: theorem closure, asymptotic relative lower bound, and probability-mode specialization.
- Theorem role: combine the independently produced horizon-uniform floor and finite limit into the exact event inclusion.
- Mechanism source: accepted outputs of `step_003` and `step_004`, plus the definition of event inclusion under the primitive joint law.
- Source-to-claim adequacy: exact. `step_003` gives \(\mathcal L_t\ge\epsilon\|T\|_F^2\) for every \(t\), with \(\epsilon=(m/(\kappa^6C_T))^2\) and \(m=\delta-L_P-\zeta>0\). `step_004` gives \(\mathcal L_t\to\mathcal L_\infty<\infty\). Taking limits preserves the lower bound.
- Residual-to-target adequacy: the lower bound and limit concern the same objective sequence \(\|T-\widehat T_t\|_F^2\); no change of target, norm, horizon, or probability mode occurs at assembly.
- Key positive/control term or structural source: the strict margin \(m>\delta/2\) and the all-time floor from `step_003`.
- Opposing defect terms: only a possible illicit probability upgrade or dropped \(L_P,\zeta,\kappa,C_T\) dependence. The step retains all terms and makes no probability assertion.
- Closure/dominance/absorption relation: square the established nonnegative norm inequality, then pass to the already existing limit. No additional absorption is used.
- Accumulation behavior / scope compatibility: `step_003` is horizon-uniform and `step_004` is asymptotic; their modes are compatible because a pointwise lower bound passes to an existing limit.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_003` and `step_004` are produced independently from disjoint certificate interfaces and earlier derived outputs; neither assumes the final event inclusion. Dependency path is acyclic.
- Entry-state / first-update stress result: the lower bound is active at entry and after the first update, while convergence is supplied by the full variation tail. No delayed mechanism or basin entry is required.
- Baseline conclusion preserved: exact/noiseless coordinate-orthonormal data retain a constant relative positive-limit floor, with the smoothing subtraction removed.
- Producer-consumer provenance: `step_003` + `step_004` -> `step_005` -> final theorem. The primitive probability law only supplies the measurable event context; it does not produce \(\mathsf C_2\) with positive probability.
- Null or boundary regime tested: empty or measure-zero certificate event, stationary trajectory, exact/noiseless specialization, and maximal allowed clause margins. Event inclusion remains valid in every case, but no event nonvacuity is claimed.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without either the uniform floor or the limit producer, one conjunct of the theorem fails. Both are available before assembly.
- Repair route if source is unsupported: N/A.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| \(\|Q\|_{\rm op}\le\kappa^6\) and \(Q(T-\widehat T_t)=D_r+E_\rho-C_t\), \(C_t\in\mathcal S_t\) | `step_001` | `assump:base_conditioning`, exact definitions, tensor-product linearity, product-one gauge | Coordinate distortion is controlled by \(\kappa^6\); smoothing residual is retained as \(E_\rho\); no orthogonal ambient residual is dropped | Exact coefficient image of the same ambient residual; transfer is \(\|QR\|_F\le\kappa^6\|R\|_F\) | \(\sigma_{\min}(\bar M)\ge\kappa^{-2}\), \(\|\Lambda_M\|\le\kappa^2\), and exact linearity | Primitive base-conditioning margin | `step_003` | None |
| All-time coefficient deficit \(d_t\ge(\delta-L_P)\|D_r\|_F\) | `step_002` | Conditional clauses 1 and 2 | Each projector increment is adversarial for the lower bound but controlled by its own operator-norm charge; no component-motion class is used | Same \(D_r\), subspace, metric, and target interface at entry and consumption | \(d_{t+1}\ge d_t-a_t\|D_r\|_F\), \(\sum_ta_t\le L_P\) | Entry reserve \(\delta\|D_r\|_F\) | `step_003`, `step_005` through `step_003` | None |
| Horizon-uniform ambient floor \(\|T-\widehat T_t\|_F\ge m(\kappa^6C_T)^{-1}\|T\|_F\) | `step_003` | `step_001`, `step_002`, conditional clause 4 | Projector loss is already budgeted; \(E_\rho\) is controlled by \(\zeta\|D_r\|\); coordinate distortion by \(\kappa^6\); target comparison by \(C_T\); no uncontrolled residual remains | Exact same-target bridge from \(Q(T-\widehat T_t)\) to \(T-\widehat T_t\) in Frobenius norm | \(\|R_t\|\ge\kappa^{-6}(d_t-\|E_\rho\|)\ge m(\kappa^6C_T)^{-1}\|T\|\) | \(m=\delta-L_P-\zeta>\delta/2\) | `step_005` | None |
| Tensor limit \(\widehat T_\infty\) and finite objective limit | `step_004` | Conditional clause 3 | Increment directions/signs are uncontrolled but their norms are summable; no factor convergence is required | Produced and consumed objects use the same ambient Frobenius metric and target \(T\) | \(\|\widehat T_m-\widehat T_n\|\le V_n\), \(V_n\downarrow0\); continuity of squared norm | Realized finite variation budget | `step_005` | None |
| Final event inclusion with \(\epsilon=(m/(\kappa^6C_T))^2\) | `step_005` | `step_003`, `step_004`, primitive joint-law context | No defect is dropped; certificate probability remains uncontrolled and unclaimed | Same objective, target, norm, and event throughout | Square the pointwise floor and pass to the existing limit | Strict clause slack \(m>0\) | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Normalized entry deficit | Clause 1 of \(\mathsf C_2\) | `step_002` | Initial reserve for the persistent coefficient floor | Explicit conditional event -> `step_002` -> `step_003` -> `step_005` | explicitly conditional | None |
| Finite adaptive-projector path budget | Clause 2 of \(\mathsf C_2\) | `step_002` | Finite all-time charge controlling adaptive-span loss | Explicit conditional event -> `step_002` -> `step_003` -> `step_005` | explicitly conditional | None |
| Unsquared finite represented-tensor variation | Clause 3 of \(\mathsf C_2\) | `step_004` | Cauchy convergence and objective-limit existence | Explicit conditional event -> `step_004` -> `step_005` | explicitly conditional | None |
| Relative smoothing and target scale | Clause 4 of \(\mathsf C_2\) | `step_003` | Same-target residual domination and conversion to \(\|T\|_F\) scale | Explicit conditional event -> `step_003` -> `step_005` | explicitly conditional | None |
| Exact coordinate identity and \(Q\)-norm bound | `step_001` | `step_003` | Coefficient-to-ambient lower-bound bridge | `assump:base_conditioning` and definitions -> `step_001` -> `step_003` -> `step_005` | derived | None |
| Persistent normalized coefficient deficit | `step_002` | `step_003` | Positive structural reserve at every time | Clauses 1--2 -> `step_002` -> `step_003` -> `step_005` | derived | None |
| Horizon-uniform relative ambient residual floor | `step_003` | `step_005` | Positive lower bound on every objective value and its limit | `step_001` + `step_002` + clause 4 -> `step_003` -> `step_005` | derived | None |
| Represented-tensor and objective limits | `step_004` | `step_005` | Existence and finiteness of the limiting objective | Clause 3 -> `step_004` -> `step_005` | derived | None |

Positive probability of \(\mathsf C_2\) is deliberately absent from this table because it is neither a generated output nor a consumed input of the formalized conditional theorem.

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | Prove \(\|Q\|_{\rm op}\le\kappa^6\), gauge invariance of represented coefficient tensors, \(Q\widehat T_t=C_t\in\mathcal S_t\), and \(Q(T-\widehat T_t)=D_r+E_\rho-C_t\) for every \(t\) | None | Primitive `assump:base_conditioning`; setting definitions | Check source convention and exact object mapping, including zero-component gauge and base-range-orthogonal residuals | Direct singular-value calculation, tensor-product operator norm, and multilinearity in current notation; Kolda--Bader (2009) only for conventions | Exact same-target coordinate bridge with explicit \(\kappa^6\) distortion | Structural-parameter explicit: retain exact \(\kappa\) dependence and no hidden \(r,n,k,t\) dependence | PENDING |
| `step_002` | On clauses 1--2, prove \(\operatorname{dist}_F(D_r,\mathcal S_t)\ge(\delta-L_P)\|D_r\|_F\) for all \(t\ge0\) | None | Explicitly conditional clauses 1 and 2 only | Close an all-time adaptive-subspace recurrence without assuming a fixed span or persistent deficit | Reverse triangle inequality for orthogonal projectors and telescoping of \(a_t=\|P_{t+1}-P_t\|_{\rm op}\) | Persistent normalized coefficient deficit | Horizon-uniform: exact dependence on \(\delta,L_P\), with total charge \(L_P\|D_r\|_F\) | PENDING |
| `step_003` | On clause 4 and outputs of `step_001`--`step_002`, prove for every \(t\), \(\|T-\widehat T_t\|_F\ge(\delta-L_P-\zeta)(\kappa^6C_T)^{-1}\|T\|_F\) | `step_001`, `step_002` | Primitive `assump:base_conditioning` through `step_001`; explicitly conditional clause 4; derived invariant from `step_002` | Retain every residual and transfer from coefficient to the exact ambient target at the correct relative scale | Distance-to-subspace Lipschitzness and operator-norm comparison in current notation | Horizon-uniform relative ambient residual and objective floor | Horizon-uniform structural-parameter explicit: \(m=\delta-L_P-\zeta>\delta/2\), no term dropping, probability mode unchanged | PENDING |
| `step_004` | On clause 3, prove \(\widehat T_t\to\widehat T_\infty\) and \(\mathcal L_t\to\|T-\widehat T_\infty\|_F^2<\infty\) | None | Explicitly conditional clause 3 only | Prove convergence at represented-tensor level without importing factor boundedness, descent, or KL hypotheses | Cauchy criterion in finite-dimensional Frobenius space and continuity of squared norm | Represented-tensor limit and finite objective limit | None; no quantitative convergence rate is claimed from an unquantified finite variation sum | PENDING |
| `step_005` | Combine `step_003` and `step_004` to prove the exact event inclusion with \(\epsilon=((\delta-L_P-\zeta)/(\kappa^6C_T))^2\), while making no assertion on \(\mathbb P[\mathsf C_2]\) | `step_003`, `step_004` | Primitive `assump:dimension`, `assump:rank_window`, `assump:base_conditioning`, `assump:gaussian_smoothing`, `assump:independent_initialization` for exact theorem scope; no new conditional clause | Align all-time and asymptotic modes and preserve the conditional probability boundary | Squaring a nonnegative norm inequality and passing to an existing limit | Final conditional theorem | Asymptotic relative objective floor with explicit \(\epsilon\); no probability conversion or simplification beyond the displayed equality | PENDING |

## Dependency Notes

The graph is acyclic: `step_001`, `step_002`, and `step_004` are independent roots; `step_003` depends only on the earlier roots `step_001` and `step_002`; `step_005` depends only on `step_003` and `step_004`. Every generated theorem-facing output is produced before consumption.

Assembly is direct. `step_001` fixes the exact object and norm interface. `step_002` derives the only all-time adaptive invariant from the normalized entry reserve and the finite projector-path budget. `step_003` transfers that invariant to a pointwise relative ambient loss floor using exactly the smoothing and target-scale controls in clause 4. Independently, `step_004` turns clause 3 into objective-limit existence. `step_005` passes the pointwise floor to that limit.

The formalized existential statement is implied by the stronger parameterized result: for any fixed positive \(\delta,L_P,\zeta,C_T\) depending only on \(\kappa,q\) and satisfying \(L_P<\delta/4\), \(\zeta<\delta/4\), the displayed deterministic event inclusion holds. No choice is claimed to make \(\mathsf C_2\) nonempty or positive-probability; establishing a uniform producer for the four clauses remains the explicit source-level gap.

## Blockers

None.

The roadmap is dispatchable for the literal conditional goal using exactly the four clauses in `setting.md`. The unresolved lower bound \(\mathbb P[\mathsf C_2]\ge p_0(\kappa,q)>0\) is not a blocker because it is expressly outside the formalized theorem and is not consumed by any sketch step.
