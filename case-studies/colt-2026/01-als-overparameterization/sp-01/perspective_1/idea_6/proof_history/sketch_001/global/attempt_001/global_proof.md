# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_6`
- Global-proof attempt: 1
- Sketch attempt: 1
- Sketch retry mode: `initial`
- Reviewed `proof_sketch.md` SHA-256:
  `97ca4a325c425bd2abf3ea13d6f68be96a3d7bd182f1d939a69127a44ff97bf3`
- Reviewed `proof_sketch_review.md` SHA-256:
  `ca663c02a0b7a5975297cdf2a2244fb91c597aa2ccec8ad72ba353402c3528af`
- Reviewed `setting.md` SHA-256:
  `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Reviewed `idea.md` SHA-256:
  `5942d0cdd618f354461a74a431c97aa38c328f83dbbeb2e3c3123640161ef6cd`
- Sketch review status: `ACCEPTED`
- Sketch viability score: 8
- Sketch review retry target and mode: `None` / `none`
- Identity check: the current branch artifacts have the displayed hashes, so
  the accepted review applies to the current sketch and setting.
- Lineage note: the idea-5 artifacts named by the sketch are diagnostic
  history only. No idea-5 proof, global proof, or review is used below as
  proof evidence or as an accepted dependency.

## Status

PARTIAL_BLOCKED

The accepted sketch is coherent at theorem level, including the repaired
single-register quotient chronology. The theorem is not a complete proof:
all thirteen accepted sketch steps still require independently checked local
derivations. Every unresolved theorem-critical obligation below is classified
as `step-local`; no changed claim, dependency, assumption, output target,
generated-output flow, mechanism source, metric, rate, or theorem contract is
needed.

## Attempted Theorem Claim

Goal mode: `exact-goal mode`. Progress type: `conditional`.

There are universal constants
`C_rank,C_burn,C_cert,C_rep>0` such that the following holds uniformly over
all deterministic base triples and parameter choices satisfying the eight
primitive assumptions

`assump:base-scale`, `assump:cumulative-gram`,
`assump:base-weight-balance`, `assump:gaussian-smoothing`,
`assump:smoothing-margin`, `assump:subquadratic-rank`,
`assump:random-initialization`, and `assump:accuracy-confidence`.

Let

```text
k = ceil(C_rank r^(5/3) (log r)^(5/2)),
L_burn = ceil(C_burn log r),
L_cert = ceil(C_cert log r),
J = max{1,ceil(C_rep log(1/delta_init))}.
```

With probability at least `1-delta_sm` over the once-drawn Gaussian-smoothed
tensor, the realized factors satisfy the norm floor
`(2 kappa_0)^(-1)`, cumulative Gram bound `q_real<=q_*`, weight ratio
`Gamma<=1.01`, and all cyclic Khatri-Rao Gram floors `1-q_*^2`. The
linear directional, quadratic, and normalization perturbations are exposed
separately at their stated scales and are not hidden in constants.

Conditional on every such fixed realized tensor, SC-JEP-ALS has success
probability at least `1-delta_init` over its independent full-run proposal
randomness. It returns a rank-at-most-`k` tensor `T_hat` satisfying

```text
||T-T_hat||_F <= epsilon ||T||_F.
```

Its total runtime is polynomial in
`n,r,k,kappa_0,rho^(-1),log(1/epsilon),log(1/delta_init)`, with no hidden
dependence on the base triple, either confidence parameter, or an unlisted
generated condition number. The rank remains
`Theta(r^(5/3)(log r)^(5/2))=o(r^2)` and is independent of
`delta_init` and `epsilon`.

The conclusion includes the source-facing intermediate claims in
`setting.md`: the two-sided per-target window rate
`Theta(r^(-5/3)(log r)^(-3/2))`; universal-positive one-run all-target
coverage; the exact simultaneous `R,S` recurrences and noncircular
certification; no-label weighted clustering into exactly `r` components;
same-state row and column coefficient control; a literal first cyclic sweep
into the exact target spans; and, on that generated domain, a canonical
quotient full-sweep map

```text
Psi^q(e) = e_W = (C_U^+,C_V^+,C_W^+,s_W^+)
```

obeying

```text
d_Q(Psi^q(e),Psi^q(e')) <= ell d_Q(e,e'),
ell = 8q_*+32rho_ALS < 1/16,
rho_ALS = 1/1024.
```

The post-U and post-V product registers are chronological intermediate
values and are overwritten, not extra coordinates of the completed state.
Every refresh is a proof-only product-preserving choice of representative of
the literal ALS orbit.

Finally, the deterministic orthogonal equal-weight specialization preserves
the exact map `(A+,B+,C+)=(BC,AC,AB)`, exact CP fixed points, zero same-state
residual at a stationary representative, `s_U^+=s_V^+=s_W^+=0`, and no
positive error floor as `epsilon` tends to zero. The `rho=0` phrase is only
this deterministic algebraic specialization, not a probability claim under
`assump:gaussian-smoothing`.

## Whole-Proof Draft

### Block G1: realized geometry (`step_001`)

Condition on the deterministic base triple. Expand each normalized smoothed
column around its normalized base column. Gaussian norm and directional
concentration must bound, uniformly over all columns and pairs, the linear
directional, quadratic, and normalization contributions by their separate
scales

```text
C kappa_0 rho sqrt(log(9r^2/delta_sm)/n),
C kappa_0^2 rho^2 sqrt(log(9r^2/delta_sm)/n),
C kappa_0^2 rho^2.
```

The two inequalities in `assump:smoothing-margin`, together with the base
Gram reserve `q_*/4`, must dominate these terms after row summation and the
finite union bound. The same norm event gives
`||a_j||,||b_j||,||c_j|| >= (2kappa_0)^(-1)`. Combining norm perturbations
with `assump:base-weight-balance` gives `Gamma<=1.01`.

For held modes `M',M''`, the normalized Khatri-Rao Gram is
`H_(M') circ H_(M'')`. Its off-diagonal row mass is at most `q_*^2`, so
Gershgorin gives

```text
lambda_min(H_(M') circ H_(M'')) >= 1-q_*^2.
```

This produces `E_sm` with probability at least `1-delta_sm`. It concerns the
exact realized factors used in all later blocks and introduces no population
or surrogate object.

### Block G2: rare window probability (`step_002`)

Fix `E_sm` and a proof-only target label `j`. Gaussian regression conditions
the competitor coordinates on the target coordinate in each mode. The
conditional means are bounded by
`q_*(t_r+t_r^(-1))`. The probability that all three target absolute
coordinates lie in `[t_r,t_r+t_r^(-1)]` contributes
`Theta(r^(-5/3)(log r)^(-3/2))`; a dyadic Gaussian-product tail and the
choice `b_*=19/18` control every competing pair product without changing
that order. Finite small `r` values are absorbed into universal upper and
lower comparison constants. Thus `step_002` produces `E_win` and

```text
c_all r^(-5/3)(log r)^(-3/2)
 <= p_win <=
C_win r^(-5/3)(log r)^(-3/2).
```

The coordinates in this event are exactly those defining `R_0,S_0`; hence
`R_0<=b_*/a_*=19/20` and `S_0<=rR_0` are same-target outputs.

### Block G3: all-target coverage (`step_003`)

Proposal slots are independent, although target events within one slot need
not be. Choose `C_rank` so that `k p_win>=8log r`. For each target, the miss
probability is at most `exp(-k p_win)`; a union bound over `r` targets yields
a universal-positive all-target event, with the accepted target
`p_0>=1/2`. Labels are used only to prove coverage. The observable algorithm
will later remove them through scores and graph edges. This block produces
`E_cov` and does not place confidence dependence into `k`.

### Block G4: proposal recurrence, chart, and certification (`step_004`)

Expand all three normalized contractions from the same old state. Target
terms and off-target Gram leakage give, whenever the denominator is positive,

```text
R_(t+1) <= ((Gamma R_t+q_real)/(1-Gamma q_real R_t))^2,

S_(t+1) <=
 ((Gamma R_t+q_real)
  (Gamma(1+q_real)S_t+q_real))
 /(1-Gamma q_real R_t)^2.
```

At entry `1-Gamma q_real R_0>=31/32`. Interval arithmetic must prove this
condition persists, first obtaining `R_10<=6.0e-8`, then choosing
`L_burn` so that `S_(L_burn)<=q_*/16`. With
`L_M=G_M(G_M^T G_M)^(-1)` and the target-oriented dual mass

```text
a_t = max_(M,j) sum_(ell!=j) |(L_M^T h_(M,j)^t)_ell|,
```

the exact bridge

```text
a_(t+1) <=
 2(Gamma S_t+q_real)/(1-Gamma q_real R_t)
```

gives `a_(L_burn)<=1/1024`. Define the closed projective chart by
`a<=1/512`, positive target correlations, and modewise ambient distance at
most `1/128`. The norm conversion
`distance<=2a+4q_*`, the self-map estimate
`a(J(h))<=2(q_*+2a(h)^2)<=1/1024`, and the direct derivative bound

```text
L_chart <= 16(q_*+1/512+1/128) < 1/4
```

make this a genuine invariant Banach chart. Contraction norms lie between
`31lambda_j/32` and `33lambda_j/32`. Therefore the successive projective
displacement satisfies
`zeta_t<=3(1/4)^(t-L_burn)`. The declared `L_cert` makes this at most
`tau_r`, so the stored state itself, not its look-ahead, produces `E_cert`.

### Block G5: same-state certificate and no-label tail ledger (`step_004b`)

For every certified state and every mode, multiply the signed normalized
contraction relation by its positive norm `d_(M,a)`. Multilinearity gives the
exact same-state identity

```text
P_M^raw D_M = G_M K_M^raw Sigma_M + R_M^raw,
||R_M^raw(:,a)||_2 <= D_M(a,a) tau_r.
```

The sign diagonal acts on the right. All factors in `K_M^raw` come from the
same stored state. The later barred equation is obtained only after the
product-preserving score orientation and does not rebind the setting objects.

The global tail ledger must work for every certified state without a target
label. Write `H_M=I+F_M`, `c_M=L_M^T P_M^raw`, normalize the coefficient
vectors, and expand

```text
(H_(M')c_(M')) circ (H_(M'')c_(M''))
```

at vector level. Cauchy-Schwarz and `||F_M||_2<=q_*` give

```text
eta_G = 2q_*+q_*^2.
```

Absorbing coefficient norms into the scalar `hat alpha_M` cancels the
first-order normalization error; retain only
`eta_N=5q_*^2`. The certificate contributes once through
`eta_C=2sqrt(r)tau_r`. Thus

```text
eta_0=eta_G+eta_N+eta_C,
eta_rel=8eta_0,
0.69<=hat alpha_M<=1.03.
```

With threshold `vartheta=1/8`, the retained floor exceeds `1/16`. The
denominator chain `d_0<=16eta_0`, ratio product error `104eta_0`, and
reciprocal normalization error give the profile reserve `144eta_0`.
Consequently every non-LOW state falls into either a singleton branch with
tail below

```text
a_cert=7q_*+8tau_r<1/512,
```

or a multi-support branch with `tail_score<=16eta_0`; the explicit
threshold-straddling alternative is LOW or enters the multi-support branch.
This produces `E_cert_eq` and `E_cert_tail` before classification.

### Block G6: weighted classification, signs, and clustering (`step_005`)

Coverage provides at least one component witness. LOW states have score below
`0.7lambda_min` and are removed by the existing `0.85sigma_max` filter. In
the singleton branch, the score lies in
`[s_-lambda_j,s_+lambda_j]`, with `s_->0.953` and `s_+<1.047`.
For support size `m>=2`, the weight-normalized profile gives

```text
|theta| <= lambda_max(1/sqrt(m)+160eta_0)
        <= s_mix lambda_max,
s_mix*1.01 < 0.794.
```

The numerical inequalities

```text
0.794lambda_max < 0.802lambda_min < 0.85s_-lambda_min,
s_-/(1.01s_+) > 0.901 > 0.85
```

reject every mixture and retain every component witness. The same singleton
tail bound makes same-target states adjacent and different-target states
nonadjacent at the threshold `1-64q_*`, so the observable graph has exactly
`r` connected components.

The retained score is larger than `0.8lambda_min`, hence is nonzero. Taking
the contraction inner product in the certificate equation aligns all three
certificate signs with `sign(theta)`. Absorb a negative raw score into the
third initialized factor and then use a product-one direction orientation.
This preserves each initialized rank-one tensor and produces the barred
same-state equation, positive `bar theta=|theta|`, the proof-only target
permutation, `E_support_wt`, `E_cluster`, and `E_gauge`.

### Block G7: selected coefficient small gain (`step_006`)

In the realized target dual basis write
`bar B_M=A_M+E_M`, where `A_M` is diagonal. The same-state equation yields,
for `ell!=j`, an exact off-diagonal relation whose positive denominator obeys
`31/32<=D_M(j,j)/lambda_j<=33/32`. Let

```text
chi=max_(M,j) sum_(ell!=j) |(E_M)_(ell j)|,
omega=q_*^2+r tau_r.
```

The classifier starts the small branch with `chi<1/256`. Dual projection of
each certificate residual gives the per-entry estimate `2tau_r`, so its row
and column masses are each `2r tau_r`, not `r^2 tau_r`. The column inequality

```text
chi <= 4(q_*+2chi+2q_*^2)^2+4r tau_r
```

has small root `chi<=32omega`; the chart excludes the large root. The
corresponding column mass is at most `64omega`. With the column result already
available, the row inequality

```text
eta_row <=
4(q_*+2chi+2q_*^2)(q_*+2eta_row+2q_*^2)+4r tau_r
```

has self coefficient below `1/8`, and absorption gives
`eta_row<=128omega`. These noncircular outputs are `E_col`,
`E_row_residual`, and `E_row`.

### Block G8: best-scalar quotient transfer (`step_007`)

Use the selected product-preserving orientation and balance each active term
to equal mode norms. The coefficient bounds and unit-norm identity must give

```text
|bar theta_j/lambda_j-1| <= 64omega,
max_M ||bar p_(M,j)-g_(M,j)||_2 <= 64omega.
```

The relative cube-root bound then controls each relative mode amplitude by
`128omega`, with no `kappa_0` factor. A direct tensor expansion separates the
diagonal scalar error, one-direction errors, two-factor Gram leakage, and the
cubic remainder. Using

```text
r lambda_min^2(1-q_*^2)
 <= ||T||_F^2 <=
r lambda_max^2(1+q_*^2)
```

and the row/column controls yields

```text
||e_best||_Q <= 512omega,
||T-T_init||_F/||T||_F <= 512omega < rho_ALS/4.
```

Project each selected direction onto the exact target span:

```text
bar P_M=G_M B_M+N_M,
G_M^T N_M=0,
||B_M-I||_(row,1),||B_M-I||_(col,1)<=48omega,
max_j ||N_M(:,j)||_2<=tau_r.
```

The gauge-invariant amplitude is the one represented-product coordinate
`s_j=log(gamma_j/lambda_j)`. This produces `E_best` and `E_quotient`; it does
not yet claim that an arbitrary max-norm tube contracts.

### Block G9: collective first-sweep entry (`step_007b`)

At the actual selected initializer, define `F_M=N_M^T N_M` and
`H_M^par=B_M^T H_M B_M`. Orthogonality gives the exact identity

```text
bar P_M^T bar P_M = H_M^par+F_M.
```

For a held pair, all terms containing a perpendicular factor have induced
row and column mass at most

```text
beta_perp =
 2(1+q_*)(1+48omega)^2 tau_r^2+r tau_r^4
 < 10^(-8)omega.
```

This explicitly retains the coherent shared-perpendicular `r tau_r^4` term.
After stripping but not discarding diagonal amplitudes, direct expansions
must show

```text
||Delta_cross||_rc <= 96omega,
||Delta_pair||_rc <= 192omega+2beta_perp < 1/512.
```

The target pair floor and inverse resolvent then give an ordinary inverse
floor `31/32` at each of the three cyclic subupdates. The zero-padded rank-`k`
Moore-Penrose update is exactly the active rank-`r` inverse update plus frozen
zeros.

Using the exact unfolding

```text
T_(M)=G_M diag(lambda)(G_(M'') odot G_(M'))^T,
```

every nonsingular updated mode is exactly `G_M Z_M`. Hence the U solve removes
`N_U`, the V solve removes `N_V`, and the W solve removes `N_W`. The
amplitude-conjugated coefficient resolvent gives the sequential envelopes

```text
e_U <= 3072eta,
e_V <= 3072eta+e_U/8 <=3456eta,
e_W <= 3072eta+(e_U+e_V)/8 <4096eta,
eta=omega+beta_perp.
```

After one product-preserving full-sweep rebalance, the literal first sweep
therefore produces

```text
N_U^+=N_V^+=N_W^+=0,
||e^1||_Q <=4096(omega+beta_perp)<rho_ALS/3.
```

This is the noncircular producer `E_parallel_entry`. Perpendicular forcing is
finite during the entry sweep and is exactly zero thereafter.

### Block G10: refreshed target-span quotient contraction (`step_008`)

On the generated target-span tube, quotient positive componentwise scalings
with product one and canonically balance every represented term. This gives
the unique positive-chart state

```text
e=(C_U,C_V,C_W,s),
P_M=G_M(I+C_M),
s_j=log(gamma_j/lambda_j).
```

The sole `s` field records the represented product; it is not a modewise raw
amplitude. The metric is

```text
d_Q(e,e') = max{c_U(e,e'),c_V(e,e'),c_W(e,e'),
                  ||s-s'||_infinity},
```

where each `c_M` is the maximum of the induced row norm, induced column norm,
and realized-column Euclidean discrepancy.

For a canonical input, let `R_gamma=diag(gamma_j^(1/3))`,
`K_dir=P_(M'') odot P_(M')`, and `J=K_dir^T K_dir`. The literal block solve is

```text
X_M^+ = T_(M) K_dir J^(-1) R_gamma^(-2).
```

Multiplying its solved column norm by the two held column norms gives

```text
gamma_j^out = ||T_(M)K_dir J^(-1)(:,j)||_2.
```

Thus both the output direction and represented product depend only on the
two held directions. The incoming common product and replaced direction
cancel exactly. This formula also proves block scale equivariance: changing a
representative rescales the solved mode by the inverse product of the held
rescalings, so subsequent canonical balancing preserves the literal quotient
orbit.

Define the coordinate-output map
`U_M^q(e)=(C_M^out,s_M^out)` and then define the three full proof states

```text
e_U=(C_U^+,C_V,C_W,s_U^+),
e_V=(C_U^+,C_V^+,C_W,s_V^+),
e_W=(C_U^+,C_V^+,C_W^+,s_W^+).
```

Induction over literal U, V, W solves and scale equivariance proves that these
are canonical representatives of the corresponding literal intermediate ALS
states. Each refresh overwrites the one common product register. It performs
no algorithmic solve, projection, filter, or acceptance decision.

Target-span Hadamard perturbation below `1/32`, the target floor
`1-q_*^2`, and the resulting inverse floor `31/32` give, for held-direction
discrepancy `D_h`,

```text
||Delta C_M^out||_rc <=4(q_*+2rho_ALS)D_h,
||Delta s_M^out||_infinity <=4(q_*+2rho_ALS)D_h,
max{c_M^out,||Delta s_M^out||_infinity} <=ell D_h,
ell=8q_*+32rho_ALS<1/16.
```

Run two refreshed chronologies in parallel and let `D=d_Q(e,e')`. The U
output is at most `ell D`. The V output is at most
`ell max{c_U^+,c_W}<=ell D`. The W direction and final product output are at
most `ell max{c_U^+,c_V^+}<=ell^2D`. Intermediate full states are legal
because held directions remain at most `rho_ALS` and the solved direction and
new common register are at most `ell rho_ALS`; no intermediate full-state
contraction is asserted. Consequently

```text
Psi^q(e):=e_W,
d_Q(Psi^q(e),Psi^q(e'))
 =max{c_U^+,c_V^+,c_W^+,||s_W^+-s_W'^+||_infinity}
 <=ell D<1/16D<1/4D.
```

The exact target is fixed, every refreshed target register is zero, and exact
unfolding preserves target-span membership at each subupdate. Therefore

```text
||e^(t+1)||_Q <=ell ||e^t||_Q,
sum_(t>=1)||e^t||_Q <(16/15)||e^1||_Q.
```

There is no additive all-sweep forcing: the entry perpendicular terms have
already vanished, and historical `s_U^+,s_V^+` values are overwritten. A
direct dual-basis differential calculation must also identify the Hessian
kernel exactly with product-one scaling directions. Uschmajew's cited result
supplies only the qualitative quotient/block-Gauss-Seidel interpretation;
all object identities, radii, floors, constants, and zero-padding bridges are
current-branch obligations.

Finally, the balanced-chart comparison, bounded by a constant below 9 in the
normalized target chart and conservatively by `8kappa_0^2` for stopping,
transfers this same-target quotient recurrence to the original Frobenius
residual. This produces `E_basin_parallel` and the legal full-sweep output
consumed by `step_009`.

### Block G11: stopping and original residual (`step_009`)

Count the entry sweep from G9 as sweep one. For later sweeps use the
conservative factor `1/4` even though `ell<1/16`. The same-target residual
comparison yields

```text
||T-T^(m)||_F/||T||_F
 <=8kappa_0^2 4^(-(m-1)).
```

Thus

```text
m >= 1+ceil(log(8kappa_0^2/epsilon)/log 4)
```

implies the literal SC-JEP-ALS stopping condition. Frozen inactive columns
remain zero, so the active rank-`r` proof is exactly a rank-at-most-`k`
output for the original loss. This produces `E_stop` and a finite polynomial
per-run refinement cost.

### Block G12: restart amplification and runtime (`step_010`)

Conditional on the fixed `E_sm` tensor, full runs use independent proposal
randomness. With per-run success `p_0>=1/2`,

```text
Pr(all J runs fail | E_sm) <=(1-p_0)^J<=delta_init
```

for the declared universal `C_rep`. A conservative per-run operation count is

```text
C[k(L_burn+L_cert)n^3 + kn^3 + k^2n
  +r(n^2+r^2)(1+ceil(log(8kappa_0^2/epsilon)/log 4))].
```

Multiplying by `1+C_rep log(1/delta_init)` charges unsuccessful runs,
proposal, certification, scores, graph construction, active solves, and
restarts. Selecting the smallest original Frobenius residual among successful
runs preserves the target metric and proves the runtime and conditional
confidence conclusions.

### Block G13: orthogonal equal-weight baseline (`step_011`)

Set the perturbations deterministically to zero and take orthogonal factors
with equal weights. Direct substitution gives

```text
(A+,B+,C+)=(BC,AC,AB),
R_(t+1)<=R_t^2,
S_(t+1)<=R_tS_t.
```

A finite certified transient may still have a nonzero certificate residual
and retains its first-sweep perpendicular charge. At an exact stationary
component, however, `zeta=0`, the same-state residual is zero, every exact
least-squares block returns the CP factor, every chronological refresh writes
`s=0`, and `Psi^q(0)=0`. Hence the original residual is exactly zero and the
arbitrary-accuracy conclusion has no `tau_r` or other positive floor.

### Final assembly

Intersect the static event from G1 with probability at least
`1-delta_sm`. Conditional on that fixed event, G2-G10 give a universal
positive successful full run, G11 gives the requested residual, and G12
amplifies only the conditional proposal randomness to `1-delta_init`. The
quantifiers therefore remain nested rather than merged. G13 verifies the
inherited deterministic baseline. This assembly proves the attempted theorem
provided every named step-local derivation above is independently completed
and accepted.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1 realized geometry | Static good-instance event and positive pair floors | `step_001` | Primitive base and smoothing controls | Five primitive geometry/smoothing assumptions | Concentration constants, normalization expansion, row/union bookkeeping |
| G2 rare window | Per-target proposal activation rate | `step_002` | G1 | `assump:random-initialization` | Conditional regression and two-sided product-tail calculation |
| G3 coverage | Universal-positive one-run all-target source | `step_003` | G2 | `assump:subquadratic-rank`, `assump:random-initialization` | Coupon/union arithmetic without cross-target independence |
| G4 chart/certification | Noncircular finite proposal convergence and stored-state producer | `step_004` | G1, G3 | Primitive rank/horizon procedure | Exact recurrence, interval closure, chart derivative, certificate horizon |
| G5 same-state ledger | Pre-label certificate equation and exhaustive support ledger | `step_004b` | G4, G1 | Procedure branch only | Sign placement, scalar cancellation, threshold/profile constants |
| G6 classification | Observable filtering, clustering, target permutation, sign gauge | `step_005` | G4, G5, G1 | None beyond accepted dependencies | Weighted score gap, straddling exhaustion, graph separation |
| G7 coefficient small gain | Row/column selected-state bridge | `step_006` | G5, G6, G1 | None beyond accepted dependencies | Small-root selection, per-entry transfer, row absorption |
| G8 quotient initializer | Same-target balanced initialization and perpendicular decomposition | `step_007` | G6, G7, G1 | Base weight balance already in G1 | Tensor expansion, relative-product gauge, `B+N` bounds |
| G9 first cyclic entry | Removes perpendicular fields and enters target-span tube | `step_007b` | G1, G8 | Procedure scale from `assump:base-scale` | `beta_perp`, three inverse floors, sequential resolvents, range trace |
| G10 quotient contraction | Legal refreshed full-sweep map and all-sweep recurrence | `step_008` | G1, G9 | Procedure scale from `assump:base-scale` | Scale equivariance, literal-orbit refresh identity, output Lipschitz bounds, kernel and residual comparison |
| G11 stopping | Original Frobenius accuracy after one-entry offset | `step_009` | G9, G10 | `assump:accuracy-confidence` | Residual equivalence and exact sweep count |
| G12 restart/runtime | Conditional confidence and polynomial total cost | `step_010` | G3, G11 | Randomness and confidence assumptions | Independence conversion and operation accounting |
| G13 baseline | Exact orthogonal equal-weight invariance | `step_011` | G4, G9-G11 | Deterministic limiting clause, not a new stochastic assumption | Exact finite-transient/stationary distinction and fixed-point substitution |
| Final assembly | Nested probability theorem, rank and returned-output conclusion | Direct assembly | G1-G13 | Exactly the eight primitive assumptions | Check quantifier order, no hidden dependence, and all accepted local proofs |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | G1 | Primitive producer for all geometry consumers | Normalized Gaussian concentration, three-scale split, Schur/Gershgorin floor | Produces exact realized objects |
| `step_002` | G2 | Consumes `E_sm` | Two-sided target-window and competitor-product probability | Labels are proof-only |
| `step_003` | G3 | Consumes `E_win` | `kp_win` bound and all-target miss union | Produces `p_0`; no confidence in `k` |
| `step_004` | G4 | Consumes G1/G3 | `R,S` recurrence, denominator invariant, dual-l1 chart, self-map, contraction, certification | Old-state simultaneous convention is binding |
| `step_004b` | G5 | Consumes certified stored states | Raw right-sign equation; barred wrapper; global LOW/singleton/multi/straddle ledger | No target label or post-update object |
| `step_005` | G6 | Consumes G4/G5 | Weighted classifier, score margins, graph, sign and target permutation | Existing observable filter only |
| `step_006` | G7 | Consumes G5/G6 | Column root, per-entry residual, separate induced row/column sums, row absorption | `r tau_r`, never `r^2 tau_r` |
| `step_007` | G8 | Consumes G6/G7 | Relative-product quotient transfer, tensor residual decomposition, exact projector decomposition | No unrestricted-tube contraction |
| `step_007b` | G9 | Consumes G1/G8 | Collective perpendicular Gram charge, ordinary inverses, zero-padding, exact first-sweep range | Produces, rather than assumes, target-span entry |
| `step_008` | G10 | Consumes G1/G9 | Canonical quotient, coordinate-output maps, three refresh identities, held-input estimates, full-sweep recurrence, kernel | One common `s`; only `e_W` is exported |
| `step_009` | G11 | Consumes G9/G10 | Quotient-to-original residual bridge and one-entry sweep count | Uses conservative `1/4` factor |
| `step_010` | G12 | Consumes G3/G11 | Restart product probability and complete runtime sum | Same tensor; independent full-run proposals |
| `step_011` | G13/final baseline | Consumes G4/G9-G11 | Direct exact map, stationary residual, zero refreshes, no error floor | `rho=0` is deterministic specialization only |

## Dependency And Assumption Audit

| Condition or object | Provenance classification | Producer / source | First theorem-facing consumer | Audit result |
| --- | --- | --- | --- | --- |
| Eight `assump:*` conditions | Primitive conditions | `setting.md` | G1-G4, G9-G12 as mapped above | Valid pre-run/checkable inputs; no generated trajectory fact is hidden in them |
| `E_sm` | Derived invariant/static event | `step_001` from primitive geometry/smoothing controls | `step_002` | Legal producer precedes all consumers |
| `E_win,p_win` | Derived finite-slot event/rate | `step_002` conditional on `E_sm` | `step_003` | Labels remain proof-only |
| `E_cov,p_0` | Derived finite-run coverage | `step_003` | `step_004` | No cross-target independence is assumed |
| `E_RS,E_chart,E_chart_l1,E_cert` | Derived finite-horizon trajectory controls | `step_004` | `step_004b` | Denominator and chart are proved before certification use |
| `E_cert_eq,E_cert_tail` | Derived same-state controls | `step_004b` | `step_005` | Produced for all certified states before labels/clustering |
| `E_support_wt,E_cluster,E_gauge` | Derived classifier and sign outputs | `step_005` | `step_006` | Observable decisions separated from proof-only permutation/orientation |
| `E_col,E_row_residual,E_row` | Derived selected coefficient controls | `step_006` | `step_007` | Column result precedes row absorption |
| `E_best,E_quotient` | Derived same-target initializer controls | `step_007` | `step_007b` | Exact target projector decomposition is an output, not an assumption |
| `E_pair_entry,E_parallel_entry` | Derived first-sweep controls/membership | `step_007b` | `step_008` | Target-span membership is produced before it is consumed |
| Membership in `T_parallel(rho_ALS)` | Local conditional hypothesis inside the coordinate-map lemma, then derived invariant | Entry from `step_007b`; preservation from `step_008` | Internal and `step_009` | Not a public theorem assumption; noncircular induction |
| `U_M^q,e_U,e_V,e_W,Psi^q,E_basin_parallel` | Derived quotient outputs | `step_008` | `step_009` | Legal chronological producer; one shared register |
| `E_stop` | Derived finite stopping conclusion | `step_009` | `step_010` / final assembly | Uses original loss and frozen-zero identity |
| `E_restart` | Derived confidence/runtime conclusion | `step_010` | Final assembly | Conditional probability is not merged with `delta_sm` |
| Orthogonal stationary specialization | Derived/direct baseline conclusion | `step_011` | Final assembly | Preserves exact conclusion; no finite-tolerance surrogate |

No missing derived-condition bridge is visible in the accepted roadmap. Local
lemmas may condition on their accepted dependency outputs, but the final
theorem assumes only primitive conditions.

## Citation And Tool Audit

| Source or tool | Current-branch objects and role | Assumptions / discharge path | Needed conclusion and non-output boundary | Convention and target compatibility | Affected block / Step ID |
| --- | --- | --- | --- | --- | --- |
| Gaussian norm, linear-form, and inner-product concentration | Smoothed realized columns and normalized Gram entries | Independent `N(0,rho^2I/n)` perturbations; norm floor from `assump:base-scale`; thresholds from `assump:smoothing-margin` | Finite high-probability three-scale bounds; it does not itself give trajectory or Khatri-Rao conclusions | Exact branch normalization; direct expansion transfers raw perturbations to realized unit columns | G1 / `step_001` |
| Schur product and Gershgorin | Realized Gram and Khatri-Rao Gram | `q_real<=q_*` produced in G1 | Pair floor `1-q_*^2`; no stronger random-matrix theorem is claimed | Same Euclidean Gram convention and exact held designs | G1, G9-G10 / `step_001,007b,008` |
| Conditional Gaussian regression and dyadic product-tail comparison | Raw proposal coordinates | `E_sm` covariance/mean controls and Gaussian initialization | Two-sided `p_win`; must prove universal constants and finite-small-r case | Exact raw coordinates and pair products from `setting.md` | G2 / `step_002` |
| Binomial miss bound and union bound | Independent proposal slots | Slot independence from `assump:random-initialization`; no target-event independence | All-target coverage with `p_0>=1/2` | Proof labels do not enter algorithm | G3 / `step_003` |
| Banach fixed-point theorem | Closed projective chart and old-state Jacobi map | G4 must first prove completeness, self-map, and `L_chart<1/4` | Unique chart fixed point and geometric displacement; no global basin | Same projective sign chart and ambient norm conversion | G4 / `step_004` |
| Cauchy-Schwarz, induced-norm Hadamard bounds, unit-norm identity | Coefficient-vector ledger and row/column small gain | Exact same-state equation and Gram floors | `eta_G`, finite `sqrt(r)tau_r` conversion, column root, row absorption | Exact stored-state and realized-dual objects; no pre/post surrogate | G5-G8 / `step_004b`-`step_007` |
| Inverse resolvent and Moore-Penrose block identity | Active Khatri-Rao inverses and frozen zero columns | Pair perturbation `<1/512`, target floor, exact block-diagonal zero padding | `31/32` active inverse floor and equality to rank-`r` update; no claim on a singular active branch | Exact cyclic order and setting's Moore-Penrose convention | G9-G10 / `step_007b,008` |
| Exact CP unfolding and block scale-equivariance | Literal cyclic ALS and quotient refreshes | Target-span representation, nonzero positive-chart columns, ordinary active inverses | Range containment and representative identity; numerical contraction must be derived separately | Same tensor, factors, quotient action, and original loss | G9-G10 / `step_007b,008` |
| Andre Uschmajew, *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation*, SIAM J. Matrix Anal. Appl. (2012), DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5 | Qualitative quotient-Hessian and block-Gauss-Seidel interpretation | `step_008` must map the active rank-`r` exact CP objective, identify the scaling kernel, and prove branch-local pair floors | Qualitative quotient/local ALS interpretation only. It supplies no explicit radius, entry event, `ell`, zero-padding bridge, refresh identity, or source-facing rate | Source equilibrated coordinates are translated by current canonical balancing; all numerical and object-target bridges remain direct obligations | G10 / `step_008` |
| *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions*, NeurIPS 2025 proceedings stable URL recorded in the lineage survey | Context for simultaneous old-state proposal convention | The setting defines the procedure completely | No theorem-critical numerical or convergence output is consumed from this paper | Procedure convention only; current steps prove every branch output | G2-G4 context only |

All direct and standard tools above still require local proofs or exact
instantiations. None is treated here as discharged proof evidence.

## Quantitative Dependence Audit

| Objective | Exposed variables | Hidden constants and fixed quantities | Probability / horizon / norm mode | Auxiliary controls and specialization | Audit result |
| --- | --- | --- | --- | --- | --- |
| Smoothed geometry | `n,r,kappa_0,rho,delta_sm,d_kappa,d_rho` | Universal Gaussian constants and fixed regime exponents only; fixed `q_*,a_*,b_*`; no base-triple, `delta_init`, or `epsilon` dependence | High probability over one tensor; static; Euclidean norm, induced Gram mass, spectral floor | Separate linear/quadratic/normalization dominance before union and Schur/Gershgorin | Preserved |
| Window and certification | `r,k,q_real,Gamma,tau_r,L_burn,L_cert` | Universal tail/chart constants only; no `n,rho,epsilon` or confidence hidden | Conditional deterministic finite trajectory plus per-slot proposal probability; target-ratio/projective/induced-l1 norms | `tau_r=q_*^2/(10^4r)`; explicit burn and certificate horizons | Preserved |
| Selected bridge and refinement | `n,r,k,kappa_0,rho^(-1),epsilon` | Quotient constants depend only on fixed `q_*` and weight ratio; arithmetic cost may expose polynomial `kappa_0`; no generated condition number | Deterministic after good instance and successful coverage; one entry sweep then horizon-uniform target-span contraction; `d_Q` and original Frobenius norm | `omega=q_*^2+r tau_r`, `beta_perp`, `rho_ALS=1/1024`, `ell<1/16`; one-entry offset | Preserved |
| Restart and runtime | `n,r,k,kappa_0,rho^(-1),epsilon,delta_init` | Universal implementation constants and fixed exponents only; no confidence hidden in rank | Conditional finite independent restarts and first residual-hitting time; original relative Frobenius norm | `m>=1+ceil(log(8kappa_0^2/epsilon)/log4)`, `J=O(log(1/delta_init))` | Preserved |

The public rank rate is exactly
`Theta(r^(5/3)(log r)^(5/2))`; no envelope or stronger asymptotic claim is
substituted. The probability statement remains nested:
`Pr(E_sm)>=1-delta_sm`, and conditional on each `E_sm` tensor,
`Pr(success)>=1-delta_init`. The baseline-reduction obligation is preserved:
at the deterministic orthogonal equal-weight stationary state all defects and
refresh registers are exactly zero, not merely bounded by `tau_r`.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | Static norm/Gram/weight/conditioning producer | One smoothed instance | Three perturbation classes -> `q_real,Gamma`, then Schur/Gershgorin floor | Base norm, Gram, and weight slack | Linear, quadratic, normalization, finite union tails | Finite static union; no recurrence | Structural lower/upper comparison | Primitive base and smoothing assumptions; zero-smoothing algebraic boundary allowed | Lower norm and pair floors come from positive base margins, not generic smallness | Produced factors are exactly consumed realized factors | step-local | Primitive -> `step_001` -> all consumers | Orthogonal zero-smoothing case is exact | Each defect class is separately below its allocated slack | Five geometry/smoothing assumptions | Realized perturbation bounds | Singular norm/pair boundary excluded by margins | Normalization or ALS inverse can fail |
| `E_win,E_cov` | Proposal activation and rank rate | Finite slots in one run | `p_win=Theta(r^-5/3(log r)^-3/2)`, `Pr(miss j)<exp(-kp_win)` | Independent Gaussian slots and target window mass | Conditional means, competitor pair tails, finite misses | Finite-slot miss probabilities; no iterative leakage | Stopping/conditioning argument and finite union | `E_sm` plus primitive initialization; zero target denominator excluded on window | Window supplies nonzero target coordinates and exact pair ratios | Window coordinates are those consumed by `R_0,S_0` | step-local | G1 -> G2 -> G3 before chart | First covered slot has `R_0<=19/20`; miss is run failure | `kp_win>=8log r` dominates target union | Rank and initialization assumptions | `E_sm,E_win` | Small-r constants and correlated competitors explicitly handled | No universal-positive run success |
| `E_RS,E_chart,E_cert` | Denominator invariant, local proposal convergence, certificate producer | All states in finite burn/cert window | Displayed `R,S,a` recurrences; chart self-map; `zeta_t<=3(1/4)^(t-t_b)` | Target term and denominator `>=31/32`; chart derivative `<1/4` | Persistent bounded `q_real`, weight ratio, finite initial pair mass | Contractive/self-map over fixed `O(log r)` horizon; q forcing is locally absorbed in fixed chart | Self-contraction and stopping/conditioning argument | `E_sm,E_win`; zero-contraction run is excluded before export | Positive denominator and contraction-norm floors match recurrence/certificate claim | Ratios and chart use same realized target; stored state compared to own look-ahead | step-local | G1/G3 produce entry; G4 proves maintenance before use | First old-state update has denominator `>=31/32`; q=0 gives exact pair products | Interval invariant plus `L_chart<1/4`; finite horizon reaches `tau_r` | Primitive rank/procedure | `E_sm,E_cov` | q=0 transient and zero contraction branch handled | Undefined map or unsupported certificate |
| `E_cert_eq,E_cert_tail` | Same-state equation and exhaustive no-label ledger | One finite certificate per mode/slot | Raw right-sign equation; `eta_G+eta_N+eta_C`; LOW/singleton/multi/straddle split | Positive contraction norm and exact multilinearity | Unknown-sign `d tau_r` residual, Gram leakage, scalar remainder | One finite residual; `sqrt(r)tau_r` charged once | Algebraic coupling and structural comparison | Successful contraction branch and `E_sm`; `d_M=0` excluded | Exact same-state coefficient equation supplies the required sign/shape content | No target-distance claim; each state transfers only to its own contraction | step-local | G4 certificate -> G5 ledger -> classifier | Finite q=0 transient retains residual; stationary state has zero residual | Vector expansion gives `eta_G`; scalar cancellation `eta_N`; finite support `eta_C` | Procedure and `tau_r` | `E_cert,E_sm` | LOW and threshold straddling exhaust boundary | Hidden support branch or false l1 residual |
| `E_support_wt,E_cluster,E_gauge` | Weighted support, score, graph, signs | Finite certified pool | Component interval versus `lambda_max(1/sqrt(m)+160eta_0)`; graph inequalities | Exact weighted stationary profile and strict score margins | Gram/tail/certificate perturbations; fixed `Gamma-1` retained | Finite classification; strict inequalities precede ties | Structural lower/upper comparison and algebraic coupling | G5 ledger, G1 weights; zero score excluded on retained branch | Weighted lower and upper sources match component/mixture claim | Same realized direction metric and exact initialized tensor under sign gauge | step-local | G5 -> G6 before selected coefficient use | Exact component retained; unequal-weight two-support state rejected; negative score reoriented | `0.794lambda_max<0.85s_-lambda_min`; graph cross-gap | None new | `E_cert_tail,E_sm,E_cov` | LOW, zero/negative score, ties, straddle handled | Wrong clusters or invalid orientation |
| `E_col,E_row_residual,E_row` | Selected row/column small gain | Finite selected `r x r` matrices | Column quadratic root; per-entry `2tau_r`; row recurrence with self coefficient `<1/8` | Diagonal coefficient and `31/32` denominator | Pair leakage, normalization, sign-unknown residual | Finite sums; residual budget `r tau_r`; row forcing absorbed once | Algebraic coupling and structural comparison | G5/G6 exact equation and chart; large quadratic root excluded by chart | Positive denominator and per-entry dual residual supply exact claim types | Exact target-dual transfer; separate one-index sums avoid `r^2tau_r` | step-local | Classifier -> column root -> row residual -> row absorption | q=0 finite transient is `O(rtau_r)`; exact fixed point zero | `chi<=4(...)^2+4rtau_r`, then row self coefficient `<1/8` | `q_*,tau_r` | `E_cert_eq,E_cluster,E_support_wt` | Large-root and zero-residual boundaries explicit | No valid basin seed |
| `E_best,E_quotient` | Same-target balanced initializer and quotient entry | One selected initialization | Four-class tensor expansion; projector decomposition `G_MB_M+N_M` | Target norm lower bound, weight balance, row/column controls | Direction, relative amplitude, Gram, quadratic/cubic, perpendicular residual | One finite expansion | Structural lower/upper comparison and algebraic coupling | G7 controls and G1 target norm; zero theta excluded | Lower target norm and product gauge supply scale/nondegeneracy | Exact realized target and original Frobenius metric; `N_M` is exact orthogonal residual | step-local | G7 -> G8 -> G9 | Exact CP component gives `B=I,N=0,s=0` | All residual classes sum to `512omega<rho_ALS/4`; `B-I<=48omega,N<=tau_r` | Base weight/norm controls | `E_col,E_row,E_gauge` | Product-one rescaling has same tensor | Entry cannot transfer to target metric |
| `E_pair_entry,E_parallel_entry` | First-sweep inverse and generated target-span entry | Exactly one cyclic U/V/W sweep | `beta_perp`; cross/pair perturbations; `e_U,e_V,e_W` entry envelopes | Target pair floor, row/column entry control, exact unfolding range | Amplitude/coefficient leakage, mixed `tau_r^2`, coherent `r tau_r^4` | Finite unknown-sign defects disappear mode by mode; no repeated accumulation | Structural comparison and algebraic coupling | G8 decomposition and G1 floor; singular active branch excluded by `31/32` | Pair floor provides conditioning; exact unfolding provides support/range, not mere smallness | Exact active factors and exact rank-k zero-padded update; same quotient target | step-local | G8 -> G9 produces membership before G10 | Shared-perpendicular adversary becomes `r tau_r^4`; U update first removes one field | Pair defect `<1/512`; `N_U^+=N_V^+=N_W^+=0`; entry `<rho_ALS/3` | `tau_r,q_*`, procedure | `E_sm,E_best,E_quotient` | Exact target stationary; finite orthogonal transient charged | Singular solve or persistent perpendicular mixing |
| `U_M^q` and three `Refresh_s` states | Solved-output and literal-orbit interface | Each subupdate of every post-entry sweep | Output formula independent of incoming product; refresh overwrites common register | Exact scale equivariance and canonical product balancing | Held-direction/inverse defects only; no raw-amplitude forcing | Historical products overwritten; no accumulated field | Algebraic coupling and projection/nonexpansive maintenance of quotient orbit | Exact CP normal equations, positive chart, pair floor; zero/singular columns excluded | Scale action supplies exactly the representative identity claimed | Produced `e_U,e_V,e_W` represent the corresponding literal ALS targets in same quotient metric | step-local | G9 entry -> output map -> refresh -> next block | Exact target gives every output and refresh `s=0`; pure rescaling has `d_Q=0` | `gamma_out=||T_(M)K_dirJ^-1(:,j)||`; induction over U/V/W | Base scale/procedure | `E_parallel_entry,E_sm` | Singular pair boundary excluded before map | Chronology would not represent literal ALS |
| `E_basin_parallel,Psi^q` | Invariant tube and all-sweep convergence | All post-entry sweeps | U/V outputs `<=ell D`; W/final product `<=ell^2D`; full state `<=ell D` | Pair positivity, exact range invariance, quotient kernel | Direction, inverse, product-coordinate defects; perpendicular forcing exactly zero | Contractive; accumulated defect is zero; geometric sum `<16/15` entry norm | Self-contraction and projection/nonexpansive maintenance | G9 generated entry, G1 floor, direct normal equations; unrestricted perpendicular tube excluded | Positive pair floor and exact range match contraction/support claims | Same target spans, quotient, and original Frobenius loss; balanced comparison `<9` | step-local | G9 produces entry; G10 proves preservation and recurrence before G11 | First contracted sweep starts at exact-span `||e^1||<rho_ALS/3`; target fixed | `||e^(t+1)||<=ell||e^t||`, `ell<1/16`; no additive forcing | `q_*,rho_ALS` | `E_parallel_entry` and refreshed states | Exact target, tube edge, rescaling, singular pair tested | False unrestricted-tube claim or no convergence |
| `E_stop` | Original relative-error conversion | Finite first hitting time | Residual `<=8kappa_0^2 4^(-(m-1))` | Same-target balanced chart comparison | No additive residual; conservative loss `1/4` | Finite geometric horizon; one entry offset | Self-contraction and stopping argument | G9/G10; `epsilon>0` primitive | Quotient comparison controls the exact original residual | Same original Frobenius target and frozen-zero rank-k representation | step-local | Entry/contraction produced before stopping | Exact target stops immediately | Displayed `m` dominates `epsilon` | Accuracy assumption | `E_parallel_entry,E_basin_parallel` | `epsilon` near 1 and exact zero residual handled | Wrong stopping time or surrogate metric |
| `E_restart` | Conditional confidence/runtime | Finite `J` independent full runs | `(1-p_0)^J<=delta_init`; explicit per-run cost | Independent proposal randomness and `p_0>=1/2` | Finite failed runs | Finite product; no all-time upgrade | Stopping/conditioning argument | Primitive independence plus G3/G11 | Independence source matches conditional confidence claim | Returned run ranked by original residual | step-local | Per-run success before amplification | `J=1` allowed; exact successful run unchanged | Geometric failure product and cost multiplication | Randomness/confidence assumptions | `E_cov,E_stop` | Large tolerance and exact baseline handled | Confidence or polynomial runtime fails |
| Orthogonal equal-weight baseline | Exact/noiseless invariance | Deterministic specialization and stationary state | Exact Jacobi map and `Psi^q(0)=0` | Diagonal pair coefficient and exact CP normal equations | No stationary defect; finite transient defects retained separately | Stationary; zero accumulated error | Algebraic coupling and self-contraction | Direct substitution; positive-rho probability claim not extended to rho zero | Exact diagonal source supplies fixed-point and zero claims | Produced and consumed tensor are identical | step-local | Direct G13, with earlier maps only for compatibility | First block and every refresh leave exact state fixed | Zero residual and no floor for every positive `epsilon` | Deterministic specialization | Exact map identities | Finite transient versus stationary boundary separated | Baseline invariance would be weakened |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | G1 / `step_001` | Base norm/Gram/weight slack; smoothing margins | Linear, quadratic, normalization, finite tails all separately controlled; none uncontrolled | Exact realized factors | Individual margins, union, Schur/Gershgorin | `q_*`, `1.01`, norm floor | G2-G4, G9-G10 | valid |
| `E_win,E_cov` | G2-G3 / `step_002,003` | Gaussian slots, `E_sm`, `k` | Conditional means/product tails and finite misses controlled | Exact target ratios | Two-sided tail and `kp_win>=8log r` | `a_*,b_*,c_all,C_rank` | G4, G6, G12 | valid |
| `E_RS,E_chart,E_cert` | G4 / `step_004` | `E_sm,E_win`, exact old-state formulas | Persistent q forcing bounded in invariant interval; finite transient controlled | Same realized target and stored state | Recurrences, self-map, `L_chart<1/4`, displacement decay | `31/32`, chart radii, `tau_r` | G5-G6 | valid |
| `E_cert_eq,E_cert_tail` | G5 / `step_004b` | Certified state, exact contraction, `E_sm` | Gram `eta_G`, scalar `eta_N`, certificate `eta_C`; no omitted support branch | Same-state object; no premature target transfer | Exact vector expansion and threshold/profile ledger | `d_M>0`, `vartheta_*>1/16`, LOW gate | G6-G7 | valid |
| `E_support_wt,E_cluster,E_gauge` | G6 / `step_005` | G5 ledger, weights, coverage witness | Tail/Gram/certificate controlled; fixed weight imbalance explicit | Same realized direction target; tensor preserved by sign gauge | Component lower versus mixture upper and graph gaps | `0.85`, `0.794`, `s_-`, graph threshold | G7-G8 | valid |
| `E_col,E_row_residual,E_row` | G7 / `step_006` | Same-state equation, selected chart, pair floor | Per-entry residual `2tau_r`; row and column each `2rtau_r`; no `r^2` class | Exact target-dual coefficients | Small root then row coefficient `<1/8` absorption | `31/32`, chart selects root | G8 | valid |
| `E_best,E_quotient` | G8 / `step_007` | G6-G7 controls, target norm floor, product gauge | Direction/amplitude/Gram/cubic/perpendicular terms controlled | Exact target and original Frobenius metric; projector residual exact | Four-class expansion and `512omega`; `B+N` decomposition | `rho_ALS/4`, weight floor | G9 | valid |
| `E_pair_entry` | G9 / `step_007b` | `B-I`, `N<=tau_r`, pair floor, amplitudes | Mixed `tau_r^2` and coherent `r tau_r^4` retained; none uncontrolled | Exact held Khatri-Rao design | `beta_perp`, `96/192` bounds, resolvent | Target floor and `<1/512` perturbation | Three entry subupdates | valid |
| `E_parallel_entry` | G9 / `step_007b` | `E_pair_entry`, exact unfolding, three inverse floors | Sequential coefficient/amplitude defects controlled; perpendicular fields become exactly zero | Exact literal ALS output and same quotient target | `3072/3456/4096` recurrence and range containment | `rho_ALS/3`, `31/32` | G10-G11 | valid |
| `U_M^q` and `Refresh_s^M` | G10 / `step_008` | Canonical held directions, pair inverse, scale action | Held-direction/inverse defects controlled; incoming product cancels; history overwritten | Each refreshed object is the literal intermediate quotient state | Output product formula plus scale-equivariant induction | Positive chart and pair floor | Internal chronology and `Psi^q` | valid |
| `E_basin_parallel,Psi^q` | G10 / `step_008` | Exact-span entry, output maps, `d_Q` | Direction/product defects contract; perpendicular and additive forcing zero | Completed `e_W` is exact post-sweep quotient; original loss bridge explicit | U/V `ell D`, W `ell^2D`, final `ell D`; geometric budget | `rho_ALS`, `ell<1/16`, residual constant | G11 | valid |
| `E_stop` | G11 / `step_009` | Entry offset, recurrence, balanced residual comparison | Finite geometric residual only | Original rank-k Frobenius loss | `8kappa_0^2 4^(-(m-1))<=epsilon` | Chosen `m` | G12/final theorem | valid |
| `E_restart` | G12 / `step_010` | `p_0`, independent runs, per-run costs | Finite failures only | Smallest original residual is returned | `(1-p_0)^J<=delta_init` and cost product | `p_0>=1/2`, chosen `J` | Final theorem | valid |
| Baseline bridge | G13 / `step_011` | Exact orthogonal algebra and stationary state | Finite transient retained; stationary defect zero | Produced tensor equals target | Direct fixed-point substitution, all refreshes zero | Exact diagonal pair Gram | Final theorem | valid |

Every exported object is the same object consumed downstream or has an
explicit same-target transfer. No transformed, whitened, population,
reference-operator-modified, or otherwise surrogate object is used.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| `E_sm` | G1 / `step_001` | G2-G4, G9-G10 | Primitive geometry -> G1 -> each consumer | derived | valid |
| `E_win,p_win` | G2 / `step_002` | G3 | `E_sm` -> G2 -> G3 | derived | valid |
| `E_cov,p_0` | G3 / `step_003` | G4, G6, G12 | `E_win` -> G3 -> consumers | derived | valid |
| `E_RS,E_chart,E_chart_l1` | G4 / `step_004` | G5 and covered-slot part of G6 | G1/G3 -> G4 -> consumers | derived | valid |
| `E_cert` | G4 / `step_004` | G5 | Chart self-map -> finite displacement -> certificate | derived | valid |
| `E_cert_eq` | G5 / `step_004b` | G6-G7 | `E_cert` -> exact same-state equation -> consumers | derived | valid |
| `E_cert_tail` | G5 / `step_004b` | G6 | `E_cert_eq,E_sm` -> defect ledger -> classifier | derived | valid |
| `E_support_wt` | G6 / `step_005` | G6 graph/gauge, G7-G8 | Tail ledger -> weighted classification -> consumers | derived | valid |
| `E_cluster,E_gauge` | G6 / `step_005` | G7-G8 | Weighted classification -> graph/sign outputs -> consumers | derived | valid |
| `E_col,E_row_residual,E_row` | G7 / `step_006` | G8 | Exact selected equation -> column root -> residual -> row -> G8 | derived | valid |
| `E_best,E_quotient` and `B+N` decomposition | G8 / `step_007` | G9 | G7 -> tensor/gauge transfer -> exact projector output -> G9 | derived | valid |
| `E_pair_entry` | G9 / `step_007b` | Three entry subupdates | G8 decomposition -> `beta_perp` -> inverse floors | derived | valid |
| `E_parallel_entry` | G9 / `step_007b` | G10-G11 | Pair control -> literal U/V/W range trace -> exact-span entry | derived | valid |
| `U_U^q,e_U` | G10 / `step_008` | `U_V^q` | Entry -> canonical balance -> U solve -> refresh U | derived | valid |
| `U_V^q,e_V` | G10 / `step_008` | `U_W^q` | `e_U` -> V solve -> refresh V | derived | valid |
| `U_W^q,e_W=Psi^q(e)` | G10 / `step_008` | `E_basin_parallel`, G11 | `e_V` -> W solve -> refresh W -> completed state | derived | valid |
| `E_basin_parallel` | G10 / `step_008` | G11 | Entry -> output estimates -> full-sweep recurrence -> stopping | derived | valid |
| `E_stop` | G11 / `step_009` | G12/final theorem | Entry and basin -> finite sweep choice -> residual | derived | valid |
| `E_restart` | G12 / `step_010` | Final theorem | Coverage and stop -> independent failure product -> assembly | derived | valid |
| Exact baseline conclusion | G13 / `step_011` | Final theorem | Deterministic specialization -> fixed-point trace -> assembly | derived | valid |

## Early Obstruction And Repair Plausibility

- Contract contradictions: none. The exact-goal claim, primitive assumptions,
  procedure, rank rate, nested probability mode, original Frobenius metric,
  and baseline conclusion agree across `setting.md`, the accepted sketch, and
  this diagnostic.
- Parent single-block obstruction: a full post-block state cannot contract in
  `d_Q` because held directions remain unchanged. The current sketch makes no
  such claim. `U_M^q` has the codomain `(solved direction,new common
  product)`, and its estimate depends only on the two held directions.
- Common-register object identity: canonical balancing preserves every
  represented rank-one product. The exact formula for `gamma_j^out` removes
  the incoming common product, and scale equivariance proves that `e_U,e_V,e_W`
  represent the literal chronological ALS intermediates. Historical U/V
  products are overwritten; only the W product appears in the completed
  state. The final `d_Q` comparison is therefore between legal full states.
- Shared-perpendicular obstruction: an arbitrary tube point can have a
  coherent `rt^4` pair-Gram defect. The theorem does not consume that tube.
  G9 retains the exact `r tau_r^4` charge at the actual selected entry and
  uses the literal first sweep to remove all perpendicular fields before G10.
- Mechanism nonvacuity: pair floors and positive contraction norms are
  produced before inverse, chart, and quotient claims. At the exact target,
  every mechanism remains active and the conclusion is already exact. At a
  pure product-one rescaling, `d_Q=0`. Singular and zero-score branches are
  excluded by explicit procedure or generated margins before consumption.
- Scope accumulation: proposal errors occur over a finite `O(log r)` window;
  entry perpendicular errors occur for one finite sweep; post-entry forcing
  is exactly zero and the recurrence is contractive with geometric budget
  below `16/15`. No persistent adversarial-sign defect is silently summed.
- Residual and target compatibility: all entry, contraction, and stopping
  objects concern the same realized tensor, exact target spans, quotient
  action, and original rank-k Frobenius loss. There is no surrogate-to-target
  gap.
- Baseline activation: at the exact orthogonal stationary state the first
  update and every refresh are stationary with `s=0`. Finite certified
  transients are not falsely declared exact.
- Unsupported mode/dependence upgrades: none. The rank, confidence, horizon,
  and metric modes are unchanged, and the entry-sweep offset is retained.
- Locality conclusion: the remaining work is difficult but already has
  sources, concrete inequalities, legal producer-consumer paths, and boundary
  traces under the unchanged sketch. It is `step-local`. No candidate
  idea/theorem-contract defect is exposed at diagnostic granularity.

## Global Gaps And Hard Steps

All entries below are unresolved `step-local` proof work. The named units are
diagnostic guidance, not proof evidence.

1. `step_001`: prove a normalized-column perturbation lemma separating the
   three error scales, a row/union concentration proposition, a weight-ratio
   lemma, and a Schur/Gershgorin Khatri-Rao-floor corollary with exact
   `delta_sm` accounting.
2. `step_002`: prove the conditional Gaussian regression lemma, the
   three-target-window two-sided estimate, the dyadic competitor-product tail,
   and the universal finite-small-r comparison.
3. `step_003`: prove the independent-slot target-miss bound and all-target
   union proposition yielding `p_0>=1/2` without target-event independence.
4. `step_004`: derive the exact simultaneous `R,S` recurrences; close the
   denominator invariant numerically; prove the dual-l1 bridge, chart
   self-map, derivative bound, contraction-norm floor, and certification-time
   proposition.
5. `step_004b`: prove the raw right-sided sign equation and barred wrapper;
   then prove the coefficient-vector Gram lemma, scalar cancellation lemma,
   retained-floor ratio/profile lemma, and exhaustive LOW/singleton/multi/
   straddling ledger with every stated constant.
6. `step_005`: prove the weighted component and mixture score propositions,
   unequal-weight boundary case, observable graph separation, and
   product-preserving sign/gauge lemma.
7. `step_006`: prove the exact dual off-diagonal relation, small-root
   selection, per-entry residual transfer, separate induced row/column sums,
   and row absorption proposition.
8. `step_007`: prove the relative amplitude and direction lemma, the
   four-class Frobenius expansion with constant 512, and the exact target
   projector decomposition with `48omega` and `tau_r` controls.
9. `step_007b`: prove the collective Hadamard pair-Gram identity and
   `beta_perp`; check all three amplitude-conjugated inverse floors; prove the
   zero-padding identity, sequential `3072/3456/4096` coefficient bounds, and
   exact U/V/W unfolding range trace. This is a priority diagnostic step
   because failure of any exact first-sweep interface would block G10.
10. `step_008`: prove canonical-balance uniqueness, exact block
    scale-equivariance, and literal-orbit equivalence for each refresh; prove
    the held-direction output Lipschitz estimates including the log-product
    bound; verify intermediate tube legality and the U/V/W recurrence; prove
    the quotient Hessian kernel, exact-span invariance, and same-target
    Frobenius comparison. This is the second priority diagnostic step because
    it is the repaired theorem-critical interface.
11. `step_009`: instantiate the residual comparison for the literal frozen-zero
    rank-k trajectory and verify the one-entry-sweep stopping inequality.
12. `step_010`: prove the conditional independence/restart calculation and
    audit every term in the operation count, including unsuccessful runs.
13. `step_011`: prove the deterministic orthogonal map, distinguish finite
    certificate transients from stationary representatives, and verify exact
    U/V/W refresh and stopping traces with no error floor.

No global gap currently requires changing the accepted roadmap. Local proof
failure may later expose a smaller repair target, but it cannot be anticipated
as a sketch defect merely from the present hard derivations.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof
evidence, a cited result, an assumption source, or authority to change any
accepted sketch-step claim, dependency, assumption, output target, rate, or
theorem conclusion. Every local unit and cited-tool application must be
proved or discharged independently by the corresponding proof-step workflow.

## Suggested Routing

None

Continue to `/global-proof-review`. If that review accepts this diagnostic,
run all proof steps in dependency order. Give early reviewer attention to
`step_007b` and `step_008`, while respecting their accepted dependencies.
