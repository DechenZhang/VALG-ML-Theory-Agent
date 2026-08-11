# Proof Sketch

## Formalized Setting

This is proof-sketch attempt 10 for `perspective_2/idea_9`, rerun in
`revise_sketch` mode after the sketch-9 global proof review exposed a
matched-label mass gap in the activation bridge.  The binding
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

The activation scales are instantiated only after the certificate has supplied
a positive radial scale.  For \(t=g^3\), \(s=s_I(u,v,w)\), and
\(R_0=\|R_I\|_F\), `step_003c` first proves in this order

```
s >= sqrt(2) R_0 P^(-D_cap/2),                         (Act-cap)
R_0 e <= s/16,
(1-4e)s <= t <= (1+4e)s,                              (Act-rad)
t >= (1/2)c_R tau_min P^(-D_cap/2),
s_parallel >= (3/4)s.                                 (Act-proj)
```

`(Act-rad)` follows directly from the radial certificate after
`(Act-cap)`; no lower bound on \(t\) is used to prove itself.
Only then define the root-free derivative budget

```
Theta_act(I) = max_(j in U_I,M) ||Theta_(I;j,M,.)||_2,
eps_act = C_act tau_max [nu^2 + r nu^3 + sqrt(r)e
                         + Theta_act(I)]
          + C_act [B_perp + N_I(g)e/t],
s_low = tau_min/(512 sqrt(r)),
beta_act = 1/(8 sqrt(r)),
delta_act = C_delta r^2 eps_act/tau_min,
mu_act = c_act tau_min/r^2.
```

The full candidate-indexed array \(\Theta_I\) is produced simultaneously for
all unresolved \(j\) by `step_003`; `Theta_act(I)` is its root-free maximum.
`step_003c` uses only this maximum before support selection.  A row
\(\Theta_{I;p,M,\cdot}\) is consumed only by `step_005`, after \(p\) has been
produced.  The raw upper Gram margin, current-prefix budget, and chosen
\(D_{\rm stat}\) yield

```
delta_act <= 1/256,
12 eps_act <= mu_act,
3 B_perp <= mu_act,
g^3 mu_act >= 4 N_I(g)P^(-D_gap).                     (Act-margin)
```

These are outputs of the upper-margin and exponent checks on both
\(E_{\rm lb}\) and \(E_{\rm lb}^c\); the lower-tail event is used only for the
already declared eta-scale simplifications.  In the exact \(H=e=0\) branch all
activation defects vanish.

Attempt 10 replaces the sketch-9 absolute matched-mass bridge after the
current/dual activation algebra. Support is enumerated over all labels, not
only `U_I`. With `V_I=pi_I(I)`, the projected protected-error tensor is
`E_I^mat=Pi_star R_I-sum_(j in U_I) tau_j phi_j`. The exact dual equation now
contains the unresolved indicator. The matched error is expanded as an exact
first-order part plus a higher-order remainder. Stationarity cancels the
first-order matched coordinates before the exchange calculation; the
higher-order exchange remainder is either absorbed relative to `|s_M|` or
becomes the positive exchange source. Thus the proposed margin is linear in
`|s_M|/r`, and never requires `epsilon_all >= C_all B_mat` or a squared
absolute `B_mat` defect. A unique matched dominant label remains incompatible
with `Sep <= 1/4`. `E_I^mat` and the cancellation remainders are generated
from prior `R-euc` records and are not additional assumptions.

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

For a protected prefix let `U_I=[r]\pi_I(I)` and write
`T_U=sum_(j in U_I) tau_j phi_j`.  The pair/triple Gram reserve and the
previously generated matching records also define the full accepted-error
control

```
B_hist,F(I) = sum_(i in I) ||E_i||_F
            <= C_E |I| tau_max eta0 <= C_E r tau_max eta0.       (Hist-F)
```

The unresolved target and residual reserve are derived before any certificate
comparison:

```
||T_U||_F^2
 = tau_U^T (G_A[U] o G_B[U] o G_C[U]) tau_U
 >= (15/16)||tau_U||_2^2 >= (15/16) tau_min^2,
||R_I||_F >= sqrt(15/16) tau_min - B_hist,F(I)
             >= c_R tau_min.                                      (Res)
```

The last inequality follows from the explicit reserve check
`C_E r tau_max eta0 <= (1/2)sqrt(15/16) tau_min`, using the upper Gram
margin, `tau_max/tau_min<=2 Gamma_star`, and the selected `D_stat`; it is a
derived prefix output, not an admissibility condition.

`step_003b` proves, rather than assumes, `q_nor<=1/4` and the full-history
bound

```
||(Id-Pi_star) R_I||_sigma
 <= ||(Id-Pi_star) R_I||_F <= B_perp.                 (SE-perp)
```

It also proves `(Res)` for every nonterminal prefix.  Uniformly over
certificate states with `0<g<=2R_max`, the raw target-side comparisons are

```
B_perp <= c_SE min{
  tau_min/r,
  ||R_I||_F P^(-D_cap/2),
  N_I(g) P^(-D_gap)/g^3
}.                                                    (SE-raw)
```

On the derived finite-smoothed branch `E_lb` from `step_001`, the additional
calibration comparison is

```
E_lb  ==>  B_perp <= c_SE tau_min eta0.                 (SE-lb)
```

No `tau_min eta0` comparison is claimed on `E_lb^c` when `e>0`; the raw
capture/curvature/source comparisons remain valid there.  In the exact
`H=0,e=0` branch, `B_perp=eta0=0` and `(SE-lb)` holds by equality.

Here `c_R,c_SE>0` are fixed outputs of the direct tensor and differential
calculation.  They are not assumptions or algorithmic thresholds.

Constants and fixed exponents are selected in the order: source and protocol
constants, the static margin, the lower-tail exponent `D_lb`, the capture
exponent `D_cap`, the activation exponent `D_act`, the landscape gap exponent
`D_gap`, the fixed polynomial degree bounding `Lambda_nor`
and `tau_min^(-1)`, then `D_stat` with enough slack for both the lower-tail
and the raw `(SE-raw)` comparisons plus the `E_lb`-conditioned `(SE-lb)`
comparison, followed by `D_ls,D_PL`, the compact-chart
smoothness constant `C_L`, and finally the leading constants.  Concretely,
the primitive polynomial bounds give fixed `D_nor,D_tau` with
`r Lambda_nor<=P^(D_nor)` and `tau_min>=P^(-D_tau)`; choose

```
D_stat >= D_nor + D_tau
             + max{1, 2 D_lb, D_cap/2, D_act, D_gap + 3 D_tau} + 10.
```

This makes `(SE-raw)` uniform for all allowed `P`, and makes `(SE-lb)` valid
only on its named derived branch.  The specialization never absorbs a
positive numerical term without a stated event.  A Gaussian anti-concentration sublemma in `step_001` gives a derived
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
additional polynomial slack needed for `r`).  The same lower-tail comparison
is the source of `(SE-lb)`.  Outside `E_lb` no `eta0` absorption is asserted:
the raw profile, `(SE-raw)`, and raw global budget are retained.
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
setting. Attempt 10 replaces the sketch-9 absolute matched-error interface
with an indicator-correct, first-order-canceling, relative/high-order
all-label alternative between the dual coordinate algebra and the
same-target transfer. No objective, algorithm, primitive class, rank,
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
   equations of prior accepted slots, and prove the raw `(SE-raw)` comparisons
   together with the `E_lb`-conditioned `(SE-lb)` comparison.
3. Project the current residual with `Pi_star`, observe that all target-frame
   contractions used by `A_I` and `Theta_I` are unchanged exactly, and use
   `(SE-perp)`, `(SE-raw)`, and (on `E_lb`) `(SE-lb)` to transfer score,
   gradient, Hessian, capture, and residual norm between the projected and
   actual residuals.  Then use the all-label matched-mass bridge: every
   observable certificate either matches one unresolved atom, or admits a
   normalized exchange tangent (including a protected-label pair) that fails
   the angular gap; a common matched singleton is excluded by `Sep`.  The
   surviving branch has product-one sign alignment, separation, `R-euc`, and
   `R-dir`.  Prove the exact tensor influence and J-charge updates in all three
   modes.
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

- Sketch attempt: 10
- Retry mode: `revise_sketch` after the sketch-9 global proof review
- Triggering artifacts: `perspective_2/idea_9/global_proof.md` (SHA-256
  `65b811e3ebe8f4fea0f776a57bf4e51c9c4793f8c704bb445207e38a1ac7060c`)
  and `perspective_2/idea_9/global_proof_review.md` (SHA-256
  `be294959518972bfc70aad5bc96b0bb5586414c49298447b49b92ef836a36281`).
  The earlier blocked activation proof/review remains negative evidence.
- Branch: `perspective_2/idea_9`
- Progress type: `material_partial`
- Binding rank: `k = ceil(C_rank r^(3/2) (log(2r))^2)`, with `r < k < r^2`
- Binding baseline: exact asymmetric objective, exact rollback, exact target
  representation, same-target terminal refinement, and arbitrary relative
  accuracy
- Local repair: preserve every accepted J-ledger, source-normal, chart, entry,
  baseline, and generated-flow repair from attempts 4--9. Keep `step_003b`
  unchanged and retain `step_003c`'s exact current/dual coordinates, ordered
  radial interface, and root-free `Theta_act`. Add a target-preserving
  `step_003d` bridge that defines the projected protected-error tensor, writes
  the exact stationarity equation with `1_{j in U_I}`, splits the matched
  error into first-order and higher-order pieces, and cancels the first-order
  matched coordinates by stationarity before taking the exchange bound. The
  higher-order piece is either absorbed relative to `|s_M|` or is itself the
  positive exchange source. The resulting margin is linear in `|s_M|/r`, not
  quadratic in an absolute `B_mat`. A common matched singleton is rejected by
  the separation gate. `step_004` remains only same-target transfer and
  certificate comparison; it consumes the completed `step_003d` alternative.
  No primitive assumption, objective, algorithm, target metric, probability
  mode, or baseline conclusion is changed, and no `idea_10` artifact is
  created or consumed. The repair is conditional on a displayed all-label
  exchange lemma; if its margin cannot be discharged, the exact remaining
  obstruction is recorded rather than hidden in a local hypothesis.

## Proof Roadmap

The dependency-ordered roadmap has nineteen stable rows, retaining all
existing numeric Step IDs and inserting repair IDs `step_003b`, `step_003c`,
and `step_003d` before `step_004`.

1. `step_001` derives the once-drawn instance event, exact target, and the
   Gaussian lower-tail branch `E_lb`.
2. `step_002` derives H/J/K, leakage, S, and the l1 and rootwise transfer
   gaps.
3. `step_003` constructs the conditional statewise Neumann envelope and
   defines the local zero-diagonal precommit `z` profile from it; no norm
   bound is exported yet.
4. `step_003b` uses prior commit-time radial/angular stationarity, generated
   matching, and the pair-Khatri--Rao gap to solve the triangular normal
   system, derive `(Hist-F)` and `(Res)`, and export `(SE-perp)`, `(SE-raw)`,
   the `E_lb`-conditioned `(SE-lb)`, plus exact projected target-frame
   compatibility.
5. `step_003c` first derives `(Act-cap)--(Act-proj)`, then writes the projected
   residual in exact current correlations `x=M^T u` and dual coefficients
   `alpha=G^(-1)x`.  It proves the Gram-ellipsoid stationarity equations,
   source-perpendicular exclusion, and normalized single-label/pair dual
   tangent identities.  It exports the simultaneous all-label coordinate
   equations and the root-free `Theta_act` interface, but does not infer that
   an unresolved active set is nonempty.
6. `step_003d` consumes those equations and the generated protected-error
   tensor, splits unresolved target mass from matched residual mass, and
   proves an exhaustive alternative: one unresolved singleton, an unresolved
   structural exchange, or a matched-residual exchange with an explicit
   `mu_mat` margin.  The all-label equation has the exact unresolved
   indicator.  In the matched branch, a first-order/higher-order expansion of
   the protected error is used; first-order coordinates are canceled by
   stationarity, while a large higher-order exchange remainder is promoted to
   the positive term.  The resulting lower bound is linear in `|s_M|/r` and
   has no absolute `B_mat^2` defect.  A matched singleton is ruled out by
   separation.  This is the theorem-critical bridge requested by the global
   review.
7. `step_004` transfers the `step_003d` witness through `(SE-perp)` and
   `(SE-raw)`, rules out either exchange branch at the observable Hessian
   threshold, and exports the certificate dichotomy without redoing support
   selection.
8. `step_005` turns a certificate into a unique unresolved label and calibration.
9. `step_006` expands one accepted error using the local `z` profile and
   proves the J charge/update, including the repaired O.1 audit and cyclic
   forms.
10. `step_007` derives the quantitative zero-diagonal rootwise l2 bound for
   the already defined `z` profile from a prior prefix budget.
11. `step_008` performs the rootwise factorization and one-time global charge
   sum, retaining all numerical terms.
12. `step_009` closes the protected-state induction from the empty prefix.
13. `step_010` proves deterministic transaction dynamics and exact rollback.
14. `step_011` proves history-uniform full-Haar transaction reachability.
15. `step_012` amplifies the independent tape to all distinct commits.
16. `step_013` proves exact-target balanced Jacobian conditioning, the
    weight-scaled radius `c_chart g_minus/r`, a quadratic sandwich, and PL.
17. `step_014` aligns the generated injection/signs with the exact target orbit
    and proves same-target full-state entry directly from `R-euc`.
18. `step_015` proves first-exit invariance and floor-free terminal descent.
19. `step_016` performs the public rate specialization and baseline assembly.

No step assumes a generated condition before its producer.  `step_003b` is a
deterministic bridge lemma whose inputs are the exact certificate and matching
records already produced at earlier commits; `step_009` supplies those records
by induction, with the empty prefix as the zero base case.  The bridge itself
  derives the normal residual, `(Hist-F)`, `(Res)`, and full-history bounds.
  Its `eta0` comparison is consumed only on `E_lb` (or by exact equality in
  the zero-defect branch); outside that branch only `(SE-raw)` is exported.
  The conditional
  landscape steps are consumed only after `step_009` discharges this prefix
  interface.  Within a landscape call, `step_003c` produces only all-label
  coordinate data and `step_003d` is the sole producer of the
  singleton/exchange witness; `step_004` is only a transfer and
  certificate-comparison step.  This ordering prevents a root-indexed ledger
  entry or a curvature margin from being consumed before its source is
  proved.

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
- Exposed variables: `r,nu,Gamma_star,P,D_stat,D_gap,D_cap,D_act,eta0,e,`
  `H,J,K,S,A_I,Theta_I,z,Xi,Upsilon,Pi_star,Lambda_nor,q_nor,B_perp,`
  `s,t,s_parallel,s_low,Theta_act,eps_act,beta_act,delta_act,mu_act`, and all
  displayed budgets.
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
  zero-diagonal z profile.  `step_003b` derives the post-fit normal equations,
  the explicit unresolved-target reserve `(Res)`, and the triangular bound
  `B_perp=3r Lambda_nor e/(1-q_nor)`.  With `D_stat` chosen after
  `D_gap,D_cap,D_lb`, it proves `(SE-raw)` for every branch and `(SE-lb)`
  only on the derived `E_lb` branch (with exact `H=e=0` equality).  `step_007`
  exports its raw `nu^2 + r nu^3 + sqrt(r)e` row bound, `step_008` exports the
  raw `r nu^3+r^2e` global budget, and `step_009` carries the raw or
  `E_lb`-specialized interfaces through the abstract prefix induction.
  Only on derived `E_lb` (or the exact limit) may
  `r^2e` and `sqrt(r)e` be compared with `nu^2`; no crude
  `r^(3/2)nu^3` replacement and no unconditional absorption are allowed.
  The repaired `step_003c` derives `(Act-cap)` and `(Act-rad)` before defining
  `eps_act`. It keeps exact Gram coupling in
  `tau_j x_(j,N)x_(j,L)-s_parallel alpha_(j,M)` and uses only the root-free
  `Theta_act` maximum before support selection. `step_003d` then extends the
  equations to all labels with the exact unresolved indicator, derives
  `E_I^mat`, and proves the unresolved/matched mass split.  Its matched
  exchange identity cancels first-order matched coordinates and uses the
  scale-compatible alternative `(Mat-rel)`/`(Mat-hi)` below; the capture
  comparison is linear in `|s_M|/r`.  No absolute `B_mat^2` term, hidden
  matched baseline, or `1/r` versus `1/sqrt(r)` conversion is deferred to
  `step_004`.
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
  `(SE-perp)`.  Separately, pair/triple conditioning gives
  `||T_U||_F^2>= (15/16)||tau_U||_2^2 >= (15/16)tau_min^2`, while the direct
  balanced rank-one telescoping from prior `R-euc` records gives
  `B_hist,F<=C_E r tau_max eta0`.  The displayed reverse-triangle inequality
  `(Res)` and its explicit `C_E r tau_max eta0 <= c tau_min/2` reserve produce
  the positive residual lower bound before capture is invoked.  `step_009`
  supplies the prior certificate/matching records in temporal order,
  beginning with the exact zero-history base case.  The raw `(SE-raw)` output
  is unconditional on the finite branch; only the calibration comparison
  `(SE-lb)` consumes the derived `E_lb` output from `step_001`.
- Matching, separation, calibration, row profiles, charges, and transaction
  invariants are generated outputs.  `step_009` is the noncircular bridge from
  the empty state to the all-prefix interface.
- The activation/exchange witness is a derived local output of `step_003d`,
  not a conditional premise hidden inside `step_004`. `step_003c` first
  derives radial comparability, exact current/dual equations, and the
  root-free `Theta_act`; `step_003d` adds the generated `E_I^mat`, enumerates
  all-label active sets, and splits unresolved target mass from matched
  residual mass. A finite enumeration of normalized dual single-label,
  two-mode pair, and synchronized three-mode pair tangents handles low score,
  one-mode straddling, common support, signs, all mode permutations, threshold
  equality, `|U_I|=1`, and separated protected mixtures. It exports an
  unresolved singleton or a structural/matched exchange tangent; a
  root-specific `Theta` row is unavailable until `step_005` has received the
  selected unresolved label.
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
  the `step_003c`/`step_003d`/`step_004` chain; it also prevents the invisible outside-span certificate from the
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
- The same prior records give the missing positive residual reserve explicitly.
  For `U_I=[r]\\pi_I(I)`, pair/triple conditioning on the restricted realized
  frames gives

  ```
  ||T_U||_F^2
   = tau_U^T (G_A[U] o G_B[U] o G_C[U]) tau_U
   >= (15/16)||tau_U||_2^2 >= (15/16)tau_min^2.
  ```

  Direct balanced rank-one telescoping from each prior `R-euc` record gives
  `||E_i||_F<=C_E tau_(p_i) eta0`, hence
  `B_hist,F<=C_E r tau_max eta0`.  The upper Gram margin and the selected
  `D_stat` verify
  `C_E r tau_max eta0 <= (1/2)sqrt(15/16) tau_min` (the `e` term is made
  small by `P>=r` and the structural term by `r nu^2=O(1/(r log^2 r))`).
  Since `R_I=T_U-sum_(i in I)E_i`, reverse triangle proves `(Res)` and a
  fixed `c_R>0` before any capture or curvature comparison.  This reserve is
  unconditional on `E_lb`; it uses no lower bound on `nu`.
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

  The raw comparisons `(SE-raw)` follow from `(Res)` and the fixed exponent
  choice for `D_stat`.  On `E_lb`, the lower scale
  `nu>=P^(-D_lb)` supplies the separate inequality `(SE-lb)`, which is the
  only place the source-normal residual is compared with `tau_min eta0`.
  Outside `E_lb`, no such calibration absorption is made; `(SE-raw)` remains
  the exported interface.  Thus every consumed capture/curvature term has a
  valid branch-specific dominance relation.
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
  `N_I(g)P^(-D_gap)/g^3` in `(SE-raw)`.  On `E_lb`, `(SE-lb)` additionally
  puts the normal remainder below the `eta0` calibration scale.  Therefore an
  outside-span score cannot satisfy the capture certificate, and outside-span
  perturbations cannot close the angular Hessian gap.  The projected residual
  then receives the unchanged `A_I/Theta_I` target-frame controls, so
  `step_003d`'s matched-mass exchange argument has a legal source for every
  defect class before `step_004`.
- Accumulation behavior / scope compatibility: the normal equations are a
  finite prefix recurrence over `t<=s<=r`; the off-diagonal coefficients are
  absolutely summable by `q_nor`, and the forcing accumulates only as
  `r e Lambda_nor`.  The one-step relation is the displayed triangular
  equation, and the finite inverse `(1-q_nor)^(-1)` is valid uniformly for all
  commit orders.  No failed transaction enters this recurrence because exact
  rollback leaves the prefix unchanged.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_001` supplies the source spans, pair/triple
  reserve, and `E_lb`; `step_002` supplies pair row sums; `step_003` supplies
  target-frame `Theta`; each earlier accepted application of
  `steps_003c--005` supplies matching, `R-euc`, and the post-fit record.
  `step_003b` derives
  `B_hist,F`, `(Res)`, `a_(t,M)`, and `B_perp` before the current `step_003c`
  call.  `step_009` is the noncircular producer of this temporal prefix path,
  beginning with `I=emptyset` and `B_perp=0`; `step_003b` never assumes its
  own source-normal or residual-reserve conclusion.
- Entry-state / first-update stress result: at the empty prefix there are no
  rows in the triangular system and `(Id-Pi_star)R_empty=0`.  For the first
  accepted slot the equation is `a_(1,M)=-b_(1,M)`, so only numerical
  stationarity can create a source-normal component.  In the exact
  `H=0,e=0` branch all `b_(t,M)=0`, hence all normal components vanish.
- Baseline conclusion preserved: the exact orthogonal/noiseless target remains
  an exact atom-wise certificate and zero-loss representation; the bridge adds
  no floor and is equality in that limit.
- Producer-consumer provenance: `step_003b` consumes `step_001` (source spans,
  `E_lb`, and Gram/residual scales), `step_002` (pair row sums), `step_003`
  (Theta), and prior-iteration `step_005` matching/R-euc/post-fit records
  supplied by `step_009`.  It exports `B_hist,F`, `(Res)`, `(SE-perp)`,
  `(SE-raw)`, the `E_lb`-conditioned `(SE-lb)`, and the projected target-frame
  identity to the current `step_003c`; `step_003c`/`step_003d`/`step_004`/`step_005` produce the next
  audit, which is consumed by the next temporal invocation of `step_003b`.
  `step_009`, `step_011`, and `step_016` consume the corresponding raw or
  branch-qualified outputs; `Theta` and `E_lb` are explicit flow consumers.
- Null or boundary regime tested: empty history, first commit, exact
  orthogonal/noiseless limit, finite `e>0,nu=0` (raw comparisons only; no
  `eta0` absorption), tiny positive `nu`, the separation boundary, and the
  archived invisible rank-one completion.  The latter would require
  `B_perp` at least its witness amplitude; `(SE-raw)` rules it out uniformly,
  while `(SE-lb)` is invoked only on `E_lb`.
- Target conclusion false if source vanishes: without the unit diagonal or
  pair-Khatri--Rao gap, the triangular normal system can amplify history and an
  outside-span rank-one certificate can pass; without `(SE-raw)` (or the
  branch-qualified `(SE-lb)` calibration comparison), the capture and
  curvature thresholds do not exclude that witness.
- Repair route if source is unsupported: `/proof-sketch` if a same-setting
  interface detail is missing; `/subagent-idea-generator` only if the direct
  normal recurrence or the raw/branch-qualified `(SE-raw)`/`(SE-lb)` comparison
  is contradicted by an allowed instance.

### Dual/current-frame activation bridge (`step_003c`)

- Step ID: `step_003c`.
- Claim class: source-compatible activation, signed singleton isolation, or a
  normalized mixed-support strict-saddle witness.
- Theorem role: this is the sole producer of the within-span alternative.
  `step_004` receives a finished singleton or unit exchange tangent
  and does no support discovery.

#### Ordered radial and projection scale

- Before defining any activation defect, let \(t=g^3\),
  \(s=s_I(u,v,w)\), \(R_0=\|R_I\|_F\), and
  \(s^\parallel=\langle\Pi_\star R_I,u\otimes v\otimes w\rangle\).
  Completing the square in the exact capture identity gives
  \(s\ge\sqrt2R_0P^{-D_{\rm cap}/2}\). Choose \(D_{\rm stat}\) so
  \(R_0e\le s/16\). The radial certificate then directly gives
  \[
  (1-4e)s\le t\le(1+4e)s,\qquad
  t\ge\tfrac12c_R\tau_{\min}P^{-D_{\rm cap}/2}.
  \tag{Act-rad}
  \]
  Only after this conclusion is available, `(SE-raw)` yields
  \(s^\parallel\ge3s/4>0\) and the numerical derivative scale
  \(N_I(g)e/t\) is instantiated.
- Source-to-claim adequacy: this ordering removes the prior circular use of a
  lower bound on \(g^3\). It applies on \(E_{\rm lb}\), on its complement, and
  in the exact branch; no lower bound on \(\nu\) is used.

#### Exact current and dual coordinates

- For the normalized realized source matrix
  \(M_M=[m_{1,M},\ldots,m_{r,M}]\), define
  \[
  D_M=M_MG_M^{-1},\qquad d_{j,M}=D_Me_j,
  \]
  so \(\langle d_{j,M},m_{\ell,M}\rangle=\delta_{j\ell}\).
  For \(u_A=u,u_B=v,u_C=w\), define current correlations and dual
  coefficients
  \[
  x_M=M_M^\top u_M,\qquad
  \alpha_M=D_M^\top u_M=G_M^{-1}x_M.
  \tag{Dual-coord}
  \]
  Thus \(P_Mu_M=M_M\alpha_M\) and
  \[
  \|P_Mu_M\|_2^2=\alpha_M^\top G_M\alpha_M
  =x_M^\top G_M^{-1}x_M.
  \tag{Dual-energy}
  \]
  The Gram reserve gives
  \[
  (1+\nu)^{-1}\le\|d_{j,M}\|_2^2\le(1-\nu)^{-1}
  \tag{Dual-norm}
  \]
  and the analogous two-coordinate quadratic-form bounds. These are
  multiplicative metric controls, not additive frame defects.
- Mechanism source: for
  \(v_M=R_I^\parallel\times_{N\ne M}u_N^\top\), angular stationarity is
  \(v_M-s^\parallel u_M=\zeta_M\). Since \(v_M\in{\rm range}(M_M)\), its
  source-normal component is exactly
  \[
  -s^\parallel P_M^\perp u_M=P_M^\perp\zeta_M.
  \tag{Dual-perp}
  \]
  Hence `(Act-rad)` and the gradient transfer imply a displayed
  bound on all three source-normal components before support is analyzed.
  Taking the inner product with \(d_{j,M}\) gives, for
  \(\{M,N,L\}=\{A,B,C\}\),
  \[
  \tau_jx_{j,N}x_{j,L}-s^\parallel\alpha_{j,M}
  =h_{j,M}+\langle d_{j,M},\zeta_M\rangle ,
  \tag{Dual-stat}
  \]
  where \(h_{j,M}\) is the exact projected accepted-history contraction.
  The target term is exact because the dual vector selects label \(j\).
- Root-free history interface: `step_003` produces the complete
  candidate-indexed array \(\Theta_I\) simultaneously for all
  \(j\in U_I\). Before support selection, `step_003c` uses only
  \[
  \Theta_{\rm act}(I)=
  \max_{j\in U_I,M}\|\Theta_{I;j,M,\boldsymbol\cdot}\|_2.
  \]
  The current-prefix raw budget, dual norm bound, and Neumann equation give
  \[
  \max_{j,M}|h_{j,M}|+
  \max_M\|\zeta_M\|_2
  \le\varepsilon_{\rm act},
  \tag{Dual-def}
  \]
  with \(\varepsilon_{\rm act}\le\epsilon_{\rm act}\) as defined above.
  No row indexed by the eventual root is consumed at this stage.
- Exact-atom boundary stress: let \(I=\varnothing\), modes \(B,C\) be
  orthogonal, mode \(A\) have two-label Gram off-diagonal \(h\), and take the
  exact atom \(u_M=m_{1,M}\). Then
  \[
  x_A=G_Ae_1,\quad\alpha_A=e_1,\qquad
  x_B=x_C=\alpha_B=\alpha_C=e_1.
  \]
  For \(j=2\), both sides of `(Dual-stat)` are zero; for \(j=1\)
  they equal \(\tau_1-s^\parallel=0\). The rejected
  \(\Theta(\tau_1h)\) orthonormal-frame remainder is absent. If modes \(B,C\)
  are also correlated, the \(j\ne1\) target term is the honest product
  \(\tau_jG_B(j,1)G_C(j,1)=O(\tau_j\nu^2)\), exactly the K/J source already
  present in \(\epsilon_{\rm act}\).

#### Full-label matched-mass and exchange bridge (`step_003d`)

- **Producer and scope.** `step_003d` is the theorem-critical producer between
  the exact coordinate identities in `step_003c` and the same-target transfer
  in `step_004`. Let (V_I=\pi_I(I)), (U_I=[r]\setminus V_I), and define
  the projected protected-error tensor
  \[
  E_I^{\rm mat}:=\Pi_\star R_I-sum_{j\in U_I}\tau_j\phi_j.
  \tag{Mat-tensor}
  \]
  Since \(\Pi_\star T=T\), this is exactly the protected-slot error in the
  source product span. Prior generated `(R-euc)` records and `(SE-perp)` give
  the derived budget
  \[
  \|E_I^{\rm mat}\|_F\le B_{\rm mat}:=C_Er\tau_{\max}\eta_0+C_{\rm mat}B_\perp,
  \tag{Mat-budget}
  \]
  with (E_\varnothing^{\rm mat}=0). It is an analysis object and is not
  available to the algorithm.
- **All-label stationarity.** Extend `(Dual-stat)` to every
  \(j\in[r]\) using the exact matched contraction \(b_{j,M}\) defined
  below. The unresolved indicator and the matched baseline are both retained:
  \[
  {\bf1}_{\{j\in U_I\}}\tau_jx_{j,N}x_{j,L}
   +b_{j,M}-s^\parallel\alpha_{j,M}
   =\langle d_{j,M},\zeta_M\rangle .
  \tag{All-stat-10}
  \]
  The simultaneous root-free envelope and `(Mat-budget)` give
  \[
  \max_M\|\zeta_M\|_2
  \le\varepsilon_{\rm stat}:=C_{\rm stat}\left[
  \tau_{\max}(\nu^2+r\nu^3+\sqrt r e+\Theta_{\rm act})
  +B_\perp+N_I(g)e/t\right].
  \tag{Mat-stat}
  \]
  Here
  \[
  b_{j,M}:=\left\langle E_I^{\rm mat},
      d_{j,M}\otimes u_N\otimes u_L\right\rangle,\qquad
  \mathfrak r_{j,M}:=
      {\bf1}_{\{j\in U_I\}}\tau_jx_{j,N}x_{j,L}
      +b_{j,M}-s^\parallel\alpha_{j,M}.
  \tag{Mat-cancel}
  \]
  The exact equation gives
  \(\|\mathfrak r_{\cdot,M}\|_2\le(1-\nu)^{-1/2}\|\zeta_M\|_2\).
  For \(j\in V_I\), \(b_{j,M}=s^\parallel\alpha_{j,M}+\mathfrak r_{j,M}\);
  the matched baseline is canceled before any exchange bound.  No unresolved
  support condition is used in this extension, and \(B_{\rm mat}\) is not
  treated as a stationarity defect.
- **Nonempty support without a false restriction.** Set
  \(\beta=1/(8\sqrt r)\) and define all-label active sets
  \[
  {\cal L}^{\rm all}_M=\{j\in[r]:|\alpha_{j,M}|\ge\beta\}.
  \tag{All-active}
  \]
  Equality is active. Gram energy gives
  \(\max_j|\alpha_{j,M}|\ge4\beta\), so these sets are nonempty. This
  replaces the invalid implication for \({\cal L}_M\cap U_I\). The exact
  tangent selectors `(Dual-pair)` and `(Dual-Q)` are formed for any pair in
  \([r]\), including two matched labels.
- **Mass split.** Define
  \[
  s_U=\sum_{j\in U_I}\tau_jx_{j,A}x_{j,B}x_{j,C},\qquad
  s_M=\langle E_I^{\rm mat},u\otimes v\otimes w\rangle,
  \qquad s^\parallel=s_U+s_M,
  \tag{Mass-split}
  \]
  and (W_U=\sum_{j\in U_I}\tau_j|x_{j,A}x_{j,B}x_{j,C}|). The finite
  sign-safe selector calculation yields the exhaustive alternatives
  \(W_U\ge\gamma_{\rm split}|s^\parallel|\) or
  \(|s_M|\ge(1-\gamma_{\rm split})|s^\parallel|\). The first
  branch applies a weighted threshold lemma to the unresolved mass: either one
  unresolved label has the three-mode dominant coefficients needed for the
  singleton score bridge, or two labels/one mode-straddle have a normalized
  structural exchange tangent. If all unresolved coefficients are below the
  threshold, the sum of their products is at most `|s_parallel|/8`, which is
  the second branch. Thus this step never asserts that an unresolved-only
  active set is nonempty. The second branch invokes the matched exchange
  lemma below.
  The displayed \(\gamma_{\rm split}\) threshold replaces the historical
  \(1/8\) split; all downstream dominance comparisons use the smaller fixed
  \(\gamma_{\rm split}\).
- **Matched-error decomposition and raw controls.** For each matched
  \(p\in V_I\), expand
  \[
  \tau_p\phi_p-g_p^3u_p\otimes v_p\otimes w_p
  \]
  in the radial error \(\delta_p\) and directional errors \(e_{p,M}\).
  Let \(E_I^{(1)}\) collect terms with exactly one such error factor and let
  \(E_I^{(\ge2)}\) collect terms with at least two.  This is an exact
  algebraic split, with
  \[
  \|E_I^{(1)}\|_F\le C_1r\tau_{\max}\eta_0,\qquad
  \|E_I^{(\ge2)}\|_F\le C_2r\tau_{\max}\eta_0^2+C_2B_\perp.
  \tag{Mat-raw-10}
  \]
  Define \(\|E\|_{\rm ex}\) as the maximum absolute contraction with the
  finite normalized two-mode and product-one three-mode tangent family
  generated from the dual selectors.  It is a same-target ambient seminorm.
  Fix \(0<\gamma_{\rm split}<c_{\rm mat}/(64C_{\rm mix})\).  Substitution of
  (Mat-cancel) into the exact Hessian expansion cancels every first-order
  matched coordinate; every term not canceled is assigned to
  \(E_I^{(\ge2)}\) or to \(\varepsilon_{\rm stat}\).  The proof must show this
  allocation term by term, rather than bound it by \(B_{\rm mat}\).
- **Matched exchange lemma (attempt-10 relative cancellation).** If the
  all-label support has two labels or
  straddles modes, enumerate all three two-mode pair tangents and the four
  product-one synchronized tangents, maximizing over their signs. The direct
  product-sphere Hessian calculation gives
  \[
  \max_{\xi\in{\cal T}^{MN}_{p,q}\cup{\cal T}^{ABC}_{p,q}}
  {\cal Q}(\xi)
  \ge {c_{\rm mat}|s_M|\over r}
   -C_{\rm mat}\left[(\nu+\delta_{\rm act}){|s_M|\over r}
   +{\|E_I^{(\ge2)}\|_{\rm ex}\over r}
   +\varepsilon_{\rm stat}\right].
  \tag{Mat-rel}
  \]
  The positive term is the exact two-label residual exchange, while the
  displayed opposing terms are Gram mixing, unresolved leakage, the
  higher-order matched remainder, source-normal transfer, and numerical
  stationarity. The biorthogonal selectors make this a same-target identity.
  If the higher-order exchange seminorm exceeds
  \(\gamma_{\rm split}|s_M|\), a finite sign-maximized tangent instead
  satisfies
  \[
  \max_{\xi\in{\cal T}_{\rm mat}}\mathcal Q(\xi)
  \ge c_{\rm hi}\|E_I^{(\ge2)}\|_{\rm ex}
   -C_{\rm hi}\bigl[(\nu+\delta_{\rm act})
      \|E_I^{(\ge2)}\|_{\rm ex}+\varepsilon_{\rm stat}\bigr].
  \tag{Mat-hi}
  \]
  Thus a large uncanceled remainder is a positive source, not a defect.
  Fixed exponents and constants are chosen so the capture lower bound implies
  \[
  s^\parallel\ge\sqrt2\|R_I\|_FP^{-D_{\rm cap}/2}
  \Longrightarrow
  \text{either }W_U\ge\gamma_{\rm split}|s^\parallel|\text{ or }
  \max_{\xi}{\cal Q}(\xi)\ge8N_I(g)P^{-D_{\rm gap}}.
  \tag{Mat-margin-10}
  \]
  The required raw inequalities are
  \[
  B_\perp\le c_{\rm rel}s_{\rm cap}/r,\qquad
  r\varepsilon_{\rm stat}/s_{\rm cap}\le c_{\rm mat}/32,\qquad
  \nu+\delta_{\rm act}\le c_{\rm mat}/32,
  \tag{Mat-raw-margin}
  \]
  with \(s_{\rm cap}=\sqrt2\|R_I\|_FP^{-D_{\rm cap}/2}\).  They are derived
  by choosing \(D_{\rm stat}\) after \(D_{\rm cap},D_{\rm gap}\) and retaining
  every numerical \(e\) term on the raw branch; no lower-tail assumption is
  inserted.  If the finite expansion fails to prove these relations or leaves
  an uncanceled term of order \(B_{\rm mat}\) independent of \(s_M\), that
  exact term is a sketch/interface blocker, not a future local assumption.
  This relation is retained on `E_lb^c` with raw terms; only the named
  `E_lb` branch may simplify `eta0` against `nu^2`.
- **Matched singleton and exhaustiveness.** If the all-label alternatives
  leave one common dominant (p), the Gram-ellipsoid equations imply
  \(|\alpha_{p,M}|\ge1-32\delta_{\rm act}\) and hence
  \(|x_{p,M}|\ge1-32\delta_{\rm act}-2\sqrt r\nu>1/3\) in every mode.
  A matched (p\in V_I) therefore violates `Sep <= 1/4`; the only singleton
  output is an unresolved (p\in U_I), with product-one signs and the
  existing singleton score bridge. Threshold equality, all mode permutations,
  opposite signs, \(|U_I|=1\), and the protected-mixture witness
  (u_M=|V_I|^{-1/2}\sum_{p\in V_I}m_{p,M}) are explicit. In that witness
  (W_U=0), `(Mat-ex)` supplies the exchange margin, and no unresolved active
  set is invoked.
- **Accumulation and locality.** This is one finite mass calculation per
  prefix. The protected-error tensor is bounded by the already finite
  `B_hist,F/B_perp` budgets; its sign is not assumed, and no new repeated
  forcing is introduced. The all-label pair enumeration has finite budget
  (O(r^2)) and is consumed once before the next transaction. The obligation
  is `step-local`, not an idea/theorem-contract change.
- **Noncircular closure and flow.** `step_003b` and prior `step_005` records
  produce `E_I^mat`; `step_003c` produces `(All-stat)` and `Theta_act`;
  `step_003d` produces the unresolved singleton or one of the two exchange
  witnesses; `step_004` alone transfers the witness to the actual residual.
  No current matched-mass conclusion is used to produce `E_I^mat`, and no
  root-specific `Theta` row is consumed before `step_005` selects an unresolved
  label.
- **Residual target and baseline.** `E_I^mat`, `R_I^parallel`, and `R_I`
  share the exact realized target (T) and the same product-sphere metric;
  `(SE-raw)` supplies the only projected-to-actual transfer. At `I=emptyset`
  the matched tensor is zero; in the exact `H=e=0` branch all matched mass
  vanishes and the bridge reduces to the exact atom calculation, with no
  additive floor.
- **Repair route.** If the direct calculation behind `(Mat-ex)` or
  `(Mat-margin)` fails, the controller must record that exact remaining
  same-setting obstruction and route to `/proof-sketch`; it must not create a
  new idea under the repeated-blocker policy.

#### Archived unresolved-only alternative (superseded in attempts 9--10)

All formulas in this archived subsection, including the unresolved-only
support implication, are historical and are not exported by attempt 10.
The live producer is the cancellation/high-order bridge above.

The following attempt-8 bullets are retained only as historical context. They
are not a producer of any attempt-10 output; in particular, the assertion that
an unresolved-only active set is nonempty is discarded. All downstream flow
uses `step_003d` and its all-label matched-mass alternative above.

- Set \(s_{\rm low}=\tau_{\min}/(512\sqrt r)\),
  \(\beta=1/(8\sqrt r)\), and
  \[
  {\cal L}_M=\{j\in U_I:|\alpha_{j,M}|\ge\beta\}.
  \tag{Dual-active}
  \]
  Equality belongs to the active set. `(Dual-energy)` and
  `(Dual-perp)` imply
  \(\max_j|\alpha_{j,M}|\ge4\beta\), so each active set is nonempty.
  The upper Gram margin and `(Act-margin)` give
  \(\delta_{\rm act}\le1/256\).
- Define the exact score-Hessian quadratic form
  \[
  {\cal Q}(\xi)=
  2\langle R_I^\parallel,
  \xi_A\otimes\xi_B\otimes w+
  \xi_A\otimes v\otimes\xi_C+
  u\otimes\xi_B\otimes\xi_C\rangle
  -s^\parallel\sum_M\|\xi_M\|_2^2.
  \tag{Dual-Q}
  \]
  Two normalized tangent families are used:
  \[
  z_{j,M}=P_{u_M^\perp}d_{j,M},\qquad
  \xi_j^{MN,\sigma}
  ={1\over\sqrt2}(z_{j,M}/\|z_{j,M}\|,
  \sigma z_{j,N}/\|z_{j,N}\|,0),
  \tag{Dual-single}
  \]
  whenever both displayed norms are at least \(1/4\), and, for \(p\ne q\),
  \[
  z_M^{p,q}=\alpha_{q,M}d_{p,M}-\alpha_{p,M}d_{q,M}.
  \tag{Dual-pair}
  \]
  The latter is exactly tangent because
  \(\langle u_M,z_M^{p,q}\rangle=0\), and
  \[
  \langle m_{\ell,M},z_M^{p,q}\rangle
  =\alpha_{q,M}{\bf1}_{\ell=p}
   -\alpha_{p,M}{\bf1}_{\ell=q}.
  \tag{Dual-select}
  \]
  Normalize `(Dual-pair)` using `(Dual-norm)` and form
  all three two-mode pair tangents and all four product-one signed
  synchronized three-mode pair tangents, each with total norm one.
- Low-score branch: if \(s^\parallel<s_{\rm low}\), choose a mode \(L\) and
  \(j\) with \(|\alpha_{j,L}|\ge4\beta\). If
  \(\|z_{j,M}\|,\|z_{j,N}\|\ge1/4\), choose the sign in
  `(Dual-single)` so the label-\(j\) term is positive. Direct
  substitution gives
  \[
  {\cal Q}(\xi_j^{MN,\sigma})
  \ge {\tau_{\min}\beta\over8}-2s^\parallel
      -6\epsilon_{\rm act}\ge8\mu_{\rm act}.
  \tag{Dual-low}
  \]
  If either residual norm is below \(1/4\), `(Dual-stat)` and
  `(Dual-energy)` imply either \(s^\parallel\ge s_{\rm low}\), or
  produce \(q\ne j\) active in the missing mode with the pair
  two-mode bound below. Thus no low-score state is assigned a nonexistent
  outside-span singular-vector witness.
- Common-support branch: if distinct \(p,q\) lie in
  \({\cal L}_A\cap{\cal L}_B\cap{\cal L}_C\), substitute
  `(Dual-pair)` into `(Dual-Q)` and maximize over the four
  product-one signs. The exact selectors retain both \(p,q\) terms and give
  \[
  \max_{\xi\in{\cal T}_{p,q}^{ABC}}{\cal Q}(\xi)
  \ge {c_1\tau_{\min}\beta^3}-6\epsilon_{\rm act}
  \ge8\mu_{\rm act}.
  \tag{Dual-common}
  \]
  Opposite product signs select a different member of the same four-element
  family and satisfy the same bound; no sign is declared favorable before the
  maximum is taken.
- One-mode and two-mode straddling branch: if the active-set intersection is
  empty or changes label across modes, choose \(p,q\) at the first change.
  Either one label has two residual dual directions of norm at least \(1/4\),
  giving `(Dual-low)` with \(s^\parallel\) replaced by its
  `(Dual-stat)` bound, or a pair tangent has
  \[
  \max_{\xi\in{\cal T}_{p,q}^{MN}}{\cal Q}(\xi)
  \ge c_2\tau_{\min}\beta^2-6\epsilon_{\rm act}
  \ge8\mu_{\rm act}.
  \tag{Dual-straddle}
  \]
  This statement is repeated cyclically for \(AB,AC,BC\). Threshold equality
  is active and therefore enters `(Dual-common)` or
  `(Dual-straddle)`, never an unassigned boundary.
- Single unresolved label: when \(|U_I|=1\), pair tangents are not invoked.
  If the state is low-score or two residual dual norms exceed \(1/4\),
  `(Dual-single)` gives `(Dual-low)`. Otherwise
  `(Dual-energy)` and `(Dual-stat)` put all three modes
  in the singleton branch.
- Singleton branch: the complement of the preceding cases has a unique
  \(p\in{\cal L}_A\cap{\cal L}_B\cap{\cal L}_C\), and the exact inequalities
  used in the case split give
  \[
  |\alpha_{p,M}|\ge1-32\delta_{\rm act},\qquad
  \sum_{j\ne p}\alpha_{j,M}^2\le64\delta_{\rm act}^2
  \quad(M=A,B,C).
  \tag{Dual-iso}
  \]
  Multiplying `(Dual-stat)` by the matching dual coefficient,
  summing over every unresolved label and all three modes, and using
  \(x_M=G_M\alpha_M\) gives the sign-safe other-label bound
  \[
  R_{\rm oth}:=\sum_{j\ne p}\tau_jx_{j,A}x_{j,B}x_{j,C},\qquad
  |R_{\rm oth}|
  \le\tfrac18\tau_p|x_{p,A}x_{p,B}x_{p,C}|
      +4\epsilon_{\rm act}.
  \tag{Dual-other}
  \]
  If the dominant product has negative sign, the product-one signed
  single-label tangent has the `(Dual-low)` margin. Hence the
  singleton alternative has positive product-one signs and
  \[
  s^\parallel\ge
  \tfrac34\tau_p|x_{p,A}x_{p,B}x_{p,C}|-5\epsilon_{\rm act}
  =:s_{\rm iso}>0.
  \tag{Dual-singleton}
  \]
- Exhaustiveness and margin audit: the cases are ordered as low score;
  common support; first active-set straddle; \(|U_I|=1\); then the unique
  singleton complement. All mode permutations, signs, and equality cases are
  included in the finite tangent family. `(Dual-norm)` loses at
  most a factor two, every projected frame/history/numerical defect is charged
  among the displayed \(6\epsilon_{\rm act}\), and
  `(Act-margin)` leaves every exchange tangent with
  \[
  {\cal Q}(\xi)\ge4\mu_{\rm act}.
  \tag{Dual-exchange}
  \]

#### Contract and boundary audit

- Residual-to-target adequacy: the dual map and `E_I^mat` are built from the
  same realized primal factors and exact target \(T\); no whitened or
  transformed target replaces it. `step_003d` exports either the unresolved
  singleton, the unresolved structural exchange, or `(Mat-ex)`. `step_004`
  transfers the selected witness to the actual residual using \(B_\perp\).
- Accumulation behavior / scope compatibility: this is one finite calculation
  per prefix. Prior history enters only through the simultaneous
  \(\Theta_{\rm act}(I)\) and \(B_\perp\) budgets, with unknown signs retained
  in \(\epsilon_{\rm act}\); no new recurrence is introduced.
- Obligation locality classification: step-local after this repaired
  source-compatible interface.
- Noncircular closure status:
  `steps_001--003 -> step_003b -> step_003c -> step_003d -> step_004`.
  `step_003d` derives `E_I^mat` from prior records and never assumes a
  matched-mass bound. A root-specific \(\Theta\)-row is consumed only after
  `step_005` receives \(p\).
- Entry-state / first-update stress result: the exact one-mode-correlated atom,
  empty prefix, low score, one/two/all normal modes, unresolved/matched mass,
  protected mixtures, common support,
  one-/two-mode straddling, opposite signs, threshold equality,
  \(|U_I|=1\), \(E_{\rm lb}\), \(E_{\rm lb}^c\), and \(H=e=0\) branches are
  all assigned above.
- Baseline conclusion preserved: at \(H=e=0\), \(G_M=I\), primal and dual
  coordinates coincide, all defects vanish, exact atom certificates are
  singletons, rollback is exact, and terminal refinement has no floor.
- Producer-consumer provenance: `step_003c` produces all-label equations and
  `Theta_act`; `step_003d` consumes the certificate,
  realized Grams, \(R_I^\parallel\), the root-free \(\Theta_{\rm act}\), and
  `step_003b`'s transfer outputs and the generated `E_I^mat`. It produces
  exactly one of the unresolved singleton, structural exchange, or matched
  exchange alternatives for `step_004`; only the unresolved singleton may
  flow to `step_005`.
- Target conclusion false if source vanishes: without exact biorthogonality,
  the one-mode-correlated exact atom has an \(O(\nu)\) false residual; without
  the finite normalized tangent family, mixed support can evade the Hessian
  test. Both mechanisms are now direct consequences of the unchanged setting.
- Repair route if source is unsupported: `/proof-sketch` for an
  interface mismatch; idea generation is not the route for another local
  derivation failure under the user-directed policy.

### Conditional landscape transfer summary (`step_004` and `step_005`)

The former orthonormal-frame activation prose is superseded in attempts 9--10 by
the dual/current-frame `step_003c` plus all-label `step_003d` interfaces above.
The rows in this section record only the downstream transfer and matching
obligations; no support trichotomy or exchange margin is rediscovered here.

- Step IDs: `step_004`, `step_005`.
- Claim class: local isolation, signed descent/curvature, separation, and
  generated matching.
- Theorem role: converts an observable certificate into a theorem-facing atom
  and calibration output.
- Mechanism source: the exact product-sphere Hessian identity and the
  already-produced unresolved-singleton/structural-exchange/matched-exchange
  witness from `step_003d`, combined
  with the same-target transfer from `step_003b`.  This row does not redo the
  support partition or invent a new curvature scale.
- Source-to-claim adequacy: all equations use the full ambient spheres and the
  exact protected residual; projection transfer is exact on target-frame
  coordinates and `(SE-raw)` bounds its score/gradient/Hessian discrepancy at
  the capture and curvature scales, while `(SE-lb)` supplies the eta0-scale
  comparison on `E_lb`.  Sign choices are analysis-only and product-one.
- Residual-to-target adequacy: the produced slot and consumed atom are both
  normalized realized factors, with explicit Euclidean and radius comparison
  `(R-euc)`; no projected or surrogate target is introduced.
- Key positive/control term or structural source: positive isolated score,
  angular Hessian gap, radial equation `g^3=s_I`, and observable capture.
- Opposing defects: static leakage, projected accepted-history forcing,
  source-normal forcing `B_perp`, numerical e, mixed-support curvature, and
  separation ambiguity.  `Theta_I` controls the target-frame class and
  `(SE-raw)` controls the source-normal class before the chosen capture and
  curvature gaps are invoked; `(SE-lb)` is a separate branch-qualified
  calibration comparison.
- Closure/dominance relation: the structural and matched exchange margins
  from `step_003d` are compared with the observable Hessian threshold using
  `(Mat-margin)` and the existing `g^3(mu_act-3B_perp) >=
  2N_I(g)P^(-D_gap)` relation; the unresolved singleton is transferred to the
  actual score and is the sole downstream commit branch.
- Accumulation behavior / scope compatibility: conditional on one legal prefix;
  no cross-prefix claim is made until `step_009`.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_003b -> step_003c -> step_003d ->
  step_004 -> step_005`; `step_009` later supplies the prior-prefix records used by the
  next temporal `step_003b` invocation.
- Entry-state / first-update stress result: empty state has `A=0`; positive
  score seeds activate the radial root, while zero/negative score seeds are
  unsuccessful or sign-flipped.
- Baseline conclusion preserved: exact atom certificates at H=A=e=0 are
  matched exactly and remain separated.
- Producer-consumer provenance: only the transferred unresolved singleton
  output feeds `step_005` (which stores the post-fit audit), then `step_006`, `step_009`,
  `step_011`, and `step_014`; the stored audit is a prior-iteration input to
  the next `step_003b` invocation.
- Null or boundary regime tested: empty protected set, zero score, partial
  support, straddling support, and separation threshold `1/4`.
- Target conclusion false if source vanishes: without the same-target transfer,
  a projected exchange witness would not contradict the full-space certificate.
- Repair route if source is unsupported: `/proof-sketch` for a transfer-scale
  mismatch; idea generation is not the route for another local activation
  derivation failure under the user-directed policy.

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
| `E_inst`, `E_lb`, realized target, norms, Grams, weights | `step_001` | six primitive source assumptions, Gaussian tails, dimension, smoothing margin, and disjoint-pair anti-concentration | norm/Gram deviations depend on `rho,kappa,n`; lower-tail failure is charged to `r^(-20)` and is not primitive | realized `A,B,C,T` are exactly the consumed objects | each deviation is reserved below `nu_star`; anti-concentration gives `nu>=P^(-D_lb)` only on `E_lb` | `nu_star`, pair/triple `1/16` gaps, `2 Gamma_star`, finite probability budget | `step_002`, `step_003b`, `step_009`, `step_013`, `step_016` | None |
| H/J/K, leakage, S, transfer gaps | `step_002` | R-src, columnwise Cauchy--Schwarz, Schur products, exact transfer map | signed Gram entries, J padding, and row sums are kept distinct; no absolute-Gram operator claim | exact array domain and zero-diagonal convention match all downstream arrays | transfer norms are at most `2(nu+eta0)(1+sqrt(r)nu)` and yield `q_res,q_row<=1/4` | column l2 source, `K` l1 bound, and fixed Gram reserve | `step_003`, `steps_004--009`, `step_013` | None |
| Conditional `Theta_I` and local precommit `z` definition | `step_003` | S, conditional actual A, numerical all-ones source, both q gaps, and the zero-diagonal convention | static, history, and numerical forcing classes remain separate; no quantitative row bound is exported here | exact current residual coordinates and the locally defined z array use the same root/mode/label frame consumed by the J charge | nonnegative Neumann series converges with factor `1/(1-q_res)`; define `z_(p,M,ell)=Theta_(I;p,M,ell)+C_num e` off diagonal and zero on the diagonal | `q_res,q_row<=1/4`, empty-history base, and proof-only numerical padding | `step_003b`, `step_003c`, `steps_004,005,006,007` | None |
| Full-history source-normal exclusion and projected residual transfer | `step_003b` | `step_001` source spans, `E_lb`, pair/triple gap; `step_002` row sums; `step_003` Theta; prior-iteration `step_005` matching/R-euc/post-fit records supplied by `step_009` | numerical post-fit forcing is controlled by `e Lambda_nor`; structural within-span errors remain in `A_I/Theta_I`; off-diagonal normal coefficients are controlled by `q_nor` | produced `R_I^parallel=Pi_star R_I` and consumed `R_I` use the same target and ambient metric; target-frame contractions are exactly equal; `(Hist-F)` and `(Res)` give `norm_(sigma,F)((Id-Pi_star)R_I)<=B_perp` | triangular normal equations plus `(1-q_nor)^(-1)` give `B_perp`; `(SE-raw)` is unconditional, while `E_lb` gives `(SE-lb)` for `tau_min eta0` | pair-Khatri--Rao unit diagonal, `q_nor<=1/4`, explicit unresolved-target/error reserve, and fixed `D_stat` slack | `step_003c`, `step_004`, current `step_005` audit, `step_009`, `step_011`, `step_016`; the next temporal `step_003b` consumes the audit stored by current `step_005` | None |
| Dual/current-frame activation algebra | `step_003c` | certificate capture/radial equations, `R_I^parallel`, `(Res)`, `(SE-raw)`, realized `G_M`, complete candidate-indexed `Theta_I`, and the root-free `Theta_act` maximum | exact Gram coupling is retained through `x=M^T u`, `alpha=G^(-1)x`; history, numerical, and source-normal defects enter the displayed `epsilon_act` | primal and dual coordinates use the exact realized atoms; `(Dual-stat)` is exact on the one-mode-correlated atom; no support conclusion is exported here | ordered `(Act-rad)`, all-label coordinate equations, and normalized dual tangent identities are passed to `step_003d` | `s_low`, `beta_act`, `delta_act`, `mu_act`, and raw defect terms; no additive `O(nu)` frame defect | `step_003d` | None |
| Matched-mass/all-label exchange alternative | `step_003d` | exact indicator equation `(All-stat-10)`, `E_I^mat`, `E^(1)+E^(>=2)` decomposition, all-label energy, and capture certificate | first-order matched baseline is canceled by `(Mat-cancel)`; higher-order remainder, Gram mixing, source-normal, unresolved leakage, and numerical classes remain explicit | `E_I^mat` and `R_I` share the exact realized target and ambient Hessian; no surrogate | `(Mat-rel)` or `(Mat-hi)` gives a linear `|s_M|/r` source; raw `(Mat-raw-margin)` and `(SE-raw)` dominate defects; no `B_mat^2` term | `step_004`; only unresolved singleton flows to `step_005` | None |
| Certificate matching and calibration | `steps_004--005` | unresolved singleton from `step_003d`, `(Act-rad)`, `(SE-perp)`, `(SE-raw)`, branch `(SE-lb)`, capture, and separation | projected target-frame, source-normal, numerical, matched-exchange, and guard defects are split; all-label support is discharged by `step_003d` | `step_004` transfers the same-target singleton to the actual residual; the accepted slot is compared directly with the exact realized atom in `(R-euc)` | singleton plus `(SE-raw)` gives the isolation margin; `(SE-lb)` is used only for eta-scale calibration on `E_lb` | positive `s_iso`, radial root, angular gap, separation `1/4`, and `B_perp` slack | `steps_006,009,011,014`, plus the next temporal `step_003b` consumer | None |
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
| `E_inst` and exact representation | event, conditioning, baseline | Gaussian concentration, normalization, direct CP identities | primitive assumptions and current notation | same realized columns, Grams, and tensor as goal | normalized Gram and Frobenius conventions are identical | tail reserve below `nu_star`; Schur products below `1/16` | six source assumptions export every displayed event component | produced `T` is the consumed target exactly; no surrogate | one-drawn finite union, no accumulation | primitive assumptions -> `step_001` | `step_001` -> `steps_002,003b,009,013,016` | zero perturbation and exact target pass | step-local | None |
| `E_lb` lower-tail branch | derived numerical nondegeneracy and absorption support | Gaussian anti-concentration for disjoint normalized cross-Gram coordinates | direct consequence of `assump:gaussian-smoothing`, norm event, and dimension/rho regimes | supports only the branch-qualified `(SE-lb)` and ledger simplifications, not a primitive source condition | same normalized Gram convention and same `nu_real` consumed downstream | `P(E_lb^c)<=r^(-20)` and `nu_real>=P^(-D_lb)`; choose `D_stat` after `D_lb` so `B_perp<=c tau_min eta0` and `r^2e,sqrt(r)e<=c nu^2` on this branch | raw variance `rho^2/n`, polynomial `rho^(-1),kappa`, and independent disjoint pairs are exposed | no object transfer; the branch is a property of the exact realized instance | once-drawn branch; outside it only raw comparisons are retained | primitive Gaussian source -> `step_001` -> `step_003b` -> branch-aware `step_004,step_007,step_008,step_009,step_016` | `step_001` produces it; `step_003b` consumes it for `(SE-lb)`, and later steps consume the raw or branch-qualified interfaces | finite `e>0,nu=0` is raw-only; exact H=0,e=0 equality and lower-tail branch pass | step-local | None |
| H/J/K and transfer gaps | positive small-gain, resolvent support | column l2 Cauchy-Schwarz, Schur products, exact `Tcal` | direct derivation from `step_001` in setting convention | R-src and both gaps have exact downstream shape | absolute entries are analysis-only; algorithm never queries them | transfer norm `2(nu+eta0)(1+sqrt(r)nu)`, `q<=1/4` | raw H columns and J rows control every displayed defect | same array domain and zero-diagonal embedding | geometric accumulation is summable by `1/(1-q)` | `step_001 -> step_002` | `step_002` -> `step_003` and ledger steps | H=0 gives q=0; q=1 excluded | step-local | None |
| Conditional `Theta_I`, root-free `Theta_act`, and local z | generated boundedness, activation input, and local charge interface | nonnegative Neumann series, simultaneous maximum over all candidate rows, and zero-diagonal local z definition | direct current-notation derivation | full `Theta_I` exists for every unresolved candidate before selection; `Theta_act=max_(j,M) norm_2(Theta_(j,M,.))` is root-free, while a root-specific row is consumed only after `step_005` selects p | exact array coordinates and balanced convention match activation and charge consumers; no target label is queried | `Theta` converges; `Theta_act` is bounded from the current prior-prefix raw budget; local z is defined off diagonal and its later quantitative row control remains in step 007 | S, conditional A, e, q, and zero-diagonal convention are available before export | Theta/z are analysis arrays in the same root/mode/label coordinates, not surrogate tensors | one conditional full array per prefix; no repeated-scope bound is exported here | `step_002 -> step_003 -> step_003c`; selected row only `step_005`; local z -> `step_006/007` | `step_003` -> `step_003b,step_003c,step_005,step_006,step_007` | empty A=0, simultaneous rows, zero diagonal, exact branch, and pre/post-selection order pass | step-local | None |
| Full-history source-normal exclusion and capture transfer | source support, residual-to-target bridge, capture/curvature scale | certificate post-fit normal equations, generated prior matching and `R-euc`, pair-Khatri--Rao gap; D1/F1 are provenance for the proof pattern only | direct current-notation derivation under the exact asymmetric source; cited papers are not wrappers because their procedures differ | source-normal rank-one witness is controlled in the same product-spectral/Frobenius metric consumed by the full-space Hessian; target-frame projections preserve `A_I/Theta_I` exactly | exact realized source-span projectors, asymmetric CP factors, and product-sphere residual convention match the current setting; cited papers are not used to transfer a theorem | `(Hist-F)` and `(Res)` derive the residual reserve; `a_t + sum_(q<t) c_qt a_q=-b_t`, `norm(a_t)<=e Lambda_nor`, `sum_abs(c_qt)<=q_nor<=1/4`, telescoping -> `B_perp`; `(SE-raw)` is unconditional and `(SE-lb)` is `E_lb`-conditioned | raw `R-euc`, pair-Gram row sums, `q_nor`, `E_lb`, and `Theta` are available before export; target-frame contractions stay in `A_I/Theta_I` | actual `R_I` and `Pi_star R_I` share the same target; normal residual `B_perp` is dominated at capture/curvature scales, and at `tau_min eta0` only on `E_lb` | finite triangular recurrence; numerical forcing has sign-free norm `r e Lambda_nor`; no structural source-normal forcing accumulates | prior accepted records -> current `step_003b` -> `step_003c` -> `step_004`; `step_009` supplies prior records and consumes raw/branch outputs; no circular self-use | current `step_003b` -> `step_003c,step_004,step_005,step_009,step_011,step_016`; next iteration consumes stored `step_005` audit | empty prefix and first commit have zero structural normal term; finite `e>0,nu=0` is raw-only; invisible rank-one completion fails `(SE-raw)`; exact H=e=0 gives equality | step-local | None |
| Dual/current-frame activation algebra | source-compatible coordinate and tangent identities | ordered capture/radial scale, exact biorthogonality, Gram-ellipsoid stationarity, root-free `Theta_act`, and normalized dual tangents | direct current-notation derivation from `steps_001--003b`; no external theorem wrapper | `(Dual-stat)` passes the one-mode-correlated exact-atom test; all-label equations and tangent identities have the exact interface consumed by `step_003d` | `D=MG^(-1)` is built from the same realized primal factors; Gram effects remain exact in `x=G alpha` | ordered `(Act-rad)`, dual energy/norm/selectors, and all-label coordinate bounds | `s_low`, `beta_act`, `delta_act`, `eps_act`, `mu_act`, dual norm bounds, and raw history terms | projected and actual residuals share the exact target; no support conclusion is exported here | one-prefix calculation; history enters through simultaneous `Theta_act` and finite `B_perp` | `steps_001--003 -> step_003b -> step_003c -> step_003d` | `step_003d` | exact atom with one-mode correlation, radial boundary, and exact branch pass | step-local | None |
| Matched-mass/all-label exchange bridge | source-compatible support activation and strict-saddle alternative | exact `(All-stat-10)`, `(Mat-cancel)`, `E_I^mat`, and the `E^(1)+E^(>=2)` decomposition | direct current-notation derivation from `step_003c` and `step_003b`; no external theorem wrapper | `(Mat-rel)` cancels first-order matched baseline; `(Mat-hi)` promotes a large higher-order remainder; matched singleton is rejected by `Sep` | `E_I^mat` and `R_I` are same-target ambient objects; `(SE-raw)` transfers every selected tangent | `(Mat-margin-10)` compares the linear `|s_M|/r` source to `8N_I(g)P^(-D_gap)`; `(Mat-raw-margin)` keeps raw `e` and `B_perp` explicit on `E_lb^c` | `B_mat` is only a decomposition budget; cancellation residuals, higher-order exchange, signs, and capture/radial scales are exposed | same-target residual decomposition and exact product-sphere tangent metric | one finite mass/exchange calculation per prefix; no new recurrence or hidden matched-mass assumption | `step_003c -> step_003d -> step_004`; `step_009` supplies prior records | `step_004`; unresolved singleton -> `step_005` | separated protected mixture with `W_U=0`, matched singleton, threshold equality, `|U_I|=1`, raw `E_lb^c`, and exact H=e=0 pass | step-local pending finite-expansion proof | /proof-sketch if an uncanceled absolute term remains |
| Matching, calibration, injection | support/membership, generated entry | radial root, angular stationarity, finite sign orbit, and transferred unresolved singleton from `step_003d` | direct derivation from `step_003d -> step_004` and setting equations | `R-euc`,`R-dir`, and the stored normal audit are the exact consumed interfaces | signs are analysis-only; target labels are not algorithm inputs; dual coordinates use the same realized source spans | unresolved singleton plus `(SE-raw)` gives the isolation margin; `(SE-lb)` is used only on `E_lb` | score, gap, capture, separation, root-specific `Theta` available after selection, `B_perp`, and `E_lb` are available | actual accepted slot is compared with the exact realized atom in the ambient factor metric | one output per accepted commit, finite at most r | matched-mass bridge -> transfer -> matching/audit -> next temporal bridge | `step_005` -> `step_003b,step_006,step_009,step_011,step_014` | empty state, first positive score, protected mixture, separation threshold, and invisible witness pass | step-local | None |
| J charge/update and O.1 audit | signed transition and local numerical interface | exact multilinear expansion with same J baseline and local z from step 003 | direct current-notation algebra | exact `J-update` and honest `J-two-label` have the setting target shape | `J_M(p,p)=1`, off-diagonal `J=H`, and zero-diagonal z are identical conventions | `O(h^4+e h+e^2)` retains positive `h z` and `z z`; dominates exact increment at `h=e^2` | calibration, weight ratio, H, local z, and eta are raw; structural and numerical classes are split | `E_i` and target-frame contraction are same objects and norm | nonnegative one-step charge; finite prefix sum | `step_003 -> step_005 -> step_006`; no self-use of the later rowwise bound | `step_006` -> `steps_008,009` | h=0, h<<e, h=e^2, cyclic modes, transitive off-diagonal | step-local | None |
| Raw z bound and global ledger | recurrence, invariant, finite accumulation | rootwise l2 Neumann contraction and Cauchy-Schwarz factorization applied to local z | direct derivation from `steps_002,003,006` | raw profile, `J-global`, and `R-acc` exactly match setting; simplified `J-row` is branch-qualified | same root blocks, l1 arrays, and commit order convention | one-step `Delta A <= 2 Gamma Upsilon`; sum structural `r nu^3`, numerical `r^2e`; `E_lb` alone supplies any `nu^2` absorption | local z from step 003, prior prefix budget, q_row, and J charge are named controls | actual history and accepted errors feed the exact consumed arrays; no factor-distance interface is claimed | finite-budgeted, sign-controlled nonnegative charges, no extra label factor | `step_003 -> step_006 -> step_007 -> step_008 -> step_009` | `step_007` -> later landscapes, transactions, and final ledger audit | isolated O.1 `nu=h`, dense/block, every commit order, s<=r, tiny-nu branch | step-local | None |
| Protected-state closure | all-prefix invariant and generated output | finite induction plus exact rollback and the `step_003b` triangular normal bridge | direct induction in current setting | every invariant clause, including source-normal exclusion, `(Res)`, `(SE-raw)`, and branch `(SE-lb)`, is listed in the goal | protected slots frozen and failed slots joint-zero exactly match protocol | prior valid prefix + `step_003b` normal solve/reserve + successful transition -> next valid prefix; failure leaves prefix unchanged; only `E_lb` permits eta0 absorption | `steps_003b--008` provide each raw clause before closure; `step_001` provides `E_lb` | actual protected residual is the same `R_I` consumed by next transaction; its projection is only an analysis bridge | finite at most r; failed probes have zero forcing; normal forcing is finite `r e Lambda_nor` | base `I=emptyset,A=0,B_perp=0` -> one-step normal/landscape/charge producers -> next prefix; next iteration consumes stored `step_005` audit | `step_009` -> `steps_010--012`; `step_012` then produces the terminal tuple | first commit, last unresolved root, tiny-e raw branch, `E_lb`, and exact limit are included | step-local | None |
| Transaction reachability and tape | support, probability, rollback | exact dynamics, Haar anti-concentration, independence | direct protocol derivation plus `assump:random-tape` | certificate and tape events have exact target probability/mode | full-space Haar and exact-loss Armijo conventions match setting | `p_tx >= (nr)^(-c_tx)`; stopped tail with `N_tx` yields `1-r^(-10)` | score windows, step lower bound, guard, and independent tape are raw controls | success is actual slot; failure equals exact pretransaction state | failed probes contribute zero; successes finite and injected once | `step_009 -> step_010 -> step_011 -> step_012` | `step_012` -> `step_014` | zero score, missing root, guard, exhaustion, exact rollback | step-local | None |
| Exact-target PL geometry | coercivity, positive radius, quadratic growth | exact balanced Jacobian, pair/triple gaps, weight scales, direct Taylor bounds, and compact-chart derivative bounds | direct current-notation derivation from `step_001` | Jacobian lower bound has the exact balanced tangent claim class and exports PL in the consumed chart | exact nonorthogonal target, finite orbit, full-state Euclidean metric, and exact Frobenius residual match | `sigma_min(DPsi)>=c_J g_minus^2`; at `varrho_PL=c_chart g_minus/r`, Jacobian and residual-Hessian defects are each below one quarter of the exact-root floor; derive `L_chart=C_L g_plus^4` before defining `C_path_star`, then obtain quadratic sandwich and `mu_PL>=c_mu g_minus^4` | pair/triple gaps, `g_plus/g_minus<=chi_tau`, radius guard, finite orbit separation, `g_minus>=(2kappa)^(-1)`, `kappa<=r^c0`, and fixed dimensionless `C_L`; hence radius and PL are at least `P^(-D_PL)` | produced and consumed target is exactly `Qstar`; no transformed or surrogate object and no entry premise | local deterministic Taylor/smoothness control, no accumulated defect | `step_001 -> step_013` | `step_013` -> `steps_014,015,016` | exact target is stationary with active tangent floor; minimum weight and chart boundary pass | step-local | None |
| Same-target full-state entry | generated basin membership and discovery-to-terminal bridge | all-commit bijection/signs, `R-euc`, cube-root identity, weight balance, upper Gram margin, fixed numerical exponent | `steps_001,005,009,012,013` | per-slot radial/direction calibration directly supplies the full-state factor claim after one Cauchy--Schwarz sum | actual `Q_fin` and exact `Qstar` orbit use the same full-state metric; unused zero slots are equal | `dist(Q_fin,Zstar)<=C_ent g_plus sqrt(3r)eta0`; dividing by `c_chart g_minus/r` leaves `C_ent sqrt(3)chi_tau r^(3/2)eta0`, whose structural and numerical pieces are at most `O(1/(sqrt(r)log^2 r))` and `O(r^(-1/2))`; choose `r_0` for `dist<=theta_ent varrho_PL` | raw `R-euc`, `nu<=2/(C_nu r log(2r))`, `D_stat>=2`, `chi_tau`, and `step_013` radius are available; `R-acc` is explicitly not a factor source | radial residual and signed direction residual are separately controlled at the required chart scale; the formerly missing `sqrt(r)` and weight terms are retained and dominated | one-time finite sum over exactly r slots; no iterative forcing | matching/injection -> protected induction -> all-commit tuple; independently event -> PL radius; both -> `step_014` | `step_014` -> `steps_015,016` | independent O.1 blocks give ratio `O(1/(sqrt(r)log^2 r))`; H=e=0 gives exact equality | step-local | None |
| Terminal first-exit and public rate | contraction, arbitrary accuracy, baseline | PL/quadratic chart, strict entry reserve, exact-loss Armijo, direct specialization | `steps_013--016` | signed descent and local path control match first-exit and relative-error claims | same exact target and Frobenius endpoint throughout | total path `<=C_path_star dist(Q_fin,Zstar)` stays inside the chart; PL gives geometric loss decay with no additive term; radius and PL are at least `P^(-D_PL)` | `theta_ent`, `C_path_star`, `mu_PL`, epsilon, and separate instance/tape events | final residual is exactly `T-Psi(Q)`; no baseline/surrogate transfer | contractive finite logarithmic horizon; no persistent forcing | `step_013 -> step_014 -> step_015 -> step_016` | `step_016` -> final theorem | exact target stationary, epsilon -> 0, chart boundary and no-floor baseline pass | step-local | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| `E_inst` and exact `T` | `step_001` from primitive assumptions | `steps_002,003,003b,009,013,016` | source event and target representation | assumptions -> `step_001` -> static/prefix/terminal modules; `step_003b` consumes source spans and reserve | derived | None |
| `E_lb` lower-tail event | `step_001` from Gaussian anti-concentration | `step_003b,steps_007,008,009,016` | permits `(SE-lb)` and numerical-to-structural comparisons only on the derived branch | Gaussian smoothing -> disjoint-pair anti-concentration -> `E_lb` -> `step_003b` branch -> later branch-aware consumers; raw interfaces remain outside the branch | derived | None |
| H/J/K, S, leakage, transfer gaps | `step_002` | `steps_003--009,013` | static source and resolvent | `step_001 -> step_002 ->` all ledger/PL consumers | derived | None |
| Complete candidate-indexed `Theta_I` and root-free `Theta_act` | `step_003` produces all rows simultaneously; `step_003c` derives the maximum from the current prefix budget | root-free maximum: `step_003c`; selected row only after p exists: `step_005`; local profile: `step_007` | activation defect before selection and direction envelope after selection | `step_002 -> full Theta_I -> root-free Theta_act -> step_003c -> p -> selected Theta row in step_005` | explicitly conditional | None |
| Local precommit zero-diagonal `z` profile | `step_003` from `Theta_I` and the proof-only padding convention | `step_006, step_007` | exact local J-charge coordinates and later rowwise bound | `step_002 -> step_003 ->` local z; no norm simplification is assumed | explicitly conditional | None |
| Full-history source-normal bound `(SE-perp)` and capture transfer `(SE-raw)/(SE-lb)` | `step_003b` | `step_003c`, current `step_005` audit path, `step_009`, `step_011`, `step_016`, and the next temporal `step_003b` | full-space landscape has no invisible outside-span history; `(Hist-F)/(Res)` and target-frame identity are exported; `(SE-lb)` is branch-qualified | `step_001,step_002,step_003` plus prior accepted `step_005` records (supplied by `step_009`) -> current `step_003b` -> current `step_003c` -> current `step_004` -> current `step_005` audit -> next temporal `step_003b`; `step_009` reuses the same bridge at each later prefix | `derived` | None |
| Dual/current-frame activation algebra | `step_003c` from the observable certificate, realized Grams, `R_I^parallel`, root-free `Theta_act`, and `step_003b` transfer outputs | `step_003d` | exact all-label coordinate equations and normalized tangent identities; no unresolved support claim is exported | `step_001/002/003 -> step_003b -> Act-rad -> Dual-stat -> all-label equations -> step_003d` | derived | None |
| Matched-mass/all-label exchange alternative | `step_003d` from exact `(All-stat-10)`, `(Mat-cancel)`, and the `E^(1)+E^(>=2)` split | `step_004`; only the unresolved singleton is then consumed by `step_005` | exact indicator plus cancellation; `(Mat-rel)` or `(Mat-hi)` excludes matched mixtures; matched singleton is excluded by `Sep` | `step_003c -> step_003d -> cancellation/mass split -> relative or high-order exchange or unresolved singleton -> step_004 -> step_005` | derived | None |
| Certificate matching and calibration | `steps_004--005` | unresolved singleton from `step_003d`, transferred `(SE-perp)/(SE-raw)`, radial equations, and separation | unique labels, factor errors, and stored post-fit normal audit | `step_003d -> step_004 -> current step_005 audit -> next temporal step_003b -> transition/entry` | derived after activation and prefix bridge | None |
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

Sketch Steps = 19 stable rows (including repair IDs `step_003b`, `step_003c`,
and `step_003d`); all rows
start with `Review status = PENDING`.

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Derive `E_inst`, all norm/Gram/weight/T bounds, pair/triple conditioning, exact balanced target representation, and the derived lower-tail event `E_lb` with probability `1-r^(-10)`. | None | `assump:base-column-conditioning`, `assump:base-product-balance`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:smoothing-scale`, `assump:modewise-gram-margin` | normalization, finite union tails, and a uniform Gaussian anti-concentration lower tail | Gaussian concentration, disjoint-pair anti-concentration, epsilon-net operator bound, direct product algebra | `E_inst`, `E_lb`, `Q^star`, target norm and guard | R1; retain lower-tail probability and all exposed variables | PENDING |
| `step_002` | Derive R-src, leakage, S budget, and l1/rootwise transfer gaps with `q_res,q_row<=1/4`. | `step_001` | derived `E_inst`; `assump:modewise-gram-margin`, `assump:base-product-balance` | absolute-Gram rows and fixed-root block map | columnwise Cauchy-Schwarz, Schur products, three-mode block norm | H/J/K/S and `Tcal` | R2 structural; retain `nu,r,Gamma_star` | PENDING |
| `step_003` | For any legal conditional history, prove convergent l1 and rootwise Neumann envelopes, including empty history, and define the local zero-diagonal precommit z profile from Theta without asserting its rowwise norm. | `step_002` | derived event; explicitly conditional `A_I` | nonnegative resolvent, norm compatibility, and exact local array convention | geometric Neumann series in both induced norms plus the algebraic J-z definition | `Theta_I`, `Theta_empty`, and local precommit z for `steps_006,007` | R2; expose static/history/numerical entries without premature simplification | PENDING |
| `step_003b` | From prior generated accepted-slot certificate, matching, and `R-euc` records, derive `(Hist-F)`, the unresolved-target reverse-triangle reserve `(Res)`, the post-fit normal equations, prove `q_nor<=1/4`, solve the triangular system, and export `(SE-perp)`, `(SE-raw)`, the `E_lb`-conditioned `(SE-lb)`, and exact target-frame projection compatibility. | `step_001`, `step_002`, `step_003` | derived source spans, pair/triple gap, and `E_lb`; prior generated records supplied only by the `step_009` induction; no source-normal or residual-reserve condition is assumed | full-history outside-span control, temporal triangular ordering, explicit positive residual reserve, and branch-correct capture/curvature comparison | direct contraction identities, pair-Khatri--Rao row sums, finite triangular Neumann inversion, projector telescoping, reverse triangle, and differential perturbation bounds | `B_hist,F`, `(Res)`, `B_perp`, `R_I^parallel`, `(SE-perp)`, `(SE-raw)`, `(SE-lb)` | R2; explicit `Lambda_nor`, `q_nor`, `D_stat`, `D_lb` branch, and all P/n/r dependence retained | PENDING |
| `step_003c` | First derive capture, radial comparability, positive `g^3`, and projected score; then use exact current correlations `x=M^T u` and dual coefficients `alpha=G^(-1)x` to prove `Dual-stat`, the exact-atom boundary, root-free `Theta_act`, all-label coordinate equations, and normalized dual-tangent identities. It does not infer that an unresolved-only active set is nonempty. | `step_001`, `step_002`, `step_003`, `step_003b` | derived event, `(Res)`, `(SE-raw)`, complete candidate-indexed `Theta_I`, current prior-prefix raw budget, and the observable certificate; no target label or source-support condition is assumed | radial ordering, exact nonorthogonal Gram convention, root-free preselection interface, adversarial signs, and all-label tangent normalization | biorthogonal current-frame identities, Gram-ellipsoid energy, exact dual selectors, and explicit product-sphere Hessian calculations | `(Act-rad)`, `Theta_act`, `eps_act`, `s_low`, `beta_act`, `delta_act`, `mu_act`, `(All-stat)` | R2; retain raw history/numerical terms and exact Gram coupling | PENDING |
| `step_003d` | From exact `(All-stat-10)` and `(Mat-cancel)`, derive the all-label matched/unresolved alternative. Split `E_I^mat` into `E^(1)+E^(>=2)`; cancel first-order matched coordinates, or promote a large higher-order exchange remainder. Prove the linear `(Mat-rel)`/`(Mat-hi)` margin, reject a matched singleton by `Sep`, and compare capture to `(Mat-margin-10)`. | `step_003c`, `step_003b` | derived `E_I^mat` from prior `(R-euc)` records, `(Res)`, `(SE-raw)`, `Theta_act`, and the observable certificate; no matched-mass condition is assumed | exact indicator, relative baseline cancellation, higher-order residual case split, mixed signs, matched mixtures, and raw branch dominance | direct same-target expansion, finite all-label tangent enumeration, sign maximization, and source-compatible Hessian calculation | unresolved singleton, structural exchange, relative matched exchange, `(Mat-rel)`, `(Mat-hi)`, and `(Mat-margin-10)` | R2; retain `B_mat` only as a decomposition budget, and retain every raw `e` and `B_perp` term | PENDING |
| `step_004` | Transfer the singleton or relative/high-order exchange witness from `step_003d` through `(SE-perp)` and `(SE-raw)`, compare `(Mat-margin-10)` with the observable Hessian threshold, and export the singleton certificate dichotomy without redoing support selection. | `step_003b`, `step_003c`, `step_003d` | derived event and `E_lb` only where explicitly used; conditional prior-prefix records; `assump:base-product-balance` | actual-vs-projected score/gradient/Hessian transfer and exact raw branch comparison | direct product-sphere Hessian identity plus same-target transfer; no coordinate/support/scale conversion | isolation margin and certificate dichotomy | R2; retain `B_perp`, `epsilon_stat`, `D_gap`, and branch-qualified calibration | PENDING |
| `step_005` | Convert a certificate into one unique unresolved label, separation, calibration, `R-euc`, `R-dir`, and injection extension; store the post-commit normal audit consumed by later `step_003b` applications. | `step_004` | conditional outputs; `assump:base-product-balance` | sign orbit, radial error, target compatibility, and normal-audit provenance | radial root, angular equations, finite-orbit matching, and exact post-fit contraction identity | matching/injection, `Cal`, `Diag-cal`, `b_(t,M)` audit | R2; explicit eta/e and `Lambda_nor` dependence | PENDING |
| `step_006` | Using the local z profile from step 003, expand accepted `E`; prove R-tensor, J-charge, J-update, J-diag, repaired O.1 audit, and cyclic/off-diagonal cases without consuming the later rowwise z bound.  The O.1 statement is only for the isolated family with all other displayed labels orthogonal and `nu_real=h`; larger embeddings use the global `nu` ledger. | `step_003`, `step_005` | derived local z and calibration; `assump:base-product-balance` | exact scalar cancellation and diagonal normalization | multilinear expansion and product majorization | `Xi`, `Upsilon`, exact transition interface | R2; retain `e h` and `e^2` | PENDING |
| `step_007` | For the already defined local z profile and a prior prefix budget, use the accepted transition output and prove the raw rootwise l2 bound; recover the declared `J-row` only on `E_lb` or the exact H=0,e=0 limit. | `step_003`, `step_006` | derived event and local z, accepted J update, `E_lb`; prior-prefix output supplied by induction | rootwise versus entrywise norms and finite numerical padding | fixed-root block-l2 Neumann estimate plus explicit branch comparison | `norm_2(z) <= C(nu^2+rnu^3+sqrt(r)e)` and branch-qualified `J-row` | R2; keep `sqrt(r)e` visible and invoke `nu^2` absorption only on `E_lb` | PENDING |
| `step_008` | Factor per-commit charges and sum roots/labels/modes once, proving raw `J-global`, history budget, and R-acc; specialize only on `E_lb` or the exact limit. | `step_006`, `step_007` | prior-prefix row output; derived calibration; `assump:base-product-balance`; branch output `E_lb` | dense/block factorization and diagonal terms | rootwise Cauchy-Schwarz and finite one-time ledger | per-p charge, raw `J-global`, `R-hist-budget`, `R-acc` | R2; target `O(r nu^3+r^2e)` remains unsimplified until branch check | PENDING |
| `step_009` | Close the abstract protected-state induction from `I=emptyset,A=0` through all at most r commits, carrying raw numerical terms and invoking `step_003b`, ordered-scale `step_003c`, matched-mass bridge `step_003d`, and transfer `step_004` before every matching call; use `E_lb`/exact-limit only for named simplifications. | `step_001`, `step_002`, `step_003`, `step_003b`, `step_003c`, `step_003d`, `step_004`, `step_005`, `step_006`, `step_007`, `step_008` | all nine primitive assumptions; prior generated certificate/matching/normal records; derived `E_inst`, `E_lb`; no source-normal, unresolved-support, or matched-mass condition is assumed | noncircular prefix ordering, temporal normal recurrence, root-free/preselection versus selected-row ordering, all-label mass bookkeeping, and unresolved injection | finite induction, triangular normal solve, dual/current-frame algebra, matched-residual exchange, exact rollback-preservation interface, and one-time ledger | raw prefix invariant, `(SE-perp)/(SE-raw)`, unresolved singleton or exchange witness, all budgets, and branch-qualified `(SE-lb)`/`J-row` | R2; uniform finite horizon with no unsupported absorption; carries raw profile outside `E_lb` and specialized rows only on `E_lb` or exact H=e=0 | PENDING |
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
  system with `q_nor<=1/4`.  The reverse-triangle reserve `(Res)` first keeps
  `||R_I||_F` above a fixed multiple of `tau_min`; the archived invisible
  rank-one completion would require a source-normal amplitude at least the
  capture floor.  The unconditional `(SE-raw)` comparison excludes that
  witness at the capture and curvature scales.  On the derived `E_lb` branch,
  `(SE-lb)` additionally makes the normal remainder smaller than the
  `tau_min eta0` calibration scale.  Finite `e>0,nu=0` is raw-only and receives
  no eta-scale absorption; the exact `H=0,e=0` branch gives equality.
- Outside-span boundary: directions orthogonal in one, two, or all three
  modes are tested separately.  The projected residual preserves every
  target-frame contraction exactly; the normal recurrence controls all sectors
  of `(Id-Pi_star)R_I` by the same telescoping bound.
- Dual/current-frame and matched-mass activation boundary: first derive
  `(Act-rad)`. On the attempt-7 counterexample with only mode A correlated and
  the scratch state equal to atom 1, verify `x_A=G_Ae_1`, `alpha_A=e_1`, and
  exact zero label-2 residual in `(Dual-stat)`. Then test all-label energy,
  unresolved versus matched score mass, `s_parallel<s_low`, one active label,
  two-label common support, one- and two-mode straddling, opposite product
  signs, exact threshold equality, `|U_I|=1`, and the separated protected
  mixture with `W_U=0`. The finite tangent family includes normalized
  single-label dual residuals, all three pair two-mode rotations, and all four
  product-one synchronized three-mode rotations, including matched pairs. A
  fully source-perpendicular point is handled by `(Dual-perp)`, never by an
  unsupported singular-vector claim.
- Lower-tail branch: test `0<nu<nu_lb` as the excluded `E_lb^c` event and
  `nu>=nu_lb` as the theorem branch.  The raw profile and raw global budget
  remain valid in both descriptions; only the latter branch exports `(SE-lb)`
  and permits a `nu^2` simplification.  The exact `H=e=0` limit is handled by
  equality rather than by this branch.
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
envelope and local precommit z definition in `step_003`.  The temporal bridge
path is explicit:
`step_001/002/003 + prior-iteration step_005 audit -> step_003b -> step_003c
-> step_003d -> step_004 -> current step_005 audit -> next step_003b`.
Here `step_009` supplies the prior-iteration certificate, matching, `R-euc`, and
post-fit audit records by finite induction; those records are temporal inputs,
not a static dependency edge or a circular assumption.  At the empty prefix
the prior-audit input is empty and `B_perp=0`.  Each current `step_003b`
invocation derives `(Hist-F)`, `(Res)`, `(SE-perp)`, and unconditional
  `(SE-raw)` before `step_003c`; only the named `E_lb` branch additionally exports
  `(SE-lb)`.  `step_003c` first derives capture/radial/projected-score scales,
  then the exact dual/current stationarity equations, root-free `Theta_act`, and
  all-label tangent data. `step_003d` derives the matched-mass split and the
  finite structural/matched exchange alternative. `step_004` transfers that witness
and `step_005` performs matching and only then consumes the selected
`Theta_(I;p,M,.)` row.  These
steps then precede the exact transition and rootwise/global ledger
(`steps_006--009`).  The local z
definition is consumed by `step_006`, while its quantitative rowwise bound is
produced only by `step_007` and consumed by `steps_008--009`.  `step_009` proves
the abstract finite success/failure prefix-preservation interface, including
the temporal inputs needed by the next bridge, before transaction and tape
steps (`steps_010--012`) consume that invariant; no concrete transaction output
flows backward into `step_009`.
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
capture, baseline, or endpoint claims.  The raw `(SE-raw)` interface is retained
outside `E_lb`; `(SE-lb)` is consumed only after `step_001` has produced the
branch, and the exact zero-defect branch is equality.

## Blockers

PARTIAL_BLOCKED at sketch level. Attempt 10 preserves the exact
`O(h^4+e h+e^2)` interface and the accepted full-history source-normal bridge.
It deletes the sketch-9 absolute `epsilon_all/B_mat` interface. The live
candidate bridge uses the exact unresolved indicator `(All-stat-10)`,
`(Mat-cancel)`, the `E^(1)+E^(>=2)` split, and the linear
`(Mat-rel)`/`(Mat-hi)` exchange alternative.

1. The finite direct expansion proving `(Mat-rel)`, `(Mat-hi)`, and
   `(Mat-raw-margin)` remains unproved. It must show that every first-order
   matched term is canceled by `(Mat-cancel)` and that no uncanceled term
   of order `B_mat`, independent of `s_M`, remains. This is an honest
   sketch/interface blocker, not a local hypothesis.
2. The raw `E_lb^c` branch must prove `B_perp <= c s_cap/r` and
   `r epsilon_stat/s_cap <= c_mat/32` with source-normal, numerical,
   unresolved-leakage, and higher-order classes kept separate. If either
   comparison fails on an allowed instance, no viable same-setting sketch is
   currently established.
3. No `idea_10` artifact is created or consumed. Under the repeated
   activation/exchange policy, this bridge remains routed to `/proof-sketch`;
   only a demonstrated theorem-contract obstruction may cause the controller
   to choose idea failure.
