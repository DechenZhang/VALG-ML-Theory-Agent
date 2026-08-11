# Proof Sketch

## Formalized Setting

Let
\[
T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\in\mathbb R^{n\times n\times n},
\qquad
F(X,Y,Z)=\frac12\left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F^2,
\]
with the smoothed factors, dimensions, rank window, and joint initialization law in `setting.md`. For each method
\(M\in\{\mathrm{cALS},\mathrm{cGD}\}\), let
\(\mathcal S_M=\operatorname{range}(G_x^M)\), choose the measurable orthonormal basis
\(Q_M=\operatorname{orth}(G_x^M)\), and set
\[
\mathcal H_M=\mathcal S_M\otimes\mathbb R^n\otimes\mathbb R^n,
\qquad
P_{\mathcal H_M}=P_{\mathcal S_M}\otimes I_n\otimes I_n.
\]
The cALS trajectory is the displayed cyclic exact block least-squares scheme with only the (X)-block constrained to
\(\mathcal S_{\mathrm{cALS}}\). The cGD trajectory is Euclidean gradient descent in the coefficient variables
\((C,Y,Z)\) for (f_Q(C,Y,Z)=F(QC,Y,Z)), with the displayed dyadic Armijo rule. The objective sequence (F_M(t)) is sampled after a complete cALS sweep and after each accepted cGD step.

## Formalized Goal

Prove the exact material-partial theorem in `setting.md`: with (c=1/4), for every integer
\(r<k\le r^{5/4}\), every (n\ge 8r^{5/4}), and every deterministic base triple, the joint smoothing and independent-initialization law satisfies
\[
\mathbb P\!\left[
\bigcap_{M\in\{\mathrm{cALS},\mathrm{cGD}\}}
\left\{
\lim_{t\to\infty}F_M(t)\text{ exists and }
\lim_{t\to\infty}F_M(t)\ge \frac38\|T\|_F^2
\right\}
\right]\ge\frac14.
\]
The achieved superlinear failure threshold is (L(r)=r^{5/4}), hence exponent
\(\alpha=1/4\), for the two precisely defined one-mode fixed-span constrained methods. No conclusion is claimed for unconstrained ALS or unconstrained GD.

## Sketch Identity

- Sketch attempt: 1
- Goal mode: exact-goal
- Progress type: `material_partial`
- Selected roadmap: fixed one-mode conservation, conditional Haar projection margin, exact orthogonal-complement witness, method-specific monotone-potential arguments, and conditional-probability assembly.

## Proof Roadmap

The proof is deliberately static in its obstruction and method-specific only in its scalar convergence argument.

1. The Gaussian (X)-initialization produces an almost surely full-rank Haar (k)-subspace independent of (T). The cALS update and cGD coefficient parameterization enforce (X_t^M\in\mathcal S_M) at every defined iterate, so every represented tensor (S_t^M) belongs to the same fixed ambient tensor subspace \(\mathcal H_M\).
2. Conditional on an arbitrary realized (T), orthogonal invariance gives
   \(\mathbb E[P_{\mathcal S_M}\mid T]=(k/n)I_n\), hence
   \(\mathbb E[\|P_{\mathcal H_M}T\|_F^2\mid T]=(k/n)\|T\|_F^2\). Markov gives a method event of conditional probability at least (1/2). Conditional independence of the two starts gives an intersection of conditional probability at least (1/4).
3. Fixed-span membership yields the exact Pythagorean identity
   \[
   \|T-S_t^M\|_F^2
   =\|(I-P_{\mathcal H_M})T\|_F^2
   +\|P_{\mathcal H_M}T-S_t^M\|_F^2.
   \]
   Thus the orthogonal residual is a fixed witness and supplies a pointwise objective floor without any recurrence, factor bound, or trajectory event.
4. For cALS, each displayed pseudoinverse formula is the minimum-Frobenius-norm exact minimizer of its current block least-squares problem, including rank-deficient Khatri-Rao matrices. The three sequential block inequalities imply monotonicity after every complete sweep.
5. For cGD, polynomial smoothness at each finite iterate makes dyadic Armijo backtracking terminate. The accepted inequality gives monotonicity. In both methods a finite nonnegative monotone scalar sequence has a finite limit; parameter convergence is neither needed nor claimed.
6. On the joint projection event, (k/n\le1/8) makes each squared orthogonal residual at least
   \((1-2k/n)\|T\|_F^2\ge(3/4)\|T\|_F^2\). Combining this static floor with the two scalar limits proves the theorem.
7. A separate exact non-transfer calculation records the remaining source gap: unconstrained first (X)-updates generally leave the initialization span, and the orthogonal residual becomes
   \((I-P_{\mathcal H_0})(T-S_t)\), not the fixed quantity
   \((I-P_{\mathcal H_0})T\). Therefore this proof supplies no residual floor for unconstrained ALS/GD.

No idea-local technical survey is needed for the selected route. Every theorem-critical input is proved directly in the current notation from finite-dimensional orthogonal projection, Moore-Penrose least squares, polynomial Taylor expansion, and conditional Haar symmetry. The prior same-perspective failure is used only as negative roadmap memory: no moving-span recurrence, simultaneous Jacobi descent, factor boundedness, KL argument, or absolute smoothing-transfer estimate is reused.

## Rate Objectives

### Objective A: superlinear rank-window and residual-margin certificate

- Objective type: structural-parameter explicit and horizon-uniform.
- Exposed variables: (r,n,k), with (r<k\le r^{5/4}) and (n\ge8r^{5/4}); the exact residual fraction is (1-2k/n\ge3/4), and the objective fraction is one half of this quantity.
- Hidden constants may depend on: none; all constants (2,1/2,3/4,3/8) are explicit.
- Hidden constants may not depend on: (r,n,k,q,\rho,T), the deterministic bases, the smoothing realization, the initialization realization, or the iteration index.
- Fixed quantities: conditional on (T), only the two method-specific Haar subspaces remain random.
- Probability mode: conditional-on-(T) probability at least (1/2) per method and at least (1/4) jointly, followed by exact averaging over the smoothing draw.
- Horizon mode: the residual floor is all-time for every defined iterate; the theorem conclusion is asymptotic after separately proving scalar objective convergence.
- Norm mode: ambient tensor Frobenius norm.
- Required bridge or simplification obligations: prove
  \(\|P_{\mathcal H_M}T\|_F^2\le2(k/n)\|T\|_F^2\Rightarrow
  \|(I-P_{\mathcal H_M})T\|_F^2\ge(1-2k/n)\|T\|_F^2\), then use
  (k/n\le1/8). No term is dropped or hidden.
- Baseline invariance obligations: the witness identity is deterministic in (T) and therefore remains exact in any zero-smoothing or noiseless specialization. At (T=0), the target lower bound is (0) and is true without defining a normalized witness.

### Objective B: finite objective-limit certificate

- Objective type: all-time monotone-potential control and asymptotic mode conversion.
- Exposed variables: iteration (t); for cGD also the accepted dyadic step size (\eta_t\in\{2^{-j}:j\ge0\}).
- Hidden constants may depend on: none for monotonicity or limit existence. The local Hessian bound used only to prove termination of one Armijo search may depend on the current finite iterate and (T), but it is not exported as a uniform rate.
- Hidden constants may not depend on: no uniform lower bound on (\eta_t), factor bound, convergence rate, or trajectory length is asserted.
- Fixed quantities: the realized tensor and method initialization while the deterministic trajectory evolves.
- Probability mode: deterministic conditional on the realized data and initialization, outside the probability-one Gaussian full-column-rank event.
- Horizon mode: all finite iterations and asymptotic scalar limit; no parameter-limit or stationarity mode.
- Norm mode: objective value (F_M(t)) and, inside the Armijo test only, the product-space Frobenius gradient norm.
- Required bridge or simplification obligations: derive exact blockwise cALS decrease and accepted-step cGD decrease, then invoke monotone convergence for a nonnegative real sequence.
- Baseline invariance obligations: if an iterate already has zero objective, exact block minimization cannot increase it and cGD has zero gradient, so the zero-objective state remains at objective zero. This does not conflict with the positive floor because the projection event with (T\ne0) excludes representability inside the fixed span.

## Assumption Provenance Objectives

- **Full-rank/Haar initialization certificate.** Primitive sources: `assump:dimension`, `assump:rank_window`, and `assump:joint_initialization`. Producer: `step_001`. Consumers: `step_002`, `step_003`, and `step_007`. It is a static derived fact, not a public assumption.
- **Fixed-span membership (S_t^M\in\mathcal H_M).** Primitive source: the displayed constrained cALS block and cGD coefficient parameterization, with initial membership from `assump:joint_initialization`. Producer: `step_001`. Consumers: `step_003` and `step_007`; final assembly co-consumes the cGD iterate-existence output of `step_005` for the all-time index scope. This is an algebraically enforced derived invariant, not an assumed trajectory event.
- **Projection-margin events (E_M) and their joint intersection.** Primitive sources: `assump:dimension`, `assump:rank_window`, and `assump:joint_initialization`. Producer: `step_002`. Consumer: `step_007`.
- **All-time objective floors.** Sources: the membership output of `step_001` and direct orthogonal projection. Producer: `step_003`. Consumer: `step_007`.
- **cALS objective limit.** Source: the exact block minimizers in the formal algorithm. Producer: `step_004`. Consumer: `step_007`.
- **cGD line-search termination and objective limit.** Source: direct polynomial smoothness plus the specified backtracking rule. Producer: `step_005`. Consumer: `step_007`.
- **No hidden invariants.** The proof does not assume factor boundedness, Gram conditioning, Khatri-Rao full rank, a common basin, local smoothness along the whole trajectory, parameter convergence, stationary-point convergence, or a moving-span recurrence.

## Mechanism-Source And Boundary Stress

### `step_001`: static Haar span and fixed-span conservation

- Step ID: `step_001`
- Claim class: static nondegeneracy, generated-subspace identification, and all-time membership preservation.
- Theorem role: produce the fixed subspace and the exact invariant needed by the witness argument.
- Mechanism source: primitive Gaussian initialization from `assump:joint_initialization`, dimension/rank conditions `assump:dimension` and `assump:rank_window`, and the displayed cALS/cGD parameterizations. Direct derivation in the Euclidean coordinate convention: an (n\times k) iid Gaussian matrix with (k<n) has full column rank almost surely; its range is orthogonally invariant, hence Haar; multiplication by (Q_M) forces every (X)-column into \(\mathcal S_M\).
- Source-to-claim adequacy: the source produces exactly the branch object (\mathcal S_M=\operatorname{range}(G_x^M)\), in the same Euclidean inner product and with no whitening or surrogate target. It supplies both the Haar law used in `step_002` and the fixed membership used in `step_003`.
- Residual-to-target adequacy: produced and consumed subspaces are identical. The produced tensor subspace is
  \(\mathcal H_M=\mathcal S_M\otimes\mathbb R^n\otimes\mathbb R^n\), exactly the subspace in the theorem witness. Residual is zero: there is no transformed-object transfer.
- Key positive/control term or structural source: exact algebraic inclusion (X_t^M=Q_M D_t), where (D_t) is the cALS coefficient returned by the constrained block or the cGD coefficient (C_t).
- Opposing defect terms: possible Khatri-Rao rank deficiency and unbounded (Y_t,Z_t). Neither affects inclusion because the Moore-Penrose coefficient remains finite and every coefficient matrix is left-multiplied by (Q_M).
- Closure/dominance/absorption relation: preservation is exact, not approximate:
  \(X_{t+1}^{\mathrm{cALS}}=Q_{\mathrm{cALS}}D_{t+1}\) and
  \(X_{t+1}^{\mathrm{cGD}}=Q_{\mathrm{cGD}}C_{t+1}\). Therefore each rank-one term and its sum lie in \(\mathcal H_M\).
- Accumulation behavior / scope compatibility: zero-defect algebraic preservation. There is no accumulated leakage term; one-step membership implies membership at every defined finite iterate. `step_005` proves every cGD iterate is defined, while the pseudoinverse makes every cALS block update defined.
- Obligation locality classification: `step-local`
- Noncircular closure status: noncircular. Initial membership follows from (G_x^M=Q_M(Q_M^{\mathsf T}G_x^M)); each update has the displayed (Q_M)-factor before any consumer invokes membership. Dependency path: primitive algorithm -> `step_001` -> `step_003` -> `step_007`.
- Entry-state / first-update stress result: at (t=0), (X_0^M=G_x^M\in\mathcal S_M\). The first cALS (X)-update is explicitly (Q_MD_1); the first cGD update changes (C), not (Q_M), so (X_1=Q_MC_1). The mechanism is active before the first objective floor is consumed.
- Baseline conclusion preserved: the same exact inclusion holds for every realized (T), including zero smoothing, (T=0), singular block designs, and zero gradients.
- Producer-consumer provenance: producer `step_001`; consumers `step_002` for Haar geometry, `step_003` for the fixed witness, `step_006` for the non-transfer comparison, and `step_007` for final assembly.
- Null or boundary regime tested: (k<n) at the dimension boundary, rank-deficient Khatri-Rao products, zero coefficients, zero gradient, (T=0), and exact/noiseless (T).
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. Without fixed membership, the represented tensor can cancel the orthogonal residual and the static floor need not hold.
- Repair route if source is unsupported: N/A; the exact algorithm definitions supply it.

### `step_002`: conditional Haar projection margin and probability intersection

- Step ID: `step_002`
- Claim class: structural projection upper bound, positive orthogonal-residual margin, and confidence-explicit event intersection.
- Theorem role: produce one joint event of probability at least (1/4) on which both fixed witnesses have the required size.
- Mechanism source: the Haar law and conditional independence produced in `step_001`, plus direct orthogonal-invariance and Markov calculations under `assump:joint_initialization`.
- Source-to-claim adequacy: for fixed (T), orthogonal invariance and \(\operatorname{tr}(P_{\mathcal S_M})=k\) imply
  \(\mathbb E[P_{\mathcal S_M}\mid T]=(k/n)I_n\). Since
  \(\|P_{\mathcal H_M}T\|_F^2=\operatorname{tr}(P_{\mathcal S_M}T_{(1)}T_{(1)}^{\mathsf T})\), this is exactly the needed tensor-energy expectation.
- Residual-to-target adequacy: produced control and consumed target use the same realized (T), the same projector (P_{\mathcal H_M}\), and the same Frobenius norm. Orthogonal decomposition gives the exact target-side relation
  \(\|(I-P_{\mathcal H_M})T\|_F^2=\|T\|_F^2-\|P_{\mathcal H_M}T\|_F^2\).
- Key positive/control term or structural source: codimension energy (1-2k/n\), positive because `assump:dimension` and `assump:rank_window` imply (k/n\le1/8).
- Opposing defect terms: the projected energy \(\|P_{\mathcal H_M}T\|_F^2\). It is nonnegative and controlled in conditional expectation; there is no smoothing or base-conditioning defect.
- Closure/dominance/absorption relation: Markov yields
  \(\mathbb P(E_M^c\mid T)\le1/2\) for (T\ne0), where
  \(E_M=\{\|P_{\mathcal H_M}T\|_F^2\le2(k/n)\|T\|_F^2\}\). If (T=0), (E_M) holds surely. Conditional independence gives
  \(\mathbb P(E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}\mid T)
  =\prod_M\mathbb P(E_M\mid T)\ge1/4\).
- Accumulation behavior / scope compatibility: static event; no iteration or accumulated defect. Conditional averaging preserves the exact (1/4) lower bound.
- Obligation locality classification: `step-local`
- Noncircular closure status: noncircular. The events depend only on (T) and the two initial spans, before either trajectory runs. Dependency path: `step_001` -> `step_002` -> `step_007`.
- Entry-state / first-update stress result: the margin is fixed at initialization and does not depend on any first update. It is active before the objective trajectories are formed.
- Baseline conclusion preserved: the calculation is conditional on arbitrary (T), so it includes every smoothing realization and any exact/noiseless specialization. The (T=0) case is handled separately without division.
- Producer-consumer provenance: producer `step_002`; consumer `step_007`. `step_003` supplies the deterministic interface that turns this margin into an objective floor.
- Null or boundary regime tested: (T=0), (k/n=1/8), arbitrary deterministic bases, and shared (T) with independent method starts.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without a positive codimension margin, the fixed-span witness could be zero and no positive relative lower bound follows for nonzero (T).
- Repair route if source is unsupported: N/A; the direct conditional computation supplies it.

### `step_003`: exact fixed-witness residual floor

- Step ID: `step_003`
- Claim class: all-time structural lower bound and exact residual-to-target bridge.
- Theorem role: turn fixed-span membership into a pointwise lower bound on the actual CP objective for every trajectory time.
- Mechanism source: the derived membership certificate from `step_001` and direct Hilbert-space orthogonal decomposition in the ambient Frobenius inner product.
- Source-to-claim adequacy: because (S_t^M\in\mathcal H_M\), the two terms
  \((I-P_{\mathcal H_M})T\) and (P_{\mathcal H_M}T-S_t^M\) are orthogonal, giving an equality rather than an estimate.
- Residual-to-target adequacy: exact. Produced control is the fixed orthogonal component
  \(R_M=(I-P_{\mathcal H_M})T\); consumed target is the actual residual (T-S_t^M); theorem norm is Frobenius; decomposition is
  \(T-S_t^M=R_M+(P_{\mathcal H_M}T-S_t^M)\). There are no uncontrolled residual terms.
- Key positive/control term or structural source: \(\|R_M\|_F^2\), or equivalently the fixed normalized witness
  \(W_M=R_M/\|R_M\|_F\) when (R_M\ne0), for which
  \(\langle W_M,T-S_t^M\rangle=\|R_M\|_F\).
- Opposing defect terms: the in-subspace fitting error (P_{\mathcal H_M}T-S_t^M\), whose squared norm is nonnegative and therefore cannot cancel the orthogonal component.
- Closure/dominance/absorption relation: exact Pythagoras gives
  \(F_M(t)\ge\frac12\|R_M\|_F^2\) for every defined (t). No iterative loss is accumulated.
- Accumulation behavior / scope compatibility: horizon-uniform zero-defect conservation. The lower bound is re-evaluated from the same fixed identity at each (t), not propagated by a recurrence.
- Obligation locality classification: `step-local`
- Noncircular closure status: noncircular. `step_001` proves membership before `step_003`; `step_003` does not assume objective positivity or convergence. Dependency path: `step_001` -> `step_003` -> `step_007`.
- Entry-state / first-update stress result: at (t=0) and after the first update, represented tensors remain in the same \(\mathcal H_M\), so the identical decomposition applies. No activation delay occurs.
- Baseline conclusion preserved: if (R_M=0), the valid lower bound is (0) and the normalized witness is simply omitted. If (T=0), the theorem target is also (0). On `step_002`'s event with (T\ne0), (R_M\ne0) automatically.
- Producer-consumer provenance: producer `step_003`; consumer `step_007`; `step_006` compares this exact interface with the unconstrained residual identity.
- Null or boundary regime tested: zero orthogonal residual, (T=0), perfect in-subspace fit, rank-deficient factors, and arbitrarily large in-subspace factors with cancellation.
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. If (S_t^M) can leave \(\mathcal H_M\), its outside component can cancel (R_M).
- Repair route if source is unsupported: N/A for the constrained methods; `step_006` records why the source is absent for unconstrained methods.

### `step_004`: cALS well-definedness, descent, and scalar convergence

- Step ID: `step_004`
- Claim class: exact block minimization, signed descent, and all-time scalar convergence.
- Theorem role: prove existence of \(\lim_tF_{\mathrm{cALS}}(t)\) without assuming factor boundedness or parameter convergence.
- Mechanism source: direct Moore-Penrose least-squares derivation in the exact cyclic update convention of `setting.md`.
- Source-to-claim adequacy: for the constrained (X)-block, writing (X=QC) splits
  \[
  \|T_{(1)}-QCK^{\mathsf T}\|_F^2
  =\|(I-QQ^{\mathsf T})T_{(1)}\|_F^2
   +\|Q^{\mathsf T}T_{(1)}-CK^{\mathsf T}\|_F^2.
  \]
  The minimum-norm minimizer is
  \(C=Q^{\mathsf T}T_{(1)}K(K^{\mathsf T}K)^\dagger\), exactly the displayed update. The same current-notation identity gives the displayed unconstrained (Y)- and (Z)-block minimizers.
- Residual-to-target adequacy: the minimized matrix residual is exactly the mode matricization of the same tensor residual, and matricization preserves the Frobenius norm. No surrogate objective is introduced.
- Key positive/control term or structural source: each block objective drop is nonnegative by exact minimization at fixed values of the other two blocks.
- Opposing defect terms: Khatri-Rao rank deficiency, nonunique least-squares minimizers, and pseudoinverse rank changes. The Moore-Penrose formula remains finite and selects one exact minimizer; continuity of the update map is not needed.
- Closure/dominance/absorption relation: the three inequalities telescope within a sweep:
  \[
  F(X_{t+1},Y_t,Z_t)\le F(X_t,Y_t,Z_t),
  \]
  \[
  F(X_{t+1},Y_{t+1},Z_t)\le F(X_{t+1},Y_t,Z_t),
  \]
  \[
  F_{\mathrm{cALS}}(t+1)\le F(X_{t+1},Y_{t+1},Z_t).
  \]
- Accumulation behavior / scope compatibility: monotone-potential controlled. The accumulated nonnegative sweep drops satisfy
  \(\sum_{t=0}^{N-1}[F_{\mathrm{cALS}}(t)-F_{\mathrm{cALS}}(t+1)]
  =F_{\mathrm{cALS}}(0)-F_{\mathrm{cALS}}(N)\le F_{\mathrm{cALS}}(0)\).
  Since (F\ge0), the scalar sequence has a finite limit.
- Obligation locality classification: `step-local`
- Noncircular closure status: noncircular. Exact minimization is established from each displayed update before monotonicity is used; lower boundedness is the primitive fact (F\ge0), not the desired positive-limit conclusion. Dependency path: formal cALS definition -> `step_004` -> `step_007`.
- Entry-state / first-update stress result: even if the first Khatri-Rao matrix is rank deficient or zero, the pseudoinverse update is defined and is an exact minimizer, so the first complete sweep cannot increase (F).
- Baseline conclusion preserved: at zero objective, every block minimum is zero, so the objective remains zero. At a stationary or tied block state, the drop may vanish but monotonicity and limit existence remain valid.
- Producer-consumer provenance: producer `step_004`; consumer `step_007`.
- Null or boundary regime tested: zero Khatri-Rao matrix, singular Gram matrix, nonunique minimizers, zero objective, and zero block drop.
- Target conclusion false or theorem-critical obstruction present if source vanishes: the pointwise witness alone would not establish existence of the scalar limit.
- Repair route if source is unsupported: N/A; the exact sequential block convention supplies it.

### `step_005`: cGD Armijo termination, descent, and scalar convergence

- Step ID: `step_005`
- Claim class: line-search well-definedness, signed descent, and all-time scalar convergence.
- Theorem role: prove that every cGD iterate exists and that \(\lim_tF_{\mathrm{cGD}}(t)\) exists.
- Mechanism source: direct Taylor expansion for the finite-dimensional polynomial
  \(f_Q(C,Y,Z)\) in the exact Euclidean coefficient convention of `setting.md`.
- Source-to-claim adequacy: at a finite iterate (u_t=(C_t,Y_t,Z_t)), let (g_t=\nabla f_Q(u_t)\). The Hessian is continuous. Along the compact segment
  \(\{u_t-sg_t:0\le s\le1\}\), its operator norm has a finite bound (L_t). Thus for
  \(0<\eta\le\min\{1,L_t^{-1}\}\), with the (L_t=0) case interpreted directly,
  \[
  f_Q(u_t-\eta g_t)
  \le f_Q(u_t)-\eta\|g_t\|_F^2+\frac{L_t\eta^2}{2}\|g_t\|_F^2
  \le f_Q(u_t)-\frac\eta2\|g_t\|_F^2.
  \]
  A dyadic trial eventually enters this interval. If (g_t=0), the first trial is accepted.
- Residual-to-target adequacy: (f_Q(C,Y,Z)=F(QC,Y,Z)) is exactly the theorem objective evaluated at the represented factors; accepted coefficient-space descent is therefore actual objective descent, not a surrogate transfer.
- Key positive/control term or structural source: the accepted Armijo drop
  \((\eta_t/2)\|g_t\|_F^2\ge0\).
- Opposing defect terms: the local quadratic Taylor remainder. It is controlled at the current iterate by choosing the dyadic step below (1/L_t). No uniform Hessian bound or uniform positive step-size lower bound is needed.
- Closure/dominance/absorption relation: each accepted step satisfies
  \(F_{\mathrm{cGD}}(t+1)\le F_{\mathrm{cGD}}(t)), and
  \[
  \sum_{t=0}^{N-1}\frac{\eta_t}{2}\|g_t\|_F^2
  \le F_{\mathrm{cGD}}(0)-F_{\mathrm{cGD}}(N)
  \le F_{\mathrm{cGD}}(0).
  \]
- Accumulation behavior / scope compatibility: monotone-potential controlled. Polynomial gradients map finite iterates to finite vectors, finite backtracking produces an accepted positive step, and induction defines all finite iterates. Nonnegativity of (F) then gives a finite scalar limit. The proof does not infer parameter boundedness from the finite drop budget.
- Obligation locality classification: `step-local`
- Noncircular closure status: noncircular. The one-step Hessian bound uses only the current finite point, whose existence follows inductively from the preceding accepted finite step. It does not assume global trajectory boundedness or the desired limit. Dependency path: formal cGD definition -> `step_005` -> `step_001` membership at all defined iterates and `step_007` limit assembly.
- Entry-state / first-update stress result: (u_0) is finite almost surely. If (g_0=0), (u_1=u_0) and the objective already remains constant; otherwise sufficiently small dyadic (\eta) activates strict Armijo descent on the first update.
- Baseline conclusion preserved: at zero objective, differentiability and nonnegativity imply zero gradient, so the trajectory is stationary in objective. At a nonzero stationary point, the objective is constant and its limit exists.
- Producer-consumer provenance: producer `step_005`; consumer `step_007`. Final assembly combines this iterate-existence output with the independent membership implication from `step_001`; there is no backward dependency.
- Null or boundary regime tested: zero gradient, zero objective, arbitrarily large but finite current factors, vanishing accepted step sizes across time, and no uniform smoothness region.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without finite line-search termination and accepted descent, the cGD trajectory or its scalar limit would not be established.
- Repair route if source is unsupported: N/A; direct polynomial smoothness supplies it at every finite iterate.

### `step_006`: explicit non-transfer to unconstrained methods

- Step ID: `step_006`
- Claim class: scope boundary and residual-interface obstruction.
- Theorem role: certify exactly what remains unproved relative to the source problem and prevent the constrained fixed witness from being presented as an unconstrained result.
- Mechanism source: direct first-update formulas for the unconstrained (X)-block and the exact orthogonal residual decomposition relative to the initialization span.
- Source-to-claim adequacy: if (P_0) projects onto \(\operatorname{range}(X_0)\) and (K_0=Z_0\odot Y_0), unconstrained GD satisfies
  \[
  (I-P_0)X_1=\eta_0(I-P_0)T_{(1)}K_0,
  \]
  while unconstrained ALS satisfies
  \[
  (I-P_0)X_1=(I-P_0)T_{(1)}K_0(K_0^{\mathsf T}K_0)^\dagger.
  \]
  Neither right-hand side is forced to vanish by the branch assumptions.
- Residual-to-target adequacy: the constrained produced control is
  \((I-P_{\mathcal H_0})S_t=0\), while an unconstrained theorem would consume the actual residual
  \[
  (I-P_{\mathcal H_0})(T-S_t)
  =(I-P_{\mathcal H_0})T-(I-P_{\mathcal H_0})S_t.
  \]
  The uncontrolled second term is on the exact target scale and can oppose the fixed witness; there is no same-target dominance relation.
- Key positive/control term or structural source: none for the unconstrained extension. The point of the step is the exact absence of the fixed conservation source.
- Opposing defect terms: the generated outside-span component \((I-P_{\mathcal H_0})S_t\), already potentially nonzero at the first update.
- Closure/dominance/absorption relation: unsupported for unconstrained dynamics. A transfer would need a new bound such as
  \(\|(I-P_{\mathcal H_0})S_t\|_F\le\gamma\|(I-P_{\mathcal H_0})T\|_F\) with some (gamma<1), or an endogenous moving witness; neither is a branch output.
- Accumulation behavior / scope compatibility: the defect is generated and potentially persistent from the first update, with unknown sign relative to the fixed witness. No finite budget, cancellation, or stopping relation is available or claimed.
- Obligation locality classification: `step-local`. The current claim is the exact non-transfer certificate. An unconstrained positive-limit theorem is outside this branch's formalized contract, not an unresolved obligation assigned to this step.
- Noncircular closure status: the negative interface audit is noncircular. It uses the first-update formula before any all-time claim. There is no alleged unconstrained closure.
- Entry-state / first-update stress result: at (t=0), (X_0\in\mathcal S_0); after one unconstrained update the displayed outside-span term can be nonzero. Thus the fixed-witness source is inactive before an unconstrained all-time floor could be consumed.
- Baseline conclusion preserved: the gap persists even in exact/noiseless data; smoothing is not the missing bridge.
- Producer-consumer provenance: `step_001` and `step_003` identify the constrained source/interface; `step_006` records why no corresponding producer feeds an unconstrained theorem. `step_007` cites this as a scope boundary only.
- Null or boundary regime tested: cases where the displayed outside-span term vanishes accidentally, and generic cases where it does not. Accidental first-step vanishing is not an all-time invariant and supplies no theorem-facing bridge.
- Target conclusion false or theorem-critical obstruction present if source vanishes: the constrained theorem remains true, but the unconstrained source target remains unresolved; the fixed lower bound cannot be inferred.
- Repair route if source is unsupported: a new idea/theorem contract for unconstrained dynamics, not a local proof step in this constrained branch.

### `step_007`: joint theorem assembly

- Step ID: `step_007`
- Claim class: probability conversion, all-time-to-limit specialization, and final theorem closure.
- Theorem role: assemble the exact formalized material-partial theorem with all constants and quantifiers exposed.
- Mechanism source: joint event from `step_002`, pointwise objective floor from `step_003`, cALS scalar limit from `step_004`, and cGD scalar limit from `step_005`.
- Source-to-claim adequacy: on (E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}), for each method
  \[
  \|(I-P_{\mathcal H_M})T\|_F^2
  \ge(1-2k/n)\|T\|_F^2
  \ge\frac34\|T\|_F^2,
  \]
  so `step_003` gives (F_M(t)\ge(3/8)\|T\|_F^2) for all (t). Taking each already-proved scalar limit preserves the inequality. The calculation works for every positive integer (r) satisfying the rank window, so the existential threshold may be taken as (r_0=1), with empty small-(r) rank windows interpreted vacuously.
- Residual-to-target adequacy: exact same target, same Frobenius norm, and same realized tensor throughout. The only conversion is from an all-time scalar inequality to its scalar limit; no residual or probability term is lost.
- Key positive/control term or structural source: codimension margin (1-2k/n\ge3/4) and the two method-specific monotone lower-bounded objective sequences.
- Opposing defect terms: projected energy, already controlled on `step_002`'s event. There are no time-dependent leakage, smoothing-transfer, or method-coupling defects.
- Closure/dominance/absorption relation: exact chain
  \[
  E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}
  \Longrightarrow
  \forall M,\forall t,\ F_M(t)\ge\frac38\|T\|_F^2
  \Longrightarrow
  \forall M,\ \lim_tF_M(t)\ge\frac38\|T\|_F^2.
  \]
- Accumulation behavior / scope compatibility: the pointwise floor has zero accumulated defect; limit existence is monotone-potential controlled separately in `step_004` and `step_005`. Conditional probability is static and averaged exactly.
- Obligation locality classification: `step-local`
- Noncircular closure status: noncircular. Every generated output is produced by an earlier step, and no event includes the desired limit conclusion. Dependency paths: `step_001` -> `step_002` -> `step_007`; `step_001` -> `step_003` -> `step_007`; `step_004` -> `step_007`; `step_005` -> `step_007`.
- Entry-state / first-update stress result: the floor is active at (t=0) and after every first update by `step_001`; both method-specific descent mechanisms are active or stationary from their first update by `step_004` and `step_005`.
- Baseline conclusion preserved: if (T=0), the event holds surely and both limits are nonnegative, equal to or above the required zero lower bound. For nonzero (T) on the event, the positive (3/8) fraction is unchanged in exact/noiseless specializations.
- Producer-consumer provenance: producers `step_002` through `step_005`; consumer final theorem assembly. `step_006` supplies the explicit statement of what the theorem does not export.
- Null or boundary regime tested: (T=0), equality (k/n=1/8), zero block drops, zero cGD gradient, singular ALS designs, and arbitrary shared smoothing realization.
- Target conclusion false or theorem-critical obstruction present if source vanishes: if either projection event, fixed membership, or method-specific scalar convergence source is removed, the conjunctive limit theorem is not established.
- Repair route if source is unsupported: N/A; all inputs have earlier producers.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Haar fixed span (\mathcal S_M), independence from (T), and (S_t^M\in\mathcal H_M) | `step_001` | `assump:dimension`, `assump:rank_window`, `assump:joint_initialization`, and exact (Q_M)-parameterized updates | Gaussian rank failure has probability zero; Khatri-Rao singularity and factor size do not affect left multiplication by (Q_M); no uncontrolled leakage | Produced and consumed subspaces are identical in the Euclidean/Frobenius convention; membership residual is exactly zero | (X_t=Q_MD_t\Rightarrow S_t^M\in\mathcal S_M\otimes\mathbb R^n\otimes\mathbb R^n) | Exact algebraic parameterization; no positive slack needed | `step_002`, `step_003`, `step_006`, `step_007` | None |
| Conditional event (E_M) and residual margin (\|(I-P_{\mathcal H_M})T\|_F^2\ge(1-2k/n)\|T\|_F^2) | `step_002` | Haar law from `step_001`, exact trace (k), fixed realized (T), Markov inequality | Projected energy is controlled on (E_M); no smoothing, empirical, or trajectory defect; (T=0) handled separately | Same (T), projector, and Frobenius norm; exact complement identity | (\|P_HT\|^2\le2(k/n)\|T\|^2\) implies the exported complement bound; (k/n\le1/8) gives (3/4) | Codimension from `assump:dimension` and `assump:rank_window` | `step_007` | None |
| All-time actual-objective floor (F_M(t)\ge\frac12\|(I-P_{\mathcal H_M})T\|_F^2) | `step_003` | Fixed membership from `step_001` and orthogonal projection | In-subspace fitting error is uncontrolled but nonnegative and orthogonal; no outside-span defect | Exact decomposition of the actual residual in the theorem Frobenius norm; every residual term is accounted for | Pythagorean equality, with no absorption threshold | Positive margin supplied separately by `step_002`; identity remains valid at zero margin | `step_007`; comparison in `step_006` | None |
| cALS monotonicity and finite scalar limit (L_{\mathrm{cALS}}) | `step_004` | Exact sequential block definitions and Moore-Penrose least squares | Rank deficiency/nonuniqueness controlled by pseudoinverse selection; factor boundedness and update continuity are unnecessary and unclaimed | Matricization preserves the exact tensor Frobenius objective | Three nonnegative block drops telescope; (0\le F_t\le F_0) | Lower threshold (0) from squared loss | `step_007` | None |
| cGD finite backtracking, Armijo decrease, and finite scalar limit (L_{\mathrm{cGD}}) | `step_005` | Finite initialization, polynomial (f_Q), continuous Hessian on each current search segment | Local Taylor remainder controlled by current (L_t); no uniform smoothness, factor bound, step lower bound, or parameter convergence is exported | (f_Q(C,Y,Z)=F(QC,Y,Z)) exactly; coefficient descent is actual objective descent | Choose dyadic (\eta\le\min\{1,L_t^{-1}\}); accepted drops telescope and (F\ge0) | Local finite Hessian bound at each current iterate | `step_001` for all-time defined membership, `step_007` | None |
| Unconstrained non-transfer certificate | `step_006` | Exact unconstrained first-update and orthogonal residual formulas | Outside-initial-span represented component is uncontrolled, generated, persistent, and can oppose the witness | Transfer is explicitly inadequate: constrained residual (R_M) is replaced by (R_M-(I-P_H)S_t), with no domination at the (R_M) scale | No valid dominance relation under the current setting; this is the declared gap | No source in this branch | Scope statement in `step_007` and final theorem exposition | None for the stated certificate; an unconstrained theorem is outside the current contract |
| Joint theorem event and two limit lower bounds | `step_007` | `step_002` event, `step_003` floor, `step_004` and `step_005` limits | No remaining defect; shared-(T) dependence is handled by conditioning, and method starts are conditionally independent | Exact same-target floor passes to each scalar limit | (1-2k/n\ge3/4), half-squared-loss factor gives (3/8), conditional product gives (1/4) | Dimension/rank codimension and the two (1/2) conditional event probabilities | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Almost-sure full-rank Haar initialization spans independent of (T) | `step_001` from `assump:dimension`, `assump:rank_window`, `assump:joint_initialization` | `step_002`, `step_003`, `step_006` | Defines the fixed method-specific projectors and conditional probability calculation | Primitive initialization -> `step_001` -> consumers | derived | None |
| All-time fixed-span membership (S_t^M\in\mathcal H_M) | `step_001` for every defined iterate; `step_005` separately proves every cGD index is defined | `step_003`, `step_007` | Makes the orthogonal witness valid at every finite time | Algorithm parameterization -> `step_001` -> `step_003`; (`step_001`, `step_005`) -> `step_007` for all-time cGD scope | derived | None |
| Conditional projection events (E_M) and joint event (E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}) | `step_002` | `step_007` | Supplies probability at least (1/4) and residual fraction at least (3/4) for both methods | `step_001` -> `step_002` -> `step_007` | derived | None |
| Fixed residual control (R_M=(I-P_{\mathcal H_M})T) and all-time objective floor | `step_003` | `step_007`; boundary audit `step_006` | Converts the static projection margin to actual objective lower bounds | `step_001` -> `step_003` -> consumers | derived | None |
| Finite cALS scalar objective limit | `step_004` | `step_007` | Establishes the first limit in the conjunctive theorem | Formal cALS update -> `step_004` -> `step_007` | derived | None |
| Finite cGD line searches and scalar objective limit | `step_005` | `step_007` | Establishes all cGD iterates and the second limit | Formal cGD update -> `step_005` -> `step_007` | derived | None |
| Explicit absence of an unconstrained fixed-witness bridge | `step_006` | `step_007` scope statement | Prevents overclaiming beyond the material-partial theorem | `step_001`, `step_003` -> `step_006` -> final scope statement | derived | None for the constrained theorem; unconstrained extension requires a new idea |
| Joint positive-limit conclusion | `step_007` | Final theorem | Exact target theorem | `step_002`, `step_003`, `step_004`, `step_005` -> `step_007` | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | Prove that each (G_x^M) has full column rank almost surely, (\mathcal S_M) is Haar and independent of (T), and every defined represented tensor satisfies (S_t^M\in\mathcal H_M) by exact algorithmic enforcement. | None | Primitive: `assump:dimension`, `assump:rank_window`, `assump:joint_initialization` | Separate the static distributional fact from the trajectory membership fact without assuming any generated invariant. | Direct Gaussian rank and orthogonal-invariance derivation; exact (Q_M)-factor inspection. No external citation required. | Haar/fixed-span certificate used by `step_002` and `step_003`. | Objective A: exact (k/n) Haar geometry; all-time zero-leakage membership with no hidden constants. | PENDING |
| `step_002` | Conditional on arbitrary (T), prove (\mathbb E\|P_{\mathcal H_M}T\|_F^2=(k/n)\|T\|_F^2), (\mathbb P(E_M\mid T)\ge1/2), conditional independence of (E_{\mathrm{cALS}},E_{\mathrm{cGD}}), and the joint conditional/unconditional probability lower bound (1/4). | `step_001` | Primitive: `assump:dimension`, `assump:rank_window`, `assump:joint_initialization`; derived Haar/independence output of `step_001` | Handle shared (T), conditional independence, and the (T=0) boundary without dividing by (\|T\|_F). | Direct (\mathbb E P_S=(k/n)I) trace calculation, Markov inequality, conditional product, tower property. | Joint event with both squared orthogonal residuals at least ((1-2k/n)\|T\|_F^2\). | Objective A: confidence (1/4), exact dependence (1-2k/n\ge3/4), no hidden dependence. | PENDING |
| `step_003` | For every defined iterate and each method, prove the Pythagorean identity and (F_M(t)\ge\frac12\|(I-P_{\mathcal H_M})T\|_F^2); define and verify the fixed witness only when its denominator is nonzero. | `step_001` | Derived fixed-span membership from `step_001`; no further primitive assumption | Export an exact same-target floor and avoid an iterative recurrence or hidden factor invariant. | Direct orthogonal decomposition/Cauchy witness in the ambient Frobenius inner product. | Horizon-uniform fixed-witness objective floor. | Objective A: all-time exact residual fraction; no approximation term. | PENDING |
| `step_004` | Prove each displayed cALS pseudoinverse update is the exact minimum-norm block minimizer, the three sequential block objectives are nonincreasing within each sweep, and (F_{\mathrm{cALS}}(t)) has a finite limit. | None | None beyond the formal cALS algorithm and finite-dimensional setting | Cover singular Khatri-Rao Gram matrices without assuming conditioning, and distinguish sequential from rejected simultaneous Jacobi updates. | Direct Moore-Penrose matrix least squares, orthogonal (Q)-splitting, and monotone convergence of real sequences. | cALS scalar-limit certificate. | Objective B: all-time deterministic monotonicity and asymptotic scalar limit; no convergence rate. | PENDING |
| `step_005` | Prove finite termination of every dyadic Armijo search, exact accepted-step descent, existence of all finite cGD iterates, and a finite limit of (F_{\mathrm{cGD}}(t)). | None | None beyond the formal cGD algorithm and finite-dimensional setting | Use only pointwise smoothness, without assuming global factor boundedness, a uniform Lipschitz constant, or a positive lower bound on step sizes. | Direct polynomial (C^2) property, compact-segment Hessian bound, Taylor inequality, dyadic backtracking, monotone convergence. | cGD well-definedness and scalar-limit certificate. | Objective B: all-time deterministic accepted descent and asymptotic scalar limit; local (L_t) is not a public rate. | PENDING |
| `step_006` | Prove the exact unconstrained first-update outside-span formulas and residual decomposition showing that the fixed witness does not transfer to unconstrained ALS/GD without a new outside-span control or endogenous witness. | `step_001`, `step_003` | Primitive algorithm comparison only; no new theorem-facing assumption | State a rigorous scope gap without claiming that unconstrained methods always escape or fail. | Direct gradient and least-squares update algebra; exact orthogonal residual decomposition. | Non-transfer certificate and explicit remaining source gap. | None; this is a scope/interface diagnostic, not a quantitative theorem extension. | PENDING |
| `step_007` | On the joint event from `step_002`, combine `step_003` with (k/n\le1/8), take the two limits from `step_004` and `step_005`, average the conditional probability, and state the exact material-partial theorem with (r_0=1), (L(r)=r^{5/4}), (\alpha=1/4), probability (1/4), and residual/objective constants (3/4,3/8). | `step_002`, `step_003`, `step_004`, `step_005`, `step_006` | Primitive: `assump:dimension`, `assump:rank_window`, `assump:arbitrary_base`, `assump:gaussian_smoothing`, `assump:joint_initialization`; derived outputs from all dependencies | Preserve all quantifiers, make uniformity over bases explicit, and avoid upgrading the constrained theorem to unconstrained methods. | Deterministic implication on the joint event, scalar limit passage, and tower property. | Final theorem and bound certificate. | Objectives A and B: exact specialization (1-2k/n\ge3/4), objective factor (1/2), joint confidence (1/4), all-time-to-asymptotic bridge, no hidden constants. | PENDING |

## Dependency Notes

The graph is acyclic and every dependency points to an earlier step. `step_001` produces the only trajectory membership invariant and the only Haar initialization interface. `step_002` and `step_003` are independent children of that output: one supplies probability and margin, the other supplies the deterministic objective bridge. `step_004` and `step_005` independently prove the two scalar limits from their exact method definitions. `step_006` uses the already-defined constrained interface only to delimit theorem scope. `step_007` consumes all positive theorem-facing outputs and states the final material-partial result.

The assembly has no hidden generated event. In particular, the joint event contains only the two initialization-span projection inequalities, not monotonicity, convergence, factor boundedness, or the desired conclusion. Monotonicity and limit existence are deterministic outputs of `step_004` and `step_005`. The all-time lower bound is a fresh application of one fixed orthogonal decomposition at every time, so no error, leakage, or recurrence accumulates.

## Blockers

None.

The extension to unconstrained ALS or unconstrained GD is outside the stated theorem contract. `step_006` records the exact missing fixed-span interface and routes any such extension to a new idea/theorem contract.
