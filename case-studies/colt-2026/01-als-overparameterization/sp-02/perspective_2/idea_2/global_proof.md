# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_2`.
- Sketch attempt: `1`.
- Global attempt: `1`.
- Reviewed artifact: `perspective_2/idea_2/proof_sketch.md`.
- Reviewed review artifact: `perspective_2/idea_2/proof_sketch_review.md`.
- Goal mode: exact conditional goal.
- Review status: `ACCEPTED` with viability score `9`.
- The accepted roadmap is the five-step graph `step_001`--`step_005`. This diagnostic keeps its step IDs, claims, dependencies, assumptions, output targets, conditional scope, and probability boundary unchanged.

## Status

PARTIAL_BLOCKED

The theorem-level composition is coherent and source-adequate under the accepted sketch. The remaining work consists only of the five named direct local derivations, each classified as `step-local` with an explicit mechanism witness. No sketch/interface defect or idea/theorem-contract defect is identified. This status does not mean that the conditional theorem is unsupported; it records that proof-step artifacts are still required before proof assembly.

## Attempted Theorem Claim

Goal mode is exact-goal mode for the literal conditional theorem in `setting.md`.

Fix `kappa >= 1` and `q > 0`. There are constants

\[
r_0(\kappa,q),\quad C_{\rm dim}(\kappa,q),\quad
\delta(\kappa,q),\quad L_P(\kappa,q),\quad
\zeta(\kappa,q),\quad C_T(\kappa,q),\quad
\epsilon(\kappa,q)>0,
\]

with `L_P < delta/4` and `zeta < delta/4`, such that, for every `r >= r_0`, every `n,k` satisfying `assump:dimension` and `assump:rank_window`, and every deterministic base triple satisfying `assump:base_conditioning`, the unconstrained half-relaxed parallel Jacobi ALS trajectory (including the stated product-preserving gauge) obeys the event inclusion

\[
\mathsf C_2(\delta,L_P,\zeta,C_T)
\subseteq
\left\{\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)\text{ exists and is finite, and }
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)\geq \epsilon\|T\|_F^2\right\}.
\]

The four clauses of `C_2` are conditional theorem-facing inputs, not primitive assumptions and not outputs of this proof:

1. `Delta_0 >= delta ||D_r||_F`;
2. `sum_t ||P_{t+1}-P_t||_op <= L_P`;
3. `sum_t ||That_{t+1}-That_t||_F < infinity`;
4. `||E_rho||_F <= zeta ||D_r||_F` and `||T||_F <= C_T ||D_r||_F`.

The proof is deterministic on each realized trajectory in this event. The ambient residual and objective use the Frobenius norm. The theorem makes no claim that `C_2` is nonempty and no claim that its joint smoothing-and-initialization probability is bounded below. The only exposed lower-bound constant is

\[
m:=\delta-L_P-\zeta>\delta/2,
\qquad
\epsilon=\left(\frac{m}{\kappa^6 C_T}\right)^2.
\]

The constants in the displayed conclusion have no hidden dependence on `r,n,k,t`, on the admissible deterministic base triple, or on the smoothing/initialization realization. The theorem scope still includes `assump:dimension`, `assump:rank_window`, `assump:gaussian_smoothing`, and `assump:independent_initialization`, even though the deterministic implication uses only the base-conditioning bound and the four conditional clauses.

In fact, the diagnostic establishes the stronger parameterized implication for every fixed positive `delta,L_P,zeta,C_T` satisfying the two strict margin inequalities. The existential formulation in `setting.md` follows by choosing any such theorem-facing constants with the permitted `(kappa,q)` dependence and then defining `epsilon` by the displayed formula; no nonemptiness or probability property of the resulting event is used.

## Whole-Proof Draft

### Block A: Fixed coefficient interface and gauge compatibility (`step_001`)

For each base matrix `M` in `{A,B,C}`, write `bar M = tilde M D_barM`. The column-norm part of `assump:base_conditioning` gives

\[
\sigma_{\min}(D_{\bar M})\geq \kappa^{-1},
\qquad
\sigma_{\min}(\widetilde M)\geq \kappa^{-1},
\]

and hence

\[
\sigma_{\min}(\bar M)\geq \kappa^{-2},
\qquad
\|\Lambda_M\|_{\rm op}\leq \kappa^2.
\]

In the Frobenius tensor-product geometry, the modewise map `Q = Lambda_A tensor Lambda_B tensor Lambda_C` therefore satisfies

\[
\|Q\|_{\rm op}\leq
\|\Lambda_A\|_{\rm op}\|\Lambda_B\|_{\rm op}\|\Lambda_C\|_{\rm op}
\leq \kappa^6.
\]

For every component and time, multilinearity gives

\[
Q(x_{i,t}\otimes y_{i,t}\otimes z_{i,t})
 = (\Lambda_Ax_{i,t})\otimes(\Lambda_By_{i,t})\otimes(\Lambda_Cz_{i,t})
 = p_{i,t}.
\]

The product-preserving gauge does not alter this identity. If all three factor norms are positive, the three scale multipliers have product one, so the represented rank-one tensor and its coefficient tensor are unchanged. If one factor is zero, the original rank-one tensor and coefficient tensor are already zero, and the zero-component rule preserves them. Thus `Q That_t = C_t`, and because `E_rho = Q T - D_r`,

\[
Q(T-\widehat T_t)=D_r+E_\rho-C_t,
\qquad C_t\in\mathcal S_t.
\tag{A.1}
\]

This is an exact same-target relation: the produced coefficient object is the image under the fixed map `Q` of the exact ambient residual. No range restriction on the ambient residual and no fixed-subspace property of `S_t` is used. The ALS normal equations and pseudoinverse define the trajectory to which the conditional clauses apply, but no Gram, factor, or update regularity property is needed for Block A.

### Block B: Adaptive projector transport (`step_002`)

Let

\[
d_t:=\operatorname{dist}_F(D_r,\mathcal S_t)
       =\|(I-P_t)D_r\|_F,
\qquad
a_t:=\|P_{t+1}-P_t\|_{\rm op}.
\]

The reverse triangle inequality and the operator norm bound give the one-step interface

\[
\begin{aligned}
d_{t+1}
 &=\|(I-P_{t+1})D_r\|_F\\
 &\geq \|(I-P_t)D_r\|_F
       -\|(P_{t+1}-P_t)D_r\|_F\\
 &\geq d_t-a_t\|D_r\|_F.
\end{aligned}
\tag{B.1}
\]

Iterating (B.1) from the entry state and using clauses 1 and 2 of `C_2` yields, for every finite `t`,

\[
d_t\geq d_0-\|D_r\|_F\sum_{s=0}^{t-1}a_s
\geq (\delta-L_P)\|D_r\|_F.
\tag{B.2}
\]

The all-time statement follows because the partial sums are bounded by the full nonnegative path budget. This is a finite-budget recurrence, not an assumption that the subspace is fixed or that a represented residual is persistent. Its sole adversarial defect is the projector rotation charge `a_t ||D_r||_F`; clause 2 gives a finite total charge `L_P ||D_r||_F`.

### Block C: Exact coefficient-to-ambient residual bridge (`step_003`)

By (A.1) and `C_t in S_t`,

\[
\begin{aligned}
\|Q(T-\widehat T_t)\|_F
 &=\|D_r+E_\rho-C_t\|_F\\
 &\geq \operatorname{dist}_F(D_r+E_\rho,\mathcal S_t)\\
 &\geq \operatorname{dist}_F(D_r,\mathcal S_t)-\|E_\rho\|_F.
\end{aligned}
\tag{C.1}
\]

The last inequality is the 1-Lipschitz property of distance to a fixed subspace. Substitution of (B.2) and clause 4 gives

\[
\|Q(T-\widehat T_t)\|_F
\geq (\delta-L_P-\zeta)\|D_r\|_F
=m\|D_r\|_F.
\tag{C.2}
\]

The operator comparison from Block A transfers this exact coefficient residual to the same ambient residual:

\[
\|T-\widehat T_t\|_F
\geq \|Q\|_{\rm op}^{-1}\|Q(T-\widehat T_t)\|_F
\geq \kappa^{-6}m\|D_r\|_F.
\tag{C.3}
\]

Since clause 4 also gives `||D_r||_F >= ||T||_F/C_T`,

\[
\|T-\widehat T_t\|_F
\geq \frac{m}{\kappa^6 C_T}\|T\|_F
\quad\text{for every }t\geq 0.
\tag{C.4}
\]

The strict inequalities `L_P < delta/4` and `zeta < delta/4` imply `m > delta/2 > 0`. Squaring (C.4) is deferred to Block E so that the nonnegative norm comparison and all defect terms remain explicit. No transformed, whitened, weighted, or surrogate target is consumed: `Q` is used only to lower-bound the norm of the exact ambient residual, while `E_rho` is the sole additive coefficient residual and is controlled at the same `D_r` scale.

### Block D: Represented-tensor convergence (`step_004`)

Let `v_t = ||That_{t+1}-That_t||_F`. Clause 3 states `sum_t v_t < infinity`. For `m>n`, the triangle inequality gives

\[
\|\widehat T_m-\widehat T_n\|_F
\leq \sum_{t=n}^{m-1}v_t
\leq V_n,
\qquad
V_n:=\sum_{t=n}^{\infty}v_t\longrightarrow 0.
\tag{D.1}
\]

Thus the represented tensors are Cauchy in the finite-dimensional ambient Frobenius space and converge to some finite `That_infty`. The map `R -> ||T-R||_F^2` is continuous, so

\[
\mathcal L(X_t,Y_t,Z_t)
 =\|T-\widehat T_t\|_F^2
 \longrightarrow \|T-\widehat T_\infty\|_F^2<\infty.
\tag{D.2}
\]

This conclusion is at represented-tensor level only. It does not assert factor convergence, boundedness of individual factors, Gram conditioning, persistence of design rank, or convergence in a quotient metric. The first increment is included in the finite budget; a stationary trajectory simply has all `v_t=0`.

### Block E: Asymptotic event inclusion and probability boundary (`step_005`)

Blocks C and D are produced independently from the conditional interfaces and their acyclic dependencies. Equation (C.4) gives

\[
\mathcal L(X_t,Y_t,Z_t)
\geq \left(\frac{m}{\kappa^6 C_T}\right)^2\|T\|_F^2
=\epsilon\|T\|_F^2
\quad\text{for all }t.
\tag{E.1}
\]

Taking the limit supplied by (D.2) preserves this lower bound, proving the two conjuncts in the attempted theorem. The operation is a pointwise limit passage and does not convert an all-time conditional statement into a probability statement. Under the joint smoothing-and-initialization law, the conclusion is the set inclusion

\[
\mathsf C_2\subseteq\{\text{finite objective limit and relative loss floor}\},
\]

not a claim of `P(C_2) >= p_0`. The dimension, rank-window, smoothing, and initialization assumptions remain theorem-facing scope conditions, but no source-level producer for the full four-clause certificate is consumed by this assembly.

### Assembly assessment

The dependency order is `step_001`, `step_002`, and `step_004` as roots; `step_003` consumes the first two roots and clause 4; `step_005` consumes Blocks C and D. Every generated output is produced before consumption. The exact identity (A.1), the finite-budget recurrence (B.1)--(B.2), the residual bridge (C.1)--(C.4), and the Cauchy tail (D.1) supply all theorem-critical mathematical interfaces. The proof therefore closes at theorem level under the unchanged conditional contract. The only work deferred is local verification of these displayed derivations and their edge cases in the five proof-step artifacts; no theorem-level repair is being proposed.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| --- | --- | --- | --- | --- | --- |
| A. Fixed coordinate and gauge interface | Establish `||Q||_op <= kappa^6`, `Q That_t = C_t`, `C_t in S_t`, and the exact same-target identity | `step_001` | None | `assump:base_conditioning`; setting definitions and product gauge | Verify singular-value product bound, tensor-product operator convention, and zero-component gauge branch |
| B. Adaptive projector transport | Preserve the coefficient entry deficit for every time under adaptive span motion | `step_002` | None | Conditional clauses 1 and 2 of `C_2` | Prove (B.1), finite telescoping, and all-time indexing including `t=0` |
| C. Ambient residual bridge | Convert the coefficient deficit and smoothing residual to an exact ambient relative residual floor | `step_003` | A, B | `assump:base_conditioning` through A; conditional clause 4 | Check distance Lipschitzness, direction of operator comparison, strict margin, and target-scale conversion |
| D. Represented-tensor convergence | Produce a finite limit of the represented tensors and objective | `step_004` | None | Conditional clause 3 | Prove tail-Cauchy estimate and continuity passage in the stated finite-dimensional space |
| E. Conditional theorem assembly | Pass the pointwise floor to the existing objective limit without a probability upgrade | `step_005` | C, D | Primitive theorem scope; no additional certificate producer | Check square/limit order, epsilon dependence, and exact event inclusion wording |
| Baseline specialization | Preserve the exact/noiseless coordinate-orthonormal positive relative floor | Direct assembly use of A, B, D, E | A, B, D, E with `Q=I`, `E_rho=0`, `T=D_r` | Same conditional clauses specialized; no weaker surrogate allowed | Trace entry and first transition and verify original baseline conclusion, not only vanishing defect |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| --- | --- | --- | --- | --- |
| `step_001` | Block A | Root | Derive `sigma_min(bar M) >= kappa^-2`; bound each `Lambda_M`; prove tensor-product norm bound; verify `Q` on each rank-one component; check positive and zero gauge branches; establish (A.1) | `step-local`; no external theorem-critical citation |
| `step_002` | Block B | Root | Define `d_t,a_t`; prove one-step projector recurrence; telescope finite partial sums; pass to all `t`; stress `P_0=0`, stationary projectors, rank changes | `step-local`; finite-budget mechanism is already in clauses 1--2 |
| `step_003` | Block C | A and B | Apply distance-to-subspace Lipschitzness; retain `E_rho`; compare `||Q R_t||` to `||R_t||`; use clause 4 target scale; verify `m>0` and no term is dropped | `step-local`; exact same-target bridge already exposed |
| `step_004` | Block D | Root | Use absolute summability to bound every Cauchy tail; invoke completeness; pass by continuity to objective limit; avoid factor-space claims | `step-local`; clause 3 is the sole convergence source |
| `step_005` | Block E and baseline assembly | C and D | Square the nonnegative floor; take limit; define epsilon with all exposed dependence; preserve conditional probability mode; state baseline specialization | `step-local`; no positive-probability claim is permitted |

## Dependency And Assumption Audit

### Primitive conditions

- `assump:dimension` and `assump:rank_window` define the uniform theorem scope. They are not used to manufacture any trajectory invariant.
- `assump:base_conditioning` is the only primitive condition used in the deterministic norm distortion calculation. It makes each base matrix full column rank and supplies `||Lambda_M||_op <= kappa^2`.
- `assump:gaussian_smoothing` defines the target law and `rho=r^{-q}`. It is retained as theorem scope but does not itself prove clause 4 in this conditional theorem.
- `assump:independent_initialization` defines the initial-state law and is retained as theorem scope. It does not prove the entry deficit clause.
- The ALS update, Moore--Penrose convention, half relaxation, and product gauge are setting definitions/procedure data, not hidden regularity assumptions.

### Explicitly conditional hypotheses

- Clause 1 of `C_2` is consumed only by Block B as the entry reserve.
- Clause 2 is consumed only by Block B as the total projector-motion budget.
- Clause 3 is consumed only by Block D as an absolute represented-tensor variation budget.
- Clause 4 is consumed only by Block C: its first inequality controls `E_rho`, and its second inequality converts the `D_r` scale to the target `T` scale.

These clauses have no `assump:` IDs, are not promoted to primitive assumptions, and are not asserted to have positive probability.

### Accepted derived conclusions

- Block B derives the all-time coefficient deficit from clauses 1--2.
- Block C derives the ambient residual floor from Blocks A--B and clause 4.
- Block D derives represented-tensor convergence and objective-limit existence from clause 3.
- Block E derives the final event inclusion from Blocks C--D.

No missing derived-condition bridge is needed for the literal conditional target. In particular, no Gram conditioning, factor bound, basin membership, fixed-subspace membership, persistent residual, or ALS descent condition may be inserted as an assumption.

## Citation And Tool Audit

1. **Kolda--Bader (2009), DOI `10.1137/07070111X`.** Role: fixes CP tensor, matricization, Khatri--Rao, pseudoinverse, and product-gauge conventions. Current objects are `T_(j)`, `U_t^j`, the rank-one sum, and the stated gauge. No theorem-critical inequality or convergence claim is imported from this source. Source-convention compatibility is therefore limited to the fixed component ordering and CP notation; all substantive claims are rederived in current notation.
2. **Direct singular-value derivation.** Current object is `bar M = tilde M D_barM`. The raw assumptions are the column norm lower bound and normalized singular-value lower bound. The required output is `sigma_min(bar M) >= kappa^-2`, then `||Lambda_M|| <= kappa^2`, and finally `||Q|| <= kappa^6`. This is a current-convention direct derivation for Block A; the proof-step artifact must show the product inequality explicitly.
3. **Tensor-product operator norm.** The standard finite-dimensional Hilbert-space identity `||A tensor B tensor C||_op = ||A||_op ||B||_op ||C||_op` is used only as a current-notation norm calculation. The proof-step artifact must either prove the upper bound directly on pure tensors and extend by linearity, or state the exact finite-dimensional lemma and its object mapping.
4. **Orthogonal-projector and distance facts.** Block B uses `dist(D,S)=||(I-P)D||`, the reverse triangle inequality, and `||(P_{t+1}-P_t)D|| <= ||P_{t+1}-P_t||_op ||D||`. Block C uses `|dist(U,S)-dist(V,S)| <= ||U-V||`. These are direct Euclidean/Frobenius derivations in the branch metric; no cited theorem is needed.
5. **Cauchy criterion and continuity.** Block D uses the finite-dimensional completeness of the ambient tensor Frobenius space and continuity of `R -> ||T-R||_F^2`. The local proof must state the tail estimate rather than appeal to ALS descent or a KL theorem.
6. **Non-used literature boundaries.** Arvanitakis--Srinivas--Vijayaraghavan and Bhaskara--Charikar--Moitra--Vijayaraghavan are not mechanism sources for this conditional theorem. They do not produce the exact four-clause certificate for the stated half-relaxed simultaneous map, so no source identity or hypothesis-discharge path is being claimed for those results. Any future probability-production theorem would require a separate source audit and is outside this global proof.

## Quantitative Dependence Audit

- Exposed structural variables: `kappa`, `q`, `delta`, `L_P`, `zeta`, and `C_T`; the theorem-scope variables are `r,n,k`, and the all-time index is `t`.
- Displayed constant: `epsilon = ((delta-L_P-zeta)/(kappa^6 C_T))^2`. No hidden constant occurs in the residual or loss inequalities.
- Allowed hidden dependence: `r_0`, `C_dim`, `delta`, `L_P`, `zeta`, `C_T`, and `epsilon` may depend only on `kappa,q`, exactly as stated in `setting.md`. They may not depend on `r,n,k`, the deterministic base triple, or a realization.
- Fixed quantities for the uniform statement: `kappa,q` and the selected theorem constants while `r,n,k` and the admissible base triple vary.
- Probability mode: deterministic implication conditional on `C_2`, expressed as an event inclusion under the joint smoothing-and-initialization law. There is no expectation, high-probability conversion, conditional probability lower bound, or union-bound step.
- Horizon mode: Blocks B and C are all-time/horizon-uniform; Block D is infinite-horizon absolute variation and asymptotic convergence; Block E passes a pointwise all-time floor to an existing limit.
- Norm mode: coefficient Frobenius norm for `D_r`, `E_rho`, `C_t`, and `S_t`; operator norm for projector changes and `Q`; ambient tensor Frobenius norm for `T`, `That_t`, residuals, and objective.
- Auxiliary tolerances: `delta`, `L_P`, and `zeta` are explicit certificate margins, with `L_P < delta/4` and `zeta < delta/4`; no auxiliary tolerance is hidden in `epsilon`.
- Public specialization obligations: retain both defect terms when forming `m`; prove `m>0`; prove `||T||_F <= C_T ||D_r||_F` is the exact scale conversion; square only after the norm inequality; do not simplify away `kappa`, `C_T`, `L_P`, or `zeta`.
- Baseline-reduction obligation: under `Q=I`, `E_rho=0`, and `T=D_r`, the same proof gives `||T-That_t||_F >= (delta-L_P)||T||_F` and the same objective-limit mechanism. This is the original positive relative baseline conclusion, not a remainder-only surrogate.
- No rate is claimed for the convergence speed in Block D because clause 3 gives finiteness but no uniform numerical bound on the variation sum.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Fixed coordinate map and exact residual identity | Structural object mapping and norm control used by C | All stated bases satisfying `assump:base_conditioning`; every ALS time | Pointwise `Q(T-That_t)=D_r+E_rho-C_t`, `C_t in S_t`; `||Q|| <= kappa^6` | Full-rank base maps and tensor-product linearity | Fixed coordinate distortion; additive `E_rho` retained explicitly | No accumulation; identity holds at each time and after gauge | Structural lower/upper comparison | Primitive base conditioning; arbitrary/degenerate bases excluded by setting | Direct singular-value and multilinearity derivation has exact source convention and claim type | Produced object is exactly `Q` of consumed ambient residual; `||QR|| <= kappa^6||R||`; N/A for a separate transformed-target bridge | `step-local` | N/A for all-time closure; static producer is primitive definitions -> A | Holds at raw entry, after positive gauge, for zero components and rank changes | `sigma_min(bar M)>=kappa^-2` -> `||Lambda_M||<=kappa^2` -> `||Q||<=kappa^6`; exact identity retains `E_rho` | `assump:base_conditioning` | `Q`, `E_rho`, `C_t`, `S_t` generated by definitions/trajectory | Exact/noiseless `Q=I` reduces identity to `T-That_t=D_r-C_t`; `S_t={0}` is allowed | Without full rank, Q may be undefined/unbounded and the ambient transfer is unavailable |
| Persistent coefficient deficit | All-time structural lower bound and recurrence closure | Every `t>=0` on `C_2` | `d_{t+1} >= d_t-a_t||D_r||`; `d_0>=delta||D_r||`; `sum_t a_t<=L_P` | Entry reserve `delta||D_r||` | Adversarial-sign projector charge `a_t||D_r||` | Finite-budgeted: accumulated charge `||D_r|| sum_{s<t}a_s <= L_P||D_r||`; budget is finite under all-time scope | Reserve/ledger under declared scope, implemented by telescoping recurrence | Conditional clauses 1--2; no fixed-subspace assumption; rank jumps and `P_t=0` allowed | Projector distance and reverse triangle give exactly a lower-bound recurrence | Same `D_r`, same coefficient Frobenius metric at production/consumption; N/A for transformed object | `step-local` | Noncircular producer is entry clause + path-budget clause -> B; B is consumed only after deriving the deficit | At `t=0` reserve is present; first transition pays `a_0||D_r||`; stationary projector has zero charge | `d_t >= d_0-||D_r||sum_{s<t}a_s >= (delta-L_P)||D_r||`; `delta-L_P>0` | Clauses 1--2 | `d_t` is derived and exported to C | Stress passes for `P_0=0`, stationary projectors, rank changes, and saturated finite budget | Without either entry reserve or finite path budget, adaptive span may reach `D_r` and no persistent floor follows |
| Ambient residual floor | Horizon-uniform nondegenerate lower bound and quantitative specialization | Every `t>=0` on `C_2` | `||Q R_t|| >= dist(D_r,S_t)-||E_rho||`; `||R_t|| >= ||Q||^{-1}||Q R_t||` | Coefficient reserve from B | Fixed smoothing residual `||E_rho||`; coordinate distortion `kappa^6`; target-scale comparison `C_T` | Projector accumulation is already closed in B; `E_rho` is pointwise dominated and not repeatedly accumulated | Structural lower comparison plus pointwise absorption of smoothing defect | Blocks A/B and clause 4; strict margin excludes `m<=0` by `L_P,zeta<delta/4` | Distance Lipschitzness and exact same-target identity have matching claim class | Produced `Q R_t`, consumed `R_t=T-That_t`; theorem metric is ambient Frobenius; `E_rho` and `C_T` dominate every residual at target scale | `step-local` | Noncircular path A+B+clause 4 -> C; no positive-loss conclusion is assumed | Floor already holds at entry; after first update B pays first projector charge before C is reused | `m=delta-L_P-zeta>delta/2`; `||T||<=C_T||D_r||`; hence `||R_t|| >= m/(kappa^6 C_T)||T||` | Base conditioning through A | `d_t`, `E_rho`, target-scale bound from C_2 | Exact/noiseless gives stronger `(delta-L_P)||T||`; zero/rank-deficient spans remain valid; `T=0` makes relative lower bound trivial | Without a reserve, smoothing control, target-scale control, or Q bound, the relative floor is unsupported |
| Represented-tensor convergence and objective limit | Infinite-horizon convergence and theorem closure | Every trajectory in clause 3, `t->infinity` | `||That_m-That_n|| <= sum_{t=n}^{m-1}v_t <= V_n`, `V_n->0` | Finite absolute variation budget | Increment directions are arbitrary; only norms are controlled | Summable: tail `V_n` is finite and vanishes; this is valid on the declared infinite horizon for each realized event member | Summable control and completeness | Conditional clause 3; no factor convergence or Gram condition required | Absolute summability is exactly adequate for represented-tensor Cauchy convergence | Same ambient tensor and Frobenius objective at production/consumption; no surrogate bridge | `step-local` | Clause 3 is an independent noncircular producer; convergence is derived before E consumes it | First increment is included; stationary entry has `v_t=0`; factor divergence is irrelevant to represented-tensor claim | Tail bound forces Cauchy property; continuity yields finite objective limit | None beyond setting's ambient finite-dimensional space | `v_t`, `V_n`, `That_infty` generated by clause 3 and the Cauchy argument | Stationary, zero components, rank changes, and factor reparameterization do not affect represented-tensor conclusion | Without absolute variation or another independent convergence source, objective-limit existence is not implied |
| Final theorem closure and epsilon specialization | Event inclusion, asymptotic relative floor, probability-mode preservation | Joint law scope, conditional event inclusion, all `t` then `t->infinity` | `L_t>=epsilon||T||^2` for all `t` and `L_t->L_infty`; pass lower bound to limit | Strict margin `m>0` and Blocks C/D | Potential illicit probability upgrade or dropped parameter dependence; no mathematical residual | Pointwise lower bound and existing limit are mode-compatible; no accumulation beyond earlier blocks | Explicitly conditional target and limit preservation | Accepted derived Blocks C/D; no source-level certificate probability asserted | Same objective sequence and norm on both sides; direct limit argument | No target-transfer bridge at assembly; exact same `L_t` is consumed | `step-local` | E consumes only C/D and never feeds back into their producers | Floor active at entry/first update; empty or measure-zero `C_2` does not invalidate set inclusion | Square nonnegative C.4, define epsilon, then use limit of L_t; retain conditional probability mode | All primitive scope assumptions remain stated | `epsilon`, event inclusion, finite limit generated by E | Exact/noiseless baseline retains positive relative floor; no probability lower bound is claimed | Without either C or D, one conjunct of the target fails; adding probability would change theorem scope |
| Exact/noiseless baseline invariance | Baseline recovery/specialization obligation | Coordinate-orthonormal/noiseless specialization with `Q=I`, `E_rho=0`, `T=D_r` | Same B recurrence; C specializes to `||T-That_t|| >= (delta-L_P)||T||`; D/E unchanged | Entry reserve and finite projector budget; no smoothing defect | Only projector charges remain | Finite-budgeted projector charge and summable variation remain valid under specialization | Baseline specialization of reserve/ledger plus summable convergence | Exact/noiseless case is handled, not silently excluded; `Q=I` fixes object-target compatibility | A/B/D mechanisms have same target and metric after specialization | No residual-to-surrogate transfer; produced and consumed target are exactly `T=D_r` | `step-local` | Baseline conclusion is derived from A/B/D/E, not assumed as a weaker defect statement | At entry and first update the projector charge trace is unchanged; stationary case is immediate | Remove `E_rho` from C.2/C.3 and retain `(delta-L_P)||T||`; pass to same limit | Base coordinate specialization and clauses 1--3 | Specialized floor and limit | `P_0=0`, stationary, zero variation, and rank changes remain admissible | If baseline were replaced only by vanishing defects, the target-preserving obligation would fail; this draft does not do so |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `||Q||_op <= kappa^6`, `C_t in S_t`, and (A.1) | Block A / `step_001`; primitive base conditioning and definitions | Column norms, normalized singular values, multilinearity, product-one gauge | `kappa^6` is fixed coordinate distortion; `E_rho` is retained; no uncontrolled ambient component is discarded | Exact produced object `Q(T-That_t)` and consumed object `T-That_t`; `||QR||<=kappa^6||R||` | Singular-value product and exact decomposition | Primitive base-conditioning lower singular-value margin | Block C, then E | valid; local proof must show all gauge branches |
| `d_t >= (delta-L_P)||D_r||` | Block B / `step_002`; clauses 1--2 | Entry reserve `d_0`, path increments `a_t`, total path budget | Each `a_t||D_r||` is controlled; no component-motion or fixed-span term is introduced | Same `D_r`, same subspace metric, same target at entry and consumption | (B.1) and finite telescoping | Clause-1 reserve `delta||D_r||` and clause-2 budget `L_P` | Block C | valid; no missing bridge |
| `||T-That_t|| >= m/(kappa^6 C_T)||T||` | Block C / `step_003`; A, B, clause 4 | `||Q||<=kappa^6`, B floor, `||E_rho||<=zeta||D_r||`, `||T||<=C_T||D_r||` | Projector charge already controlled; smoothing residual controlled; target scale fixed; no residual class is left uncontrolled | Exact same-target transfer under ambient Frobenius; every residual is explicitly dominated | (C.1)--(C.4), `m=delta-L_P-zeta` | `m>delta/2` from strict clause margins | Block E | valid; no surrogate-target or wrong-norm gap |
| `That_t -> That_infty` and finite `L_t` limit | Block D / `step_004`; clause 3 and finite-dimensional completeness | `v_t` and vanishing tails `V_n` | Increment directions uncontrolled but norm forcing summable | Produced and consumed tensors are identical ambient objects; no factor-space bridge needed | (D.1) and continuity | Clause-3 finite variation budget | Block E | valid; no quantitative convergence rate claimed |
| Event inclusion and epsilon | Block E / `step_005`; C and D | Pointwise floor, objective limit, strict margin | No mathematical defect; only forbidden probability upgrade or dropped dependence must be avoided | Same objective sequence and target; no transfer bridge at assembly | Square then take limit; keep `m,kappa,C_T` explicit | `m>0` | Final theorem | valid; probability of `C_2` intentionally outside interface |
| Exact/noiseless baseline floor | Baseline assembly from A, B, D, E | `Q=I`, `E_rho=0`, `T=D_r`, clauses 1--3 | Smoothing residual vanishes; projector charge remains finite; variation remains summable | Exact target equality and same Frobenius metric | Specialize C.2--C.4 without weakening conclusion | Entry reserve and `delta-L_P>0` | Baseline conclusion | valid; no remainder-only replacement |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| Normalized entry deficit | Clause 1 of `C_2` | Block B / `step_002` | Conditional event -> B -> C -> E | explicitly conditional | valid |
| Finite adaptive-projector path budget | Clause 2 of `C_2` | Block B / `step_002` | Conditional event -> B -> C -> E | explicitly conditional | valid |
| Unsquared finite represented-tensor variation | Clause 3 of `C_2` | Block D / `step_004` | Conditional event -> D -> E | explicitly conditional | valid |
| Relative smoothing and target scale | Clause 4 of `C_2` | Block C / `step_003` | Conditional event -> A/B -> C -> E | explicitly conditional | valid |
| `||Q||_op <= kappa^6` and exact identity | Block A / `step_001`; primitive base conditioning and definitions | Block C, final theorem through E | `assump:base_conditioning` -> A -> C -> E | derived | valid |
| Persistent coefficient deficit | Block B / `step_002` | Block C, final theorem through E | clauses 1--2 -> B -> C -> E | derived | valid |
| Ambient residual floor | Block C / `step_003` | Block E and final theorem | A+B+clause 4 -> C -> E | derived | valid |
| Represented-tensor and objective limits | Block D / `step_004` | Block E and final theorem | clause 3 -> D -> E | derived | valid |
| Epsilon specialization | Block E / `step_005` | Final theorem conclusion | C+D -> E | derived | valid |

The full-certificate probability is deliberately absent from this flow. It is neither a generated output nor a consumed premise of the literal conditional theorem. A future source-level probability theorem would need its own producer path for clauses 1--4, especially the all-time projector path and finite represented-tensor variation; importing such a path here would change the proof contract.

## Early Obstruction And Repair Plausibility

- **Contract contradiction check:** none. The target is explicitly conditional, and the proof does not claim that the certificate follows from Gaussian smoothing or initialization.
- **Theorem-Critical Mechanism Witness check:** passed for Blocks A--E. A has primitive full-rank and multilinearity sources; B has the entry reserve plus finite projector budget; C has the exact same-target bridge plus the fixed smoothing residual bound; D has an absolute summable tail; E consumes already-produced outputs. Each source has the correct claim class and explicit defect relation.
- **Exported-interface and residual-to-target check:** passed. The only transformed object is `Q(T-That_t)`, and the consumed object is the exact ambient residual. The inequality `||Q R|| <= kappa^6 ||R||` and clause-4 scale comparison provide the same-target bridge. No residual is silently dropped.
- **Scope-accumulation check:** passed. Projector motion is adversarial but has finite total charge. Represented-tensor increments are nonnegative in norm, absolutely summable, and have vanishing tails. The fixed smoothing residual is not accumulated over time.
- **Noncircular closure check:** passed. The persistent deficit is derived from clauses 1--2, convergence is derived from clause 3, and the ambient floor is derived before the final limit is consumed. No producer assumes the final positive-loss event.
- **Entry/activation check:** passed. At `t=0`, clause 1 supplies the reserve and clause 3 includes the first increment. The first projector transition pays exactly `a_0||D_r||`; positive product gauge leaves the represented and coefficient rank-one tensors unchanged. Stationary and zero-component branches are explicit.
- **Baseline check:** passed. In the exact/noiseless coordinate-orthonormal specialization, `E_rho` disappears and the same entry/path/convergence mechanism yields a positive relative limiting floor. The baseline is not replaced by a vanishing residual or stopped statement.
- **Citation/source check:** no theorem-critical external result remains unresolved. Kolda--Bader is convention-only. Direct projector, norm, Cauchy, and continuity facts have current-notation interfaces.
- **Same-setting repair plausibility:** no repair is required for the literal theorem. The unresolved task of proving a uniform positive probability for `C_2` is a separate source-level objective, not a missing bridge for this claim. It would require additional ALS-specific mechanism sources and therefore is intentionally not inserted as a hidden assumption.
- **Candidate idea-level obstruction:** none for the accepted conditional target. No `idea/theorem-contract defect` is needed to close the present event inclusion; no probability upgrade is part of the target.

## Global Gaps And Hard Steps

All entries below are local proof work under the unchanged accepted sketch. Each has a concrete mechanism witness, a legal producer-consumer flow, and no required theorem-contract change.

1. **`step_001`, exact coordinate/gauge interface (`step-local`).** Prove the singular-value product calculation from `assump:base_conditioning`; state the tensor-product Frobenius operator bound in current notation; verify `Q` on each rank-one component; and separately handle positive-factor and zero-factor gauge branches. The hard local unit is a direct algebraic lemma ending in (A.1).
2. **`step_002`, all-time projector recurrence (`step-local`).** Prove (B.1) for changing orthogonal projectors, telescope finite partial sums, and pass to all `t`. The mechanism witness is the explicit reserve/ledger relation `d_t >= d_0 - ||D_r|| sum_{s<t} a_s` with finite budget `sum_s a_s <= L_P`; no fixed-subspace premise may be added.
3. **`step_003`, same-target residual bridge (`step-local`).** Prove distance-to-subspace Lipschitzness, retain the sign and scale of `E_rho`, compare the coefficient residual with the exact ambient residual, and derive the displayed epsilon without hidden constants. The mechanism witness is the strict reserve `m>0` and the exact object-target relation in (A.1).
4. **`step_004`, finite-variation convergence (`step-local`).** Prove the tail-Cauchy estimate, invoke finite-dimensional completeness, and pass to the objective by continuity. The mechanism witness is the clause-3 summable control `V_n -> 0`; no factor convergence, Gram bound, or KL argument is needed or allowed.
5. **`step_005`, limit and probability assembly (`step-local`).** Square the nonnegative pointwise floor only after the coefficient-to-ambient bridge is complete, pass it to the finite objective limit, and preserve the event-inclusion mode. The mechanism witness is the independent outputs of C and D. A probability lower bound for `C_2` is not a missing local obligation because it is outside the formalized goal.

There are no `sketch/interface defect` or `idea/theorem-contract defect` entries. The local proof units above should be dispatched in dependency order, with `step_001`, `step_002`, and `step_004` available before `step_003`, and `step_003` plus `step_004` before `step_005`.

## Diagnostic Boundary Note

`global_proof.md` is diagnostic only. It is not proof evidence, not a cited result, not an assumption source, and not authority to change any accepted sketch-step claim, dependency, assumption, output target, theorem scope, probability mode, or conclusion. Every local unit and cited-tool check named here must be independently proved or discharged by the corresponding `proof-step` artifact and review before assembly.

## Suggested Routing

None

Continue with `/proof-step` for all five steps under the unchanged sketch. Prioritize `step_001`, `step_002`, and `step_004` as roots, then `step_003`, then `step_005`; run the corresponding step reviews before assembly. The current diagnostic does not route to `/proof-sketch` because no roadmap, interface, mechanism source, or theorem contract needs repair.
