# Proof Sketch

## Formalized Setting

This is proof-sketch attempt 5 for `perspective_2/idea_9`, rerun in
`revise_sketch` mode after the archived attempt-4 `step_004` review.  The binding
formalization is `perspective_2/idea_9/setting.md` in target-spec mode.  The
only primitive assumptions are:

- `assump:base-column-conditioning`;
- `assump:base-product-balance`;
- `assump:gaussian-smoothing`;
- `assump:dimension-regime`;
- `assump:smoothing-scale`;
- `assump:modewise-gram-margin`;
- `assump:rank-regime`;
- `assump:random-tape`; and
- `assump:accuracy-range`.

All realized norm, Gram, Khatri-Rao, product-weight, H/J/K, transfer,
resolvent, history, certificate, label, row-profile, transaction, chart, and
convergence facts are derived outputs.  In particular, `R-src`, `R-gap`,
`J-row-gap`, `J-row`, `J-global`, `R-hist-budget`, `R-budget`, `R-acc`, and
the protected-state invariant are not theorem assumptions.

Use the analysis abbreviations

```
e = P^(-D_stat),   nu = nu_real,
eta0 = C_eta (Gamma_star nu^2 + e),
Zstar = nu^2 + r nu^3 + sqrt(r) e,
g_minus = tau_min^(1/3),   g_plus = tau_max^(1/3),
chi_tau = g_plus/g_minus <= (2 Gamma_star)^(1/3).
```

For the pre-landscape source-exclusion bridge, let `P_M` be the orthogonal
projector onto the full realized source span
`span{m_(j,M):j in [r]}` and put

```
Pi_star = P_A tensor P_B tensor P_C,
R_bar = ||T||_F + r (2 R_max)^3,
L_bar = 1 + R_bar + (2 R_max)^4,
Lambda_nor = R_bar + (2 R_max)^3 + 2 L_bar/tau_min.
```

If `delta_led=C_led eta0`, define the generated triangular normal-coupling
bound

```
q_nor = nu^2 + 4 delta_led sqrt(r) nu + 4 r delta_led^2,
B_perp = 3 r Lambda_nor e/(1-q_nor).
```

`step_003b` proves, rather than assumes, `q_nor<=1/4` and the full-history
bound

```
||(Id-Pi_star) R_I||_sigma
 <= ||(Id-Pi_star) R_I||_F <= B_perp.                 (SE-perp)
```

It also proves `||R_I||_F>=c_R tau_min` for every nonterminal prefix and,
uniformly over certificate states with `0<g<=2R_max`, the target-side
comparisons

```
B_perp <= c_SE min{
  tau_min eta0,
  tau_min/r,
  ||R_I||_F P^(-D_cap/2),
  N_I(g) P^(-D_gap)/g^3
}.                                                    (SE-scale)
```

Here `c_R,c_SE>0` are fixed outputs of the direct tensor and differential
calculation.  They are not assumptions or algorithmic thresholds.

Constants and fixed exponents are selected in the order: source and protocol
constants, the static margin, the lower-tail exponent `D_lb`, the landscape
exponents `D_gap,D_cap`, the fixed polynomial degree bounding `Lambda_nor`
and `tau_min^(-1)`, then `D_stat` with enough slack for both the lower-tail
and `(SE-scale)` comparisons, followed by `D_ls,D_PL`, the compact-chart
smoothness constant `C_L`, and finally the leading constants.  Concretely,
the primitive polynomial bounds give fixed `D_nor,D_tau` with
`r Lambda_nor<=P^(D_nor)` and `tau_min>=P^(-D_tau)`; choose

```
D_stat >= D_nor + D_tau
             + max{1, 2 D_lb, D_cap/2, D_gap + 3 D_tau} + 10.
```

This makes `(SE-scale)` uniform even when `P` grows through `n`.  The
specialization never absorbs a positive numerical term without a stated
event.  A Gaussian anti-concentration sublemma in `step_001` gives a derived
event

```
E_lb = { nu_real >= nu_lb },   nu_lb = P^(-D_lb),
P_inst(E_lb^c) <= r^(-20).
```

Here `D_lb` is a fixed class-dependent exponent.  More concretely, choose
`m=floor(r/2)` disjoint label pairs in one mode.  Before intersecting the
norm event, condition only on all perturbations except one isotropic coordinate
per pair; each raw cross-coordinate has a Gaussian component with standard
deviation at least `c rho/(sqrt(n) kappa)`.  The Gaussian density bound gives
probability at most `C r^(-40)` that one such coordinate lies in an interval of
width `c rho/(sqrt(n) kappa r^40)`, uniformly in its mean.  The disjoint
coordinates and a union bound give failure at most `r^(-20)`.  On the norm
event, deterministic denominator bounds transfer this raw lower bound to the
normalized off-diagonal Gram entry.
Since `rho^(-1),kappa` and `k` are polynomially bounded and `P` contains
`n,r,k,kappa,rho^(-1)`, choose fixed `D_lb` so
`P^(-D_lb) <= c rho/(sqrt(n) kappa r^40)`.  Thus the comparison is uniform
over the source class.  The instance event is the intersection with `E_lb`,
so its probability remains at least `1-r^(-10)` after the finite union
allocation.

On `E_lb` choose `D_stat` sufficiently large that

```
sqrt(r) nu <= 1/20,  r nu <= 1/20,
r^2 e <= c_num nu^2,  sqrt(r) e <= c_num nu^2.
```

The first two inequalities follow from the upper Gram margin; the last two
follow from `nu >= nu_lb` and the fixed choice `D_stat > 2 D_lb` (with the
additional polynomial slack needed for `r`).  Outside `E_lb` no such
absorption is asserted: the raw profile and raw global budget are retained.
The exact orthogonal/noiseless baseline is a separate exact-limit branch with
`H=0` and `e=0`, in which all structural and numerical terms vanish.  Thus no
lower bound on `h` or on the primitive source is added.

For the terminal module define the finite-branch target radius

```
varrho_PL = c_chart g_minus/r,
```

where `c_chart>0` is a fixed class-dependent constant produced by the exact
balanced-Jacobian/Taylor calculation in `step_013`, not an admissibility
assumption.  The realized lower norm bound gives
`g_minus >= (2 kappa)^(-1)`, so this radius is inverse polynomial and, after
choosing a fixed `D_PL`, satisfies `varrho_PL >= P^(-D_PL)`.  The exact
`H=0,e=0` baseline separately admits the constant-relative radius
`varrho_orth=c_orth g_minus` and has zero entry residual.

The symbol `C_L` denotes the dimensionless compact-chart gradient/smoothness
coefficient produced by the direct derivative bounds in `step_013`.  The
actual chart Lipschitz scale is `L_chart=C_L g_plus^4`, namely
`||grad_bal F(Q)-grad_bal F(Q')||_F <= L_chart ||Q-Q'||_2` inside the chart.
`C_L` is fixed after the class, Gram, weight-ratio, and Armijo constants are
fixed; it may depend only on `c_0,c_rho,C_dim,C_sm,C_nu,C_rank,Gamma_star`
and fixed protocol constants, and not on dimensions, the realized instance,
commit order, or `epsilon`.  Thus `L_chart` is an exposed derived scale,
while `C_L` is not a theorem assumption or a hidden dimension-dependent
constant.

The selected framework is the J-aware absolute-Gram resolvent with a
rootwise block-l2 profile.  Provenance is the parent framework recorded in
`perspective_2/idea_8/technical_survey.md`, the reusable static prefix from
ideas 6--8, and direct current-notation multilinear algebra in the present
setting.  The only semantic delta from idea 8 is the repaired local numerical
interface in `J-two-label`; no objective, algorithm, primitive class, rank,
probability mode, or endpoint is changed.

## Formalized Goal

Prove the material-partial J-aware resolvent-ledger, separation-gated,
unprojected reachable-landscape and trajectory theorem in `setting.md`:

1. Construct the once-drawn event `E_inst` with instance probability at least
   `1-r^(-10)`, including nonvanishing, norm and weight bounds, modewise and
   pair/triple Gram conditioning, exact balanced representation, `R-src`,
   leakage, `S`, both transfer gaps, and the derived lower-tail branch `E_lb`.
2. Conditional on one instance in `E_inst`, start at the empty protected state
   and prove a finite induction for every generated prefix.  The induction
   produces the actual-history array, convergent `Theta_I`, zero-diagonal
   stored profiles, matching/injection, the raw row profile and (on `E_lb` or
   the exact limit) `J-row`, `J-global`, `R-hist-budget`, `R-budget`, and
   `R-acc`.  Before each landscape call, derive the full-history
   source-normal bound `(SE-perp)` from the stored post-fit stationarity
   equations of prior accepted slots, and prove `(SE-scale)`.
3. Project the current residual with `Pi_star`, observe that all target-frame
   contractions used by `A_I` and `Theta_I` are unchanged exactly, and use
   `(SE-perp)--(SE-scale)` to transfer score, gradient, Hessian, capture, and
   residual norm between the projected and actual residuals.  Then show that
   every observable certificate is matched to one unresolved atom,
   with product-one sign alignment, separation, `R-euc`, and `R-dir`.  Prove
   the exact tensor influence and J-charge updates in all three modes.
4. Verify the isolated O.1 audit.  For `H_A(p,j)=0` and
   `H_B(p,j)=H_C(p,j)=h`, the captured-label charge is exactly bounded at the
   honest scale `O(h^4 + e h + e^2)`, with the positive numerical terms
   retained.  It dominates the exact `2 h^4 + O(h^6)` increment at
   `h=e^2`; no lower bound on `h` is used.  For `ell != p`, `J_M(p,ell)=H_M(p,ell)`.
5. Prove rootwise l2 factorization and sum every root, tested label, mode, and
   commit once, obtaining `J-global` and `R-acc` without an extra `r` or
   `sqrt(r)` factor.
6. Prove full-space transaction dynamics, history-uniform one-transaction
   probability `p_tx >= (nr)^(-c_tx)`, exact rollback, and independent-tape
   amplification to `r` distinct commits with probability at least
   `1-r^(-10)`.
7. Transfer the actual committed tuple to the exact nonorthogonal target orbit
   in full-state Euclidean factor distance.  Prove the weight-scaled radius
   `c_chart tau_min^(1/3)/r`, entry by the direct orbit-aligned `R-euc` bound,
   a balanced PL chart, first-exit invariance, and
   floor-free relative Frobenius accuracy in polynomial work times
   `log(1/epsilon)`.  Instance and tape probabilities remain separate.

The exact orthogonal equal-weight specialization is preserved: structural
H/S/z/charge/history terms vanish, exact target slots plus joint-zero unused
slots have zero loss, failed probes create no forcing, and terminal refinement
has no additive floor.

## Sketch Identity

- Sketch attempt: 5
- Retry mode: `revise_sketch` after attempt-4 `step_004` review
- Triggering artifact: `proof_history/sketch_004/proof_steps/step_004/attempt_001/review.md`
- Branch: `perspective_2/idea_9`
- Progress type: `material_partial`
- Binding rank: `k = ceil(C_rank r^(3/2) (log(2r))^2)`, with `r < k < r^2`
- Binding baseline: exact asymmetric objective, exact rollback, exact target
  representation, same-target terminal refinement, and arbitrary relative
  accuracy
- Local repair: preserve every accepted J-ledger, chart, entry, baseline, and
  generated-flow repair from attempt 4.  Add only `step_003b`, a genuine
  pre-landscape producer for full-history source-normal exclusion and
  capture/curvature transfer.  It derives its normal equations from prior
  accepted certificates and solves them with the pair-Khatri--Rao small-gain
  bound; it does not assume source exclusion or alter any primitive condition.

## Proof Roadmap

The dependency-ordered roadmap has seventeen stable rows, retaining all
existing numeric Step IDs and inserting one repair ID before `step_004`.

1. `step_001` derives the once-drawn instance event, exact target, and the
   Gaussian lower-tail branch `E_lb`.
2. `step_002` derives H/J/K, leakage, S, and the l1 and rootwise transfer
   gaps.
3. `step_003` constructs the conditional statewise Neumann envelope and
   defines the local zero-diagonal precommit `z` profile from it; no norm
   bound is exported yet.
4. `step_003b` uses prior commit-time radial/angular stationarity, generated
   matching, and the pair-Khatri--Rao gap to solve the triangular normal
   system and export `(SE-perp)--(SE-scale)` plus exact projected target-frame
   compatibility.
5. `step_004` proves the conditional current-residual landscape dichotomy
   after consuming that source-exclusion bridge.
6. `step_005` turns a certificate into a unique unresolved label and calibration.
7. `step_006` expands one accepted error using the local `z` profile and
   proves the J charge/update, including the repaired O.1 audit and cyclic
   forms.
8. `step_007` derives the quantitative zero-diagonal rootwise l2 bound for
   the already defined `z` profile from a prior prefix budget.
9. `step_008` performs the rootwise factorization and one-time global charge
   sum, retaining all numerical terms.
10. `step_009` closes the protected-state induction from the empty prefix.
11. `step_010` proves deterministic transaction dynamics and exact rollback.
12. `step_011` proves history-uniform full-Haar transaction reachability.
13. `step_012` amplifies the independent tape to all distinct commits.
14. `step_013` proves exact-target balanced Jacobian conditioning, the
    weight-scaled radius `c_chart g_minus/r`, a quadratic sandwich, and PL.
15. `step_014` aligns the generated injection/signs with the exact target orbit
    and proves same-target full-state entry directly from `R-euc`.
16. `step_015` proves first-exit invariance and floor-free terminal descent.
17. `step_016` performs the public rate specialization and baseline assembly.

No step assumes a generated condition before its producer.  `step_003b` is a
deterministic bridge lemma whose inputs are the exact certificate and matching
records already produced at earlier commits; `step_009` supplies those records
by induction, with the empty prefix as the zero base case.  The bridge itself
derives the normal residual and full-history bounds.  The conditional
landscape steps are consumed only after `step_009` discharges this prefix
interface.

## Rate Objectives

### Objective R1: once-drawn instance event

- Objective type: structural-parameter explicit and confidence-explicit.
- Exposed variables: `n,r,kappa,rho,Gamma_star,nu_base,nu_star`, realized
  norms/Grams/weights, and `||T||_F`.
- Hidden constants may depend on: fixed class constants
  `c_0,c_rho,C_dim,C_sm,C_nu,Gamma_star` and protocol constants.
- Hidden constants may not depend on: `n,r,k,kappa,rho`, realized instance,
  tape, commit order, or `epsilon`.
- Fixed quantities: deterministic base triple and fixed proof constants.
- Probability mode: structural Gaussian event intersected with the derived
  lower-tail event `E_lb`, total probability at least `1-r^(-10)`; the exact
  orthogonal/noiseless branch is reported separately as a baseline limit.
- Horizon mode: once-drawn and trajectory-uniform after conditioning.
- Norm mode: Euclidean columns, operator Grams, entrywise H/J/K, and tensor
  Frobenius norm.
- Required bridge or simplification obligations: `step_001` proves all
  normalization and finite-union bounds plus the anti-concentration lower-tail
  event; `step_002` derives lifted controls.  No lower-tail condition is added
  as a primitive assumption.
- Baseline invariance obligations: orthogonal equal-weight bases give exact
  identity pair/triple Grams and zero structural cross-label source.

### Objective R2: finite all-prefix ledger

- Objective type: finite-horizon structural-parameter explicit,
  regularity-explicit, and numerical-error explicit.
- Exposed variables: `r,nu,Gamma_star,P,D_stat,D_gap,D_cap,eta0,e,`
  `H,J,K,S,A_I,Theta_I,z,Xi,Upsilon,Pi_star,Lambda_nor,q_nor,B_perp,`
  and all displayed budgets.
- Hidden constants may depend on fixed class/proof constants only.
- Hidden constants may not depend on state, order, tested label, instance,
  `n,r,k,kappa,rho`, or `epsilon`.
- Fixed quantities: one good instance and prefix length `s <= r`.
- Probability mode: deterministic conditional on the instance and tape history.
- Horizon mode: uniform over all finite prefixes.
- Norm mode: entrywise l1, rootwise block-l2, Euclidean factor error, tensor
  contractions, full-history Frobenius/product-spectral norms, and
  product-sphere gradient/Hessian transfer.
- Required bridge or simplification obligations: `step_003` defines the local
  zero-diagonal z profile.  `step_003b` derives the post-fit normal equations
  from the same accepted certificate, solves their triangular system with
  `q_nor<=1/4`, and exports
  `B_perp=3r Lambda_nor e/(1-q_nor)`.  With `D_stat` chosen after
  `D_gap,D_cap`, it proves `(SE-scale)` against the `eta0` calibration,
  unresolved-source,
  capture, and curvature scales, uniformly in `P,n,r`.  `step_007` exports its raw
  `nu^2 + r nu^3 + sqrt(r)e` row bound, `step_008` exports the raw
  `r nu^3+r^2e` global budget, and `step_009` carries the raw or
  `E_lb`-specialized row interface through the abstract prefix induction.
  Only on derived `E_lb` (or the exact limit) may
  `r^2e` and `sqrt(r)e` be compared with `nu^2`; no crude
  `r^(3/2)nu^3` replacement and no unconditional absorption are allowed.
- Baseline invariance obligations: setting H and the exact numerical limit to
  zero makes S, structural z, A, Xi, all structural charges, and `B_perp`
  vanish.  The empty prefix has exactly zero history-normal tensor.

### Objective R3: discovery probability and work

- Objective type: confidence-explicit, fixed-horizon, and algorithmic-work
  explicit.
- Exposed variables: `n,r,k,kappa,rho,P,H_tx,N_tx,p_tx,c_tx,d_tx`, line-search
  constants, and guard/tolerance exponents.
- Hidden constants may depend on fixed class/protocol constants only.
- Hidden constants may not depend on protected history, order, instance within
  `E_inst`, or `epsilon`.
- Fixed quantities: one good instance and deterministic transaction map.
- Probability mode: conditional one-seed probability at least `(nr)^(-c_tx)`,
  separately amplified to `1-r^(-10)`.
- Horizon mode: at most `N_tx` transactions and `H_tx` work per transaction.
- Norm mode: exact loss, sphere gradient/Hessian, factor displacement, and
  certificate scalars.
- Required bridge or simplification obligations: `step_011` proves the
  one-seed bound after consuming the actual-residual landscape transferred by
  `step_003b`; `step_012` proves stopped amplification and work.
- Baseline invariance obligations: every failed probe returns exactly to joint
  zero and contributes zero persistent error.

### Objective R4: same-target convergence

- Objective type: regularity-explicit, numerical-error explicit, and
  finite-horizon convergence-rate explicit.
- Exposed variables: `n,r,k,kappa,rho,Gamma_star,P,epsilon,g_minus,g_plus,`
  `chi_tau,varrho_PL,mu_PL,eta0,L_chart`, full-state factor distance, and
  residual norm.  `C_L` and `C_path_star` are fixed dimensionless derived
  chart constants, not dimension- or instance-dependent rate variables.
- Hidden constants may depend on fixed class/protocol constants only.
- Hidden constants may not depend on dimensions, order, target labels, instance,
  or `epsilon`.
- Fixed quantities: one all-commit output on one good instance.
- Probability mode: deterministic after the two separate events.
- Horizon mode: finite discovery plus terminal `log(1/epsilon)` horizon.
- Norm mode: full-state Euclidean orbit distance, balanced gradient, loss, and
  Frobenius residual.
- Required bridge or simplification obligations: `step_013` proves in the
  exact full-state metric
  `varrho_PL=c_chart g_minus/r`, `mu_PL>=c_mu g_minus^4`, and a local
  quadratic sandwich.  `step_014` proves the orbit/sign/permutation-aligned
  decomposition
  `dist(Q_fin,Z_star)<=C_ent g_plus sqrt(3r) eta0` and the target-scale
  comparison
  `C_ent chi_tau r^(3/2) eta0 <= theta_ent c_chart`, where
  `0<theta_ent<=1/2` is the fixed reserve needed by `step_015`.  The
  structural term is controlled by the upper Gram margin and the numerical
  term by the fixed `D_stat`; this comparison does not use `R-acc` or turn
  `R-acc` into a factor norm.  `step_016` verifies the inverse-polynomial
  radius/PL lower bounds, the derived `L_chart=C_L g_plus^4` scale and fixed
  `C_L`/`C_path_star` dependence,
  probability separation, and public work.
- Baseline invariance obligations: exact target is stationary at zero loss;
  on `H=0,e=0`, `R-euc` gives exact factor equality and the orthogonal
  Jacobian admits the constant-relative radius `c_orth g_minus`.  The
  terminal statement has no additive remainder.

## Assumption Provenance Objectives

- `E_inst`, nonvanishing, realized norms/Grams, weights, pair/triple
  conditioning, and target guard are derived from the six source assumptions
  used in `step_001`; they are not primitive event hypotheses.  The auxiliary
  `E_lb` lower-tail event is also derived in `step_001`, by Gaussian
  anti-concentration on disjoint label pairs after normalization, and is
  included in the probability budget rather than promoted to an assumption.
- H/J/K, S, leakage, both transfer gaps, and all small-gain margins are
  derived in `step_002` from `E_inst` and the exact displayed transfer map.
- `Theta_I` and the local zero-diagonal precommit `z` definition are
  conditional outputs of `step_003`; their history input `A_I` is legal only
  when supplied by an earlier accepted prefix.  The quantitative rowwise
  bound for that already defined `z` is a separate derived output of
  `step_007`.
- Full-history source exclusion is a derived output of `step_003b`, not a
  prefix assumption.  At each earlier accepted commit, the radial and angular
  certificate gives the exact post-fit normal residual
  `P_M^perp(R_(I_t) times_(N!=M) u_(t,N)^T)`.  Generated injection and
  `R-euc` make the off-diagonal coefficients products of correlations between
  distinct matched slots.  The pair-Khatri--Rao event and the upper Gram
  margin yield `q_nor<=1/4`; triangular inversion then produces
  `(SE-perp)`.  `step_009` supplies the prior certificate/matching records in
  temporal order, beginning with the exact zero-history base case.
- Matching, separation, calibration, row profiles, charges, and transaction
  invariants are generated outputs.  `step_009` is the noncircular bridge from
  the empty state to the all-prefix interface.
- The tape law is primitive only through `assump:random-tape`; success,
  injection, and all-commit events are derived in `steps_010--012`.
- PL constants and chart entry are derived in `steps_013--014`; no chart
  membership is assumed at terminal descent.  `step_013` produces the
  weight-scaled radius from exact-target Jacobian/Taylor controls.
  `step_014` consumes the actual all-commit tuple and per-commit `R-euc`,
  proves full-state orbit alignment, and dominates its `sqrt(r) eta0`
  residual at the consumed radius.  The raw `r^2e` ledger remains a separate
  tensor-influence output and is never recast as factor distance.  The exact
  `H=0,e=0` limit is handled by equality and a constant-relative chart.

## Mechanism-Source And Boundary Stress

### Static event, source, and transfer (`steps_001--003`)

- Step ID: `step_001`.
- Claim class: event membership, conditioning, exact representation, and
  baseline preservation.
- Theorem role: supplies the only once-drawn source for every later static
  object.
- Mechanism source: Gaussian concentration and normalization from the named
  primitive assumptions, the signed normalized-Gram margin, direct Schur
  product identities, and the exact balanced CP representation.
- Source-to-claim adequacy: the perturbation tail/epsilon-net statements are
  applied to the same realized columns and their exact normalized Gram
  convention; all union probabilities and pair/triple maps are explicit.
- Residual-to-target adequacy: produced `A,B,C,T` are exactly the consumed
  realized target, measured in the stated Euclidean/Frobenius metrics; no
  surrogate or whitening bridge is used.
- Key positive/control term or structural source: primitive Gram reserve and
  nonzero column norm reserve.
- Opposing defects: Gaussian norm and Gram deviations; each is bounded below a
  fixed fraction of the reserve.
- Closure/dominance relation: union-tail bounds plus `nu_star` slack imply
  `nu_real <= 2 nu_star`, weight ratio `<=2 Gamma_star`, and pair/triple gaps.
  In addition, before intersecting the norm event expose one independent
  Gaussian cross-coordinate for each of `floor(r/2)` disjoint label pairs in
  one mode.  Its conditional standard deviation is at least
  `c rho/(sqrt(n) kappa)`, so a density bound makes the probability of every
  raw coordinate being below `c rho/(sqrt(n) kappa r^40)` at most `r^(-20)`;
  the norm event then transfers this raw bound to normalized Grams.
  The definition of `P` and the polynomial bounds on `rho^(-1),kappa,k` give a
  fixed `D_lb` with `P^(-D_lb)` below this threshold, hence exports
  `E_lb={nu_real>=P^(-D_lb)}`.  This lower tail is a derived event, not a
  primitive lower bound.
- Accumulation behavior / scope compatibility: once-drawn, no trajectory
  accumulation.
- Obligation locality classification: step-local.
- Noncircular closure status: primitive tails -> `step_001` -> `step_002` and
  `step_013`; no generated output is used to prove the event.
- Entry-state / first-update stress result: exact target and empty state are
  valid; zero tensor is handled by the stated early return.
- Baseline conclusion preserved: orthogonal equal-weight input gives exact
  representation and zero loss.
- Producer-consumer provenance: `step_001` exports the exact realized object
  consumed by all later static, prefix, and terminal steps, including the
  `E_lb`/exact-limit branch used by `step_009`.
- Null or boundary regime tested: zero perturbation/exact-limit, nonzero
  smoothing lower tail, nonzero minimum norm, and equality at the Gram reserve.
  The exact-limit branch sets `H=0,e=0`; finite smoothing uses `E_lb`.
- Target conclusion false if source vanishes: without norm/Gram reserve,
  conditioning and exact-target chart can fail; without the derived lower-tail
  branch, a positive `e` could not be absorbed into `nu^2`.
- Repair route if source is unsupported: none; all source identities are fixed.

- Step ID: `step_002`.
- Claim class: positive small-gain and resolvent gap.
- Theorem role: controls all repeated history transfers.
- Mechanism source: direct columnwise Cauchy-Schwarz for H, Schur products for
  K, the exact J blocks, and the three-mode transfer map in `setting.md`.
- Source-to-claim adequacy: the source uses signed Gram entries only through
  their absolute values and never asserts an operator norm for `|G-I|`.
- Residual-to-target adequacy: H/J/K and transfer arrays have exactly the
  domain and zero-diagonal convention consumed by `Theta` and charges.
- Key positive/control term or structural source: `nu_real` column l2 bound and
  `||K||_1 <= nu_real^2`.
- Opposing defects: eta padding and J row sums; both are explicit in the
  displayed factor `2(nu+eta0)(1+sqrt(r)nu)`.
- Closure/dominance relation: choose constants so `q_res,q_row <= 1/4`.
- Accumulation behavior / scope compatibility: geometric Neumann summation has
  finite norm `1/(1-q)`.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_001 -> step_002 -> step_003`; no history is
  used in the gap proof.
- Entry-state / first-update stress result: empty history is compatible with
  the same static gap.
- Baseline conclusion preserved: H/K/S vanish in the orthogonal limit.
- Producer-consumer provenance: `step_002` feeds `steps_003--009,013`.
- Null or boundary regime tested: H=0 and q=0; q=1 is excluded by the
  primitive margin and fixed slack.
- Target conclusion false if source vanishes: no resolvent control at q>=1.
- Repair route if source is unsupported: none under the approved margin.

- Step ID: `step_003`.
- Claim class: conditional resolvent output and local precommit profile
  definition.
- Theorem role: provides the exact local `z` array needed by the next
  accepted-error expansion, while leaving its quantitative rowwise bound to
  `step_007`.
- Mechanism source: the convergent statewise Neumann envelope from the exact
  transfer map, the prior protected prefix, and the proof-only zero-diagonal
  convention in the setting.
- Source-to-claim adequacy: for every legal precommit state and candidate
  root `p`, define
  `z_(p,M,ell)=Theta_(I;p,M,ell)+C_num P^(-D_stat)` for `ell!=p` and
  `z_(p,M,p)=0`.  This is an algebraic local definition from an already
  produced `Theta`; it makes no claim that `z` is small, rowwise bounded, or
  available to the algorithm.
- Residual-to-target adequacy: the local array uses the same root/mode/label
  coordinates and zero diagonal consumed by `J-charge`, `Xi`, and `Upsilon`;
  it is an analysis object, not a transformed tensor or factor-space target.
- Key positive/control term or structural source: the Neumann resolvent and
  its `q_res<=1/4` convergence margin.
- Opposing defects: history forcing and numerical padding remain explicit in
  the entries; no norm simplification is performed at this step.
- Closure/dominance relation: the definition is finite and well-defined for
  every legal prefix, including `I=emptyset`; `step_006` may expand the exact
  charge using this local profile, while `step_007` later proves its raw
  rootwise norm bound.
- Accumulation behavior / scope compatibility: one conditional profile per
  candidate precommit state; no repeated-scope bound is exported here.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_002 -> step_003`; local `z` is produced
  before `step_006`, and its norm bound is not used to define the charge.
- Entry-state / first-update stress result: at the empty prefix `A=0` and
  `Theta` is the static Neumann source plus numerical padding; the diagonal
  remains exactly zero.
- Baseline conclusion preserved: `H=0,e=0` gives the exact zero structural
  profile and zero numerical padding.
- Producer-consumer provenance: `step_003 -> step_006 -> step_007` for
  local charge expansion followed by the later quantitative bound.
- Null or boundary regime tested: empty prefix, zero diagonal, tiny positive
  numerical padding, and exact H/e zero.
- Target conclusion false if source vanishes: without a legal local profile,
  the J charge would have an undefined generated input; no theorem claim is
  made from the profile alone.
- Repair route if source is unsupported: `/proof-sketch`.

### Full-history source exclusion and capture bridge (`step_003b`)

- Step ID: `step_003b`.
- Claim class: generated source support, residual-to-target transfer, and
  quantitative capture/curvature interface.
- Theorem role: supplies the first legal full-space history control consumed by
  `step_004`; it also prevents the invisible outside-span certificate from the
  archived Step 004 obstruction.
- Mechanism source: the exact post-commit radial/angular certificate equations,
  the already generated distinct-label injection and `R-euc` records for
  earlier commits, and the realized pair-Khatri--Rao Gram bound.  The proof
  pattern is supported by the true-factor-span/Khatri--Rao projection
  ingredients identified in *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* (NeurIPS 2025, official proceedings
  page) and the source-span invariant technique in *Beyond Lazy Training for
  Over-parameterized Tensor Decomposition* (arXiv:2010.11356).  Those papers
  use different algorithms/objectives and are not theorem wrappers here; the
  actual output is a direct current-notation derivation under `setting.md`.
- Source-to-claim adequacy: let `P_M` project onto the full realized source
  span and let `Pi_star=P_A tensor P_B tensor P_C`.  For an earlier accepted
  slot `t`, with matched label `p_t`, define

  ```
  a_(t,M) = g_t^3 P_M^perp u_(t,M),
  b_(t,A) = P_A^perp (R_(I_t) times_2 u_(t,B)^T times_3 u_(t,C)^T),
  ```

  with cyclic definitions.  The exact target term disappears after `P_M^perp`
  because `T` lies in the source product span.  The radial and angular
  certificate at the same accepted slot, including its post-commit residual,
  gives `||b_(t,M)||_2 <= e Lambda_nor`; this is an observable consequence,
  not a new condition.  The exact contraction identity is the triangular
  normal system

  ```
  a_(t,M) + sum_(q<t) c_(q,t,M) a_(q,M) = -b_(t,M),
  c_(q,t,A) = <u_(q,B),u_(t,B)> <u_(q,C),u_(t,C)>.
  ```

  Matching to distinct labels and `R-euc` imply
  `sum_(q<t)|c_(q,t,M)| <= q_nor`, where
  `q_nor = nu^2+4 delta_led sqrt(r)nu+4r delta_led^2 <= 1/4`.
  The same calculation holds cyclically.  Thus triangular Neumann inversion
  gives `sum_(t,M)||a_(t,M)||_2 <= 3r Lambda_nor e/(1-q_nor)`.
  Telescoping each rank-one slot through the three projectors yields
  `(SE-perp)` with `B_perp` as defined above.  This is a full tensor
  Frobenius and product-spectral bound, not merely a sampled contraction bound.
- Residual-to-target adequacy: the produced object is the actual residual
  `R_I` and the consumed target is the same realized `T` on the full ambient
  product spheres.  The exact decomposition is
  `R_I = Pi_star R_I + (Id-Pi_star)R_I`, with the second term equal to the
  source-normal part of the accepted-history tensor.  For every target-frame
  test tensor `psi` (including every entry used in `A_I`),
  `<Pi_star R_I,psi>=<R_I,psi>` exactly; hence `A_I` and `Theta_I` are not
  changed by the projection.  The bridge also exports the quantitative
  transfer inequalities, uniformly for unit tangent `xi`,

  ```
  |s_I-s_parallel| <= B_perp,
  ||grad_S s_I-grad_S s_parallel||_2 <= sqrt(3) B_perp,
  |<Hess_S s_I-Hess_S s_parallel> xi,xi>| <= 3 B_perp ||xi||_2^2,
  | ||R_I||_F-||Pi_star R_I||_F | <= B_perp.
  ```

  The unresolved target norm lower bound from the pair/triple Gram reserve and
  the accepted-history telescoping bound gives `||R_I||_F>=c_R tau_min`.
  Choosing `D_stat` after `D_gap,D_cap` then proves `(SE-scale)`, so every
  residual term is below the exact target-side capture and curvature scales.
- Key positive/control term or structural source: the unit diagonal in the
  triangular normal system and the pair-Khatri--Rao small-gain margin.  The
  numerical stationarity residual is the only forcing term; structural
  within-span errors do not force the source-normal recurrence because the
  exact target is annihilated by `P_M^perp`.
- Opposing defect terms: numerical radial mismatch, angular gradient error,
  off-diagonal correlations between distinct matched slots, and products of
  their `R-euc` direction errors.  They are separated into the forcing
  `e Lambda_nor` and the coefficient budget `q_nor`; no `nu^2` term is hidden
  in the source-normal bound.
- Closure/dominance relation: `q_nor<=1/4` gives a finite triangular
  Neumann inverse.  The resulting `B_perp` is compared explicitly with
  `tau_min/r`, `||R_I||_F P^(-D_cap/2)`, and
  `N_I(g)P^(-D_gap)/g^3`.  Therefore an outside-span score cannot satisfy the
  capture certificate, and outside-span perturbations cannot close the
  angular Hessian gap.  The projected residual then receives the unchanged
  `A_I/Theta_I` target-frame controls, so Step 004's exchange argument has a
  legal source for every defect class.
- Accumulation behavior / scope compatibility: the normal equations are a
  finite prefix recurrence over `t<=s<=r`; the off-diagonal coefficients are
  absolutely summable by `q_nor`, and the forcing accumulates only as
  `r e Lambda_nor`.  The one-step relation is the displayed triangular
  equation, and the finite inverse `(1-q_nor)^(-1)` is valid uniformly for all
  commit orders.  No failed transaction enters this recurrence because exact
  rollback leaves the prefix unchanged.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_001` supplies the source spans and pair
  Gram reserve; each earlier accepted application of `steps_004--005` supplies
  its matching, `R-euc`, and certificate record; the direct normal-equation
  calculation produces `a_(t,M)` and `B_perp` before the current `step_004`
  call.  `step_009` is the noncircular producer of this temporal prefix path,
  beginning with `I=emptyset` and `B_perp=0`; `step_003b` never assumes its
  own source-normal conclusion.
- Entry-state / first-update stress result: at the empty prefix there are no
  rows in the triangular system and `(Id-Pi_star)R_empty=0`.  For the first
  accepted slot the equation is `a_(1,M)=-b_(1,M)`, so only numerical
  stationarity can create a source-normal component.  In the exact
  `H=0,e=0` branch all `b_(t,M)=0`, hence all normal components vanish.
- Baseline conclusion preserved: the exact orthogonal/noiseless target remains
  an exact atom-wise certificate and zero-loss representation; the bridge adds
  no floor and is equality in that limit.
- Producer-consumer provenance: `step_003b` consumes `step_001--003` and
  prior generated certificate/matching records supplied by `step_009`; it
  exports `(SE-perp)`, `(SE-scale)`, and the projected target-frame identity
  to `step_004`, then to `step_005`, `step_009`, `step_011`, and the final
  capture/rate audit.
- Null or boundary regime tested: empty history, first commit, exact
  orthogonal/noiseless limit, `e>0` with `nu=0`, tiny positive `nu`, the
  separation boundary, and the archived invisible rank-one completion.  The
  latter would require `B_perp` at least its witness amplitude; `(SE-scale)`
  rules this out uniformly, including when `P` grows through `n`.
- Target conclusion false if source vanishes: without the unit diagonal or
  pair-Khatri--Rao gap, the triangular normal system can amplify history and an
  outside-span rank-one certificate can pass; without `(SE-scale)`, the
  capture and curvature thresholds do not exclude that witness.
- Repair route if source is unsupported: `/proof-sketch` if a same-setting
  interface detail is missing; `/subagent-idea-generator` only if the direct
  normal recurrence or `(SE-scale)` is contradicted by an allowed instance.

### Conditional landscape and matching (`steps_004--005`)

- Step IDs: `step_004`, `step_005`.
- Claim class: local isolation, signed descent/curvature, separation, and
  generated matching.
- Theorem role: converts an observable certificate into a theorem-facing atom
  and calibration output.
- Mechanism source: direct product-sphere score, gradient, Hessian, and radial
  root equations for the exact current residual, after the generated
  source-normal bridge `step_003b`; static H/J/K paths and conditional
  `Theta_I` bound target-frame history defects, while `(SE-perp)` bounds the
  remaining full-space defect.
- Source-to-claim adequacy: all equations use the full ambient spheres and the
  exact protected residual; projection transfer is exact on target-frame
  coordinates and `(SE-scale)` bounds its score/gradient/Hessian discrepancy
  at the certificate scales.  Sign choices are analysis-only and product-one.
- Residual-to-target adequacy: the produced slot and consumed atom are both
  normalized realized factors, with explicit Euclidean and radius comparison
  `(R-euc)`; no projected or surrogate target is introduced.
- Key positive/control term or structural source: positive isolated score,
  angular Hessian gap, radial equation `g^3=s_I`, and observable capture.
- Opposing defects: static leakage, projected accepted-history forcing,
  source-normal forcing `B_perp`, numerical e, mixed-support curvature, and
  separation ambiguity.  `Theta_I` controls the target-frame class and
  `(SE-scale)` controls the source-normal class before the chosen gaps are
  invoked.
- Closure/dominance relation: singleton-vs-mixed-support dichotomy; a small
  gradient state is either certified or supplies a negative-curvature witness.
- Accumulation behavior / scope compatibility: conditional on one legal prefix;
  no cross-prefix claim is made until `step_009`.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_003` and `step_003b` produce the complete
  current-residual interface -> `step_004` -> `step_005`; `step_009` later
  supplies the prior-prefix records used by `step_003b`.
- Entry-state / first-update stress result: empty state has `A=0`; positive
  score seeds activate the radial root, while zero/negative score seeds are
  unsuccessful or sign-flipped.
- Baseline conclusion preserved: exact atom certificates at H=A=e=0 are
  matched exactly and remain separated.
- Producer-consumer provenance: outputs feed `steps_006,009,011,014`.
- Null or boundary regime tested: empty protected set, zero score, partial
  support, straddling support, and separation threshold `1/4`.
- Target conclusion false if source vanishes: without the source-normal
  comparison, the archived invisible rank-one certificate satisfies every
  observable test while identifying no label; without the projected
  target-frame source, a mixed certificate need not identify a label.
- Repair route if source is unsupported: `/proof-sketch` for a missing transfer
  inequality; `/subagent-idea-generator` only if the source-normal recurrence
  is false under the unchanged contract.

### J transition, local audit, and global accumulation (`steps_006--009`)

- Step IDs: `step_006`, `step_007`, `step_008`, `step_009`.
- Claim class: signed multilinear update, generated invariant, finite-prefix
  recurrence, and accumulated-error control.
- Theorem role: supplies the noncircular producer for all accepted histories.
- Mechanism source: exact expansion of `E_i`, product-one sign calibration,
  the same `J_M(p,ell)` in the positive and baseline products, the local
  precommit `z` definition produced by `step_003`, the full-history
  source-normal output of `step_003b`, and the nonnegative rootwise Neumann
  transfer used later for the quantitative bound.
- Source-to-claim adequacy: the exact J identity is derived in current
  notation; for `ell=p`, `J_M(p,p)=1` and `z` has zero diagonal; for
  `ell!=p`, `J_M(p,ell)=H_M(p,ell)`.  The `O(h^4+e h+e^2)` statement is
  invoked only on the isolated O.1 verification family in which every other
  displayed label is orthogonal and therefore `nu_real=h`.  In a two-label
  block embedded in a larger correlated instance, the exact expansion is
  retained but the structural term is bounded by the global
  `nu_real^2 h^2` ledger instead of being relabeled `h^4`.  Cyclic modes use
  the same convention.
- Residual-to-target adequacy: `E_i` is the actual accepted tensor error and
  `A_I` contracts it against the exact realized target frame; the J baseline is
  the exact target term, not an orthogonal surrogate.
- Key positive/control term or structural source: `eta0 H_B H_C` and the
  exact J baseline cancellation, plus rootwise l2 factorization.
- Opposing defect terms: radial/directional calibration errors, `H z`, `z z`,
  and numerical `e h` and `e^2` padding.  They are retained explicitly in
  `step_006` using the local `z`; the rowwise norm estimate is a later
  `step_007` output and is not a prerequisite for the local expansion.
- Closure/dominance relation: on the isolated family with `nu_real=h`, the
  local O.1 export is `Upsilon_tilde = O(h^4 + e h + e^2)` and has matching
  positive lower terms; at `h=e^2` it is at least the needed order and
  dominates `2h^4+O(h^6)`.  After that local expansion, `step_007` uses
  rootwise Cauchy--Schwarz to export, before any specialization,
  `||z_p||_2 <= C(nu^2+r nu^3+sqrt(r)e)` and sums the global structural and
  numerical terms as `O(r nu^3+r^2e)`.  These raw terms feed every consumer.
  On `E_lb`, the derived inequalities in the formalized-setting section may
  then recover the displayed `C'_z nu^2` simplification; in the exact
  `H=0,e=0` baseline it holds by equality.  No claim is made that finite
  positive padding is dominated when `nu<nu_lb`.
- Accumulation behavior / scope compatibility: one nonnegative charge per
  captured label/root/tested-label/mode, finite prefix `s<=r`; `J-update`
  charges the next history and `R-acc` charges accepted tensor influence.
  The exact one-step relation is `Delta A <= 2 Gamma_star Upsilon`; no failed
  probe enters the recurrence because rollback is exact.
- Obligation locality classification: step-local.
- Noncircular closure status: base `I_0=emptyset,A_0=0`; `step_003` defines
  local `z`, `step_003b` supplies source-normal residual control,
  `step_006` proves one exact charge, `step_007` supplies the
  quantitative row bound, then `step_008` produces the next budget and
  `step_009` advances the abstract induction.
- Entry-state / first-update stress result: on the isolated family
  `nu_real=h`, the cases `h=0`, `0<h<<e`, and `h=e^2` are audited.  The
  positive e terms handle the small-h local charge; the finite-smoothed
  theorem branch uses `E_lb` for global simplification, while the exact
  orthogonal limit sets `H=e=0` and actual errors to zero.  Dense/block and
  larger-embedding cases retain `nu_real^2 h^2` and the raw global budget.
- Baseline conclusion preserved: exact orthogonal charges and accepted forcing
  vanish; rollback and joint-zero slots preserve zero loss.
- Producer-consumer provenance: `step_003,step_003b -> step_006 -> step_007`;
  `step_006,step_007 -> step_008 -> step_009 -> steps_010--016`.
- Null or boundary regime tested: captured-label diagonal, off-diagonal
  transitive chain, zero z diagonal, and all-zero H.
- Target conclusion false if source vanishes: omitting the J identity or the
  positive numerical terms would lose the diagonal transition; omitting the
  rootwise factorization would introduce an invalid label factor.
- Repair route if source is unsupported: `/proof-sketch` for a local derivation
  issue; `/subagent-idea-generator` only if the honest interface itself fails.

### Transactions, tape, PL, and rate (`steps_010--016`)

- Step IDs: `steps_010--012`.
- Claim class: reachable certificate, probability amplification, rollback, and
  generated all-commit output.
- Mechanism source: exact radial derivative, safeguarded bracketing, compact
  guard smoothness, dyadic Armijo decrease, two-sign negative-curvature trial,
  Haar anti-concentration, and the independent tape primitive.
- Source-to-claim adequacy: dynamics use only observable exact-loss quantities;
  target labels and H/J/K are never queried by the algorithm.
- Residual-to-target adequacy: successful scratch slots are actual committed
  factors; failed slots are exactly the pretransaction joint-zero state.
- Key positive/control term or structural source: radial root and angular gap,
  inverse-polynomial accepted step, and a polynomial Haar activation window.
- Opposing defect terms: zero score, guard violation, ambiguous certificate,
  line-search exhaustion, and tape exhaustion; each is classified as failure
  with exact rollback or absorbed by the polynomial tail.
- Closure/dominance relation: history-uniform `p_tx >= (nr)^(-c_tx)` and a
  stopped geometric/binomial tail yield all r distinct labels.
- Accumulation behavior / scope compatibility: failed probes have zero forcing;
  `step_009` has already proved the abstract success/failure prefix
  preservation interface, and concrete successful commits are finite outputs
  of `step_010` consumed by `step_011` and `step_012`; no transaction output
  flows backward into `step_009`.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_009 -> step_010 -> step_011 -> step_012`.
- Entry-state / first-update stress result: empty scratch is joint zero; a
  negative seed is sign-flipped, zero score fails, and the first accepted
  transaction is covered by the same prefix interface.
- Baseline conclusion preserved: exact rollback and finite tape do not alter
  the represented tensor on failure.
- Producer-consumer provenance: `step_012` produces the actual tuple consumed
  by `step_014`.
- Null or boundary regime tested: zero score, missing radial root, radius guard,
  exhausted work, and exact target.
- Target conclusion false if source vanishes: without Haar activation or exact
  rollback, all-commit reachability and no-forcing claims fail.
- Repair route if source is unsupported: `/proof-sketch` for a probability or
  dynamics interface defect.

- Step ID: `step_013`.
- Claim class: exact-target coercivity, positive chart radius, quadratic
  growth, and PL.
- Theorem role: produces the terminal geometry before the discovered tuple is
  tested for membership.
- Mechanism source: the direct balanced CP Jacobian at the exact generally
  nonorthogonal target, the pair/triple Gram reserves from `step_001`, and a
  current-notation Taylor expansion on the active balanced manifold.
- Source-to-claim adequacy: after choosing one representative of the finite
  sign/permutation orbit, every balanced tangent vector `Delta` obeys
  `c_J g_minus^2 ||Delta||_2 <= ||D Psi(Qstar)Delta||_F <=
  C_J g_plus^2 ||Delta||_2`.  The lower inequality follows from the pair and
  triple Khatri--Rao gaps and removal of continuous CP scaling by balance.
  Slotwise multilinearity and Cauchy--Schwarz give, conservatively,
  `||D Psi(Q)-D Psi(Qstar)||_op <= C_T r g_plus dist(Q,Zstar)` and a residual
  Hessian term at most `C_T r g_plus^3 dist(Q,Zstar)`.  These are the exact
  branch conventions and require no external citation.
- Residual-to-target adequacy: the reference is the exact `Qstar` orbit, the
  chart norm is the setting's full rank-k Euclidean factor norm, and the
  residual is the exact Frobenius tensor residual.  No population,
  orthogonalized, whitened, or contracted surrogate appears.
- Key positive/control term or structural source: the Jacobian floor
  `c_J g_minus^2` and hence the exact-root Hessian floor of order
  `g_minus^4`.
- Opposing defect terms: off-diagonal pair/triple Gram terms, Jacobian
  variation, the residual-times-second-derivative Hessian term, finite-orbit
  ambiguity, and the radius guard.
- Closure/dominance relation: set
  `varrho_PL=c_chart g_minus/r`, with `c_chart` smaller than fixed multiples
  of `c_J/chi_tau` and `c_J^2/chi_tau^3`.  Then both Taylor defects are at
  most one quarter of the exact-root floors.  Orbit representatives remain
  separated and the factor guard has fixed slack.  In aligned normal
  coordinates this gives
  `c_F g_minus^4 dist(Q,Zstar)^2 <= F(Q) <=
  C_F g_plus^4 dist(Q,Zstar)^2` and
  `||grad_bal F(Q)||_F^2 >= 2 c_mu g_minus^4 F(Q)` throughout the chart.
  Since `g_minus>=(2kappa)^(-1)` and `kappa<=r^c0`, this also gives
  `varrho_PL>=c_chart/(2 kappa r)` and
  `mu_PL>=c_mu/(16 kappa^4)`.  Taking a fixed `D_PL` larger than the
  corresponding powers of `1+c0` and `4c0` makes both lower bounds at least
  `P^(-D_PL)` using `P>=r`.
  The same direct derivative bounds produce the compact-chart Lipschitz
  interface `L_chart=C_L g_plus^4` for the balanced gradient.  From this
  already defined scale, the quadratic constants, and the fixed Armijo
  parameters, define the explicit fixed reserve coefficient
  `C_path_star=C_path_star(c_F,C_F,c_mu,C_L,chi_tau,Armijo)`; `step_015`
  proves the planned path bound with this already produced coefficient.
- Accumulation behavior / scope compatibility: local deterministic geometry;
  no trajectory or repeated-scope premise is used to produce it.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_001 -> step_013`; chart geometry is proved
  before `step_014` tests the discovered tuple and before `step_015` descends.
- Entry-state / first-update stress result: at `Qstar`, the residual and
  gradient are zero and the positive Jacobian/Hessian floor is already
  active in every nonzero balanced tangent direction.
- Baseline conclusion preserved: when `H=0,e=0`, the block-orthogonal
  Jacobian calculation also exports the larger constant-relative radius
  `varrho_orth=c_orth g_minus`; the exact target is a zero-loss fixed point.
- Producer-consumer provenance: `step_001 -> step_013 -> steps_014,015`.
- Null or boundary regime tested: exact target, finite-orbit boundary, minimum
  weight, maximum allowed weight ratio, and chart boundary.
- Target conclusion false if source vanishes: without the pair/triple gap or
  positive target weights, the balanced Jacobian floor and PL may vanish.
- Repair route if source is unsupported: `/proof-sketch`; no unsupported
  source is currently needed.

- Step ID: `step_014`.
- Claim class: generated same-target basin membership and full-state
  residual-to-target transfer.
- Theorem role: provides the sole legal discovery-to-terminal bridge.
- Mechanism source: the bijection obtained from the all-commit injection,
  product-one analysis signs, per-commit `R-euc`, the cube-root mean-value
  identity, realized product-weight balance, the upper Gram margin, and the
  fixed numerical exponent.  `R-acc` is not a mechanism source for this
  factor-space claim.
- Source-to-claim adequacy: if slot `i` is matched to label `p`, then
  `g_i=g_p^star(1+delta_i)^(1/3)` and, once `|delta_i|<=1/2`,
  `||sigma_(i,M)g_i u_(i,M)-g_p^star m_(p,M)||_2 <=
  C_ent g_p^star(|delta_i|+||e_(i,M)||_2)`.  Summing the three modes and all
  `r` active slots after the generated permutation gives the exact raw bridge
  `dist(Q_fin,Zstar) <= C_ent g_plus sqrt(3r) eta0`.  Joint-zero unused slots
  agree exactly with their target slots.
- Residual-to-target adequacy: the produced object is the actual tuple from
  `step_012`; the consumed object is the exact `Qstar` orbit; both use the
  full-state Euclidean factor metric.  The residual decomposition consists
  only of cube-root radial error and signed direction error, each controlled
  by `R-euc`.  The `sqrt(r)` term is retained.  `R-acc` remains an exact
  tensor-contraction/influence budget and supplies no term in this transfer.
- Key positive/control term or structural source: the weight-scaled radius
  from `step_013` and the upper source bound `nu<=2/(C_nu r log(2r))`.
- Opposing defect terms: `sqrt(r)` accumulation of the per-slot structural
  error `Gamma_star nu^2`, numerical padding `sqrt(r)e`, weight scale
  `g_plus`, and finite sign/permutation alignment.
- Closure/dominance relation: fix
  `theta_ent <= min{1/2,1/(4C_path_star),
  (1/4)sqrt(c_F/C_F)chi_tau^(-2)}`, where `C_path_star` is the fixed local Armijo
  reserve coefficient produced with the geometry in `step_013`.  Dividing
  the raw bridge by
  `varrho_PL` reduces entry to
  `C_ent sqrt(3) chi_tau r^(3/2) eta0 <= theta_ent c_chart`.  The two raw
  pieces satisfy
  `r^(3/2) Gamma_star nu^2 <=
  4 Gamma_star/(C_nu^2 sqrt(r) log^2(2r))` and, since the setting definition
  gives `P=16*n*r*k*kappa*rho^(-1)>=r` and the already
  required choice has `D_stat>=2`,
  `r^(3/2)e <= r^(-1/2)`.  Choose the fixed source margin and `r_0` after
  `c_chart,theta_ent,C_ent` so the displayed sum is at most the right side.
  Hence `dist(Q_fin,Zstar)<=theta_ent varrho_PL<=varrho_PL/2` without `E_lb`
  and without any factor interpretation of `R-acc`.
- Accumulation behavior / scope compatibility: this is a one-time sum over
  exactly `r` committed slots; Cauchy--Schwarz produces the displayed
  `sqrt(r)` once, and no terminal iteration has started.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_005 -> step_009 -> step_012` produces the
  bijection, signs, calibration, and actual tuple; independently
  `step_001 -> step_013` produces weights and the radius; `step_014` compares
  them before `step_015` consumes chart membership.
- Entry-state / first-update stress result: independent two-label blocks may
  realize factor distance of order `g_plus sqrt(r)h^2`; because
  `h<=2/(C_nu r log(2r))`, its ratio to `g_minus/r` is
  `O(chi_tau/(sqrt(r)log^2(2r)))`, so the formerly blocking family now enters.
  At `H=0,e=0`, `eta0=0` and the aligned tuple equals `Qstar` exactly.
- Baseline conclusion preserved: exact orthogonal entry has zero residual and
  consumes the constant-relative orthogonal chart, not a positive numerical
  remainder.
- Producer-consumer provenance: `steps_001,005,012,013 -> step_014 ->
  steps_015,016`.
- Null or boundary regime tested: independent O.1 blocks, maximum allowed
  `nu`, minimum target weight, exact H/e zero, and entry at the reserve.
- Target conclusion false if source vanishes: without `R-euc` or the
  weight-scaled radius, full-state chart membership would again be unproved.
- Repair route if source is unsupported: `/proof-sketch`; the present bridge
  uses only existing setting outputs.

- Step IDs: `steps_015--016`.
- Claim class: first-exit invariance, contraction, explicit public rate, and
  exact-limit specialization.
- Theorem role: terminal convergence and final theorem assembly.
- Mechanism source: the `step_013` quadratic sandwich and PL inequality, the
  strict `step_014` entry reserve, compact chart smoothness, exact-loss
  balanced trust-region Armijo decrease, and direct parameter substitution.
- Source-to-claim adequacy: the local condition number is bounded by a fixed
  function of `chi_tau` and the Gram reserves, and the chart gradient has the
  already produced Lipschitz scale `L_chart=C_L g_plus^4`.  The Armijo proof
  therefore exports the fixed reserve coefficient `C_path_star`; `step_015`
  proves the total terminal factor path is at most
  `C_path_star dist(Q_fin,Zstar)`, while exact loss decreases geometrically at an
  inverse-polynomial step rate.
- Residual-to-target adequacy: every iterate, gradient, loss, and stopping
  criterion refers to the same exact target and full-state/Frobenius metrics.
  The `theta_ent` reserve makes the total path smaller than the distance to
  the chart boundary.
- Key positive/control term or structural source: `mu_PL>=c_mu g_minus^4`,
  the entry reserve, and exact monotone loss decrease.
- Opposing defect terms: Taylor and retraction remainders, line-search
  truncation, chart-boundary distance, and the finite initial error.  There is
  no repeated additive numerical forcing after discovery.
- Closure/dominance relation: the produced `L_chart=C_L g_plus^4` and the
  fixed Armijo reserve give `C_path_star`; entry plus that path bound gives
  first-exit invariance.  PL and Armijo give geometric loss decay until
  `||R(Q)||_F<=epsilon||T||_F`.  The radius and PL bounds satisfy
  `varrho_PL,mu_PL>=P^(-D_PL)` for one fixed `D_PL` because
  `g_minus>=(2kappa)^(-1)`, `kappa<=r^c0`, and `P>=r`.
- Accumulation behavior / scope compatibility: contractive over the finite
  `O(poly(P)log(1/epsilon))` terminal horizon; the accumulated step length is
  bounded by `C_path_star` times the one-time entry error and no forcing persists.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_013 -> step_014 -> step_015 -> step_016`;
  the public specialization consumes only already produced bounds.
- Entry-state / first-update stress result: exact target is stationary and
  needs no update; a nonzero legal entry has an active PL gradient unless it
  is already below the requested residual tolerance.
- Baseline conclusion preserved: exact rollback, exact target equality,
  joint-zero unused slots, arbitrary `epsilon`, and no terminal floor remain.
- Producer-consumer provenance: `steps_013,014 -> step_015 -> step_016 ->
  final theorem`.
- Null or boundary regime tested: exact target, zero residual, chart boundary,
  and `epsilon` tending to zero.
- Target conclusion false if source vanishes: without PL or the strict entry
  reserve, first-exit invariance and arbitrary relative accuracy are not
  justified.
- Repair route if source is unsupported: `/proof-sketch` for a terminal
  interface defect.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst`, `E_lb`, realized target, norms, Grams, weights | `step_001` | six primitive source assumptions, Gaussian tails, dimension, smoothing margin, and disjoint-pair anti-concentration | norm/Gram deviations depend on `rho,kappa,n`; lower-tail failure is charged to `r^(-20)` and is not primitive | realized `A,B,C,T` are exactly the consumed objects | each deviation is reserved below `nu_star`; anti-concentration gives `nu>=P^(-D_lb)` only on `E_lb` | `nu_star`, pair/triple `1/16` gaps, `2 Gamma_star`, finite probability budget | `step_002`, `step_009`, `step_013`, `step_016` | None |
| H/J/K, leakage, S, transfer gaps | `step_002` | R-src, columnwise Cauchy--Schwarz, Schur products, exact transfer map | signed Gram entries, J padding, and row sums are kept distinct; no absolute-Gram operator claim | exact array domain and zero-diagonal convention match all downstream arrays | transfer norms are at most `2(nu+eta0)(1+sqrt(r)nu)` and yield `q_res,q_row<=1/4` | column l2 source, `K` l1 bound, and fixed Gram reserve | `step_003`, `steps_004--009`, `step_013` | None |
| Conditional `Theta_I` and local precommit `z` definition | `step_003` | S, conditional actual A, numerical all-ones source, both q gaps, and the zero-diagonal convention | static, history, and numerical forcing classes remain separate; no quantitative row bound is exported here | exact current residual coordinates and the locally defined z array use the same root/mode/label frame consumed by the J charge | nonnegative Neumann series converges with factor `1/(1-q_res)`; define `z_(p,M,ell)=Theta_(I;p,M,ell)+C_num e` off diagonal and zero on the diagonal | `q_res,q_row<=1/4`, empty-history base, and proof-only numerical padding | `steps_004,005,006,007` | None |
| Full-history source-normal exclusion and projected residual transfer | `step_003b` | prior accepted certificate/matching records, `R-euc`, `step_001` source spans and pair-Gram gap, `step_003` target-frame `A_I/Theta_I` | numerical post-fit forcing is controlled by `e Lambda_nor`; structural within-span errors remain in `A_I/Theta_I`; off-diagonal normal coefficients are controlled by `q_nor` | produced `R_I^parallel=Pi_star R_I` and consumed `R_I` use the same target and ambient metric; target-frame contractions are exactly equal, while `norm_(sigma,F)((Id-Pi_star)R_I)<=B_perp` | triangular normal equations plus `(1-q_nor)^(-1)` give `B_perp`; choose `D_stat` after `D_gap,D_cap` to satisfy `(SE-scale)` against `tau_min eta0`, `tau_min/r`, `norm_F(R_I) P^(-D_cap/2)`, and `N_I(g)P^(-D_gap)/g^3` | pair-Khatri--Rao unit diagonal, `q_nor<=1/4`, `c_R tau_min` residual reserve, and explicit `D_stat` slack | `step_004`, `step_005`, `step_009`, `step_011`, `step_016` | None |
| Certificate matching and calibration | `steps_004--005` | score, gradient, Hessian, radial equations, Theta, `(SE-perp)`, `(SE-scale)`, capture, and separation | projected target-frame, source-normal, numerical, mixed-support, and guard defects are split and bounded by their own sources | `step_003b` transfers the actual residual to its same-target projection with residual `B_perp`; the accepted scratch slot is then compared directly with the exact realized atom in factor Euclidean norm | `(SE-scale)` excludes outside-only certificates; singleton/mixed-support dichotomy and radial root export unique label, `R-euc`, `R-dir`, and the next normal-audit record | positive score/capture, angular gap, `eta0`, `B_perp`, separation `1/4` | `steps_006,009,011,014` | None |
| J charge, update, and honest O.1 audit | `step_006` | exact E expansion, calibration, weight ratio, J baseline, and local z from `step_003` | radial/directional errors, H-z, z-z, and positive e padding are split | accepted E and exact target-frame contractions share the same realized frame | isolated O.1 charge is `O(h^4+e h+e^2)` with positive terms retained; cyclic and off-diagonal identities are exact | J diagonal identity, `h=e^2` audit, and finite one-step charge | `steps_008,009` | None |
| Raw rootwise z bound and one-time global budgets | `steps_007--009` | already defined local z, prior prefix, q_row, rootwise Cauchy--Schwarz, and J update | structural `nu^3` and numerical `e` classes remain separate | A and Xi are exactly the consumed history/influence arrays, not factor distance | raw `norm_2(z)<=C(nu^2+rnu^3+sqrt(r)e)` and `O(rnu^3+r^2e)` are exported; only E_lb permits optional `nu^2` simplification | finite prefix, q_row, and exact-limit equality | later protected-state landscapes, transactions, and `step_016` audit | None |
| Transaction outcome and rollback | `step_010` | exact f and derivatives, radius guard, Armijo, and eigenvector routine | zero score, missing root, guard, line-search, and tape failures all restore the pretransaction state | scratch and rollback states are actual algorithm states | accepted nonstationary steps have the derived floor `P^(-D_ls)`; failure contributes zero | `H_tx`, `Delta_tr`, radius guard, exact rollback | `step_011` | None |
| One-seed and all-commit events | `steps_011--012` | Haar anti-concentration, deterministic flow, and independent tape | ambiguity and tape exhaustion are tail events; failed probes are zero forcing | successful slots are actual slots later aligned by the chart bridge | `p_tx`, stopped tail, and separate instance/tape probabilities yield all r commits | `N_tx`, `C_tape`, finite work | `step_014`, `step_016` | None |
| Exact-target PL geometry | `step_013` | pair/triple Gram gaps, `g_minus,g_plus`, exact balanced Jacobian, direct Taylor bounds, and the compact-chart derivative bound | nonorthogonal Jacobian terms and residual-Hessian terms are controlled at the chosen radius | exact `Qstar` orbit, full-state factor norm, and Frobenius residual are the consumed conventions | `varrho_PL=c_chart g_minus/r` makes Taylor defects below one quarter of the exact floor; derive `L_chart=C_L g_plus^4`, then define `C_path_star` from `C_L` and the quadratic/Armijo constants; quadratic sandwich and `mu_PL>=c_mu g_minus^4` follow | `c_J g_minus^2`, fixed `chi_tau`, guard/orbit slack, and fixed dimensionless `C_L`; radius and PL are at least `P^(-D_PL)` | `steps_014--016` | None |
| Same-target full-state chart entry | `step_014` | all-commit bijection/signs, per-commit `R-euc`, actual tuple, weight balance, upper Gram margin, `D_stat`, and step-013 radius | radial/direction errors and their `sqrt(r)` accumulation are controlled; `R-acc` is a wrong-interface source for factor distance and is not used | cube-root/direction decomposition transfers the actual tuple to exact `Qstar` in full-state Euclidean norm; unused zero slots agree exactly | divide by `c_chart g_minus/r`; `r^(3/2)Gamma_star nu^2<=4Gamma_star/(C_nu^2 sqrt(r)log^2(2r))` and `r^(3/2)e<=r^(-1/2)` give entry at `theta_ent varrho_PL<=varrho_PL/2` | `c_chart`, `theta_ent`, upper Gram reserve, `D_stat>=2`, finite `r_0`; exact H=e=0 gives equality | `steps_015--016` | None |
| Floor-free public rate | `steps_015--016` | PL, smoothness, epsilon range, all prior bridges, and separate probability events | Taylor, line-search, and public-substitution terms remain distinct from raw ledger terms | final norm is exact Frobenius residual against `T` | geometric contraction and first-exit path control yield arbitrary relative epsilon with no additive floor; E_lb is charged only for ledger simplification | `mu_PL`, epsilon, separate `1-r^(-10)` events, rank/runtime substitutions | final theorem | None |

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst` and exact representation | event, conditioning, baseline | Gaussian concentration, normalization, direct CP identities | primitive assumptions and current notation | same realized columns, Grams, and tensor as goal | normalized Gram and Frobenius conventions are identical | tail reserve below `nu_star`; Schur products below `1/16` | six source assumptions export every displayed event component | produced `T` is the consumed target exactly; no surrogate | one-drawn finite union, no accumulation | primitive assumptions -> `step_001` | `step_001` -> `steps_002,009,013,016` | zero perturbation and exact target pass | step-local | None |
| `E_lb` lower-tail branch | derived numerical nondegeneracy and absorption support | Gaussian anti-concentration for disjoint normalized cross-Gram coordinates | direct consequence of `assump:gaussian-smoothing`, norm event, and dimension/rho regimes | supports only the stated lower-tail comparison, not a primitive source condition | same normalized Gram convention and same `nu_real` consumed downstream | `P(E_lb^c)<=r^(-20)` and `nu_real>=P^(-D_lb)`; choose `D_stat` after `D_lb` so `r^2e,sqrt(r)e<=c nu^2` on this branch | raw variance `rho^2/n`, polynomial `rho^(-1),kappa`, and independent disjoint pairs are exposed | no object transfer; the branch is a property of the exact realized instance | once-drawn event, no trajectory accumulation | primitive Gaussian source -> `step_001` -> branch-aware `step_007/008/009/016` | `step_001` produces it; those steps consume it only for absorption, with `step_009` carrying the raw or branch-specialized row interface | tiny positive `nu`, exact H=0,e=0 limit, and lower-tail complement are explicitly separated | step-local | None |
| H/J/K and transfer gaps | positive small-gain, resolvent support | column l2 Cauchy-Schwarz, Schur products, exact `Tcal` | direct derivation from `step_001` in setting convention | R-src and both gaps have exact downstream shape | absolute entries are analysis-only; algorithm never queries them | transfer norm `2(nu+eta0)(1+sqrt(r)nu)`, `q<=1/4` | raw H columns and J rows control every displayed defect | same array domain and zero-diagonal embedding | geometric accumulation is summable by `1/(1-q)` | `step_001 -> step_002` | `step_002` -> `step_003` and ledger steps | H=0 gives q=0; q=1 excluded | step-local | None |
| Conditional `Theta_I` and local z | generated boundedness and local charge interface | nonnegative Neumann series and the zero-diagonal local z definition | direct current-notation derivation | conditional target and local z have the exact `Cert`/J-charge interfaces | exact array coordinates and balanced convention match the downstream charge; no full-space landscape claim is assigned here | `Theta` is convergent; local z is defined off diagonal with numerical padding; quantitative row control is deferred to step 007 | S, conditional A, e, q, and zero-diagonal convention are available before export | z is an analysis array in the same root/mode/label coordinates; it is not a surrogate tensor target | conditional within-state series; no repeated-scope bound is exported | `step_002 -> step_003`; `Theta` flows to `step_003b,step_007` and local z flows to `step_006` | `step_003` -> `step_003b,step_006,step_007`; the landscape consumer uses the separate source-normal bridge | empty A=0 and zero diagonal; mixed-support/boundary tests are deferred to `step_004` | step-local | None |
| Full-history source-normal exclusion and capture transfer | source support, residual-to-target bridge, capture/curvature scale | certificate post-fit normal equations, generated prior matching and `R-euc`, pair-Khatri--Rao gap; D1/F1 are provenance for the proof pattern only | direct current-notation derivation under the exact asymmetric source; cited papers are not wrappers because their procedures differ | source-normal rank-one witness is controlled in the same product-spectral/Frobenius metric consumed by the full-space Hessian; target-frame projections preserve `A_I/Theta_I` exactly | exact realized source-span projectors, asymmetric CP factors, and product-sphere residual convention match the current setting; cited papers are not used to transfer a theorem | `a_t + sum_(q<t) c_qt a_q=-b_t`, `norm(a_t)<=e Lambda_nor`, `sum_abs(c_qt)<=q_nor<=1/4`, telescoping -> `B_perp`, then `(SE-scale)` including `B_perp<=c tau_min eta0` | raw `R-euc`, pair-Gram row sums, and `q_nor` are available before export; target-frame contractions stay in `A_I/Theta_I` | actual `R_I` and `Pi_star R_I` share the same target; normal residual `B_perp` is dominated at the required capture and curvature scales | finite triangular recurrence; numerical forcing has sign-free norm `r e Lambda_nor`; no structural source-normal forcing accumulates | prior accepted records -> `step_003b` -> `step_004`; `step_009` supplies prior records and consumes the output; no circular self-use | `step_003b` -> `step_004,step_005,step_009,step_011` | empty prefix and first commit have zero structural normal term; invisible rank-one completion fails `(SE-scale)`; exact H=e=0 gives equality | step-local | None |
| Matching, calibration, injection | support/membership, generated entry | radial root, angular stationarity, finite sign orbit, and `step_003b` source-normal transfer | direct derivation from `steps_003b--004` and setting equations | `R-euc`,`R-dir`, and the stored normal audit are the exact consumed interfaces | signs are analysis-only; target labels are not algorithm inputs; projection uses the same realized source spans | choose `C_led,C_num` to dominate target-frame defects, while `(SE-scale)` dominates the separate source-normal residual | score, gap, capture, separation, `Theta`, and `B_perp` are available before export | actual accepted slot is compared with exact realized atom; projected residual error is bounded in the same ambient metric, not substituted as a surrogate target | one output per accepted commit, finite at most r | `step_003b -> step_004 -> step_005`; later `step_009` discharges prior-prefix records and invokes the bridge again | `step_005` -> `steps_003b,006,009,011,014` | empty state, first positive score, invisible-rank-one witness, ambiguous/zero score | step-local | None |
| J charge/update and O.1 audit | signed transition and local numerical interface | exact multilinear expansion with same J baseline and local z from step 003 | direct current-notation algebra | exact `J-update` and honest `J-two-label` have the setting target shape | `J_M(p,p)=1`, off-diagonal `J=H`, and zero-diagonal z are identical conventions | `O(h^4+e h+e^2)` retains positive `h z` and `z z`; dominates exact increment at `h=e^2` | calibration, weight ratio, H, local z, and eta are raw; structural and numerical classes are split | `E_i` and target-frame contraction are same objects and norm | nonnegative one-step charge; finite prefix sum | `step_003 -> step_005 -> step_006`; no self-use of the later rowwise bound | `step_006` -> `steps_008,009` | h=0, h<<e, h=e^2, cyclic modes, transitive off-diagonal | step-local | None |
| Raw z bound and global ledger | recurrence, invariant, finite accumulation | rootwise l2 Neumann contraction and Cauchy-Schwarz factorization applied to local z | direct derivation from `steps_002,003,006` | raw profile, `J-global`, and `R-acc` exactly match setting; simplified `J-row` is branch-qualified | same root blocks, l1 arrays, and commit order convention | one-step `Delta A <= 2 Gamma Upsilon`; sum structural `r nu^3`, numerical `r^2e`; `E_lb` alone supplies any `nu^2` absorption | local z from step 003, prior prefix budget, q_row, and J charge are named controls | actual history and accepted errors feed the exact consumed arrays; no factor-distance interface is claimed | finite-budgeted, sign-controlled nonnegative charges, no extra label factor | `step_003 -> step_006 -> step_007 -> step_008 -> step_009` | `step_007` -> later landscapes, transactions, and final ledger audit | isolated O.1 `nu=h`, dense/block, every commit order, s<=r, tiny-nu branch | step-local | None |
| Protected-state closure | all-prefix invariant and generated output | finite induction plus exact rollback and the `step_003b` triangular normal bridge | direct induction in current setting | every invariant clause, including source-normal exclusion and `(SE-scale)`, is listed in the goal | protected slots frozen and failed slots joint-zero exactly match protocol | prior valid prefix + `step_003b` source-normal solve + successful transition -> next valid prefix; failure leaves prefix unchanged | `steps_003b--008` provide each raw clause before closure | actual protected residual is the same `R_I` consumed by next transaction; its projection is only an analysis bridge | finite at most r; failed probes have zero forcing; normal forcing is finite `r e Lambda_nor` | base `I=emptyset,A=0,B_perp=0` -> one-step normal/landscape/charge producers -> next prefix | `step_009` -> `steps_010--012`; `step_012` then produces the terminal tuple | first commit, last unresolved root, tiny-e normal forcing, and exact limit are included | step-local | None |
| Transaction reachability and tape | support, probability, rollback | exact dynamics, Haar anti-concentration, independence | direct protocol derivation plus `assump:random-tape` | certificate and tape events have exact target probability/mode | full-space Haar and exact-loss Armijo conventions match setting | `p_tx >= (nr)^(-c_tx)`; stopped tail with `N_tx` yields `1-r^(-10)` | score windows, step lower bound, guard, and independent tape are raw controls | success is actual slot; failure equals exact pretransaction state | failed probes contribute zero; successes finite and injected once | `step_009 -> step_010 -> step_011 -> step_012` | `step_012` -> `step_014` | zero score, missing root, guard, exhaustion, exact rollback | step-local | None |
| Exact-target PL geometry | coercivity, positive radius, quadratic growth | exact balanced Jacobian, pair/triple gaps, weight scales, direct Taylor bounds, and compact-chart derivative bounds | direct current-notation derivation from `step_001` | Jacobian lower bound has the exact balanced tangent claim class and exports PL in the consumed chart | exact nonorthogonal target, finite orbit, full-state Euclidean metric, and exact Frobenius residual match | `sigma_min(DPsi)>=c_J g_minus^2`; at `varrho_PL=c_chart g_minus/r`, Jacobian and residual-Hessian defects are each below one quarter of the exact-root floor; derive `L_chart=C_L g_plus^4` before defining `C_path_star`, then obtain quadratic sandwich and `mu_PL>=c_mu g_minus^4` | pair/triple gaps, `g_plus/g_minus<=chi_tau`, radius guard, finite orbit separation, `g_minus>=(2kappa)^(-1)`, `kappa<=r^c0`, and fixed dimensionless `C_L`; hence radius and PL are at least `P^(-D_PL)` | produced and consumed target is exactly `Qstar`; no transformed or surrogate object and no entry premise | local deterministic Taylor/smoothness control, no accumulated defect | `step_001 -> step_013` | `step_013` -> `steps_014,015,016` | exact target is stationary with active tangent floor; minimum weight and chart boundary pass | step-local | None |
| Same-target full-state entry | generated basin membership and discovery-to-terminal bridge | all-commit bijection/signs, `R-euc`, cube-root identity, weight balance, upper Gram margin, fixed numerical exponent | `steps_001,005,009,012,013` | per-slot radial/direction calibration directly supplies the full-state factor claim after one Cauchy--Schwarz sum | actual `Q_fin` and exact `Qstar` orbit use the same full-state metric; unused zero slots are equal | `dist(Q_fin,Zstar)<=C_ent g_plus sqrt(3r)eta0`; dividing by `c_chart g_minus/r` leaves `C_ent sqrt(3)chi_tau r^(3/2)eta0`, whose structural and numerical pieces are at most `O(1/(sqrt(r)log^2 r))` and `O(r^(-1/2))`; choose `r_0` for `dist<=theta_ent varrho_PL` | raw `R-euc`, `nu<=2/(C_nu r log(2r))`, `D_stat>=2`, `chi_tau`, and `step_013` radius are available; `R-acc` is explicitly not a factor source | radial residual and signed direction residual are separately controlled at the required chart scale; the formerly missing `sqrt(r)` and weight terms are retained and dominated | one-time finite sum over exactly r slots; no iterative forcing | matching/injection -> protected induction -> all-commit tuple; independently event -> PL radius; both -> `step_014` | `step_014` -> `steps_015,016` | independent O.1 blocks give ratio `O(1/(sqrt(r)log^2 r))`; H=e=0 gives exact equality | step-local | None |
| Terminal first-exit and public rate | contraction, arbitrary accuracy, baseline | PL/quadratic chart, strict entry reserve, exact-loss Armijo, direct specialization | `steps_013--016` | signed descent and local path control match first-exit and relative-error claims | same exact target and Frobenius endpoint throughout | total path `<=C_path_star dist(Q_fin,Zstar)` stays inside the chart; PL gives geometric loss decay with no additive term; radius and PL are at least `P^(-D_PL)` | `theta_ent`, `C_path_star`, `mu_PL`, epsilon, and separate instance/tape events | final residual is exactly `T-Psi(Q)`; no baseline/surrogate transfer | contractive finite logarithmic horizon; no persistent forcing | `step_013 -> step_014 -> step_015 -> step_016` | `step_016` -> final theorem | exact target stationary, epsilon -> 0, chart boundary and no-floor baseline pass | step-local | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| `E_inst` and exact `T` | `step_001` from primitive assumptions | `steps_002,003,009,013,016` | source event and target representation | assumptions -> `step_001` -> static/prefix/terminal modules | derived | None |
| `E_lb` lower-tail event | `step_001` from Gaussian anti-concentration | `steps_007,008,009,016` | permits numerical-to-structural comparisons only on the derived branch | Gaussian smoothing -> disjoint-pair anti-concentration -> `E_lb` -> branch-aware consumers; step 009 carries either the raw row or its branch specialization | derived | None |
| H/J/K, S, leakage, transfer gaps | `step_002` | `steps_003--009,013` | static source and resolvent | `step_001 -> step_002 ->` all ledger/PL consumers | derived | None |
| Conditional `Theta_I` | `step_003` | `steps_004,005,007` | current residual control | `step_002 -> step_003 ->` local landscape and later quantitative profile | explicitly conditional | None |
| Local precommit zero-diagonal `z` profile | `step_003` from `Theta_I` and the proof-only padding convention | `step_006, step_007` | exact local J-charge coordinates and later rowwise bound | `step_002 -> step_003 ->` local z; no norm simplification is assumed | explicitly conditional | None |
| Full-history source-normal bound `(SE-perp)` and capture transfer `(SE-scale)` | `step_003b` | `step_004`, `step_005`, `step_009`, `step_011`, `step_016` | full-space landscape has no invisible outside-span history; projected target-frame controls remain exactly `A_I/Theta_I`; capture and curvature thresholds are valid at exposed scales; `norm_(sigma,F)((Id-Pi_star)R_I)<=B_perp` and `(SE-scale)` are the exported residual interface | `step_001,step_002,step_003` plus prior accepted records (supplied by the `step_009` induction) -> `step_003b` -> `step_004`; `step_009` reuses the same bridge at each later prefix | `derived` | None |
| Certificate matching and calibration | `steps_004--005` | `steps_006,009,011,014` | unique labels and factor errors | `Theta -> landscape -> matching ->` transition/entry | derived after prefix bridge | None |
| Accepted `E`, J charge/update, honest audit | `step_006` | `steps_007--009` | history producer and O.1 guarantee | `step_005 -> step_006 ->` profile/global induction | derived | None |
| Raw rootwise z bound and branch-qualified `J-row` | `step_007` | `steps_008,009` | no-extra-multiplicity control | local z and prior prefix -> `step_007`; `E_lb`/exact limit -> optional `nu^2` simplification | derived | None |
| J-global, history and R-acc budgets | `steps_008--009` | later protected-state landscapes, transactions, and `step_016` audit | all-prefix invariant and finite accepted-error forcing | empty state -> transition -> global sum -> induction | derived | None |
| Transaction success/rollback | `step_010` | `step_011` | valid concrete transaction outcome or exact unchanged scratch state | `step_009` supplies the invariant -> transaction -> outcome; no transaction output is consumed back by step 009 | derived | None |
| One-seed probability | `step_011` | `step_012` | tape amplification | invariant -> reachability -> tail | derived | None |
| Final actual committed tuple | `step_012` | `step_014` | same-target entry | induction -> reachability -> tape -> tuple | derived | None |
| Exact-target PL constants and smoothness | `step_013` | `steps_014,015,016` | terminal mechanism | event -> Jacobian/Taylor -> fixed `C_L`, `L_chart=C_L g_plus^4`, `C_path_star`, chart/descent | derived | None |
| Same-target full-state chart entry | `step_014` | `steps_015,016` | terminal initialization | all-commit tuple + exact orbit + per-slot `R-euc` + weight-scaled radius; `R-acc` remains a separate tensor-influence output | derived | None |
| PL descent and public rate | `steps_015--016` | final assembly | arbitrary relative epsilon, runtime, baseline | entry -> first exit -> contraction -> specialization | derived | None |

## Sketch Steps

Sketch Steps = 17 stable rows (including repair ID `step_003b`); all rows
start with `Review status = PENDING`.

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Derive `E_inst`, all norm/Gram/weight/T bounds, pair/triple conditioning, exact balanced target representation, and the derived lower-tail event `E_lb` with probability `1-r^(-10)`. | None | `assump:base-column-conditioning`, `assump:base-product-balance`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:smoothing-scale`, `assump:modewise-gram-margin` | normalization, finite union tails, and a uniform Gaussian anti-concentration lower tail | Gaussian concentration, disjoint-pair anti-concentration, epsilon-net operator bound, direct product algebra | `E_inst`, `E_lb`, `Q^star`, target norm and guard | R1; retain lower-tail probability and all exposed variables | PENDING |
| `step_002` | Derive R-src, leakage, S budget, and l1/rootwise transfer gaps with `q_res,q_row<=1/4`. | `step_001` | derived `E_inst`; `assump:modewise-gram-margin`, `assump:base-product-balance` | absolute-Gram rows and fixed-root block map | columnwise Cauchy-Schwarz, Schur products, three-mode block norm | H/J/K/S and `Tcal` | R2 structural; retain `nu,r,Gamma_star` | PENDING |
| `step_003` | For any legal conditional history, prove convergent l1 and rootwise Neumann envelopes, including empty history, and define the local zero-diagonal precommit z profile from Theta without asserting its rowwise norm. | `step_002` | derived event; explicitly conditional `A_I` | nonnegative resolvent, norm compatibility, and exact local array convention | geometric Neumann series in both induced norms plus the algebraic J-z definition | `Theta_I`, `Theta_empty`, and local precommit z for `steps_006,007` | R2; expose static/history/numerical entries without premature simplification | PENDING |
| `step_003b` | From prior generated accepted-slot certificate, matching, and `R-euc` records, derive the post-fit normal equations, prove `q_nor<=1/4`, solve the triangular system, and export `(SE-perp)`, exact target-frame projection compatibility, residual norm transfer, and `(SE-scale)` against `D_cap` and `D_gap`. | `step_001`, `step_002`, `step_003` | derived source spans and pair-Gram gap; prior generated records supplied only by the `step_009` induction; no source-normal bound is assumed | full-history outside-span control, temporal triangular ordering, and uniform capture/curvature comparison | direct contraction identities, pair-Khatri--Rao row sums, finite triangular Neumann inversion, projector telescoping, and differential perturbation bounds | `B_perp`, `R_I^parallel`, `(SE-perp)`, `(SE-scale)` | R2; explicit `Lambda_nor`, `q_nor`, `D_stat` dominance, and all P/n/r dependence retained | PENDING |
| `step_004` | Under the complete conditional prefix interface from `step_003b`, prove score decomposition and singleton/mixed-support angular landscape dichotomy. | `step_003`, `step_003b` | derived event; conditional prior-prefix certificate records; `assump:base-product-balance` | nonorthogonal paths, projected-vs-full residual transfer, and Hessian gap | direct product-sphere stationarity/Hessian expansion plus `(SE-perp)--(SE-scale)` | isolation margin and certificate dichotomy | R2; retain all target-frame and source-normal defects | PENDING |
| `step_005` | Convert a certificate into one unique unresolved label, separation, calibration, `R-euc`, `R-dir`, and injection extension; store the post-commit normal audit consumed by later `step_003b` applications. | `step_004` | conditional outputs; `assump:base-product-balance` | sign orbit, radial error, target compatibility, and normal-audit provenance | radial root, angular equations, finite-orbit matching, and exact post-fit contraction identity | matching/injection, `Cal`, `Diag-cal`, `b_(t,M)` audit | R2; explicit eta/e and `Lambda_nor` dependence | PENDING |
| `step_006` | Using the local z profile from step 003, expand accepted `E`; prove R-tensor, J-charge, J-update, J-diag, repaired O.1 audit, and cyclic/off-diagonal cases without consuming the later rowwise z bound.  The O.1 statement is only for the isolated family with all other displayed labels orthogonal and `nu_real=h`; larger embeddings use the global `nu` ledger. | `step_003`, `step_005` | derived local z and calibration; `assump:base-product-balance` | exact scalar cancellation and diagonal normalization | multilinear expansion and product majorization | `Xi`, `Upsilon`, exact transition interface | R2; retain `e h` and `e^2` | PENDING |
| `step_007` | For the already defined local z profile and a prior prefix budget, use the accepted transition output and prove the raw rootwise l2 bound; recover the declared `J-row` only on `E_lb` or the exact H=0,e=0 limit. | `step_003`, `step_006` | derived event and local z, accepted J update, `E_lb`; prior-prefix output supplied by induction | rootwise versus entrywise norms and finite numerical padding | fixed-root block-l2 Neumann estimate plus explicit branch comparison | `norm_2(z) <= C(nu^2+rnu^3+sqrt(r)e)` and branch-qualified `J-row` | R2; keep `sqrt(r)e` visible and invoke `nu^2` absorption only on `E_lb` | PENDING |
| `step_008` | Factor per-commit charges and sum roots/labels/modes once, proving raw `J-global`, history budget, and R-acc; specialize only on `E_lb` or the exact limit. | `step_006`, `step_007` | prior-prefix row output; derived calibration; `assump:base-product-balance`; branch output `E_lb` | dense/block factorization and diagonal terms | rootwise Cauchy-Schwarz and finite one-time ledger | per-p charge, raw `J-global`, `R-hist-budget`, `R-acc` | R2; target `O(r nu^3+r^2e)` remains unsimplified until branch check | PENDING |
| `step_009` | Close the abstract protected-state induction from `I=emptyset,A=0` through all at most r commits, carrying raw numerical terms, invoking `step_003b` before every landscape call, and using the `E_lb`/exact-limit branch for any simplified row interface; concrete transaction dynamics consume this invariant only afterward. | `step_001`, `step_002`, `step_003`, `step_003b`, `step_004`, `step_005`, `step_006`, `step_007`, `step_008` | all nine primitive assumptions; prior generated certificate/matching/normal records; derived `E_inst`, `E_lb`; no source-normal condition is assumed | noncircular prefix ordering, temporal normal recurrence, and unresolved bookkeeping | finite induction, triangular normal solve, exact rollback-preservation interface, and one-time ledger | raw prefix invariant, `(SE-perp)/(SE-scale)`, all budgets, and branch-qualified `J-row` | R2; uniform finite horizon with no unsupported absorption; carries raw profile outside `E_lb` and specialized `J-row` only on `E_lb` or exact H=e=0 | PENDING |
| `step_010` | Prove radial/angular/negative-curvature dynamics, radius/step guards, and exact rollback. | `step_009` | `assump:random-tape`; derived prefix; protocol constants | full-space unprojected globalization | exact derivatives, bisection, Armijo, approximate eigenvector | certificate or unchanged rollback outcome | R3; discovery work independent of epsilon | PENDING |
| `step_011` | Prove a history-uniform fresh Haar transaction reaches a valid certificate with probability `p_tx` within `H_tx`. | `step_004`, `step_005`, `step_009`, `step_010` | `assump:random-tape`; derived event/prefix | activation window and matched-label rejection | Haar anti-concentration plus deterministic flow | one-transaction success event | R3; explicit `p_tx,H_tx` | PENDING |
| `step_012` | Amplify the independent tape to all r distinct commits with probability `1-r^(-10)` and polynomial discovery work. | `step_009`, `step_011` | `assump:random-tape`; derived injection/rollback | stopped geometric/binomial tail and separate probabilities | independence and finite union tail | final actual committed tuple | R3; no epsilon dependence | PENDING |
| `step_013` | Prove exact-target balanced Jacobian conditioning, a quadratic sandwich, and PL on the same full-state target chart with `varrho_PL=c_chart tau_min^(1/3)/r`; then derive `L_chart=C_L tau_max^(4/3)` before defining the fixed `C_path_star`. | `step_001` | derived pair/triple conditioning; `assump:base-product-balance`, `assump:modewise-gram-margin`; realized norm/weight outputs | gauge removal, nonorthogonal cross terms, explicit Taylor defect, and compact-chart smoothness at the consumed radius | direct balanced Jacobian, slotwise multilinearity, Taylor continuity, and derivative Lipschitz bounds | `varrho_PL,mu_PL >= P^(-D_PL)`, `L_chart`, `C_path_star`; exact H=e=0 also has `varrho_orth=c_orth tau_min^(1/3)` | R4; regularity-explicit with fixed `C_L,C_path_star` dependence and no lower-tail absorption | PENDING |
| `step_014` | Align the actual all-commit tuple with the exact target orbit and prove `dist(Q_fin,Zstar)<=C_ent tau_max^(1/3)sqrt(3r)eta0 <= theta_ent varrho_PL <= varrho_PL/2` directly from `R-euc`; do not use `R-acc` as factor distance. | `step_005`, `step_012`, `step_013` | derived all-commit outputs, `R-euc`, `assump:base-column-conditioning`, `assump:base-product-balance`, `assump:modewise-gram-margin`, `assump:rank-regime`; `R-acc` is retained only for its stated tensor-influence consumers | orbit/sign/permutation alignment and explicit weight-scaled residual comparison | cube-root mean-value bound, Cauchy--Schwarz over active slots, and the raw `r^(3/2)eta0` dominance inequality | chart-entry certificate at the exact target scale; `E_lb` is not needed for this bridge, while the exact H=e=0 branch is equality | R4; explicit full-state norm and target-scale inequality | PENDING |
| `step_015` | Prove first-exit invariance and exact-loss balanced Armijo convergence to relative epsilon error without a floor, using the `step_013` quadratic sandwich, `L_chart`, `C_path_star`, and the `step_014` strict entry reserve. | `step_013`, `step_014` | `assump:accuracy-range`; derived chart/PL/smoothness and path-reserve outputs | unprojected update, Taylor/Armijo control, and finite path-length bound | PL, `L_chart` smoothness, and first-exit path control | terminal iterate and residual bound | R4; polynomial work times `log(1/epsilon)` | PENDING |
| `step_016` | Verify public rate specialization, rank/runtime substitutions, separate structural/lower-tail/tape probabilities, and exact baseline limit without hiding raw numerical terms. | `step_001`, `step_009`, `step_012`, `step_014`, `step_015` | all nine primitive assumptions; derived `E_inst`, `E_lb`, and other outputs | hidden dependence, branch absorption, confidence conversion | direct substitution and Rate Specialization Bridge | final material-partial theorem | R1--R4; raw budgets and branch probabilities checked | PENDING |

## Boundary And Example Stress Matrix

- Orthogonal equal-weight: `H=0`, exact numerical limit, empty history, and
  exact target.  Structural charges and actual accepted errors are zero;
  rollback and terminal refinement preserve zero loss.
- Isolated O.1 two-label: all labels other than `p,j` are orthogonal,
  `H_A(p,j)=0`, `H_B(p,j)=H_C(p,j)=h`, and therefore `nu_real=h`.  For
  `ell=p`, expand the diagonal charge into `eta0 h^2`, `h z`, and `z z`;
  retain `e h` and `e^2`, and check `h=e^2`.  For `ell!=p`, verify J=H and
  retain the transitive product.  A larger correlated embedding is not called
  the O.1 family; it is charged using global `nu_real` bounds.
- Small-correlation boundary: test `0<h<<e` and `h=0`; the honest positive
  numerical terms remain visible.  Finite smoothed instances use the derived
  `E_lb` branch for global absorption; the exact H=0,e=0 limit is handled by
  equality rather than a hidden structural charge.
- Full-history source-normal bridge: at `I=emptyset`, `B_perp=0`; at the
  first commit the normal equation has no structural forcing.  For later
  commits, the accepted-slot normal equations form the displayed triangular
  system with `q_nor<=1/4`.  The archived invisible rank-one completion would
  require a source-normal amplitude at least the capture floor, while
  `(SE-scale)` makes the generated amplitude smaller than one quarter of that
  floor and of the curvature threshold.  The exact `H=0,e=0` branch gives
  equality, and finite `e>0` is covered by the selected `D_stat`.
- Outside-span boundary: directions orthogonal in one, two, or all three
  modes are tested separately.  The projected residual preserves every
  target-frame contraction exactly; the normal recurrence controls all sectors
  of `(Id-Pi_star)R_I` by the same telescoping bound.
- Lower-tail branch: test `0<nu<nu_lb` as the excluded `E_lb^c` event and
  `nu>=nu_lb` as the theorem branch.  The raw profile and raw global budget
  remain valid in both descriptions; only the latter branch permits a
  `nu^2` simplification.
- Three-label transitive chain: direct pair weight may vanish while a first
  chain in `K_M J_M` remains; the static source and Neumann powers retain it.
- Dense/block frame: use rootwise l2 factorization, not an entrywise sum, to
  obtain `O(r nu^3+r^2e)` and avoid `r^(3/2)` overcount.
- Terminal factor/chart stress: in an even-r block family the independent
  factor displacement can be `g_plus sqrt(r)h^2`, while the finite chart
  radius is `c_chart g_minus/r`; the ratio is bounded by
  `O(chi_tau/(sqrt(r)log^2(2r)))` under the upper Gram margin.  This checks
  the same-target bridge at its actual full-state metric and shows why the
  contracted `R-acc` budget is not substituted for factor distance.
- Transaction boundaries: zero score, missing radial root, guard violation,
  ambiguous certificate, line-search exhaustion, tape exhaustion, and exact
  rollback are all explicit failure branches.

## Dependency Notes

The graph is acyclic: static outputs (`steps_001--002`) feed the conditional
envelope and local precommit z definition in `step_003`.  The inserted
`step_003b` is a bridge lemma with the same static dependencies plus the
already-generated records of earlier commits; it derives the triangular
source-normal system and exports `(SE-perp)` and `(SE-scale)` before the
current `step_004`.  Conditional landscape and matching (`steps_004--005`)
then precede the exact transition and rootwise/global ledger
(`steps_006--009`).  The local z definition is consumed by `step_006`, while
its quantitative rowwise bound is produced only by `step_007` and consumed by
`steps_008--009`.  `step_009` proves the abstract finite success/failure
prefix-preservation interface, including the temporal inputs needed by
`step_003b`, before transaction and tape steps (`steps_010--012`) consume that
invariant; no concrete transaction output flows backward into `step_009`.
The independent terminal branch (`step_013`) first produces the exact-target
balanced Jacobian, quadratic chart, weight-scaled radius, PL constant, and the
fixed path-reserve coefficient.  `step_014` then consumes that output together
with the actual all-commit tuple and `R-euc`; its direct cube-root/direction
comparison produces full-state chart membership before descent.  `R-acc`
continues along its separate tensor-influence/history path and is not a
factor-distance producer.  Descent and rate specialization follow in
`steps_015--016`.  The chart smoothness scale is `L_chart=C_L g_plus^4`, with
`C_L` fixed before the derived `C_path_star`; both are produced by `step_013`
and consumed only later.  Every theorem-facing generated output has a producer, all
consumers are later in this graph, and the empty prefix is the unique base
case.

The local repaired audit is intentionally weaker than the discarded
`O(h^4+e h^2)` claim, but it is exactly the positive scale present in the
formalized charge.  The rootwise factorization first exports the raw profile
`nu^2+r nu^3+sqrt(r)e` and raw global budget `r nu^3+r^2e`.  A Gaussian
anti-concentration lower-tail event, derived in `step_001`, is the only source
used to compare those numerical terms with `nu^2`; the exact H=0,e=0 branch
uses equality.  No unsupported absorption, lower bound on `h`, or generated
profile assumption is introduced.

The new source-normal bridge is also target-preserving: its only forcing is
the displayed certificate tolerance `e`, while all structural in-span errors
remain in the existing `A_I/Theta_I` interface.  The pair-Khatri--Rao
small-gain solves the finite triangular recurrence, and the explicit exponent
choice makes its `B_perp` smaller than both exposed certificate thresholds.
Thus the archived outside-span rank-one witness is excluded without adding a
primitive condition, changing the algorithm, or weakening the landscape,
capture, baseline, or endpoint claims.

## Blockers

None.  The former idea-8 blocker is removed at the idea/formalization level;
the current setting and this sketch use the honest `O(h^4+e h+e^2)` local
interface, retain its positive terms at `h=e^2`, and attempt 5 adds the
missing same-setting full-history source-normal producer through the explicit
triangular normal bridge `(SE-perp)--(SE-scale)`.  The projected residual
preserves the exact `A_I/Theta_I` target-frame interface, while the numerical
normal remainder is below the capture and curvature thresholds after the
declared `D_stat` choice.  `R-acc` remains available for its exact ledger
consumers, with no unsupported factor-norm conversion.  The local z
definition, normal-audit flow, rowwise bound, abstract prefix closure,
`E_lb` consumer path, and `C_L`/`C_path_star` dependence are all declared in
producer order.
