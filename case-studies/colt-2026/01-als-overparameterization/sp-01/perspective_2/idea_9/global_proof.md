# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_9`.
- Sketch attempt: 9.
- Global unit attempt: 2 under accepted sketch attempt 9.
- Binding idea: `perspective_2/idea_9/idea.md`, SHA-256
  `bc2eb7163a21b79d11fb5af6cd746eb70ea94141ca95501818f11f40a62894b6`.
- Binding setting: `perspective_2/idea_9/setting.md`, SHA-256
  `27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2`,
  in target-spec `material_partial` mode.
- Reviewed sketch: `perspective_2/idea_9/proof_sketch.md`, SHA-256
  `ec03ae55ed75fb555f0aa2401c28a14a042d6195679afc41b331e92dbe782fb3`.
  It contains nineteen stable rows, including `step_003b`, `step_003c`, and
  `step_003d`, and fixes the temporal landscape chain
  `step_003b -> step_003c -> step_003d -> step_004 -> step_005`.
- Accepted sketch review:
  `perspective_2/idea_9/proof_sketch_review.md`, SHA-256
  `ed7df07285be0ad9f63cd1ee40d2db961982ee24ad93eb0e573c4dccf6c8f1c9`,
  with `Sketch Review Status = ACCEPTED`, viability score 8, smallest retry
  target `None`, and retry mode `none`.
- Triggering global review:
  `perspective_2/idea_9/global_proof_review.md`, SHA-256
  `c825cdc8f1474b3de163e28f21109826d6dbc6bba86fad91888c5cf6a137ce01`,
  with `Global-Proof Review Status = REVISE_GLOBAL`. Its repair bundle is
  applied here without changing the accepted sketch, setting, assumptions,
  rates, probability modes, metric, baseline, or conclusion.
- The exposed rank remains
  `k=ceil(C_rank r^(3/2)(log(2r))^2)`, with `r<k<r^2`.
- No `idea_10` artifact and no file under `proof_history/` is consumed. Older
  sketch-8 diagnostics are lineage only and are not current evidence.

## Status

PARTIAL_BLOCKED

The accepted sketch-9 architecture closes at theorem-diagnostic granularity.
Every theorem-facing generated output has a producer and a forward consumer
path, and every unresolved theorem-critical obligation below is `step-local`
under the unchanged sketch. In particular, this draft does not assign support
selection to `step_003c`. That step produces ordered radial scale, exact
current/dual coordinates, root-free `Theta_act`, all-label stationarity, and
normalized tangent identities. `step_003d` is the sole producer of the
protected-error/mass split, the unresolved structural alternative, the
matched exchange `(Mat-ex)`, matched-singleton rejection, and the margin
`(Mat-margin)`. `step_004` transfers the completed witness to the actual
residual, and only an unresolved singleton reaches `step_005`.

Substantial derivations still have to be proved by fresh step workers. The
diagnostic therefore is not `COMPLETE_DRAFT`, but it finds no missing step,
dependency, mechanism source, source-target bridge, accumulation interface,
or theorem-contract change that would force `SKETCH_BLOCKED`.

## Attempted Theorem Claim

Goal mode is `target-spec`; progress type is `material_partial`. Uniformly
over every deterministic base triple satisfying the nine primitive
assumptions in `setting.md`, choose fixed class/protocol constants and fixed
proof exponents so that the following theorem is attempted.

1. With probability at least `1-r^(-10)` over the once-drawn Gaussian
   smoothing, all realized columns are nonzero, their norms and product
   weights obey the stated polynomial and `2 Gamma_star` bounds,
   `nu_real<=2nu_star`, the pair and triple Khatri-Rao Grams have the stated
   `1/16` gaps, the exact realized tensor has the stated Frobenius norm
   comparison, and its exact balanced rank-r representation lies in the
   radius guard. The event also contains the derived branch
   `E_lb={nu_real>=P^(-D_lb)}` after allocating at most `r^(-20)` additional
   failure probability.
2. Conditional on one such fixed instance, every generated protected prefix
   has the convergent H/J/K resolvent, complete candidate-indexed `Theta_I`,
   local zero-diagonal `z`, full-history source-normal bridge, matching,
   J-aware transition, raw row/global ledgers, and branch-qualified
   simplifications stated in the setting. These facts are conclusions, not
   theorem assumptions.
3. Every full-space scratch state satisfying `(Cert)` is, up to product-one
   signs, an `O(eta0)` radius and Euclidean direction perturbation of exactly
   one unresolved realized target atom. The proof must pass through the
   sketch-9 all-label alternative: `step_003c` exports exact coordinates and
   tangents, `step_003d` rules out matched mixtures by an ambient
   same-target exchange or supplies an unresolved singleton, and
   `steps_004--005` transfer and match the singleton. Each accepted slot then
   satisfies `(R-euc)`, `(R-dir)`, the exact tensor-influence expansion, and
   the symmetric J-aware update. The isolated O.1 charge is
   `O(h^4+e h+e^2)` with positive numerical terms retained, including at
   `h=e^2`.
4. Conditional on the fixed instance, one fresh Haar transaction commits a
   new label with history-uniform probability at least
   `(nr)^(-c_tx)` within `H_tx` work, every failed transaction rolls back
   exactly, and the independent finite tape obtains all `r` distinct commits
   with probability at least `1-r^(-10)`. Discovery work is polynomial in
   `n,r,k,kappa,rho^(-1)` and independent of `epsilon`.
5. The exact generally nonorthogonal target orbit has a balanced full-state
   chart of radius `varrho_PL=c_chart tau_min^(1/3)/r`, PL constant at least
   `P^(-D_PL)`, and gradient Lipschitz scale
   `L_chart=C_L tau_max^(4/3)`. The actual committed tuple enters this same
   chart in full-state Euclidean factor distance. Exact-loss balanced Armijo
   descent stays in the chart and returns, for every `0<epsilon<1`, a rank-k
   iterate with Frobenius residual at most `epsilon||T||_F` in polynomial
   work times `log(1/epsilon)`, with no additive floor.

Instance and tape probabilities remain separate. Hidden constants and
polynomial degrees may depend only on the fixed class and protocol constants
listed in `setting.md`, and not on `n,r,k,kappa,rho,epsilon`, the realized
instance, or the commit order. The theorem remains restricted to the
balanced-product-weight, modewise-near-orthogonal smoothed class and the
specified sequential transactional procedure.

The inherited exact/noiseless baseline is part of the target. At `H=0,e=0`,
all structural and numerical defects, including `B_perp`, `E_I^mat`,
`B_mat`, `epsilon_all`, history charges, and accepted errors, vanish; exact
target slots plus joint-zero unused slots represent `T`; failed probes are
exact identities; and arbitrary relative refinement has no floor.

## Whole-Proof Draft

### G1. Once-drawn realized geometry (`step_001`)

Condition on the deterministic base triple. Gaussian column-norm and Gram
tails, followed by normalization and a finite union bound, give nonvanishing,
the norm bounds, `nu_real<=2nu_star`, and the weight-ratio bound. Schur-product
perturbation then gives

```
||G_M o G_N-I||_op <= 1/16,
||G_A o G_B o G_C-I||_op <= 1/16,
```

and hence the two-sided tensor-norm comparison and the exact balanced target
inside the guard. For `floor(r/2)` disjoint pairs, condition on all but one
isotropic coordinate per pair. The remaining Gaussian density and the norm
event imply a normalized cross-Gram entry of size at least `P^(-D_lb)` except
on probability `r^(-20)`. This produces `E_lb`; it is not a primitive lower
bound. The produced object is exactly the realized `A,B,C,T` used by every
later block, so no population or whitened target transfer occurs.

### G2. Static lifted source and conditional resolvent (`steps_002--003`)

Columnwise Cauchy-Schwarz and Schur products give

```
max_j ||H_M e_j||_2 <= nu,
||H_M||_1=||H_M||_infty <= sqrt(r)nu,
||K_M||_1=||K_M||_infty <= nu^2.
```

The same current-notation calculation controls leakage and
`||S||_1`. Applied to the exact transfer map, it gives both induced-norm
bounds

```
||Tcal|| <= 2(nu+eta0)(1+sqrt(r)nu),
q_res,q_row <= 1/4.
```

Thus, for every legal conditional history,

```
Theta_I=(Id-C0 Gamma_star Tcal)^(-1)
        C0 Gamma_star(S+A_I+e 1)
```

exists simultaneously for every unresolved candidate. `step_003` defines
`z_(p,M,l)=Theta_(I;p,M,l)+C_num e` for `l!=p` and zero on the diagonal,
without yet claiming its row norm. Before a root is selected, later activation
may consume only the root-free maximum
`Theta_act=max_(j in U_I,M)||Theta_(I;j,M,.)||_2`.

### G3. Full-history source-normal recurrence (`step_003b`)

Let `P_M` project onto the full realized source span and
`Pi_star=P_A tensor P_B tensor P_C`. Prior accepted `R-euc` records yield

```
B_hist,F=sum_(i in I)||E_i||_F <= C_E r tau_max eta0.
```

For `U_I=[r]\pi_I(I)`, pair/triple conditioning gives

```
||T_U||_F^2 >= (15/16)||tau_U||_2^2 >= (15/16)tau_min^2.
```

Since `R_I=T_U-sum_i E_i`, the explicit reserve
`C_E r tau_max eta0 <= (1/2)sqrt(15/16)tau_min` gives
`||R_I||_F>=c_R tau_min` before capture is used.

For each prior accepted slot and mode, post-fit angular/radial stationarity
gives the triangular normal equation

```
a_(t,M)+sum_(q<t)c_(q,t,M)a_(q,M)=-b_(t,M),
||b_(t,M)||_2 <= e Lambda_nor,
sum_(q<t)|c_(q,t,M)| <= q_nor <= 1/4.
```

Finite triangular inversion and rank-one projector telescoping imply

```
||(Id-Pi_star)R_I||_sigma
 <= ||(Id-Pi_star)R_I||_F
 <= B_perp=3r Lambda_nor e/(1-q_nor).                 (SE-perp)
```

The fixed exponent order then proves, on every finite branch,

```
B_perp <= c_SE min{tau_min/r,
                    ||R_I||_F P^(-D_cap/2),
                    N_I(g)P^(-D_gap)/g^3}.             (SE-raw)
```

Only on `E_lb` does the additional comparison
`B_perp<=c_SE tau_min eta0` hold. At `e>0,nu<nu_lb`, all downstream uses keep
the raw terms. At the empty prefix the triangular system is empty and
`B_perp=0`; failed probes never enter it because rollback leaves the prefix
unchanged. Finally,

```
R_I=Pi_star R_I+(Id-Pi_star)R_I
```

is a same-target decomposition: every target-frame contraction is preserved
exactly by `Pi_star`, while score, gradient, Hessian, capture, and norm
discrepancies are bounded by fixed multiples of `B_perp`.

### G4. Sketch-9 all-label landscape bridge (`steps_003c--005`)

#### G4a. Ordered radial scale and exact current/dual equations (`step_003c`)

Let `t=g^3`, `s=s_I(u,v,w)`, `R_0=||R_I||_F`, and
`s_parallel=<Pi_star R_I,u tensor v tensor w>`. The exact capture identity
first gives

```
s >= sqrt(2)R_0 P^(-D_cap/2),
R_0 e <= s/16.
```

Only then does the radial certificate yield

```
(1-4e)s <= t <= (1+4e)s,
t >= (1/2)c_R tau_min P^(-D_cap/2),
s_parallel >= 3s/4 > 0.                               (Act-rad/proj)
```

For each realized normalized frame `M`, put
`D_M=M_M G_M^(-1)`, `x_M=M_M^T u_M`, and
`alpha_M=G_M^(-1)x_M`. Exact biorthogonality gives
`<d_(j,M),m_(l,M)>=1_{j=l}` and

```
tau_j x_(j,N)x_(j,L)-s_parallel alpha_(j,M)
 = h_(j,M)+<d_(j,M),zeta_M>.                           (Dual-stat)
```

The current and dual objects use the same realized frames; Gram effects stay
inside `x=G alpha` and the dual metric, rather than becoming a false
first-order frame error. `Theta_act`, the current raw history budget,
`B_perp`, and `N_I(g)e/t` give the displayed `epsilon_act`, while the fixed
margin checks yield `delta_act<=1/256` and the normalized dual tangent
identities. This step exports `(All-stat)` data and tangent selectors for all
labels. It does not claim that an unresolved-only active set is nonempty and
does not export a singleton or exchange witness.

#### G4b. Protected tensor and unresolved/matched mass split (`step_003d`)

Let `V_I=pi_I(I)`, `U_I=[r]\V_I`, and define the generated tensor

```
E_I^mat=Pi_star R_I-sum_(j in U_I)tau_j phi_j.          (Mat-tensor)
```

Because `Pi_star T=T`, prior accepted `R-euc` records and the source-normal
bridge produce it before the current activation conclusion and give

```
||E_I^mat||_F <= B_mat
 := C_E r tau_max eta0+C_mat B_perp,                   (Mat-budget)
E_empty^mat=0.
```

It is the protected-slot error in the exact realized source product span,
not a transformed target. Contracting this tensor and prior history with the
same dual selectors extends stationarity to every `j in [r]`:

```
tau_j x_(j,N)x_(j,L)-s_parallel alpha_(j,M)
 = h^all_(j,M)+<d_(j,M),zeta_M>,                       (All-stat)
```

with

```
max_(j,M)|h^all_(j,M)|+max_M||zeta_M||_2
 <= epsilon_all
 := C_all[tau_max(nu^2+rnu^3+sqrt(r)e+Theta_act)
          +B_mat+N_I(g)e/t].                           (All-def)
```

Gram energy gives nonempty all-label active sets
`L_M^all={j:|alpha_(j,M)|>=1/(8sqrt(r))}`. Write

```
s_U=sum_(j in U_I)tau_j x_(j,A)x_(j,B)x_(j,C),
s_M=<E_I^mat,u tensor v tensor w>,
s_parallel=s_U+s_M,
W_U=sum_(j in U_I)tau_j|x_(j,A)x_(j,B)x_(j,C)|.
```

The sign-safe finite split is exhaustive:
`W_U>=|s_parallel|/8` or `|s_M|>=7|s_parallel|/8`.

In the first branch, a weighted threshold argument over unresolved labels
gives either one unresolved common singleton or an unresolved pair/straddle
tangent. In the second branch, enumerate all three normalized two-mode pair
tangents and all four product-one synchronized three-mode tangents over all
labels, including matched pairs. The direct ambient product-sphere residual
Hessian identity gives

```
max_xi Q(xi)
 >= c_mat |s_M|^2/(r tau_max)
    -C_mat[(nu+delta_act)|s_M|^2/(r tau_max)
           +epsilon_all^2].                            (Mat-ex)
```

This is a target-side comparison, not merely curvature of a surrogate. The
positive term is supplied by the exact two-label residual exchange. Its
opposing classes are: Gram mixing and normalization in
`(nu+delta_act)|s_M|^2/(r tau_max)`; target-frame history and protected errors
inside `B_mat`; source-normal transfer inside `B_perp`; and numerical/raw
stationarity inside `sqrt(r)e` and `N_I(g)e/t`.

The feasibility relations to be proved locally are explicitly

```
C_mat(nu+delta_act) <= c_mat/4,
C_mat epsilon_all^2 <= c_mat |s_M|^2/(4r tau_max),
c_mat |s_M|^2/(2r tau_max) >= 8N_I(g)P^(-D_gap).        (Mat-margin)
```

On `E_lb`, the named `e`-to-`nu^2` simplifications may be used. On
`E_lb^c`, no such absorption is made: `B_mat`, `sqrt(r)e`, `B_perp`, and
`N_I(g)e/t` remain separate, with `B_perp` controlled by `(SE-raw)`, the
pure numerical pieces controlled by the choice of `D_stat` after
`D_cap,D_gap,D_tau,D_nor`, and the structural pieces controlled by the upper
Gram margin. Thus `(Mat-margin)` is audited at the actual
`N_I(g)P^(-D_gap)` scale on both branches.

If the exhaustive all-label case split leaves a single common dominant label
`p`, then `|alpha_(p,M)|>=1-32delta_act` and
`|x_(p,M)|>1/3` in each mode. A matched `p in V_I` has correlation exceeding
`1/4` with its protected slot and violates `Sep`; hence the only singleton
export is unresolved. Equality belongs to the active sets. When `W_U=0`, in
particular for the separated protected-mixture stress state, the matched
exchange branch remains active. When `|U_I|=1`, pair tangents are unnecessary
if the unresolved singleton survives, but matched mixtures are still handled
by `(Mat-ex)`. At `H=e=0`, `E_I^mat=B_mat=epsilon_all=0` and the exact atom
case is recovered.

#### G4c. Actual-residual transfer and matching (`steps_004--005`)

`step_004` consumes the completed `step_003d` alternative. For each normalized
exchange tangent, the exact decomposition from G3 bounds the difference
between projected and actual score-gradient-Hessian forms by the displayed
`B_perp` multiples. `(SE-raw)` and `(Mat-margin)` therefore make either the
unresolved structural exchange or matched exchange contradict the observable
angular Hessian threshold. No support selection, all-label energy argument,
or matched-mass split is repeated here.

The surviving unresolved singleton has a positive isolated score. The radial
equation, separation, product-one signs, raw transfer, and the branch-qualified
calibration comparison yield unique label assignment, `(R-euc)`, `(R-dir)`,
and injection extension in `step_005`. Only after `p` exists does the proof
consume `Theta_(I;p,M,.)`. The same step stores the post-fit normal audit
`b_(t,M)` used by the next temporal invocation of `step_003b`.

### G5. Exact J-aware transition (`step_006`)

Using the local precommit `z` already defined by `step_003`, expand the actual
accepted tensor error in current target-frame coordinates. This gives
`(R-tensor)`, `Xi`, and the symmetric charge

```
A_(I_t;j,M,l)-A_(I_(t-1);j,M,l)
 <= 2 Gamma_star Upsilon~^M_(p_t;j,l).                 (J-update)
```

The same `J_M(p,l)` appears in the positive product and exact-target
subtraction. At `l=p`, `J_M(p,p)=1` and `z_(p,M,p)=0`, exposing
`eta0 H_N H_L`, `H z`, and `z z`. On the isolated O.1 family,

```
Upsilon~=O(h^4+e h+e^2),
```

with matching positive terms; it dominates `2h^4+O(h^6)` even at `h=e^2`.
For `l!=p`, `J_M(p,l)=H_M(p,l)` and the direct/transitive source remains.
The local expansion does not assume the later rowwise `z` bound.

### G6. Rootwise ledger and protected-prefix closure (`steps_007--009`)

The rootwise Neumann estimate and prior prefix budget give the raw row bound

```
max_(p,M)||z_(p,M,.)||_2
 <= C_z(nu^2+rnu^3+sqrt(r)e).
```

Rootwise Cauchy-Schwarz then sums each commit/root/tested-label/mode once:

```
U_s <= C_J Gamma_star r nu^3+C_J r^2e,
||A_I||_1 <= C_A Gamma_star r nu^3+C_A r^2e,
R-acc <= C_acc Gamma_star r nu^3+C_acc r^2e.
```

The charges are nonnegative and each occurs once over at most `r` commits;
failed probes add zero. `E_lb` alone permits the simplified `J-row` and
`nu^2` comparison, while the raw bounds remain on its complement.

`step_009` closes the finite induction. The base has
`I=emptyset`, `A=0`, `E_empty^mat=0`, and `B_perp=0`. At a valid prefix the
current order is

```
step_003b -> step_003c -> step_003d -> step_004 -> step_005
          -> step_006 -> step_007 -> step_008.
```

A successful commit appends matching, `R-euc`, the normal audit, and one
charge; a failure preserves every object exactly. Thus the next invocation of
`step_003b` consumes only records from earlier commits. This is a finite
noncircular producer for all theorem-facing prefix conditions.

### G7. Transactions and finite tape (`steps_010--012`)

Exact radial derivatives bracket the positive root, angular-gradient and
two-sign negative-curvature Armijo trials decrease exact loss, and compact
guard bounds provide the inverse-polynomial accepted-step floor. Every
failure branch maps the scratch slot to joint zero and restores the full
pretransaction state. Full-space Haar anti-concentration plus the completed
sketch-9 landscape path, including `step_003d -> step_004`, produces

```
P_tape(next transaction commits | T,protected history)
 >= p_tx=(nr)^(-c_tx).
```

The generated injection makes commits distinct. A stopped geometric/binomial
tail over the independent tape gives `r` commits with conditional probability
at least `1-r^(-10)` and polynomial work independent of `epsilon`.

### G8. Exact-target PL geometry (`step_013`)

On the balanced active-slot manifold, pair/triple Gram gaps and removal of
continuous scaling give

```
c_J g_minus^2||Delta||_2
 <= ||D Psi(Qstar)Delta||_F
 <= C_J g_plus^2||Delta||_2.
```

At `varrho_PL=c_chart g_minus/r`, Jacobian variation and the residual-Hessian
term are each below one quarter of the exact-root floor. In aligned normal
coordinates this yields a quadratic sandwich, the PL inequality with
`mu_PL>=c_mu g_minus^4`, and
`L_chart=C_L g_plus^4`. The same local constants define the finite path
coefficient `C_path_star`. Since `g_minus>=(2kappa)^(-1)` and `P>=r`, one
fixed `D_PL` gives `varrho_PL,mu_PL>=P^(-D_PL)`.

### G9. Same-target full-state entry (`step_014`)

The all-commit injection is a bijection. Product-one signs and per-slot
`R-euc`, followed by the cube-root mean-value bound, give in the exact
full-state metric

```
dist(Q_fin,Zstar) <= C_ent g_plus sqrt(3r)eta0.
```

Dividing by `varrho_PL` produces
`C_ent sqrt(3)chi_tau r^(3/2)eta0`. Its structural part is at most
`O(1/(sqrt(r)log^2 r))`, and its numerical part is at most `O(r^(-1/2))`
after the fixed exponent choice. Hence
`dist(Q_fin,Zstar)<=theta_ent varrho_PL<=varrho_PL/2`. This bridge uses the
actual tuple and exact target orbit; `R-acc` is not repurposed as factor
distance. At `H=e=0`, entry is exact.

### G10. First-exit descent, public specialization, and assembly
(`steps_015--016`)

The strict entry reserve and `C_path_star` bound the total terminal factor
path before a hypothetical first exit. Exact-loss Armijo and PL give a
recurrence of the form

```
F_(m+1) <= (1-c_arm mu_PL/L_chart)F_m,
sum_m ||Q_(m+1)-Q_m||_2
 <= C_path_star dist(Q_fin,Zstar).
```

The second relation contradicts first exit, and the first reaches
`||R(Q)||_F<=epsilon||T||_F` in
`poly(P)log(1/epsilon)` work with no additive forcing. `step_016` substitutes
the rank, column-scale, and smoothing regimes, preserves all exposed
dependencies and the separate instance/tape probabilities, and states the
material-partial scope. In the exact branch all discovery errors vanish,
the target is stationary at zero loss, rollback is exact, and no positive
terminal floor is introduced.

Combining G1--G10 gives the attempted theorem once every listed step-local
derivation is independently proved and accepted. The composition uses the
nineteen sketch rows exactly once in dependency order; in particular, no
consumer bypasses `step_003d`.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| --- | --- | --- | --- | --- | --- |
| G1 | Once-drawn event, exact target, derived lower tail | `step_001` | Primitive source assumptions | Six source assumptions only | Gaussian normalization and anti-concentration constants, step-local |
| G2 | H/J/K source, transfer gaps, conditional envelope | `step_002`, `step_003` | G1 | Derived event; conditional prior `A_I` only locally | Two induced-norm bounds and resolvent estimates, step-local |
| G3 | Residual reserve and full-history source-normal transfer | `step_003b` | G1--G2 and prior `step_005` audit supplied by G6 | No source-normal or reserve premise | Normal equations, `q_nor`, `(SE-raw)/(SE-lb)`, step-local |
| G4a | Ordered radial scale and all-label dual identities | `step_003c` | G1--G3, certificate, root-free `Theta_act` | No target label or unresolved support premise | Exact coordinate/tangent derivation, step-local |
| G4b | Protected-error split and matched/unresolved alternative | `step_003d` | G3, G4a, prior `R-euc` | No matched-mass premise | `E_I^mat`, `(Mat-ex)`, `(Mat-margin)`, Sep rejection, step-local |
| G4c | Same-target transfer and unique unresolved matching | `step_004`, `step_005` | G3, G4a, G4b | Branch-qualified `E_lb` only where named | Threshold transfer and calibration, step-local |
| G5 | Exact accepted-error/J transition | `step_006` | G2, G4c | Product-weight balance and derived local `z` | Cyclic expansions and O.1 audit, step-local |
| G6 | Row/global ledgers and finite prefix induction | `step_007`, `step_008`, `step_009` | G1--G5 | All nine primitives only at induction theorem; generated states are conclusions | Rootwise factorization and closure, step-local |
| G7 | Transaction dynamics, reachability, tape | `step_010`, `step_011`, `step_012` | G4c, G6 | `assump:random-tape` | Dynamics, Haar window, stopped tail, step-local |
| G8 | Exact-target chart and PL | `step_013` | G1 | Weight balance and derived Gram gaps | Jacobian/Taylor constants, step-local |
| G9 | Actual tuple to exact-target chart | `step_014` | G4c, G7, G8 | Derived all-commit output and `R-euc` | Full-state dominance inequality, step-local |
| G10 | First-exit convergence and public theorem | `step_015`, `step_016`, assembly | G1, G6--G9 | `assump:accuracy-range` plus all primitives for final specialization | Armijo path and rate bridge, step-local |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| --- | --- | --- | --- | --- |
| `step_001` | G1 | Produces event, exact target, `E_lb` for G2/G3/G6/G8/G10 | Concentration, normalized lower tail, probability allocation | Same realized target; exact branch separate |
| `step_002` | G2 | G1 -> G2; feeds G3--G6/G8 | H/J/K, leakage, S, l1/rootwise gaps | No absolute-Gram operator shortcut |
| `step_003` | G2 | `step_002` -> conditional `Theta,z`; feeds G3/G4/G5/G6 | Two Neumann interfaces and exact zero diagonal | No row-norm claim here |
| `step_003b` | G3 | Prior `step_005` records + `steps_001--003`; feeds `step_003c`, `step_003d`, `step_004` | `(Hist-F)`, `(Res)`, triangular solve, `(SE-perp/raw/lb)` | Empty prefix is zero base; raw branch unconditional |
| `step_003c` | G4a | `step_003b` -> `step_003c` -> `step_003d` | Capture/radial ordering, dual coordinates, `(All-stat)`, normalized tangents | Produces no support conclusion |
| `step_003d` | G4b | `step_003b,step_003c` -> `step_003d` -> `step_004` | `E_I^mat`, all-label energy, mass split, `(Mat-ex)`, Sep rejection, `(Mat-margin)` | Sole producer of singleton/exchange alternative |
| `step_004` | G4c | Consumes completed `step_003d` witness plus G3 transfer | Actual/projected threshold comparison | Does not redo support selection |
| `step_005` | G4c | Unresolved singleton from `step_004`; audit feeds next `step_003b` | Unique matching, signs, `(R-euc/dir)`, normal audit | Root-specific `Theta` first consumed here |
| `step_006` | G5 | `step_003,step_005` -> J transition | Exact tensor/J expansions, cyclic/O.1 cases | Does not consume later row bound |
| `step_007` | G6 | `step_003,step_006` -> row profile | Raw rootwise estimate and branch specialization | Keeps `sqrt(r)e` outside `E_lb` |
| `step_008` | G6 | `step_006,step_007` -> global ledger | One-time rootwise sum, `J-global`, `R-acc` | No extra `r` or `sqrt(r)` |
| `step_009` | G6 | G1--G6 finite induction | Base/success/failure preservation and temporal record order | Includes `step_003c -> step_003d -> step_004` every prefix |
| `step_010` | G7 | `step_009` -> deterministic transaction | Bracketing, Armijo, guards, rollback | Failures produce exact identity |
| `step_011` | G7 | `step_004,step_005,step_009,step_010` | History-uniform Haar reachability | Activation consumes the completed sketch-9 bridge |
| `step_012` | G7 | `step_009,step_011` -> all-commit tuple | Stopped tape amplification and work | Separate tape probability |
| `step_013` | G8 | G1 -> exact-target geometry | Balanced Jacobian, radius, PL, smoothness/path constants | Geometry produced before entry |
| `step_014` | G9 | `step_005,step_012,step_013` | Orbit alignment and direct `R-euc` full-state bridge | Does not use `R-acc` as factor distance |
| `step_015` | G10 | `step_013,step_014` | First-exit path and geometric exact-loss descent | No repeated additive forcing |
| `step_016` | G10/assembly | `step_001,step_009,step_012,step_014,step_015` | Dependence, probability, work, rank, baseline specialization | Final route identity is sketch attempt 9 |

## Dependency And Assumption Audit

- Primitive conditions: exactly the nine stable assumption ids in
  `setting.md`. Realized events, Grams, H/J/K, envelopes, matching, ledgers,
  certificates, chart membership, and convergence are not promoted to public
  assumptions.
- Derived static conditions: `E_inst`, `E_lb`, exact `T`, pair/triple gaps,
  H/J/K/S, and both transfer gaps are produced by `steps_001--002`.
- Local conditional hypotheses: `step_003` may condition on a legal prior
  `A_I`; `step_003b` may condition on earlier accepted matching, `R-euc`, and
  post-fit audit records; landscape statements may condition on one
  observable `(Cert)`. `step_009` proves these interfaces from the empty
  prefix before the unconditional theorem consumes them.
- Temporal dependency: the only feedback-shaped path is
  `prior step_005 audit -> current step_003b -> step_003c -> step_003d ->
  step_004 -> current step_005 audit`. Prefix induction in `step_009` orders
  it in time; no current output proves its own premise.
- Activation provenance: `step_003c` produces coordinate/tangent data;
  `step_003d` produces `E_I^mat`, the mass alternative, `(Mat-ex)`, and
  `(Mat-margin)`; `step_004` transfers; `step_005` matches. Therefore
  `steps_004,005,009,011` all have the required `step_003d` dependency.
- Branch provenance: `E_lb` is a `step_001` conclusion. `(SE-lb)` and
  simplified `J-row/J-global` consume it explicitly. On `E_lb^c`, the theorem
  retains `(SE-raw)`, `B_mat`, `epsilon_all`, `sqrt(r)e`, and `r^2e`.
- Terminal provenance: G8 produces the exact-target chart; G7 produces the
  actual tuple; G9 proves membership; G10 alone consumes membership. No chart
  or first-exit invariant is assumed.
- Missing derived-condition bridges: none diagnosed. All pending work is
  derivation inside an accepted step claim.

## Citation And Tool Audit

| Tool or source | Current objects and exact role | Assumptions/hypotheses to discharge | Convention and target compatibility | Needed conclusion / affected steps | Audit status |
| --- | --- | --- | --- | --- | --- |
| Gaussian concentration and anti-concentration | Realized columns and disjoint normalized cross-Gram coordinates | Six source assumptions, independence, norm denominators, finite union | Same normalized columns and instance probability as setting | `E_inst`, `E_lb`; `step_001` | Direct current-source proof remains step-local |
| Schur products, Gershgorin/Cauchy-Schwarz | Exact signed Grams through entrywise absolute H/J/K | G1 gaps and upper Gram margin | Exact array domains; no claim on `||abs(G-I)||_op` | R-src, K/source/transfer gaps; `step_002` | Direct derivation remains step-local |
| Geometric/triangular Neumann inversion | `Theta_I` and temporal normal system | `q_res,q_row,q_nor<=1/4` established first | Current array norms and finite commit order | `steps_003,003b,007` | Exact interfaces exposed |
| Product-sphere differential identities | Actual/projection score, gradient, and Hessian | Fixed `g`, normalized tangents, same residual | Ambient product spheres and exact `T`; no projected algorithm | G3 transfer; `steps_003c,004` | Direct current-notation proof required |
| Biorthogonal selectors and Gram energy | `D=M G^(-1)`, `x=M^Tu`, `alpha=G^(-1)x` | G1 Gram invertibility | Same realized primal factors and metric | `(Dual-stat)`, all-label tangents; `step_003c` | Direct algebra, no external wrapper |
| Ambient residual-Hessian exchange calculation | `E_I^mat`, all-label pair/three-mode tangents, `Q(xi)` | G3/G4a raw controls, normalized tangent norms, sign enumeration | `E_I^mat`, `R_I^parallel`, `R_I` share exact `T`; `(SE-raw)` is same-target bridge | `(Mat-ex)`, `(Mat-margin)`; `step_003d` | Theorem-critical local proof; positive/defect terms fixed above |
| Exact multilinear expansion | Actual accepted `E_i`, J baseline, `z` | `R-euc/dir`, product-weight balance | Exact target-frame contractions | `(R-tensor)`, `(J-update)`, O.1; `step_006` | Direct algebra remains step-local |
| Haar anti-concentration and stopped tail | Full-space seed triples and finite independent tape | `assump:random-tape`, completed landscape, rollback | Same full-space protocol; target labels proof-only | `steps_011--012` | Standard probability tools with current mapping |
| Balanced Jacobian/Taylor/PL calculation | Exact target orbit, balanced active manifold | Pair/triple gaps, positive weights, chosen radius | Exact full-state Euclidean and Frobenius metrics | `steps_013--015` | Direct current-notation proof required |
| ALS and beyond-lazy papers named in sketch | Proof-pattern provenance only | N/A: their procedures/objectives differ | They are not theorem wrappers or assumption sources | Orientation for G3 only | No cited conclusion is consumed |

## Quantitative Dependence Audit

- Exposed structural/data variables: `n,r,k,kappa,rho,Gamma_star,P`, realized
  `nu_real`, weights, H/J/K/S, pair/triple gaps, and
  `k=ceil(C_rank r^(3/2)log^2(2r))`.
- Exposed numerical and proof scales: `e=P^(-D_stat)`, `eta0`, `D_lb`,
  `D_cap`, `D_gap`, `D_act`, `D_ls`, `D_PL`, `Lambda_nor`, `q_nor`,
  `B_perp`, `Theta_act`, `epsilon_act`, `delta_act`, `mu_act`, `E_I^mat`,
  `B_mat`, `epsilon_all`, `mu_mat`, row/global ledgers, `varrho_PL`,
  `mu_PL`, `L_chart`, `C_path_star`, and `epsilon`.
- Matched-branch rate audit: the positive scale is
  `|s_M|^2/(r tau_max)`; every opposing term appears in `(Mat-ex)` and
  `epsilon_all`. Capture, the residual reserve, upper Gram margin, and the
  exponent order must prove `(Mat-margin)` against the consumed
  `N_I(g)P^(-D_gap)` threshold. `E_lb^c` retains raw `B_mat`, `B_perp`,
  `sqrt(r)e`, and `N_I(g)e/t`; no `e<=nu^2` substitution is used there.
- Hidden constants may depend only on the fixed class constants and fixed
  protocol/Armijo constants named in the setting. They may not depend on
  dimensions, `kappa,rho,epsilon`, the realization, or commit order.
- Probability mode: one structural event and one conditional tape event,
  each at least `1-r^(-10)`; they are not silently multiplied into a single
  claim. `E_lb` is included in the structural allocation.
- Horizon mode: finite, prefix-uniform discovery over at most `r` commits and
  a finite `poly(P)log(1/epsilon)` terminal horizon. No all-time upgrade is
  claimed.
- Norm mode: Euclidean column and full-state factor norms, operator Gram
  norms, entrywise/rootwise ledger norms, product-spectral/Frobenius residual
  norms, product-sphere gradient/Hessian, and final Frobenius error. No norm
  is substituted without the displayed bridge.
- Public specialization: `step_016` must substitute the rank, column, and
  smoothing regimes, verify every exponent inequality, retain separate
  probability modes, and state allowed hidden dependence. Discovery is
  epsilon-independent; only terminal work has `log(1/epsilon)`.
- Baseline reduction: at `H=e=0`, every defect including the new matched tensor
  vanishes and the original exact/no-floor conclusion, rather than a weaker
  remainder statement, is recovered.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst`, exact target, `E_lb` | Event, representation, branch support | Once drawn | Tail/union and disjoint-pair density inequalities | Primitive Gram/norm reserve and Gaussian variance | Norm/Gram deviations; lower-tail failure | Finite union, no trajectory accumulation | Structural lower/upper comparison | Six source assumptions; exact branch handled separately | Sources have exact norm/conditioning content | Produced `T` equals consumed `T` | step-local | Primitives -> `step_001` -> consumers | Zero perturbation, minimum norm, exact target | Deviations below fixed reserves; `P(E_lb^c)<=r^-20` | Six source assumptions | Realized event | `H=e=0` baseline passes | Conditioning/chart may fail without reserve |
| `Theta_I`, `z`, transfer gaps | Generated boundedness/source interface | One legal finite prefix | Geometric series with `q_res,q_row<=1/4`; exact zero-diagonal definition | Unit identity and upper Gram small gain | S, A, e padding | Contractive/summable geometric powers; finite `1/(1-q)` budget | Self-contraction / summable control | G1 plus direct H/J/K map; q=1 excluded | Upper-control source matches boundedness claim | Same array coordinates, no tensor surrogate | step-local | `step_001 -> step_002 -> step_003` | Empty `A=0`, q=0, zero diagonal | Transfer norm <=1/4 absorbs every power | Source assumptions | H/J/K/S/A | Tiny e and exact zero pass | Envelope diverges if q>=1 |
| `(Res)`, `(SE-perp/raw/lb)` | Positive residual reserve and same-target transfer | Every nonterminal prefix, at most r | `a_t+sum_(q<t)c_qt a_q=-b_t`; `sum_abs(c)<=q_nor<=1/4`; reverse triangle | Unit triangular diagonal, pair/triple gap, unresolved target mass | Sign-free `e Lambda_nor`, prior `E_i`, off-diagonal correlations | Finite triangular forcing `r e Lambda_nor`; failures add zero | Algebraic coupling / structural comparison | Prior audits and pair-Khatri-Rao gap; raw branch includes tiny nu | Lower gap supplies positive reserve; stationarity supplies normal control | `R_I=Pi R_I+(Id-Pi)R_I`, residual <=`B_perp` in consumed norms | step-local | Prior `step_005` -> current `step_003b` -> G4; `step_009` orders time | Empty system, first row, `e>0,nu=0`, exact branch | `(1-q_nor)^-1`, `(SE-raw)` always; `(SE-lb)` only on `E_lb` | Source assumptions | Prior matching/audits | Invisible witness and exact equality pass | Outside-span certificate can evade landscape |
| `(Act-rad)`, `(All-stat)` | Activation coordinate/tangent input | One certificate at one prefix | Capture -> radial comparison -> dual stationarity | Positive capture and exact biorthogonality | History, Gram, `B_perp`, numerical stationarity | One finite prefix calculation | Structural lower/upper comparison / algebraic coupling | Certificate, G1--G3; zero/negative score excluded by protocol | Capture supplies positive scale; dual source has exact selector content | Projected and actual residual share `T`; transfer reserved in G3 | step-local | `step_003b -> step_003c -> step_003d` | Exact one-mode-correlated atom and first positive score | Derive t before dividing by t; exact `x=G alpha` | Certificate/primitives | `Theta_act`, G3 controls | Radial equality, exact atom pass | False frame error or circular activation otherwise |
| `E_I^mat`, mass split, `(Mat-ex)` | Matched support activation and strict-saddle source | One finite exchange enumeration per prefix | `s_parallel=s_U+s_M`; `W_U>=abs(s_parallel)/8` or `abs(s_M)>=7abs(s_parallel)/8`; displayed Hessian lower bound | Exact protected residual exchange `c_mat abs(s_M)^2/(r tau_max)` | Gram mixing, `B_mat`, `B_perp`, `Theta_act`, `sqrt(r)e`, `N e/t` through `epsilon_all` | Finite O(r^2) enumeration; no recurrence or hidden matched-mass assumption | Structural lower/upper comparison / algebraic coupling | Prior `R-euc`, G3, exact all-label dual selectors; no external wrapper | Source has positive curvature content, not only an upper bound | `E_I^mat`, `R_I^parallel`, `R_I` use exact `T`; `(SE-raw)` transfers to actual Hessian scale | step-local | Prior records -> `step_003b`/`step_003c` -> `step_003d` -> `step_004` | `W_U=0` protected mixture activates matched exchange; empty tensor zero | `(Mat-ex)` plus the three explicit dominance inequalities `(Mat-margin)` | Upper Gram/source assumptions | `B_mat`, `epsilon_all`, all-label equations | Matched singleton, equality, `abs(U)=1`, `E_lb^c`, exact branch pass | Matched mixture could satisfy certificate without unresolved label |
| Matching and prefix ledger | Generated membership/invariant | At most r successful commits | `Delta A<=2Gamma Upsilon`; raw charge sums; success appends, failure identity | Isolated singleton, exact J cancellation, nonnegative one-time charge | `H z`, `z z`, `e h`, `e^2`, raw `r^2e` | Finite-budgeted: each nonnegative charge counted once; failed probes zero | Reserve/ledger under declared scope / algebraic coupling | G2--G5 and exact rollback | J source matches signed update and membership claim | Actual `E_i` and exact target frame; no factor/tensor norm swap | step-local | Empty prefix -> G3/G4/G5 -> G6 -> next prefix | `A=0`; h=0, h<<e, h=e^2; first/last commit | Rootwise factorization gives `rnu^3+r^2e`; branch simplification only on `E_lb` | Nine primitives | Matching, z, charges | Dense/block, diagonal/off-diagonal, exact limit pass | Extra r factor or circular good-state assumption |
| Transaction reachability and rollback | Generated success probability | Finite tape, at most r commits | Per-seed `p_tx`; failure maps state identically; stopped tail | Haar activation window, exact-loss decrease | Zero score, guard, ambiguity, exhaustion | Stopped/conditioned finite horizon; failure forcing exactly zero | Stopping/conditioning argument | `assump:random-tape`, completed G4/G6 interfaces | Source supplies probability and reachability, not target labels | Success is actual slot; failure exact prestate | step-local | `step_009 -> step_010 -> step_011 -> step_012` | Joint-zero first seed, sign flip, rollback | Independent tape budget yields all commits | Random-tape primitive | Prefix invariant/certificate | Guard, missing root, last label pass | No all-commit probability or no-floor state |
| Exact-target PL chart and entry | Coercivity and generated membership | One terminal entry and local chart | Jacobian floor; Taylor defects at `c_chart g_minus/r`; direct full-state `R-euc` sum | Pair/triple gap and positive weights | Nonorthogonal cross terms, `sqrt(r)eta0`, orbit alignment | One-time geometry and entry; no recursive defect | Structural lower/upper comparison | G1 gaps, G7 tuple, prior `R-euc` | Sources have coercive Jacobian and factor-distance content | Actual `Q_fin` to exact `Zstar` in full-state metric; `R-acc` excluded | step-local | `step_001 -> step_013`; G7 + `step_005` -> `step_014` | Exact target stationary; independent-block entry stress | Taylor defects <=1/4 floor; entry <=`theta varrho` | Source/weight assumptions | Tuple, signs, radius | Minimum weight, chart boundary, `H=e=0` pass | PL may vanish or tuple may lie outside chart |
| Terminal descent and baseline | Contraction, rate, exact reduction | Finite `poly(P)log(1/epsilon)` horizon | `F_(m+1)<=(1-c mu/L)F_m`; finite path bound | PL constant, strict entry reserve, exact loss | Taylor/retraction and line-search terms; no additive forcing | Contractive finite horizon; geometric series controls path | Self-contraction / monotone potential | G8/G9, accuracy primitive, exact Armijo | PL source has signed descent/coercive content | Final residual is exact `T-Psi(Q)` | step-local | `step_013 -> step_014 -> step_015 -> step_016` | Exact target needs no update; first nonzero update active | Path < boundary reserve; geometric loss to any epsilon | Accuracy primitive | Chart, PL, entry | Epsilon ->0, exact/noiseless no-floor pass | First exit or positive terminal floor |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst`, `E_lb`, exact `T` | G1/`step_001` | Six source assumptions, Gaussian tails/density, norm denominators | Norm/Gram deviations and lower-tail failure separately budgeted | Produced target is exactly consumed target | Deviations below `nu_star`; lower-tail failure <=`r^-20` | Norm, Gram, pair/triple reserves | G2/G3/G6/G8/G10 | valid |
| H/J/K/S, `Theta_I`, local `z` | G2/`steps_002--003` | R-src, exact transfer, conditional `A_I`, e padding | Static/history/numerical classes remain separate | Same root/mode/label arrays | `q_res,q_row<=1/4`; zero diagonal exact | Upper Gram small gain | G3--G6 | valid |
| `(Res)`, `B_perp`, `(SE-raw)/(SE-lb)` | G3/`step_003b` | Prior `R-euc` audits, pair/triple gap, q_nor, E_lb | Structural in-span history vs numerical source-normal forcing split | Exact residual decomposition; target-frame contractions identical | Triangular inverse -> `B_perp`; raw target scales always; eta scale only on E_lb | Unit diagonal, unresolved-target reserve, exponent slack | `step_003c`, `step_003d`, `step_004`, G6/G7/G10 | valid |
| Ordered radial/all-label coordinate interface | G4a/`step_003c` | Certificate, G3, exact Grams, complete Theta | Gram/history/numerical terms explicit in epsilon_act | Same realized primal/dual frames and target | Capture before division; exact dual identities | Positive capture and Gram reserve | `step_003d` only | valid |
| `E_I^mat`, `(Mat-ex)`, `(Mat-margin)` | G4b/`step_003d` | Prior R-euc, G3/G4a, all-label energy, certificate | `B_mat`, Gram mixing, `epsilon_all`, `B_perp`, raw e terms all separated | Protected error, projected residual, actual residual share exact T; ambient Hessian and `(SE-raw)` bridge | Mass split; displayed Mat-ex lower bound; three explicit dominance inequalities; raw E_lb^c audit | `|s_M|>=7|s_parallel|/8`, capture, upper Gram/exponent slack | `step_004`; singleton-only path to `step_005` | valid at diagnostic granularity; local proof pending |
| Unique unresolved matching and audit | G4c/`steps_004--005` | Finished `step_003d` alternative, G3 transfer, radial/sep equations | Projected, normal, numerical, exchange, calibration classes split | Actual slot compared directly with exact atom | Exchange contradicts Hessian threshold; singleton yields R-euc/dir | Mat-margin, SE-raw, Sep 1/4; E_lb only for eta calibration | G5--G7/G9 and next temporal G3 | valid |
| J transition and finite raw ledgers | G5/G6/`steps_006--009` | Local z, R-euc/dir, exact J baseline, q_row | Structural `rnu^3` and numerical `r^2e` remain separate | Actual accepted errors and target-frame contractions | One-step update and rootwise one-time sum; optional simplification only E_lb | Positive J terms and finite prefix | Later prefixes, G7, G10 | valid |
| Transaction/tape output | G7/`steps_010--012` | Prefix invariant, exact dynamics, random tape | Failure classes are exact rollback; tail event separate | Actual algorithm state | Per-seed p_tx and stopped tail | Haar window, line-step floor, tape length | G9/G10 | valid |
| Exact PL chart and full-state entry | G8/G9/`steps_013--014` | Gram gaps, weights, actual tuple, R-euc | Taylor and `sqrt(r)eta0` terms explicit; R-acc excluded | Exact Qstar orbit and actual Q_fin, same full-state norm | Jacobian floor/radius plus explicit ratio bound | `c_chart`, `theta_ent`, upper Gram margin | G10 | valid |
| Floor-free public rate | G10/`steps_015--016` | PL, smoothness, strict entry, epsilon, all rate data | No additive terminal forcing; branch/probability terms explicit | Exact final Frobenius residual | Geometric contraction, path reserve, parameter substitution | mu_PL, chart boundary reserve | Final theorem | valid |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| `E_inst`, exact `T`, `E_lb` | G1/`step_001` | G2/G3/G6/G8/G10 | Primitives -> `step_001` -> consumers | derived | valid |
| H/J/K/S and transfer gaps | G2/`step_002` | `steps_003--009,013` | G1 -> `step_002` -> consumers | derived | valid |
| Complete `Theta_I`, root-free `Theta_act`, local `z` | `step_003`; maximum bounded in `step_003c` | G3/G4a/G5/G6; selected row in `step_005` | G2 -> all rows -> root-free maximum -> selected row only after p | explicitly conditional | valid |
| `(Hist-F)`, `(Res)`, `(SE-perp/raw/lb)` | G3/`step_003b` | `step_003c`, `step_003d`, `step_004`, `step_009`, `step_011`, `step_016` | Prior audit supplied by G6 -> current G3 -> current G4 -> next audit | derived | valid |
| All-label coordinates and normalized tangent identities | G4a/`step_003c` | G4b/`step_003d` | `step_003b -> step_003c -> step_003d` | derived | valid |
| `E_I^mat`, mass split, singleton/structural/matched exchange, `(Mat-margin)` | G4b/`step_003d` | `step_004`; unresolved singleton then `step_005` | Prior R-euc + G3/G4a -> `step_003d -> step_004 -> step_005` | derived | valid |
| Matching, `(R-euc/dir)`, normal audit | G4c/`steps_004--005` | G5/G6/G7/G9 and next G3 | `step_003d -> step_004 -> step_005 ->` later/current-next consumers | derived | valid |
| Accepted E, J update, z/global ledgers | G5/G6/`steps_006--009` | Later prefixes, G7, G10 | Empty prefix -> one-step charge -> row/global sum -> induction | derived | valid |
| Transaction result and all-commit tuple | G7/`steps_010--012` | G9/`step_014`, final work statement | Prefix invariant -> deterministic transaction -> Haar -> tape | derived | valid |
| Exact-target chart, PL, smoothness/path constants | G8/`step_013` | G9/G10 | G1 -> exact geometry -> entry/descent | derived | valid |
| Same-target chart membership | G9/`step_014` | `steps_015--016` | G7 tuple + G4c R-euc + G8 radius -> G9 | derived | valid |
| Terminal residual/rate and exact baseline | G10/`steps_015--016` | Final theorem | Entry -> first-exit contraction -> specialization | derived | valid |

## Early Obstruction And Repair Plausibility

- Contract contradiction: none. The asymmetric objective, sequential
  full-space procedure, rank, source class, probabilities, finite horizons,
  full-state/Frobenius metrics, arbitrary relative accuracy, and baseline are
  unchanged.
- Theorem-critical activation witness: now present in the diagnostic.
  `step_003c` supplies exact all-label coordinates; `step_003d` supplies the
  positive matched-residual curvature source and every opposing defect; the
  consumer path passes through `step_004` before matching.
- Source-to-claim stress: the positive term in `(Mat-ex)` comes from an exact
  ambient residual-Hessian calculation over matched pair/three-mode tangents.
  It is not inferred from boundedness, smallness, or a surrogate curvature
  claim.
- Residual-to-target stress: `E_I^mat`, `R_I^parallel`, and `R_I` all use the
  same realized `T`. `B_perp` is the only projected-to-actual residual, and
  `(SE-raw)` compares it at capture and Hessian scales.
- Protected-mixture entry trace: when `W_U=0`, unresolved activation is
  inactive but `|s_M|>=7|s_parallel|/8`, so the matched exchange source is
  active before the certificate conclusion is consumed. This is the decisive
  repair of the repeated sketch-8 blocker.
- Boundary stresses: matched singleton is rejected by `Sep`; equality is
  active; `|U_I|=1` is covered; `E_lb^c` keeps raw defects; and `H=e=0`
  gives exact equality. No allowed boundary leaves every mechanism inactive
  while a false unresolved-match conclusion is asserted.
- Accumulation stress: the matched exchange is a one-prefix finite
  enumeration. The only accumulated objects are the triangular normal system,
  nonnegative one-time J ledger, stopped tape, and terminal contraction, each
  with the concrete recurrence/budget displayed above.
- Mode/dependence upgrade: none. The raw branch prevents a hidden
  `e<=nu^2` assumption, and the separate instance/tape statements are
  preserved.
- Baseline: every new matched-mass defect vanishes at `H=e=0`; the no-floor
  conclusion is preserved rather than replaced by a remainder.
- Same-setting plausibility: all required sources and interfaces occur in the
  accepted sketch, so the pending obligations are legitimately step-local.
  If a fresh local proof produces a counterexample to `(Mat-ex)` or
  `(Mat-margin)`, that would invalidate this feasibility judgment and the
  user-directed controller route is `/proof-sketch`, not idea generation and
  not `idea_10`.

## Global Gaps And Hard Steps

All entries below are unresolved proof obligations, not missing interfaces.
Each is classified `step-local` under the current accepted sketch.

1. `step_001`: prove the normalized Gaussian event and disjoint-pair lower
   tail with the exact failure allocation and target guard.
2. `steps_002--003`: derive both transfer norms and the two compatible
   Neumann interfaces without an absolute-Gram operator shortcut.
3. `step_003b`: derive post-fit normal equations, `q_nor<=1/4`, the residual
   reserve, projector telescoping, and all raw/branch threshold comparisons.
4. `step_003c`: prove capture-before-radial ordering, exact dual stationarity,
   root-free history control, all-label equations, and normalized tangent
   identities under the nonorthogonal Gram convention.
5. `step_003d`: prove local units for (i) generation and norm of `E_I^mat`,
   (ii) `(All-stat)/(All-def)`, (iii) nonempty all-label active sets,
   (iv) the sign-safe `s_U/s_M/W_U` split, (v) the unresolved weighted
   singleton/straddle alternative, (vi) normalized matched pair/three-mode
   residual-Hessian expansion `(Mat-ex)`, (vii) matched-singleton `Sep`
   rejection, and (viii) raw `E_lb^c` plus branch-qualified exponent
   verification for `(Mat-margin)`.
6. `steps_004--005`: prove actual-residual threshold transfer and derive the
   exact matching/calibration/normal-audit output without redoing support.
7. `steps_006--009`: prove exact J expansions, O.1 boundary cases, rootwise
   factorization, raw one-time budgets, and temporal induction.
8. `steps_010--012`: prove deterministic transaction globalization,
   history-uniform Haar reachability, rollback, and stopped tape amplification.
9. `steps_013--014`: prove exact balanced Jacobian/Taylor constants and the
   direct full-state entry ratio at the weight-scaled radius.
10. `steps_015--016`: prove first-exit path control, contraction, explicit
    public rate specialization, probability separation, and exact baseline
    reduction.

These items are planning guidance for future `/proof-step` work. None is
proof evidence, and no item is pre-accepted by this diagnostic.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof
evidence, a cited result, an assumption source, or authority to change any
accepted sketch-step claim, dependency, output target, rate, mechanism, or
theorem contract. Every local derivation must be independently proved and
reviewed in its fresh sketch-9 step artifact.

## Suggested Routing

None

Continue with all fresh proof steps under accepted sketch attempt 9 in the
nineteen-row dependency order. In the landscape chain, prove and review
`step_003c`, then `step_003d`, then `step_004`; do not reuse sketch-8 step
evidence and do not bypass the `step_003d` producer.
