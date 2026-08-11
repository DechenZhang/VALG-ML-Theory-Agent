# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: `step_001`
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_001/proof.md`
- Frozen SHA-256:
  `83ce9b561ae357ace3afd0f3be937b154643ab0b4b008b14bd16a6aabf7b9764`
- Dependency artifacts: None.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Simultaneous smoothing concentration ledger

- Statement fidelity: The lemma constructs the exact raw event `E_0` required
  by the sketch row from only `assump:base-scale` and
  `assump:gaussian-smoothing`. It exposes directional, norm-square, and
  independent cross-quadratic bounds in the current normalized-column
  notation and does not assume any realized geometry.
- Proof validity: Scaling the stated scalar Gaussian, chi-square, and
  independent bilinear bounds by the deterministic base-column norms gives
  exactly `2a_L`, `a_N+2a_Q+2a_B`, and `2a_Q+2a_B`. The `3r^2`, `3r`, and
  `3 binom(r,2)` union counts are correct; the resulting failure probability
  is at most `delta_sm/3 + delta_sm/3 + delta_sm/(3r) <= delta_sm` for
  `r>=3`.
- Cited-result and assumption audit: Each elementary concentration fact is
  restated with its current objects and (for the bilinear term) its mgf. The
  scale bounds use precisely the deterministic norm interval and the
  mutually independent Gaussian perturbations supplied by the two listed
  assumptions. No archived proof or external theorem is used.
- Rigor checklist: The event quantifies over all modes and all required
  column pairs, including same-column directional projections. The pair
  bound uses independence only where it is available, and the final union
  bound does not assume independence among event classes. The logarithm is
  positive for the full setting range `r>=3`, `0<delta_sm<1`.
- Local adversarial test: Unequal base-column norms only reduce the relative
  Gaussian scales; maximal allowed norm and bilinear fluctuations are kept
  explicitly. The argument remains valid for arbitrary `n` and confidence
  values satisfying the later primitive margin.
- Contribution to target step: Supplies the sole probability-bearing event
  from which all static smoothing geometry is derived.
- Verdict: PASS
- Repair direction: None.

### unit_002: Norm retention, normalization envelope, and weight balance

- Statement fidelity: The lemma consumes the named `E_0` conclusion and the
  exact primitive scale/weight assumptions, and exports the required realized
  norm floor, a common normalization envelope, and `Gamma<=1.01`.
- Proof validity: The chi-square envelope and the second smoothing margin
  give `||z_{Mj}||<1/2`, so the reverse triangle inequality proves the
  unnormalized norm floor. The identity
  `d_{Mj}^2=1+2<bar m_{Mj},z_{Mj}>+||z_{Mj}||^2` yields the displayed
  `h_sm` interval. The separate inequalities for `4a_L+2a_Q` and
  `a_N+2a_B` have slack at `q_*=1/4096`; the extremal product comparison and
  elementary inverse bounds then give the stated strict `Gamma<1.01`.
- Cited-result and assumption audit: Every random input is the earlier
  theorem-style ledger lemma; the only primitive inputs are the stable
  setting assumptions named in the statement. All constants and the
  denominator positivity are derived, not assumed.
- Rigor checklist: The lower and upper `d^2` bounds are uniform over modes
  and columns, and the max/min product comparison preserves the base weight
  ratio `801/800`. The inequalities `(1-h)^{-3} <= (1-3h)^{-1}` and
  `(1-3h)^{-1} <= 1+6h` are used only in their stated small-`h` regime.
- Local adversarial test: Taking one component at all three upper norm
  endpoints and another at all three lower endpoints is the worst case for
  `Gamma`; the displayed numerical slack still closes. The zero-perturbation
  specialization gives exact normalization and weight balance.
- Contribution to target step: Supplies norm retention and the realized
  weight-ratio field consumed by the static event and downstream steps.
- Verdict: PASS
- Repair direction: None.

### unit_003: Normalized realized Gram row control

- Statement fidelity: The lemma proves the exact `q(G_M)<=q_*` interface in
  every realized mode under the cumulative base Gram assumption, smoothing
  margin, and the explicitly named concentration/normalization results.
- Proof validity: The four-term expansion of each off-diagonal inner product
  gives the row ledger with the correct two directional, centered quadratic,
  and bilinear contributions. Equation (19) retains the `L_sm/n` term via
  `a_B=a_L^2`, and the denominator bound from the named norm/weight lemma is
  valid because `d_{Mj}d_{Mell}>=1-h_sm`. The final division leaves strict
  slack below `q_*`.
- Cited-result and assumption audit: The base row mass is used only through
  `assump:cumulative-gram`; `E_0` and the positive normalization denominator
  are supplied by named prior local lemmas. No realized Gram or conditioning
  event is promoted to a primitive assumption.
- Rigor checklist: Row and mode quantifiers are retained, signs are handled
  by absolute values, and the finite row sum uses `(r-1)` before the explicit
  `r` relaxation. The denominator remains positive throughout the stated
  margin regime.
- Local adversarial test: Concentrating all allowed base interference in one
  row and aligning all perturbation signs is covered by the absolute row
  ledger; the fixed numerical reserve still gives `q(G_M)<q_*`.
- Contribution to target step: Produces `q_real<=q_*`, the structural input
  for all cyclic pair-Gram and proposal arguments.
- Verdict: PASS
- Repair direction: None.

### unit_004: Cyclic Khatri--Rao spectral floors

- Statement fidelity: The lemma establishes the exact minimum-eigenvalue
  floor `1-q_*^2` for each of the three cyclic held pairs.
- Proof validity: The Khatri--Rao Gram identity is applied to the realized
  unit-column matrices. The product off-diagonal row mass is bounded by the
  product of the two previously proved row masses, and the stated symmetric
  Gershgorin bound gives the claimed floor.
- Cited-result and assumption audit: Both finite-dimensional identities are
  restated in current notation, with unit diagonals and row bounds discharged
  by the preceding named local lemma. No unreviewed citation or dependency
  is imported.
- Rigor checklist: The argument covers arbitrary signs and all three mode
  choices; symmetry and positive diagonal are explicit, so the singular
  boundary is excluded by the proved floor.
- Local adversarial test: A row with all admissible off-diagonal mass in one
  pair, including opposite signs across the two factors, remains covered by
  the absolute-product bound.
- Contribution to target step: Supplies the exact positive pair-Gram
  conditioning interface required downstream.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial claim is hidden outside the local lemma map. The
Gaussian ledger, normalization/weight transfer, normalized Gram expansion,
and Khatri--Rao spectral step each have a named theorem-style local result.
The target assembly cites those results explicitly and introduces no
trajectory, initialization, basin, or target-label condition.

## Target Claim Audit

The proof establishes the exact sketch-2 `step_001` claim under the five
listed primitive assumptions and no dependencies. A single event measurable
with respect to the once-drawn smoothing perturbations has probability at
least `1-delta_sm` and implies the realized norm floor, `q_real<=q_*`,
`Gamma<=1.01`, and all three cyclic Khatri--Rao Gram floors `1-q_*^2`.
The stronger intermediate numerical slack does not change the public
interface, quantifier order, or probability mode.

## Explicit Rate Audit

The rate-bearing interface passes. The proof exposes `n`, `r`, `kappa_0`,
`rho`, and `delta_sm`, with `L_sm=log(9r^2/delta_sm)`, and separately keeps
the linear scale `kappa_0 rho sqrt(L_sm/n)`, centered quadratic scale
`kappa_0^2 rho^2 sqrt(L_sm/n)`, deterministic normalization scale
`kappa_0^2 rho^2`, and the bilinear `L_sm/n` correction. Row factors and all
finite-union counts are displayed. Constants are numerical and have no
dependence on the base triple, generated condition numbers, initialization,
horizon, accuracy, or the other confidence parameter. The probability mode
is high probability over the static smoothing draw, the horizon is static,
and the norm modes (column norm, Gram row mass, weight ratio, and minimum
eigenvalue) are explicit. All absorption inequalities are shown in
equations (2), (11)--(12), and (19). The orthogonal equal-weight
zero-perturbation specialization preserves the exact baseline rather than
introducing an error floor.

## Notation Surface Audit

The mode-unifying column aliases and concentration scales are appendix- or
proof-local and are direct expressions in setting notation. `E_sm` is the
only public-facing generated object. Constants, events, denominators, and
normalization factors are defined before use or proved by named local units;
there is no unexplained helper object or notation drift.

## Target-Step Assembly Audit

The ledger lemma produces `E_0` with the required probability. The named
normalization/weight and Gram lemmas derive all remaining static fields on
that same event, and the named Khatri--Rao lemma derives all three spectral
floors. Thus `E_0 subseteq E_sm` and the probability is transferred without a
second event or hidden intersection loss. The assembly matches the exact
accepted sketch-row output.

## Review Rationale

`ACCEPTED` is the smallest correct status: each local unit is self-contained
under the permitted assumptions or an explicitly named earlier unit, all
probability and numerical inequalities close with slack, and the public
target is proved without changing the sketch interface. No local repair,
dependency reroute, or sketch revision is required.
