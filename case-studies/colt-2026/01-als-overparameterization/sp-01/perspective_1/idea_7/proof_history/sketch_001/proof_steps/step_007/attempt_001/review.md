# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_7`
- Sketch attempt: 1
- Step ID: step_007
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_7/proof_steps/step_007/proof.md`
- Reviewed proof SHA-256: `8f6a407599f92383adaef0d8f100c2495b681638a48162c8d49965bf60de07cd`
- Binding setting SHA-256: `1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`
- Binding sketch SHA-256: `31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69`
- Accepted sketch-review SHA-256: `b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e`
- Accepted step_005 proof/review SHA-256: `db087ef40c797ff7429828fda26c3bafa05ec43d714c0b94318282e1b9da35fd` / `dd2b09855813b7d769bcee5bbb11b174ba8e8fd91e499515940c68091e2499be`
- Accepted step_006 proof/review SHA-256: `ea92dd21a1780968e93c54c6078fefa05404e117a45f255d9747ce2d6da0f34b` / `c1ac10f07c01cd32a005ddce367a168fc4361a2524a017e90f90a00589e5ce21`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_007

## Blocking Issues

1. **Location:** `Allowed Assumptions And Dependencies`, lines 48--57,
   and `unit_001`, lines 132--146.  **Defect:** `E_gauge` supplies a
   product-one, term-preserving sign gauge and absolute tail bounds; it does
   not supply positive target correlations.  The proof correctly starts to
   derive positivity by ruling out a negative dominant sign product, but the
   dependency list states positivity as if it were already an accepted
   conclusion.  After the sign flips are applied, `P_M`, `K_M`, `R_M`,
   `A_M`, and `c_M` are also silently reused with new meanings.  **Downstream
   effect:** the denominator and ratio argument can be read as using an
   unproved generated condition and the exact same-state equation is not
   formally tracked through the gauge.  **Smallest repair direction:** state
   the pre-gauge correlations and score identity, prove the positive product
   sign in `unit_001`, explicitly apply the product-one flips (including the
   transformed equation/residual), and then say “relabel the transformed
   objects” before using positive diagonals.  Remove positivity from the
   imported `E_gauge` interface.

2. **Location:** `unit_003` statement, lines 208--219, and its assembly.
   **Defect:** the proposition is stated only “under the preceding units,”
   rather than naming the two theorem-style results it consumes, and (J)
   uses the non-mathematical phrase “row ... or ... column” instead of
   asserting both induced bounds.  **Downstream effect:** the exported
   `E_row` interface is not a self-contained local theorem and its two
   orientations are not formally quantified, despite both being used by
   step_008.  **Smallest repair direction:** state the proposition under
   `Lemma~\ref{lem:step-007-dual-equation}` and
   `Proposition~\ref{prop:step-007-column}`, and write separate row and column
   inequalities (or their maximum) explicitly.

3. **Location:** `Explicit Rate Audit`, lines 291--311, and the baseline
   bullet.  **Defect:** the audit omits the required fixed-quantity
   declaration for the displayed `omega` rate, and it calls the baseline
   specialization `q=tau_r=0` even though the setting fixes
   `tau_r=q_*^2/(10^4 r)>0`; exact baseline recovery instead has zero
   *realized residual* at an exact certified component.  **Downstream effect:**
   the rate contract and baseline-invariance audit are ambiguous about the
   admissible specialization and could incorrectly claim that a setting
   parameter was changed.  **Smallest repair direction:** list the fixed
   realized instance, `q_*`, and the prescribed `tau_r` (and identify the
   one-time selected-state horizon), and phrase the baseline as `q_real=0`
   with actual residual zero, or explicitly label `tau_r\downarrow0` as a
   formal zero-defect limit rather than a setting specialization.

## Per-Lemma Audit

### unit_001: dual equation, positive diagonal, and projected residual

- Statement fidelity: The claimed positive diagonal, entrywise projected
  residual, and off-diagonal ratio inequality are the exact inputs needed by
  the accepted `step_007` row.
- Proof validity: PASS for the displayed inequalities.  The Gram spectral
  floor gives the dual norm bound; the score-floor contradiction gives a
  positive dominant sign product; the denominator lower bound is
  `9/16 - 1.02 tau_r/sqrt(1-q) > 0.56`; and both the dual residual and the
  directly projected residual are bounded entrywise by `2 tau_r`.  The
  requested `q_real=0` case remains valid because all estimates use `q<=q_*`
  and do not divide by `q`.
- Cited-result and assumption audit: REVISE_STEP.  The accepted gauge does
  not include positive target correlations, and the proof must expose the
  score decomposition and the transformed same-state equation before
  importing the positive denominator.  This is a local provenance/relabeling
  repair, not a dependency failure.
- Rigor checklist: The ratio denominator and unequal-weight factor are
  numerically sound, including the residual term; signs and zero-interference
  boundaries are otherwise handled.
- Local adversarial test: With a negative dominant sign product, the
  off-target score is at most `lambda_max*x_*(1+q_*)`, contradicting the
  retained `>3/4 lambda_max` floor.  With `q_real=0` and positive prescribed
  `tau_r`, the same denominator remains positive.  The test exposes only the
  unrecorded gauge transition.
- Contribution to target step: Supplies `E_row_residual` and the nonlinear
  ratio inequality once the gauge transition is made explicit.
- Verdict: REVISE_STEP
- Repair direction: Repair the sign-gauge provenance and relabel all
  transformed equation objects locally.

### unit_002: normalized dual-coordinate column bootstrap

- Statement fidelity: PASS.  It proves the stated `42 omega` column mass
  from the accepted per-column correlation tails and the unit-001 ratio
  inequality, without using landing or cyclic objects.
- Proof validity: PASS conditional on the repaired unit-001 interface.
  The `3/2` diagonal normalization, `9 x_* ell_* + 3 r tau_r` sum, and
  `x_* ell_* <= (93/20)q_*^2` arithmetic give `42 omega`; the residual is
  charged once rather than as an `r^2 tau_r` term.
- Cited-result and assumption audit: PASS conditional on the named
  transformed gauge output from unit-001; step-006 tails are used only as
  accepted derived controls.
- Rigor checklist: Cauchy--Schwarz, endpoint constants, and the `q_real=0`
  boundary are sound.  No hidden probability or horizon upgrade is used.
- Local adversarial test: Saturating all accepted off-target maxima and
  `tau_r` entries still gives the displayed finite column bound.
- Contribution to target step: Supplies `E_col`.
- Verdict: PASS
- Repair direction: None after unit-001 is repaired.

### unit_003: two-orientation coefficient closure

- Statement fidelity: REVISE_STEP.  The intended row and column closure is
  correct, but “under the preceding units” is not a self-contained named
  dependency and (J) does not formally state both orientations.
- Proof validity: PASS conditional on units 001--002.  Equations (K)--(M)
  give the row small-gain inequality; `u<1.02q_*` and
  `4u(1+q)<1/1000` give the positive denominator and `R<5 omega`; the unit
  norm identity transfers `Z` to `A` with column mass `<44 omega` and row
  mass `<7 omega`.  The entrywise residual and one-time `2r tau_r` charge are
  correct.
- Cited-result and assumption audit: REVISE_STEP only for the statement
  interface; no accepted dependency is missing.
- Rigor checklist: The row expansion of `H_M Z_M` and the two induced
  orientations are algebraically valid.  The `or` wording and the
  zero-defect `tau_r` phrasing must be removed from the public claim.
- Local adversarial test: Maximal `q_*`, `C=42 omega`, and an arbitrary
  residual sign still satisfy the small-gain denominator; no `r^2 tau_r`
  accumulation appears.
- Contribution to target step: Supplies `E_row` after the theorem statement
  is made explicit.
- Verdict: REVISE_STEP
- Repair direction: Name the prior results, state both norms, and align the
  baseline/rate interface with the fixed setting.

## Hidden Subclaim Scan

The algebraic subclaims are all present in the three local units.  The scan
does, however, find a hidden generated-object transition at the sign-gauge
boundary: positivity is listed as an imported `E_gauge` fact while the proof
actually derives it and then changes the selected objects.  The row/column
export also relies on the phrase “preceding units” rather than a named
theorem-style dependency.  These are local proof-interface defects, not new
theorem-level obstructions.

## Target Claim Audit

Conditional on the accepted `E_sm`, `E_cert_eq`, `E_support`, and `E_cluster`
interfaces, the displayed calculations establish the intended column mass,
both row/column masses, and per-entry residual scale.  The target is not
contract-valid as written because the imported-gauge provenance and the
exported two-orientation statement are underspecified.  No landing, cyclic,
probability, or convergence claim is used, and the residual remains a
one-time selected-state charge.

## Explicit Rate Audit

- Exposed variables and numerical dependence: `q_real<=q_*`, `Gamma<=1.01`,
  `r`, `tau_r=q_*^2/(10^4r)`, `eta_score(r)`, and
  `omega=q_*^2+r tau_r`; the constants in (A), (F), (I), and (M)--(P) are
  dimension-free.
- Hidden constants: The displayed margins are universal and do not depend
  on `n`, `kappa_0`, `rho`, `epsilon`, confidence parameters, labels, or a
  condition number.
- Fixed quantities: **missing in the submitted audit**; it must state the
  fixed realized instance conditional on the generated interfaces, fixed
  `q_*`, prescribed `tau_r`, and the one selected-state (non-accumulated)
  horizon.
- Probability mode: Deterministic conditional on the generated interfaces;
  no probability conversion is introduced.
- Horizon mode: One finite selected-state equation; residuals are not
  accumulated over later sweeps.
- Norm mode: Target-span dual coordinates, induced row/column `l1` masses,
  and Euclidean projected residuals.
- Auxiliary choices and absorption: The inequalities (A), (F), (I), and
  (M)--(P) display the needed absorptions, with the residual charged only
  once as `O(r tau_r)`.
- Baseline reduction: The exact certified-component baseline has zero
  realized residual, but the submitted `q=tau_r=0` wording is not an
  admissible specialization of the fixed setting and must be corrected.

## Notation Surface Audit

The helper objects are appropriately classified as appendix-local or
proof-local, and the exported events are minimal.  The sign-gauge transition
currently reuses `P_M`, `K_M`, `R_M`, `A_M`, and `c_M` after changing their
values without a relabeling statement.  The local theorem labels should be
used in explicit named references, and (J) should export both orientations.

## Target-Step Assembly Audit

After the local repairs, the accepted step-006 support/gauge output feeds the
dual equation, the column bootstrap feeds the row small-gain inequality, and
the resulting `E_col`, `E_row_residual`, and `E_row` exactly match the sketch
row and step-008 consumer.  In the submitted artifact, the assembly relies
on the silent gauge relabel and on an ambiguous “row ... or ... column”
statement, so it cannot yet be consumed as a contract-valid proof.

## Review Rationale

`REVISE_STEP` is the smallest sound status.  The numerical derivation is
essentially closed and no dependency or sketch interface needs changing, but
the current artifact treats a derived sign/positivity fact as an accepted
dependency, silently changes the meaning of several equation objects at the
gauge transition, and does not state the two-orientation export in a
self-contained theorem form.  A single local proof-step rewrite can expose
the gauge covariance, name the prior units, correct the rate/baseline audit,
and preserve all passed inequalities; routing to a dependency or sketch
repair would be unnecessarily broad.
