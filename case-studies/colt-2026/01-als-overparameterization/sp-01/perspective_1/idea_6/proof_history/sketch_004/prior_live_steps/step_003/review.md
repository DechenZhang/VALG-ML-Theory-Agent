# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: `step_003`
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_003/proof.md`
- Frozen SHA-256:
  `9b9b5da413f962ae60e1c15e0a5df43be610295e4be0ae0103cd463339e9e317`
- Accepted dependency:
  `perspective_1/idea_6/proof_steps/step_002/proof.md`, frozen SHA-256
  `401650914ed192f87bedf38edd9b10789c41f92cb8ff3519a50e6fbf486ac77b`,
  with matching review SHA-256
  `8e0f16c6408d2b31063fd79f635cf1e4ac7b7a9e65ade86c9dbedbdf62672b5b`
  and `Step-Review Status = ACCEPTED`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Rank-window intensity

- Statement fidelity: The lemma establishes the exact requested
  `k p_win>=8 log r` interface under `assump:subquadratic-rank`, using only
  the accepted sketch-2 `step_002` lower envelope. The stronger intermediate
  `16 log r` bound is harmless and does not change the target.
- Proof validity: The ceiling gives
  `k>=C_rank r^(5/3)(log r)^(5/2)`. Multiplication by
  `c_all r^(-5/3)(log r)^(-3/2)` leaves
  `C_rank c_all log r`, and the declared universal choice
  `C_rank>=16/c_all` gives the displayed inequality for every `r>=3`.
  No asymptotic term or confidence factor is absorbed.
- Cited-result and assumption audit: The dependency is restated by its exact
  proof/review hashes and contributes only the uniform probability lower
  bound. `c_all` is universal (including the finite-small-r minimum in the
  accepted dependency), so the design-constant choice introduces no
  instance- or confidence-dependent assumption.
- Rigor checklist: The rank, target, fixed-instance, and `r>=3` quantifiers
  are retained; the logarithm is positive; the existing `r<k<=n` domain is
  not inferred or dropped.
- Local adversarial test: At `r=3` and at equality
  `C_rank=16/c_all`, the displayed inequalities still hold. A very small
  universal `c_all` only increases the one-time universal rank constant.
- Contribution to target step: Supplies the coupon intensity consumed by the
  fixed-target miss calculation.
- Verdict: PASS
- Repair direction: None.

### unit_002: Fixed-target independent-slot miss bound

- Statement fidelity: The lemma proves the exact per-target event that all
  `k` slots miss, conditional on one fixed realized `T` in `E_sm` and one
  proof-only target `j`, with the required `r^(-8)` bound.
- Proof validity: For fixed `T,j`, each event is a function of the raw triple
  in one slot. Primitive slot independence therefore gives the product
  `(1-p_(win,j)(T))^k`; the elementary inequality
  `(1-x)^k<=exp(-kx)`, the lower envelope, and unit_001 yield
  `exp(-8 log r)=r^(-8)`. No independence between different target labels is
  used.
- Cited-result and assumption audit: The accepted dependency supplies the
  event family and targetwise probability. The exponential inequality is
  restated and proved locally. Conditioning order is fixed-instance then
  fixed-target, exactly as required by `assump:random-initialization`.
- Rigor checklist: Probability mode is conditional over one finite proposal
  tape; the targetwise lower bound is uniform; there is no stopping-time,
  smoothing, or restart conversion hidden in the calculation.
- Local adversarial test: Arbitrary dependence among `E_win(i,j)` and
  `E_win(i,j')` within a slot is allowed. Even if a target only attains the
  lower envelope, the same miss bound follows.
- Contribution to target step: Provides the only independence calculation
  needed for the all-target coupon bound.
- Verdict: PASS
- Repair direction: None.

### unit_003: All-target coverage and label erasure

- Statement fidelity: The proposition defines the proof-only event
  `E_cov=intersection_j union_i E_win(i,j)`, proves its conditional
  probability at least `1-r^(-7)>=1/2`, defines the uniform envelope `p_0`,
  and discharges the no-label algorithm clause.
- Proof validity: The complement is a finite union of target-miss events, so
  the union bound and unit_002 give `Pr(E_cov^c|T)<=r*r^(-8)=r^(-7)` without
  cross-target independence. Since `r>=3`, the lower bound exceeds one half.
  The pathwise procedure audit correctly distinguishes analytical
  conditioning on `E_cov` from an observable algorithmic gate.
- Cited-result and assumption audit: The setting-defined proposal,
  certification, score, and graph operations use only observable quantities;
  the accepted dependency supplies only the proof event family. No target
  factor, target label, or latent event is promoted to a primitive input.
- Rigor checklist: The infimum defining `p_0` is taken only after a bound
  uniform over every fixed `T` in `E_sm`; target and slot quantifiers are
  preserved, and the finite union is valid under arbitrary cross-target
  dependence.
- Local adversarial test: One slot may witness many targets, or all target
  events may be perfectly dependent; the union bound remains valid. The
  smallest rank `r=3` still gives `1-r^(-7)>1/2`.
- Contribution to target step: Exports exactly `E_cov` and `p_0` for the
  downstream covered-tape chain and restart amplification while preserving
  label-free execution.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is hidden outside the three-unit map.
Rank cancellation is isolated in
`Lemma~\ref{lem:p1-i6-s2-step003-intensity}`; the fixed-target product and
exponential conversion are isolated in
`Lemma~\ref{lem:p1-i6-s2-step003-fixed-target-miss}`; and the target union,
uniform `p_0`, and pathwise label audit are isolated in
`Proposition~\ref{prop:p1-i6-s2-step003-coverage}`. The setting procedure is
used only for the explicit label-erasure check.

## Target Claim Audit

The frozen proof matches the accepted sketch-2 row exactly. For every fixed
realized tensor in `E_sm`, it proves `k p_win(T)>=8 log r`, defines the
all-target coverage event, and obtains
`Pr(E_cov|T)>=1-r^(-7)>=1/2`, hence `p_0>=1/2`. The proof keeps the nested
instance-then-initialization probability mode, does not assert cross-target
independence, and does not make target labels available to SC-JEP-ALS.

## Explicit Rate Audit

The exposed variables are `r`,
`k=ceil(C_rank r^(5/3)(log r)^(5/2))`, the targetwise probabilities,
`E_cov`, and `p_0`. The only hidden comparison constant is the accepted
universal `c_all`; `C_rank>=16/c_all` is fixed once and has no dependence on
`n`, `r`, `kappa_0`, `rho`, the base triple, the realized tensor,
`delta_sm`, `delta_init`, `epsilon`, a proposal horizon, or a generated
condition number. The proof displays all cancellation, exponential, and
finite-union inequalities. Its horizon is the static proposal initialization
stage, and its probability mode is conditional on each fixed good instance.
No auxiliary tolerance, norm-mode upgrade, or restart confidence is imported.
The orthogonal equal-weight specialization inherits the accepted window rate
and the same union calculation, so no residual floor is introduced.

## Notation Surface Audit

`E_win`, `p_(win,j)`, `p_win`, and `c_all` are accepted dependency objects.
`E_cov` and `p_0` are the only new public-facing outputs. Fixed `T` and `j`,
the target-miss intersections, and the elementary exponential inequality are
proof-local; the rank threshold is an appendix-local universal design choice.
All generated objects are proved before export, and no setting symbol is
rebound or hidden behind an unexplained constant.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls and exported interface | Defect / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `k p_win>=8 log r` | Quantitative rank specialization for coverage | Direct multiplication of accepted window lower bound and setting rank | `assump:subquadratic-rank` + accepted `step_002` | Exact powers cancel; stronger `16 log r` is shown | `k` and `p_win` use the setting's raw `r` and natural-log convention | `k>=C_rank r^(5/3)(log r)^(5/2)`, `p_win>=c_all r^(-5/3)(log r)^(-3/2)` | Raw controls are `r,C_rank,c_all`; exported scalar intensity has no latent object or residual conversion | Finite static arithmetic; no iterative accumulation | Primitive rank -> unit_001 -> unit_002/003 | Unit_001 produces intensity; unit_002 and unit_003 consume it | `r=3` and equality threshold checked; no entry-state mechanism applies | `step-local` | None |
| Fixed-target miss and `E_cov` | Generated finite-horizon coverage event / one-run success source | Independent-slot product, `(1-x)^k<=e^{-kx}`, finite target union | `assump:random-initialization` + accepted `step_002` | Exact event family and conditional mode are preserved | Raw Gaussian triples are independent across slots after fixed `T`; no cross-target convention is assumed | `Pr(miss_j|T)=(1-p_(win,j))^k<=r^{-8}` and `Pr(E_cov^c|T)<=sum_j r^{-8}` | Raw controls are slot count, targetwise probabilities, and finite target index; exported `E_cov,p_0` use the same target-relative events consumed downstream; no surrogate/object transfer is claimed | Finite union only; no all-time or recursive accumulation | `step_002 -> unit_001 -> unit_002 -> proposition` without assuming coverage | Proposition produces `E_cov,p_0`; later `step_004`, `step_005`, and `step_010` consume them | Arbitrary perfect dependence across target labels and `r=3` are covered; static stage has no iterative entry | `step-local` | None |
| Proof-only target labels | Generated-output/procedure-fidelity obligation | Pathwise inspection of the setting-defined observable procedure | Setting procedure, not a new assumption | The proof event uses labels analytically while no executed operation receives them | Raw operations are exactly Jacobi, residual, score, and graph definitions in `setting.md` | Conditioning restricts proposal tapes but does not alter their observable execution; relabeling leaves the execution invariant | Exported event is an analysis certificate only; no latent factor or label enters an algorithmic input or target object | Static pathwise restriction; no accumulation | Procedure definition -> proposition's label audit | Proposition records label erasure; downstream steps consume only the proof event, not labels | Simultaneous latent relabeling and shared-slot witnesses leave the procedure unchanged | `step-local` | None |
| Baseline `q_real=0,Gamma=1` coverage specialization | Baseline invariance / zero-floor check | Accepted `step_002` window event and same finite coupon arithmetic | Accepted derived window source | Zero competitor shifts preserve the exact event rate and union bound | Orthogonal raw coordinates and target-relative ratios are the setting's baseline objects | No perturbation term is absorbed; the same `r^{-8}` miss and `r^{-7}` union bounds apply | Produced and consumed objects are the original raw proposal/coverage objects; no transformed residual is used | Deterministic specialization, no accumulated defect | Orthogonal specialization -> accepted `step_002` -> this proposition | Baseline check is local; `E_cov,p_0` remain the downstream outputs | Exact orthogonal case has zero leakage; no claim that a random slot is aligned before its window event | `step-local` | None |

## Target-Step Assembly Audit

The accepted `step_002` proof/review supplies the exact per-slot event,
targetwise probabilities, and universal lower constant. Unit_001 converts that
rate to the declared rank intensity; unit_002 converts it to a fixed-target
miss bound using only cross-slot independence; and unit_003 applies the finite
target union and records label erasure. These named results jointly imply every
field of the accepted `step_003` row, with no unreviewed bridge or changed
dependency.

## Review Rationale

`ACCEPTED` is the smallest controlled outcome. The reviewed artifact is the
exact frozen sketch-2 proof, its dependency hash and review status are current,
all local units are self-contained and valid, the generated `E_cov,p_0` flow is
noncircular and finite-horizon, and the rate, quantifier, dependence, label,
baseline, and boundary audits pass. No local repair or sketch/interface change
is required.
