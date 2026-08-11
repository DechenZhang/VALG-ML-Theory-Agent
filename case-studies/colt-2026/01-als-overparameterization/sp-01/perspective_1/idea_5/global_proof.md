# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_5`.
- Sketch attempt: `9`.
- Global attempt under this sketch: `1`.
- Reviewed current sketch: `perspective_1/idea_5/proof_sketch.md`, SHA-256
  `34b5427d11878fc32f7085c5abf9e09daec62e4ac9e71fd134cc54ed30924083`.
- Reviewed current sketch gate:
  `perspective_1/idea_5/proof_sketch_review.md`, SHA-256
  `c386a0f53b67764261507a24e0913cae0fc87dbce9c3a570b67c79a2ec1a7bfd`.
  It identifies sketch attempt 9, records `Sketch Review Status = ACCEPTED`,
  viability score 8, retry target `None`, and retry mode `none`.
- Formalized setting: `perspective_1/idea_5/setting.md`, SHA-256
  `b5d94e007cd1f2e428e604aca728743439635504d4982c69a29ae0016e34d56c`.
- Goal mode: exact-goal mode.  Progress type: `conditional`.
- The archived attempt-8 `step_008` review is used only to stress-test the
  repaired interface.  No attempt-8 proof, review, global diagnostic, or
  step artifact is consumed as current proof evidence or an accepted
  dependency.  Every step named below is a fresh attempt-9 proof obligation.

## Status

SKETCH_BLOCKED

The new `step_007b` roadmap repairs the shared-perpendicular obstruction at
diagnostic granularity: its source is the current-sketch `step_007` target
projector decomposition, it retains the coherent `r tau_r^4` term, and exact
ALS unfolding removes perpendicular components mode by mode.  The attempted
proof nevertheless stops at the theorem-critical contraction interface in
`step_008`.  The displayed single-block estimate

```
||Phi_M(e)-Phi_M(e')||_Q
  <= [8q_*+16(||e||_Q+||e'||_Q)] ||e-e'||_Q
```

does not define whether `Phi_M` is the newly solved coordinate or the full
state after one block update.  Under the natural full-state meaning it is
false: the two held blocks remain unchanged, so a difference supported in a
held block survives with Lipschitz ratio one while the displayed coefficient
is below `1/16`.  Under the coordinate-output meaning, neither the coordinate
codomain/seminorm nor the sequential Gauss--Seidel recurrence through the
final quotient rebalance is stated.  Supplying that distinction changes a
theorem-critical mechanism interface in the accepted sketch.  This is a
`sketch/interface defect`, not step-local work and not evidence that the idea
or theorem contract is impossible.

## Attempted Theorem Claim

There should exist universal numerical choices of
`C_rank,C_burn,C_cert,C_rep > 0` such that, uniformly over all deterministic
base triples and parameters satisfying the eight primitive assumptions in
`setting.md`, the following nested conclusion holds.

1. With probability at least `1-delta_sm` over the once-drawn smoothed
   instance, all realized factor columns retain norm at least
   `(2kappa_0)^(-1)`, `q_real<=q_*=1/4096`, `Gamma<=1.01`, and every cyclic
   Khatri-Rao Gram has minimum eigenvalue at least `1-q_*^2`.
2. Conditional on any such fixed instance, one SC-JEP-ALS run with
   `k=ceil(C_rank r^(5/3)(log r)^(5/2))` has universal positive probability
   of covering all targets, certifying useful same-state proposals within
   `O(log r)` sweeps, rejecting all high-support fixed states by the observable
   score rule, and producing exactly one observable cluster per component.
3. The observable best-scalar active initialization admits the exact target
   projection `bar P_M=G_M B_M+N_M`, with dual row/column error `O(omega)` and
   every perpendicular column at most `tau_r`.  One actual cyclic ALS entry
   sweep has all three ordinary active inverses, charges collective
   perpendicular pair-Gram error by
   ```
   beta_perp=2(1+q_*)(1+48omega)^2 tau_r^2+r tau_r^4,
   ```
   maps every updated mode exactly into its realized target span, and ends
   with `||e^1||_Q<rho_ALS/3`, where
   `omega=q_*^2+r tau_r` and `rho_ALS=1/1024`.
4. From that generated target-span entry, later cyclic ALS sweeps should
   contract by a factor below `1/4`, reach original relative Frobenius error
   `epsilon` after
   `1+O(log(1/epsilon))` total active sweeps, and preserve frozen inactive
   zeros.  Independent complete-run restarts should raise conditional success
   to at least `1-delta_init` without increasing `k`, with total runtime
   polynomial in
   `n,r,k,kappa_0,rho^(-1),log(1/epsilon),log(1/delta_init)`.

The theorem is conditional because its base-scale, cumulative-Gram,
near-balanced-weight, smoothing, dimension, and algorithm restrictions are
primitive.  All realized events, proposal charts, support classes, cluster
membership, target projection, first-sweep inverses, target-span entry, basin
membership, and contraction properties must be derived.

The deterministic orthogonal equal-weight specialization is part of the
contract.  Algebraically setting perturbations to zero gives
`(A+,B+,C+)=(BC,AC,AB)`, `R+<=R^2`, and `S+<=RS`; an exact component state has
zero certificate and first-sweep errors, active ALS fixes the exact CP
representation, and the residual may tend to zero with `epsilon`.  This is
not a probability assertion at `rho=0`.

## Whole-Proof Draft

### Block G1: smoothed-instance geometry

Expand each normalized perturbed inner product into its linear directional,
quadratic, and normalization pieces.  On a single finite Gaussian event their
row-level scales must be bounded separately by

```
C kappa_0 rho sqrt(log(9r^2/delta_sm)/n),
C kappa_0^2 rho^2 sqrt(log(9r^2/delta_sm)/n),
C kappa_0^2 rho^2.
```

The primitive smoothing margins and base slack then give the norm floor,
`q_real<=q_*`, and `Gamma<=1.01`.  For a pair of realized mode Grams,

```
sum_(ell!=j)|H_(M',jell)H_(M'',jell)|
 <= ||H_(M')-I||_(row,1)||H_(M'')-I||_(row,1)
 <= q_*^2.
```

Gershgorin yields the target pair-Gram floor `1-q_*^2`.  This is the positive
conditioning source later used by both the first-sweep and target-span
inverse arguments.

### Block G2: rare windows and all-target coverage

Condition on G1.  A target absolute Gaussian coordinate in
`[t_r,t_r+t_r^(-1)]`, `t_r^2=(10/9)log r`, has mass comparable to
`r^(-5/9)(log r)^(-1/2)`.  Independence across modes gives the three-window
factor `r^(-5/3)(log r)^(-3/2)`.  Conditional Gaussian regression bounds each
competitor mean by `q_*(t_r+t_r^(-1))`; the shifted product-tail union at
threshold `(19/18)log r` leaves universal lower and upper comparison
constants.  Thus `p_win=Theta(r^(-5/3)(log r)^(-3/2))`.  Slot independence,
not cross-target independence inside a slot, gives

```
Pr(E_cov^c|E_sm)<=r exp(-k p_win)<=r^(-7)
```

once `C_rank` makes `k p_win>=8log r`.  A finite-small-`r` adjustment gives
the claimed universal positive one-run probability.

### Block G3: old-state Jacobi chart and observable certification

For a covered target the window gives `R_0<=19/20` and `S_0<=rR_0`.  Direct
old-state expansion gives the binding recurrences

```
R_(t+1)<=((Gamma R_t+q_real)/(1-Gamma q_real R_t))^2,
S_(t+1)<=((Gamma R_t+q_real)(Gamma(1+q_real)S_t+q_real))
          /(1-Gamma q_real R_t)^2.
```

The entry denominator is at least `31/32`.  Finite interval arithmetic and
the declared burn horizon produce `R_tb<=6.0e-8`, `S_tb<=q_*/16`, and the
true-dual mass `a_tb<=1/1024`.  The ambient conversion
`||h_M-sign(g_(M,j))||_2<=2a(h)+4q_*` enters the closed chart with
`a_chart=1/512`, `chi_chart=1/128`.  On that chart,

```
a(J(h))<=2(q_*+2a(h)^2)<=1/1024,
Lip(J|C_j)<=16(q_*+a_chart+chi_chart)<1/4.
```

The map is therefore a self-contraction, and consecutive projective
displacements obey `zeta_t<=3(1/4)^(t-tb)`.  The explicit certification
horizon makes `zeta<=tau_r=q_*^2/(10^4r)` before the state is stored.  Zero
contractions remain unsuccessful branches.

### Block G4: same-state equation and all-certified support ledger

For every certified state and mode, before filtering or target labels,
projective stationarity and multilinearity give

```
P_M^raw D_M=G_M K_M^raw Sigma_M+R_M^raw,
||R_M^raw(:,a)||_2<=D_M(a,a)tau_r,
```

where all pair coefficients use the same stored state.  With
`H_M=G_M^TG_M=I+F_M`, dual coefficients `c_M`, and
`tilde x_M=c_M/||c_M||_2`, the exact normalized vector equation is

```
hat_alpha_M tilde x_M
 =diag(mu)(tilde x_(M') circ tilde x_(M'')+g_M)+r_M,
||g_M||_1<=2q_*+q_*^2,  ||r_M||_2<2tau_r.
```

The coefficient-normalization remainder is at most `5q_*^2`; the only
finite-support residual conversion is `2sqrt(r)tau_r`.  Hence
`eta_0=eta_G+eta_N+eta_C<4.89e-4`.  The retained floor
`vartheta_*>1/16`, denominator
`d_0<=16eta_0`, three-mode ratio cancellation, and unit-norm renormalization
must yield the advertised `144eta_0` weighted profile.  Every non-LOW state
then has either a singleton core with tail below
`a_cert=7q_*+8tau_r`, or a core of size at least two with tail score below
`16eta_0`; empty and threshold-straddling states are LOW.  All defects are
charged once, and a finite `q=0` transient keeps its certificate residual.

### Block G5: score separation, graph clustering, and signs

For an exact orthogonal weighted support `I`,

```
x_(M,i)^2=kappa_I^2 mu_i^(-2),
|theta|=lambda_min kappa_I,
kappa_I=(sum_(i in I)mu_i^(-2))^(-1/2).
```

The G4 ledger perturbs singleton scores into
`[s_-lambda_j,s_+lambda_j]` and bounds every core of size at least two by
`s_mix lambda_max`, with
`1.01s_mix<0.794<0.85s_-` and
`s_-/(1.01s_+)>0.901`.  Thus covered singleton witnesses pass the actual
`0.85sigma_max` rule while LOW and multi-support states fail it.  Singleton
tail and Gram bounds put same-target states above the graph edge threshold
and distinct targets below `1/32`, producing exactly `r` components.  The
retained score is bounded away from zero, so certificate signs equal
`sign(theta)`.  Absorbing the raw third-mode sign and a product-one target
orientation preserves every initialized rank-one tensor and produces the
barred same-state equation consumed next.

### Block G6: selected dual row/column small gain

After the proof permutation, write
`B_M=L_M^T bar P_M=A_M+E_M`.  The off-diagonal exact equation is

```
(E_M)_(ell j)D_M(j,j)/lambda_j
 =(lambda_ell/lambda_j)
  (H_(M')B_(M'))_(ell j)(H_(M'')B_(M''))_(ell j)
  +(L_M^T bar R_M)_(ell j)/lambda_j.
```

The G5 chart gives `chi<1/256`; every dual residual entry is at most
`2tau_r`.  Therefore

```
chi<=4(q_*+2chi+2q_*^2)^2+4r tau_r.
```

The upstream chart excludes the large root and yields `chi<=32omega`,
`omega=q_*^2+r tau_r`.  Summing the residual entrywise separately over rows
and columns costs `2r tau_r` in either induced norm, not `r^2tau_r`.  With
column closure already available, the row recurrence

```
eta_row<=4(q_*+2chi+2q_*^2)
             (q_*+2eta_row+2q_*^2)+4r tau_r
```

has self coefficient below `1/8`, hence `eta_row<=128omega` and the companion
column bound is at most `64omega`.

### Block G7: best scalar and exact target-projector entry

Relative amplitude coordinates and the product-one gauge turn G6 into

```
|bar theta_j/lambda_j-1|<=64omega,
max_M||bar p_(M,j)-g_(M,j)||_2<=64omega,
||e_best||_Q<=512omega.
```

The same realized tensor norm satisfies
`r lambda_min^2(1-q_*^2)<=||T||_F^2<=r lambda_max^2(1+q_*^2)`, so the scalar,
one-direction, pair, and cubic defect classes also give original relative
Frobenius error at most `512omega`.  More importantly for attempt 9, the
orthogonal target projector yields the exact decomposition

```
bar P_M=G_M B_M+N_M,
G_M^T N_M=0,
max(||B_M-I||_(row,1),||B_M-I||_(col,1))<=48omega,
max_j||N_M(:,j)||_2<=tau_r.
```

These are current-sketch outputs to be reproved by `step_007`; no stale
attempt-8 proof is used as authority.

### Block G8: collective pair-Gram audit and one actual entry sweep

Set `F_M=N_M^TN_M` and `H_M^par=B_M^TH_MB_M`.  Orthogonality gives exactly
`bar P_M^Tbar P_M=H_M^par+F_M`.  For held modes, every pair-Gram term
containing a perpendicular factor is

```
H_(M')^par circ F_(M'')
 +F_(M') circ H_(M'')^par
 +F_(M') circ F_(M'').
```

Because `max_ij|F_M(i,j)|<=tau_r^2` and each row/column has `r` entries,

```
beta_perp
 =2(1+q_*)(1+48omega)^2 tau_r^2+r tau_r^4
 <10^(-8)omega.
```

The normalized target-to-held cross Gram and held pair Gram are respectively

```
C_pair=(H_(M')B_(M')) circ (H_(M'')B_(M'')),
J_pair=(H_(M')^par+F_(M')) circ (H_(M'')^par+F_(M'')).
```

Keeping all diagonal amplitude factors, the current-sketch interfaces are
`||Delta_cross||_rc<=96omega` and
`||Delta_pair||_rc<=192omega+2beta_perp<1/512` at the first solve, with
mode-specific successors below the same inverse threshold.  The target floor
then keeps all three ordinary active inverses above `31/32` after normalized
conjugation.  The exact coefficient transfer is

```
Z_M=diag(lambda) C_pair J_pair^(-1)R^(-2)D_lambda^(-2),
||D_lambda^(-1)Z_M-I||_rc
 <=8Gamma^2(||Delta_cross||_rc+||Delta_pair||_rc)
    +4||alpha||_infty.
```

Sequentially retaining the already updated mode gives

```
e_U<=3072eta,
e_V<=3072eta+e_U/8<=3456eta,
e_W<=3072eta+(e_U+e_V)/8<4096eta,
eta=omega+beta_perp.
```

Finally, the exact unfolding
`T_(M)=G_M diag(lambda)(G_(M'') odot G_(M'))^T` makes every nonsingular
mode solve equal to `G_MZ_M`.  Thus `N_U`, then `N_V`, then `N_W` becomes
exactly zero without changing the algorithm.  After one product-preserving
rebalance, the completed sweep exports

```
N_U^+=N_V^+=N_W^+=0,
||e^1||_Q<=4096(omega+beta_perp)<rho_ALS/3.
```

This is a finite, same-target entry bridge.  The unknown-sign collective
defects are charged once and disappear mode by mode; the dangerous
`r t^4` construction remains excluded only because the proved entry has
`t=tau_r`, not because a max-column tube was assumed safe.

### Block G9: target-span contraction attempt and interface failure

On the generated domain

```
T_parallel(rho_ALS)
 ={e:||e||_Q<=rho_ALS and
      (I-G_MH_M^(-1)G_M^T)P_M=0 for every M},
```

every factor has the form `P_M=G_MB_M`; exact unfoldings preserve this
property.  The complete pair Grams are now controlled by the dual row/column
fields, with no hidden `F_M` term.  The target pair floor and a `1/32`
perturbation give normalized inverse floor `31/32`.  Dual contraction of a
zero CP differential identifies the kernel with componentwise scaling, and
the quotient-to-Frobenius comparison has constant below 9.  These are
adequate sources for a target-span local analysis.

The accepted sketch then states the single-mode inequality displayed in the
Status section and infers a `3/16` cyclic bound.  That transition is not a
well-defined proof interface.  If `Phi_M` returns the full state after
updating mode `M`, choose two target-span tube states that differ only in a
held mode.  That held block is unchanged by the raw block solve, so the
full-state quotient distance does not contract by a coefficient below one.
If `Phi_M` returns only the newly solved block, `||.||_Q` has not been defined
on that coordinate output, and the sketch does not state the needed
Gauss--Seidel relations, for example

```
d_U^+ <= L max(d_V,d_W),
d_V^+ <= L max(d_U^+,d_W),
d_W^+ <= L max(d_U^+,d_V^+),
```

nor how the single final product-one rebalance changes their cyclic assembly.
Writing these coordinate interfaces, or replacing them by a direct full-sweep
estimate, is necessary before `E_basin_parallel` can be exported.  The
target-span source fixes the attempt-8 perpendicular obstruction but does not
by itself fix this distinct block-map notation and composition defect.

### Block G10: stopping, restarts, and assembly are presently conditional

If G9 supplied a valid full-sweep recurrence
`||e^(s+1)||_Q<=(1/4)||e^s||_Q` for `s>=1`, zero additive forcing and G8 entry
would preserve the target-span tube and give geometric budget
`sum_(s>=1)||e^s||_Q<=(4/3)||e^1||_Q`.  The residual comparison would then
make

```
m>=1+ceil(log(8kappa_0^2/epsilon)/log4)
```

total active sweeps sufficient.  With one-run success `p_0>=1/2`, independent
full-run proposals would give failure at most `(1-p_0)^J`, and the first entry
sweep plus later solves would fit the displayed polynomial operation count.
Because G9 has no valid exported contraction interface, these conclusions
remain conditional and cannot currently assemble the theorem.

### Block G11: exact orthogonal baseline

At the deterministic orthogonal equal-weight specialization the Jacobi map
squares the ratios.  At an exact component state, `B_M=I`, `N_M=0`,
`beta_perp=0`, every first-sweep cross and pair Gram equals the identity, and
the exact mode solves are stationary.  Thus the certificate, first-sweep,
and active residuals are zero and arbitrary positive `epsilon` remains
possible.  Finite orthogonal transients retain their certificate and
first-sweep perpendicular charges until the corresponding updates.  This
preserves the original baseline conclusion and does not repair the G9
neighborhood-interface defect by appeal to stationarity at one point.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| --- | --- | --- | --- | --- | --- |
| G1 | Realized geometry and pair floors | `step_001` | Primitive static controls | Five static `assump:*` ids | Prove concentration/normalization constants and finite union. |
| G2 | Window rate and coverage | `step_002`,`step_003` | `E_sm` | Rank and proposal independence primitives | Prove shifted product tails and finite-small-r bridge. |
| G3 | Jacobi chart and certification | `step_004` | `E_sm,E_cov` | No generated premise | Prove recurrences, self-map, derivative, and horizons. |
| G4 | Same-state equation and global ledger | `step_004b` | `E_cert,E_sm` | No label/chart premise for all-certified ledger | Prove vector/scalar/residual ledger and all support branches. |
| G5 | Filter, clusters, signs | `step_005` | G4 plus coverage witness | No new theorem premise | Prove weighted score and graph margins. |
| G6 | Selected dual small gain | `step_006` | G4/G5 outputs | No new theorem premise | Prove root selection, per-entry transfer, row absorption. |
| G7 | Best-scalar/projector entry | `step_007` | G5/G6 outputs | Relative scale primitives only | Prove quotient/Frobenius transfer and exact `B+N` fields. |
| G8 | Collective first-sweep bridge | `step_007b` | `E_sm,E_best,E_quotient` | No perpendicular incoherence assumption | Prove `beta_perp`, all intermediate inverses, sequential envelopes, exact span entry. |
| G9 | Invariant target-span contraction | `step_008` | `E_sm,E_parallel_entry` | No basin assumption | **Sketch/interface defect:** define coordinate/full-state maps and a valid cyclic composition through gauge. |
| G10 | Accuracy, confidence, runtime | `step_009`,`step_010`, assembly | `E_basin_parallel,E_cov` | Accuracy/confidence and independence primitives | Blocked by missing G9 export; later rate proof otherwise localized. |
| G11 | Exact baseline | `step_011`, assembly specialization | Direct exact maps plus G8/G9 target identities | Deterministic limiting specialization | Exact stationary trace is available; final neighborhood conclusion still depends on repaired G9. |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| --- | --- | --- | --- | --- |
| `step_001` | G1 | Produces `E_sm` for G2,G3,G8,G9 | Static Gaussian/normalization/Gram/KR proof | Current attempt-9 obligation; stale proof not consumed. |
| `step_002` | G2 | `E_sm -> E_win` | Two-sided rare-window and competitor-tail proof | Current attempt-9 obligation. |
| `step_003` | G2 | `E_win -> E_cov,p_0` | Slot miss/coupon and rank specialization | No cross-target independence needed. |
| `step_004` | G3 | `E_sm,E_cov -> E_cert` | Recurrences, chart self-map, displacement decay | First old-state update explicit. |
| `step_004b` | G4 | `E_cert -> E_cert_eq,E_cert_tail` | Same-state signs, vector ledger, profile/tails | Global ledger precedes labels. |
| `step_005` | G5 | G4 -> `E_support_wt,E_cluster,E_gauge` | Weighted classifier, graph, sign gauge | Covers LOW/multi/straddle/negative/zero branches. |
| `step_006` | G6 | Selected G4/G5 -> `E_col,E_row` | Small root, exact residual, row/column absorption | Column closure precedes row. |
| `step_007` | G7 | G6 -> `E_best,E_quotient` | Best scalar, quotient norm, exact target projector | Must reprove `B+N`; no stale acceptance used. |
| `step_007b` | G8 | G1/G7 -> `E_pair_entry,E_parallel_entry` | Collective pair Gram, amplitudes, three inverses, range trace | New attempt-9 bridge is coherent at diagnostic granularity. |
| `step_008` | G9 | G1/G8 -> intended `E_basin_parallel` | Kernel/inverse plus a well-defined full-sweep contraction | Current `Phi_M` interface is ambiguous and one reading is false. |
| `step_009` | G10 | Intended G8/G9 -> `E_stop` | First-sweep offset and residual conversion | Cannot consume `E_basin_parallel` yet. |
| `step_010` | G10 | `E_cov,E_stop -> E_restart` | Nested restart probability and operation count | Conditional on repaired G9/G10 dependency. |
| `step_011` | G11 | Exact specialization of G3,G8,G9 | Stationary/finite-transient distinction | Baseline itself remains source-adequate. |

## Dependency And Assumption Audit

The theorem-facing primitive conditions are exactly the eight stable ids in
`setting.md`: `assump:base-scale`, `assump:cumulative-gram`,
`assump:base-weight-balance`, `assump:gaussian-smoothing`,
`assump:smoothing-margin`, `assump:subquadratic-rank`,
`assump:random-initialization`, and `assump:accuracy-confidence`.  The
attempted theorem does not promote any realized event or trajectory property
to a primitive assumption.

| Condition | Provenance class | Current producer | First consumer | Audit result |
| --- | --- | --- | --- | --- |
| Realized norms, Gram rows, weights, target pair floors | derived static event | `step_001` | `step_002`,`step_004`,`step_007b`,`step_008` | Legal forward dependency. |
| Window probability and all-target coverage | derived event | `step_002`,`step_003` | `step_004`,`step_005`,`step_010` | Legal conditional-on-instance flow. |
| Ratio invariant, chart, certificate | derived finite-horizon trajectory controls | `step_004` | `step_004b` | Recurrence and self-map precede use. |
| Same-state equation and no-label ledger | derived per-state controls | `step_004b` | `step_005`,`step_006` | Produced before filtering/labels. |
| Weighted support, clusters, signs | derived structural controls | `step_005` | `step_006`,`step_007` | Strict margins are producer outputs. |
| Selected dual row/column fields | derived finite algebraic controls | `step_006` | `step_007` | Column root precedes row absorption. |
| Best-scalar quotient and `B+N` decomposition | derived entry controls | `step_007` | `step_007b` | Current attempt must reprove them; stale step artifacts are not dependencies. |
| Collective pair control and exact target-span entry | derived one-sweep controls | `step_007b` | `step_008`,`step_009` | Legal producer and exact same-target bridge. |
| Invariant target-span contraction | intended derived all-sweep control | `step_008` | `step_009` | **Missing valid interface:** the single-block map/codomain and cyclic recurrence are not defined. |
| Stopping and restart success | intended derived closure | `step_009`,`step_010` | Final assembly | Structurally ordered but blocked by the preceding missing export. |

Local lemmas may condition on outputs of their current attempt-9 dependencies,
but no attempt-8 acceptance can discharge those conditions.  The deterministic
`rho=0` baseline is a declared specialization, not an additional primitive
condition.  Repairing the `Phi_M` interface does not require a new theorem
assumption; it requires changing the current sketch's contraction mechanism
statement.

## Citation And Tool Audit

| Source or tool | Current objects and role | Assumptions / mapping to discharge | Conclusion needed and convention compatibility | Affected block / Step ID | Diagnostic disposition |
| --- | --- | --- | --- | --- | --- |
| Gaussian norm/inner-product concentration | Source perturbations and normalized realized columns | Nonuniform base scales, exact `delta_sm` union, separate linear/quadratic/normalization pieces | G1 bounds in setting Euclidean/row norms with all exposed variables | G1 / `step_001` | Direct current-notation proof required. |
| Schur product and Gershgorin | Realized pair Grams | Unit diagonals and row-l1 controls | Exact target pair floor `1-q_*^2` | G1 / `step_001` | Exact convention match. |
| Conditional Gaussian regression and shifted product tails | Proposal raw coordinates | Realized covariance, independent modes, shifted means, finite-small-r case | Two-sided window probability in exact ratio coordinates | G2 / `step_002` | Direct/standard tool; full bound remains local. |
| Banach contraction theorem | Projective Jacobi map on `C_j` | Complete signed chart, self-map, derivative bound | Unique fixed point and geometric displacement in same metric | G3 / `step_004` | Valid diagnostic instantiation. |
| Cauchy-Schwarz and induced Hadamard inequalities | Vector Gram leakage, support ledger, dual row/column products | Exact row/column/spectral conventions and retained denominators | `eta_G`, finite residual charges, selected small gain | G4/G6 | Direct current-notation proof. |
| Euclidean target projector and exact CP unfolding | `bar P=GB+N`, `F=N^TN`, active mode updates | Full column rank from G1; exact setting unfolding and cyclic block order | Collective `beta_perp` and exact `G_MZ_M` range output | G7/G8 / `step_007`,`step_007b` | Source-convention and object-target match are exact. |
| Inverse resolvent and Moore--Penrose block identity | Normalized active pair Grams and frozen inactive zero block | Target floor, perturbation below threshold, inactive columns truly frozen | Three ordinary first-sweep inverses and rank-`k`/active-rank-`r` equality | G8 / `step_007b` | Direct exact linear algebra; constants remain local. |
| Uschmajew, *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation*, SIAM J. Matrix Anal. Appl. 2012, DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5 | Active exact CP objective modulo component scaling; qualitative block-Gauss--Seidel interpretation | Verify exact source labels, objective, equilibrated convention, Hessian hypothesis, block order, and conclusion mode | Qualitative quotient/local convergence only; it does not provide random entry, numeric radius, zero padding, the coordinate map, or the `1/4` rate | G9 / `step_008` | Stable identity but not a source for the missing `Phi_M` interface. Direct repair is still required. |
| Parent parallel-ALS paper | Procedure lineage for old-state proposals | No theorem hypothesis is consumed | Convention motivation only | G3 | Not proof authority. |

In particular, a citation to block Gauss--Seidel cannot turn a full one-block
state map into a contraction: held blocks remain.  A repaired sketch must
state a coordinate-output estimate and its full-sweep assembly, or state and
source a direct full-sweep estimate.

## Quantitative Dependence Audit

| Category | Exposed contract | Audit |
| --- | --- | --- |
| Structural variables | `n,r,k,kappa_0,rho`, fixed `q_*,a_*,b_*`, derived `q_real,Gamma` | Derived geometry is not hidden in assumptions; `kappa_0,rho^(-1)` have declared polynomial ranges. |
| Rank | `k=ceil(C_rank r^(5/3)(log r)^(5/2))`, `r<k<=n` | Window rate gives `kp_win=Theta(log r)`; first-sweep repair adds no slots. |
| Proposal horizons | `tau_r=q_*^2/(10^4r)`, `L_burn,L_cert=Theta(log r)` | `r tau_r=q_*^2/10^4` and `sqrt(r)tau_r<=q_*^2/10^4`; no hidden rank factor. |
| First-sweep scale | `omega=q_*^2+r tau_r`, `beta_perp=2(1+q_*)(1+48omega)^2tau_r^2+r tau_r^4` | Coherent term is exposed; `beta_perp<10^-8 omega`; sequential envelopes are `3072,3456,4096`. |
| Basin scale | `rho_ALS=1/1024`, entry `<rho_ALS/3` | Entry is one finite actual sweep; later target-span contraction is presently unsupported because its map interface is ambiguous. |
| Probability mode | `Pr(E_sm)>=1-delta_sm`; conditional proposal/restart success `>=1-delta_init` | Instance and conditional randomness stay nested; `delta_init` changes restarts, not rank. |
| Horizon mode | Static geometry; finite proposal; one finite entry sweep; intended all-sweep contraction; finite restarts | Proposal and perpendicular defects are finite-budgeted.  The all-sweep zero-forcing recurrence cannot be certified until G9 is repaired. |
| Norm mode | Euclidean/projective directions, induced row/column l1, relative-amplitude quotient norm, original relative Frobenius norm | First-sweep transfers use exact targets.  The missing coordinate codomain/seminorm in G9 is a norm-mode interface defect. |
| Accuracy | Intended `m>=1+ceil(log(8kappa_0^2/epsilon)/log4)` | The one-sweep offset is explicit, but the `4^(-(m-1))` rate has no valid producer yet. |
| Runtime/confidence | Polynomial listed variables and `J=O(log(1/delta_init))` | First-sweep work is counted.  Final specialization is conditional on a repaired contraction producer. |
| Hidden constants | Universal numerical constants and declared finite regime exponents only | May not absorb `r`, confidence, base triple, or a generated condition number. |

A future public Rate Specialization Bridge must verify the window/coupon
choice, burn/certification horizons, `beta_perp` domination, all three entry
inverses, `4096(omega+beta_perp)<rho_ALS/3`, the repaired cyclic contraction,
the one-sweep stopping offset, and restart conversion.  Until the cyclic map
is defined, no valid bridge may state the `1/4` or stopping rate.  The exact
orthogonal stationary reduction remains valid independently and cannot be
replaced by a finite `tau_r` floor.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | Static geometry/nondegeneracy | One smoothing draw | Separate linear, quadratic, normalization bounds; pair row mass `<=q_*^2` | Base norm/Gram/weight slack plus Gaussian concentration | Four finite static error classes and union tails | Finite union, no trajectory accumulation | Structural lower/upper comparison | Five primitive static ids; deterministic `rho=0` only as baseline | Norm lower and Gershgorin supply positive content | Produced realized factors are exactly all consumed targets | `step-local` | Primitive -> `step_001` -> consumers | Orthogonal zero-perturbation entry has exact floor | Each error is below its own margin; pair floor `1-q_*^2` | Static assumptions | None before production | Singular floor excluded by margins | Without it, duals and active inverses may fail. |
| `E_win,E_cov` | Probabilistic activation/rank rate | Fixed good instance, finite `k` slots | `p_win=Theta(r^-5/3(log r)^-3/2)`; miss `<=exp(-kp_win)` | Three target windows and slot independence | Shifted pair tails and finite misses | Finite tail/coupon union | Stopping/conditioning plus structural probability comparison | Initialization primitive and `E_sm`; labels proof-only | Window lower tail and threshold have exact event content | Raw coordinates are the G3 ratio coordinates | `step-local` | `E_sm -> step_002 -> step_003` | First state has finite target denominator; miss is run failure | `kp_win>=8log r` | Rank/independence | `E_sm,E_win` | Allowed Gram boundary only shifts means as charged | No coverage source for stated rank. |
| `E_RS,E_chart,E_cert` | Finite-horizon recurrence and certification | Every covered proposal through burn/certification | Binding `R,S,a` recurrences; self-map; `zeta_t<=3*4^-(t-tb)` | Target coefficient, denominator, chart derivative `<1/4` | Persistent `q_real`, weight imbalance, initial mass | Persistent forcing bounded on finite horizon; displacement contractive | Dissipative recurrence and self-contraction | `E_sm,E_win`; zero contractions are run failure | Positive target/denominator source matches claim | Same realized target metric from entry to certificate | `step-local` | Coverage -> recurrence -> chart -> certificate | First old-state update has denominator `>=31/32`; q-zero map squares | Burn controls mass; cert horizon dominates `tau_r` | Proposal primitives | `E_sm,E_cov` | `R_0=19/20`, `Gamma=1.01`, `q=q_*` retain slack | Undefined or circular certification. |
| `E_cert_eq,E_cert_tail` | Same-state algebraic/support producer | Once per certified slot, before labels | `PD=GK Sigma+R`; normalized vector equation; `eta_G,eta_N,eta_C` ledger | Nonzero contraction and retained coordinate floor | Gram first/cross terms, scalar remainder, unknown-sign residual | Each charged once; l2-to-l1 is `2sqrt(r)tau_r` | Algebraic coupling and structural comparison | `E_cert,E_sm`; `d=0` excluded | Score gate and floor provide needed denominator content | State compared with its own contraction; target transfer deferred | `step-local` | `step_004 -> step_004b -> consumers` | q-zero transient keeps `R`; stationary has `R=0`; straddling tested | `eta_0<4.89e-4`, `d_0<=16eta_0`, profile/tail margins | `q_*,tau_r,Gamma` | `E_cert` | Unequal multi-support and LOW branches explicit | Classifier would lack legal source. |
| `E_support_wt,E_cluster,E_gauge` | Structural score/graph/sign control | Finite all-certified pool | Singleton interval, multi upper score, same/cross graph gaps | Exact weighted support score and strict margins | Ledger tails, Gram leakage, weight ratio, signs | Finite filter/graph, no iteration | Structural lower/upper comparison and algebraic coupling | G4, `E_sm,E_cov`; zero theta rejected | Component lower and mixture upper sources match filter claim | Retained/barred terms are same realized tensor under signs | `step-local` | Ledger before classifier; coverage only supplies witnesses | Exact unequal two-support, negative/zero theta, ties tested | `1.01s_mix<0.794<0.85s_-`; graph gaps strict | Algorithm thresholds | G4/coverage | Exact component retained; multi fixed points rejected | Wrong clusters/representatives. |
| `E_col,E_row` | Selected target-dual small gain | Finite selected `r` states | Column quadratic; per-entry `2tau`; row recurrence with self coefficient `<1/8` | Diagonal coefficient and `D/lambda>=31/32` | Pair leakage, diagonal error, unknown-sign residual | Residual summed once per row/column; finite absorption | Algebraic coupling and local absorption | G5 plus same-state equation and dual floor | Positive denominator selects small root | Exact `L^TR/lambda` target-dual residual, scale `omega` | `step-local` | G5 -> column -> residual -> row | q-zero transient gives `O(rtau)`; stationary zero | Large root excluded by `chi<1/256`; row `<=128omega` | `q_*,tau_r` | G4/G5 | Adversarial signs handled absolutely | O(q) or r^2 tau entry error. |
| `E_best,E_quotient,B+N` | Same-target entry and projector decomposition | One selected initialization | Direction/scalar/relative amplitude `O(omega)`; `bar P=GB+N`, `G^TN=0`, columns `N<=tau_r` | Target norm floor, product-one gauge, exact projector | Scalar/direction/pair/cubic errors and perpendicular residual | One finite expansion | Structural comparison and algebraic coupling | G6/G5/G1; zero score excluded | Norm floor gives correct target scale | Actual initialization to same realized CP quotient/Frobenius target | `step-local` | G6 before G7; no basin assumption | Exact component has `B=I,N=0` | `512omega<rho_ALS/4`; row/col B error `<=48omega` | Base/weight scales | G5/G6 | Extreme kappa cancels relatively | Small tensor error need not imply pair conditioning without `B+N`. |
| `E_pair_entry,E_parallel_entry` | Collective first-sweep inverses and generated span entry | Exactly one cyclic U,V,W sweep | `beta_perp=2(1+q)(1+48omega)^2tau^2+r tau^4`; resolvent envelopes `3072,3456,4096`; `N_M^+=0` | Target pair floor, simultaneous B row/col bounds, exact unfolding range | Amplitude/coefficient errors, two mixed tau^2 terms, coherent `r tau^4` term | Unknown-sign defects bounded absolutely once; disappear mode by mode; no later perpendicular accumulation | Structural comparison, algebraic coupling, projection/range maintenance | G1/G7; singular inverse boundary excluded by floor | Pair floor supplies positivity; exact unfolding supplies genuine range source | Held Grams and outputs are exact setting ALS objects; no projection surrogate | `step-local` | G7 -> `step_007b` -> G9; span not assumed for first U solve | Archived fixed-t construction fails; actual `t=tau_r`; exact target stationary | Pair perturbation `<1/512`; entry `4096(omega+beta)<rho/3` | Static/procedure scale | `E_sm,E_best,E_quotient` | Finite q-zero transient charged; exact target beta=0 | First solve singular or perpendicular mixing persists. |
| `E_basin_parallel` and cyclic contraction | All-sweep invariant/convergence | All sweeps after generated entry | Intended per-mode `Phi_M` inequality and cyclic `3/16` bound | Target-span pair floor, quotient kernel, exact range invariance | Target-span coefficient/amplitude/inverse/gauge defects; perpendicular forcing zero | Intended zero-forcing geometric recurrence, but local map/codomain is undefined | Intended self-contraction | G8/G1 provide entry and positivity; arbitrary full tube excluded | Sources are adequate for a local analysis but not for the stated full/coordinate map inequality | Same target and quotient metric, but coordinate residual-to-full-cycle transfer is missing | `sketch/interface defect` | Entry is noncircular; contraction producer itself is incomplete | Full one-block interpretation fails on states differing only in a held block | Must define coordinate maps and sequential recurrence or direct full-sweep estimate; absent | `rho_ALS,q_*` | `E_parallel_entry,E_sm` | Exact target is stationary, but center stationarity does not imply neighborhood contraction | `E_basin_parallel` cannot be exported. |
| `E_stop,E_restart` | Accuracy/confidence/runtime closure | Finite stopping and restarts | Intended `8kappa_0^2 4^-(m-1)`; `(1-p_0)^J` | Valid cyclic contraction and independent trials | Initial error and run failure | Intended geometric/summable sweep error and finite failure product | Self-contraction plus stopping/conditioning | G9 and coverage; G9 currently missing | Restart source is adequate only after per-run convergence exists | Original rank-k Frobenius residual | `sketch/interface defect` (inherited from G9) | Structural order legal, but producer output unavailable | Exact target stops immediately; general entry cannot yet be iterated | One-sweep offset and J inequalities are stated but contraction term unsupported | Accuracy/confidence primitives | Intended G9 output | Every epsilon/delta finite if recurrence repaired | Final theorem/rate cannot assemble. |
| Orthogonal baseline | Exact/noiseless preservation | Deterministic specialization and stationary trace | Ratio squaring; `B=I,N=0,beta=0`; exact active fixed point | Exact diagonal coefficients and identity pair Grams | Finite transient only; stationary defect zero | No stationary accumulation | Self-contraction and algebraic coupling | Direct exact substitution; no rho-zero probability claim | Exact source has needed lower/sign content | Produced/consumed tensor equality | `step-local` | Direct baseline path independent of noisy closure | First update stationary at exact component; finite transient charged | Exact zero certificate/entry/ALS residual | Orthogonal/equal-weight specialization | Exact map | Multi-support score branch remains distinct | A tau-floor surrogate would violate baseline. |

The `E_basin_parallel` row is non-`step-local`; by contract it forces
`Status = SKETCH_BLOCKED`.  The otherwise concrete first-sweep row cannot be
used to skip the missing cyclic coordinate-to-full-state interface.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | G1 / `step_001` | Primitive base/smoothing margins | Linear, quadratic, normalization, norm-tail, union classes controlled | Exact realized factors consumed | Separate margins; Schur/Gershgorin floor | `q_*`, `1.01`, norm floor | G2,G3,G8,G9 | Valid diagnostic interface; local proof pending. |
| `E_win,E_cov` | G2 / `step_002,003` | Raw Gaussians, `E_sm`, `k`, slot independence | Shifted products and finite misses; within-slot target dependence unnecessary | Exact initial ratio coordinates | Tail comparison and `r exp(-kp)` | `a_*,b_*`, `C_rank` | G3,G5,G10 | Valid. |
| `E_chart,E_cert` | G3 / `step_004` | `R_0,S_0,E_sm`, old-state formulas | Persistent q on finite horizon; displacement geometric | Stored state itself vs same-state look-ahead | Recurrence invariant, self-map, `Lip<1/4` | Denominator/chart/horizon margins | G4,G5 | Valid concrete interface. |
| `E_cert_eq,E_cert_tail` | G4 / `step_004b` | Certified state, exact pair coefficients, Gram/scalar/residual controls | `eta_G,eta_N,eta_C`; all support boundary classes | Same state/basis; target transfer deferred | Retained denominator, ratio cancellation, finite tails | Score gate, `vartheta_*`, numerical reserves | G5,G6 | Feasible under unchanged step. |
| `E_support_wt,E_cluster,E_gauge` | G5 / `step_005` | Global ledger, weights, coverage witnesses, scores/inner products | Tail/profile, weight, Gram, discrete signs | Same realized targets; bars preserve tensors | Strict score and graph comparisons | `s_-,s_+,s_mix`, graph threshold | G6,G7 | Feasible. |
| `E_col,E_row` | G6 / `step_006` | Selected equation, chart small branch, dual inverse | Pair leakage, diagonal error, per-entry residual; signs uncontrolled | Exact target-dual residual; each induced sum costs `r tau` | Quadratic root and row absorption | `31/32`, `chi<1/256`, self coefficient `<1/8` | G7 | Feasible. |
| `E_best,E_quotient,B+N` | G7 / `step_007` | G5/G6 controls, target norm floor, exact projector | Four tensor classes plus explicit perpendicular columns | Actual selected initialization to exact realized target | `512omega`, `48omega`, `tau_r` entry bounds | `rho_ALS/4` and target projector | G8 | Feasible; must be reproved in attempt 9. |
| `E_pair_entry` | G8 / `step_007b` | `F=N^TN`, B row/col, amplitudes, target pair floor | Mixed tau^2 and coherent `r tau^4` separated; none uncontrolled | Exact held Khatri-Rao cross/pair Grams | `beta_perp`, `96/192` deviations, inverse resolvent | Perturbation `<1/512`, floor `31/32` | Three entry subupdates | Valid diagnostic interface. |
| `E_parallel_entry` | G8 / `step_007b` | Three valid inverses and exact unfolding range | Sequential coefficient/amplitude errors; perpendicular terms vanish | Outputs are exact setting ALS factors `G_MZ_M` | `3072/3456/4096` induction, final product-one rebalance | `4096eta<rho_ALS/3` | G9,G10 | Valid diagnostic interface. |
| `E_basin_parallel` | G9 / `step_008` | Target-span entry, pair floor, row/col quotient fields | Perpendicular class is zero; coefficient/inverse/gauge classes named | Same target, but coordinate-output to full-cycle residual transfer unspecified | Claimed per-mode `<1/16` and cyclic `<1/4` do not have a defined map interface | Target-span tube and inverse floor are insufficient to fix held-block issue | `step_009` | **Blocked:** full-state reading false; coordinate reading undefined. |
| `E_stop,E_restart` | G10 / `step_009,010` | Intended G9 contraction, coverage, independent runs | Numerical error and run failures | Original rank-k Frobenius residual | Stopping and restart inequalities | One-sweep offset, `p_0` | Final theorem | **Blocked downstream by missing `E_basin_parallel`.** |
| Baseline bridge | G11 / `step_011` | Exact orthogonal map and normal equations | Finite transient retained; stationary defects zero | Equality of exact produced/target tensors | Direct stationary substitution | Identity Grams | Public specialization | Valid and target-preserving. |

The target-span and inverse margins make G9 mathematically promising, but an
export is `valid` only when the raw controls support the exact downstream
interface.  They do not determine whether the claimed `Phi_M` output includes
held blocks, so this cannot be deferred as an ordinary step proof.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| `E_sm` | G1 / `step_001` | G2,G3,G8,G9, theorem geometry | Primitives -> `step_001` -> consumers | derived | Valid. |
| `E_win,E_cov` | G2 / `step_002,003` | G3,G5,G10 | `E_sm -> E_win -> E_cov` | derived | Valid. |
| `E_RS,E_chart,E_cert` | G3 / `step_004` | G4 and covered witness use | `E_sm,E_cov -> recurrence/chart -> certificate` | derived | Valid. |
| `E_cert_eq,E_cert_tail` | G4 / `step_004b` | G5,G6 | `E_cert,E_sm -> same-state ledger -> consumers` | derived | Valid. |
| `E_support_wt,E_cluster,E_gauge` | G5 / `step_005` | G6,G7 | G4 plus coverage -> filter/graph/sign -> consumers | derived | Valid. |
| `E_col,E_row_residual,E_row` | G6 / `step_006` | G7 | Selected equation -> column root -> residual -> row | derived | Valid. |
| `E_best,E_quotient,B+N` | G7 / `step_007` | G8 | G5/G6 -> target transfer/projector -> `step_007b` | derived | Valid current-sketch path; stale artifacts not used. |
| `E_pair_entry` | G8 / `step_007b` | Three first-sweep subupdates | `B+N,E_sm -> F,beta_perp -> Gram/inverse controls` | derived | Valid. |
| `E_parallel_entry` | G8 / `step_007b` | G9 and intended stopping | `E_pair_entry -> exact U,V,W range trace -> target-span entry` | derived | Valid. |
| `E_basin_parallel` | Intended G9 / `step_008` | `step_009` | `E_parallel_entry,E_sm -> ambiguous Phi_M interface -> intended cyclic recurrence` | derived | **Invalid export: producer mechanism interface requires sketch repair.** |
| `E_stop` | Intended G10 / `step_009` | `step_010`, final theorem | Intended `E_basin_parallel -> stopping` | derived | Blocked by missing valid producer dependency. |
| `E_restart` | Intended G10 / `step_010` | Final theorem | `E_cov,E_stop -> restart product` | derived | Structurally legal but blocked through `E_stop`. |
| Exact baseline | G11 / `step_011` | Final specialization | Direct exact maps -> stationary zero residual | derived | Valid independently. |

The new flow through `step_007b` is acyclic and target-compatible.  The first
invalid edge is inside the producer of `E_basin_parallel`; a later closure or
assembly step cannot repair that edge.

## Early Obstruction And Repair Plausibility

- **Contract screen:** Attempt 9 keeps the algorithm, primitive assumptions,
  rank, nested probability modes, original Frobenius metric, arbitrary
  accuracy, runtime goal, and baseline.  The generated target-span domain is
  reached by the actual algorithm and is not a new theorem assumption.
- **Prior obstruction screen:** The old unrestricted quotient ball allowed
  shared perpendicular columns of fixed size `t`, producing an order-one
  `r t^4` pair-Gram term.  G8 retains this negative test and charges the
  actual selected entry by `r tau_r^4`; no rank-independent max-column claim
  is reused.
- **First-sweep witness:** `G^TN=0`, the exact Gram decomposition, target pair
  floor, inverse resolvent, and exact unfolding range form a nonvacuous
  source.  At the actual entry `beta_perp<10^-8omega`; after U,V,W updates all
  perpendicular fields are exactly zero.  No population or projected
  surrogate is substituted for the setting update.
- **Entry trace:** The first U solve is checked before `N_U` vanishes, the V
  solve after only `N_U` vanishes, and the W solve after `N_U,N_V` vanish.
  Target-span membership is consumed only after the complete entry sweep.
- **Target-span source:** Once all factors are in their realized target spans,
  exact unfolding preserves that domain and eliminates the shared-perpendicular
  class.  The pair floor and quotient kernel are adequate positive sources for
  a local convergence calculation.
- **Distinct `Phi_M` obstruction:** Let two target-span tube states differ
  only in a block held during an M update.  A full one-block state map leaves
  that difference in place, so its full-state Lipschitz constant cannot be
  below `1/16`.  Calling `Phi_M` a coordinate map avoids that counterexample,
  but then the accepted sketch lacks its codomain norm, held-input dependence,
  sequential recurrence, and final gauge transfer.  This is an interface
  defect, not mere algebraic difficulty.
- **Scope screen:** G8 defects are finite and disappear.  G9 intends zero
  all-sweep forcing and a geometric budget, but that recurrence does not yet
  have a legal one-cycle producer.  Restart failure is only a finite product.
- **Baseline screen:** Exact orthogonal stationarity gives `N=0`,
  `beta_perp=0`, and zero residual.  Finite orthogonal transients remain
  charged.  Stationarity at the center does not validate the ambiguous
  neighborhood map.
- **Repair plausibility:** A same-setting repair can define, for each mode,
  the newly solved coordinate map and coordinate error seminorm, prove an
  estimate against the two held inputs, state the three Gauss--Seidel
  inequalities, and control the single final quotient rebalance.  Alternatively
  it can replace the per-mode line by a direct full-sweep estimate.  Either is
  a roadmap/interface edit in `proof_sketch.md`; neither changes the theorem
  contract.  No candidate `idea/theorem-contract defect` is found.

## Global Gaps And Hard Steps

1. **Blocking `step_008` sketch interface:** Define `Phi_M`.  If it returns
   only the updated block, define its coordinate representation and norm,
   expose dependence on held blocks, and state the sequential U/V/W estimates
   plus final gauge comparison.  If it returns the full post-block state,
   remove the false `<1/16` claim and provide a sourced direct full-sweep
   estimate.  This is a `sketch/interface defect`; smallest repair target is
   `/proof-sketch`.
2. **`step_007b` after repair (step-local):** Provisional units are an exact
   projector-Gram lemma, mixed/coherent perpendicular Hadamard bound, amplitude
   conjugation lemma, three intermediate inverse propositions, sequential
   coefficient transfer, Moore--Penrose zero-block identity, exact range
   trace, and final rebalance bridge.  Its source and boundaries are already
   concrete.
3. **Earlier steps after repair (step-local):** `step_001` needs static
   concentration/normalization; `step_002` the shifted product tail;
   `step_004` the recurrence/chart; `step_004b` the all-certified ledger;
   `step_005` the weighted classifier; `step_006` the selected small gain;
   and `step_007` the target transfer/projector decomposition.  Their
   interfaces remain unchanged but current attempt-9 proofs must be produced
   and reviewed rather than inherited from sketch 8.
4. **Downstream after repair (step-local):** `step_009` must carry the one
   entry-sweep offset through the quotient-to-Frobenius rate; `step_010` must
   count entry work and nested restarts; `step_011` must preserve exact
   stationary baseline while retaining finite transient charges.

The global draft cannot continue to step workers while item 1 remains,
because the accepted row would ask `step_008` either to prove a false
full-state contraction or to invent an unstated coordinate interface.

## Diagnostic Boundary Note

This artifact is diagnostic only.  It cannot be consumed as proof evidence,
a cited result, an assumption source, or authority to change accepted sketch
claims.  In particular, the displayed G8 derivation is an obstruction-level
mechanism audit, not an accepted proof of `step_007b`; all current attempt-9
steps require fresh proof and review after the sketch interface is repaired.

## Suggested Routing

/proof-sketch

The current sketch attempt is blocked.  A new sketch attempt must replace or
define the `Phi_M` single-block interface and expose a valid coordinate-wise
Gauss--Seidel-to-full-sweep composition, including the final quotient gauge,
while preserving the accepted `step_007b` pair-Gram and target-span entry
interfaces.
