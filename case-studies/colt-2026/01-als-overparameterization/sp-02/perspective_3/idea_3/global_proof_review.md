# Global Proof Review

## Global-Proof Review Identity

- Branch path: `perspective_3/idea_3`
- Sketch attempt reviewed: `10`
- Global-proof attempt reviewed: `1`
- Reviewed `setting.md`: SHA-256 `b2b388c3355f61378fad862ef081e780922231ab0e1793f0f73fb4b7fa691a1f`
- Reviewed `proof_sketch.md`: SHA-256 `2d26f91335909cf492239fbc69a9d13977a3b9c5a89df5060d5e00a1342d2274`
- Reviewed `proof_sketch_review.md`: SHA-256 `c9d1b83326184b5bb78d9931bd7140214c6055a0ff495d16539f28779176a6be`
- Reviewed `global_proof.md`: SHA-256 `c5e907f7757c9da9e76acf1a142b8bdb42604b4cc9881af356460d0c3f96e235`
- Input sketch-review status: `ACCEPTED`
- Reviewed global-proof status: `COMPLETE_DRAFT`
- Reviewed suggested routing: `None`
- Goal mode: exact-goal mode
- Progress type: conditional
- Theorem-contract change: none

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None.

## Required Repair Bundle

None.

## Contract And Status Audit

The upstream sketch review accepts the exact sketch under review. The global
diagnostic contains every required section: controlled identity and status,
attempted theorem, whole-proof draft, 15-block map, complete sketch-step
coverage, dependency and assumption audit, citation and tool audit,
quantitative audit, scope-and-closure certificate, exported-interface audit,
generated-output flow, obstruction screen, gaps, diagnostic-boundary note, and
controlled routing. `COMPLETE_DRAFT` and `Suggested Routing = None` are aligned.
The diagnostic expressly disclaims use as proof evidence or as authority to
alter any accepted step interface.

## Claim And Sketch Fidelity Audit

The attempted theorem is faithful to `setting.md` and sketch attempt 10. It
preserves the realized CP target and physical Frobenius loss, balanced
simultaneous GD and step size, the six primitive assumptions, the full window
`r < k <= floor(r^(5/4))`, the lower-only dimension restriction, the raw
coefficient target and tangent deficit, and the exact conditional factor
`P(C_path | E_init_norm)`. It introduces no positive lower bound for that
factor. Normalization remains certificate-only: `D_r`, `Dhat_0`, `S_0`, `W_0`,
the coefficient residual, and physical loss stay raw. The explicit
`epsilon_0(kappa)`, probability mode, quantifier order, and hidden-constant
dependencies match the accepted sketch. Identity anisotropy and the zero-path
specialization preserve the inherited baseline conclusion rather than a
weaker surrogate.

## Theorem-Level Structure Audit

All 15 accepted steps have exactly one theorem-level block, the same output,
and the same backward dependencies.

| Block / step | Theorem role | Dependency audit | Interface and locality verdict |
| --- | --- | --- | --- |
| B01 / `step_001` | Generate `E_cond` and inverse bounds | Primitive base, dimension, smoothing only | Gaussian perturbation plus Weyl; step-local |
| B02 / `step_002` | Balanced coefficient Gaussianization and exact invariances | B01 | Exact law, nonzero block scalars, product-one preservation; step-local |
| B03 / `step_003` | Generate all normalized pair-Gram windows | B01, B02 | Fixed normalized convention and failure budget; step-local |
| B04 / `step_004` | Generate `E_size` | B02 | Actual balanced-column radius; step-local |
| B05 / `step_005` | Export raw/normalized scale and tangent-range equality | B02 | Exact equality bridge, including quotient-range compatibility; step-local |
| B06 / `step_006` | Produce independent product-Haar orientations and `S_0=LQE` | B02, B05 | Exact span factorization and dimension bound; step-local |
| B07 / `step_007` | Fixed-target Haar mean and tail | B06 | Fixed `E,X`, exact twirl, metric-normalized concentration; step-local |
| B08 / `step_008` | Anisotropic transfer and (LEV) | B01, B06, B07 | Exact `D_r` target and displayed `kappa_1^12` loss; step-local |
| B09 / `step_009` | Construct raw `W_0` and `E_deficit` | B05, B08 | Exact normal projection and `Dhat_0 in S_0`; step-local |
| B10 / `step_010` | Assemble `E_init_norm` confidence | B01, B03, B04, B09 | Four produced constituents and finite union; step-local |
| B11 / `step_011` | Conditional all-time convergence and radius | B04, B10, explicit `C_path` | Concrete tail-sum closure; step-local |
| B12 / `step_012` | Raw multilinear Taylor remainder | B01, B11 | One endpoint error in the consumed raw norm; step-local |
| B13 / `step_013` | Preserve the raw coefficient margin | B09, B11, B12 | Derivative cancellation and explicit endpoint absorption; step-local |
| B14 / `step_014` | Transfer to positive relative physical loss | B01, B13 | Exact mode-span identity and singular-value comparison; step-local |
| B15 / `step_015` | Event inclusion and conditional probability | B10, B11, B14 | Exact final event and retained conditional factor; step-local |

The dependency graph is acyclic. Every generated event, orientation, witness,
limit, radius, margin, and loss is produced before its first consumer. The
final assembly adds no theorem-facing claim beyond B01--B15.

## Dependency And Assumption Audit

The six `assump:*` entries are the only primitive conditions. `E_cond`, the
coefficient law, normalized Grams, `E_size`, the raw span bridge, Haar
orientations, (LEV), `W_0`, `E_deficit`, `E_init_norm`, convergence, radius,
Taylor control, coefficient margin, and physical loss are all derived outputs
with legal producer-consumer paths. `C_path` is the sole explicit conditional
hypothesis and contains finite total variation only; it does not assume
convergence, boundedness, trapping, or positive loss. No unconditional target
is closed by assuming a generated condition.

## Citation And Tool Audit

No theorem-critical external result is cited as a black box. The diagnostic
uses direct current-notation derivations or standard tools with the relevant
conventions fixed:

- B01 uses an `n x r` Gaussian operator tail in the physical operator norm and
  Weyl on the same realized matrices.
- B03 uses independent component columns, bounded ellipticity/radial controls,
  the normalized Khatri--Rao convention, and `k/r^2 <= r^(-3/4)`; B05 alone
  performs the exact raw conversion.
- B06 uses the free left `O(r)` action on full-row-rank Gaussian arrays, a
  measurable orbit section, invariant conditional Haar measure, independence
  across modes, and measurable absorption of the `O(r)/SO(r)` bit. These are
  exactly the objects needed for `S_0=LQE`; no population or surrogate span is
  substituted.
- B07 derives the three sequential twirls in the standard tensor action. Its
  concentration convention is Haar `SO(r)^3` with the unnormalized product
  Hilbert--Schmidt geodesic metric, `Lip(h) <= 2sqrt(3)`, Ricci/log-Sobolev
  scale `Theta(r)`/`Theta(1/r)`, tensorization, and the stated
  `exp(-c_H r t^2)` tail. Thus metric normalization and conclusion shape are
  fixed before local proof. A later citation, if used, must match this exact
  convention; the mechanism itself is not missing.
- B08, B12, and B14 are direct current-notation linear/multilinear derivations:
  the oblique projection formula acts on raw `D_r`, the Taylor remainder is in
  raw coefficient Frobenius norm, and the physical bridge acts on the actual
  residual `T-S(theta)`.

At diagnostic granularity, each standard-tool source has a raw-assumption to
exported-interface path, correct object and norm conventions, boundary cases,
and named consumers. The remaining work is derivation or exact source
discharge inside the assigned step, not discovery of a new theorem-level
source or wrapper.

## Quantitative Dependence Audit

The diagnostic retains `n,r,k,kappa,q`, `rho=r^(-q)`,
`kappa_1=2kappa^2`, `delta_0=1/8`, `E_star`, and
`C_CP(kappa,3)`. The four initialization failures are each at most
`r^(-20)` and are combined only through `4r^(-20) <= r^(-10)`. The Haar
specialization explicitly checks
`3r^(-3/4) <= 1/(4kappa_1^12)` and
`8exp(-c_H r/(16kappa_1^24)) <= r^(-20)`. Constants are universal or depend
only on the permitted `kappa,q`; none depends on `n,k`, the base triple,
internal shapes, target direction, time, or horizon. Initialization,
conditional all-time, endpoint, coefficient-norm, and physical-norm modes are
kept distinct. The explicit admissible relative-loss constant is
`((15/16)delta_0)^2 kappa_1^(-12)`, and the unresolved path probability is
retained exactly.

## Scope And Closure Review

The scope-and-closure certificate is complete enough for step work. B01--B10
are one-initialization outputs with finite bad-event budgets. B06 conditions on
internal representatives only after producing independent Haar orientations;
B07 is one fixed-subspace draw; B08--B10 are one-shot transfers and event
assembly. B11 is the sole all-time accumulated row and gives the concrete
relation

`d_bal(theta_s,theta_t) <= sum_{u=s}^{t-1} ell_u`,
`sum_u ell_u <= E_star`.

The accumulated terms are nonnegative, their tails vanish, and the same finite
budget gives displacement at most `E_star <= 1` and radius `3`. This is a
noncircular producer for convergence and boundedness. B12--B14 use one
endpoint remainder and one-shot exact transfers, so no persistent or
adversarial forcing is hidden. At `E_path=0`, the trajectory is stationary,
the remainder is zero, and the initial raw and physical margins persist. At
the maximal path, rank, and ellipticity boundaries, the displayed slack still
closes. Generated-output flow, exported-interface feasibility, object-target
compatibility, residual-to-target adequacy, and baseline invariance all pass.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| B01: `E_cond` | Structural nondegeneracy | Base singular margin plus Gaussian perturbation | Primitive base/dimension/smoothing | Weyl yields exact realized bounds | Same physical matrices/operator norm | `sigma_min(M)>=sigma_min(bar M)-||Xi_M||` | Perturbation below half margin exports `M,M^dagger` bounds | Residual is exactly `Xi_M` at required scale | One draw; finite failure | Primitives -> B01 -> B02/B08/B12/B14 | B01; consumers named at left | Zero perturbation and worst base margin stay positive | step-local | None |
| B02: Gaussianization/invariance | Exact initialization law and baseline invariance | Gaussian linear image plus balancing algebra | B01 and primitive initialization | Exports `H_M z_i^M` and exact span/product invariance | Exact coefficient and balancing conventions | Nonzero pair scalars preserve blocks; triple product is one | Invertible `H_M`, iid arrays, explicit scalars | Equal spans/products; no residual | One draw; zero branches null | B01 -> B02 -> B03--B06 | B02; consumers B03--B06 | Arbitrary nonzero scalar sizes preserve outputs | step-local | None |
| B03: `E_gram^norm` | Generated normalized Gram stability | Elliptic pair-column concentration | B01, B02, dimension/rank/init | Both spectral sides at public window | Exact normalized Khatri--Rao convention | Constant window implies `[r^-20,r^20]` | Ellipticity, radial control, `k/r^2=o(1)` | Exact normalized Grams; raw bridge reserved for B05 | One draw; finite deviation | B01/B02 -> B03 -> B10 | B03; consumer B10 | Maximal `k` retains vanishing aspect ratio | step-local | None |
| B04: `E_size` | Generated entry radius | Gaussian norm concentration and balancing mean | B02 and primitive init/dimension/rank | Bounds actual balanced columns | Same Euclidean columns used by `d_bal` | Raw radial event implies balanced norm at most 2 | `3k` column tails export exact event | No transformed column | One finite union | B02 -> B04 -> B10/B11 | B04; consumers B10/B11 | Minimal `n`, maximal `k` included | step-local | None |
| B05: raw/normalized bridge | Baseline/object compatibility | Exact scalar and gauge algebra | Definitions and B02 | Exports exact raw scale and range | Raw and normalized conventions kept separate | `G_raw=(r/n)^2G_norm`; `S_raw=S_norm=S_0` | Equality is the exported interface | No additive or target residual | Algebraic; no accumulation | B02 -> B05 -> B06/B09 | B05; consumers B06/B09 | Gram-window edge does not change range | step-local | None |
| B06: Haar disintegration | Random-orientation source and exact tangent factorization | Free compact-group action and invariant Gaussian law | Primitive independent Gaussian arrays, B02/B05 | Exports independent Haar `SO(r)` factors and `S_0=LQE` | Left action, determinant bit, and coefficient objects match | `Z_M=Q_MR_M`, `d<=3kr` | Full rank and exact scalar invariance give exact span | Equality; no surrogate span | One draw; null rank/scalar branches only | B02/B05 -> B06 -> B07/B08 | B06; consumers B07/B08 | `k=r+1` full rank a.s.; both determinant components handled | step-local | None |
| B07: Haar mean/tail | Fixed-target projection control | Sequential twirl plus product LSI/Herbst | B06 and current-notation standard tools | Mean and tail concern the exact scalar energy consumed by B08 | Haar `SO(r)^3`, tensor action, unnormalized HS metric | `E h=d/r^3`; `P(h>=d/r^3+t)<=8e^{-c_Hrt^2}` | Fixed `E,X`, explicit Lipschitz and metric | Exact projection of `X`; no net/supremum residual | One Haar draw | B06 fixes `E,X` -> B07 -> B08 | B07; consumer B08 | `d=0`, `d=3kr`, large `r` handled | step-local | None |
| B08: (LEV) | Anisotropic exact-target projection bound | Oblique projection plus factor singular bounds | B01, B06, B07, rank window | Converts the same fixed-target energy to `P_(S_0)D_r` | Raw coefficient Frobenius metric throughout | Projection inequality and `kappa_1^12(2tau)=1/2` | `d<=3kr`, explicit `tau_kappa` and tail | Produced/consumed target both `D_r`; no residual | One event; mean/deviation/anisotropy absorbed | Inputs -> B08 -> B09 | B08; consumer B09 | Maximal rank and worst singular values pass thresholds | step-local | None |
| B09: `W_0`,`E_deficit` | Positive raw normal witness | Orthogonal projection and `Dhat_0 in S_0` | B05, B08 | Normal energy directly supplies required margin | Exact raw Hilbert space | `||P_(S_0^perp)D_r||>=sqrt(r/2)` | Exact span and target export unit witness | `Dhat_0` cancels exactly | One initialization certificate | B08 -> B09 -> B10/B13 | B09; consumers B10/B13 | Equality at energy `r/2` exceeds `delta_0` | step-local | None |
| B10: `E_init_norm` confidence | Quantitative event assembly | Conditional union/tower argument | B01, B03, B04, B09 | Exact four event constituents | Joint smoothing/init law; no independence claim | `P(E_init^c)<=4r^-20<=r^-10` | Every constituent has prior producer/budget | Exact public event; no proxy | Finite union only | Four producers -> B10 -> B11/B15 | B10; consumers B11/B15 | Correlation among init events is harmless | step-local | None |
| B11: convergence/radius | All-time conditional closure | Finite total variation plus `E_size` | Explicit `C_path`, B04/B10 | Tail sums give actual limit and radius | Same balanced trajectory/metric | Cauchy tail relation; `2+E_star<=3` | Path budget and initial size export endpoint/all-time bound | Same trajectory; no transformed state | Summable nonnegative increments over all time | `C_path`,B04/B10 -> B11 -> B12--B15 | B11; endpoint consumers | Zero path stationary; maximal budget retains radius | step-local | None |
| B12: Taylor remainder | Endpoint nonlinear control | Exact trilinear expansion and inverse bounds | B01, B11 | All quadratic/cubic defects are in one raw remainder | Exact `Psi`, raw Frobenius norm | `||R||<=C_CP d^2`, `d<=1` | Radius 3, endpoint distance, inverse bounds | Same residual paired with `W_0` | One endpoint defect; no iteration sum | B01/B11 -> B12 -> B13 | B12; consumer B13 | Zero displacement gives zero remainder | step-local | None |
| B13: raw margin | Structural positive coefficient residual | Initial normal margin and derivative orthogonality | B09, B11, B12 | Exact derivative is in `S_0`; remainder has correct norm | Raw target and witness unchanged | `C_CP E_star^2<=delta_0/16` gives `15/16` margin | Witness, endpoint, and remainder available before export | Exact `D_r-Psi(theta_inf)` | One locally absorbed endpoint term | Inputs -> B13 -> B14 | B13; consumer B14 | Zero path preserves full margin | step-local | None |
| B14: physical loss | Same-target theorem bridge | Exact mode-span projection and singular values | B01, B13 | Converts exact coefficient margin to actual loss | Realized `T`, model tensor, physical Frobenius norm | Lower `kappa_1^-3`, upper target `kappa_1^3` | Raw margin and factor bounds export explicit `epsilon_0` | Projection discards only nonnegative orthogonal part | One limit transfer | B01/B13 -> B14 -> B15 | B14; consumer B15 | Worst singular boundary remains strictly positive | step-local | None |
| B15: final event/probability | Public conditional theorem closure | Deterministic inclusion and conditional identity | B10, B11, B14 | Produces actual `F_plus` and exact probability mode | Same joint law/events as setting | `E_init intersect C_path subset F_plus`; retain factor | Confidence and deterministic conclusions precede export | Unresolved factor is retained, not replaced | All-time scope already discharged by B11 | B10/B11/B14 -> B15 -> theorem | B15; final consumer | Conditional factor zero is expressly valid | step-local | None |

## Hard-Step Localization Audit

The difficult obligations in B03, B06, B07, and B08 remain step-local. B03
has fixed random objects, normalized output, spectral window, and failure
budget. B06 has a concrete invariant-measure source, exact action, null-set
exclusions, determinant-bit treatment, and exact `S_0=LQE` export. B07 has a
fixed target/subspace, exact twirl, metric convention, Lipschitz bound,
log-Sobolev scale, and tail interface. B08 has the exact oblique formula,
condition-number loss, target, threshold, and consumer. The other 11 steps are
likewise fixed direct derivations or assembly obligations. No future step is
being used as the first source of a generated event, lower bound, closure
mechanism, convention bridge, margin, or theorem-facing output. Every hard
obligation is therefore `step-local`, not a sketch/interface or
idea/theorem-contract defect.

## Early Idea-Failure Screen

- Contract contradiction: none; the exact conditional theorem is preserved.
- Missing mechanism: none; lower/nondegeneracy content comes from base singular
  margins, independent orientations, normal target energy, finite variation,
  the initial witness, and exact singular-value transfer.
- Source-convention stress: passed for Gaussian, product-Haar, `SO(r)` metric,
  raw coefficient, and physical conventions.
- Object and residual stress: passed; `S_0=LQE` and the physical bridge are
  equalities, B08 uses exact `D_r`, `Dhat_0` cancels exactly, and the sole
  endpoint residual is quantitatively absorbed.
- Entry and boundary stress: passed at `k=r+1`, maximal `k`, `d=0`, both
  determinant components, worst ellipticity, projection energy `r/2`, zero
  path, maximal path, and zero conditional path probability.
- Accumulation and noncircularity: passed; the only repeated quantity has the
  explicit finite tail-sum budget, and no generated conclusion produces its
  own hypothesis.
- Dependence/mode and baseline stress: passed; no hidden horizon, target,
  internal-shape, or unconditional-probability upgrade appears.

No theorem-contract change or same-setting sketch repair is indicated. A
future local proof failure would be new evidence and should then be routed at
the smallest justified level; it is not an existing defect in this diagnostic.

## Review Rationale

`global_proof.md` is a detailed and faithful theorem-level diagnostic for
accepted sketch attempt 10. It maps all 15 steps, exposes legal generated-output
flows and exact raw-to-target bridges, gives a concrete finite-variation
closure, records source conventions and boundary stresses for the product-Haar
route, and leaves only derivations under unchanged step interfaces. The
smallest sound outcome is therefore `ACCEPTED` with no retry target.
