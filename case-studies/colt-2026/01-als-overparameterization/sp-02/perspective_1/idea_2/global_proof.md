# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_2`
- Sketch attempt: 1
- Global-proof attempt: 1
- Goal mode: exact-goal
- Reviewed setting: `perspective_1/idea_2/setting.md`, SHA-256 `d16c1546d48cedf94ba4438e931655f72acb8c830ac6358342e3f3f13266ab3f`
- Reviewed sketch: `perspective_1/idea_2/proof_sketch.md`, SHA-256 `900acb8b4a91f78f5223ada2fb53bef611d2259dfaeaadf26c1db7febb949720`
- Reviewed sketch review: `perspective_1/idea_2/proof_sketch_review.md`, SHA-256 `5e1d161624a35a771986bd75270efcfac980daaa4d2c056e80eb8cf39bdc91be`
- Sketch review status: `ACCEPTED`
- Review viability score: 9
- Accepted roadmap: fixed one-mode conservation, conditional Haar projection margin, exact orthogonal-complement witness, separate cALS and cGD scalar-limit arguments, constrained-only scope certification, and joint probability/limit assembly.

## Status

COMPLETE_DRAFT

The accepted seven-step sketch closes at theorem-diagnostic granularity. Every theorem-facing generated condition has a legal producer and consumer path; every all-time or accumulated claim has a concrete zero-leakage, telescoping, or monotone-potential relation; and no theorem-contract, roadmap, or exported-interface repair is exposed. Future `/proof-step` artifacts must still prove the assigned local statements independently.

## Attempted Theorem Claim

This is the exact-goal, `material_partial` claim from `setting.md`.

Fix (q>0). There is an (r_0), and the diagnostic supports the choice (r_0=1), such that for every integer (r\ge r_0), every (n\ge 8r^{5/4}), every integer (k) with (r<k\le r^{5/4}), and every unrestricted deterministic base triple ((\bar A,\bar B,\bar C)), draw the smoothed CP tensor (T) under `assump:gaussian_smoothing` and draw the two independent method-specific Gaussian initialization triples under `assump:joint_initialization`. For the one-mode constrained sequential ALS and coefficient-parameterized Armijo GD procedures defined in `setting.md`,
\[
\mathbb P\!\left[
\bigcap_{M\in\{\mathrm{cALS},\mathrm{cGD}\}}
\left\{
\lim_{t\to\infty}F_M(t)\ \text{exists and}\quad
\lim_{t\to\infty}F_M(t)\ge \frac38\|T\|_F^2
\right\}
\right]\ge \frac14.
\]

The theorem is uniform over the deterministic bases and uses the same realized (T) for both methods. Its probability is over smoothing and both starts, although the lower bound is proved conditional on every fixed (T). The exposed rank threshold is (L(r)=r^{5/4}), equivalently exponent (\alpha=1/4). The objective floor is horizon-uniform and deterministic on the initialization-span event; the final conclusion is asymptotic only because the two scalar objective limits are taken. No parameter convergence, convergence rate, factor bound, Khatri--Rao conditioning, or conclusion for unconstrained ALS/GD is asserted.

## Whole-Proof Draft

### Block A: probability-one span construction and exact conservation

Work first on the event (\Omega_{\mathrm{rank}}) that both (G_x^M\in\mathbb R^{n\times k}) have full column rank. The numerical assumptions give
\[
\frac{k}{n}\le \frac{r^{5/4}}{8r^{5/4}}=\frac18<1,
\]
so (k<n). An (n\times k) matrix with an absolutely continuous iid Gaussian law has rank (k) almost surely; hence (\mathbb P(\Omega_{\mathrm{rank}})=1). On this event (Q_M) has (k) orthonormal columns and
\(
P_{\mathcal S_M}=Q_MQ_M^{\mathsf T}
\)
is the orthogonal projector onto the random (k)-plane (\mathcal S_M=\operatorname{range}(G_x^M)).

The Gaussian law is left-orthogonally invariant. Therefore, for every deterministic orthogonal (U\in O(n)), (U\mathcal S_M\stackrel d=\mathcal S_M), so (\mathcal S_M) is Haar-uniform on the Grassmannian. Independence in `assump:joint_initialization` makes each span independent of (T) and makes the two spans conditionally independent given (T).

For cALS, initial membership follows from (X_0=G_x=QQ^{\mathsf T}G_x), and every constrained (X)-update has the exact form
\[
X_{t+1}=Q D_{t+1},\qquad
D_{t+1}=Q^{\mathsf T}T_{(1)}K_t^x
\bigl((K_t^x)^{\mathsf T}K_t^x\bigr)^\dagger.
\]
For cGD, (X_0=QC_0) and every update retains (X_t=QC_t), since the algorithm updates the coefficient (C_t) while (Q) stays fixed. Consequently, at every defined iterate,
\[
S_t^M=\sum_{i=1}^k x_{t,i}^M\otimes y_{t,i}^M\otimes z_{t,i}^M
\in \mathcal S_M\otimes\mathbb R^n\otimes\mathbb R^n=\mathcal H_M.
\tag{A.1}
\]
This is zero-leakage algebraic conservation, not a bootstrap hypothesis. The cALS pseudoinverse formulas define every finite update directly. Block E below proves that every cGD line search terminates, thereby co-closing the phrase "every defined iterate" into membership for every finite cGD index. There is no circular use of the objective floor in this membership argument.

### Block B: conditional Haar projection margin

Fix an arbitrary realized tensor (T), including (T=0), and put
\(
A_T=T_{(1)}T_{(1)}^{\mathsf T}\succeq0.
\)
Haar invariance implies that (\mathbb E[P_{\mathcal S_M}\mid T]) commutes with every orthogonal matrix, hence equals a scalar multiple of (I_n). Taking traces fixes the scalar:
\[
\mathbb E[P_{\mathcal S_M}\mid T]=\frac{k}{n}I_n.
\tag{B.1}
\]
Projection in the first tensor mode is exactly multiplication of the mode-1 matricization by (P_{\mathcal S_M}). Thus
\[
\begin{aligned}
\mathbb E\!\left[\|P_{\mathcal H_M}T\|_F^2\mid T\right]
&=\mathbb E\!\left[\operatorname{tr}
  (P_{\mathcal S_M}A_T)\mid T\right]\\
&=\frac{k}{n}\operatorname{tr}(A_T)
=\frac{k}{n}\|T\|_F^2.
\end{aligned}
\tag{B.2}
\]
Define
\[
E_M=\left\{\|P_{\mathcal H_M}T\|_F^2
\le 2\frac{k}{n}\|T\|_F^2\right\}.
\]
For (T\ne0), Markov's inequality applied to the nonnegative projected energy and (B.2) gives
\(
\mathbb P(E_M^c\mid T)\le1/2.
\)
For (T=0), (E_M) holds surely, so the same lower bound is valid without dividing by (\|T\|_F^2). Conditional on (T), the two events are functions of independent method-specific spans. Hence
\[
\mathbb P(E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}\mid T)
=\prod_M\mathbb P(E_M\mid T)\ge\frac14.
\tag{B.3}
\]
On (E_M), orthogonality of (P_{\mathcal H_M}) gives the exact complement identity
\[
\|(I-P_{\mathcal H_M})T\|_F^2
=\|T\|_F^2-\|P_{\mathcal H_M}T\|_F^2
\ge\left(1-2\frac{k}{n}\right)\|T\|_F^2
\ge\frac34\|T\|_F^2.
\tag{B.4}
\]
The event is static, is available before either trajectory runs, and contains no trajectory invariant or desired limit conclusion.

### Block C: exact fixed-witness floor

For each method set
\(
R_M=(I-P_{\mathcal H_M})T.
\)
By (A.1), (P_{\mathcal H_M}S_t^M=S_t^M), and therefore
\[
T-S_t^M=R_M+(P_{\mathcal H_M}T-S_t^M),
\qquad
R_M\perp(P_{\mathcal H_M}T-S_t^M).
\tag{C.1}
\]
Pythagoras yields, at every finite defined time,
\[
2F_M(t)=\|T-S_t^M\|_F^2
=\|R_M\|_F^2+\|P_{\mathcal H_M}T-S_t^M\|_F^2
\ge\|R_M\|_F^2.
\tag{C.2}
\]
When (R_M\ne0), the normalized fixed witness (W_M=R_M/\|R_M\|_F) also satisfies
\[
\langle W_M,T-S_t^M\rangle=\|R_M\|_F
\quad\text{for every }t.
\tag{C.3}
\]
When (R_M=0), (C.2) remains valid and no normalized witness is defined or needed. The uncontrolled in-subspace residual in (C.1) cannot oppose the witness because it is orthogonal to it. The floor is therefore all-time without recurrence: at each time it is a fresh use of the same exact decomposition, and the accumulated outside-span leakage is identically zero.

### Block D: cALS well-definedness and scalar limit

Consider one cALS (X)-block with current (K=Z\odot Y). Under the constraint (X=QC), orthogonality of (Q) splits the squared matrix residual as
\[
\|T_{(1)}-QCK^{\mathsf T}\|_F^2
=\|(I-QQ^{\mathsf T})T_{(1)}\|_F^2
+\|Q^{\mathsf T}T_{(1)}-CK^{\mathsf T}\|_F^2.
\tag{D.1}
\]
For arbitrary, possibly rank-deficient (K), Moore--Penrose least squares gives the minimum-Frobenius-norm minimizer
\[
C_*=Q^{\mathsf T}T_{(1)}K(K^{\mathsf T}K)^\dagger.
\tag{D.2}
\]
This is exactly the displayed cALS update. The same calculation without (Q) gives the displayed minimum-norm (Y)- and (Z)-block minimizers. Pseudoinverses are finite matrices even when a Gram matrix is singular or zero, so every block update and every sweep is defined.

Because the blocks are updated sequentially, not simultaneously, exact minimization gives
\[
\begin{aligned}
F(X_{t+1},Y_t,Z_t)&\le F(X_t,Y_t,Z_t),\\
F(X_{t+1},Y_{t+1},Z_t)&\le F(X_{t+1},Y_t,Z_t),\\
F(X_{t+1},Y_{t+1},Z_{t+1})&\le F(X_{t+1},Y_{t+1},Z_t).
\end{aligned}
\tag{D.3}
\]
Thus (0\le F_{\mathrm{cALS}}(t+1)\le F_{\mathrm{cALS}}(t)), and the nonnegative drops obey the finite-potential identity
\[
\sum_{t=0}^{N-1}
\bigl(F_{\mathrm{cALS}}(t)-F_{\mathrm{cALS}}(t+1)\bigr)
=F_{\mathrm{cALS}}(0)-F_{\mathrm{cALS}}(N)
\le F_{\mathrm{cALS}}(0).
\tag{D.4}
\]
Monotone convergence of real sequences therefore gives a finite scalar limit (L_{\mathrm{cALS}}\ge0). No factor compactness or continuity of the pseudoinverse update map is used. If the first design is singular or zero, (D.2) is still an exact minimizer; if the objective is already zero, every subsequent block minimum remains zero.

### Block E: cGD line-search termination and scalar limit

Fix (Q=Q_{\mathrm{cGD}}), write (u_t=(C_t,Y_t,Z_t)), and let
\(
g_t=\nabla f_Q(u_t).
\)
The function (f_Q) is a finite-dimensional polynomial, hence is (C^2). If (u_t) is finite, then (g_t) is finite and the segment
\(
\{u_t-sg_t:0\le s\le1\}
\)
is compact. Continuity of the Hessian gives a finite bound
\[
L_t=\sup_{0\le s\le1}
\|\nabla^2 f_Q(u_t-sg_t)\|_{\mathrm{op}}<\infty.
\tag{E.1}
\]
Taylor's formula along the segment gives, for (0<\eta\le1),
\[
f_Q(u_t-\eta g_t)
\le f_Q(u_t)-\eta\|g_t\|_F^2
+\frac{L_t\eta^2}{2}\|g_t\|_F^2.
\tag{E.2}
\]
If (g_t=0), the first trial (\eta=1) is accepted and (u_{t+1}=u_t). Otherwise, any dyadic trial satisfying
\(
\eta\le\min\{1,L_t^{-1}\}
\)
is accepted, with the (L_t=0) case interpreted as accepting every (\eta\le1). Since dyadic trials tend to zero, a finite trial is accepted. Starting from the finite Gaussian initialization, induction proves that all finite cGD iterates exist. This closes the all-time membership scope used in Block C.

Every accepted step satisfies the actual-objective inequality
\[
F_{\mathrm{cGD}}(t+1)=f_Q(u_{t+1})
\le f_Q(u_t)-\frac{\eta_t}{2}\|g_t\|_F^2
\le F_{\mathrm{cGD}}(t).
\tag{E.3}
\]
The identity (f_Q(C,Y,Z)=F(QC,Y,Z)) is exact, so there is no surrogate-to-target residual. The accumulated drops satisfy
\[
\sum_{t=0}^{N-1}\frac{\eta_t}{2}\|g_t\|_F^2
\le F_{\mathrm{cGD}}(0)-F_{\mathrm{cGD}}(N)
\le F_{\mathrm{cGD}}(0).
\tag{E.4}
\]
Nonnegativity of (F) gives a finite scalar limit (L_{\mathrm{cGD}}\ge0). The local quantities (L_t) are used only to prove one-step termination; no uniform Hessian bound, step-size lower bound, convergence rate, or factor bound is exported. At zero objective, nonnegativity and differentiability force (g_t=0), so the baseline objective remains zero.

### Block F: exact constrained-only scope boundary

The fixed witness is a property of the stated constrained algorithms, not of the shared initialization alone. Let (P_0) project onto the unconstrained initialization span and put (K_0=Z_0\odot Y_0). For ordinary simultaneous-gradient (X)-updating,
\[
(I-P_0)X_1=\eta_0(I-P_0)T_{(1)}K_0,
\tag{F.1}
\]
and for an ordinary unconstrained ALS (X)-block,
\[
(I-P_0)X_1=(I-P_0)T_{(1)}K_0(K_0^{\mathsf T}K_0)^\dagger.
\tag{F.2}
\]
Neither right-hand side is forced to vanish by the branch assumptions. Correspondingly,
\[
(I-P_{\mathcal H_0})(T-S_t)
=(I-P_{\mathcal H_0})T-(I-P_{\mathcal H_0})S_t,
\tag{F.3}
\]
and the second term is an uncontrolled same-scale, unknown-sign defect. The accepted sketch supplies no inequality that dominates it by a strict fraction of the fixed residual and no moving-witness replacement. Equations (F.1)--(F.3) prove only non-transfer of this proof interface; they do not assert that unconstrained methods always escape or fail. This block is a scope certificate and is not needed to derive the constrained lower bound.

### Block G: joint assembly

On (E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}), combine (B.4) and (C.2) to obtain, simultaneously for both methods and every finite (t),
\[
F_M(t)\ge\frac12\|R_M\|_F^2
\ge\frac12\cdot\frac34\|T\|_F^2
=\frac38\|T\|_F^2.
\tag{G.1}
\]
Blocks D and E give the two scalar limits. Passing (t\to\infty) in (G.1) loses no term and yields
\[
L_M\ge\frac38\|T\|_F^2
\quad\text{for }M\in\{\mathrm{cALS},\mathrm{cGD}\}.
\tag{G.2}
\]
By (B.3), the conditional probability of the event implying (G.2) is at least (1/4) for every fixed (T). The tower property therefore gives the same unconditional probability after averaging over the smoothing draw. Since the derivation was conditional on arbitrary (T), it is uniform over every deterministic base triple and does not use conditioning or incoherence. The numerical implication (k/n\le1/8) is valid throughout the stated rank window. Thus (r_0=1) is admissible, with any empty small-(r) integer rank window interpreted vacuously, and the exact theorem follows.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| A. Haar spans and exact fixed-span conservation | Constructs the method projectors and proves zero-leakage membership for every finite iterate | `step_001`; cGD index existence co-closed by `step_005` | Formal algorithm definitions; cGD finite-iterate output from Block E at final all-time use | `assump:dimension`, `assump:rank_window`, `assump:joint_initialization` | None at diagnostic level; local proof must formalize Gaussian full rank, Haar invariance, and exact (Q_M)-factor induction |
| B. Conditional projection margin | Produces the joint probability-(1/4) event and the (3/4) squared residual margin | `step_002` | Haar and independence output of Block A | `assump:dimension`, `assump:rank_window`, `assump:joint_initialization` | None; local proof must keep the (T=0) branch separate and justify conditional independence/tower conversion |
| C. Fixed-witness objective floor | Transfers the static orthogonal residual to the actual objective at every time | `step_003` | Fixed-span membership from Block A | Accepted derived membership only | None; local proof must state the orthogonal decomposition and omit normalized (W_M) at zero residual |
| D. cALS scalar convergence | Proves all cALS updates exist, each sweep descends, and the scalar objective converges | `step_004` | Formal sequential cALS update | No additional theorem-facing assumption | None; local proof must handle singular designs via Moore--Penrose least squares and preserve sequential ordering |
| E. cGD scalar convergence | Proves finite Armijo termination at every iteration, descent, all finite iterates, and the scalar limit | `step_005` | Formal coefficient objective and dyadic line search | No additional theorem-facing assumption | None; local proof must use a current-segment Hessian bound only and avoid exporting uniform smoothness or step-size bounds |
| F. Constrained-only scope certificate | Shows why the fixed witness does not transfer to unconstrained ALS/GD | `step_006` | Constrained interfaces from Blocks A and C; direct comparison formulas | No new theorem-facing assumption | None for the stated negative certificate; unconstrained positive-limit control is outside the theorem contract |
| G. Joint theorem closure | Combines event, floor, limits, constants, quantifiers, and scope label | `step_007` and direct assembly | Blocks B--F; Block A through B/C | All five stable assumptions in `setting.md` | None; local assembly must preserve conditioning, shared (T), exact constants, and material-partial scope |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | Block A | Produces Haar/independence for `step_002`; membership for `step_003`; reference interface for `step_006`; fixed projectors for assembly | Prove (k<n), Gaussian rank (k) a.s., Haar law, independence, initialization membership, and zero-leakage update preservation | cGD claim is for defined iterates; `step_005` supplies every finite index without a backward dependency |
| `step_002` | Block B | Consumes `step_001`; produces event/margin for `step_007` | Prove (B.1)--(B.4), the (T=0) branch, conditional product, and tower property | Constants (2,1/2,1/4,1-2k/n,3/4) must remain explicit |
| `step_003` | Block C | Consumes `step_001`; exports floor to `step_007`; supplies comparison interface to `step_006` | Prove (C.1)--(C.3) in the tensor Frobenius inner product | No recurrence, factor bound, or normalized witness at (R_M=0) |
| `step_004` | Block D | Independent producer of cALS limit for `step_007` | Prove constrained and unconstrained block least-squares formulas for singular (K), three sequential decreases, telescoping drops, and scalar convergence | Do not infer parameter convergence or rely on pseudoinverse continuity |
| `step_005` | Block E | Independent producer of cGD existence/limit; co-closes all-time cGD membership from `step_001`; feeds `step_007` | Prove polynomial (C^2) property, compact-segment Hessian bound, Taylor inequality, finite dyadic search, induction, telescoping drops, scalar convergence | Local (L_t) is not a public rate and may vary without bound |
| `step_006` | Block F | Consumes `step_001` and `step_003`; supplies only final scope language | Derive first-update formulas and actual outside-span residual decomposition | The intended claim is non-transfer, not generic escape or algorithmic failure |
| `step_007` | Block G | Consumes `step_002`--`step_006`; indirectly uses `step_001` through `step_002`/`step_003` | Assemble exact quantifiers, constants, probability conversion, scalar limit passage, (r_0=1), (L(r)=r^{5/4}), (\alpha=1/4), and constrained-only label | No generated event may absorb monotonicity, convergence, or the final conclusion |

## Dependency And Assumption Audit

### Primitive conditions

- `assump:dimension` and `assump:rank_window` imply (k/n\le1/8<1). They support full column rank, the codimension margin, and the explicit rank threshold.
- `assump:arbitrary_base` supplies the uniform theorem quantifier. The proof does not use a property of the bases after conditioning on (T).
- `assump:gaussian_smoothing` defines the target law. The proof is conditional on arbitrary realized (T), so it requires no additional smoothing event and averages the conditional conclusion exactly.
- `assump:joint_initialization` supplies independence from (T), independence across the two method starts, the Gaussian span law, and the shared-target conditional probability protocol.
- The displayed cALS and cGD procedures are part of the formal theorem object, not extra assumptions. In particular, fixed (Q_M), minimum-norm pseudoinverse selection, sequential cALS order, and dyadic Armijo trials are algorithm definitions.

### Accepted derived conclusions and their consumers

- Full-rank Haar spans and conditional independence: produced by `step_001`, consumed by `step_002`.
- Membership (S_t^M\in\mathcal H_M) for every defined iterate: produced by `step_001`, consumed by `step_003`; cGD existence for every finite index is separately produced by `step_005` and co-consumed by `step_007`.
- Projection events and residual margins: produced by `step_002`, consumed by `step_007` together with the objective-floor interface.
- Exact all-time objective floors: produced by `step_003`, consumed by `step_007`.
- cALS scalar limit: produced by `step_004`, consumed by `step_007`.
- cGD finite line searches, all finite iterates, and scalar limit: produced by `step_005`, consumed by `step_007` and by the all-time-scope closure for membership.
- Non-transfer certificate: produced by `step_006`, consumed only in the final scope statement.

### Local conditional hypotheses

The only local condition is "at a current finite cGD iterate" inside the one-step Armijo lemma. It is discharged inductively from finite initialization and the preceding finite accepted update. Conditioning on a fixed (T) is a probability-calculation device, not a strengthened final theorem assumption.

### Missing bridges

None. In particular, the final theorem does not assume factor boundedness, Gram invertibility, trajectory compactness, a common basin, local validity, stationary-point convergence, or any generated good event. The unconstrained moving-span control is intentionally outside the exact formalized goal and is not a missing bridge for this theorem.

## Citation And Tool Audit

No external theorem citation is used as proof authority. The following direct or standard tools must be proved or instantiated in current notation by the indicated steps.

| Tool or direct derivation | Current-branch objects and exact convention | Assumptions to discharge | Conclusion needed | Source/object compatibility and boundaries | Affected block / Step ID |
| ------------------------- | ------------------------------------------- | ------------------------ | ----------------- | ------------------------------------------ | ------------------------ |
| Gaussian full-rank and Haar-range derivation | (G_x^M\in\mathbb R^{n\times k}), iid (N(0,1/n)), Euclidean column space | (k<n); absolute continuity; left orthogonal invariance; independence from smoothing and across methods | Rank (k) a.s.; (\mathcal S_M) Haar; independence | Exact theorem span and Euclidean projector, no whitening or surrogate; rank-failure null event is the only boundary | A / `step_001` |
| Haar projector isotropy | (P_{\mathcal S_M}) and (A_T=T_{(1)}T_{(1)}^{\mathsf T}) | Haar invariance and trace (k) | (\mathbb E P_S=(k/n)I) and (B.2) | Exact mode-1 projector and Frobenius energy consumed downstream | B / `step_002` |
| Markov, conditional independence, tower property | Nonnegative projected energies conditional on shared (T) | Finite expectation; method spans conditionally independent | Per-method probability (1/2), joint (1/4), same unconditional lower bound | (T=0) handled without normalization; no smoothing event is introduced | B, G / `step_002`, `step_007` |
| Orthogonal projection and Pythagoras | (\mathcal H_M\) in ambient tensor Frobenius space | (S_t^M\in\mathcal H_M) | Exact decomposition (C.1) and floor (C.2) | Produced residual and consumed actual residual use the same (T), projector, and norm | C / `step_003` |
| Moore--Penrose matrix least squares | (A-CK^{\mathsf T}) and (T_{(m)}-XK^{\mathsf T}) under mode-m matricization | Finite matrices; no rank assumption | Displayed minimum-norm exact block minimizers | Matricization is an isometry for the actual tensor Frobenius objective; singular and zero (K) are included | D / `step_004` |
| Compact-segment Hessian Taylor bound | Polynomial (f_Q(C,Y,Z)=F(QC,Y,Z)) in product Euclidean/Frobenius coordinates | Current iterate and gradient finite; Hessian continuous | Armijo acceptance for sufficiently small dyadic (\eta) | Exact coefficient objective equals actual represented-tensor objective; no uniform (L_t) or step lower bound is output | E / `step_005` |
| Monotone convergence of nonnegative real sequences | (F_{\mathrm{cALS}}(t)), (F_{\mathrm{cGD}}(t)) | One-step monotonicity and (F\ge0) | Finite scalar limits | Scalar conclusion only; no factor or stationary-point conclusion | D, E / `step_004`, `step_005` |
| Direct unconstrained first-update algebra | (P_0), (K_0), ordinary unconstrained (X)-updates | Comparison procedure stated locally; no theorem assumption | (F.1)--(F.3) and absence of fixed-span transfer | Same initialization projector and actual residual; no positive unconstrained claim is exported | F / `step_006` |

Every listed tool has the same Euclidean/Frobenius, sequential cALS, coefficient-cGD, and projector conventions as the branch. No source-version, label, wrapper, transformed-object bridge, or BibTeX preflight is applicable.

## Quantitative Dependence Audit

- Exposed structural and data variables: (r,n,k,q,\rho=r^{-q}), the arbitrary bases, and the realized tensor (T). The theorem constants are independent of all of them. Smoothing affects the distribution of (T), but the conditional projection calculation is valid for every (T).
- Rank dependence: (r<k\le r^{5/4}), (n\ge8r^{5/4}), hence (k/n\le1/8). The exposed superlinear threshold is (L(r)=r^{5/4}) and (\alpha=1/4).
- Exact constants: event threshold multiplier (2); per-method conditional probability (1/2); joint probability (1/4); residual fraction (1-2k/n\ge3/4); half-squared-loss conversion (1/2); final objective fraction (3/8). No term is hidden, dropped, or absorbed by prose.
- Hidden constants: none in the theorem, residual margin, probability, monotonicity, or limit statement. The cGD one-step Hessian bound (L_t) may depend on (T,Q,u_t), but it is neither uniform nor theorem-facing and is not used as a rate.
- Fixed quantities: in the conditional probability calculation (T) is fixed and only the two independent spans remain random; during each deterministic trajectory (T,Q_M), and the initialization are fixed.
- Probability mode: probability one for Gaussian full rank; conditional-on-(T) probability at least (1/2) per projection event and (1/4) jointly; unconditional probability at least (1/4) by the tower property. No union bound or independence of the two trajectories conditional on their histories is needed.
- Horizon mode: fixed-span membership and the objective floor hold at every finite iterate; cALS and cGD descent are all-time; the theorem is asymptotic only through convergence of scalar objectives. There is no finite-to-uniform probabilistic upgrade because the controlling event is static.
- Norm and metric mode: tensor and matrix Frobenius norms, Euclidean orthogonal projectors, and the product Frobenius gradient norm in the Armijo test. Matricization and the coefficient identity preserve the actual objective exactly.
- Auxiliary tolerances: none in the public claim. The dyadic (\eta_t) and local (L_t) are proof-local and no lower bound on (\eta_t) is claimed.
- Public specialization bridge: the complete bridge is (k/n\le1/8\Rightarrow1-2k/n\ge3/4\Rightarrow\frac12(1-2k/n)\ge3/8), together with the conditional product (1/2\cdot1/2=1/4). It uses no asymptotic threshold beyond the displayed assumptions, so (r_0=1) is valid.
- Baseline invariance: for (T=0), each (E_M) holds surely, the target lower bound is zero, and normalized witnesses are unnecessary. For exact/noiseless nonzero (T), the same deterministic projection identity remains valid. At zero objective, cALS exact minimization preserves zero and cGD has zero gradient, so the original baseline conclusion, not a remainder-only surrogate, is preserved.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | --------------------------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ----------------------------------- | ---------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Full-rank Haar spans independent of (T) | Static nondegeneracy and random-projector source | Probability-one initialization event, before trajectories | (k<n); Gaussian rank (k) a.s.; (U\mathcal S_M\stackrel d=\mathcal S_M) | Absolute continuity, orthogonal invariance, trace (k), independent draws | Gaussian rank-failure null set only | Static; no iteration or accumulated defect | Structural lower/upper comparison | `assump:dimension`, `assump:rank_window`, `assump:joint_initialization`; exact Euclidean convention; no boundary excluded except null rank failure | Supplies the exact (k)-plane, Haar law, and independence needed by the projector claim | Produced and consumed projectors are identical; residual zero in the same Euclidean/Frobenius geometry | step-local | Primitive draw -> `step_001` before all consumers | At (t=0), the spans already exist; no activation delay | (k/n\le1/8<1) ensures nondegenerate codimension | Dimension/rank and Gaussian law | (Q_M,P_{\mathcal S_M},\mathcal H_M) | (k/n=1/8) is allowed; (T=0) does not affect span construction | Projector expectation and fixed witness would lack their static source |
| All-time fixed-span membership (S_t^M\in\mathcal H_M) | Generated invariant enabling the witness | Every finite cALS and cGD iterate | (X_t^M=Q_MD_t\Rightarrow S_t^M\in\mathcal H_M); leakage ((I-P_{\mathcal H_M})S_t^M=0) | Exact fixed left factor (Q_M) in initialization and every update | Khatri--Rao rank deficiency and factor size do not enter leakage; leakage defect is exactly zero | Zero accumulated leakage: the one-step preservation relation is equality; cGD index existence is supplied by `step_005` | Algebraic coupling and projection/nonexpansive maintenance | Formal constrained algorithms and `step_001`; cGD finite updates from `step_005`; same (Q_M) convention; singular designs and zero gradients included | Exact algebraic inclusion supplies membership, not merely a size upper bound | Produced and consumed subspaces are the same; no transformed or surrogate object and no residual | step-local | Initialization/update formulas precede `step_003`; `step_005` closes only existence, not membership | (X_0=QQ^{\mathsf T}G_x); first cALS update is (QD_1); first cGD update is (QC_1) | One-step equality preserves zero leakage for all finite indices | Algorithm definitions and finite initialization | cGD finite-index output from `step_005` | Holds at (T=0), singular (K), zero coefficients, and zero gradient | Outside-span generated components could cancel the fixed residual |
| Joint projection event and positive residual margin | Structural upper bound converted to positive codimension lower bound and confidence event | Static conditional-on-(T) event, then unconditional | (\mathbb E\|P_HT\|^2=(k/n)\|T\|^2); (E_M\Rightarrow\|P_{H^\perp}T\|^2\ge(1-2k/n)\|T\|^2) | Haar trace (k) and codimension (1-2k/n\ge3/4) | Projected energy, controlled on (E_M); no trajectory/smoothing defect | Static; no accumulation; conditional product and tower preserve probability exactly | Structural lower/upper comparison | Haar output of `step_001`, Markov, conditional independence; same mode-1/Frobenius convention; (T=0) handled separately | The source has exact trace/isotropy content and a strictly positive codimension margin | Exact complement identity for the same (T), projector, and norm; every residual is accounted for | step-local | `step_001` -> `step_002` -> `step_007`; event contains no target conclusion | Event is active before the first update; no trajectory activation needed | (\|P_HT\|^2\le2(k/n)\|T\|^2) and (k/n\le1/8) dominate the only defect | Dimension/rank and joint initialization | Haar span from `step_001`, events (E_M) | (T=0) gives sure events; equality (k/n=1/8) gives exactly (3/4) | Witness may vanish for nonzero (T) if codimension margin is lost |
| All-time actual-objective floor | Structural lower bound and exact residual bridge | Every finite iterate of both methods | (\|T-S_t\|^2=\|R_M\|^2+\|P_HT-S_t\|^2) | Fixed orthogonal component (R_M=(I-P_H)T) | In-subspace fitting error is uncontrolled but orthogonal and nonnegative after squaring | No accumulated defect; identical static equality is applied at each time | Structural lower/upper comparison and algebraic coupling | Membership from `step_001`; direct Hilbert projection; zero residual allowed; same Frobenius convention | Orthogonality supplies the required positive lower term, not only smallness | Exact same-target decomposition from fixed (R_M) to actual residual; second term is fully retained and nonnegative | step-local | `step_001` produces membership before `step_003`; floor does not assume convergence | Applies at (t=0) and first updates because membership is already active | (F_M(t)\ge\frac12\|R_M\|^2) with no absorption threshold | Formal tensor subspace | Membership and fixed projector | At (R_M=0), use zero floor and omit normalized (W_M); (T=0) target is zero | Without membership, an outside-span represented component can cancel (R_M) |
| cALS monotonicity and finite scalar limit | Signed descent and all-time scalar closure | Every complete sweep and (t\to\infty) | Three sequential block inequalities; (F_{t+1}\le F_t); (\sum_{t<N}(F_t-F_{t+1})=F_0-F_N\le F_0) | Exact current-block minimization and nonnegative squared loss | Nonnegative block drops; singularity/nonuniqueness causes no forcing term | Drops telescope with controlled sign against finite potential (F_0); valid for all time | Monotone potential and telescoping | Formal sequential pseudoinverse updates; direct Moore--Penrose derivation in exact matricization convention; singular/zero designs included | Exact minimizer supplies signed nonincrease of the actual objective | Matrix residual is the actual tensor residual under Frobenius-isometric matricization; residual zero | step-local | Formal update -> `step_004` -> `step_007`; lower budget is (F\ge0), not desired positive limit | First singular or zero design still has a finite exact minimizer and cannot increase (F) | Each block drop is nonnegative; cumulative charge is bounded by (F_0) | Formal cALS procedure | Block minimizers and objective sequence | Zero drop, zero objective, singular Gram, nonunique minimizer all preserve closure | The fixed floor alone would not imply that the scalar limit exists |
| cGD finite search, monotonicity, and finite scalar limit | Iterative well-definedness, signed descent, and scalar closure | Every finite iteration and (t\to\infty) | Taylor bound (E.2); finite dyadic acceptance; (F_{t+1}\le F_t-(\eta_t/2)\|g_t\|^2); accumulated accepted drops (\le F_0) | Polynomial (C^2) objective, current compact segment, accepted Armijo drop, (F\ge0) | Local Taylor remainder, absorbed per step by (\eta_tL_t\le1); no persistent unabsorbed term | Remainder is locally absorbed each step; signed drops telescope against finite (F_0); no uniform step bound needed | Monotone potential, self-contraction of one-step remainder, and telescoping | Formal cGD rule; direct Taylor derivation in exact coefficient/Frobenius convention; all finite current points allowed | Continuous Hessian on each current compact segment supplies the exact signed-descent claim | (f_Q=F(QC,Y,Z)) exactly; produced coefficient control is the consumed objective control with zero transfer residual | step-local | Finite initialization -> finite accepted update induction -> `step_005` -> `step_007`; no trajectory boundedness assumed | If (g_0=0), first trial is stationary and accepted; otherwise a small dyadic step activates descent | (L_t\eta_t\le1) absorbs the Taylor remainder; cumulative charge (\sum\eta_t\|g_t\|^2/2\le F_0) | Formal cGD procedure and finite initialization | Current (u_t,g_t,L_t,\eta_t) | Zero gradient, zero objective, arbitrarily large finite factors, and vanishing step sizes across time are included | cGD trajectory or scalar limit would be undefined without finite search termination/descent |
| Exact/noiseless and zero-target baseline preservation | Baseline invariance obligation | Every exact/noiseless specialization, including (T=0) and zero objective | At (T=0), target floor is zero; at (F=0), cALS block minima stay zero and (\nabla f_Q=0) | Deterministic projection identity and nonnegative squared loss | No residual at (T=0); no forcing away from zero objective | Stationary or zero-defect behavior is preserved all time | Algebraic coupling and monotone potential | Existing Blocks A--E; no new assumption or changed reference object | Sources prove the original baseline conclusion, not merely vanishing of selected defects | Baseline object and consumed theorem object are the same (T) and same objective metric; residual zero | step-local | Earlier producers precede final baseline use | At zero objective the first cALS sweep remains zero and cGD first trial is stationary; at (T=0) normalized witness is unnecessary | Exact update rules preserve objective zero; nonnegativity preserves required zero lower bound | Same five primitive assumptions under specialization | Membership, floor, and descent outputs | Zero orthogonal residual and (T=0) are explicitly handled | A weakened remainder-only statement would violate the inherited baseline contract |
| Final two-method positive-limit closure | Probability conversion and all-time-to-limit theorem assembly | Static joint event plus both (t\to\infty) limits | Joint event (\Rightarrow\forall M,t, F_M(t)\ge3\|T\|^2/8); existing scalar limits preserve inequality | Codimension margin, exact floor, and monotone scalar limits | Projected energy already controlled; no time leakage or probability residual remains | Static event, zero-defect floor, and separately telescoping method potentials are scope-compatible | Structural comparison, monotone potential, and algebraic coupling | `step_002`--`step_005`; exact shared-(T), Frobenius, conditional-law convention; all stated boundaries included | Each source supplies the same claim type, scope, and object consumed by final assembly | Exact same (T), objective, norm, and scalar limit; no residual or mode conversion loss | step-local | All producers are earlier dependencies of `step_007`; final event does not produce its own inputs | Floor is active at (t=0); cALS/cGD first transitions descend or are stationary | ((1-2k/n)/2\ge3/8), conditional product (\ge1/4), and scalar limit passage | All five stable assumptions | Events, floors, and scalar limits from earlier steps | (T=0), (k/n=1/8), zero drops, and vacuous small-(r) windows are valid | Removing event, membership/floor, or either scalar limit leaves a conjunct unproved |
| Constrained-only non-transfer certificate | Scope boundary, not a positive unconstrained theorem condition | First unconstrained update and residual interface only | (F.1)--(F.3); outside-span defect has unknown sign and no strict domination | Exact comparison formulas show absence of conservation source | Generated ((I-P_H)S_t), potentially nonzero from first update and persistent | Unsupported for an unconstrained all-time floor; this unsupported behavior is the claimed boundary, not a needed closure | Explicitly conditional target: certificate only; no unconstrained closure claimed | Direct first-update algebra in same metric; accidental vanishing allowed but no all-time source | Adequate for non-transfer because it exhibits the exact missing source without asserting failure | Same actual residual shows an uncontrolled target-scale subtraction, so transfer is explicitly inadequate | step-local for the stated certificate | `step_001`,`step_003` -> `step_006`; no alleged unconstrained invariant | First unconstrained update can create outside-span motion before a fixed floor could be consumed | No dominance relation exists in this branch; that absence is the certified gap | Comparison algorithm definitions | Constrained reference projector/witness | Accidental first-step zero outside component is not promoted to an invariant; exact/noiseless data does not repair source absence | Treating this route as an unconstrained theorem would require a new idea/theorem contract |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Haar (k)-spans, projectors, and independence | A / `step_001` | Gaussian law, (k<n), orthogonal invariance, independent starts | Rank failure is null; no trajectory defect | Produced/consumed projector identical; zero residual | Full rank plus invariance and trace (k) export exact Haar projector | Numerical (k<n) from dimension/rank assumptions | B / `step_002`; C/F/G definitions | valid |
| All-time fixed-span membership | A / `step_001`, with cGD finite indices from E / `step_005` | Exact (Q_M)-parameterized initialization and updates | Singular Khatri--Rao matrices and factor size are irrelevant; outside-span leakage exactly zero | Same tensor subspace as witness; zero transfer residual | (X_t=Q_MD_t\Rightarrow S_t\in\mathcal H_M) at each defined index | Exact algebraic equality; no slack | C / `step_003`; G / `step_007`; F comparison | valid |
| Joint event and (3/4) residual margin | B / `step_002` | Haar expectation, trace (k), Markov, conditional independence, (k/n\le1/8) | Projected energy controlled on (E_M); no empirical, smoothing, or time defect | Exact complement relation for same (T,P_H,\|\cdot\|_F) | Event threshold gives (1-2k/n); rank/dimension gives (3/4); conditional product gives (1/4) | Codimension and two per-method (1/2) probabilities | G / `step_007` | valid |
| Actual-objective fixed-witness floor | C / `step_003` | Membership from A and orthogonal projection | In-subspace residual uncontrolled but orthogonal and nonnegative after squaring | Exact decomposition of actual theorem residual; no omitted term | Pythagoras gives (F_M(t)\ge\|R_M\|^2/2) | Positive residual margin supplied by B; identity valid at zero margin | G / `step_007`; F comparison | valid |
| cALS scalar limit | D / `step_004` | Exact sequential block formulas and finite pseudoinverses | Singular design/nonuniqueness controlled; no factor-bound defect | Matricized block objective equals tensor objective | Three signed block drops telescope against (F_0) | Lower potential bound (F\ge0) | G / `step_007` | valid |
| cGD all finite iterates and scalar limit | E / `step_005` | Finite current iterate, polynomial Hessian, dyadic trials, formal Armijo rule | Local remainder controlled by current (L_t); no uniform-smoothness, factor, or step-size output | Coefficient objective exactly equals theorem objective | Choose dyadic (L_t\eta_t\le1); accepted drops telescope against (F_0) | Current compact-segment Hessian bound and (F\ge0) | A all-time scope; G / `step_007` | valid |
| Exact baseline conclusion | A--E / `step_001`--`step_005` | Deterministic identities and exact updates | No remaining residual at (T=0); zero objective is stationary/nonincreasing | Same baseline and target objects in same norm | Zero target floor and zero-objective preservation require no new loss | Nonnegative squared loss and exact parameterization | G / `step_007` | valid |
| Non-transfer to unconstrained methods | F / `step_006` | Direct first-update and residual formulas | Outside-span component uncontrolled at target scale with unknown sign | Transfer is explicitly inadequate, which is the intended output | No domination claimed; absence of bridge delimits scope | No source in current branch for unconstrained margin | G final scope statement | valid for certificate; unconstrained theorem outside contract |
| Joint positive-limit theorem | G / `step_007` | Event/margin, floor, both scalar limits, all primitive quantifiers | No remaining defect or changed probability mode | Same actual objectives, tensor, norm, and limit target | (3/4\times1/2=3/8), (1/2\times1/2=1/4), exact limit passage | Dimension/rank codimension and static initialization probabilities | Final theorem | valid |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Full-rank Haar spans independent of (T) and each other | A / `step_001` | B / `step_002`; projector definitions in C/F/G | Primitive initialization -> `step_001` -> consumers | derived | valid |
| Fixed projectors (P_{\mathcal H_M}) | A / `step_001` | B projection event; C witness; F scope comparison; G theorem | `step_001` -> `step_002`,`step_003`,`step_006`; then `step_007` | derived | valid |
| Membership (S_t^M\in\mathcal H_M) at every defined iterate | A / `step_001` | C / `step_003`; final all-time use in G | Algorithm -> `step_001` -> `step_003`; cGD finite indices from `step_005`; (`step_003`,`step_005`) -> `step_007` | derived | valid |
| Projection events (E_M), joint event, and residual margin | B / `step_002` | G / `step_007` | `step_001` -> `step_002` -> `step_007` | derived | valid |
| Fixed residual (R_M), optional normalized witness (W_M), and all-time objective floor | C / `step_003` | G / `step_007`; F / `step_006` comparison | `step_001` -> `step_003` -> consumers | derived | valid |
| cALS well-defined trajectory, monotonicity, and scalar limit | D / `step_004` | G / `step_007` | Formal cALS procedure -> `step_004` -> `step_007` | derived | valid |
| cGD finite line searches, all finite iterates, monotonicity, and scalar limit | E / `step_005` | A/C all-time index closure; G / `step_007` | Formal cGD procedure -> `step_005`; (`step_001`,`step_005`) -> all-time floor/final use | derived | valid |
| Exact absence of an unconstrained fixed-witness bridge | F / `step_006` | G final scope label | `step_001`,`step_003` -> `step_006` -> final scope statement | derived | valid for the stated negative interface |
| Joint probability-(1/4) two-method positive-limit conclusion | G / `step_007` | Final attempted theorem | `step_002`,`step_003`,`step_004`,`step_005`,`step_006` -> `step_007` | derived | valid |

## Early Obstruction And Repair Plausibility

- Contract contradictions: none. The claim, algorithms, metric, probability law, rank window, deterministic-base uniformity, and constrained-only `material_partial` label match `setting.md` exactly.
- Theorem-critical mechanisms: all are nonvacuous and source-adequate. Haar codimension supplies the positive residual margin; exact (Q_M)-parameterization supplies zero leakage; orthogonality supplies the lower bound; exact block minimization and pointwise polynomial smoothness supply the two scalar convergence mechanisms.
- Exported-interface feasibility: every output has raw controls, an exact current-target-compatible interface, separated defect classes, and an earlier consumer dependency. No parameter threshold is asked to control an unrelated persistent defect.
- Residual-to-target adequacy: the projector residual, actual tensor residual, matricized cALS residual, and coefficient cGD objective all refer to the same theorem target and Frobenius metric. No population, transformed, weighted, preconditioned, whitened, or surrogate object remains to be bridged.
- Accumulation stress: fixed-span leakage is exactly zero; the floor is statically re-established; cALS and cGD signed drops telescope against finite (F_M(0)); the projection event is static. There is no additive adversarial defect over an infinite horizon.
- Entry-state stress: membership and projection margins exist at initialization. The first cALS update remains in span and is an exact minimizer even for singular (K). The first cGD update either accepts a stationary zero-gradient trial or accepts a sufficiently small dyadic descent step. Every mechanism is active before its conclusion is consumed.
- Boundary stress: (T=0), (R_M=0), (k/n=1/8), singular/zero Khatri--Rao matrices, nonunique cALS minimizers, zero block drops, zero cGD gradients, zero objective, exact/noiseless data, arbitrarily large but finite current factors, and shrinking accepted step sizes are all compatible with the stated theorem.
- Baseline invariance: the exact zero-target and zero-objective conclusions are preserved. The proof does not replace them by a finite-scope, stopped, or nonzero-remainder surrogate.
- Dependence/mode upgrades: none are hidden. Conditional probability is averaged exactly, all-time floors are deterministic on a static event, and only already-existing scalar limits are used for asymptotic conversion.
- Scope boundary: the fixed witness has no supplied unconstrained analogue. This is not a blocker for the formalized constrained theorem. Extending to unconstrained ALS/GD would require changed algorithms and a new mechanism source, hence a new idea/theorem contract rather than a repair to this sketch.
- Same-setting repair plausibility: no repair is needed. The later global-proof reviewer should accept or request only diagnostic exposition repair; no present evidence supports sketch or idea revision for the exact constrained claim.

## Global Gaps And Hard Steps

None.

The independently required local proof work is fully localized by `step_001`--`step_007` and the coverage map above. The most delicate formalizations are singular-design Moore--Penrose least squares in `step_004`, current-segment rather than uniform smoothness in `step_005`, and preservation of the conditional shared-(T) probability protocol in `step_002`/`step_007`; these are concrete step-local proof units, not unresolved mechanisms or interfaces.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, scope, or conclusion. Every local unit and direct-tool instantiation described here must be proved and reviewed independently in the corresponding `/proof-step` artifact before proof assembly.

## Suggested Routing

None

Continue to all seven proof steps under the accepted sketch. For diagnostic efficiency, prioritize `step_004` and `step_005` after `step_001`--`step_003`, because they carry the main method-specific well-definedness obligations; `step_006` remains a scope certificate and `step_007` should be assembled only after all positive-output dependencies are accepted.
