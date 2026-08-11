# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_3/idea_3`.
- Global attempt: 1 under sketch attempt 10.
- Reviewed setting: `perspective_3/idea_3/setting.md`, SHA-256
  `b2b388c3355f61378fad862ef081e780922231ab0e1793f0f73fb4b7fa691a1f`.
- Reviewed sketch: `perspective_3/idea_3/proof_sketch.md`, sketch attempt 10,
  SHA-256 `2d26f91335909cf492239fbc69a9d13977a3b9c5a89df5060d5e00a1342d2274`.
- Reviewed sketch review: `perspective_3/idea_3/proof_sketch_review.md`,
  SHA-256 `c9d1b83326184b5bb78d9931bd7140214c6055a0ff495d16539f28779176a6be`.
- Review status: `ACCEPTED`, viability score 9, retry target `None`, retry mode
  `none`.
- Tracker identity: the current `proof_tracker.md` records sketch attempt 10 as
  accepted and global attempt 1 as the live theorem-diagnostic slot.
- Goal mode: exact-goal mode.
- Progress type: conditional.
- Theorem-contract change: none.
- Archival note: no archived global or step artifact is used as proof evidence or
  as a source for this diagnostic.

## Status

COMPLETE_DRAFT

The accepted 15-step architecture closes at theorem-diagnostic granularity.
Every theorem-facing generated object has a legal producer and dependency path;
the fixed-target random-orientation source, the anisotropic transfer, the raw
normal witness, the all-time finite-variation closure, and both target bridges
have concrete current-notation interfaces. The substantial derivations remain
for their assigned local proof steps, but no theorem-level claim, dependency,
mechanism source, accumulation relation, probability conversion, or
residual-to-target bridge is missing.

## Attempted Theorem Claim

Fix `kappa >= 1` and fixed `q >= 4`. There are
`r_0=r_0(kappa,q)`, `C=C(kappa,q)`, and a constant

    epsilon_0(kappa)
      = ((15/16) delta_0)^2 kappa_1^(-12) > 0,
    delta_0 = 1/8,
    kappa_1 = 2 kappa^2,

such that, uniformly over every `r >= r_0`, every

    n >= C(kappa,q) r^4 log r,
    r < k <= floor(r^(5/4)),

and every deterministic base triple satisfying `assump:base_conditioning`, the
joint Gaussian smoothing and independent Gaussian initialization obey

    P(E_init_norm) >= 1-r^(-10).

On the explicitly conditional event
`E_init_norm intersect C_path`, where

    C_path = {sum_{t>=0} d_bal(theta_(t+1),theta_t) <= E_star},

the balanced GD sequence converges in `d_bal` to a finite limit
`theta_infinity`, and

    lim_{t->infinity} F(theta_t)
      = F(theta_infinity)
      >= epsilon_0(kappa) ||T||_F^2
      > 0.

Consequently, for the exact convergence-and-positive-limit event `F_plus`,

    P(F_plus)
      >= P(E_init_norm intersect C_path)
      = P(E_init_norm) P(C_path | E_init_norm)
      >= (1-r^(-10)) P(C_path | E_init_norm).

This is the exact conditional theorem in `setting.md`. It makes no positive
uniform claim about `P(C_path | E_init_norm)`. Hidden constants may depend only
on the dependencies allowed in the setting: the initialization threshold may
depend on `kappa,q`, the fixed-target concentration constant is universal, and
`epsilon_0` depends only on `kappa`. There is no upper restriction on `n`, no
horizon-dependent constant, and no change of the balanced metric, raw
coefficient norm, physical Frobenius loss, algorithm, rank window, or
probability mode.

## Whole-Proof Draft

### Block B01: realized-factor conditioning (`step_001`)

Write each deterministic base matrix as
`bar M = bar M^circ D_M`. The base assumptions give

    ||bar M||_op <= kappa^2,
    sigma_min(bar M) >= kappa^(-2).

For the smoothing matrix `Xi_M`, a rectangular Gaussian operator-norm tail at
variance `rho^2/n`, with `rho=r^(-q)`, gives a threshold large enough that,
simultaneously for `M=A,B,C`,

    ||Xi_M||_op <= (2 kappa^2)^(-1)

outside an event of probability at most `r^(-20)`, after increasing
`r_0(kappa,q)` and `C(kappa,q)`. Weyl's inequalities then yield

    sigma_min(M) >= (2 kappa^2)^(-1) = kappa_1^(-1),
    ||M||_op <= 2 kappa^2 = kappa_1.

Thus `E_cond` is a generated event, not an assumption, and
`P(E_cond^c) <= r^(-20)`. These inequalities also imply
`||M^dagger||_op <= kappa_1`, which is the exact conditioning input consumed by
the coefficient law, anisotropic projection, Taylor, and physical-loss blocks.

### Block B02: balanced coefficient Gaussianization and invariance (`step_002`)

Condition on a realized triple in `E_cond`. Applying the SVD of each realized
mode matrix to an independent raw Gaussian initialization column produces iid
standard Gaussian coefficient vectors `z_i^M in R^r` and deterministic
invertible maps `H_M` satisfying

    sigma(H_M) subset [kappa_1^(-1), kappa_1].

After the product-preserving balancing map, the normalized coefficient columns
have the exact form

    bar zeta_i^M = (s_i^m/sqrt(r)) H_M z_i^M,

where every balancing scalar is nonzero almost surely and, componentwise,

    s_i^x s_i^y s_i^z = 1.

Two separate invariances are needed and follow directly from these scalar
identities. First, each tangent block contains two component coefficient
vectors, so balancing and normalization multiply that block by a nonzero
scalar and do not change its range. Second, the coefficient rank-one tensor for
component `i` is multiplied by `s_i^x s_i^y s_i^z=1`, so balancing does not
change `Dhat_0`. The random scalars may depend on the Gaussian radii; no
independence from the orientation variables is required because they disappear
from the tangent range and from `Dhat_0` exactly.

### Block B03: normalized pair-Gram generation (`step_003`)

Using the representation in B02, radial concentration controls the scalar
rescalings and rectangular Khatri-Rao concentration controls the three matrices
formed from the normalized coefficient pairs. Uniformly over each realized
triple in `E_cond`, the local target is

    P((E_gram^norm)^c | A,B,C) <= r^(-20),

where every eigenvalue of each normalized pair Gram lies in
`[r^(-20),r^20]`. The proof only needs to produce the stated polynomial window;
a constant spectral window, available because `k/r^2 <= r^(-3/4)`, is more than
sufficient. The event is generated from the primitive dimension, rank, and
initialization conditions and is consumed only after production in B10.

### Block B04: balanced initial-size generation (`step_004`)

For each raw component triple, balancing sets all three output norms equal to
the geometric mean of the three raw norms. Simultaneous Gaussian norm
concentration over `3k` columns therefore gives, uniformly on `E_cond`,

    P(E_size^c | A,B,C) <= r^(-20),
    max_{i,m} ||m_(i,0)||_2 <= 2

on `E_size`. The dimension lower bound dominates the polynomial union over
`k <= r^(5/4)`. This is the exact balanced-column radius later combined with
the finite path budget; it is not an all-time bound and is not promoted to a
primitive hypothesis.

### Block B05: exact normalized/raw and tangent-range bridge (`step_005`)

The normalized and raw coefficient columns satisfy
`beta_i=sqrt(r/n) bar beta_i` and similarly in the other modes. Hence, for each
pair Khatri-Rao matrix,

    K_raw = (r/n) K_norm,
    G_raw = (r/n)^2 G_norm.

Each normalized tangent generator differs from its raw counterpart by a
nonzero scalar. Therefore

    S_0^raw = S_0^norm = S_0.

Removing the two gauge-null parameter directions per component also leaves the
tangent range equal to `S_0`; no quotient Gram estimate is needed. This block
keeps `D_r`, `Dhat_0`, the witness, and the coefficient residual in raw
coordinates. It is an equality bridge, so it introduces no residual, metric
change, or baseline loss.

### Block B06: measurable independent product-Haar disintegration (`step_006`)

Let `Z_M=[z_1^M ... z_k^M]`. Since `k>r`, each standard Gaussian `r x k`
matrix has full row rank almost surely. The left action of `O(r)` on this
full-row-rank set is free. Orthogonal invariance, uniqueness of Haar measure on
each orbit, and a measurable orbit section give a disintegration

    Z_M = O_M R_M

with `O_M` Haar on `O(r)` and independent of the orbit representative. Choose
a fixed reflection `J`. Decompose `O_M=Q_M J^(epsilon_M)`, where `Q_M` is Haar
on `SO(r)` and independent of the determinant bit. Absorb
`J^(epsilon_M)` into `R_M`. This yields measurably

    Z_M = Q_M R_M,

where `Q_a,Q_b,Q_c` are independent Haar `SO(r)` matrices and are independent
of the three internal representatives. Independence across modes follows from
the independent Gaussian mode arrays. Rank-deficient arrays and zero balancing
factors are null branches and are the only exclusions.

Define `E` from the columns of the internal representatives by the same three
tangent generator families as `S_0`, before the elliptic maps are applied. If

    L = H_a otimes H_b otimes H_c,
    Q = Q_a otimes Q_b otimes Q_c,

then scalar invariance from B02 and exact range compatibility from B05 give

    S_0 = L Q E,
    dim(E)=d <= 3kr.

This is an exact factorization of the consumed raw tangent span. Conditional on
the smoothing and internal shapes, `E`, `L`, and the target used below are
fixed while the three orientations remain independent Haar.

### Block B07: fixed-target sequential twirl and metric-normalized tail (`step_007`)

Fix a deterministic subspace `E` of dimension `d` and a nonzero tensor `X`.
For `Q=Q_a otimes Q_b otimes Q_c`, define

    h(Q;E,X) = ||P_(QE) X||_F^2 / ||X||_F^2.

Sequentially averaging the projection operator over one Haar factor at a time
uses the exact one-mode twirl

    E_Qm[(Q_m otimes I) A (Q_m^T otimes I)]
      = (I_r/r) otimes Tr_m(A).

After all three modes,

    E_Q[Q P_E Q^T] = (Tr(P_E)/r^3) I = (d/r^3) I,
    E_Q h = d/r^3.

For the unnormalized product Hilbert-Schmidt geodesic metric, a tangent vector
with skew generators `(K_a,K_b,K_c)` has squared speed
`sum_m ||K_m||_F^2`. The induced tensor generator is

    Kcal = K_a otimes I otimes I
         + I otimes K_b otimes I
         + I otimes I otimes K_c,

so

    ||Kcal||_op
      <= sum_m ||K_m||_op
      <= sqrt(3) (sum_m ||K_m||_F^2)^(1/2).

Differentiating the normalized projection energy along the geodesic gives

    |d h/ds| <= 2 ||Kcal||_op,

hence `Lip(h) <= 2sqrt(3)` in exactly the declared metric. The standard
log-Sobolev inequality for `SO(r)` with this unnormalized Hilbert-Schmidt metric
has constant of order `1/r`; tensorization over the three independent factors
and Herbst's argument therefore give a universal `c_H>0` such that

    P_Q(h >= d/r^3+t) <= 8 exp(-c_H r t^2),   0<t<=1.       (Haar)

The constant `c_H` absorbs the fixed Lipschitz factor. The statement is uniform
in `E`, `d`, and `X`, so conditioning on the internal representatives from B06
does not change the tail.

### Block B08: anisotropic projection and the `kappa_1^12` threshold (`step_008`)

Take the exact raw target `x=D_r`. Let `U` have orthonormal columns spanning
`QE`, and put `X=L^T x`. Since `LU` spans `LQE=S_0`, the orthogonal projection
formula gives, with `b=U^T L^T x`,

    ||P_(LQE) x||_F^2
      = b^T (U^T L^T L U)^(-1) b
      <= sigma_min(L)^(-2) ||P_(QE) X||_F^2.

The singular bounds on each `H_M` imply

    sigma(L) subset [kappa_1^(-3), kappa_1^3],
    sigma_min(L)^(-2) ||X||_F^2
      <= kappa_1^12 ||x||_F^2.

Set

    tau_kappa = 1/(4 kappa_1^12).

Because `d<=3kr` and `k<=r^(5/4)`, for `r>=r_0(kappa)`,

    d/r^3 <= 3k/r^2 <= 3r^(-3/4) <= tau_kappa.

On the B07 event with `t=tau_kappa`,

    h <= d/r^3+tau_kappa <= 2tau_kappa
      = 1/(2kappa_1^12).

Substitution into the anisotropic projection formula yields the exact raw
fixed-target leverage bound

    ||P_(S_0) D_r||_F^2 <= (1/2)||D_r||_F^2 = r/2.         (LEV)

The conditional failure is

    8 exp(-c_H r tau_kappa^2)
      = 8 exp(-c_H r/(16kappa_1^24))
      <= r^(-20)

after increasing `r_0(kappa)`. The produced and consumed target is `D_r` in the
same coefficient Frobenius norm; the full transfer loss is the displayed
`kappa_1^12` and there is no surrogate-target residual.

### Block B09: exact raw normal witness and deficit (`step_009`)

For each component,
`alpha_(i,0) otimes beta_(i,0) otimes gamma_(i,0)` is itself an element of the
first tangent generator family, so

    Dhat_0 in S_0.

By (LEV), the normal component of the exact raw target is nonzero and satisfies

    ||P_(S_0^perp)D_r||_F^2 >= r/2.

Define

    W_0 = P_(S_0^perp)D_r / ||P_(S_0^perp)D_r||_F.

Then `||W_0||_F=1`, `W_0 perpendicular S_0`, and the `Dhat_0` term cancels
exactly:

    <D_r-Dhat_0,W_0>
      = ||P_(S_0^perp)D_r||_F
      >= sqrt(r/2)
      >= delta_0 ||D_r||_F.

Thus `E_deficit` is generated in raw coordinates with `delta_0=1/8`; neither a
normalized target nor a transformed witness appears.

### Block B10: generated initialization event (`step_010`)

The four constituents of `E_init_norm` are now produced. B01 gives the
smoothing failure `r^(-20)`. Uniformly conditional on every realized triple in
`E_cond`, B03, B04, and B08-B09 give failures at most `r^(-20)` for the
normalized Gram, size, and deficit events. Independence among those three
events is unnecessary. Conditioning on the smoothing and applying a union
bound gives

    P(E_init_norm^c) <= 4r^(-20) <= r^(-10)

for all sufficiently large `r`. Hence

    P(E_init_norm) >= 1-r^(-10).

This is the exact generated intersection from `setting.md`; it contains no
trajectory, convergence, or positive-loss conclusion.

### Block B11: finite-variation convergence and radius (`step_011`)

Work deterministically on `E_init_norm intersect C_path`. Put

    ell_t = d_bal(theta_(t+1),theta_t) >= 0.

The certificate is exactly

    sum_{t>=0} ell_t <= E_star <= 1.

For `s<t`, the triangle inequality gives the concrete accumulated-control
relation

    d_bal(theta_s,theta_t) <= sum_{u=s}^{t-1} ell_u.

The tail on the right tends to zero, so the balanced representatives form a
Cauchy sequence in a finite-dimensional Euclidean product space and converge
to a finite `theta_infinity`. Moreover,

    d_bal(theta_t,theta_0) <= sum_{u=0}^{t-1} ell_u <= E_star,

and hence, using `E_size`, every generated column satisfies

    ||m_(i,t)||_2 <= ||m_(i,0)||_2+d_bal(theta_t,theta_0)
      <= 2+E_star <= 3.

The same bound holds at the limit. This closure is noncircular: `C_path`
assumes only the finite sum, not convergence, boundedness, trapping, or loss.
At `E_path=0`, every increment is zero and `theta_infinity=theta_0`.

### Block B12: exact raw Taylor remainder (`step_012`)

Let `Delta theta=theta_infinity-theta_0` and
`d=d_bal(theta_infinity,theta_0)<=E_star<=1`. Expand the trilinear coefficient
map exactly. After subtracting its derivative at `theta_0`, each component has
three quadratic terms and one cubic term. On `E_cond`, each left inverse has
operator norm at most `kappa_1`; on the radius-3 domain from B11, Cauchy-Schwarz
and `d<=1` give

    ||Psi(theta_infinity)-Psi(theta_0)
        -DPsi(theta_0)[Delta theta]||_F
      <= kappa_1^3(3R d^2+d^3)
      <= C_CP(kappa,R)d^2,

with `R=3` and

    C_CP(kappa,3)=kappa_1^3(1+9).

This is one endpoint remainder, not a sum over time. It is in the exact raw
coefficient Frobenius norm paired with `W_0`, and it vanishes when the endpoint
displacement is zero.

### Block B13: Taylor absorption and preserved raw margin (`step_013`)

By the definition of the tangent range,

    DPsi(theta_0)[Delta theta] in S_0,

so its pairing with `W_0` is zero. Let `R_infinity` denote the B12 remainder.
Using the initial deficit from B09,

    <D_r-Psi(theta_infinity),W_0>
      = <D_r-Psi(theta_0),W_0>-<R_infinity,W_0>
      >= delta_0 sqrt(r)-C_CP(kappa,3)E_star^2.

The definition

    E_star <= sqrt(delta_0/(16C_CP(kappa,3)))

gives `C_CP E_star^2<=delta_0/16`. Since `r>=1`,

    <D_r-Psi(theta_infinity),W_0>
      >= (15/16)delta_0 sqrt(r).

As `||W_0||_F=1`, the same quantity lower-bounds the full raw coefficient
residual norm. At zero path the Taylor term vanishes and the entire initial raw
margin, not merely a conservative remainder, is retained.

### Block B14: exact raw-to-physical bridge (`step_014`)

Let `P_M=MM^dagger`. The exact same-target identity is

    (P_A otimes P_B otimes P_C)(T-S(theta))
      = (A otimes B otimes C)(D_r-Psi(theta)).

The left side is an orthogonal projection of the actual physical residual, so
at the limit B13 and `E_cond` give

    ||T-S(theta_infinity)||_F
      >= ||(A otimes B otimes C)(D_r-Psi(theta_infinity))||_F
      >= kappa_1^(-3)(15/16)delta_0 sqrt(r).

On the other hand,

    ||T||_F
      = ||(A otimes B otimes C)D_r||_F
      <= kappa_1^3 sqrt(r).

Squaring and comparing yields

    F(theta_infinity)
      >= ((15/16)delta_0)^2 kappa_1^(-12) ||T||_F^2.

The right side is strictly positive because `A otimes B otimes C` is injective
on `E_cond` and `D_r` is nonzero. Continuity of the polynomial objective and
`theta_t -> theta_infinity` imply
`lim_t F(theta_t)=F(theta_infinity)`.

### Block B15: event inclusion and conditional probability (`step_015`)

Blocks B11-B14 are deterministic on
`E_init_norm intersect C_path`, so

    E_init_norm intersect C_path subset F_plus.

Under the joint smoothing-initialization law,

    P(E_init_norm intersect C_path)
      = P(E_init_norm) P(C_path | E_init_norm).

Combining this identity with B10 gives the exact public probability statement

    P(F_plus)
      >= (1-r^(-10)) P(C_path | E_init_norm).

The factor `P(C_path | E_init_norm)` is retained without simplification. The
boundary value zero is allowed, and no unconditional positive probability is
inferred from the deterministic conditional chain.

### Final assembly

B01-B05 derive the realized conditioning, balanced coefficient law, normalized
Gram and size events, and exact raw span interface. B06-B09 convert the
initialization randomness into an independent product-Haar orientation,
concentrate one fixed target against the rotated internal tangent subspace,
transfer that estimate through the realized elliptic maps, and construct the
exact raw normal witness. B10 assembles these generated outputs into the
required initialization confidence. Conditional on the sole trajectory
certificate, B11 supplies the finite endpoint and radius, B12-B13 preserve the
raw normal deficit through one endpoint Taylor remainder, B14 transfers the
coefficient obstruction to the exact physical objective, and B15 performs the
unchanged conditional probability accounting. Every block consumes only
primitive assumptions, an explicitly conditional input, or earlier generated
outputs, so the exact theorem follows once the assigned local derivations are
proved.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| B01 | Generate realized conditioning and left-inverse bounds | `step_001` | None | `assump:base_conditioning`, `assump:dimension`, `assump:gaussian_smoothing` | None at diagnostic level; prove the stated Gaussian operator tail locally |
| B02 | Produce the exact balanced coefficient law and preserve the tangent/product objects | `step_002` | B01 | `assump:independent_initialization`; derived `E_cond` | None; exact SVD law and scalar algebra are fixed |
| B03 | Generate all normalized pair-Gram windows | `step_003` | B01, B02 | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization` | None; rectangular concentration is localized |
| B04 | Generate the balanced initial radius | `step_004` | B02 | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization` | None; simultaneous Gaussian radial bound is localized |
| B05 | Export exact raw/normalized scale and tangent-range equality | `step_005` | B02 | Definitions in `setting.md` | None; direct algebra only |
| B06 | Separate independent Haar orientations from the internal tangent shape | `step_006` | B02, B05 | `assump:independent_initialization`; derived Gaussianization | None; the measurable free-orbit disintegration interface is fixed |
| B07 | Control one fixed target against one product-Haar rotated subspace | `step_007` | B06 | Derived fixed internal shape | None; sequential twirl, metric Lipschitz bound, and log-Sobolev normalization are fixed |
| B08 | Transfer the Haar estimate to the exact anisotropic raw tangent span | `step_008` | B01, B06, B07 | `assump:rank_window`; derived `E_cond` | None; oblique formula and both thresholds are explicit |
| B09 | Construct the exact raw witness and generate `E_deficit` | `step_009` | B05, B08 | Earlier derived outputs only | None; Pythagorean interface is exact |
| B10 | Assemble the generated initialization event and confidence | `step_010` | B01, B03, B04, B09 | Primitive assumptions through dependencies | None; finite union and conditioning are explicit |
| B11 | Derive all-time convergence and radius from finite variation | `step_011` | B04, B10 plus `C_path` | `assump:gd_step`; explicitly conditional `C_path` | None; tail-sum recurrence and finite budget are explicit |
| B12 | Bound the exact endpoint multilinear remainder | `step_012` | B01, B11 | Derived conditioning and radius | None; raw trilinear expansion is localized |
| B13 | Preserve a positive raw coefficient margin | `step_013` | B09, B11, B12 | Derived witness, endpoint, and remainder | None; orthogonality and absorption inequality are explicit |
| B14 | Transfer the raw margin to relative physical loss | `step_014` | B01, B13 | Derived conditioning and raw margin | None; same-target projection identity is exact |
| B15 | Close the event inclusion and conditional probability statement | `step_015` | B10, B11, B14 | Joint probability law | None; the conditional factor is retained exactly |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | B01 | Opens all conditioning-dependent branches | Gaussian perturbation norm, Weyl transfer, simultaneous `r^(-20)` failure | Produces `E_cond`; does not assume it |
| `step_002` | B02 | Consumes B01; feeds B03-B06 | Exact conditional coefficient Gaussianization; nonzero scalar and triple-product invariance | Scalar dependence is harmless because the exported objects are invariant |
| `step_003` | B03 | Consumes B01-B02; feeds B10 | Three normalized Khatri-Rao spectral windows with total conditional failure `r^(-20)` | Exact normalized convention; raw conversion is B05 |
| `step_004` | B04 | Consumes B02; feeds B10-B11 | Simultaneous balanced norm bound and failure probability | Initial event only; all-time radius is B11 |
| `step_005` | B05 | Consumes B02; feeds B06-B09 | Exact Gram scaling, span equality, and gauge-range equality | No normalized target is introduced |
| `step_006` | B06 | Consumes B02, B05; feeds B07-B08 | Measurable free-action disintegration, reflection-bit absorption, independence, and `dim(E)<=3kr` | Exact equality `S_0=LQE` |
| `step_007` | B07 | Consumes B06; feeds B08 | Sequential three-mode twirl; `2sqrt(3)` Lipschitz calculation; metric-correct product log-Sobolev tail | Uniform in fixed `E,d,X` |
| `step_008` | B08 | Consumes B01, B06, B07; feeds B09 | Oblique projection identity, `kappa_1^12` loss, rank-window threshold, tail conversion | Produces (LEV) for exact raw `D_r` |
| `step_009` | B09 | Consumes B05, B08; feeds B10, B13 | Exact membership `Dhat_0 in S_0`, witness normalization, raw deficit | Positive denominator follows from (LEV) |
| `step_010` | B10 | Consumes B01, B03, B04, B09; feeds B11, B15 | Conditional-to-joint event bookkeeping and `4r^(-20)<=r^(-10)` | No independence among initialization constituents needed |
| `step_011` | B11 | Consumes B04, B10 and explicit `C_path`; feeds B12-B15 | Tail-sum Cauchy proof, endpoint distance, and all-time radius | Concrete all-time finite-budget relation is fixed |
| `step_012` | B12 | Consumes B01, B11; feeds B13 | Exact quadratic/cubic expansion and `C_CP(kappa,3)` bound | One endpoint error, not accumulated forcing |
| `step_013` | B13 | Consumes B09, B11, B12; feeds B14 | Derivative-range membership, witness orthogonality, and Taylor absorption | Zero path retains the complete initial margin |
| `step_014` | B14 | Consumes B01, B13; feeds B15 | Exact mode-span projection, singular-value transfer, relative normalization | Produces explicit positive `epsilon_0(kappa)` |
| `step_015` | B15 and final assembly | Consumes B10, B11, B14 | Event inclusion and conditional probability identity | Does not lower-bound the remaining conditional factor |

## Dependency And Assumption Audit

The dependency graph is acyclic and agrees exactly with the accepted sketch:

    B01 -> B02 -> {B03,B04,B05},
    {B02,B05} -> B06 -> B07,
    {B01,B06,B07} -> B08 -> B09,
    {B01,B03,B04,B09} -> B10,
    B10 -> B11 -> B12 -> B13 -> B14 -> B15,

with the side dependencies displayed in the block map.

| Theorem-facing condition or object | Provenance class | Producer or source | Consumers | Audit result |
| --- | --- | --- | --- | --- |
| Base conditioning, dimension, rank window, smoothing, initialization, GD protocol | Primitive conditions | Six stable `assump:*` entries in `setting.md` | Assigned blocks only | Valid; no additional primitive condition introduced |
| `E_cond` and `||M^dagger||_op<=kappa_1` | Derived | B01 | B02, B08, B12, B14 | Valid producer precedes every consumer |
| Gaussian coefficient arrays and balancing invariance | Derived | B02 | B03-B06 | Valid; orientation independence is not assumed here |
| `E_gram^norm` | Derived | B03 | B10 | Valid; not promoted to a public assumption |
| `E_size` | Derived | B04 | B10, B11 | Valid; only the initial radius is exported |
| Exact raw/normalized span and Gram bridge | Derived algebraic equality | B05 | B06, B09 | Valid; raw target and metric unchanged |
| Independent Haar orientations, internal `E`, and `S_0=LQE` | Derived | B06 | B07, B08 | Valid measurable producer path; exceptional branches are null |
| Fixed-target Haar projection control | Derived conditionally on internal shapes | B07 | B08 | Valid; uniformity permits conditioning |
| (LEV) | Derived | B08 | B09 | Valid exact-target output |
| `W_0` and `E_deficit` | Derived | B09 | B10, B13 | Valid; `W_0` is not assumed |
| `E_init_norm` confidence | Derived | B10 | B11, B15 | Valid intersection of four produced constituents |
| `C_path` | Explicitly conditional hypothesis | Formalized goal | B11 and downstream deterministic chain | Valid; it contains only the finite path-length clause |
| Limit and radius | Derived conditionally | B11 | B12-B15 | Valid noncircular finite-variation closure |
| Taylor interface | Derived conditionally | B12 | B13 | Valid same-norm endpoint control |
| Raw coefficient margin | Derived conditionally | B13 | B14 | Valid exact target residual |
| Relative physical loss | Derived conditionally | B14 | B15 | Valid exact same-target bridge |
| Final event/probability statement | Derived conditionally | B15 | Attempted theorem | Valid exact event algebra |

No missing derived-condition bridge remains. In particular, the final theorem
does not assume realized conditioning, Gram stability, size, deficit,
convergence, radius, or positive loss. The only non-primitive theorem-facing
hypothesis is `C_path`, and the formal goal is explicitly conditional on it.

## Citation And Tool Audit

No external theorem is named as a black-box citation in the accepted sketch.
The following direct derivations and standard tools require local proof or an
exactly matched citation, with their theorem-level interfaces already fixed.

| Tool or source | Current-branch objects and exact convention | Assumptions to discharge | Conclusion needed | Convention and target compatibility | Affected block / step |
| --- | --- | --- | --- | --- | --- |
| Rectangular Gaussian operator-norm tail | `n x r` smoothing matrices with iid variance `rho^2/n` entries; operator norm | `rho=r^(-q)`, dimension lower bound, fixed `q>=4` | Perturbation below half the base singular margin with failure `r^(-20)` | Same matrices and norm as `E_cond`; no surrogate | B01 / `step_001` |
| Weyl singular-value inequalities | `bar M+Xi_M` in the physical mode matrices | Base upper/lower singular bounds and perturbation norm | Singular interval `[kappa_1^(-1),kappa_1]` | Native operator/singular-value convention | B01 / `step_001` |
| Gaussian linear-image/SVD calculation | `A^dagger x_i^raw` and analogues | `E_cond`, iid `N(0,I_n/n)` initialization | `H_M z_i^M` coefficient representation | Exact coefficient coordinates in `setting.md` | B02 / `step_002` |
| Rectangular Khatri-Rao concentration and matrix Bernstein | Three normalized pair matrices | B02 representation, bounded ellipticity/radii, `k/r^2<=r^(-3/4)` | Polynomial normalized Gram window with total failure `r^(-20)` | Exact normalized Gram convention; B05 handles raw scale | B03 / `step_003` |
| Gaussian norm concentration | `3k` raw initialization columns and geometric-mean balancing | Dimension and rank windows | Balanced norm at most 2 with failure `r^(-20)` | Same Euclidean columns consumed by `d_bal` | B04 / `step_004` |
| Scalar and gauge-range algebra | Raw and normalized tangent generators | Nonzero scalars almost surely | Exact Gram scaling and range equality | Equality in the consumed raw coefficient space | B05 / `step_005` |
| Measurable compact-group orbit disintegration | Full-row-rank standard Gaussian `r x k` arrays under the free left `O(r)` action | `k>r`; Borel section/disintegration; mode independence | Independent Haar `SO(r)` orientations independent of representatives | Reflection bit is absorbed into the representative; exact `S_0=LQE` | B06 / `step_006` |
| Sequential Haar twirl | Projection `P_E` under `SO(r)^3` tensor action | Haar independence; `r` sufficiently large | `E[QP_EQ^T]=(d/r^3)I` | Exact tensor Frobenius action and fixed target | B07 / `step_007` |
| `SO(r)` log-Sobolev plus Herbst | Unnormalized Hilbert-Schmidt geodesic metric, product of three connected groups | Metric Ricci/log-Sobolev scale `Theta(1/r)`, tensorization, `Lip(h)<=2sqrt(3)` | `8exp(-c_Hrt^2)` upper tail for `0<t<=1` | Metric normalization, product action, and scalar projection energy are explicitly matched | B07 / `step_007` |
| Oblique-basis projection formula | `LU` spanning `LQE`; coefficient Frobenius inner product | `L` invertible on `E_cond` | `b^T(U^TL^TLU)^(-1)b` and `kappa_1^12` comparison | Produced and consumed target both equal raw `D_r` | B08 / `step_008` |
| Hilbert-space Pythagoras | Orthogonal decomposition by `S_0` | (LEV), `Dhat_0 in S_0` | Unit normal witness and exact deficit | Same raw coefficient Hilbert space | B09 / `step_009` |
| Finite-total-variation Cauchy criterion | Balanced factor product with `d_bal` | Explicit `C_path` | Finite limit and radius 3 | Exact trajectory and metric; no mode upgrade | B11 / `step_011` |
| Direct trilinear Taylor expansion | Raw coefficient map `Psi` | B01 left-inverse bounds, B11 radius and unit displacement | `C_CP(kappa,3)d^2` remainder | Same raw coefficient norm paired with `W_0` | B12 / `step_012` |
| Orthogonal mode-span projection | `P_A otimes P_B otimes P_C` acting on actual physical residual | B01 conditioning and definition of `Psi` | Exact physical identity and singular-value lower transfer | Same physical target `T`; discarded component is nonnegative | B14 / `step_014` |
| Conditional probability identity | Joint smoothing and initialization law | `P(E_init_norm)>0`, supplied by B10 | Exact retained conditional factor | Same event `F_plus` and probability mode | B15 / `step_015` |

For the theorem-critical compact-group and disintegration tools, a later local
proof must either derive the current-notation statements or cite a stable source
whose group component, metric normalization, orbit action, independence
statement, and conclusion match the displayed interfaces. This is a local
source-discharge obligation, not a missing theorem-level source: invariant
Gaussian measure, Haar uniqueness, the free action, and the metric-correct
log-Sobolev mechanism are already fixed and source-adequate under the accepted
sketch.

## Quantitative Dependence Audit

- Exposed structural variables: `n,r,k,kappa,q`, `rho=r^(-q)`,
  `kappa_1=2kappa^2`, `delta_0=1/8`, `E_star`, and
  `C_CP(kappa,3)`.
- Rank and dimension scope: no upper bound on `n`;
  `n>=C(kappa,q)r^4 log r`; `r<k<=floor(r^(5/4))`.
- Initialization confidence: B01, B03, B04, and B08-B09 each contribute at
  most `r^(-20)` failure, and B10 uses only
  `4r^(-20)<=r^(-10)`.
- Haar threshold: `tau_kappa=1/(4kappa_1^12)`, with the two required
  specializations

      3r^(-3/4) <= tau_kappa,
      8exp(-c_H r/(16kappa_1^24)) <= r^(-20).

- Hidden constants: the dimension and sufficiently-large thresholds may depend
  on `kappa,q`; `c_H` is universal; the relative loss constant depends only on
  `kappa`. No hidden constant may depend on `n,r,k`, the deterministic base
  triple, internal Gaussian shapes, target direction, time, or the GD horizon.
- Fixed quantities: `kappa,q` are fixed while `r` grows. In conditional
  initialization calculations, the realized factor triple and then the
  internal orbit representatives are fixed before averaging orientations.
- Probability mode: joint smoothing and initialization for
  `P(E_init_norm)`; uniform conditional initialization bounds on every realized
  triple in `E_cond`; deterministic conclusions on
  `E_init_norm intersect C_path`; exact conditional probability accounting at
  the end.
- Horizon mode: B01-B10 are initialization-only. B11 is all-time and is
  supported by the explicit summable path relation. B12-B14 use one endpoint.
  B15 converts the all-time deterministic event to the exact final probability.
- Norm and metric mode: physical and coefficient tensor Frobenius norms,
  operator/singular-value norms for factors, normalized Gram eigenvalues,
  unnormalized product Hilbert-Schmidt geodesic metric for `SO(r)^3`, and the
  exact balanced path metric `d_bal`. No metric conversion is hidden.
- Auxiliary tolerances: `tau_kappa`, `E_star`, and `delta_0` are explicit.
  Every absorption has a displayed inequality.
- Public specialization: the explicit admissibility thresholds are absorbed
  only into `r_0(kappa,q)` and `C(kappa,q)`. The public conditional factor is
  not simplified.
- Baseline invariance: `D_r`, `Dhat_0`, `S_0`, `W_0`, the coefficient
  residual, and the physical loss remain raw. If `L=I`, B08 reduces to the
  direct product-Haar estimate. If `E_path=0`, the Taylor remainder vanishes
  and the complete initial positive-loss conclusion persists.
- Relative loss: one valid explicit choice is

      epsilon_0(kappa)
        = ((15/16)delta_0)^2 kappa_1^(-12).

- Remaining gap outside the theorem: no lower bound is claimed for
  `P(C_path | E_init_norm)`. The diagnostic does not convert the conditional
  theorem into an unconditional positive-probability result.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ----------------------------------- | ---------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| `E_cond` | Generated structural nondegeneracy; legalizes all coefficient and physical maps | One smoothing draw, uniform over bases | `sigma_min(bar M+Xi)>=sigma_min(bar M)-||Xi||`; analogous upper bound | Deterministic base singular margin | Gaussian operator perturbation | One-shot finite failure; no accumulation | Structural lower/upper comparison | Primitive base conditioning plus Gaussian tail; zero perturbation and worst allowed base margin handled | Lower singular content comes from the primitive base margin, not from smallness alone | Produced realized `M`; consumed `M,M^dagger` in the same operator norm; residual `Xi` is below half margin | step-local | B01 is produced before B02/B08/B12/B14 | Initialization specialization; no GD update yet | `||Xi||<=1/(2kappa^2)` implies `[kappa_1^(-1),kappa_1]` | Base singular interval, smoothing variance, dimension | `E_cond` | Zero perturbation preserves the base; worst margin remains positive | Coefficient maps and physical transfer could be singular |
| Balanced Gaussianization and scalar invariance | Exact generated initialization law and baseline invariance | Fixed initialization | `bar zeta_i^M=(s_i^m/sqrt(r))H_Mz_i^M`; `s_i^xs_i^ys_i^z=1` | Invertible `H_M`, iid standard Gaussian arrays, nonzero scalars | Zero raw norm or zero scalar branches | One-shot; exceptional branches have probability zero | Algebraic coupling | Primitive Gaussian initialization plus B01; zero-vector branch excluded almost surely | Exact law supplies orientation randomness; scalar product supplies product preservation | Produced balanced coefficients; consumed exact `S_0,Dhat_0`; equality after nonzero block rescaling | step-local | B01 -> B02 before every geometry consumer | At initialization; zero Gaussian vector is null | Pair scalars preserve each tangent block and triple scalar preserves each coefficient tensor | Independent raw initialization, B01 conditioning | `H_M,z_i^M,s_i^m` | Arbitrary nonzero scalar sizes do not change the exported range/product | Without product/range invariance the fixed-target span or raw residual would be a surrogate |
| `E_gram^norm` | Generated normalized Gram stability in `E_init_norm` | One initialization draw | Spectral concentration of three normalized pair matrices | `k/r^2<=r^(-3/4)` and bounded ellipticity/radii | Radial and matrix deviations | One-shot finite failure; no time accumulation | Structural lower/upper comparison | B02 law plus primitive dimension/rank window; maximal rank handled | Concentration has both lower and upper spectral content | Produced and consumed exact normalized Grams; B05 separately gives exact raw scale | step-local | B01-B02 -> B03 -> B10 | Initialization only | Constant spectral window is contained in `[r^(-20),r^20]` | Dimension, rank, initialization | B01-B02 outputs | `k=r^(5/4)` still has vanishing aspect ratio | The generated initialization event would lack its Gram constituent |
| `E_size` | Generated initial radius for path closure | One initialization draw | Geometric mean of three raw norms is at most 2 | Gaussian radial concentration | Simultaneous `3k` tail | One-shot finite union | Structural upper comparison | Primitive initialization and dimension/rank window | Upper-radius claim is exactly supplied by norm concentration | Produced and consumed balanced columns in Euclidean norm | step-local | B02 -> B04 before B10/B11 | Initial state; zero raw vector is null | Raw norm event implies each balanced norm is at most 2 | Dimension, rank, initialization | B02 coefficient/balancing law | Minimum allowed dimension dominates the union over maximal `k` | B11 could not derive the radius 3 from the path budget alone |
| Raw/normalized span and Gram bridge | Baseline and object-target compatibility | Fixed initialization algebra | `G_raw=(r/n)^2G_norm`; `S_0^raw=S_0^norm` | Exact nonzero scalar identities | None | No accumulation | Algebraic coupling | Definitions and B02; nonzero normalization factors almost surely | Equality has exactly the range and scale content consumed downstream | Produced normalized geometry and raw target interface; zero residual in raw coefficient Frobenius norm | step-local | B02 -> B05 before B06/B09 | Initialization; no update | Exact equality, no inequality or slack | Definitions | B02 nonzero scalars | Edge of Gram window does not affect range equality | A transformed-span gap would invalidate the exact witness |
| Independent Haar orbit and `S_0=LQE` | Generated random-orientation source and exact tangent factorization | Fixed initialization, conditional on smoothing and shapes | `Z_M=Q_MR_M`; `S_0=LQE`; `d<=3kr` | Full-row-rank invariant Gaussian law and Haar orbit measure | Rank-deficient arrays, reflection bits, scalar factors | One-shot; null exceptional sets only | Algebraic coupling and stopping/conditioning argument | Primitive independent Gaussian arrays, B02/B05; rank-deficient and zero-scalar branches excluded as null | Invariant measure supplies orientation, not merely size; free action supplies independent orbit coordinate | Produced exact `S_0`; consumed exact same span in B08; no surrogate residual | step-local | B02/B05 -> B06 before B07/B08 | At `k=r+1`, full row rank still holds almost surely | Condition on representatives; absorb determinant bit into shape; retain independent Haar `SO(r)` orientations | Independent initialization, `k>r` | B02/B05 exact invariances | Both determinant components handled; full-rank boundary valid | Without independent orientation the fixed-target concentration source vanishes |
| Fixed-target Haar mean/tail | Structural upper projection control | One conditional Haar draw | `E h=d/r^3`; `P(h>=d/r^3+t)<=8e^(-c_Hrt^2)` | Sequential twirl, `2sqrt(3)` Lipschitz bound, LSI scale `1/r` | Dimension mean and deviation `t` | One-shot; no repeated forcing | Structural upper comparison and conditioning argument | B06 independent Haar factors; `r` sufficiently large; `d=0` handled directly | Twirl supplies exact mean and LSI supplies concentration for the same scalar energy | Produced projection of exact `X`; consumed same in B08; no net or supremum residual | step-local | B06 fixes `E,X` before B07 output | Initialization only | Tensor generator bound gives `Lip<=2sqrt(3)`; choose explicit `t` downstream | B06 Haar law | Fixed internal `E`, target `X` | `d=0`, `d=3kr`, and connected `SO(r)` component all handled | Dimension alone gives no high-probability fixed-target estimate |
| (LEV) | Exact anisotropic target leverage bound | One initialization projection event | `||P_(LQE)x||^2<=sigma_min(L)^(-2)||P_(QE)L^Tx||^2` | B07 energy and B01 singular interval | Mean `d/r^3`, deviation, elliptic condition number | One-shot; all defects absorbed by fixed thresholds | Structural upper comparison | B01, B06, B07, rank window; worst singular values included | Lower singular control and Haar energy jointly match the anisotropic projection claim | Produced and consumed target both `D_r`; exact coefficient norm; transfer loss exactly `kappa_1^12` | step-local | Inputs produced before B08; B09 consumes afterward | Maximal rank and worst ellipticity tested | `d/r^3<=tau`; `h<=2tau`; multiply by `kappa_1^12` to get `1/2` | Rank window | `E_cond`, `S_0=LQE`, Haar tail | `t=tau<=1`; tail converts to `r^(-20)` | Anisotropy could amplify the rotated subspace enough to destroy normal energy |
| `W_0` and `E_deficit` | Structural positive normal witness | One initialization event | `W_0=P_(S_0^perp)D_r/||...||`; exact pairing identity | Normal energy at least `r/2`; `Dhat_0 in S_0` | None after (LEV) | One-shot | Structural lower comparison and algebraic coupling | B05/B08; equality boundary `||P_S D||^2=r/2` allowed | Positive lower energy directly supplies a nonzero normal, while exact membership cancels `Dhat_0` | Produced raw witness and consumed raw coefficient residual are identical target/metric objects | step-local | B08 -> B09 before B10/B13 | At `theta_0`, the coefficient tensor is already in `S_0` | `sqrt(r/2)>=delta_0sqrt(r)` | `delta_0` | Exact span and (LEV) | Equality at `r/2` retains more than required margin | If normal energy vanished, no deficit witness would exist |
| `E_init_norm` confidence | Generated-event quantitative assembly | Joint initialization law | `P(E_init^c)<=P(E_cond^c)+sum conditional failures` | Four produced event certificates | Four finite bad events; arbitrary dependence among initialization events | Finite union only | Summable control | B01, B03, B04, B09; no boundary exclusion beyond large `r` | Each source produces the exact named event constituent | Produced intersection equals consumed theorem event; no event surrogate | step-local | All four producers precede B10 and all consumers | Initialization only | `4r^(-20)<=r^(-10)` | Six primitive assumptions through dependencies | Four generated constituents | Correlated constituents are allowed | Missing producer or union scale would invalidate the theorem confidence |
| Conditional convergence and radius | All-time convergence, boundedness, and endpoint existence | All `t>=0`, explicitly conditional | `d(theta_s,theta_t)<=sum_{u=s}^{t-1}ell_u`; `sum ell_u<=E_star` | Finite nonnegative path budget and initial radius 2 | Accumulated increments `ell_u>=0` | Summable: tails vanish; partial sums are bounded by finite budget `E_star` | Summable control | Explicit `C_path` plus B04/B10; no convergence assumed by source | Finite total variation has exactly the Cauchy and displacement content required | Produced and consumed trajectory is identical in `d_bal`; no transformed path | step-local | `C_path` and `E_size` precede B11; B11 precedes endpoint blocks | `E_path=0` gives stationary sequence; first update has zero distance | Tail-sum Cauchy relation and `2+E_star<=3` | `assump:gd_step`; explicit `C_path` | `E_size`, `E_init_norm` | `E_path=E_star` still gives radius 3 | Without finite budget, convergence and Taylor domain are not derived |
| Taylor remainder and raw-margin preservation | Nonlinear endpoint control and structural positive residual | One endpoint after all-time convergence | `||R_inf||<=C_CP d^2`; pairing removes derivative | Initial normal margin and derivative-range orthogonality | Quadratic/cubic endpoint terms | Locally absorbed once; no time accumulation | Algebraic coupling and structural lower comparison | B01, B09, B11; unit endpoint displacement; zero displacement handled | Trilinearity supplies exact defect class and `W_0` supplies sign/lower content | Produced Taylor residual and consumed raw coefficient target share Frobenius norm; every residual term is in `R_inf` | step-local | Limit/radius and witness precede B12-B13 | Zero path gives `R_inf=0` and full margin | `C_CPE_star^2<=delta_0/16<=delta_0sqrt(r)/16` | `E_star`, factor conditioning | Limit/radius, `W_0`, initial deficit | Maximal allowed path retains `15/16` margin | Uncontrolled nonlinear error could cancel the normal obstruction |
| Positive relative physical loss | Same-target theorem closure | One limit transfer | Projected residual identity plus singular lower/upper comparisons | Raw residual margin and invertible mode maps | Conditioning loss; nonnegative discarded orthogonal residual | One-shot | Structural lower/upper comparison | B01/B13; singular null modes excluded by `E_cond` | Lower singular product supplies physical nondegeneracy; upper product normalizes by `||T||` | Produced raw residual and consumed physical target linked by exact identity; no uncontrolled residual | step-local | B13 and B01 precede B14 | Zero path retains same physical conclusion | Lower `kappa_1^-3` and upper `kappa_1^3` give relative factor `kappa_1^-12` | Base/smoothing through `E_cond` | Raw margin | Worst allowed singular values still yield positive constant | Singular mode maps could annihilate a coefficient obstruction |
| Final event and probability factor | Conditional theorem and mode conversion | Joint law; all-time event already discharged | `E_init intersect C_path subset F_plus`; product rule for conditional probability | B10 confidence and deterministic B11-B14 inclusion | Unresolved conditional path factor | Retained exactly; no accumulation or absorption | Explicitly conditional target | Formalized conditional goal and joint law; zero factor allowed | Event inclusion has exactly the conclusion class claimed | Produced event is actual `F_plus`; no surrogate event or probability mode | step-local | All deterministic and initialization outputs precede B15 | Conditional factor zero leaves the inequality valid | Multiply exact conditional factor by `P(E_init)>=1-r^-10` | Joint law | `E_init`, convergence, physical floor | `P(C_path|E_init)=0` explicitly handled | Dropping or lower-bounding the factor would change the theorem contract |

All certificate rows are `step-local`. Every all-time or accumulated row has a
concrete control relation and finite-budget justification; no row relies on a
future proof step as the first source of its mechanism.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| `E_cond`, singular interval, left-inverse bound | B01 / `step_001` | Base singular interval, smoothing variance, dimension | Gaussian perturbation controlled; no persistent defect | Exact realized physical factors in operator norm | Perturbation below half base margin | Base margin; `kappa_1=2kappa^2` | B02, B08, B12, B14 | valid |
| Balanced coefficient Gaussianization and invariance | B02 / `step_002` | `E_cond`, iid raw Gaussian columns, balancing formula | Zero-vector/scalar branches are null; scalar dependence otherwise exact | Exact coefficient columns, tangent range, and `Dhat_0` | Nonzero pair scalars preserve range; triple product one preserves tensor | Gaussian law and product-preserving map | B03-B06 | valid |
| `E_gram^norm` | B03 / `step_003` | B02 elliptic Gaussian law, radial bounds, rank/dimension window | Radial/matrix deviations controlled by event; no time defect | Exact normalized pair Grams | Constant spectral control implies public polynomial window | Aspect ratio and concentration threshold | B10 | valid |
| `E_size` | B04 / `step_004` | Raw Gaussian norm tails and balancing identity | Finite union over `3k`; no uncontrolled radius term | Exact balanced columns in Euclidean norm | Raw radial event implies geometric mean at most 2 | Dimension lower bound | B10, B11 | valid |
| Raw Gram and tangent-range bridge | B05 / `step_005` | Exact normalization scalars and gauge kernel | No defect | Exact raw `S_0`; raw target and metric unchanged | Equality `G_raw=(r/n)^2G_norm`, `S_raw=S_norm` | Algebraic equality | B06, B09 | valid |
| Independent Haar factorization `S_0=LQE` | B06 / `step_006` | Full-row-rank invariant Gaussian arrays, B02/B05 invariance | Rank/scalar exceptional sets null; determinant bit absorbed | Exact consumed raw tangent span | Measurable conditioning leaves independent Haar orientations | Free action, Haar uniqueness, `d<=3kr` | B07, B08 | valid |
| Fixed-target Haar mean and tail | B07 / `step_007` | Fixed `E,X`, independent Haar factors, exact product metric | Mean and one deviation controlled; no data-dependent supremum | Exact projection of exact `X` | Sequential twirl plus metric-normalized LSI/Herbst | Universal `c_H`, `Lip<=2sqrt(3)` | B08 | valid |
| (LEV) | B08 / `step_008` | `E_cond`, B06 factorization, B07 tail, rank window | Dimension mean and anisotropy both controlled; no remaining residual | Exact raw `D_r` to exact `S_0` in coefficient Frobenius norm | `d/r^3<=tau`, Haar deviation `tau`, `kappa_1^12(2tau)=1/2` | `tau_kappa=1/(4kappa_1^12)` | B09 | valid |
| `W_0` and `E_deficit` | B09 / `step_009` | (LEV), exact `Dhat_0 in S_0` | No uncontrolled term | Exact raw normal residual | Perpendicular energy at least `r/2`; exact cancellation of `Dhat_0` | `delta_0=1/8` | B10, B13 | valid |
| `P(E_init_norm)>=1-r^(-10)` | B10 / `step_010` | Four legally produced constituents | Four finite failures; correlations uncontrolled but irrelevant | Exact event intersection from `setting.md` | Union bound `4r^(-20)<=r^(-10)` | Large-`r` threshold | B11, B15 | valid |
| Limit and radius 3 | B11 / `step_011` | `E_size`, explicit finite path budget | Nonnegative increments accumulated, fully controlled by finite sum | Exact balanced trajectory in `d_bal` | Tail sums vanish; displacement at most `E_star` | `C_path`, `E_star<=1` | B12-B15 | valid |
| Raw Taylor interface | B12 / `step_012` | Conditioning, radius 3, endpoint distance at most 1 | All quadratic/cubic terms explicitly controlled; no persistent term | Exact raw coefficient map and Frobenius norm | `3Rd^2+d^3<=(1+3R)d^2` | `C_CP(kappa,3)` | B13 | valid |
| Positive raw coefficient margin | B13 / `step_013` | Initial witness/margin, limit, Taylor output | Sole endpoint remainder controlled; derivative cancels exactly | Exact `D_r-Psi(theta_infinity)` | `C_CPE_star^2<=delta_0/16` | Definition of `E_star` | B14 | valid |
| Relative physical loss | B14 / `step_014` | Raw margin, exact projection identity, realized singular bounds | Only displayed conditioning loss; orthogonal physical component is nonnegative | Same physical target `T-S(theta_infinity)` | Lower singular product and target upper bound give `epsilon_0` | `E_cond`, raw margin | B15 | valid |
| Final conditional probability | B15 / `step_015` | Initialization confidence and deterministic event inclusion | Conditional path factor is uncontrolled and retained exactly | Actual `F_plus` event under the same joint law | Conditional product identity; no probability strengthening | `P(E_init_norm)` | Attempted theorem | valid |

Every downstream-facing interface is supported by raw primitive or
accepted-derived controls before export. The only uncontrolled quantity is the
explicit conditional path probability, and the exported theorem deliberately
retains it rather than treating it as a defect to be absorbed.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Realized conditioning and left-inverse bounds | B01 / `step_001` | B02, B08, B12, B14 | primitives -> B01 -> consumers | derived | valid |
| Gaussian coefficient arrays and balancing invariance | B02 / `step_002` | B03-B06 | B01 -> B02 -> consumers | derived | valid |
| Normalized Gram event | B03 / `step_003` | B10 | B01-B02 -> B03 -> B10 | derived | valid |
| Balanced initial-size event | B04 / `step_004` | B10, B11 | B02 -> B04 -> consumers | derived | valid |
| Exact raw/normalized span and Gram bridge | B05 / `step_005` | B06, B09 | B02 -> B05 -> consumers | derived | valid |
| Internal subspace, elliptic map, and independent Haar orientations | B06 / `step_006` | B07, B08 | B02+B05 -> B06 -> consumers | derived | valid |
| Fixed-target Haar mean/tail | B07 / `step_007` | B08 | B06 -> B07 -> B08 | derived conditionally on shapes | valid |
| Exact raw leverage bound (LEV) | B08 / `step_008` | B09 | B01+B06+B07 -> B08 -> B09 | derived | valid |
| Raw normal witness and deficit event | B09 / `step_009` | B10, B13 | B05+B08 -> B09 -> consumers | derived | valid |
| Initialization event and confidence | B10 / `step_010` | B11, B15 | B01+B03+B04+B09 -> B10 -> consumers | derived | valid |
| Finite path budget `C_path` | Formalized goal | B11 and downstream deterministic chain | explicitly conditional source -> B11 -> B12-B15 | explicitly conditional | valid |
| Limit and all-time radius | B11 / `step_011` | B12-B15 | B04+B10+`C_path` -> B11 -> consumers | derived conditionally | valid |
| Raw Taylor remainder | B12 / `step_012` | B13 | B01+B11 -> B12 -> B13 | derived conditionally | valid |
| Positive raw coefficient margin | B13 / `step_013` | B14 | B09+B11+B12 -> B13 -> B14 | derived conditionally | valid |
| Positive relative physical loss and limit | B14 / `step_014` | B15 | B01+B13 -> B14 -> B15 | derived conditionally | valid |
| Event inclusion and retained conditional factor | B15 / `step_015` | Final theorem | B10+B11+B14 -> B15 -> theorem | derived conditionally | valid |

No consumer precedes its producer. No generated event, witness, orientation,
radius, convergence claim, or positive-loss claim is used as a primitive
assumption.

## Early Obstruction And Repair Plausibility

- Contract contradiction check: none. The attempted claim preserves the exact
  conditional theorem, primitive assumptions, algorithm, metric, probability
  mode, rank window, no-upper-bound dimension regime, and raw physical target.
- Theorem-critical mechanism witness check: passed. Structural lower content is
  supplied by the base singular margin, independent Haar orientation,
  perpendicular target energy, finite path budget, initial witness margin, and
  exact singular-value bridge. No upper-bound-only source is used to assert a
  positive lower or nondegeneracy conclusion.
- Residual-to-target check: passed. `S_0=LQE` is equality; the B08 projection
  formula acts on the exact `D_r`; `Dhat_0` cancels exactly; the Taylor residual
  is in the exact coefficient norm and is quantitatively absorbed; the
  raw-to-physical relation is an exact same-target identity; and the final event
  is the actual `F_plus` event.
- Exported-interface check: passed. Each event, threshold, margin, recurrence,
  and bridge has its raw controls, defect classes, dominance relation, slack
  source, and consumers exposed in the accepted dependency graph.
- Generated-condition provenance check: passed. All generated initialization
  events, the Haar decomposition, leverage, witness, convergence, radius,
  margin, and loss have legal producers. `C_path` is the sole explicitly
  conditional input.
- Scope-accumulation check: passed. The only all-time accumulated defect is the
  nonnegative increment sequence `ell_t`; its finite total budget and vanishing
  tails give both convergence and radius. All later errors are one-shot
  initialization or endpoint terms.
- Entry-state and boundary check: passed. At `k=r+1`, the Gaussian arrays are
  full row rank almost surely. At `k=floor(r^(5/4))`, the mean leverage remains
  at most `3r^(-3/4)`. The `d=0` subspace case is trivial. Both determinant
  components are covered by reflection-bit absorption. Worst allowed elliptic
  singular values are included in `kappa_1^12`. At projection energy `r/2`, the
  witness margin still exceeds `delta_0`. At `E_path=0`, the limit is the initial
  point and the Taylor error is zero. At `E_path=E_star`, the radius and
  absorption inequalities remain valid. At conditional path probability zero,
  the final probability inequality remains true without an unconditional
  positive-probability conclusion.
- Mode and dependence check: passed. There is no expectation-to-high-probability
  or fixed-time-to-all-time upgrade without a mechanism. The Haar tail is
  high-probability at initialization, and all-time behavior is explicitly
  conditioned on finite variation.
- Baseline invariance check: passed. Raw targets, spans, witness, coefficient
  residual, and physical loss are unchanged. Identity anisotropy and zero path
  recover the original conclusions, not weaker surrogates.
- Same-setting repair plausibility: no repair is required. The remaining work is
  exactly the 15 accepted local derivations under fixed interfaces. There is no
  `sketch/interface defect` and no candidate `idea/theorem-contract defect`.

## Global Gaps And Hard Steps

None.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof
evidence, a cited result, an assumption source, or authority to change any
accepted sketch-step claim, dependency, assumption, output target, metric,
probability mode, rate objective, or theorem conclusion. Each local derivation
and standard-tool application must be independently proved or discharged by its
assigned `/proof-step` and accepted review before theorem assembly.

## Suggested Routing

None

Continue with all 15 proof steps in accepted dependency order, beginning with
`/proof-step step_001`. After prerequisite acceptance, the highest-risk local
derivations are `step_006`, `step_007`, and `step_008`; their theorem-level
sources and interfaces are fully fixed above.
