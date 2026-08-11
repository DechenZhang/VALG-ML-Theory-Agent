# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: step_007
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_5/proof_steps/step_007/proof.md`
  (SHA-256 `8c52b69b4685c7e1b73899ba22bc0eea0455cda526609cfec8c849d221ba5c24`)
- Accepted dependencies checked: `step_005/proof.md` and `review.md`, and
  `step_006/proof.md` and `review.md`.
- Frozen producer identity: `Step Proof Status = COMPLETE` and the reviewed
  proof hash matches the frozen producer signal.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: observable best scalar and equal-norm quotient chart

- Statement fidelity: PASS. The proposition proves the exact best scalar for
  each selected unit rank-one direction, gives the product-one sign-equivalent
  initialization, and defines the relative-amplitude quotient norm required by
  the `step_007` sketch row.
- Proof validity: PASS. Unit directions have Frobenius norm one, so expanding
  the scalar quadratic gives the unique minimizer
  `a = <T, d> = bar theta`. The geometric-mean rescaling has multiplier
  product one and therefore preserves each rank-one tensor; the orientation and
  quotient coordinates are consequently well-defined.
- Cited-result and assumption audit: PASS. The accepted `E_gauge` conclusion
  is restated in current barred notation, including positivity of `bar theta`
  and preservation of the raw initialized tensor. No basin, nonzero condition,
  or generated trajectory fact is assumed beyond that accepted interface.
- Rigor checklist: PASS. Positive-chart and nonzero-active-triple conditions
  are explicit; signs and continuous product-one scalings are separated, and
  the common amplitude is divided by the realized `lambda_j^(1/3)` rather than
  an absolute base scale.
- Local adversarial test: PASS. Negative raw scores are absorbed by the
  accepted product-preserving gauge, zero scores are excluded by `E_gauge`,
  and the exact orthogonal stationary state gives the target scalar and
  equal-norm factors.
- Contribution to target step: PASS. Produces the quotient chart and exact
  observable initialization representation consumed by units 002 and 004.
- Verdict: PASS
- Repair direction: None

### unit_002: dual-to-direction transfer and relative cube-root amplitude

- Statement fidelity: PASS. The lemma targets the required ambient direction,
  relative scalar, relative cube-root amplitude, operator/Frobenius matrix, and
  quotient bounds with the stated `49`, `64`, `128`, and `kappa_0`-free scales.
- Proof validity: PASS. The accepted dual decomposition gives
  `Delta_M = G_M C_M + P_M^perp`; the accepted sharpened column/row bounds
  imply `||C_M||_2 <= 48 omega`, while the finite certificate component is
  bounded by `tau_r`. The displayed `r >= 3` arithmetic yields the strict
  `49 omega` column, Frobenius, and operator bounds. The score expansion uses
  `Y_M = H_M B_M`, bounds diagonal and off-diagonal column contributions, and
  controls the cross-target sum by two pointwise factors and one column sum.
  The cube-root identity then gives the stated amplitude bound.
- Cited-result and assumption audit: PASS. `E_gauge`, `E_sm`, and the accepted
  `step_006` small-root, diagonal, row, column, and perpendicular-projection
  conclusions are restated in current notation before use. The proof uses no
  future basin property or hidden condition number; `Gamma <= 1.01` is the
  accepted realized-weight conclusion.
- Rigor checklist: PASS. The projection residual is orthogonal to the target
  span, induced row/column norms are distinguished from entrywise norms, and
  the bounds `17 omega`, `1.017 q_*`, `1.008 q_*`, `51.001 omega`, and
  `51.002 omega` are used in the correct directions. The fixed-instance mode
  and simultaneous-over-columns quantifier are preserved.
- Local adversarial test: PASS. The largest allowed `Gamma`, saturated
  `q_real`, `q=0` finite certificate transients, and the exact stationary
  orthogonal limit all satisfy the displayed inequalities. The `sqrt(r) tau_r`
  operator contribution decreases with `r` and cannot create a hidden
  rank-dependent loss.
- Contribution to target step: PASS. Establishes the direction and amplitude
  coordinates and the quotient entry bound `||e_best||_Q <= 128 omega`.
- Verdict: PASS
- Repair direction: None

### unit_003: same-target Frobenius and Khatri-Rao comparison

- Statement fidelity: PASS. The lemma proves the target norm lower and upper
  bounds and the Khatri-Rao operator estimates needed for the original
  Frobenius residual, without changing the target metric.
- Proof validity: PASS. Gershgorin applied to each two-mode Hadamard Gram gives
  the `1 +/- q^2` spectrum. The three-mode target dictionary has off-diagonal
  row mass at most `q^3`, which is safely weakened to the requested `q_*^2`
  bound. The factorization through a block-diagonal column scaling proves the
  general Khatri-Rao inequality (7.2) in current notation.
- Cited-result and assumption audit: PASS. Only the accepted realized Gram
  interface and elementary linear-algebra facts are used; all columns,
  diagonals, and induced row masses are defined from setting objects.
- Rigor checklist: PASS. Lower and upper norm directions, the relation
  `q^3 <= q_*^2`, and the distinction between a Khatri-Rao Gram eigenvalue and
  its operator norm are explicit. No unlisted rank or scale parameter enters.
- Local adversarial test: PASS. The orthogonal limit, maximal `q_*`, unequal
  weights within `Gamma <= 1.01`, and the smallest allowed `r` preserve the
  denominator margin.
- Contribution to target step: PASS. Supplies the same-realized-target
  denominator and all operator comparisons used in the four-class expansion.
- Verdict: PASS
- Repair direction: None

### unit_004: four-class initialized-tensor residual

- Statement fidelity: PASS. The proposition gives the exact scalar,
  one-direction, two-direction, and cubic decomposition requested by the
  sketch and exports the original relative Frobenius bound.
- Proof validity: PASS. The scalar class uses the target-dictionary norm; each
  one-direction class is controlled by a mode unfolding and the two-mode
  Khatri-Rao operator; the two-direction classes use (7.2) and the `49 omega`
  column/operator bounds; and the cubic class is handled analogously. The proof
  retains the sharper `150`, `1`, and `1` class totals before summing to `216`,
  so the advertised `512` constant is not obtained by an invalid sum of the
  looser per-class envelopes. The target norm ratio is then bounded explicitly
  by `1.011`.
- Cited-result and assumption audit: PASS. All inputs are named earlier local
  results (`E_gauge`, direction/amplitude transfer, target norm, and Khatri-Rao
  comparison); no external theorem or unproved ALS property is invoked.
- Rigor checklist: PASS. The matricization products have matching dimensions,
  the `sqrt(r)` factor is present before normalization, and the quadratic and
  cubic terms are bounded by explicit powers of `omega` rather than absorbed
  by prose. The weight ratio is displayed rather than hidden in a constant.
- Local adversarial test: PASS. At `q=0` the finite certificate term remains in
  `Delta`, while at an exact orthogonal stationary representative every class
  vanishes. For arbitrary allowed `r`, the normalized estimates contain no
  residual `sqrt(r)` or `r` factor.
- Contribution to target step: PASS. Proves the four-class original-metric
  transfer and `||T-T_init||_F / ||T||_F <= 512 omega`.
- Verdict: PASS
- Repair direction: None

### unit_005: assembled best-scalar quotient entry

- Statement fidelity: PASS. The proposition packages exactly `E_quotient` and
  `E_best`, states `C_best = 512`, and verifies the required tube margin
  `512 omega < rho_ALS/4`.
- Proof validity: PASS. It composes the preceding named results in dependency
  order and performs the numerical specialization
  `512(1+10^-4)/4096^2 < 1/4096` explicitly.
- Cited-result and assumption audit: PASS. Every authority is a named local
  result or accepted dependency; no global diagnostic is used as proof
  evidence, and the fixed-instance/selected-run condition remains local and
  conditional rather than becoming a theorem assumption.
- Rigor checklist: PASS. The target permutation is proof-only, the active
  initialization is unchanged by the barred gauge, and the `kappa_0` cancellation
  is stated for both quotient amplitudes and the Frobenius ratio.
- Local adversarial test: PASS. The exact orthogonal equal-weight stationary
  specialization has zero quotient and residual error, while finite transients
  retain the explicit certificate charge.
- Contribution to target step: PASS. Closes the exact sketch-row target and
  exports the interfaces consumed by `step_008` and `step_009`.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

The local lemma map accounts for the gauge/scalar minimization, quotient
invariance, projection-to-direction transfer, scalar expansion, target norm,
Khatri-Rao factorization, all four tensor defect classes, and final assembly.
The sharpened `delta`, perpendicular certificate, row/column, and operator
estimates are restated in the dependency application before use. The score
cross-term estimate, cube-root inequality, target dictionary bound, and
quadratic/cubic Khatri-Rao estimates are displayed in named local units. No
proof text relies on a subsection title, a bare unit ID, a target label as an
algorithmic input, a look-ahead state, or an unproved basin condition.

## Target Claim Audit

The proof establishes the exact sketch-attempt-8 `step_007` claim on a fixed
realized `E_sm` instance and a selected run satisfying the accepted
`E_gauge`, `E_col`, and `E_row` interfaces. It defines the relative-amplitude
quotient before comparison, preserves the raw-to-barred product-one gauge,
proves the direction and scalar transfer, gives the same-target norm lower
bound, and controls the original rank-`r` initialization residual by
`512 omega`. The target metric, constants, quantifiers, conditional
deterministic mode, and downstream outputs match `setting.md` and the accepted
sketch row; no stronger primitive assumption or changed success criterion is
introduced.

## Explicit Rate Audit

- Exposed variables: `r`, `q_real`, `q_*`, `tau_r`, `omega`,
  `lambda_min`, `lambda_max`, `Gamma`, `rho_ALS`, direction errors, induced
  row/column l1 errors, relative amplitudes, and the original relative
  Frobenius residual.
- Hidden constants: only the displayed universal numerical constants and the
  fixed `q_*`; no dependence on `n`, `k`, `kappa_0`, `rho`, confidence levels,
  the base triple, selected-pool size, labels, or an unlisted condition number.
- Fixed quantities and mode: a realized `E_sm` instance and one finite
  selected run; all conclusions are deterministic and conditional, with no
  probability conversion or all-time/horizon upgrade.
- Norm mode: ambient Euclidean direction norm, dual induced row/column l1
  norms, relative amplitude, quotient maximum norm, and original Frobenius
  norm are each named.
- Admissibility and auxiliary choices: `r >= 3`, `q_real <= q_*`,
  `Gamma <= 1.01`, `tau_r=q_*^2/(10^4 r)`, and
  `rho_ALS=1/1024`; no hidden auxiliary tolerance is introduced.
- Term absorption: (7.13), (7.18)--(7.19), (7.23), and (7.26)--(7.32)
  display the numerical inequalities and the finite `sqrt(r)` normalization;
  no lower-order or rank term is dropped by prose.
- Baseline reduction: the exact orthogonal stationary representative gives
  `B_M=I`, zero perpendicular residual, `bar theta=lambda`, and zero defect
  classes; finite orthogonal transients retain the `tau_r` contribution.

## Notation Surface Audit

The public-facing exports are only `E_best`, `E_quotient`, `||.||_Q`, and
`C_best`. Equal-norm representatives, relative amplitudes, dual matrices,
projection residuals, `Lambda`, and the four defect tensors are explicitly
classified as appendix-local or proof-local and are defined from setting or
accepted dependency objects. Raw setting symbols are not rebound; barred
symbols are proof-only. The final assembly contains two minor editorial
equation-number slips (references to (7.29)/(7.30) where (7.31)/(7.32) are
intended), but the named propositions and displayed inequalities make the
mathematical dependency unambiguous and no proof authority is affected.

## Target-Step Assembly Audit

Accepted `E_gauge` supplies the positive product-one representative; the
accepted Step 006 small-root interfaces supply the dual and perpendicular
controls; unit 001 defines the quotient; unit 002 transfers directions and
scalar; unit 003 supplies the target denominator and Khatri-Rao bounds; unit
004 proves the four residual classes; and unit 005 packages `E_best` and
`E_quotient`. The dependency order is acyclic, all references are
theorem-style labels, and the original Frobenius metric is used throughout.

## Review Rationale

`ACCEPTED` is the smallest sound status. Every local unit has an explicit
assumption/dependency basis and a matching theorem-style statement, the
accepted Step 005/006 interfaces are restated before use, and the exact target
claim is assembled without a hidden `r` or `kappa_0` factor. The residual
decomposition retains finite certificate errors, handles the orthogonal
stationary and transient boundaries, and supplies the requested rate margin.
The equation-number slips noted in the notation audit are editorial and do not
change any derivation, interface, or downstream conclusion; no producer rerun
is required.
