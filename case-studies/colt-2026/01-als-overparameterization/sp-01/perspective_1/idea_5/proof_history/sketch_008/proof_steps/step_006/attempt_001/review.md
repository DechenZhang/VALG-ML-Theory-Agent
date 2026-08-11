# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: step_006
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_5/proof_steps/step_006/proof.md`
  (SHA-256 `8bd07136c745e4b2f1ab82f229d277a52fb7226c6acc44a3f075f7a2fea4a126`)
- Accepted dependencies checked: `step_004/proof.md` and `review.md`,
  `step_004b/proof.md` and `review.md`, and `step_005/proof.md` and
  `review.md`.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_006

## Blocking Issues

1. **Unproved diagonal-envelope premise and undefined projection** (`proof.md`
   lines 212--220, unit_003).  The derivation uses a symbol `p^perp` without
   defining it as the orthogonal residual of
   `bar p_{M,j}=G_M B_M(:,j)+p^perp`, and invokes
   `|a| < 1+2q_*` before that bound has been proved.  The subsequent (6.6)
   bound, `delta < 2q_*`, the Hadamard envelopes (6.7)--(6.8), and hence both
   the column root and row absorption depend on this premise.  The smallest
   repair is local: define the projection residual, derive
   `||p^perp||_2 <= tau_r` from the accepted certificate, and derive
   `a <= (1-q)^{-1/2} < 1+2q_*` from the unit-norm projection identity before
   using (6.6).  No target or dependency change is needed.

2. **Local-unit assumption bases are not self-contained** (units 003--005,
   lines 187--209, 237--254, and 288--301).  The proof-step contract requires
   every non-atomic statement to name its accepted setting/dependency inputs
   and local conditions.  Unit_003 only says “On the initial branch,” while
   units 004 and 005 give no assumption/dependency basis at all; their inputs
   are recoverable only from surrounding prose and unit IDs.  In addition,
   unit_002 states only `E_sm`, `E_cert_eq`, and `E_gauge` but uses the
   `D_M(j,j)/lambda_j <= 33/32` margin supplied by step_005.  Add explicit
   current-notation bases (the accepted `E_sm`, `E_cert_eq`, `E_cluster` or
   its denominator conclusion, `E_gauge`, and the named preceding local
   propositions) to each affected statement.  This is a statement/interface
   repair, not a change to the mathematical target.

## Per-Lemma Audit

### unit_001: exact selected-state dual equation and entry branch

- Statement fidelity: PASS.  The proposition targets the same stored-state
  dual equation, the initial off-diagonal column branch, and positivity needed
  by the later envelopes.
- Proof validity: PASS.  Multiplication by `L_M^T` gives (6.1), and the
  identity `G^T bar P = H B` gives the exact two-factor Hadamard source in
  (6.2).  The singleton chart supplies the stated initial mass.  The
  comparison of `L_M(:,j)` with `g_{M,j}` correctly yields the positive
  diagonal margin.
- Cited-result and assumption audit: PASS, subject to the unit-basis repair
  in Blocking Issue 2.  The required singleton tail and denominator/chart
  conclusion are available from accepted step_005; no post-update object is
  introduced.
- Rigor checklist: PASS.  The proof-only permutation and barred signs are
  handled without mutating the algorithmic state, and `lambda_ell/lambda_j`
  is bounded by `Gamma`.
- Local adversarial test: PASS.  The orthogonal limit, maximal allowed Gram
  leakage, and negative raw-score sign gauge all preserve (6.1)--(6.3).
- Contribution to target step: PASS.  Supplies the exact interface and the
  small initial branch for the column bootstrap.
- Verdict: PASS
- Repair direction: None beyond the shared assumption-basis repair.

### unit_002: entrywise dual residual and induced masses

- Statement fidelity: PASS.  It proves the exact per-entry `2 tau_r` bound
  and both one-index-at-a-time induced l1 sums requested by the sketch.
- Proof validity: PASS.  The row norm identity for `L_M` and the accepted
  `D/lambda` margin give
  `33/(32 sqrt(1-q)) tau_r < 2 tau_r`; summing the entrywise estimate
  separately over columns and rows avoids an `r^2 tau_r` loss.
- Cited-result and assumption audit: REVISE_STEP.  The displayed statement
  omits the step_005 denominator-margin input while the proof uses it in
  line 179.  Add that accepted conclusion (or explicitly derive the upper
  bound from an accepted predecessor) to the statement.
- Rigor checklist: PASS after that interface repair; the stochastic mode is
  correctly fixed-instance deterministic.
- Local adversarial test: PASS.  The bound remains valid at `q=0` with a
  finite certificate residual and at the largest allowed `q_*`.
- Contribution to target step: PASS.  Produces `E_row_residual` exactly.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_006`; state the `D/lambda` source
  explicitly.

### unit_003: diagonal normalization and Hadamard envelopes

- Statement fidelity: PASS.  The intended diagonal, pointwise, and row
  envelopes match the column and row small-gain interfaces.
- Proof validity: REVISE_STEP.  The projection residual `p^perp` is not
  defined, and `|a| < 1+2q_*` is used as an unproved premise in the key
  normalization estimate (6.6).  Both are local and readily repaired, but
  the current text does not establish the hypotheses of (6.6).
- Cited-result and assumption audit: REVISE_STEP.  The statement names only
  the initial branch, not the accepted Gram/certificate interfaces or the
  preceding entry proposition that supplies its constants.
- Rigor checklist: PASS for the displayed Hadamard bounds once (6.6) is
  established; the `F C` column and row estimates use the correct separate
  column/row masses.
- Local adversarial test: PASS after the missing upper bound is supplied;
  the resulting margin is much larger than the retained `chi_0 < 1/256`
  branch.
- Contribution to target step: BLOCKED locally until the diagonal envelope
  is justified; it feeds both later gain estimates.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_006`; define `p^perp` and derive the
  upper diagonal bound before (6.6), and add the explicit assumption basis.

### unit_004: column small root and full column mass

- Statement fidelity: PASS.  The quadratic inequality, small-root selection,
  and full column l1 output are the exact `E_col` target.
- Proof validity: PASS conditional on unit_003.  The root signs and the
  `32 omega` arithmetic select the small branch from the already established
  initial `chi < 1/256`, and the diagonal reserve gives the full column bound.
- Cited-result and assumption audit: REVISE_STEP.  The proposition has no
  explicit assumption/dependency basis and therefore treats the initial
  branch, (6.7), and the denominator margin as ambient facts.  Name units
  001--003 and the accepted interfaces in the statement.
- Rigor checklist: PASS.  The numerical sentence saying the “left part” is
  below `0.0041` is imprecise (the full multiplied term is about `0.0158`),
  but the required strict sign `F(1/32)<0` remains true; it should be stated
  with the corrected value in the retry.
- Local adversarial test: PASS conditional on unit_003.  The large-root
  branch is excluded by the explicit initial cutoff, including at the
  smallest allowed `r`.
- Contribution to target step: PASS conditional on the local repairs.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_006`; make the dependency basis
  explicit and correct the harmless numerical wording.

### unit_005: row small gain and full row mass

- Statement fidelity: PASS.  It gives the requested spatial row inequality,
  self coefficient, and public row-mass bound.
- Proof validity: PASS conditional on units 003--004.  Summing over one row,
  using one pointwise and one row envelope, and absorbing the coefficient
  below `1/8` is the correct noncircular order.
- Cited-result and assumption audit: REVISE_STEP.  The statement does not
  name its preceding-unit and accepted-interface hypotheses, so the row
  closure is not self-contained under the proof-step contract.
- Rigor checklist: PASS conditional on the repaired envelopes; residual
  forcing is charged as `2 r tau_r` rather than reusing a column sum.
- Local adversarial test: PASS.  The self coefficient stays below `1/8` at
  the maximal column root and the `q=0` finite-transient branch is retained.
- Contribution to target step: PASS conditional on the local repairs.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_006`; state the exact prior-unit and
  accepted-interface basis.

### unit_006: assembled selected-state bridge

- Statement fidelity: PASS.  The assembly exports exactly `E_col`,
  `E_row_residual`, and `E_row` with the stated public constants.
- Proof validity: PASS conditional on repaired units 002--005.  The stated
  order is acyclic: exact equation, residual transfer, diagonal/envelope,
  column root, then row absorption.
- Cited-result and assumption audit: PASS conditional on the same repairs;
  no external theorem or diagnostic artifact is used as proof evidence.
- Rigor checklist: PASS.  The baseline note preserves finite orthogonal
  transients and only makes the residual zero at a stationary representative.
- Local adversarial test: PASS conditional on the local fixes; no coverage
  label or look-ahead state enters the assembly.
- Contribution to target step: PASS conditional on repaired prerequisites.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_006` (rerun after units 002--005 are
  made contract-complete).

## Hidden Subclaim Scan

The local lemma map accounts for the exact dual identity, residual transfer,
diagonal normalization, column root, row absorption, and assembly.  The scan
found one independent unproved subclaim in unit_003: the upper bound on the
diagonal dual coefficient used to derive (6.6), together with the undefined
projection residual.  The scan also found that units 003--005 rely on
accepted interfaces and earlier units without stating them in their theorem
statements.  No hidden post-update pair matrix, target label, or temporal
accumulation argument is present.

## Target Claim Audit

Apart from the local gaps above, the proof targets the exact sketch-attempt-8
step_006 claim: it uses the same stored state in both pair factors, transfers
the ambient certificate residual entrywise, obtains both induced residual
masses at `2 r tau_r`, and derives full dual coefficient row and column masses
at the `omega=q_*^2+r tau_r` scale.  Quantifiers are fixed-instance
conditional and deterministic, with no new probability or convergence-mode
upgrade.  The target does not need a sketch or dependency change; a fresh
accepted review is required after the local proof repair.

## Explicit Rate Audit

- Exposed variables and modes are declared: `r`, `q_real`, `q_*`, `Gamma`,
  `tau_r`, `omega`, weight ratios, entrywise Euclidean residuals, and induced
  row/column l1 norms.
- Hidden constants are intended to be universal and no unlisted condition
  number or base-scale parameter is introduced.
- The horizon is a finite selected-state calculation conditional on accepted
  generated interfaces; no probability conversion is attempted.
- The residual charge, quadratic Gram charge, and row self coefficient are
  displayed separately.  The rate audit is otherwise adequate once the
  diagonal bound and dependency statements are repaired.
- Baseline reduction is stated and preserves zero residual only for the exact
  orthogonal stationary representative, while retaining finite-transient
  `r tau_r` forcing.

## Notation Surface Audit

The public exports are minimal and correctly limited to `E_col`,
`E_row_residual`, and `E_row`; the dual matrices and gain aliases are scoped
as proof-local.  The bars remain proof-only.  The undefined `p^perp` in
unit_003 is a notation/provenance defect and must be explicitly defined in
the retry; `B_M`/`C_M` are potentially confusing with setting mode names but
are declared local and need no redesign.

## Target-Step Assembly Audit

The accepted barred equation and step_005 chart provide the selected-state
entry interface.  Units 001 and 002 derive the dual equation and residual
fields; units 003 and 004 are intended to close the column root; unit 005
closes the row gain; and unit 006 assembles the three outputs.  This producer
consumer order is valid, but the current artifact cannot be consumed until
the local assumption bases and diagonal-envelope derivation are repaired and
reviewed afresh.

## Review Rationale

`REVISE_STEP` is the smallest sound status.  The target, setting, dependency
list, metric, scope, and numerical rate are all viable, and the central
small-gain algebra is correct.  The unresolved defects are local proof and
artifact-contract defects: one normalization premise is used before it is
proved, one helper object is undefined, and several local statements omit
their required assumption bases.  A `/proof-sketch` or idea-level reroute is
not warranted.  After a producer retry adds the one-line projection/diagonal
derivation and makes units 002--005 self-contained, the repaired proof must
receive a fresh accepted `proof-step-review` before downstream use.
