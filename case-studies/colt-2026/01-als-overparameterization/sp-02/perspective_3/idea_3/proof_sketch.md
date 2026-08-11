# Proof Sketch

## Formalized Setting

The branch uses the exact setting in `setting.md`. The realized target is

    T = (A tensor B tensor C) D_r,
    D_r = sum_{j=1}^r e_j tensor e_j tensor e_j,

and the objective is rank-`k` third-order CP least squares. The algorithm is
simultaneous full-batch gradient descent followed only by the
product-preserving balancing map, with

    eta = (n k r)^(-12),
    r < k <= floor(r^(5/4)).

The primitive assumptions remain exactly:

- `assump:base_conditioning`;
- `assump:dimension`;
- `assump:rank_window`;
- `assump:gaussian_smoothing`;
- `assump:independent_initialization`; and
- `assump:gd_step`.

The generated initialization event is

    E_init_norm = E_cond intersect E_gram^norm intersect E_deficit intersect E_size.

Normalization is certificate-only. The exact identities

    G_raw = (r/n)^2 G_norm,
    S_0^raw = S_0^norm = S_0

hold, while `D_r`, `Dhat_0`, `W_0`, the coefficient residual, and the physical
loss remain in raw coordinates. The sole trajectory certificate is

    C_path = { sum_{t>=0} d_bal(theta_(t+1),theta_t) <= E_star }.

It is explicitly conditional and contains no convergence, boundedness, Gram,
positivity, trapping, or positive-loss conclusion.

## Formalized Goal

Uniformly over fixed `kappa,q`, all sufficiently large `r`, every

    n >= C(kappa,q) r^4 log r,
    r < k <= floor(r^(5/4)),

and every deterministic base triple satisfying `assump:base_conditioning`,
prove

    P(E_init_norm) >= 1-r^(-10).

On `E_init_norm intersect C_path`, prove convergence in `d_bal` to a finite
`theta_infinity` and

    lim_t F(theta_t) >= epsilon_0(kappa) ||T||_F^2 > 0.

If `F_plus` denotes this convergence-and-positive-limit event, retain the
exact conditional conclusion

    P(F_plus) >= (1-r^(-10)) P(C_path | E_init_norm).

No positive lower bound for the last conditional probability is claimed.

## Sketch Identity

- Sketch attempt: 10
- Retry mode: revise_sketch
- Goal mode: exact-goal mode
- Progress type: conditional
- Sketch status: COMPLETE
- Theorem-contract change: none
- Selected framework: fixed-target product-Haar leverage/projection
- Framework provenance: direct current-notation derivation from the accepted
  balanced Gaussianization and standard Haar averaging plus compact-group
  concentration; no external theorem is cited as a black box.

Attempt 10 replaces the uniform Terracini-operator route by a direct estimate
of `||P_(S_0) D_r||_F`. This is target-preserving because the formal theorem
needs `E_deficit`, not a uniform operator bound. The accepted quotient
convention is unchanged: quotienting the two gauge directions per component
does not change the tangent range `S_0`, but the new route uses only that range
and therefore needs no full quotient-Gram estimate.

The former pointwise incidence route is retired, not weakened. Its universal
reserve is false on the allowed `p=2` diagram with component word
`(u,v,u,v)`, tangent colors `(a,b,a,b)`, and

    A=2, B=6, C=0, B_K=2, F=6, v=2, xi=0, Q=3,
    d=1/2, R=-1 < 5/8=(5/4)d.

Both signed FACE and TOP hold on this diagram, so neither can repair the false
pointwise inequality. TOP itself also lacks a completed rank source: the
natural occurrence spaces have total rank `4p-F`, while the desired bound
needs an unexplained `p`-dimensional quotient. Neither INC, pointwise P3,
TOP, the `4p` profile, P4, nor the `21z` moment is consumed below.

## Proof Roadmap

1. `step_001` proves realized-factor conditioning with
   `kappa_1=2kappa^2`.
2. `step_002` restates the exact balanced coefficient Gaussianization. For
   mode `M` and component `i`,

       bar zeta_i^M = (s_i^m/sqrt(r)) H_M z_i^M,

   where `z_i^M` are iid standard Gaussian vectors,
   `sigma(H_M) subset [kappa_1^(-1),kappa_1]`, every `s_i^m` is nonzero almost
   surely, and `s_i^x s_i^y s_i^z=1`. It separately proves that these scalars
   do not change `S_0` and do not change `Dhat_0`.
3. `step_003` proves the three normalized pair-Gram windows with conditional
   failure at most `r^(-20)`.
4. `step_004` proves `E_size` with conditional failure at most `r^(-20)`.
5. `step_005` proves the exact normalized/raw Gram identity and tangent-span
   equality. It also records that an unreduced tangent basis and the accepted
   gauge quotient have the same range `S_0`.
6. `step_006` proves the elliptic-Haar orbit factorization. Write
   `Z_M=[z_1^M ... z_k^M]`. Since `k>r`, `Z_M` has full row rank almost surely.
   Orthogonal invariance and disintegration under the free left action give

       Z_M = Q_M R_M,

   where the three `Q_M` are independent Haar `SO(r)` matrices and are
   independent of the orbit representatives `R_M`; the three reflection bits
   from `O(r)/SO(r)` are absorbed measurably into the representatives. If
   `E=E(R_a,R_b,R_c)` is
   the isotropic tangent span built from the columns of the `R_M`, then

       dim(E) <= 3kr,
       S_0 = L Q E,
       L = H_a tensor H_b tensor H_c,
       Q = Q_a tensor Q_b tensor Q_c.

   Balancing scalars and the factors `1/sqrt(r)` disappear from this span
   identity because they multiply each tangent block by a nonzero scalar.
7. `step_007` proves the fixed-subspace product-Haar projection lemma. For
   deterministic `E subset (R^r)^(tensor 3)` with dimension `d`, nonzero `X`,
   and independent Haar `SO(r)` matrices `Q_M`, put

       h(Q;E,X) = ||P_(Q E) X||_F^2 / ||X||_F^2.

   Sequential Haar averaging gives exactly

       E_Q h = d/r^3.

   Under the unnormalized product Hilbert-Schmidt geodesic metric, this map is
   `2sqrt(3)`-Lipschitz. The standard `SO(r)` log-Sobolev inequality therefore
   gives a universal constant `c_H>0` and

       P_Q(h >= d/r^3+t) <= 8 exp(-c_H r t^2),   0<t<=1.       (Haar)

   The statement is uniform in `E`, `d`, and `X`; hence it remains valid after
   conditioning on the internal Gaussian shapes `R_M`.
8. `step_008` performs the deterministic elliptic transfer for the exact
   target `x=D_r`. If `U` is an orthonormal basis of `QE` and
   `X=L^T x`, then

       ||P_(L Q E) x||_F^2
       = b^T (U^T L^T L U)^(-1) b
       <= sigma_min(L)^(-2) ||P_(Q E) X||_F^2,
       b=U^T L^T x.

   Since `sigma(L) subset [kappa_1^(-3),kappa_1^3]`,

       sigma_min(L)^(-2) ||X||_F^2 <= kappa_1^12 ||x||_F^2.

   Put `tau_kappa=1/(4kappa_1^12)`. The full rank window gives

       d/r^3 <= 3k/r^2 <= 3r^(-3/4) <= tau_kappa

   for `r>=r_0(kappa)`. On the Haar event with `t=tau_kappa`,

       ||P_(S_0) D_r||_F^2 <= (1/2)||D_r||_F^2 = r/2,       (LEV)

   and its conditional failure is at most

       8 exp(-c_H r/(16kappa_1^24)) <= r^(-20).

9. `step_009` constructs the exact raw normal witness

       W_0 = P_(S_0^perp) D_r / ||P_(S_0^perp) D_r||_F.

   Because `Dhat_0 in S_0` exactly, (LEV) gives

       <D_r-Dhat_0,W_0>
       = ||P_(S_0^perp)D_r||_F
       >= sqrt(r/2) >= delta_0 ||D_r||_F,
       delta_0=1/8.

   This proves `E_deficit` directly in raw coordinates.
10. `step_010` combines `E_cond`, the normalized Gram event, `E_size`, and
    the fixed-target deficit event to prove
    `P(E_init_norm)>=1-r^(-10)`.
11. `step_011` uses the explicitly conditional finite path certificate to
    prove convergence and the all-time column bound `3`.
12. `step_012` proves the exact raw multilinear Taylor remainder with
    `C_CP(kappa,3)`.
13. `step_013` uses `W_0` orthogonality and the one endpoint remainder to
    preserve a raw coefficient margin.
14. `step_014` transfers that margin to the exact physical loss using the
    mode-span projection identity and realized-factor singular values.
15. `step_015` proves event inclusion and the exact conditional probability
    identity.

## Rate Objectives

- Initialization certificate:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: `n,r,k,kappa,q`, `rho=r^(-q)`, the full rank window,
    normalized Gram window, `delta_0=1/8`, and failure `r^(-10)`.
  - Hidden constants may depend on: `kappa,q`.
  - Hidden constants may not depend on: `n,r,k`, the deterministic base
    triple, or the GD horizon.
  - Fixed quantities: `kappa,q` while `r` grows; the realized triple while
    taking conditional initialization probability.
  - Probability mode: joint smoothing and initialization, uniformly
    conditional on every realized triple in `E_cond`.
  - Horizon mode: initialization only.
  - Norm mode: factor operator norm, normalized Gram eigenvalues, and raw
    coefficient Frobenius norm.
  - Required bridge: exact raw/normalized scale and the fixed-target leverage
    estimate (LEV), followed by a finite event union.
  - Baseline invariance: `D_r`, `Dhat_0`, `S_0`, and `W_0` remain raw.

- Fixed-target leverage certificate:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: `d<=3kr`, `d/r^3<=3k/r^2`,
    `tau_kappa=1/(4kappa_1^12)`, and failure
    `8 exp(-c_H r/(16kappa_1^24))`.
  - Hidden constants may depend on: only the universal Haar concentration
    constant and `kappa` through the displayed threshold.
  - Hidden constants may not depend on: `n,r,k`, the base triple, internal
    Gaussian shapes, or the target direction.
  - Fixed quantities: the realized factor triple and conditioned internal
    shapes while averaging the product-Haar orientations.
  - Probability mode: conditional high probability under initialization.
  - Horizon mode: initialization only.
  - Norm mode: tensor Frobenius norm and orthogonal projection energy.
  - Required bridge: verify
    `3r^(-3/4)<=tau_kappa` and
    `8exp(-c_H r tau_kappa^2)<=r^(-20)` at the declared threshold.
  - Baseline invariance: the projection is of the exact raw `D_r` onto the
    exact raw tangent span.

- Conditional positive-loss theorem:
  - Objective type: horizon-uniform and asymptotic relative-loss explicit.
  - Exposed variables: `kappa,delta_0,E_star,C_CP(kappa,3)` and the retained
    conditional factor `P(C_path | E_init_norm)`.
  - Hidden constants may depend on: `kappa` only.
  - Hidden constants may not depend on: `n,r,k`, the base triple, or time.
  - Fixed quantities: `kappa,q` while `r` grows.
  - Probability mode: deterministic on `E_init_norm intersect C_path`, then
    exact conditional probability accounting.
  - Horizon mode: all-time convergence and asymptotic loss.
  - Norm mode: `d_bal`, coefficient Frobenius norm, and physical tensor
    Frobenius loss.
  - Required bridge: finite path, one Taylor remainder, raw margin, and exact
    physical projection.
  - Baseline invariance: at zero path the Taylor error vanishes and the full
    initial raw deficit is retained.

- Retired uniform-TF compatibility:
  - The prior full-operator target, if independently pursued, remains exactly
    `sqrt(k)/r+sqrt(log r/r)` in the accepted quotient convention with the
    corrected `C_TF`. Attempt 10 neither changes nor claims this rate; it is
    unnecessary for the formalized theorem because (LEV) directly produces
    `E_deficit`.

## Assumption Provenance Objectives

- `step_001` derives `E_cond` from `assump:base_conditioning`,
  `assump:dimension`, and `assump:gaussian_smoothing`.
- `step_002` derives the Gaussian/Haar-ready coefficient law and balancing
  invariance from `assump:independent_initialization` and `step_001`.
- `step_003`, `step_004`, and `step_005` derive the normalized Gram event,
  size event, and exact raw bridge from primitive initialization and the
  rank/dimension regime.
- `step_006` derives the random product-Haar orbit and internal subspace; no
  Haar orientation or subspace is a primitive theorem assumption.
- `step_007` is a uniform standard-tool lemma conditional on a fixed internal
  subspace; `step_008` discharges its threshold from `assump:rank_window` and
  `E_cond`.
- `step_009` derives `W_0` and `E_deficit`; neither is assumed.
- `step_010` derives `E_init_norm` probability.
- `C_path` remains the only explicit conditional hypothesis. `step_011`
  through `step_015` derive convergence, radius, Taylor control, raw margin,
  physical loss, and final event inclusion from it and earlier outputs.

## Mechanism-Source And Boundary Stress

- Step ID: `step_006`
  - Claim class: exact random-orbit factorization.
  - Theorem role: separates random orientations from the internal tangent
    shape without changing `S_0`.
  - Mechanism source: iid Gaussian left-orthogonal invariance and measurable
    disintegration of the free `O(r)` action on full-row-rank `r x k`
    matrices; full row rank holds almost surely because `k>r`, and each
    reflection bit is absorbed into the internal representative so that the
    exposed orientation is independent Haar `SO(r)`.
  - Source-to-claim adequacy: the group acts on exactly the coefficient-mode
    coordinates consumed by the tangent generators, and balancing contributes
    only nonzero block scalars.
  - Residual-to-target adequacy: exact equality `S_0=LQE`; no surrogate span.
  - Key positive/control term or structural source: independent Haar factors
    `Q_a,Q_b,Q_c` and `dim(E)<=3kr`.
  - Opposing defect terms: rank-deficient Gaussian arrays and zero balancing
    factors, both null events.
  - Closure/dominance/absorption relation: condition on the orbit
    representatives and discard only probability-zero branches.
  - Accumulation behavior / scope compatibility: fixed initialization; no
    repeated scope.
  - Obligation locality classification: step-local.
  - Noncircular closure status: `step_002 -> step_006 -> step_007`; no desired
    projection estimate is used to construct the orbit.
  - Entry-state / first-update stress result: initialization only, before GD.
  - Baseline conclusion preserved: balancing leaves represented products and
    `Dhat_0` unchanged.
  - Producer-consumer provenance: `step_002`,`step_005` -> `step_006` ->
    `step_007`,`step_008`.
  - Null or boundary regime tested: `k=r+1`, full-rank internal shape, zero
    Gaussian column, and scalar balancing branches.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: without independent orientations the fixed-target averaging
    mechanism is absent.
  - Repair route if source is unsupported: `/proof-sketch`; no new assumption.

- Step ID: `step_007`
  - Claim class: fixed-target concentration.
  - Theorem role: controls projection of one deterministic target onto one
    random product-rotated subspace.
  - Mechanism source: exact sequential Haar averaging and the standard
    log-Sobolev concentration inequality on `SO(r)^3` for the explicitly
    `2sqrt(3)`-Lipschitz normalized projection energy.
  - Source-to-claim adequacy: the exact statement (Haar) is uniform in the
    fixed subspace and target, uses the tensor-product action, and outputs the
    required projection energy rather than a full operator norm.
  - Residual-to-target adequacy: `X` is the exact input to the projection; no
    net, quotient surrogate, or data-dependent supremum is introduced.
  - Key positive/control term or structural source: mean `d/r^3` and exponent
    `c_H r t^2`.
  - Opposing defect terms: dimension `d` and the constant elliptic tolerance
    needed downstream.
  - Closure/dominance/absorption relation: choose the displayed constant
    `t=tau_kappa`; `step_008` verifies mean and tail dominance.
  - Accumulation behavior / scope compatibility: one fixed-subspace draw;
    the reflection bits have already been absorbed into the fixed shape.
  - Obligation locality classification: step-local.
  - Noncircular closure status: fixed `E,X` precede Haar averaging; the output
    is consumed only by `step_008`.
  - Entry-state / first-update stress result: initialization only.
  - Baseline conclusion preserved: exact target direction is retained.
  - Producer-consumer provenance: `step_006` -> `step_007` -> `step_008`.
  - Null or boundary regime tested: `d=0`, `d=3kr`, disconnected `O(r)`, and
    `r>=3`.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: dimension control alone gives no high-probability projection
    bound without orientation concentration.
  - Repair route if source is unsupported: `/proof-sketch` with the exact
    failed averaging, Lipschitz, or log-Sobolev clause.

- Step ID: `step_008`
  - Claim class: deterministic condition-number transfer and positive normal
    margin.
  - Theorem role: converts isotropic fixed-target concentration to the exact
    anisotropic raw tangent span.
  - Mechanism source: the exact oblique-basis projection formula and singular
    values of `L` from `E_cond`.
  - Source-to-claim adequacy: the formula acts on `LQE=S_0` and on `D_r`
    itself; the loss is exactly `kappa_1^12`.
  - Residual-to-target adequacy: produced and consumed target are both `D_r`
    in coefficient Frobenius norm; there is no residual term.
  - Key positive/control term or structural source: Haar energy at most
    `1/(2kappa_1^12)`.
  - Opposing defect terms: dimension mean and elliptic condition number.
  - Closure/dominance/absorption relation: the two displayed threshold
    inequalities give projection energy at most `r/2`.
  - Accumulation behavior / scope compatibility: fixed initialization.
  - Obligation locality classification: step-local.
  - Noncircular closure status: `step_001`,`step_006`,`step_007` produce all
    inputs before (LEV).
  - Entry-state / first-update stress result: initialization only.
  - Baseline conclusion preserved: identity anisotropy `L=I` specializes to
    the direct product-Haar estimate.
  - Producer-consumer provenance: `step_001`,`step_007` -> `step_008` ->
    `step_009`.
  - Null or boundary regime tested: maximal `k=r^(5/4)` and worst allowed
    singular values of all three factors.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: without the singular lower bound a rotated subspace may be
    amplified arbitrarily.
  - Repair route if source is unsupported: `/proof-sketch`; do not restore
    pointwise INC.

- Step ID: `step_009`
  - Claim class: exact raw normal witness.
  - Theorem role: proves `E_deficit`.
  - Mechanism source: Pythagoras and exact membership `Dhat_0 in S_0`.
  - Source-to-claim adequacy: the witness is constructed in the exact raw
    coefficient space used by the theorem.
  - Residual-to-target adequacy: `<D_r-Dhat_0,W_0>` equals the exact
    orthogonal residual norm; every `Dhat_0` term vanishes.
  - Key positive/control term or structural source: perpendicular energy at
    least `r/2`.
  - Opposing defect terms: none after (LEV).
  - Closure/dominance/absorption relation: `sqrt(r/2)>=delta_0 sqrt(r)`.
  - Accumulation behavior / scope compatibility: one initialization event.
  - Obligation locality classification: step-local.
  - Noncircular closure status: `step_008` produces (LEV) before `W_0`.
  - Entry-state / first-update stress result: at `theta_0`, `Dhat_0` is already
    in the tangent span.
  - Baseline conclusion preserved: zero path retains the full witness margin.
  - Producer-consumer provenance: `step_008` -> `step_009` ->
    `step_010`,`step_013`.
  - Null or boundary regime tested: equality at projection energy `r/2`.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: if perpendicular energy vanished, no normal deficit would exist.
  - Repair route if source is unsupported: `/proof-sketch`.

- Step ID: `step_011`
  - Claim class: all-time conditional convergence and radius.
  - Theorem role: supplies the finite endpoint and Taylor domain.
  - Mechanism source: explicitly conditional finite total variation and
    `E_size`.
  - Source-to-claim adequacy: tail sums in `d_bal` give a Cauchy sequence and
    column displacement at most `E_path`.
  - Residual-to-target adequacy: same balanced trajectory and metric.
  - Key positive/control term or structural source: finite path budget.
  - Opposing defect terms: nonnegative step lengths.
  - Closure/dominance/absorption relation: their total sum is at most
    `E_star<=1`, so initial size `2` gives radius `3`.
  - Accumulation behavior / scope compatibility: summable nonnegative
    increments over all time.
  - Obligation locality classification: step-local.
  - Noncircular closure status: `C_path` does not assume convergence.
  - Entry-state / first-update stress result: zero path is stationary.
  - Baseline conclusion preserved: zero path gives `theta_infinity=theta_0`.
  - Producer-consumer provenance: `step_004`,`step_010` + `C_path` ->
    `step_011` -> `step_012`,`step_013`,`step_014`,`step_015`.
  - Null or boundary regime tested: `E_path=0` and `E_path=E_star`.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: without finite variation, convergence is not derived.
  - Repair route if source is unsupported: theorem remains explicitly
    conditional; no unconditional upgrade.

- Step ID: `step_012`
  - Claim class: raw Taylor remainder.
  - Theorem role: controls the nonlinear endpoint defect.
  - Mechanism source: direct trilinear expansion and realized left-inverse
    bounds.
  - Source-to-claim adequacy: exact raw coefficient map and radius `3`.
  - Residual-to-target adequacy: the remainder is in the same raw coefficient
    Frobenius norm paired with `W_0`.
  - Key positive/control term or structural source:
    `C_CP(kappa,3)d_bal^2`.
  - Opposing defect terms: quadratic and cubic endpoint terms.
  - Closure/dominance/absorption relation: direct Cauchy bounds absorb them
    into the displayed constant.
  - Accumulation behavior / scope compatibility: one endpoint remainder, not
    a sum over time.
  - Obligation locality classification: step-local.
  - Noncircular closure status: radius is produced by `step_011` first.
  - Entry-state / first-update stress result: zero displacement gives zero
    remainder.
  - Baseline conclusion preserved: exact zero-error specialization.
  - Producer-consumer provenance: `step_001`,`step_011` -> `step_012` ->
    `step_013`.
  - Null or boundary regime tested: zero and unit displacement.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: uncontrolled nonlinear error could erase the normal margin.
  - Repair route if source is unsupported: `/proof-sketch`.

- Step ID: `step_013`
  - Claim class: positive raw coefficient margin.
  - Theorem role: preserves the initialization obstruction at the limit.
  - Mechanism source: `W_0` orthogonality to `S_0` and the one Taylor error.
  - Source-to-claim adequacy: the derivative at `theta_0` lies in `S_0`.
  - Residual-to-target adequacy: exact `D_r-Psi(theta_infinity)` target.
  - Key positive/control term or structural source: initial margin
    `delta_0 sqrt(r)`.
  - Opposing defect terms: endpoint Taylor remainder.
  - Closure/dominance/absorption relation:
    `C_CP E_star^2<=delta_0/16` yields at least
    `(15/16)delta_0 sqrt(r)`.
  - Accumulation behavior / scope compatibility: one endpoint error.
  - Obligation locality classification: step-local.
  - Noncircular closure status: witness, limit, and Taylor bound are earlier
    outputs.
  - Entry-state / first-update stress result: zero path preserves the entire
    initial margin.
  - Baseline conclusion preserved: exact baseline recovery.
  - Producer-consumer provenance: `step_009`,`step_011`,`step_012` ->
    `step_013` -> `step_014`.
  - Null or boundary regime tested: zero path and maximal allowed path.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: a zero normal margin permits exact fit.
  - Repair route if source is unsupported: `/proof-sketch`.

- Step ID: `step_014`
  - Claim class: positive physical loss.
  - Theorem role: transfers the raw coefficient obstruction to the objective.
  - Mechanism source: exact mode-span projection identity and singular-value
    bounds from `E_cond`.
  - Source-to-claim adequacy: the projection acts on the same physical target
    `T-S(theta_infinity)`.
  - Residual-to-target adequacy: exact identity, with only a nonnegative
    orthogonal component discarded.
  - Key positive/control term or structural source: raw margin and
    `sigma_min(A)sigma_min(B)sigma_min(C)`.
  - Opposing defect terms: conditioning loss only.
  - Closure/dominance/absorption relation: compare the lower singular product
    with `||T||_F<=kappa_1^3 sqrt(r)`.
  - Accumulation behavior / scope compatibility: one limit transfer.
  - Obligation locality classification: step-local.
  - Noncircular closure status: `step_001`,`step_013` precede the transfer.
  - Entry-state / first-update stress result: zero path retains positive loss.
  - Baseline conclusion preserved: exact same-target physical conclusion.
  - Producer-consumer provenance: `step_001`,`step_013` -> `step_014` ->
    `step_015`.
  - Null or boundary regime tested: worst allowed singular values.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: singular mode maps could annihilate the coefficient residual.
  - Repair route if source is unsupported: `/proof-sketch`.

- Step ID: `step_015`
  - Claim class: final conditional probability.
  - Theorem role: assembles the public conclusion without lower-bounding the
    path probability.
  - Mechanism source: event inclusion and conditional probability identity.
  - Source-to-claim adequacy: exact joint smoothing/initialization law.
  - Residual-to-target adequacy: actual `F_plus` event, no surrogate.
  - Key positive/control term or structural source: `P(E_init_norm)`.
  - Opposing defect terms: the unresolved conditional path probability.
  - Closure/dominance/absorption relation: retain that factor exactly.
  - Accumulation behavior / scope compatibility: all-time scope is already
    discharged conditionally by `step_011`.
  - Obligation locality classification: step-local.
  - Noncircular closure status: event outputs are produced before accounting.
  - Entry-state / first-update stress result: zero conditional factor is
    explicitly allowed.
  - Baseline conclusion preserved: no stronger probability claim is inserted.
  - Producer-consumer provenance: `step_010`,`step_011`,`step_014` ->
    `step_015` -> theorem.
  - Null or boundary regime tested: conditional path probability zero.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: no unconditional positive failure probability follows.
  - Repair route if source is unsupported: retain the explicit remaining gap.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_cond` | `step_001` | Base singular margin and Gaussian smoothing | Finite perturbation controlled by Weyl | Exact realized factors | Perturbation below half margin | `kappa_1` | `step_002`, `step_008`, `step_012`, `step_014` | None |
| balanced Gaussianization and scalar invariance | `step_002` | Exact SVD law and balancing formula | Zero scalar/rank branches are null events | Exact tangent span and `Dhat_0` | Nonzero pair scalars preserve spans; scalar product one preserves tensor | Gaussian law | `step_003` through `step_006` | None |
| normalized pair Grams | `step_003` | Gaussian Khatri--Rao concentration and `E_cond` | Finite conditional failure | Exact normalized Gram | Constant window contained in public polynomial window | Rank window and threshold | `step_010` | None |
| `E_size` | `step_004` | Gaussian radial concentration | Finite conditional failure | Exact balanced columns | Radius event gives norm at most `2` | Dimension regime | `step_010`, `step_011` | None |
| raw/normalized and quotient-range bridge | `step_005` | Exact scalar identities | No uncontrolled term | Exact `S_0`, raw target unchanged | `G_raw=(r/n)^2G_norm`; quotient and unreduced frames share range | Algebraic equality | `step_006`, `step_009` | None |
| elliptic-Haar tangent factorization | `step_006` | Gaussian invariance, full row rank, balancing invariance | Probability-zero rank/scalar branches | Exact `S_0=LQE` | Condition on internal shape; orientations remain independent Haar | `dim(E)<=3kr` | `step_007`, `step_008` | None |
| product-Haar fixed-target lemma | `step_007` | Fixed `E,X`, sequential averaging, `SO(r)^3` concentration | Dimension mean and tail controlled explicitly | Exact projection of `X` | (Haar) with constant tolerance | Universal `c_H` | `step_008` | None |
| target leverage (LEV) | `step_008` | `E_cond`, (Haar), `d<=3kr` | Mean and anisotropy absorbed; no remaining defect | Exact projection of raw `D_r` onto exact `S_0` | `3r^(-3/4)<=tau_kappa`; tail at most `r^(-20)` | `tau_kappa=1/(4kappa_1^12)` | `step_009` | None |
| `W_0` and `E_deficit` | `step_009` | (LEV), `Dhat_0 in S_0` | No uncontrolled term | Exact raw residual | Perpendicular norm at least `sqrt(r/2)` | `delta_0=1/8` | `step_010`, `step_013` | None |
| `E_init_norm` probability | `step_010` | Four generated events | Finite union only | Exact event | `4r^(-20)<=r^(-10)` | Large-`r` threshold | `step_011`, `step_015` | None |
| path/Taylor/margin/physical/probability outputs | `step_011` through `step_015` | `C_path`, raw `W_0`, exact projection, joint law | One endpoint remainder; conditional path factor retained | Exact raw-to-physical target bridge | `C_CP E_star^2<=delta_0/16` and singular bounds | `E_star`, `epsilon_0(kappa)` | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| realized conditioning | `step_001` | `step_002`, `step_008`, `step_012`, `step_014` | factor and physical legality | primitives -> `step_001` -> consumers | derived | None |
| Gaussianized span law | `step_002` | `step_003` through `step_006` | initialization geometry | `step_001` -> `step_002` -> consumers | derived | None |
| normalized Gram event | `step_003` | `step_010` | `E_init_norm` | `step_002` -> `step_003` -> `step_010` | derived | None |
| initial-size event | `step_004` | `step_010`, `step_011` | event and radius | `step_002` -> `step_004` -> consumers | derived | None |
| exact raw span bridge | `step_005` | `step_006`, `step_009` | raw certificate | `step_002` -> `step_005` -> consumers | derived | None |
| Haar orbit and internal span | `step_006` | `step_007`, `step_008` | fixed-target projection source | `step_002`,`step_005` -> `step_006` -> consumers | derived | None |
| fixed-target Haar control | `step_007` | `step_008` | leverage source | `step_006` -> `step_007` -> `step_008` | derived | None |
| target leverage | `step_008` | `step_009` | normal energy | `step_001`,`step_006`,`step_007` -> `step_008` -> `step_009` | derived | None |
| raw normal witness and deficit | `step_009` | `step_010`, `step_013` | positive coefficient obstruction | `step_005`,`step_008` -> `step_009` -> consumers | derived | None |
| initialization event | `step_010` | `step_011`, `step_015` | confidence factor | `step_001`,`step_003`,`step_004`,`step_009` -> `step_010` -> consumers | derived | None |
| path limit/radius | `step_011` | `step_012`, `step_013`, `step_014`, `step_015` | conditional limit | `step_004`,`step_010` + `C_path` -> `step_011` -> consumers | explicitly conditional | None |
| Taylor/margin/physical outputs | `step_012`, `step_013`, `step_014` | `step_015` | positive loss | earlier outputs -> `step_012` -> `step_013` -> `step_014` | derived conditionally | None |
| final event identity | `step_015` | theorem | final probability | `step_010`,`step_011`,`step_014` -> `step_015` | derived conditionally | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Prove `E_cond` and `kappa_1` singular bounds. | None | `assump:base_conditioning`, `assump:dimension`, `assump:gaussian_smoothing` | Perturbation. | Gaussian tail and Weyl. | `E_cond`. | Initialization confidence, failure at most `r^(-20)`. | PENDING |
| `step_002` | Prove exact coefficient Gaussianization, balancing-scalar invariance of `S_0`, and product invariance of `Dhat_0`. | `step_001` | `assump:independent_initialization`; derived `E_cond` | Exact law after balancing. | SVD Gaussianization and scalar algebra. | `H_M,z_i^M,s_i^m` representation. | Fixed-target leverage input. | PENDING |
| `step_003` | Prove all normalized pair-Gram windows. | `step_001`, `step_002` | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization` | Rectangular Khatri--Rao concentration. | Radial control and matrix Bernstein. | `E_gram^norm`. | Conditional failure at most `r^(-20)`. | PENDING |
| `step_004` | Prove the balanced initial-size event. | `step_002` | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization` | Simultaneous radial bound. | Gaussian norm concentration. | `E_size`. | Conditional failure at most `r^(-20)`. | PENDING |
| `step_005` | Prove exact raw/normalized Gram and span identities and quotient-range compatibility. | `step_002` | Definitions from `setting.md` | Exact scaling and gauge range. | Direct algebra. | Raw bridge and exact `S_0`. | Baseline invariance. | PENDING |
| `step_006` | Prove `S_0=LQE`, independent product-Haar `SO(r)` orientations, and `dim(E)<=3kr`, with reflection bits absorbed into the shape. | `step_002`, `step_005` | `assump:independent_initialization`; derived Gaussianization | Measurable orbit disintegration. | Orthogonal invariance and free-action disintegration. | Haar/internal-shape factorization. | Mean leverage scale `3k/r^2`. | PENDING |
| `step_007` | Prove exact product-Haar mean and tail (Haar) for every fixed `E,X`. | `step_006` | Derived fixed internal shape | Product-group concentration. | Sequential Haar averaging, the `2sqrt(3)` Lipschitz bound, and standard `SO(r)` log-Sobolev inequality. | Fixed-target projection lemma. | Tail `8exp(-c_H r t^2)`. | PENDING |
| `step_008` | Transfer (Haar) through `L` and prove (LEV) with failure at most `r^(-20)`. | `step_001`, `step_006`, `step_007` | `assump:rank_window`; derived `E_cond` | Exact anisotropic projection formula and thresholds. | Oblique-basis projection and singular values. | Projection energy at most `r/2`. | `3r^(-3/4)<=tau_kappa`, explicit tail conversion. | PENDING |
| `step_009` | Construct raw `W_0` and prove `E_deficit`. | `step_005`, `step_008` | Derived exact span and (LEV) | Same-target normal witness. | Pythagoras and `Dhat_0 in S_0`. | `W_0`, `E_deficit`. | Margin `delta_0 sqrt(r)`. | PENDING |
| `step_010` | Assemble `P(E_init_norm)>=1-r^(-10)`. | `step_001`, `step_003`, `step_004`, `step_009` | Primitive conditions through dependencies | Event bookkeeping. | Union and conditioning. | `E_init_norm`. | `4r^(-20)<=r^(-10)`. | PENDING |
| `step_011` | Prove conditional path convergence and radius `3`. | `step_004`, `step_010` | `assump:gd_step`; derived `E_size`; explicit `C_path` | All-time closure. | Tail-sum Cauchy argument. | Limit and radius. | Horizon-uniform conditional. | PENDING |
| `step_012` | Prove exact raw Taylor remainder. | `step_001`, `step_011` | Derived conditioning and radius | Multilinear remainder. | Trilinearity and Cauchy. | Taylor interface. | `C_CP(kappa,3)`. | PENDING |
| `step_013` | Preserve the raw coefficient margin at the limit. | `step_009`, `step_011`, `step_012` | Derived witness, path, and Taylor outputs | Endpoint absorption. | `W_0` orthogonality. | Coefficient floor. | `(15/16)delta_0 sqrt(r)`. | PENDING |
| `step_014` | Transfer the margin to physical loss. | `step_001`, `step_013` | Derived conditioning and raw margin | Same-target projection. | Projection identity and singular values. | Relative physical floor. | Positive `epsilon_0(kappa)`. | PENDING |
| `step_015` | Assemble event inclusion and final conditional probability. | `step_010`, `step_011`, `step_014` | Joint law | Exact event accounting. | Inclusion and conditioning. | Final theorem. | Retain the conditional path factor exactly. | PENDING |

## Dependency Notes

The graph is acyclic and every dependency points backward. The initialization
geometry splits as

    step_001 -> step_002 -> {step_003, step_004, step_005}.

The fixed-target branch is

    step_002,step_005 -> step_006 -> step_007,
    step_001,step_006,step_007 -> step_008 -> step_009.

The generated initialization event is assembled only after all four
constituents are produced:

    step_001,step_003,step_004,step_009 -> step_010.

The unchanged conditional deterministic chain is

    step_010 -> step_011 -> step_012 -> step_013 -> step_014 -> step_015,

with the stated side dependencies. No TOP, INC, uniform TF, diagram profile,
or generated normal witness is used before production. `C_path` remains the
only explicit conditional hypothesis.

## Blockers

None. Attempt 10 has a target-preserving fixed-target mechanism for
`E_deficit`; the false pointwise INC and unresolved TOP routes are retired and
have no consumers in the new DAG. The only remaining source-level gap is the
one already exposed by the formal theorem itself: no uniform positive lower
bound is claimed for
`P(C_path | E_init_norm)`.
