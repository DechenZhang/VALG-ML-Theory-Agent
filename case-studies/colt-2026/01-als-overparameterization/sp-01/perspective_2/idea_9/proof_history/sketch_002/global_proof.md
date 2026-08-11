# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_9`.
- Global unit attempt: 1.
- Reviewed idea: `perspective_2/idea_9/idea.md`, SHA-256
  `bc2eb7163a21b79d11fb5af6cd746eb70ea94141ca95501818f11f40a62894b6`.
- Binding setting: `perspective_2/idea_9/setting.md`, SHA-256
  `27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2`,
  in target-spec mode.
- Reviewed producer: `perspective_2/idea_9/proof_sketch.md`, SHA-256
  `527973357e6b0456d6131db81c9c86d8684c18edf33fb930f839cb557999a63c`,
  which identifies sketch attempt 2 and sixteen stable Step IDs.
- Reviewed gate: `perspective_2/idea_9/proof_sketch_review.md`, SHA-256
  `cdb55e821fad102d1c1e07e64a271cc1c01341aa7eaba724aefb5e0d2200cef5`,
  which reviews attempt 2 and records `Sketch Review Status = ACCEPTED`,
  viability score 8, retry target `None`, and retry mode `none`.
- Prior diagnostic lineage: the idea-8 sketch and review identify the false
  finite-precision interface `O(h^4+e h^2)` and its first-transition failure
  at `h=e^2`. They are used only to verify that idea 9 preserves the exact J
  update while replacing that false interface by the honest
  `O(h^4+e h+e^2)` charge. They are not consumed as proof evidence.
- Progress type: `material_partial`.
- Exposed algorithmic rank:
  `k = ceil(C_rank r^(3/2) (log(2r))^2)`, with `r < k < r^2`.
- Binding baseline: exact asymmetric CP least squares, full-space unprojected
  transactions, exact rollback, the exact generally nonorthogonal target,
  joint-zero unused slots, separate instance and tape probabilities, and no
  additive terminal error floor.

## Status

SKETCH_BLOCKED

The idea-8 local numerical obstruction is repaired: the same J factor appears
in the positive and baseline products, and the captured-label charge retains
the positive `e h` and `e^2` terms. The static source, resolvent, exact update,
and finite one-time ledger have coherent theorem-level interfaces.

The accepted sketch nevertheless lacks a feasible same-target chart-entry
export. Its available generated calibration gives only a per-slot factor
bound of order `eta0`, hence, in the full-state Euclidean metric declared by
the setting,

```
dist(Q_fin,Z_star)
    <= C tau_max^(1/3) sqrt(r) eta0.
```

The accepted `R-acc` interface controls cross-label tensor influence, with an
extra target-Gram factor, and does not remove the `sqrt(r)` accumulation in
factor distance. It therefore does not imply the sketch's step-014 export
`C(r nu^3+r^2e) <= varrho_PL/2` for
`varrho_PL=c_PL min{1,nu^2}`. A block-diagonal family of independent O.1
two-label blocks has `nu=h`, per-block factor displacement of order `h^2`,
and full-state displacement of order `sqrt(r)h^2`, while its ledger influence
is only of higher Gram order. This is an exported-interface and
residual-to-target mismatch, classified as `sketch/interface defect`.

The same formalized goal appears repairable without changing the nine
primitive assumptions or the algorithm: steps 013--014 can export a
weight-scaled full-state PL radius, for example a fixed fraction of
`tau_min^(1/3)` after the exact Jacobian audit, and compare the actual bound
`C tau_max^(1/3)sqrt(r)eta0` with that radius. Product-weight balance and the
upper Gram margin make this comparison inverse-polynomial and small. That is
a changed accepted output target and bridge, so it must be performed by a new
`/proof-sketch` attempt rather than silently inserted here.

## Attempted Theorem Claim

The attempted target-spec theorem is the strongest claim stated by the
accepted sketch and setting. There are fixed choices of the proof and
protocol constants and exponents such that, uniformly over every deterministic
base triple satisfying the nine primitive assumptions, the following holds.

1. With probability at least `1-r^(-10)` over the single Gaussian smoothing
   draw, the realized tensor has nonzero polynomially conditioned columns,
   product-weight ratio at most `2 Gamma_star`, normalized-Gram size
   `nu_real <= 2 nu_star`, pair and triple Khatri--Rao Gram gaps at least
   `15/16`, the stated tensor-norm comparison, and an exact balanced rank-r
   representation. The event also contains a derived lower-tail branch
   `E_lb={nu_real>=P^(-D_lb)}` whose complement costs at most `r^(-20)`.
2. On that one fixed instance, the static H/J/K source, both transfer gaps,
   the statewise Neumann envelope, actual accepted-history forcing, zero-
   diagonal z profiles, honest J charge, and finite all-prefix budgets are
   derived rather than assumed. In particular, every prefix satisfies the
   raw numerical budget
   `O(Gamma_star r nu_real^3+r^2P^(-D_stat))`, and only `E_lb` or the exact
   `H=0,e=0` limit is used for a `nu_real^2` simplification.
3. Every observable certificate is matched to a unique unresolved realized
   atom and exports `R-euc`, `R-dir`, separation, and injection extension.
   For every accepted transition the exact J-aware update holds in all three
   modes. On the isolated O.1 family its captured-label coordinate has the
   uniform honest scale
   `O(h^4+P^(-D_stat)h+P^(-2D_stat))`, including `h=P^(-2D_stat)`, and
   dominates the exact `2h^4+O(h^6)` increment. No lower bound on `h` is a
   theorem assumption.
4. A fresh full-space Haar transaction reaches a valid new certificate with
   history-uniform probability at least `(nr)^(-c_tx)`, every failure rolls
   back exactly, and the finite independent tape produces r distinct commits
   with conditional tape probability at least `1-r^(-10)` and polynomial
   discovery work independent of `epsilon`.
5. The actual all-commit tuple enters a proof-produced PL chart around the
   exact nonorthogonal target orbit in the full rank-k Euclidean factor
   metric. Joint unprojected balanced Armijo descent remains in that chart and
   returns, for every `0<epsilon<1`, a rank-k tensor with Frobenius residual at
   most `epsilon||T||_F` in polynomial work times `log(1/epsilon)`, without an
   additive floor.

The instance and tape probabilities are separate conditional statements. The
hidden constants and polynomial degrees may depend only on the fixed class
and protocol constants named in the setting, not on the dimensions, realized
instance, commit order, or `epsilon`. The result is material-partial because
it covers balanced-product-weight, modewise-near-orthogonal smoothed sources,
not arbitrary bases or unbalanced weights.

The inherited exact orthogonal/noiseless specialization remains part of the
attempted claim as a deterministic exact-limit statement: with `H=0` and
`e=0`, the structural source, stored padding, charges, accepted forcing, and
entry residual vanish; the exact target is a zero-loss stationary point and
arbitrary relative accuracy remains possible.

## Whole-Proof Draft

### Block G1: once-drawn realized geometry and the derived lower-tail branch

Write `a_j=bar a_j+g_j` and cyclically, where
`g_j~N(0,rho^2 I_n/n)`. The base norm reserve and the smoothing-margin
assumption must first give, simultaneously over all `3r` columns,

```
(2 kappa)^(-1) <= ||a_j||,||b_j||,||c_j|| <= 2 kappa.
```

Expanding each normalized Gram around its deterministic base Gram separates
linear Gaussian, quadratic Gaussian, and normalization errors. The required
operator statement is on the signed normalized Gram, not on its entrywise
absolute value. With `n>=C_dim r log(2r)` and the displayed smoothing slack,
the three error classes must sum to at most
`C_sm kappa rho sqrt(log(2r))`, yielding

```
nu=max_M ||G_M-I||_op <= 2 nu_star.
```

The same norm event changes every product weight by a fixed relative factor,
so the primitive base balance gives `tau_max/tau_min<=2Gamma_star`.

For the pair Khatri--Rao Gram, if `E_M=G_M-I`, then its off-diagonal row sum is
bounded by

```
sum_(l!=j) |E_B(j,l)E_C(j,l)|
    <= ||E_B e_j||_2 ||E_C e_j||_2 <= nu^2.
```

Gershgorin therefore gives the pair-Gram gap. The triple product is treated
the same way, with an additional factor no larger than one in the declared
regime. Consequently

```
(15/16)||tau||_2^2 <= ||T||_F^2 <= (17/16)||tau||_2^2,
```

and the balanced target slots represent exactly this same `T` inside the
radius guard.

The numerical-to-structural comparison requires a separate generated source.
Fix one label pair in one mode and condition on the second realized column.
On its lower norm event, the raw inner product with the first perturbed column
has an arbitrary mean but conditional Gaussian standard deviation at least

```
c rho/(sqrt(n) kappa).
```

The uniform Gaussian density bound implies
`P(|<a_p,a_q>|<=t | a_q)<=C t sqrt(n)kappa/rho`. Upper norm control transfers
the raw threshold to the exact normalized Gram entry. Since
`P=16nrk kappa rho^(-1)` and `k,kappa,rho^(-1)` have the declared polynomial
ranges, a fixed class-dependent `D_lb` can be chosen so that the normalized
threshold exceeds `P^(-D_lb)` while the small-ball failure is at most
`r^(-20)`. Thus `nu>=P^(-D_lb)` on the derived event `E_lb`. Choosing
`D_stat` later with sufficient polynomial slack yields, on this event,

```
r^2 e <= c_num nu^2,   sqrt(r)e <= c_num nu^2,
e=P^(-D_stat).
```

This lower tail is used only for those comparisons. The exact `H=0,e=0`
baseline is a separate algebraic branch and is not forced through a positive
lower-tail event.

### Block G2: absolute-Gram source, two transfer gaps, and conditional resolvent

For `H_M=|G_M-I|`, taking entrywise absolute values does not change a column's
Euclidean norm. Hence

```
max_j ||H_M e_j||_2 <= nu,
||H_M||_1=||H_M||_infty <= sqrt(r)nu.
```

Columnwise Cauchy--Schwarz gives, for `K_A=H_B circ H_C`,

```
||K_A||_1=||K_A||_infty <= nu^2,
L_(A,j) <= tau_max nu^2 <= 2Gamma_star tau_j nu^2,
```

with cyclic analogues. Since `J_A=I+H_A`,

```
||S||_1
  <= sum_M r ||K_M J_M||_1
  <= 3r nu^2(1+sqrt(r)nu).
```

This source contains the direct `H_BH_C` path and the first transitive
`H_BH_CH_A` path; Neumann powers retain longer paths.

For one fixed unresolved root j, the transfer is a three-mode off-diagonal
block map. A diagonal multiplier `H_M(j,t)+eta0` has operator norm at most
`nu+eta0`, while each J spreading block has norm at most
`1+sqrt(r)nu`. The norm of the three-mode adjacency is two. This gives in
both the global l1 and rootwise block-l2 norms

```
||Tcal|| <= 2(nu+eta0)(1+sqrt(r)nu),
C0 Gamma_star ||Tcal|| <= 1/4.
```

No operator norm of `H_M` is used. Therefore, for any legal conditional
history `A_I`, the nonnegative Neumann series converges and satisfies the raw
interfaces

```
||Theta_I||_1
 <= C0 Gamma_star/(1-q_res)
    (||S||_1+||A_I||_1+C r^2 e),

||Theta_I||_(root,2)
 <= C0 Gamma_star/(1-q_row)
    (||S||_(root,2)+||A_I||_(root,2)+C sqrt(r)e).
```

At the empty state `A_empty=0`, these are unconditional derived outputs. At a
later state, the prefix induction in G5 supplies the legal history input.

### Block G3: conditional current-residual landscape and unique matching

Assume one protected prefix supplied by G5. Under its injection, the exact
residual decomposes as

```
R_I = sum_(j in U_I) tau_j phi_j - sum_(i in I) E_i.
```

For a scratch direction define the target coordinates
`alpha_j=<u,m_(j,A)>`, `beta_j=<v,m_(j,B)>`, and
`gamma_j=<w,m_(j,C)>`. Then

```
s_I(u,v,w)
 = sum_(j in U_I) tau_j alpha_j beta_j gamma_j
   - sum_(i in I)<E_i,u tensor v tensor w>.
```

At a radial root `g^3=s_I>0`, angular stationarity in mode A has the exact
form

```
P_(u^perp)[R_I times_2 v^T times_3 w^T]
    = numerical angular residual,
```

and cyclically. Expanding the first term around one candidate root produces
the direct `K_M` leakage; expanding the accepted-error term produces the
actual-history coordinates `A_I`; solving the coupled off-label inequalities
produces the transfer `Tcal`. Thus the raw direction vector d must satisfy a
componentwise inequality of the form

```
d <= C0 Gamma_star(S+A_I+e 1+Tcal d),
```

so the exact conditional Neumann output is `d<=Theta_I`.

The Hessian calculation must then establish the singleton/mixed-support
dichotomy. Capture and the radial equation provide a positive singleton
score. If two unresolved coordinates carry nonnegligible product mass, an
explicit tangent exchange direction must have negative Rayleigh quotient
below `-P^(-D_gap)` after subtracting the static, history, and numerical
defects. Otherwise one coordinate p dominates and the angular equations,
unit-norm identities, and radial residual give

```
|delta_i|+max_M ||e_(i,M)||_2 <= C_led eta0,
|<e_(i,M),m_(l,M)>|
   <= C_led(Theta_(I;p,M,l)+e),  l!=p.
```

For the diagonal coordinate, unit normalization supplies
`<e_(i,M),m_(p,M)>=-||e_(i,M)||^2/2`; no diagonal z entry is introduced.
The separation test and closeness of protected factors rule out every already
matched label, so p is unique and the injection extends. Signs are proof-only
product-one gauges; the algorithm never queries p, H, J, K, or Theta.

This block is conditional only. G5 supplies the noncircular base and
transition needed to use it at every generated state.

### Block G4: accepted-error expansion, symmetric J update, and O.1 audit

For a commit matched to p, orient the signs so
`u_M=m_(p,M)+e_M` and write `g^3=tau_p(1+delta)`. Then

```
E/tau_p
 = (1+delta)(m_(p,A)+e_A) tensor (m_(p,B)+e_B)
                  tensor (m_(p,C)+e_C)
   - phi_p.
```

The tensor-influence expansion follows by contracting two modes with one
tested realized label and separating the exact target product from every term
containing `delta` or an e factor. Product majorization gives `R-tensor` with
the exact Xi interface.

For a still-unresolved root j and a tested A-mode label l, the target factor
in the tested mode is

```
|<m_(p,A),m_(l,A)>| = J_A(p,l)
```

because `l=p` gives one and `l!=p` gives `H_A(p,l)`. The two root-mode target
factors are `H_B(p,j)` and `H_C(p,j)` because `p!=j`. Subtracting the exact
target term before applying the triangle inequality yields

```
|<E,m_(l,A) tensor m_(j,B) tensor m_(j,C)>|/tau_j
 <= 2 Gamma_star [
      (1+eta0)(J_A(p,l)+z_(p,A,l))
       (H_B(p,j)+z_(p,B,j))(H_C(p,j)+z_(p,C,j))
      -J_A(p,l)H_B(p,j)H_C(p,j)].
```

This is precisely `J-update`; the same calculation is cyclic. In particular,
when `l=p`, the zero z diagonal gives

```
Upsilon_(p;j,p)^A
 = eta0 H_B(p,j)H_C(p,j)
   +(1+eta0)[H_B(p,j)z_(p,C,j)
             +H_C(p,j)z_(p,B,j)
             +z_(p,B,j)z_(p,C,j)].
```

On the isolated O.1 family, `nu=h`, `H_A(p,j)=0`, and
`H_B(p,j)=H_C(p,j)=h`. The static part of the relevant B/C profiles vanishes
and their numerical part is of order e, including the positive padding. Thus

```
Upsilon_(p;j,p)^A
 = O(h^4+e h+e^2),
```

with matching positive `eta0 h^2`, `h z`, and `z z` terms. At `h=e^2` this
remains an upper bound and is more than large enough to dominate the exact
`2h^4+O(h^6)` increment. This is exactly where idea 8 failed: replacing
`e h+e^2` by `e h^2` is impossible. For `l!=p`, `J_A(p,l)=H_A(p,l)`, so no
spurious diagonal `O(h^2)` term appears and the transitive charge remains.

### Block G5: rootwise profile, one-time global ledger, and prefix induction

At prefix `I_(t-1)`, store the p-root profile from the already constructed
Theta and keep its diagonal zero. The exact rootwise resolvent estimate is

```
||z_p||_2
 <= C[nu^2(1+sqrt(r)nu)
      +||A_(I_(t-1);p)||_2+sqrt(r)e].
```

The local proof must keep the history term visible. On the theorem event, the
prior l1 history budget and `E_lb` imply

```
||A_(I_(t-1);p)||_2 <= ||A_(I_(t-1))||_1
 <= C(r nu^3+r^2e)
 <= C(r nu^3+nu^2),
```

and hence the advertised branch profile

```
Z:=max_(p,M)||z_(p,M,.)||_2
 <= C(nu^2+rnu^3+sqrt(r)e) <= C'nu^2.
```

Before this branch comparison, the fully raw resolvent line includes the
history contribution; the global budget below retains `r^2e`. The exact limit
`H=e=0` gives z=0 by equality.

For one captured p and mode A, expand the already baseline-subtracted charge
before summing. With
`L=1+sqrt(r)nu` and the rootwise profile Z, dropping only nonnegative index
restrictions gives the explicit one-commit bound

```
sum_(j,l) Upsilon_(p;j,l)^A
 <= L[eta0 nu^2+(1+eta0)(2nu Z+Z^2)]
    +(1+eta0)sqrt(r)Z[nu^2+2nu Z+Z^2].
```

The first bracket includes the captured-label diagonal; the second contains
terms with `z_(p,A,l)`. Substituting
`eta0=O(nu^2+e)`, the displayed Z, and `sqrt(r)nu<=1/20` gives

```
sum_(j,l,M) Upsilon_(p;j,l)^M <= C(nu^3+r e).
```

Every structural and numerical class is retained in this substitution. In
particular, the diagonal `e H` and `e^2` terms cost at most `Cr e` per p,
not a second tested-label factor. Summing each actual captured p once yields

```
U_s <= C Gamma_star r nu^3+C r^2e.
```

The one-step update then gives

```
||A_(I_s)||_1 <= 2Gamma_star U_s,
```

and the analogous Xi factorization gives `R-acc`. Substitution in the l1
resolvent yields `R-budget`. Since `rnu` is small and `r^2e<=cnu^2` on
`E_lb`, the accumulated accepted influence is below the static singleton
margin.

The noncircular induction is now explicit. The base is
`I_0=emptyset`, `A_0=0`, and the empty injection. Given a valid prefix, G2
constructs Theta, G3 produces a matched certificate, G4 produces its exact
transition charge, and this block produces the next history/profile budgets.
A failed transaction leaves every prefix object unchanged by exact rollback.
A successful one extends the injection and is charged exactly once. Thus the
recurrence is finite, sign-controlled, and valid for at most r commits.

### Block G6: deterministic transaction dynamics and finite-tape reachability

At fixed directions, the radial derivative is

```
partial_g f_I = -3g^2(s_I-g^3),
```

so a positive score has the unique positive root `g^3=s_I`. Safeguarded
bracketing and dyadic bisection must reach the relative radial tolerance while
respecting the guard. At a radial bracket, the exact product-sphere gradient
drives angular Armijo descent. If the normalized gradient is small but the
angular Hessian has eigenvalue below `-P^(-D_gap)`, an approximate minimum-
eigenvector and the better of its two signs give a decrease of polynomial
size after radial re-bracketing. Compact guard smoothness must supply the
accepted-step floor `P^(-D_ls)`. Every other branch is unsuccessful and maps
the scratch slot exactly to joint zero.

The conditional landscape of G3 provides an inverse-polynomial activation
window around each unresolved atom. Haar small-ball estimates on the three
full ambient spheres, followed by the deterministic radial/angular flow,
must give

```
P_tape(next transaction commits | T,protected history)
    >= p_tx=(nr)^(-c_tx).
```

Separation and the generated injection make every success a new label. Split
the tape into enough stopped trials for each of at most r stages, or apply the
equivalent negative-binomial tail. With
`N_tx=C_tape r p_tx^(-1)log(2r)`, the failure probability is at most
`r^(-10)`. Failed probes contribute exactly zero to the ledger, so there is no
persistent forcing and no hidden infinite-horizon upgrade.

### Block G7: exact-target balanced Jacobian and local PL geometry

Restrict to the r active balanced slots and quotient only by the finite
permutation/product-one sign orbit already present in the setting. The
derivative of the exact CP synthesis map at `Q^star` sends one tangent
perturbation to the sum of its three one-mode replacements plus the radial
term. Pair and triple Khatri--Rao Gram gaps, balanced product weights, and the
removal of continuous CP scaling by the balanced manifold must give a
smallest nonzero singular value bounded below by an inverse polynomial in
`P`. Taylor continuity in a weight-scaled neighborhood then gives

```
||grad_bal F(Q)||_F^2 >= 2 mu_PL F(Q),
mu_PL >= P^(-D_PL).
```

This direct current-notation calculation is source-compatible: its reference
is the exact nonorthogonal realized target, not a whitened or orthogonal
surrogate. It can also produce a legitimate full-state Euclidean radius
proportional to a polynomial fraction of the minimum balanced target scale
`tau_min^(1/3)`, which is itself at least inverse-polynomial by the realized
norm bounds.

The accepted sketch instead fixes the exported finite-branch radius to
`c_PL min{1,nu^2}`. G7 can plausibly prove PL on such a smaller ball, but that
does not establish that the actual tuple lies in it.

### Block G8: attempted same-target entry and the missing residual bridge

From `R-euc`, for each matched active slot p and each of its three modes,
the cube-root mean-value formula and direction calibration give

```
||g_p u_(p,M)-tau_p^(1/3)m_(p,M)||_2
 <= C tau_p^(1/3)(|delta_p|+||e_(p,M)||_2)
 <= C tau_p^(1/3)eta0.
```

After minimizing over the generated permutation and sign orbit and summing in
the setting's full-state Euclidean metric, the available same-target bridge
is therefore

```
dist(Q_fin,Z_star)
 <= C tau_max^(1/3)sqrt(r)eta0
 <= C Gamma_star^(1/3)tau_min^(1/3)sqrt(r)eta0.
tag{Entry-raw}
```

On `E_lb`, `eta0=O(nu^2)` after the numerical comparison and
`sqrt(r)eta0=o(1)`, so `(Entry-raw)` is enough to enter a fixed fraction of a
weight-scaled PL neighborhood. It is not enough to enter a full-state ball of
radius `c_PL nu^2`, because its ratio to that radius contains
`tau_max^(1/3)sqrt(r)` and no accepted output controls that factor.

`R-acc` cannot be substituted for `(Entry-raw)`. Its Xi terms have the shape

```
H_C(p,l)z_(p,B,l)+H_B(p,l)z_(p,C,l)+z_(p,B,l)z_(p,C,l)
   +eta0(H_B+z_B)(H_C+z_C),
```

so they measure contractions of accepted tensor errors against two target
modes. A factor displacement orthogonal to `m_(p,A)` can have norm `h^2`
while its Xi influence is `h^4` because contraction in the other two modes
adds two factors h. The full-state factor metric does not contain those extra
Gram factors.

This mismatch is exposed by an even-r block family: take A orthogonal and let
the B and C normalized Grams be disjoint 2-by-2 blocks with off-diagonal h,
with balanced weights. Then `nu=h`. At one atom in each block the tangent
A-gradient contributed by its partner is `h^2 m_(q,A)`, so the natural
certificate displacement is order `h^2` in an independent A direction. The
full-state accumulation over the blocks is order `sqrt(r)h^2`, whereas its
cross-label tensor-influence contraction is higher order. This family obeys
the upper Gram margin and is stable under an open realized perturbation. It
shows that neither balanced weights nor `R-acc` supplies the missing
dimension-free factor-distance cancellation.

Thus the accepted step-014 output

```
C(rnu^3+r^2e) <= varrho_PL/2,
varrho_PL=c_PL min{1,nu^2},
```

does not follow from its named raw controls. Repair requires a changed chart
radius/export or an additional same-target factor-distance producer and
dependency. Under the contract this is a `sketch/interface defect`, not a
hard local inequality.

### Block G9: conditional first-exit descent, probability, and rate assembly

If a repaired G8 supplies entry at at most half of a valid PL radius, compact
smoothness and trust-region Armijo give an inverse-polynomial accepted-step
floor and

```
F_(t+1) <= (1-c_arm mu_PL P^(-D_ls))F_t.
```

The sum of step lengths is controlled by the geometric loss decrease, so a
first-exit argument keeps every terminal iterate in the same chart. There is
no additive forcing after discovery: inactive slots stay jointly zero and the
active r slots are optimized jointly. After polynomially many times
`log(1/epsilon)` iterations,

```
sqrt(2F_t)=||T-Psi(Q_t)||_F <= epsilon||T||_F.
```

The public specialization substitutes the exact rank formula, the polynomial
ranges of kappa and `rho^(-1)`, the finite tape sizes, and the fixed exponent
choices. It keeps the structural/lower-tail instance allocation inside the
instance probability and the independent tape tail conditional on T. These
arguments are step-local once chart entry is legally produced, but the final
theorem cannot currently consume them because G8 is blocked.

### Block G10: exact baseline specialization

In the deterministic orthogonal/noiseless and exact-stationarity limit,
`H=K=S=0`, `e=0`, `A_empty=0`, and the Neumann envelope and every stored z
profile are zero. The exact J diagonal remains one, but every root-mode factor
in `J-diag` is zero, so the first transition has zero charge. Exact target
slots represent T, failed transactions roll back to joint zero, and the exact
target is stationary at zero loss. A constant orthogonal PL neighborhood has
zero entry residual, and terminal descent preserves the no-floor arbitrary-
epsilon conclusion. This specialization is same-target equality, not a
finite-e surrogate and not an event asserted under positive smoothing.

### Attempted assembly

G1--G5 would establish the generated structural theorem and all-prefix
ledger, including the repaired local charge. G6 would turn that invariant
into r actual distinct commits on the finite tape. G7 independently supplies
exact-target local coercivity, and G9 converts legal entry into the claimed
accuracy and runtime. G10 preserves the inherited exact baseline.

The composition fails only at the accepted G8 interface: the actual
all-commit tuple has no accepted producer proving membership in the specific
full-state radius exported by steps 013--014. Consequently this diagnostic
cannot assemble the attempted theorem without changing the accepted sketch.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| --- | --- | --- | --- | --- | --- |
| G1 | Once-drawn geometry, exact target, and derived lower tail | `step_001` | Six source primitives | `assump:base-column-conditioning`, `assump:base-product-balance`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:smoothing-scale`, `assump:modewise-gram-margin` | Prove normalization/operator tails, probability allocation, and conditional small-ball constants. |
| G2 | Static H/J/K source, transfer gaps, and conditional resolvent | `step_002`, `step_003` | G1 | No generated history as a public premise | Prove exact l1/rootwise block norms and both Neumann interfaces. |
| G3 | Conditional landscape, certificate isolation, and matching | `step_004`, `step_005` | G2 plus a legal prior prefix | Product-weight balance only through G1; prefix clauses are conditional hypotheses | Prove score/Hessian dichotomy, calibration, separation, and directional resolvent inequality. |
| G4 | Exact accepted error, tensor influence, J update, and honest O.1 audit | `step_006` | G3 calibration and the stored conditional profile | No lower bound on h | Prove all scalar expansions, constants, cyclic cases, and the exact increment comparison. |
| G5 | Rootwise profile, one-time charge, all-prefix budgets, and invariant | `step_007`, `step_008`, `step_009` | G2--G4 and strict prior-prefix induction | `E_lb` is derived, not assumed | Prove the fixed-root history estimate, per-p factorization, raw numerical sum, and noncircular induction. |
| G6 | Transaction dynamics, rollback, Haar reachability, and tape amplification | `step_010`, `step_011`, `step_012` | G3/G5 invariant | `assump:random-tape` | Prove accepted-step floor, activation window, history-uniform probability, stopped tail, and work. |
| G7 | Exact-target balanced PL geometry | `step_013` | G1 exact target and pair/triple gaps | No basin membership assumption | Prove balanced Jacobian kernel/floor, Taylor radius, PL constant, and exact convention match. |
| G8 | Same-target factor entry | `step_014` | G3 calibration, G5 `R-acc`, G6 tuple, G7 chart | No new primitive premise permitted | **Blocked:** raw full-state factor distance has `tau_max^(1/3)sqrt(r)eta0`; `R-acc` does not imply the exported `O(rnu^3+r^2e)` factor distance or entry into `c_PL nu^2`. |
| G9 | First-exit descent, public rate, runtime, and probability assembly | `step_015`, `step_016`, assembly | G1, G5--G8 | `assump:rank-regime`, `assump:accuracy-range`, all fixed protocol choices | Step-local conditional on repaired entry; final use currently blocked by G8. |
| G10 | Exact/noiseless baseline invariance | `step_016`, direct specialization | Exact setting identities and G7/G9 target identity | Deterministic exact-limit branch | Prove first-transition zero charge and stationary zero-loss trace; interface itself is valid. |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| --- | --- | --- | --- | --- |
| `step_001` | G1 | Produces `E_inst,E_lb,Q^star` for all static and terminal blocks | Norm retention, normalized Gram operator concentration, weight comparison, Schur gaps, tensor norm, Gaussian small-ball normalization | Step-local; exact baseline is separate from positive-smoothing probability. |
| `step_002` | G2 | Consumes G1; produces H/J/K/S and both gaps | Column l2, K l1, leakage, S budget, exact l1 and rootwise block operator calculations | Step-local; no operator bound on entrywise `abs(G-I)`. |
| `step_003` | G2 | Consumes static gaps and conditional A; produces Theta | Positive Neumann convergence in both norms and empty-state specialization | Step-local conditional lemma. |
| `step_004` | G3 | Consumes conditional Theta; produces landscape dichotomy | Exact score/gradient/Hessian expansion, singleton margin, mixed-support negative curvature, boundary cases | Step-local but high risk. |
| `step_005` | G3 | Consumes dichotomy; produces matching/calibration/injection | Product-one signs, radial calibration, diagonal unit-vector identity, R-euc/R-dir, separation | Step-local. |
| `step_006` | G4 | Consumes calibration and symbolic z; produces E, Xi, Upsilon, J-update | Exact multilinear expansion, J baseline, O.1 upper/lower, exact increment, cyclic/off-diagonal cases | Step-local; idea-8 blocker is repaired. |
| `step_007` | G5 | Consumes conditional resolvent and a legal prior-prefix budget | Zero diagonal, rootwise source/history/numerical split, `E_lb` branch comparison | Step-local if the raw history term is retained before absorption. |
| `step_008` | G5 | Consumes G4/G5 profiles; produces global charges and budgets | Per-p factorization, diagonal/off-diagonal split, one-time counting, Xi/history budgets | Step-local, theorem-critical. |
| `step_009` | G5 | Applies all conditional producers from the empty prefix | Exact base, strict transition order, successful/failed branch, unresolved bookkeeping | Step-local; proves generated invariants rather than assuming them. |
| `step_010` | G6 | Consumes valid prefix; produces certificate or exact rollback | Radial bracket, angular Armijo, curvature escape, guard and accepted-step lower bound | Step-local. |
| `step_011` | G6 | Consumes G3/G5/G6 deterministic interfaces | Haar activation, flow into certificate, matched-label rejection, uniform p_tx | Step-local, high risk. |
| `step_012` | G6 | Consumes injection, rollback, and p_tx | Stopped negative-binomial tail, separate tape probability, operation count | Step-local. |
| `step_013` | G7 | Consumes exact target and Gram gaps; produces PL constants/radius | Balanced tangent/Jacobian, gauge removal, Taylor continuity, inverse-polynomial bounds | PL itself is step-local; its specific radius is not enough for the accepted step-014 bridge. |
| `step_014` | G8 | Must consume actual tuple, calibration, R-acc, and G7 radius | Same-target full-state factor-distance comparison and radius domination | `sketch/interface defect`: named raw controls do not yield the stated output target. |
| `step_015` | G9 | Would consume legal G7/G8 chart entry | Armijo decrease, path-length first exit, geometric loss, no-floor stopping | Step-local conditional on repaired entry. |
| `step_016` | G9/G10 assembly | Consumes probabilities, work, raw budgets, entry, and descent | Exponent order, branch absorption, hidden dependence, separate probability conversion, exact baseline | Step-local assembly after a repaired sketch; currently blocked by step 014. |

## Dependency And Assumption Audit

The attempted public theorem has exactly the nine primitive conditions in the
binding setting. No lower bound on `nu` or h, no realized event, and no
trajectory invariant may be promoted to a tenth assumption.

| Theorem-facing condition | Provenance class | Producer | First critical consumer | Audit result |
| --- | --- | --- | --- | --- |
| Realized nonvanishing, norms, Grams, weights, pair/triple gaps, exact T | derived static event | `step_001` | `step_002`, `step_013` | Legal forward path from six primitives. |
| `E_lb` | derived static event | `step_001` | `step_007`, `step_008`, `step_013`, `step_014`, `step_016` | Legal only for numerical absorption; not an algorithm query or primitive restriction. |
| H/J/K, leakage, S, `q_res,q_row` | derived static controls | `step_002` | `step_003` and ledger blocks | Legal, with exact array conventions. |
| `Theta_I` | explicitly conditional generated control | `step_003` | `step_004`, `step_005`, `step_007` | Legal when G5 supplies prior A; empty state is unconditional. |
| Certificate label, signs, `R-euc,R-dir`, injection | derived per-commit controls | `step_004`, `step_005` | `step_006`, `step_009`, `step_011`, `step_014` | Labels are proof-only and produced before use. |
| E, Xi, J charge/update and O.1 audit | derived transition outputs | `step_006` | `step_008`, `step_009` | Exact idea-9 interface; no idea-8 rate is reused. |
| z row profile, `J-global`, history, Theta, and `R-acc` budgets | derived finite-prefix controls | `step_007`, `step_008` | `step_009`, later landscapes, `step_014` | Legal strict-prefix path; raw numerical terms must remain visible. |
| Protected-state invariant | derived finite-horizon invariant | `step_009` | `step_010`--`step_012` | Noncircular empty-base induction with exact rollback. |
| Transaction success and actual all-commit tuple | derived tape outputs | `step_010`--`step_012` | `step_014` | Legal conditional probability path. |
| PL constants and radius | derived static/local geometry | `step_013` | `step_014`, `step_015` | PL producer is legal, but the accepted radius is not matched by an entry producer. |
| Full-state chart membership | missing derived-condition bridge | `step_014` as written | `step_015`, final theorem | **Invalid flow:** `R-acc` is not a factor-distance control at the required scale. |
| First-exit contraction and public rate | derived conditional outputs | `step_015`, `step_016` | final assembly | Legal only after chart membership is repaired. |
| Exact baseline | derived deterministic specialization | direct identities and `step_016` | final baseline clause | Same-target equality; not used to prove the finite-smoothed event. |

The blocked chart membership cannot be moved into the theorem assumptions,
because the formalized goal is not conditional on generated basin entry.

## Citation And Tool Audit

| Source or tool | Current-branch objects and role | Assumptions and mapping to discharge | Needed conclusion and convention compatibility | Affected block / Step ID | Diagnostic disposition |
| --- | --- | --- | --- | --- | --- |
| Gaussian norm and normalized-Gram operator concentration | Independent `N(0,rho^2I/n)` column perturbations | Nonidentical base means/norms, normalization remainder, `3r` union, exact signed-Gram operator convention | G1 norm and `nu<=2nu_star` event with displayed dependence | G1 / `step_001` | Standard tools in current notation; constants remain step-local. |
| Uniform Gaussian density/small-ball bound | One raw cross inner product conditional on its partner | Partner lower norm, arbitrary mean, upper normalization, fixed-pair or disjoint-pair probability allocation | `E_lb` with fixed `D_lb` and failure `<=r^(-20)` | G1 / `step_001` | Exact source path exists; full normalization proof remains local. |
| Cauchy--Schwarz, Schur product, and Gershgorin | H columns, K kernels, pair/triple Grams | Unit diagonal, exact normalized columns, signed versus absolute conventions | R-src, leakage, K budgets, pair/triple spectral gaps | G1/G2 / `step_001`,`step_002` | Direct current-notation derivations. |
| Nonnegative Neumann series | `Id-C0Gamma_star Tcal` in l1 and rootwise block-l2 | Exact transfer domain, `q_res,q_row<=1/4`, zero diagonal | Conditional Theta with geometric factor `1/(1-q)` | G2 / `step_003` | Standard fact with exact compatible norms. |
| Product-sphere differential calculus | Exact `f_I`, radial root, angular gradient/Hessian | Full ambient spheres, per-mode normalization, no protected projection, exact current residual | Singleton/mixed-support dichotomy and certificate calibration | G3 / `step_004`,`step_005` | Direct current-notation proof; no external strict-saddle theorem is treated as discharged. |
| Multilinear product expansion and Cauchy--Schwarz factorization | Actual E, target contractions, J charge, rootwise sums | Product-one sign gauge, weight ratio, zero-diagonal z, exact same J baseline | J-update, O.1 audit, per-p and all-prefix budgets | G4/G5 / `step_006`--`step_009` | Direct algebra; exact constants remain step-local. |
| Dyadic Armijo and approximate minimum-eigenvector routine | Guarded exact loss and angular Hessian | Polynomial smoothness on guard, exact radial re-bracketing, two-sign trial | Accepted-step floor or exact rollback within `H_tx` | G6 / `step_010` | Algorithmic standard tools; implementation and complexity interfaces must be proved. |
| Haar spherical cap/small-ball estimates | Three independent full-space seed directions | Exact dimension, activation windows, history-uniform target geometry | `p_tx>=(nr)^(-c_tx)` | G6 / `step_011` | Step-local; no target labels are supplied to the algorithm. |
| Stopped Bernoulli/negative-binomial tail | Independent finite tape under adaptive protected history | Conditional lower bound valid after every history, exact rollback, at most r successes | All-commit probability and polynomial work | G6 / `step_012` | Standard probability tool with compatible conditioning. |
| Balanced Jacobian/Taylor/PL calculation | Exact active CP synthesis map at Qstar | Balanced tangent convention, finite orbit, pair/triple gaps, weight scales, inactive zeros | Exact-target PL constant and a same-metric local radius | G7 / `step_013` | Direct current-notation source; it does not itself prove actual entry. |
| Local PL plus Armijo first-exit argument | Exact objective inside a valid chart | Entry with reserve, smoothness, step floor, no persistent forcing | Geometric loss contraction and floor-free endpoint | G9 / `step_015` | Step-local after a valid entry bridge. |
| Parent ALS/overparameterized tensor papers | Procedure and problem motivation | No exact J ledger, transaction theorem, or quantitative chart output is imported | Lineage only | All | Not proof authority and not a mechanism source. |

No cited theorem is used to bridge `R-acc` to full-state factor distance. Such a
bridge is absent, not merely an unverified citation label.

## Quantitative Dependence Audit

| Category | Exposed contract | Diagnostic audit |
| --- | --- | --- |
| Structural variables | `n,r,k,kappa,rho,Gamma_star,P,nu,eta0`, H/J/K/S and realized weights | All realized quantities are derived. Hidden constants may depend only on fixed class/protocol constants. |
| Rank rate | `k=ceil(C_rank r^(3/2)log^2(2r))`, `r<k<r^2` | Substitution is exact and strictly subquadratic. Discovery uses only r committed slots; unused slots remain joint zero. |
| Numerical variables | `e=P^(-D_stat)`, local h, `D_lb,D_stat,D_gap,D_cap,D_ls,D_PL` | Order is class/protocol constants, static margin, `D_lb`, then numerical/gap/cap/line-search/PL exponents. Positive `e h,e^2` terms are never removed locally. |
| Instance probability | At least `1-r^(-10)` over one smoothing draw | Gaussian concentration and the `r^(-20)` lower-tail allocation must fit one event. Exact baseline is not a positive-smoothing event. |
| Tape probability | Conditional on fixed good T, at least `1-r^(-10)` | Kept separate from instance probability; adaptivity is handled by history-uniform p_tx and independent unused tape entries. |
| Horizon mode | Once-drawn static event; finite at most r commits; finite `N_tx H_tx`; terminal `O(log(1/epsilon))` | No all-time stochastic upgrade. Ledger is finite-budgeted; terminal descent has zero additive forcing. |
| Norm/metric mode | Column Euclidean, signed-Gram operator, entrywise l1, rootwise block-l2, full-state Euclidean orbit distance, balanced gradient, final Frobenius residual | The chart blocker is precisely a mismatch between tensor-influence controls and full-state factor distance, not a norm that can be silently changed. |
| Raw ledger rate | `Z=nu^2+rnu^3+sqrt(r)e`; global `rnu^3+r^2e` | The exact raw resolvent must retain the prior-history term; `E_lb` supplies only the later `nu^2` comparison. One-time factorization prevents a second label factor. |
| Local audit rate | `h^4+e h+e^2` on isolated `nu=h` O.1 family | Correct at `h=e^2`, `h<<e`, and h=0; larger embeddings use global nu. This repairs idea 8. |
| Chart rate | Accepted sketch: `varrho_PL=c_PL min{1,nu^2}` and entry from `C(rnu^3+r^2e)` | **Unsupported:** full-state matching gives `C tau_max^(1/3)sqrt(r)eta0`; R-acc has extra Gram contractions. Requires sketch repair. |
| Accuracy | Every `0<epsilon<1`, no additive remainder | Valid conditional on entry; exact loss is geometrically reduced to relative Frobenius epsilon. |
| Runtime | Discovery polynomial in `n,r,k,kappa,rho^(-1)` and independent of epsilon; terminal polynomial times `log(1/epsilon)` | `step_016` must count bracketing, Hessian-vector/eigenvector, failed probes, commits, and terminal iterations before substituting k/kappa/rho. |
| Baseline | Exact representation, exact rollback, exact stationary target, no floor at `H=e=0` | Preserved. A repaired chart must retain the same exact target and full-state metric. |

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst` and exact target | Static event, conditioning, baseline source | Once-drawn | Finite intersection of norm, Gram, weight, pair/triple, tensor, and guard events | Base norm/Gram reserves and Gaussian tails | Linear, quadratic, normalization, and union errors | No trajectory accumulation | Structural lower/upper comparison | Six source primitives; zero tensor has explicit early return | Signed-Gram and norm sources have the exact conditioning content | Produced columns and T are exactly consumed objects in Euclidean/Frobenius metrics | step-local | Primitives -> `step_001` -> consumers | Empty state and exact target are defined immediately | Each deviation is below a fixed reserve fraction | Six source assumptions | Realized norms/Grams/weights | Minimum norm, exact target, zero-tensor guard | Without reserves, target conditioning and later source fail. |
| `E_lb` | Derived numerical nondegeneracy for optional absorption | Once-drawn finite-smoothed event | `P(E_lb^c)<=r^-20`, `nu>=P^-D_lb` | Conditional Gaussian variance of one raw pair inner product | Small-ball event and normalization | No trajectory accumulation | Source exclusion plus structural comparison | `assump:gaussian-smoothing`, partner norm event; exact H=0 branch excluded and handled separately | Supplies only a lower scale for nu, which is the required claim class | Same exact normalized Gram defines both produced lower bound and consumed nu | step-local | Gaussian draw -> `step_001` -> branch-aware consumers | First profile uses positive e only after E_lb is already fixed | Choose `D_stat>=2D_lb` plus polynomial slack for `r^2e,sqrt(r)e<=cnu^2` | Gaussian law, norm bounds, polynomial ranges | `E_lb` | Tiny nu complement is charged; exact limit uses equality | Without it, positive e cannot be uniformly absorbed into zero/tiny nu. |
| H/J/K and transfer gaps | Static source and small gain | Once per instance, used at every finite prefix | `norm(Tcal)<=2(nu+eta0)(1+sqrt(r)nu)`, `q<=1/4` | H column l2 and K l1 controls | eta padding and J row sums | Geometric within-state paths, finite factor `1/(1-q)` | Summable control | G1 event and exact displayed transfer; q=1 excluded by margin | Upper/small-gain source matches the boundedness claim | Same array domain and zero-diagonal convention | step-local | G1 -> `step_002` -> `step_003` | Empty A gives convergent first envelope | Fixed constants and Gram slack make q<=1/4 | Gram margin, balance | H/J/K/S | H=0 gives q=0; transitive chain retained | q>=1 would destroy resolvent closure. |
| Conditional Theta and landscape | Generated boundedness and isolation | One legal protected state | `d<=C Gamma(S+A+e1+Tcal d)`, hence `d<=Theta`; Hessian dichotomy | Positive singleton score, radial root, angular curvature gap | Static leakage, actual A, e, mixed support, separation ambiguity | Conditional within state; no cross-prefix accumulation | Algebraic coupling plus structural lower/upper comparison | G2 and exact product-sphere derivatives; zero score is failure, not a false success | Score/curvature sources have sign and support content | Scratch factor is compared directly with exact realized atom | step-local | Prior prefix -> G2/G3; G5 later produces prefix | Empty A=0; positive score activates root; zero score rolls back | Singleton margin dominates all named conditional defects | Static event, balance | A, Theta, score/gap/capture | Mixed/partial support and separation threshold included | Without curvature/singleton source, certificate need not identify a label. |
| Matching/calibration/injection | Generated support, membership, and transition input | Each successful commit, at most r | `abs(delta)+max_M norm(e_M)<=Ceta0`, R-dir, unique p | Radial equation, unit norms, finite sign orbit, separation | Direction/radial residual and already matched labels | One new label per success | Structural lower/upper comparison | G3; matched-label boundary excluded by observable `Sep<=1/4` | Separation supplies actual support exclusion, not generic smallness | Same exact atom and factor Euclidean metric | step-local | G3 -> `step_005` -> G4/G5/G6 | First commit has empty separation set | Gap and separation yield unique unresolved p | Event and balance | Certificate, Theta | Zero/negative score, ambiguous support, first/last label | Without uniqueness, tape success cannot imply distinct commits. |
| J update and honest O.1 charge | Signed transition and local numerical theorem clause | Every successful transition; isolated audit over all h>=0 | `Delta A<=2Gamma Upsilon`; local `Upsilon=O(h^4+eh+e^2)` | Exact same-J target baseline and positive `eta h^2,hz,zz` | Calibration and finite e | One nonnegative charge, later finite sum | Signed cancellation before majorization plus reserve/ledger | Exact E expansion; no lower h bound; larger embeddings use global nu | J diagonal supplies exact identity and eta supplies required h^4 lower term | Actual E contracts against exact target frame | step-local | G3 -> `step_006` -> G5 | At empty history and `h=e^2`, e terms are active and sufficient | Positive/baseline difference yields exact update; constants dominate `2h^4+O(h^6)` | Balance | Calibration, z | h=0, h<<e, h=e^2, cyclic and transitive cases | Omitting J or e terms recreates idea-7/idea-8 failures. |
| Rootwise z profile | Generated boundedness for no-extra-factor sum | Every precommit prefix on E_lb; exact limit separately | `norm(z_p)_2<=C(nu^2+norm(A_p)_2+sqrt(r)e)` then branch Z bound | q_row Neumann contraction and static KJ source | Prior A and all-ones numerical source | Finite prefix; prior history only | Summable control and branch-qualified absorption | G2 plus prior G5 budget and E_lb; exact limit equality | Boundedness source matches rootwise output; no structural lower claim | z is the same profile consumed by Xi/Upsilon | step-local | Prior prefix -> `step_007`; no current charge used | Empty prefix has A=0; first z has static/e sources only | `norm(A_p)_2<=norm(A)_1`, then E_lb controls r^2e | Static event | Prior A, Theta | Dense/block, tiny-nu complement not consumed, H=e=0 | Without the rootwise bound, global sum gains an extra label factor. |
| Global charge/history/R-acc | Finite accumulated invariant and theorem budget | Uniform over s<=r and every commit order | Per-p charge `<=C(nu^3+re)`; `U_s=sum_p charge`; `norm(A_s)_1<=2Gamma U_s` | Exact baseline cancellation and rootwise Cauchy--Schwarz | Structural H/z terms and adversarial-sign numerical padding after absolute values | Nonnegative finite-budgeted; each p/root/test/mode charged once; failed probes zero | Reserve/ledger under declared finite scope | G4 charge, G5 Z; at most r commits | Source supplies the exact sign-controlled upper relation | A and Xi are the exact arrays consumed later; they are not full factor distance | step-local | Empty U=A=0 -> one-step charge -> next prefix | First diagonal charge included; failure gives identical prefix | `sum_p C(nu^3+re)=C(rnu^3+r^2e)` | Static margin, balance | z, Upsilon, A, Xi | Every order, dense/block, last root, exact rollback | Entrywise summation would produce invalid multiplicity; persistent failures would break budget. |
| Protected-state invariant | Generated all-prefix closure | Finite at most r commits | Valid prefix + success -> next valid prefix; failure -> identical prefix | Empty base, G3/G4/G5 producers, exact rollback | Accepted error forcing | Finite induction, no infinite horizon | Algebraic coupling plus projection/nonexpansive maintenance by exact rollback | All earlier block outputs; first and last commit included | Producers cover every invariant clause | Next transaction consumes the exact same residual/state | step-local | `I_empty,A=0` -> strict producer order -> next I | First update uses empty A and stored z before charge | Each success extends injection and budgets; failure preserves equality | Nine primitives | All generated prefix controls | Empty, failed, last unresolved label | Circular use of next budget would invalidate all later flow. |
| Transaction and tape | Reachability, rollback, probability, all-commit output | Finite `N_tx`, `H_tx` | `p_tx` per fresh seed; stopped tail over r successes | Radial root, angular decrease/curvature, Haar activation, independent tape | Zero score, guard, ambiguity, exhausted work/tape | Failed defects are exactly zero; successes finite | Stopping/conditioning argument | Protocol plus `assump:random-tape`; failure branches explicit | Haar and descent sources match probability/reachability claims | Success is actual slot; failure is exact prior algorithm state | step-local | G5 invariant -> G6 deterministic flow -> tape tail | Empty scratch starts joint zero; sign flip or zero-score failure traced | `N_tx=C r p^-1 log r` makes miss <=r^-10 | Random tape | Prefix/certificate/injection | Missing root, guard, exhaustion, rollback | Without activation or rollback, probability/no-forcing claims fail. |
| Exact-target PL | Coercivity and terminal contraction source | Local full-state balanced chart | Jacobian floor -> PL and smoothness on a radius | Pair/triple Gram lower bounds and balanced weight scales | Gauge, nonorthogonal cross terms, Taylor remainder | Finite terminal path once entry holds | Structural lower/upper comparison | G1 exact target and direct balanced Jacobian; continuous scaling removed by manifold | Gram/weight source has the lower-conditioning content | Reference is exact Qstar in the consumed metric | step-local | G1 -> `step_013`; independent of discovered entry | Exact target is zero-loss stationary; first update unnecessary there | Singular-value floor dominates Taylor perturbation | Static event, balance | Qstar | Orthogonal target, chart boundary | Without Jacobian floor, PL can vanish. |
| Accepted chart-entry export | Basin membership and discovery-to-terminal bridge | One all-commit tuple | Claimed `dist<=C(rnu^3+r^2e)<=cnu^2/2`; available `(Entry-raw)` has `tau_max^(1/3)sqrt(r)eta0` | Per-slot R-euc is the only direct factor control | `sqrt(r)` accumulation and target weight scale; R-acc has extra Gram contractions | One-time residual, but wrong target scale | No valid accepted mechanism; proposed repair is structural comparison to a weight-scaled radius | Existing sources G3/G5/G6/G7; block-pair boundary is allowed | R-acc upper/source content is inadequate for full factor distance | Produced actual tuple and consumed exact orbit share metric, but residual is undominated at `cnu^2` | sketch/interface defect | Producer path stops at R-euc/R-acc; no accepted same-target bridge to `step_015` | Block-diagonal O.1 pairs give independent `h^2` displacements | Needed `tau_max^(1/3)sqrt(r)eta0<=varrho/2`; false for accepted `varrho=cnu^2` uniformly | Static event, balance | R-euc, R-acc, tuple, PL | Even-r pair blocks; exact target itself passes | Without changed radius or new bridge, final theorem assumes unproved basin membership. |
| Terminal first-exit descent | Contraction, no-floor accuracy | Finite `O(log(1/epsilon))` after legal entry | `F_(t+1)<= (1-c mu P^-D_ls)F_t`; geometric path length | PL and exact-loss Armijo | Taylor/line-search defects, initial finite error | Contractive, zero additive forcing | Self-contraction plus stopping argument | G7 and a repaired G8; epsilon in `(0,1)` | PL supplies signed descent and coercivity | Exact objective residual is final Frobenius target | step-local | Valid entry -> `step_015`; currently upstream blocked | Exact target remains stationary; first exit has radius reserve | Loss decrease and path sum preserve chart | Accuracy primitive | PL/entry | epsilon ->0, zero loss, chart boundary | Without entry reserve, local PL cannot be consumed. |
| Exact baseline | Exact/noiseless recovery and no floor | Deterministic exact-limit specialization | H=e=0 -> S=z=A=Xi=Upsilon=0; Qstar fixed | Exact CP identities and exact rollback | None | No accumulation | Algebraic coupling/equality | Setting exact target; positive smoothing probability not invoked | Equality has exact support/sign content | Produced and consumed tensors/factors are identical | step-local | Direct exact branch -> `step_016` | First charge zero; stationary terminal trace zero | Every defect vanishes identically | Exact source identities | None | Orthogonal equal-weight, empty/first/stationary states | A positive finite-e surrogate would violate baseline invariance. |

The chart-entry row is non-`step-local`, so the certificate forces
`SKETCH_BLOCKED` even though every other unresolved row has a concrete local
mechanism witness.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst,E_lb,Qstar` | G1 / `step_001` | Six source primitives, Gaussian tails and small-ball density | Norm/operator/normalization errors controlled; lower-tail failure charged | Exact realized target, no surrogate | Errors fit primitive reserves; `E_lb` supplies only later e absorption | `nu_star`, norm floors, `1/16`, `r^-20` allocation | G2,G7,G9 | Valid diagnostic interface; local constants pending. |
| H/J/K/S and both transfer gaps | G2 / `step_002` | Signed-Gram columns, Cauchy--Schwarz, exact transfer | H absolute row sums, eta and J padding explicit | Exact array domain/zero diagonal | `2(nu+eta0)(1+sqrt(r)nu)`, q<=1/4 | Primitive Gram slack | G2--G5,G7 | Valid. |
| Conditional Theta | G2 / `step_003` | S, legal actual A, e source, both gaps | Static/history/numerical classes separated | Same target-frame coordinates as score/update | Neumann factor `1/(1-q)` | q<=1/4 | G3,G5 | Valid conditional interface. |
| Certificate matching/calibration | G3 / `step_004`,`step_005` | Score/radial/gradient/Hessian/capture/separation plus Theta | Mixed support, history, e, guard and matched-label classes | Actual slot directly to exact atom in factor metric | Singleton/curvature gap dominates defects | `eta0`, gap/capture powers, separation `1/4` | G4--G6,G8 | Valid interface; hard direct proof pending. |
| J update and honest O.1 audit | G4 / `step_006` | Exact E expansion, calibration, weights, J/H/z/eta | Radial/directional and positive numerical terms explicit | Actual E to exact target contraction | Same-J baseline cancellation; `h^4+eh+e^2` at isolated `nu=h` | J diagonal identity and eta structural term | G5/final local clause | Valid; idea-8 blocker repaired. |
| Rootwise profile and global budgets | G5 / `step_007`--`step_009` | Prior prefix, q_row, exact update, rootwise Cauchy--Schwarz | Structural `rnu^3` and numerical `r^2e` retained; raw history term explicit | Same A/Xi arrays as later landscape; not factor distance | Per-p `nu^3+re`, at most r p; E_lb only for nu^2 comparison | q_row and finite prefix | Later G3,G6 and tensor-influence uses | Valid for its exact consumers. |
| Transaction/tape outputs | G6 / `step_010`--`step_012` | Exact derivatives, guards, Haar tape, invariant | Failure branches rollback; tail events charged | Actual committed tuple and exact prior state | p_tx and stopped tail | `H_tx,N_tx`, independent tape | G8,G9 | Valid conditional interface. |
| Exact-target PL constants | G7 / `step_013` | Pair/triple gaps, balanced Jacobian and weights | Gauge and Taylor terms controlled | Exact target and full-state metric match | Singular-value reserve gives inverse-poly mu/radius | Weight/norm reserve | G8,G9 | PL interface plausible; local proof pending. |
| Accepted `c_PL nu^2` chart entry | G8 / `step_014` | Per-slot `R-euc`, R-acc, actual tuple, G7 radius | Full-state `sqrt(r)eta0` is uncontrolled at `nu^2`; R-acc controls Gram-contracted tensor influence | Produced tuple and target match, but residual-to-target scale fails | Required `tau_max^(1/3)sqrt(r)eta0<=cnu^2`; no such uniform inequality | No accepted source; weight-scaled radius is a plausible new output | G9/final theorem | **Blocker: sketch/interface defect.** Change step-013/014 radius/bridge or add a legal factor-distance producer. |
| Floor-free public rate | G9 / `step_015`,`step_016` | PL, legal entry, smoothness, epsilon, rank and probability outputs | No additive forcing after discovery | Final residual is exact T in Frobenius norm | Geometric contraction and explicit substitutions | mu, step floor, entry reserve | Final theorem | Conditionally valid, but flow blocked upstream by chart entry. |
| Exact baseline | G10 / direct specialization | H=e=0 exact identities | No finite defect | Equality in exact factor/tensor metrics | All generated defect terms vanish | Exact representation/rollback | Final baseline clause | Valid and target-preserving. |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| `E_inst`, exact T/Qstar | G1 / `step_001` | G2,G7,G9 and theorem event | Primitives -> G1 -> consumers | derived | Valid. |
| `E_lb` | G1 / `step_001` | G5,G7,G8,G9 specialization | Gaussian small ball -> G1 -> branch-aware consumers | derived | Valid; only for absorption. |
| H/J/K/S, leakage, gaps | G2 / `step_002` | G2--G5,G7 | G1 -> G2 -> consumers | derived | Valid. |
| Conditional Theta | G2 / `step_003` | G3,G5 | Static source + legal prior A -> Theta | explicitly conditional | Valid. |
| Matching/calibration/injection | G3 / `step_004`,`step_005` | G4,G5,G6,G8 | Prior prefix -> Theta -> certificate -> matching | derived after prefix closure | Valid. |
| E, Xi, J charge/update and honest audit | G4 / `step_006` | G5 and local theorem clause | Matching -> exact expansion -> consumers | derived | Valid. |
| z profile, global/history/R-acc budgets | G5 / `step_007`,`step_008` | `step_009`, later G3,G6,G8 | Prior prefix -> z -> charge -> budget | derived | Valid for array/tensor-influence consumers. |
| Protected-state invariant | G5 / `step_009` | G6 and repeated G3 | Empty base -> strict transition induction -> next prefix | derived | Valid. |
| Transaction success/rollback | G6 / `step_010`,`step_011` | `step_012`, repeated G5 | Invariant -> deterministic flow -> conditional success | derived | Valid. |
| Actual all-commit tuple | G6 / `step_012` | G8 | Invariant -> tape amplification -> tuple | derived | Valid producer object. |
| PL constants/radius | G7 / `step_013` | G8,G9 | Exact event/Qstar -> Jacobian/Taylor -> chart | derived | Valid as local geometry, subject to proof. |
| Accepted full-state chart entry | G8 / `step_014` | G9/final theorem | Tuple + R-euc/R-acc + PL chart -/-> claimed radius | derived target | **Invalid: missing feasible residual-to-target bridge.** |
| Terminal contraction/rate | G9 / `step_015`,`step_016` | final theorem | Valid chart entry -> PL descent -> specialization | derived | Upstream blocked; not currently consumable. |
| Exact baseline | G10 / exact identities | final specialization | Exact H=e=0 -> zero generated defects -> Qstar | derived | Valid and independent of blocked finite entry. |

## Early Obstruction And Repair Plausibility

- **Idea-8 recurrence screen:** Repaired. At `h=e^2`, the current local
  interface contains the positive `e h` and `e^2` terms. The exact J update
  and off-diagonal transitive source retain their original objects and
  conventions.
- **Lower-tail screen:** The finite-smoothed theorem has a valid primitive-
  source path to `E_lb`; the exact `H=e=0` specialization is separated. No
  lower bound on the local audit h is introduced.
- **Rootwise/global accumulation screen:** The concrete per-p factorization
  explains why the structural and numerical terms sum as
  `O(rnu^3+r^2e)` without another label factor. Step 007 must show the raw
  history term before invoking `E_lb`, but this is local under the accepted
  strict-prefix interface.
- **Entry-state trace:** The empty ledger has A=0; the first z includes its
  positive e padding before G4 uses it. Failed probes return exactly to joint
  zero. The first O.1 transition is therefore honest rather than protected by
  prior history.
- **Transaction screen:** Zero score, missing root, guard failure, ambiguous
  certificate, line-search exhaustion, and tape exhaustion all have exact
  failure branches. The probability theorem is conditional on a fixed valid
  prefix and does not repair deterministic ledger or chart defects.
- **Chart-entry screen:** Failed. `R-euc` is per slot and converts to
  `(Entry-raw)` with a full-state `sqrt(r)` factor and balanced weight scale.
  `R-acc` is a contraction/influence budget with extra H factors, so it has no
  source-to-claim adequacy for the full factor-distance conclusion. The
  even-r independent two-label block family makes the discrepancy nonvacuous.
- **Mode and metric screen:** Repair may not normalize the full-state metric,
  replace the exact target by a surrogate, or state only tensor closeness.
  Those changes would alter the accepted theorem contract. A weight-scaled
  radius in the same full-state metric is setting-faithful.
- **Baseline screen:** The exact H=e=0 first transition and stationary target
  have zero residual. A repaired finite chart must retain this exact branch,
  not replace it by a remainder or error floor.
- **Probability/rate screen:** The blocked bridge is deterministic on a fixed
  good instance. More tape, smaller failure probability, or larger
  `D_stat` cannot remove the structural `sqrt(r)` factor relative to the
  accepted `nu^2` radius.
- **Smallest repair:** Same-setting sketch repair is plausible. Revise
  `step_013` to export an exact-target full-state radius with its weight and P
  dependence, and revise `step_014` to consume the actual bound
  `C tau_max^(1/3)sqrt(r)eta0`, proving it is below that radius by balance,
  the Gram upper margin, and the E_lb numerical comparison. Alternatively,
  add a new accepted same-target factor-distance bridge if a genuinely
  stronger global cancellation can be proved. In either case update the block
  map, dependencies, exported-interface table, and generated-output flow.
- **Idea-level screen:** No idea/theorem-contract defect is established. The
  repair need not change a primitive assumption, objective, algorithm,
  theorem scope, rank, probability mode, metric, endpoint, or baseline.

## Global Gaps And Hard Steps

1. **`steps_013--014` (`sketch/interface defect`, blocking).** The accepted
   output `dist<=C(rnu^3+r^2e)<=c_PLnu^2/2` has no adequate source. The exact
   available factor bridge is `(Entry-raw)`. A new sketch must change the
   chart-radius/output interface or add a legal same-target factor-distance
   producer and dependency. Smallest retry target: `/proof-sketch`.
2. **`step_001` (`step-local`): realized event and lower tail.** Required local
   units are column norm retention, normalized-Gram operator concentration,
   product-weight comparison, pair/triple Schur gap, tensor norm/guard, and a
   conditional Gaussian small-ball normalization lemma with complete union
   allocation.
3. **`steps_002--003` (`step-local`): static source and two-norm resolvent.**
   Required units are H-column/K-kernel bounds, leakage and S budgets, exact
   l1 and rootwise three-mode operator estimates, and conditional Neumann
   conclusions with the numerical all-ones dimensions explicit.
4. **`steps_004--005` (`step-local`, high risk): landscape and matching.**
   Required units are the exact residual score decomposition, coupled
   direction inequality, mixed-support negative-curvature lemma, singleton
   isolation, radial and diagonal calibration, product-one sign selection,
   separation from protected labels, and injection extension.
5. **`step_006` (`step-local`, high risk): J transition.** Required units are
   the accepted tensor expansion, R-tensor in each mode, exact same-J scalar
   subtraction, product majorization, J-diag, isolated O.1 two-sided audit at
   `h=0,h<<e,h=e^2`, exact-increment comparison, larger-embedding convention,
   and cyclic/off-diagonal assembly.
6. **`steps_007--009` (`step-local`, high risk): profile and finite ledger.**
   Required units are the fixed-root source/history/numerical resolvent,
   branch-qualified Z comparison, exact per-p charge factorization, diagonal
   and off-diagonal counting, Xi/history/Theta budgets, static-margin
   comparison, and strict-prefix induction with rollback.
7. **`steps_010--012` (`step-local`, high risk): transaction and tape.**
   Required units are radial bracketing, guard smoothness, angular Armijo and
   two-sign curvature decrease, accepted-step/work floor, Haar activation
   window, history-uniform success, stopped tape tail, separate probability
   statement, and complete discovery operation count.
8. **`step_013` (`step-local apart from the blocked export): exact-target PL.**
   Required units are the balanced tangent description, Jacobian kernel and
   singular-value floor, weight-scale bounds, Taylor/smoothness control, and
   an explicit full-state radius. The next sketch must choose the exported
   radius jointly with step 014 rather than fixing an unsupported `nu^2`
   entry scale.
9. **`steps_015--016` (`step-local after repair): terminal closure.** Required
   units are Armijo contraction, path-length first exit, exact Frobenius
   stopping time, exponent and raw-term specialization, rank/runtime
   substitution, separate instance/lower-tail/tape probability accounting,
   hidden-constant declaration, and the exact H=e=0 first-transition and
   stationary baseline proof.

The step-local items are diagnostic plans, not proof evidence. They should not
be dispatched under this sketch until the global review classifies and routes
the blocking entry interface.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof
evidence, a cited result, an assumption source, or authority to alter an
accepted sketch-step claim. In particular, `(Entry-raw)`, the block-family
stress test, and the proposed weight-scaled radius are obstruction and repair
diagnostics, not accepted lemmas. Any repaired radius, dependency, output
target, or same-target bridge must appear in a new accepted proof sketch and
must then be independently proved and reviewed at step level.

## Suggested Routing

/proof-sketch

The current sketch attempt is blocked. Regenerate the sketch under the same
idea-9 setting, preserving steps 001--012 and 015--016 except for dependency
updates, while repairing the step-013/step-014 full-state chart-radius and
residual-to-target interface. The repair must keep the exact nonorthogonal
target, full-state Euclidean metric, raw `O(rnu^3+r^2e)` ledger, separate
probabilities, strictly subquadratic rank, and exact no-floor baseline.
