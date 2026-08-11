# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_6`
- Sketch attempt: 4
- Global-proof unit attempt: 1
- Binding setting: `perspective_1/idea_6/setting.md`
- Reviewed sketch: `perspective_1/idea_6/proof_sketch.md`
- Reviewed sketch SHA-256: `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`
- Reviewed sketch review: `perspective_1/idea_6/proof_sketch_review.md`
- Reviewed sketch-review SHA-256: `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`
- Sketch review status: `ACCEPTED` (viability score 9, retry target `None`)
- Evidence boundary: only the live setting, live sketch, and live accepted review above were used. `proof_history/` is not evidence.

## Status

PARTIAL_BLOCKED

The accepted roadmap composes at theorem level and every presently unresolved theorem-critical obligation has a concrete, source-adequate, scope-compatible interface in the accepted sketch. The remaining work is nevertheless local proof work: none of the fourteen `PENDING` sketch rows is proof evidence yet. No sketch/interface or idea/theorem-contract defect is identified by this diagnostic.

## Attempted Theorem Claim

**Goal mode:** exact-goal mode. **Progress type:** `conditional`, with the remaining source gap exactly the primitive base-scale, cumulative-Gram, weight-balance, Gaussian-smoothing, smoothing-margin, rank, randomness, and accuracy/confidence conditions in `setting.md`.

Choose universal `C_rank,C_burn,C_cert,C_rep`. Uniformly over every deterministic base triple satisfying `assump:base-scale`, `assump:cumulative-gram`, and `assump:base-weight-balance`, and every parameter choice satisfying `assump:gaussian-smoothing`, `assump:smoothing-margin`, `assump:subquadratic-rank`, `assump:random-initialization`, and `assump:accuracy-confidence`, prove the following nested claim.

1. With probability at least `1-delta_sm` over the once-drawn smoothed instance, all realized columns have norm at least `(2 kappa_0)^(-1)`, `q_real<=q_*=1/4096`, `Gamma<=1.01`, and every cyclic Khatri--Rao Gram has smallest eigenvalue at least `1-q_*^2`. The proof must display separately the linear directional, quadratic, and normalization terms at scales `kappa_0 rho/sqrt(n)`, `kappa_0^2 rho^2/sqrt(n)`, and `kappa_0^2 rho^2`, including row-sum and union factors.
2. Conditional on each such fixed instance, a target/slot window has probability `Theta(r^(-5/3)(log r)^(-3/2))`; with `k=ceil(C_rank r^(5/3)(log r)^(5/2))`, one run covers every target with a universal positive probability. Covered simultaneous Jacobi trajectories satisfy the two displayed `R,S` recurrences from `setting.md`, retain their denominators noncircularly, enter a contracting projective chart in `O(log r)` commits, and store a state with `zeta<=tau_r=q_*^2/(10^4r)`. The score/filter/graph rule, without target labels, returns exactly one cluster per component.
3. The selected same-state equations yield row and column residual mass `O(q_real^2+r tau_r)=O(q_*^2)` and a sourced best-scalar quotient entry. One literal cyclic `U,V,W` sweep, with no target-span premise before the corresponding exact range update, enters the exact target spans. On that generated domain the chronological quotient states `e -> e_U -> e_V -> e_W`, with one overwritten common product register, are quotient-equivalent to the literal ALS intermediates; `Psi^q(e)=e_W` contracts in `d_Q`. Active ALS reaches the original rank-`k` relative Frobenius residual `epsilon` in `m_epsilon=1+ceil(log(8 kappa_0^2/epsilon)/log 4)` sweeps.
4. The controller fixes the same `m_cap=m_epsilon` before refinement. Every proposal failure terminates finitely; every gate-passing tape either hits the original residual test or times out at the cap. On `E_cov` the cap is nonbinding. With `J=max{1,ceil(C_rep log(1/delta_init))}` completed independent runs, conditional success is at least `1-delta_init`, the returned tensor has at most `k` nonzero terms, and
   `||T-sum_i xhat_i otimes yhat_i otimes zhat_i||_F <= epsilon ||T||_F`.
   Total runtime is polynomial in `n,r,k,kappa_0,rho^(-1),log(1/epsilon),log(1/delta_init)`, with no hidden base-triple or unlisted generated-condition-number dependence.
5. In the deterministic orthogonal equal-weight limiting specialization, the exact map remains `(A^+,B^+,C^+)=(BC,AC,AB)`, so `R^+<=R^2`, `S^+<=RS`; an exact stationary representative has zero same-state residual, actual perpendicular contamination zero, every chronological refreshed register equal to zero, and no positive error floor as `epsilon` decreases.

No probability statement at `rho=0` is attempted. The baseline clause is the algebraic limiting specialization specified by the setting, not a weakening of the positive-smoothing theorem.

## Whole-Proof Draft

### Block G1: smoothed geometry (`step_001`)

Normalize each perturbed column only after separating its directional Gaussian term, quadratic inner-product term, and norm-renormalization term. The required local estimates have the forms

`linear <= C kappa_0 rho sqrt(log(9r^2/delta_sm)/n)`,

`quadratic <= C kappa_0^2 rho^2 sqrt(log(9r^2/delta_sm)/n)`,

and `normalization <= C kappa_0^2 rho^2`.

The two scalar inequalities in `assump:smoothing-margin`, together with the base Gram slack `bar q<=q_*/4`, must dominate these classes before they are summed. A finite union then produces `E_sm`: norm retention, `q_real<=q_*`, and `Gamma<=1.01`. For held modes, the cyclic pair Gram is the Schur product `H_{M'} circ H_{M''}`. Its off-diagonal row mass is at most `q(U_{M'})q(U_{M''})<=q_*^2`, so Gershgorin gives the required floor `1-q_*^2`. The source and consumer use the same realized normalized factors.

### Block G2: observable windows and coverage (`step_002`, `step_003`)

Condition on `E_sm`. Gaussian regression against a target coordinate bounds each competitor mean by `q_*(t_r+t_r^(-1))`. The three target windows contribute the target tail scale, while a dyadic product-tail bound controls all competing pair products. The local proof must establish universal `0<c_win<=C_win<infinity` such that

`c_win r^(-5/3)(log r)^(-3/2) <= p_win <= C_win r^(-5/3)(log r)^(-3/2)`.

Choose `C_rank` so that `k p_win>=8 log r`. Independence is only across slots; no cross-target independence is used. For each proof-only target label, its miss probability is at most `exp(-k p_win)`, and a union over `r` targets gives a one-run event `E_cov` of probability at least the declared universal `p_0>=1/2`. Labels disappear before the observable filtering and clustering rule.

### Block G3: simultaneous recurrence, chart, and certification (`step_004`)

For a covered target, expand all three contractions from the same old state. Target-product dominance and Gram leakage give exactly

`R_(t+1) <= ((Gamma R_t+q_real)/(1-Gamma q_real R_t))^2`,

`S_(t+1) <= ((Gamma R_t+q_real)(Gamma(1+q_real)S_t+q_real))/(1-Gamma q_real R_t)^2`.

At entry, `R_0<=19/20`, hence the first denominator is at least `31/32`. Interval arithmetic through the burn horizon gives `R_10<=6.0e-8`; choosing `L_burn>=10+ceil(log(16r/q_*)/log 4000)` yields `S_t_b<=q_*/16`. With `H_M=G_M^T G_M`, `L_M=G_MH_M^(-1)`, and dual off-target mass `a_t`, the exact bridge is

`a_(t+1)<=2(Gamma S_t+q_real)/(1-Gamma q_real R_t)`,

so `a_t_b<=1/1024`. The chart with `a<=1/512` and ambient radius `1/128` is a self-map because `a(J(h))<=2(q_*+2a(h)^2)<=1/1024`; its direct derivative bound is `L_chart<1/4`. Thus `zeta_t<=3(1/4)^(t-t_b)`, and `L_cert>=ceil(log(4/tau_r)/log4)+1` produces `E_cert`. Persistent `q_real` forcing is bounded in the finite invariant interval; it is not asserted to vanish.

### Block G4: same-state certificate, global tail ledger, and unlabeled classifier (`step_004b`, `step_005`)

For each certified slot and mode, the minimizing projective sign gives the exact raw equation

`P_M^raw D_M = G_M K_M^raw Sigma_M + R_M^raw`,

`||R_M^raw(:,a)||_2 <= D_M(a,a) tau_r`.

Here `K_M^raw` uses the two other directions from the same stored state. Only after score filtering are signs absorbed into proof-only barred objects, giving `bar P_M D_M=G_M bar K_M+bar R_M`; `D_M` is unchanged and `bar theta=|theta|`.

Before any target label is assigned, normalize coefficient vectors and expand

`(H_{M'}c_{M'}) circ (H_{M''}c_{M''})`.

The two first-order Gram terms and their cross term have total `eta_G=2q_*+q_*^2`. Exact scalar normalization cancels the first-order scalar error, leaving `eta_N=5q_*^2`; finite-support conversion contributes exactly `eta_C=2sqrt(r)tau_r`. With `eta_0=eta_G+eta_N+eta_C` and `eta_rel=8eta_0`, the local proof must derive the retained floor `vartheta_*>1/16`, ratio-product error `104eta_0`, normalized weighted profile error `144eta_0`, singleton tail below `a_cert=7q_*+8tau_r<1/512`, and multi-support score tail below `16eta_0`.

The resulting exhaustive branches are LOW, singleton, or multi-support (including threshold straddling). For multi-support size `m>=2`,

`|theta|<=lambda_max(1/sqrt(m)+160eta_0)=s_mix lambda_max`,

where `1.01s_mix<0.794<0.85s_-`; component witnesses have `s_-lambda_j<=|theta|<=s_+lambda_j` and `s_-/(1.01s_+)>0.901`. These strict score margins and the within/cross-target correlation inequalities prove exactly `r` observable clusters before tie breaking. Retained states satisfy `|theta|>0.8lambda_min`, so the product-preserving sign gauge is legal.

### Block G5: selected coefficient closure and best-scalar transfer (`step_006`, `step_007`)

Let `bar B_M=L_M^T bar P_M=A_M+E_M` with diagonal `A_M`. The exact off-diagonal equation and `31/32<=D_M(j,j)/lambda_j<=33/32` produce

`chi <= 4(q_*+2chi+2q_*^2)^2+4r tau_r`.

The chart selects its small root, `chi<=32omega`, where `omega=q_*^2+r tau_r<=1.0001q_*^2`. Pushing each ambient certificate residual through one dual row gives the per-entry bound `2tau_r`; separately summing one index yields row and column masses `2r tau_r`, never `r^2tau_r`. The row relation

`eta_row <= 4(q_*+2chi+2q_*^2)(q_*+2eta_row+2q_*^2)+4r tau_r`

has self coefficient below `1/8`, hence `eta_row<=128omega`.

In the product-one equal-norm gauge, relative amplitude obeys `|alpha_Mj|<=128omega`. A four-class tensor expansion (scalar, one-direction, pair leakage, cubic remainder), together with the exact target-norm floor, yields

`||e_best||_Q <=512omega`,

`||T-T_init||_F/||T||_F<=512omega<rho_ALS/4`, `rho_ALS=1/1024`.

The same step must export the exact entry decomposition

`bar P_M=G_M B_M+N_M`, `G_M^T N_M=0`,

with both induced masses of `B_M-I` at most `48omega` and each column of `N_M` at most `tau_r`. This is a same-target Euclidean projector decomposition, not a surrogate basin claim.

### Block G6: repaired carried resolvent and chronological entry sweep (`step_007c`, `step_007b`)

For every held-mode record, use exactly the accepted interface

`B_N=I+C_N+E_N`,

`||C_N||_(row/col,1)<=48omega`, `||E_N||_(row/col,1)<=epsilon_N`,

`max_j||N_N(:,j)||_2<=t_N`, `h_M=sum_(N in H_M)epsilon_N`.

No target-span premise appears here. Put `F_N=N_N^TN_N`, `H_N^par=B_N^TH_NB_N`, and

`b_perp(t',t'')=(1+q_*)(1+48omega)^2((t')^2+(t'')^2)+r(t't'')^2`.

The actual perpendicular pair defect satisfies `beta_act,M<=b_perp(t_M',t_M'')`; at entry,

`beta_perp=2(1+q_*)(1+48omega)^2tau_r^2+r tau_r^4<10^(-8)omega`, `eta=omega+beta_perp`.

The complete conditional cross/pair interface is

`||Delta_C||_rc<=96omega+(2q_*+8rho_ALS)h_M`,

`||Delta_J||_rc<=192omega+2beta_act,M+(4q_*+16rho_ALS)h_M`.

For `H_0=H_M' circ H_M''`, the literal solve is

`Z_M=Lambda C_M J_M^(-1)R_in^(-2)D_lambda^(-2)`,

and `A_M=Lambda(C_M-J_M)J_M^(-1)Lambda^(-1)`. With `d_j=(H_MA_M)_jj` and `nu_j^2=1+2d_j+(A_M^TH_MA_M)_jj`, normalization must be expanded before norms through

`N_M(A_M)=(A_M-Diag(d))+Diag(nu^(-1)-1+d)+A_M(D_nu-I)`.

The centered term cancels first order in both row and column orientations. Neumann expansion and diagonal similarity give

`kappa_res=Gamma^2(1-q_*^2)^(-1)[1-(1-q_*^2)^(-1)/64]^(-1)<17/16`.

With `S_0<=288omega+2beta_perp<=290eta`, the static output is

`8kappa_res S_0+4||alpha||_infty<=2977eta<3072eta`.

The carried gain is `ell_0=8q_*+32rho_ALS=17/512<1/8`, so each legal call exports

`epsilon_M^+<=3072eta+ell_0 h_M`

simultaneously for row mass, column mass, ambient direction columns, and the one common product-log register. The consumer must discharge calls in this order:

- `U`: `h_U=0`, hence `epsilon_U<=3072eta`; only the exact U unfolding update then proves `N_U^+=0`.
- `V`: after that generated U range fact, `h_V=epsilon_U`, hence `epsilon_V<=3456eta`; only the exact V update then proves `N_V^+=0`.
- `W`: after the generated U and V range facts, `h_W=epsilon_U+epsilon_V`, hence `epsilon_W<=3888eta`; only the exact W update then proves `N_W^+=0`.

Numerically `h_W<=6528eta<1/2048<2rho_ALS/3`, `Delta_J<1/32768<1/64`, and `d_M<1/16384<1/8` at every call. Incoming scales are positive `D_lambda R_in`; their historical common product cancels exactly, and `nu_j>0`. After final product-one rebalance, the completed-sweep envelope is

`||e^1||_Q<=4096eta=4096(omega+beta_perp)<rho_ALS/3`.

Thus `3072/3456/3888` are chronological per-call envelopes and `4096` is the completed-state envelope. No target-span/range fact is assumed before its own exact update. Zero padding is exact because the active Gram pseudoinverse is block diagonal with a zero inactive block.

### Block G7: invariant quotient contraction (`step_008`)

On the generated domain `T_parallel(rho_ALS)`, canonical equal-norm balancing preserves each rank-one product. Write the one full quotient state `e=(C_U,C_V,C_W,s)`, where `s_j=log(gamma_j/lambda_j)`, and use the setting's `d_Q`. Define the solved-output maps `U_M^q` and exact refreshes

`e_U=(C_U^+,C_V,C_W,s_U^+)`,

`e_V=(C_U^+,C_V^+,C_W,s_V^+)`,

`e_W=(C_U^+,C_V^+,C_W^+,s_W^+)`.

The prior product field is overwritten globally at each refresh. Exact scale equivariance makes these states quotient-equivalent to the literal post-U, post-V, and post-W ALS states. Target-span pair-Gram perturbation is below `1/32`, so the inverse floor is `31/32`. For held-direction discrepancy `D_h`, the direct current-notation output estimate is

`max{c_M^out,||Delta s_M^out||_infty}<=ell D_h`,

`ell=8q_*+32rho_ALS<1/16`.

Sequential substitution yields U and V output discrepancies at most `ell D`, W at most `ell^2D`, and hence, for `Psi^q(e)=e_W`,

`d_Q(Psi^q(e),Psi^q(e'))<=ell d_Q(e,e')<1/16 d_Q(e,e')<1/4 d_Q(e,e')`.

Exact unfolding preserves target-span membership, so all-time perpendicular forcing is zero. The recurrence `||e^(s+1)||_Q<=ell||e^s||_Q` is noncircular and has geometric budget `<(16/15)||e^1||_Q`. No intermediate full state, raw per-mode amplitude, or unrestricted perpendicular tube is claimed to contract.

### Block G8: stopping, all-tape cap, restarts, and runtime (`step_009`, `step_010`)

Balanced-chart comparison gives original relative residual at most `8kappa_0^2||e||_Q`. Using the conservative factor `1/4`, after the entry sweep and `m-1` contracted sweeps the residual ratio is at most `8kappa_0^2 4^(-(m-1))`. Therefore `m_epsilon=1+ceil(log(8kappa_0^2/epsilon)/log4)` proves `E_stop` on the produced basin.

Independently, pre-register `m_cap=m_epsilon`. Early proposal failures exit finitely. A gate-passing tape performs at most `m_cap` unchanged Moore--Penrose sweeps and original residual tests, then succeeds or times out. This counter, not contraction, controls arbitrary `E_cov^c` tapes. Per run,

`T_run <= C_prop[k(L_burn+L_cert)n^3+kn^3+k^2n] + C_act m_cap[n^3r+nr^2+r^3+nk]`.

On `E_cov`, `E_stop` proves the cap nonbinding, so `p_0>=1/2` remains a success lower bound. For completed independent tapes, `(1-p_0)^J<=delta_init` when `C_rep>=1/log2`, and `T_total<=J T_run`. Timeout tapes export no successful tensor; every returned candidate is judged in the original Frobenius metric and has only `r` active columns plus `k-r` fixed zeros.

### Block G9: exact baseline and final assembly (`step_011`, assembly role)

At the deterministic orthogonal equal-weight stationary point, substitute `H_M=I`, `B_M=I`, `N_M=0`, `alpha=0`. Then `beta_act=0`, `A_M=0`, `nu=1`, `Z_M=D_lambda`, each refreshed common register is zero, and `Psi^q(0)=0`. The positive numerical `beta_perp` envelope is retained only for finite certified transients and is not substituted for this equality.

Assemble the nested probability statement by first taking `E_sm` with probability at least `1-delta_sm`, then conditioning on that fixed tensor and applying the completed-tape restart calculation. The geometric entry/stopping chain is consumed only on `E_cov`; the all-tape counter supplies termination elsewhere. This proves the attempted theorem once the local units below are independently proved and accepted.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| --- | --- | --- | --- | --- | --- |
| G1 | Fixed-instance geometry and positive pair floors | `step_001` | None | Five smoothing/base primitives | Concentration, normalization, union, Schur/Gershgorin derivations |
| G2 | Window probability and universal one-run coverage | `step_002`, `step_003` | `step_001 -> step_002 -> step_003` | Rank and initialization primitives | Two-sided product-tail rate and coupon arithmetic |
| G3 | Ratio invariant, chart, fixed-horizon certificate | `step_004` | `step_001`, `step_003` | No generated condition assumed | Exact recurrence, interval, derivative, and norm conversion |
| G4 | Same-state equation, all-certified tail ledger, observable clusters | `step_004b`, `step_005` | `step_004 -> step_004b -> step_005` | None beyond earlier derived outputs | Threshold/profile arithmetic and exhaustive classifier proof |
| G5 | Selected coefficient closure and same-target quotient entry | `step_006`, `step_007` | `step_004`, `step_005`; then `step_005`, `step_006` | Base weight balance only where cited | Small-root/row absorption and four-class tensor transfer |
| G6 | Conditional normalized resolvent and exact entry sweep | `step_007c`, `step_007b` | `step_001`, `step_007`; then `step_001`, `step_007`, `step_007c` | Procedure scale only; raw records are local conditional hypotheses | Centered normalization proof, all per-call margins, chronological range trace |
| G7 | Generated invariant quotient basin and contraction | `step_008` | `step_001`, `step_007b` | No basin assumption | Scale equivariance, literal-orbit identity, kernel and sequential contraction |
| G8 | Original residual stopping, cap, restarts, runtime | `step_009`, `step_010` | `step_007b`, `step_008`; then `step_003`, `step_009` | Accuracy and run-randomness primitives; approved cap procedure | Residual equivalence, exhaustive counter, dense cost and confidence conversion |
| G9 | Exact baseline and nested theorem closure | `step_011` plus assembly | `step_004`, `step_007b`, `step_008`, `step_009`; all prior blocks | Deterministic limiting specialization only | Direct substitution and final quantifier assembly |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| --- | --- | --- | --- | --- |
| `step_001` | G1 | None | Three-class smoothing concentration, norm/Gram/weight margins, Khatri--Rao floor | Produces `E_sm`; step-local |
| `step_002` | G2 | `step_001` | Two-sided target-window and competitor-pair probability | Produces `E_win,p_win`; step-local |
| `step_003` | G2 | `step_002` | `kp_win>=8log r`, slot-independence coupon/union calculation | Produces `E_cov,p_0`; step-local |
| `step_004` | G3 | `step_001`, `step_003` | Exact `R,S` recurrences, denominator invariant, chart self-map/contraction, `zeta` horizon | Produces `E_RS,E_chart,E_chart_l1,E_cert`; step-local |
| `step_004b` | G4 | `step_004` | Same-state signed equation and global LOW/singleton/multi-support tail ledger | Produces `E_cert_eq,E_cert_tail`; step-local |
| `step_005` | G4 | `step_004`, `step_004b` | Weighted support/score gap, sign gauge, graph separation and exactly `r` clusters | Produces `E_support_wt,E_cluster,E_gauge`; step-local |
| `step_006` | G5 | `step_004`, `step_005` | Column small root, per-entry dual residual, independent row/column sums, row absorption | Produces `E_col,E_row_residual,E_row`; step-local |
| `step_007` | G5 | `step_005`, `step_006` | Best-scalar target transfer and exact `GB+N` quotient decomposition | Produces `E_best,E_quotient`; step-local |
| `step_007c` | G6 | `step_001`, `step_007` | Perpendicular ledger, exact resolvent, centered row/column normalization, conditional carried interface | Produces `E_perp_pair,E_carry_resolvent`; step-local |
| `step_007b` | G6 | `step_001`, `step_007`, `step_007c` | Discharge U/V/W raw records, inverse floors, zero-padding, range chronology, completed `4096eta` entry | Produces `E_pair_entry,E_parallel_entry`; step-local |
| `step_008` | G7 | `step_001`, `step_007b` | Quotient maps, exact refresh/literal identities, invariant domain, full-sweep contraction | Produces `E_basin_parallel,Psi^q`; step-local |
| `step_009` | G8 | `step_007b`, `step_008` | Original-residual comparison and finite hitting-time arithmetic | Produces `E_stop`; step-local |
| `step_010` | G8 | `step_003`, `step_009` | Exhaustive all-tape counter, dense cost, restart product | Produces `E_run_cap,E_restart`; step-local |
| `step_011` | G9 | `step_004`, `step_007b`, `step_008`, `step_009` | Deterministic exact-map/stationary substitution and zero-floor bridge | Final baseline clause; step-local |

## Dependency And Assumption Audit

- **Primitive conditions:** exactly the eight stable `assump:*` conditions in `setting.md`. The approved pre-refinement cap is a procedure clause, not a theorem assumption.
- **Accepted derived interfaces in the roadmap:** `E_sm`, `E_win`, `E_cov`, `E_RS`, `E_chart`, `E_chart_l1`, `E_cert`, `E_cert_eq`, `E_cert_tail`, `E_support_wt`, `E_cluster`, `E_gauge`, `E_col`, `E_row_residual`, `E_row`, `E_best`, `E_quotient`, `E_perp_pair`, `E_pair_entry`, `E_parallel_entry`, `E_basin_parallel`, `E_stop`, `E_run_cap`, and `E_restart`. They remain future conclusions until their step proofs are accepted.
- **Local conditional hypothesis:** only the raw held-input record of `E_carry_resolvent`, including `B_N=I+C_N+E_N`, the `epsilon_N,t_N,h_M` budgets, and the displayed `Delta_C,Delta_J` margins. `step_007b` proves these records before each call; they are not public assumptions.
- **Acyclicity:** the binding nonlexical order is `step_007c -> step_007b`. Within the first sweep the order is raw U record -> U solve/range -> V record -> V solve/range -> W record -> W solve/range. Within contraction it is `e -> e_U -> e_V -> e_W -> Psi^q`.
- **No missing bridge:** every generated condition has an earlier producer and dependency path. In particular, `E_stop` is consumed only on the `E_cov` producer chain, while `E_run_cap` supplies all-tape termination independently.

## Citation And Tool Audit

| Tool or source | Current objects and role | Assumptions / compatibility to discharge | Needed conclusion and boundary | Affected steps |
| --- | --- | --- | --- | --- |
| Gaussian norm/directional concentration | Perturbed setting columns | Isotropic variance `rho^2/n`, base norm bounds, finite union | Separate linear/quadratic/normalization bounds; no trajectory output | `step_001` |
| Schur product and Gershgorin | Realized normalized Gram matrices | Same Euclidean convention; row and column mass `q_real` | Pair-Gram floor `1-q_*^2`; no stronger spectral claim | `step_001`, `step_008` |
| Gaussian regression and dyadic product tails | Raw proposal coordinates | Conditional covariance from `E_sm`; slot independence only | Two-sided `p_win` rate; no cross-target independence | `step_002`, `step_003` |
| Banach fixed-point theorem | Explicit closed projective chart | Self-map and direct `L_chart<1/4` must be proved first | Unique chart fixed point and geometric displacement only | `step_004` |
| Exact multilinearity, dual-basis algebra, Cauchy/Hadamard bounds | Same stored states and realized target duals | Raw/barred sign conventions and same-state object identity | Certificate/tail, row/column, target-transfer outputs | `step_004b`-`step_007` |
| Neumann inverse and diagonal similarity | `H_0,J_M,Delta_J` in both induced orientations | `Delta_J<1/64`, weight-ratio convention, ordinary branch | `kappa_res<17/16`; no rank or hidden condition-number loss | `step_007c`, `step_007b` |
| Moore--Penrose block identity and exact unfolding | Active rank-`r` block plus frozen zeros | Exact setting ALS and chronological held factors | Ordinary active inverse when conditioned; finite singular branch otherwise; exact range after own update | `step_007b`, `step_010` |
| Uschmajew, DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5 | Quotient/Gauss--Seidel interpretation | Source object/procedure mapping and scaling kernel | Interpretation only; no source claim for branch radius, entry, inverse floor, refresh identity, or numeric contraction | `step_008` |
| Direct current-notation quotient calculation | `U_M^q`, `Refresh_s^M`, `d_Q` | Exact scale equivariance, target-span entry, one common register | Literal-orbit identity and `ell` contraction | `step_008`, `step_009` |

All quantitative branch-specific claims must be proved directly; no citation is treated here as discharged proof evidence.

## Quantitative Dependence Audit

- **Exposed variables:** `n,r,k,kappa_0,rho,rho^(-1),epsilon,delta_sm,delta_init`, fixed finite `d_kappa,d_rho`, `q_real,Gamma,tau_r,L_burn,L_cert,m_cap,J`, and all declared numerical margins.
- **Fixed constants:** `q_*=1/4096`, `a_*=10/9`, `b_*=19/18`, `rho_ALS=1/1024`; universal choices of the four controller constants.
- **Hidden constants:** may depend only on universal concentration/arithmetic constants and the declared finite regime exponents. They may not depend on the base triple, realized perturbations, confidence parameters where excluded, `epsilon`, or an unlisted generated condition number.
- **Probability mode:** one high-probability event `Pr(E_sm)>=1-delta_sm`; conditional on each fixed good tensor, independent completed full-run tapes give success at least `1-delta_init`. No confidence factor enters `k`.
- **Horizon mode:** static geometry; finite proposal horizon `L_burn+L_cert`; one finite entry sweep; all subsequent sweeps on a generated invariant tube with geometric recurrence; every arbitrary gate-passing tape stopped at finite `m_cap`; exactly `J` completed restarts.
- **Metric mode:** Euclidean column norms, induced row/column `l1` masses, Khatri--Rao spectral floor, target-relative projective ratios, quotient metric `d_Q`, and original relative Frobenius residual.
- **Public specialization:** `k=Theta(r^(5/3)(log r)^(5/2))`, `m_cap=1+ceil(log(8kappa_0^2/epsilon)/log4)`, `J=O(log(1/delta_init))`, and the displayed dense cost. Each domination is explicit above.
- **Baseline reduction:** actual orthogonal stationary defects are exactly zero even though finite-transient envelopes `tau_r,beta_perp` remain positive. No conservative remainder replaces the zero-error conclusion.

## Scope And Closure Certificate

| Target condition/control | Claim role and scope | Concrete interface / positive source | Defects and accumulation | Closure mechanism and relation | Source / residual adequacy | Locality / noncircularity / stress |
| --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | Static norm/Gram/weight/pair-floor event | Base norm/Gram/weight slack plus separate Gaussian bounds; Schur row mass `<=q_*^2` | Finite union only | Structural lower/upper comparison gives norms, `q_real`, `Gamma`, pair floor | Exact realized factors; no surrogate residual | `step-local`; primitive -> `step_001`; orthogonal boundary exact |
| `E_win,E_cov` | Finite proposal activation | Two-sided `p_win` and `kp_win>=8log r` | Slot misses, finite target union | Product-tail domination plus coupon union | Raw coordinates are those consumed by `R_0,S_0` | `step-local`; first update occurs only after window margin |
| `E_RS,E_chart,E_cert` | Finite recurrence, denominator, chart membership, certificate | Displayed `R,S,a` recurrences; denominator `>=31/32`; self-map and `L_chart<1/4` | Persistent `q_real` forcing, but bounded over finite burn/cert horizon | Self-contraction; `zeta_t<=3(1/4)^(t-t_b)` | Same realized target chart and stored state | `step-local`; produced before use; at `q=0` exact squaring |
| `E_cert_eq,E_cert_tail` | Same-state structural equation and all-certified ledger | Nonzero contraction scale; exact signed equation; `eta_G,eta_N,eta_C` split | One residual per mode/slot; one `sqrt(r)tau_r` conversion | Algebraic coupling and finite-budget comparison | Same state only; target transfer intentionally deferred | `step-local`; zero contraction exits; stationary residual zero |
| `E_support_wt,E_cluster,E_gauge` | Structural support/score/cluster/sign certificate over finite pool | Retained floor, weighted profile, strict score and graph margins | Finite pool, no iterative forcing | Structural lower/upper comparison; strict margins before tie breaking | Same realized correlation metric; sign absorption preserves tensor | `step-local`; all branches exhaustive; unequal-weight boundary tested |
| `E_col,E_row_residual,E_row` | Selected coefficient and residual closure | `31/32` diagonal; column small-root inequality; per-entry `2tau_r` | Sign-unknown finite `r tau_r` forcing | Algebraic small gain; row coefficient `<1/8` absorbs forcing | Exact dual transfer, row/column `2r tau_r`; no `r^2` residual | `step-local`; column closes before row; fixed point gives zero |
| `E_best,E_quotient` | Same-target basin seed and entry decomposition | Relative amplitude, four-class tensor expansion, exact projector | One finite expansion | Structural comparison: `512omega<rho_ALS/4` | Original Frobenius metric and exact `GB+N` target decomposition | `step-local`; no basin premise; exact CP entry is zero |
| `E_perp_pair,E_carry_resolvent` | Conditional one-block normalized transfer | `B=I+C+E`, `h_M`; exact solve; centered normalization; pair floor and resolvent | Static `omega,beta_perp`; carried term linear in `h_M`; no repeated call beyond one sweep | Algebraic coupling and local absorption: `epsilon_M^+<=3072eta+ell_0h_M`, `ell_0<1/8` | Actual held pair Gram and same direction/product target; every residual class included | `step-local`; conditional record discharged before call; stationary actual defect zero |
| `E_pair_entry,E_parallel_entry` | One chronological sweep into exact spans | U/V/W inverse floors and exact unfolding range | Unknown-sign perpendicular terms bounded by `beta_perp`, then removed mode by mode | Projection/range maintenance plus finite recurrence: `3072,3456,3888`, final `4096` | Exact ALS outputs `G_MZ_M`; same rank-`k` tensor and quotient | `step-local`; no span premise before own update; shared-perpendicular stress passed |
| `E_basin_parallel,Psi^q` | All-sweep invariant and contraction | Exact span invariance, pair floor, scale equivariance, `ell<1/16` | All-time perpendicular forcing exactly zero; historical `s` overwritten | Self-contraction: `||e^(s+1)||_Q<=ell||e^s||_Q`; geometric budget `<16/15` | Literal orbit and original represented tensor; no raw-amplitude surrogate | `step-local`; entry produced first; `Psi^q(0)=0`; unrestricted tube excluded |
| `E_stop` | Finite original-residual hitting time | Residual comparison `8kappa_0^2` and conservative `1/4` recurrence | Finite geometric horizon | Self-contraction and threshold inequality defining `m_epsilon` | Original rank-`k` Frobenius test | `step-local`; only consumed on produced basin; baseline stops at zero |
| `E_run_cap,E_restart` | Every-tape termination, finite total cost, confidence | Pre-registered integer counter; `p_0>=1/2`; completed independent tapes | Arbitrary persistent errors outside `E_cov` are stopped at `m_cap`; exactly `J` costs add | Stopping/conditioning: remaining counter drops each sweep; failure probabilities multiply | Timeout makes no target claim; successful candidate uses original residual | `step-local`; cap exists before refinement; singular/noncovered tape exits |
| Exact baseline | Zero-error specialization | Exact diagonal CP equations and stationary representative | No stationary defect; finite transients kept separate | Algebraic coupling / exact fixed point | Produced tensor equals target in original metric | `step-local`; direct substitution independent of noisy closure |

Every all-time row above contains its concrete controlling relation. There is no row with unsupported accumulation, circular production, a missing mechanism source, or a non-`step-local` locality verdict.

## Exported Interface Feasibility

| Exported interface | Producer | Raw controls and defect split | Dominance / target transfer | Consumers | Status |
| --- | --- | --- | --- | --- | --- |
| `E_sm` | `step_001` | Five primitive geometry/smoothing controls; linear/quadratic/normalization split | Smoothing margins -> exact realized factors and pair floor | `step_002`,`step_003`,`step_004`,`step_007b`,`step_008` | valid interface; proof pending |
| `E_win,E_cov` | `step_002`,`step_003` | `E_sm`, raw Gaussian slots, `k`; tail and miss defects | Two-sided rate, `kp_win>=8log r` | proposal/chart/restart chain | valid interface; proof pending |
| `E_cert_eq,E_cert_tail` | `step_004b` | Same-state contraction and `d tau_r`; Gram/scalar/certificate split | Exact raw/barred equations and exhaustive tail thresholds | `step_005`,`step_006` | valid interface; proof pending |
| `E_support_wt,E_cluster,E_gauge` | `step_005` | Tail ledger, exact weights, score/graph margins | Strict component/mixture gap; tensor-preserving signs | `step_006`,`step_007` | valid interface; proof pending |
| `E_col,E_row` | `step_006` | Denominator, Gram/coefficient leakage, per-entry residual | Small root and `<1/8` row absorption; exact dual target | `step_007` | valid interface; proof pending |
| `E_best,E_quotient` | `step_007` | Direction/amplitude/pair/cubic/perpendicular controls | `512omega` and exact `GB+N` same-target bridge | `step_007c`,`step_007b` | valid interface; proof pending |
| `E_carry_resolvent` | `step_007c` | `B=I+C+E`, `h_M,t_N`, total `Delta_C,Delta_J`; static/carried split | `2977eta<3072eta`, `ell_0h_M`, centered normalization, same product target | U/V/W calls in `step_007b` | valid conditional interface; proof pending |
| `E_parallel_entry` | `step_007b` | Per-call margins, pair defects, exact range and positive scales | `3072/3456/3888`, final `4096eta<rho_ALS/3`, exact `N^+=0` | `step_008`,`step_009` | valid interface; proof pending |
| `E_basin_parallel,Psi^q` | `step_008` | Generated span entry, inverse floor, quotient maps/refreshes | Exact literal-orbit bridge and `ell<1/16` contraction | `step_009` | valid interface; proof pending |
| `E_stop` | `step_009` | Entry/contraction and residual comparison | Explicit `m_epsilon` in original metric | `step_010`, final theorem | valid interface; proof pending |
| `E_run_cap,E_restart` | `step_010` | Observable counter, dense tensor/factors, completed independent tapes | Hit/timeout branch, dense bound, failure product | final theorem | valid interface; proof pending |

## Generated Output Flow

| Generated output/control | Producer | Consumer/final use | Dependency path | Provenance | Flow status |
| --- | --- | --- | --- | --- | --- |
| `E_sm` | `step_001` | geometry theorem; `step_002`,`step_003`,`step_004`,`step_007b`,`step_008` | primitives -> `step_001` -> consumers | derived | valid, proof pending |
| `E_win,p_win` | `step_002` | `step_003`; public slot rate | `E_sm` -> `step_002` -> `step_003` | derived | valid, proof pending |
| `E_cov,p_0` | `step_003` | `step_004`,`step_005`,`step_010`; one-run success | `E_win` -> `step_003` -> consumers | derived | valid, proof pending |
| `E_RS,E_chart,E_chart_l1,E_cert` | `step_004` | `step_004b`,`step_005` | `E_sm,E_cov` -> `step_004` -> consumers | derived | valid, proof pending |
| `E_cert_eq,E_cert_tail` | `step_004b` | `step_005`,`step_006` | `E_cert,E_sm` -> `step_004b` -> consumers | derived | valid, proof pending |
| `E_support_wt,E_cluster,E_gauge` | `step_005` | `step_006`,`step_007` | certificate outputs -> `step_005` -> consumers | derived | valid, proof pending |
| `E_col,E_row_residual,E_row` | `step_006` | `step_007` | cluster/certificate -> column root -> row closure -> `step_007` | derived | valid, proof pending |
| `E_best,E_quotient` and `bar P=GB+N` | `step_007` | `step_007c`,`step_007b` | coefficient/gauge -> `step_007` -> consumers | derived | valid, proof pending |
| `E_perp_pair` | `step_007c` | raw U/V/W ledger in `step_007b` | `E_quotient` -> `F_N,b_perp` -> consumer | derived | valid, proof pending |
| `E_carry_resolvent` | `step_007c` | chronological U/V/W calls in `step_007b` | `E_sm,E_best,E_quotient` -> conditional lemma; consumer discharges each record | explicitly conditional | valid, proof pending |
| `E_pair_entry,E_parallel_entry` | `step_007b` | `step_008`,`step_009` | U record -> U range -> V record -> V range -> W record -> W range | derived | valid, proof pending |
| `E_basin_parallel,e_U,e_V,e_W,Psi^q` | `step_008` | `step_009` | entry -> quotient maps -> chronological refreshes -> full sweep | derived | valid, proof pending |
| `E_stop` | `step_009` | `step_010`, final accuracy | `E_cov` producer chain -> entry/basin -> `step_009` | derived | valid only on produced basin, proof pending |
| `E_run_cap` | `step_010` | restart/runtime assembly | primitive cap -> early exit or finite counter -> completed tape | derived | valid all-tape flow, proof pending |
| `E_restart` | `step_010` | final conditional-confidence theorem | `E_cov,E_stop,E_run_cap` -> completed-tape failure product | derived | valid, proof pending |
| Baseline equality | `step_011` | final baseline clause | earlier exact identities -> direct stationary substitution | derived specialization | valid, proof pending |

## Early Obstruction And Repair Plausibility

- **Contract contradictions:** none. The exact goal, conditional progress label, rank, nested probability modes, original Frobenius criterion, polynomial runtime, and baseline are preserved.
- **Mechanism witness:** present for every theorem-critical row. Positive sources are base/Gram slack, target-product denominators, score floors/margins, exact diagonal coefficients, pair-Gram floors, exact unfolding range, target-span invariance, quotient scale equivariance, or the finite counter.
- **Residual-to-target and exported-interface checks:** pass at diagnostic granularity. All transfers use the same realized target, exact Euclidean projector/dual, literal ALS output, quotient-equivalent represented tensor, or original Frobenius residual. The repaired carried interface controls every static and carried defect class.
- **Entry-state trace:** pass. The first U call has no carried field; U range is generated before V's record, V range before W's record, and the exact completed sweep activates `step_008`. No target-span premise is consumed early.
- **Limiting/boundary stress:** exact stationary baseline, finite orthogonal transient, unequal-weight two-support profile, threshold straddling, zero contraction/score, coherent shared-perpendicular fields, singular active Gram, and noncovered nonhitting tapes all have explicit handling.
- **Mode/dependence upgrades:** none. Finite claims remain finite; the sole all-sweep claim has zero forcing and a geometric recurrence; arbitrary noncovered tapes are stopped rather than declared convergent.
- **Repair plausibility:** no repair is presently required. Failure of any listed local derivation under its fixed interface would be new evidence for `/proof-sketch`; this diagnostic does not pre-authorize altering a step claim.

## Global Gaps And Hard Steps

All gaps below are `step-local`; each source and downstream interface is fixed by the accepted sketch.

1. `step_001`-`step_003`: prove the concentration constants, two-sided window probability, and coupon arithmetic without hidden dependence.
2. `step_004`: prove the exact recurrence interval, chart self-map, derivative constant, dual-mass conversion, and certification horizon.
3. `step_004b`-`step_005`: prove the coefficient-vector Gram/scalar cancellation ledger, exhaustive support branches, exact weighted score inequalities, sign gauge, and graph partition.
4. `step_006`-`step_007`: prove the small-root selection, per-entry residual transfer, row absorption, four-class tensor expansion, and `GB+N` entry decomposition.
5. `step_007c`: prove the exact pair ledger, both induced resolvent orientations, centered normalization identity, total `Delta_C/Delta_J` bounds, positivity, and `3072eta+ell_0h_M` output.
6. `step_007b`: discharge the U/V/W records with `h_U=0`, `h_V=epsilon_U`, `h_W=epsilon_U+epsilon_V`; verify all inverse margins and the exact range/zero-padding chronology; obtain `3072/3456/3888/4096` without an early span premise.
7. `step_008`: prove scale equivariance, exact quotient/literal intermediate identities, target-span kernel/invariance, solved-output estimates, and the completed-state contraction only.
8. `step_009`-`step_010`: prove original-residual equivalence, cap nonbinding on `E_cov`, exhaustive arbitrary-tape termination, dense observed-tensor cost, and completed-tape restart amplification.
9. `step_011`: prove the deterministic limiting specialization and exact zero-floor equality while retaining finite-transient charges.

Likely local units are, respectively, concentration lemmas, a window-tail proposition, a chart-invariant proposition, a certificate/tail proposition, a weighted-classifier proposition, coefficient small-gain lemmas, a best-scalar transfer proposition, a conditional carried-resolvent lemma, a chronological first-sweep proposition, a quotient-contraction theorem, a stopping/runtime proposition, and a baseline corollary. These names are planning guidance only.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, quantitative mode, mechanism, or theorem conclusion. Every local unit and cited-result application above must be independently proved and reviewed.

## Suggested Routing

None

Continue with all fourteen `/proof-step` units in the binding dependency order, respecting the nonlexical edge `step_007c -> step_007b`. The repaired `step_007c`/`step_007b` interface is the highest-risk local checkpoint, but it may be consumed only after its accepted dependencies exist.
