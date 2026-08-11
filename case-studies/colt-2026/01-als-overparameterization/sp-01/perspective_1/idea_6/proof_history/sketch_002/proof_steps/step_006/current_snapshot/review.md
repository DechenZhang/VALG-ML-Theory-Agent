# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 2
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_006/proof.md`
- Frozen SHA-256:
  `eb0be9d68f9e5c38a995fe27d1cb228316753ce0d8c597d607061dd4b03d42f5`
- Accepted dependencies:
  - `perspective_1/idea_6/proof_steps/step_004/proof.md`, frozen SHA-256
    `3c94965198445dfdeb99ea5e46539168f7f3f2f18f0b33a4c3a05d623672f24e`,
    with accepted review SHA-256
    `e06115cb6a90a29a481ea0a736ee07b054872a807e98436a2a64bac0efc47f95`.
  - `perspective_1/idea_6/proof_steps/step_004b/proof.md`, frozen SHA-256
    `23224db02dc7379564f947f410d0b325ce086673567bdec489e87f32fde55339`,
    with accepted review SHA-256
    `07cdd936f91f243cbf983c3bf22b8081cf9e9d19569adfac97632ea93fea12c6`.
  - `perspective_1/idea_6/proof_steps/step_005/proof.md`, frozen SHA-256
    `e6ed7fde93e2f31d0907174c9c1bca93260ba902da11681474dce0deb2e257e9`,
    with accepted review SHA-256
    `c1011300ce700063a58c2b8143e945f1fe9710183b650ffb7a22f4b4f2612ce5`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: normalized selected-state column and factor control

- Statement fidelity: The lemma states the exact selected-state dual
  decomposition, positive diagonal, initial off-diagonal column branch,
  unit-norm diagonal correction, and `H_MB_M` column mass required by the
  sketch row.
- Proof validity: The repaired statement defines
  `H_M=I+F_M` and the induced Gram-defect bounds before use.  The expansion
  correctly uses `|e^T H_M e|<=(1+q)chi^2` for the full quadratic term and
  `|e_j^T F_M e|<=q chi` for the off-diagonal cross term.  Orthogonal
  projection, positivity, division by `a+1`, and the numerical
  `|a-1|<=q_*` bound are valid.  The subsequent column estimate uses
  `H_M=I+F_M` consistently and does not assume a row coefficient bound.
- Cited-result and assumption audit: `E_sm`, `E_cert_eq`, `E_cluster`, and
  `E_gauge` are accepted derived inputs.  The accepted dependencies supply
  unit columns, Gram row/column masses, the perpendicular certificate part,
  the positive chart branch, and the denominator interface.  No generated
  row closure or later ALS invariant is treated as an assumption.
- Rigor checklist: The target permutation is proof-only, all selected
  columns are quantified, `N_M` is orthogonal to the target span, and the
  constants retain the fixed `q_*` and `tau_r` scales.  The formerly
  ambiguous Gram-defect notation is now explicit.
- Local adversarial test: With `F_M=H_M-I`, an off-target vector has
  `e_j^T H_M e=e_j^T F_M e`, while its full quadratic form is bounded by the
  spectral norm of `H_M`; the two bounds used in the proof remain valid.
- Contribution to target step: Supplies the dimension-free factor-column
  control and diagonal defect used by the column root and row absorption.
- Verdict: PASS
- Repair direction: None.

### unit_002: entrywise dual residual transfer

- Statement fidelity: The lemma gives the exact normalized projected residual
  entry bound and both induced row and column masses at the required
  `2 tau_r` and `2r tau_r` scales.
- Proof validity: The dual-row Euclidean norm follows from the diagonal of
  `H_M^{-1}`, the accepted `33/32` denominator upper bound is applied to the
  correct residual column, and the numerical factor is strictly below 2.
  Summing the entrywise estimate separately over one column and one row
  avoids an `r^2 tau_r` loss.
- Cited-result and assumption audit: The residual norm and denominator
  margins are accepted outputs of `E_cert_eq`/`E_gauge`; realized Gram
  invertibility is supplied by `E_sm`.  No unproved event or coefficient
  bound is introduced.
- Rigor checklist: Positivity of `lambda_j`, mode and index quantifiers,
  Euclidean residual mode, and induced-norm mode are explicit.
- Local adversarial test: A residual concentrated in one dual row and a
  residual spread across all selected columns both obey the displayed
  entrywise bound and the two separate `r`-term sums.
- Contribution to target step: Fully supplies `E_row_residual`.
- Verdict: PASS
- Repair direction: None.

### unit_003: small-root selected-state column bootstrap

- Statement fidelity: The proposition targets the accepted explicit
  quadratic inequality, selects its small branch from the inherited chart,
  and exports the full column coefficient error.
- Proof validity: Applying the true dual to the exact same-state equation
  gives (11).  The denominator floor, weight ratio, column Hadamard bound,
  and residual-column mass yield (12).  The polynomial and discriminant are
  expanded correctly; `P(32 omega)<0`, `0<32 omega<1/256<x_+`, and the
  inherited `chi<1/256` branch imply `chi<=32 omega`.  The diagonal defect
  and `E_col<=33 omega<=64 omega` arithmetic is valid.
- Cited-result and assumption audit: The only inputs are the accepted
  dependencies and units 001--002.  The initial small branch comes from
  `step_005`'s selected chart, not from the desired conclusion.
- Rigor checklist: Root signs, strict branch separation, fixed numerical
  values, `r tau_r=q_*^2/10000`, and the conditional probability mode are
  explicit.  No hidden continuity or monotonicity argument is used.
- Local adversarial test: The large root is above `1/32`, so the accepted
  `1/256` chart excludes it; the residual reserve is added once per column.
- Contribution to target step: Proves `E_col` at the required
  `O(q_*^2+r tau_r)` scale.
- Verdict: PASS
- Repair direction: None.

### unit_004: spatial row closure

- Statement fidelity: The proposition states the exact row recurrence,
  self-coefficient threshold, and full induced row error required by the
  sketch.
- Proof validity: Equations (20)--(21) correctly bound, respectively, the
  off-diagonal row mass and the largest off-diagonal entry of `H_MB_M`.
  Summing (11) uses the valid
  `sum_j |x_j y_j| <= ||x||_infty ||y||_1` estimate, giving
  `widehat eta <= (32/31)[1.01 a(q_*+2 widehat eta+2q_*^2)+2r tau_r]`.
  The coarse replacements yield (17), the coefficient of the self term is
  below `1/8`, and the finite residual reserve gives
  `widehat eta<6q_*^2` and `E_row<=128 omega`.
- Cited-result and assumption audit: The row proof uses only unit_002's
  per-entry residual source, unit_003's column branch, the exact same-state
  equation, and the accepted denominator/weight margins.  It does not use a
  pre-existing row bound or a future basin invariant.
- Rigor checklist: The factor `lambda_ell/lambda_j` is bounded by `Gamma`,
  the denominator is bounded below uniformly in `M,j`, the row and maximum
  estimates retain their respective index scopes, and all absorption
  inequalities display their constants.
- Local adversarial test: Even when one factor sequence is sparse and the
  other saturates its row mass, the `l_infinity`-by-`l_1` product is at most
  `a b`; no extra `a` or hidden `r` factor is required.
- Contribution to target step: Fully produces `E_row` after the independent
  column and residual interfaces.
- Verdict: PASS
- Repair direction: None.

### unit_005: finite selected-state scope and baseline

- Statement fidelity: The claim records finite-pool scope, producer-consumer
  order, and exact orthogonal equal-weight stationary recovery, including
  zero coefficient and residual errors.
- Proof validity: The selected pool is finite and all equations use the same
  stored directions.  At the exact stationary orthogonal component,
  `H_M=I`, `B_M=I`, `D_M=lambda_j`, and the certificate residual is zero, so
  `Z_M=0`; finite nonstationary transients retain their `2r tau_r` charge.
- Cited-result and assumption audit: The producer chain uses only accepted
  event outputs and this step's named units; no quotient refresh or later
  active ALS state is consumed.
- Rigor checklist: The claim distinguishes stationary baseline behavior from
  finite certificate tolerance and records the conditional pathwise scope.
- Local adversarial test: At `q_real=0` away from stationarity the proof does
  not erase the finite residual budget; only the exact stationary state is
  assigned zero residual.
- Contribution to target step: Closes generated-output provenance, finite
  accumulation, and baseline invariance.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

All independent nontrivial claims are represented by units 001--005 and are
used through theorem-style labels in the target assembly.  The repaired row
closure explicitly states the `l_infinity`-by-`l_1` inequality that connects
(20) and (21).  No hidden row invariant, generated basin condition, later ALS
claim, or unreviewed citation appears in the prose or calculations.

## Target Claim Audit

The proof establishes the exact target-step interfaces: the quadratic
small-root branch gives `chi<=32 omega`; dual residual transfer gives every
entry at most `2 tau_r` and both induced residual masses at most `2r tau_r`;
the row absorption gives `E_row<=128 omega`; and the column assembly gives
`E_col<=64 omega`.  The assumptions are conditional only on accepted derived
events, the selected denominator margins are inherited, and no quantifier,
norm, probability, horizon, or target object is changed.

## Explicit Rate Audit

- Exposed variables are `r`, `q_real`, `q_*`, `Gamma`, `lambda_j`, `d_{M,j}`,
  `tau_r`, `chi`, `omega=q_*^2+r tau_r`, the entrywise residual, and the
  induced row/column l1 norms.
- Hidden constants are restricted to fixed numerical `q_*`, the accepted
  `31/32` and `33/32` margins, and `Gamma<=1.01`; they do not depend on
  `n`, `r`, `k`, `kappa_0`, `rho`, the base instance, confidence parameters,
  `epsilon`, later ALS states, or an unlisted condition number.
- The proof is pathwise conditional on the accepted finite event chain, has
  finite selected-state horizon, and uses ambient Euclidean residual,
  target-dual entrywise, and induced row/column l1 norm modes.
- `tau_r=q_*^2/(10^4r)` is exposed, so `r tau_r=q_*^2/10^4`; residual terms
  are summed once per row or column, with no hidden `r^2 tau_r` charge or
  probability conversion.
- The exact orthogonal equal-weight stationary specialization gives zero
  coefficient and residual errors, preserving the baseline rather than
  replacing it by an `O(omega)` floor.

## Notation Surface Audit

The proof-local helpers `A_M`, `E_M`, `N_M`, `Z_M`, `chi`, `delta`, `t_col`,
and `widehat eta` are classified as proof-local or appendix-local, while the
minimal downstream interfaces `E_col`, `E_row_residual`, and `E_row` are
exported.  `H_M`, `F_M`, `L_M`, and `B_M` are defined from the realized target
matrices before use; `F_M=H_M-I` has a single consistent meaning.  Constants,
radii, and thresholds are inherited or proved rather than freely chosen.

## Target-Step Assembly Audit

The accepted same-state equation and selected chart feed unit_001; unit_002
independently transfers residuals; unit_003 combines those interfaces in the
off-diagonal dual equation and selects the small root; unit_004 consumes the
column result and performs the corrected spatial row absorption; unit_005
records finite scope and the baseline.  The named local results jointly imply
every field of the exact `step_006` sketch row, with no dependency cycle or
archived artifact used as proof authority.

## Review Rationale

`ACCEPTED` is the smallest sound status for the frozen attempt-2 artifact.
The only defects identified in attempt 1 were local: the Gram-defect notation
and the row-Hadamard factor.  Attempt 2 defines `F_M=H_M-I`, uses the full
`H_M` quadratic bound correctly, and derives the row recurrence from the
valid `a b` product estimate with explicit `1/8` absorption.  All accepted
dependencies remain current and adequate, the exact target and rates are
preserved, and the finite orthogonal baseline is not weakened.  No retry is
needed.
