# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_007/proof.md`
- Frozen SHA-256:
  `414d67bce6b15791c1e459318b97c010b0539cb2ad8d439b4afe0c6107183fb3`
- Accepted dependencies:
  - `perspective_1/idea_6/proof_steps/step_005/proof.md`, frozen SHA-256
    `e6ed7fde93e2f31d0907174c9c1bca93260ba902da11681474dce0deb2e257e9`,
    with accepted review SHA-256
    `c1011300ce700063a58c2b8143e945f1fe9710183b650ffb7a22f4b4f2612ce5`.
  - `perspective_1/idea_6/proof_steps/step_006/proof.md`, frozen SHA-256
    `eb0be9d68f9e5c38a995fe27d1cb228316753ce0d8c597d607061dd4b03d42f5`,
    with accepted review SHA-256
    `35d8e18e47b025dbbdc61a611a2bc364b063e2ff89586151a74ab1ec6719abb8`.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_007

## Blocking Issues

1. **Setting symbol `a_j` is rebound to a scalar ratio (unit_003, lines
   235--238, and all uses through the unit-004 expansion).**  In
   `setting.md`, `a_j` is the realized ambient mode-A column used to define
   the tensor and `lambda_j`; the proof instead defines
   `a_j=bar(theta)_j/lambda_j` and subsequently uses it in `alpha_j`,
   `beta_j`, `s_j`, and the four residual classes.  This violates the
   notation/assumption provenance contract and makes the target expansion
   ambiguous under the binding setting notation.  Rename the scalar ratio
   consistently (for example, `rho_j:=bar(theta)_j/lambda_j`) and update
   `alpha_j`, `beta_j`, `s_j`, equations (16)--(17), (25), (29)--(36), the
   assembly text, and the notation notes.  This is a local textual repair;
   the displayed inequalities and all downstream interfaces can be retained
   unchanged.  A fresh proof artifact and fresh step review are required
   after the rename.

## Per-Lemma Audit

### unit_001: selected target-projector decomposition

- Statement fidelity: PASS.  The unit proves the exact decomposition
  `bar P_M=G_M(I+C_M)+N_M`, orthogonality `G_M^T N_M=0`, the accepted
  row/column coefficient bounds, and the columnwise `tau_r` perpendicular
  budget required by the sketch.
- Proof validity: PASS.  The identity follows from the true target-space
  projector `L_M^T`; the column norm estimate uses the accepted Gram bound and
  the explicit `tau_r<10^{-4}omega` comparison.  No row estimate is inferred
  from a column estimate.
- Cited-result and assumption audit: PASS.  The `E_sm`, `E_gauge`, and
  step-006 conclusions are accepted generated outputs and are restated before
  use.  No later basin state or local conditional invariant is assumed.
- Rigor checklist: PASS.  The projection is ordinary Euclidean projection,
  the index scopes are explicit, and the numerical constants are uniform in
  `r`, `n`, and the weight scale.
- Local adversarial test: PASS.  Separating the target-span and perpendicular
  terms prevents a hidden ambient-radius or rank factor, including at the
  finite `q_real=0` transient.
- Contribution to target step: PASS.  Supplies the exact `B_M`/`N_M`
  interface consumed by the scalar, quotient, and residual units.
- Verdict: PASS
- Repair direction: None.

### unit_002: best scalar and realized-target norm

- Statement fidelity: PASS.  The unit targets the observable barred score,
  its relative error, and the lower and upper realized-tensor norm bounds.
- Proof validity: PASS.  `Q_M=H_MB_M` gives the diagonal and off-diagonal
  column bounds; the realized-basis score expansion uses one pointwise factor
  and two column sums, yielding the stated `8 Gamma q_*^3` cross-term.  The
  three-mode Hadamard Gram has off-diagonal mass at most `q_*^3`, so the
  displayed `1+-q_*^2` norm bounds are valid conservative bounds.
- Cited-result and assumption audit: PASS.  The score-sign/product gauge and
  coefficient bounds come from accepted step 005/006 outputs, while positivity
  of `lambda_j` is inherited from the setting's nonzero realized columns.
- Rigor checklist: PASS.  The expansion is same-state and target-permuted,
  `Gamma` is displayed rather than hidden, and the Gershgorin argument has the
  correct quadratic-form orientation.
- Local adversarial test: PASS.  Saturating `q_*` and `Gamma=1.01` still leaves
  the scalar and norm margins; the exact orthogonal limit gives equality.
- Contribution to target step: PASS.  Supplies the best-scalar ratio and the
  denominator used in the relative Frobenius transfer.
- Verdict: PASS
- Repair direction: None.

### unit_003: balanced quotient coordinates and kappa cancellation

- Statement fidelity: PASS after resolving the notation issue below.  The
  product-one equal-norm gauge, common represented-product log coordinate,
  normalized target-span coefficients, and extended entry interface match the
  setting's `d_Q` convention and the sketch's `E_quotient` output.
- Proof validity: PASS after a scalar-alias rename.  The cube-root and log
  estimates follow from the unit-002 ratio bound.  The normalization
  `nu_{M,j}=||G_MB_M(:,j)||` is positive by the exact orthogonal decomposition;
  the resulting `tilde C_M` bounds correctly retain the small `tau_r^2`
  correction.  The extended norm keeps the actual `N_M` fields visible and
  does not claim contraction on an unrestricted tube.
- Cited-result and assumption audit: PASS.  All ingredients are accepted
  same-initialization outputs; the product-one balancing is a representation
  identity and not a new theorem assumption.
- Rigor checklist: REVISE_STEP.  The algebra and rate are sound, but the
  scalar ratio is named `a_j`, shadowing the setting-defined realized column
  `a_j`.  The proof must use a fresh scalar alias consistently before it can
  be consumed as a binding theorem artifact.
- Local adversarial test: PASS.  With the ratio renamed, the `nu` correction is
  `O(tau_r^2)` and cannot create a hidden `kappa_0` or `r` factor; the exact
  stationary case gives `tilde C_M=0` and `s=0`.
- Contribution to target step: REVISE_STEP only for the notation repair; the
  intended quotient interface and numerical `128 omega` bound are otherwise
  established.
- Verdict: REVISE_STEP
- Repair direction: Rename the scalar ratio (and its derived `alpha`, `beta`,
  and log-register formulas) without changing the proof or interface.

### unit_004: four-class tensor residual decomposition

- Statement fidelity: PASS.  The exact scalar/linear/quadratic/cubic
  decomposition is written for the literal initialized tensor and exports the
  original relative Frobenius metric, rather than a surrogate target-span
  metric.
- Proof validity: PASS conditional on the unit-003 alias repair.  The
  one-error and two-error classes follow from mode unfoldings and the stated
  Khatri--Rao operator bounds.  For the cubic class, the row/column controls
  bound `C_M^T H_M C_M`; entrywise `tau_r^2` bounds give the mixed
  parallel/perpendicular design, and the explicit `r tau_r^4` term handles
  the coherent all-perpendicular design.  The numerical budgets sum to
  `224 omega L` and hence to the advertised `512 omega` after the target norm
  lower bound.
- Cited-result and assumption audit: PASS.  The unit uses only the accepted
  projector/coefficient interface and the preceding scalar and quotient units;
  no future ALS state, stability condition, or unlisted condition number is
  imported.
- Rigor checklist: PASS.  The unfolding dimensions match, every `sqrt(r)` is
  retained before normalization, and the weight ratio appears explicitly.
- Local adversarial test: PASS.  The all-perpendicular term is charged as
  `r tau_r^3` rather than silently discarded; at the exact orthogonal
  stationary state all four classes vanish.
- Contribution to target step: PASS after the scalar-alias rename.  It gives
  the required original-metric `E_best` bound and kappa cancellation.
- Verdict: PASS
- Repair direction: None beyond the unit-003 notation repair.

### unit_005: finite scope and exact baseline

- Statement fidelity: PASS.  The claim records finite same-initialization
  scope, producer order, and the exact orthogonal equal-weight stationary
  reduction.
- Proof validity: PASS.  The bars and product-one balancing preserve each
  literal rank-one term, while the perpendicular fields remain charged for a
  finite nonstationary certificate state.
- Cited-result and assumption audit: PASS.  The claim consumes only named
  local/dependency outputs and introduces no later ALS or basin assumption.
- Rigor checklist: PASS.  The deterministic limiting specialization is kept
  distinct from the positive-smoothing probability theorem and from finite
  transient tolerances.
- Local adversarial test: PASS.  The `q_real=0` stationary case gives zero
  residual, but a nonstationary finite certificate is not incorrectly given a
  zero budget.
- Contribution to target step: PASS.  Closes scope and baseline obligations.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

All independent projector, scalar, quotient, norm, four-class, and baseline
claims appear in the five-unit map and are referenced by theorem-style labels
in the assembly.  The Hadamard/operator estimates in the cubic class are
supported by the displayed induced row/column and entrywise bounds, including
the coherent `r tau_r^4` charge.  No hidden basin, recurrence, probability, or
future-state assumption is present.  The only blocking issue is the setting
symbol collision identified above.

## Target Claim Audit

Modulo the required scalar-alias rename, the proof establishes the exact
sketch-row target: the observable best scalar is within `64 omega` relatively,
the product-one quotient coordinates are within `128 omega`, the exact
projector decomposition exports the `48 omega`/`tau_r` entry interface, and the
four residual classes give
`||T-hat T||_F/||T||_F <= 512 omega`.  The lower norm bound uses the same
realized tensor, and the ratio by `lambda_max/lambda_min<=1.01` removes every
absolute `kappa_0` scale.  Quantifiers, conditional pathwise mode, finite
horizon, and baseline scope match the accepted setting and sketch.

## Explicit Rate Audit

- Exposed variables are `r`, `q_*`, `q_real`, `tau_r`, `omega`,
  `lambda_min`, `lambda_max`, `Gamma`, the selected finite pool, the induced
  row/column coefficient masses, the common log-product coordinate, and the
  original Frobenius residual.  `rho_ALS=1/1024` is a fixed downstream
  numerical comparison constant, not a new assumption.
- Hidden constants are numerical only; no dependence on `n`, `k`, `kappa_0`,
  `rho`, confidence parameters, the base triple, labels, or a later ALS state
  is introduced.
- The proof is deterministic conditional on the accepted `E_sm`, `E_gauge`,
  `E_col`, and `E_row` chain, with no probability conversion or all-time
  upgrade.
- The finite horizon is one selected initialization and one tensor expansion;
  all `q_*`, `tau_r`, and `Gamma` absorptions are displayed in equations
  (9), (14), and (23), (30)--(36), including the coherent perpendicular term.
- Norm modes are explicitly separated: ambient Euclidean columns, target-dual
  induced row/column `l1`, quotient log-product, and original Frobenius norm.
- The baseline reduction is exact at the orthogonal equal-weight stationary
  representative and retains finite transient certificate charges.

## Notation Surface Audit

The final artifact correctly distinguishes the setting-aligned `C_M` from the
zero-diagonal helper used inside step 006, and it classifies the projector,
normalization, perpendicular, and residual helpers as local interfaces.  The
blocking defect is the rebinding of setting-defined `a_j` as the scalar score
ratio in unit 003.  Rename that ratio and its derived symbols; no other helper
surface or public `E_best`/`E_quotient` interface needs to change.

## Target-Step Assembly Audit

Accepted step 005 supplies the proof-only permutation, positive barred scalar,
and product-preserving signs.  Accepted step 006 supplies the exact
`B_M`/`N_M` decomposition and row/column/residual bounds.  Units 001 and 002
then establish the projector, score, and target norm; unit 003 gives the
normalized quotient entry; unit 004 gives the four-class original-metric
transfer; and unit 005 closes scope and baseline.  The named units jointly
imply the exact step claim once the local scalar alias is made unambiguous.
No dependency or sketch change is required.

## Review Rationale

`REVISE_STEP` is the smallest sound status.  The numerical derivation,
same-state dependencies, quotient normalization, four residual classes,
target norm comparison, rate bookkeeping, and baseline all pass adversarial
checks.  The single contract defect is local and mechanical but affects the
binding notation throughout units 003--004: a setting-defined realized column
symbol is reused for a scalar ratio.  A fresh `/proof-step step_007` with a
consistent scalar rename, followed by a fresh review of that artifact, is
enough; neither the accepted dependencies nor the sketch interface needs to
change.
