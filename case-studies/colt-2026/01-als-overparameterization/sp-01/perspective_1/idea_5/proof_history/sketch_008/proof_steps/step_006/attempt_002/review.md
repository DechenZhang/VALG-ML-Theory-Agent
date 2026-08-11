# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: step_006
- Unit attempt: 2
- Reviewed proof artifact: `perspective_1/idea_5/proof_steps/step_006/proof.md`
  (SHA-256 `80f6608c55496b2e594cb6c9dc331da9937dfedafb21cf837c88fd98e9d847d6`)
- Accepted dependencies checked: `step_004/proof.md` and `review.md`,
  `step_004b/proof.md` and `review.md`, and `step_005/proof.md` and
  `review.md`.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_006

## Blocking Issues

1. **Units 004 and 005 do not state their assumption/dependency bases.**
   The propositions at `proof.md` lines 256--268 and 307--318 give exact
   conclusions but have no `Under ...` clause naming the accepted
   `E_sm`, `E_cert_eq`, `E_support_wt`, `E_cluster`, and `E_gauge` interfaces
   or the preceding local units that supply the initial branch, (6.7),
   (6.11), and (6.5).  Their hypotheses are therefore recoverable only from
   surrounding prose and unit IDs.  The proof-step contract requires every
   non-atomic local statement to be self-contained.  Add explicit
   current-notation assumptions and local conditions to both statements;
   this is a local artifact repair and does not change the target or
   dependency graph.

## Per-Lemma Audit

### unit_001: exact selected-state dual equation and entry branch

- Statement fidelity: PASS.  It proves the same-stored-state dual equation,
  the initial off-diagonal column branch, and positivity of the diagonal.
- Proof validity: PASS.  Multiplying the barred equation by `L_M^T` gives
  (6.1), and `G^T bar P = H B` gives the exact two-factor Hadamard source in
  (6.2).  The singleton chart supplies the initial mass, and the comparison
  of `L_M(:,j)` with `g_{M,j}` gives the stated positive margin.
- Cited-result and assumption audit: PASS.  The accepted step_005 chart,
  denominator, and gauge interfaces are named in the statement; no
  look-ahead state or target label is imported.
- Rigor checklist: PASS.  The proof-only permutation and bars preserve the
  algorithmic state, and the weight ratio is bounded by `Gamma`.
- Local adversarial test: PASS.  The orthogonal limit, maximal allowed Gram
  leakage, and negative raw-score gauge all preserve (6.1)--(6.3).
- Contribution to target step: PASS.  Supplies the exact entry equation and
  the initial branch for the column bootstrap.
- Verdict: PASS
- Repair direction: None.

### unit_002: entrywise dual residual and induced masses

- Statement fidelity: PASS.  It proves the requested `2 tau_r` per-entry
  bound and both induced residual l1 sums.
- Proof validity: PASS.  The row norm identity for `L_M` and the accepted
  `D/lambda` margin give
  `33/(32 sqrt(1-q)) tau_r < 2 tau_r`; summing the entrywise estimate over
  one index at a time avoids an `r^2 tau_r` loss.
- Cited-result and assumption audit: PASS.  Attempt 2 explicitly names the
  accepted denominator margin from step_005 in the statement.
- Rigor checklist: PASS.  The calculation is fixed-instance deterministic
  and keeps ambient l2 and dual l1 modes separate.
- Local adversarial test: PASS.  The bound remains valid at `q=0` with a
  finite certificate residual and at the largest allowed `q_*`.
- Contribution to target step: PASS.  Produces `E_row_residual` exactly.
- Verdict: PASS
- Repair direction: None.

### unit_003: diagonal normalization and Hadamard envelopes

- Statement fidelity: PASS.  Attempt 2 names the accepted interfaces and
  preceding local results, defines `p^{perp}_{M,j}`, and states the initial
  branch and all three envelopes explicitly.
- Proof validity: PASS.  The defined residual is the orthogonal projection
  complement; the certificate gives its `tau_r` norm.  The proof now derives
  `|a| <= (1-q)^(-1/2) < 1+2q_*` from the projection identity before using
  (6.6), then obtains the pointwise and row Hadamard envelopes with separate
  column and row masses.
- Cited-result and assumption audit: PASS.  All generated quantities are
  inherited or defined locally; no row bound is assumed in the diagonal or
  column argument.
- Rigor checklist: PASS.  The `F C` estimates correctly include the diagonal
  correction `delta` and do not introduce a rank-squared residual charge.
- Local adversarial test: PASS.  The initial `chi_0<1/256` branch and the
  orthogonal finite-transient case satisfy the displayed margins.
- Contribution to target step: PASS.  Supplies the envelopes needed by both
  gain inequalities.
- Verdict: PASS
- Repair direction: None.

### unit_004: column small root and full column mass

- Statement fidelity: PASS.  The quadratic inequality, root selection, and
  full `E_col` bound match the exact sketch row.
- Proof validity: PASS conditional on unit_003.  The signs of the quadratic
  at `32 omega` and `1/32`, together with the initial branch, select the
  small root; the diagonal reserve then gives the full column norm.
- Cited-result and assumption audit: REVISE_STEP.  The proposition statement
  still has no explicit accepted-dependency or preceding-unit basis, so its
  use of the initial branch and (6.7) is not self-contained under the
  proof-step contract.  Add the named assumptions and local conditions.
- Rigor checklist: PASS after that statement repair.  The text saying the
  “left part” of `F(1/32)` is below `0.0041` is numerically imprecise (the
  fully multiplied term is about `0.0158`), although the required strict
  sign remains true; correct that displayed arithmetic in the retry.
- Local adversarial test: PASS.  The large-root branch is excluded at the
  smallest allowed rank and at maximal `q_*`.
- Contribution to target step: PASS conditional on the statement repair.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_006`; add the explicit basis and fix
  the harmless numerical wording.

### unit_005: row small gain and full row mass

- Statement fidelity: PASS.  It gives the requested spatial row inequality,
  self coefficient, and public row-mass bound.
- Proof validity: PASS conditional on units 003--004.  The row sum uses one
  pointwise factor and one row factor, then absorbs the self coefficient
  below `1/8` only after the column root is closed.
- Cited-result and assumption audit: REVISE_STEP.  Like unit_004, the
  proposition has no explicit accepted-interface or preceding-unit basis.
  Add the exact inputs (including `chi<=32 omega`, the envelope lemma, and
  the residual mass) in the statement itself.
- Rigor checklist: PASS after that statement repair; the finite residual is
  charged once per row and not by reusing a column bound.
- Local adversarial test: PASS.  The self coefficient remains below `1/8`,
  including the `q=0` finite-transient boundary.
- Contribution to target step: PASS conditional on the statement repair.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_006`; state the exact local and
  accepted dependency basis.

### unit_006: assembled selected-state bridge

- Statement fidelity: PASS.  The assembly exports exactly `E_col`,
  `E_row_residual`, and `E_row` with the requested constants.
- Proof validity: PASS conditional on units 004--005.  The order is acyclic:
  exact equation, residual transfer, diagonal/envelope, column root, then
  row absorption.
- Cited-result and assumption audit: PASS conditional on the local statement
  repairs; no external theorem or diagnostic artifact is used as evidence.
- Rigor checklist: PASS.  The baseline note keeps finite orthogonal
  transients distinct from exact stationary zero residual.
- Local adversarial test: PASS conditional on the repaired prerequisites;
  no coverage label or post-update pair matrix enters the assembly.
- Contribution to target step: PASS conditional on units 004--005.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_006` (rerun after the two statements
  are made contract-complete).

## Hidden Subclaim Scan

Attempt 2 now accounts for the projection residual and diagonal upper bound;
those gaps from attempt 1 are repaired.  The local lemma map covers the dual
identity, residual transfer, envelopes, column root, row absorption, and
assembly.  The remaining contract defect is that units 004 and 005 expose
nontrivial conclusions without stating the accepted inputs and local branch
conditions on which their proofs rely.  No hidden post-update object, target
label, or temporal accumulation claim is present.

## Target Claim Audit

The mathematical target is otherwise exact: the proof uses the same stored
state in both pair factors, transfers each ambient certificate residual to a
dual entry, obtains both induced residual masses at `2 r tau_r`, and closes
the coefficient row and column masses at
`omega=q_*^2+r tau_r`.  Quantifiers are fixed-instance conditional and
deterministic, with no new probability or convergence-mode upgrade.  The
remaining issue is only the local statement contract; no sketch or
dependency reroute is indicated.

## Explicit Rate Audit

- Exposed variables are `r`, `q_real`, `q_*`, `Gamma`, `tau_r`, weight ratios,
  `omega`, entrywise Euclidean residuals, and induced row/column l1 norms.
- Hidden constants are intended to be universal, with no dependence on an
  unlisted condition number, base scale, confidence parameter, or pool size.
- The calculation is deterministic on a fixed accepted instance and finite
  selected run; no probability conversion or all-time horizon is claimed.
- The residual charge, quadratic Gram charge, and row self coefficient are
  displayed separately.  The rate audit passes once the two local statements
  expose their inputs.
- The orthogonal stationary baseline is preserved, while finite transients
  retain their explicit `r tau_r` forcing.

## Notation Surface Audit

The public exports are minimal: `E_col`, `E_row_residual`, and `E_row`.
The dual matrices and gain aliases are declared proof-local or appendix-local,
and the bars remain proof-only.  Attempt 2 correctly defines
`p^{perp}_{M,j}` and derives its provenance.  `B_M` and `C_M` can resemble
setting mode names but are explicitly scoped local aliases and need no
redesign.

## Target-Step Assembly Audit

The accepted barred equation and step_005 chart provide the selected-state
entry interface.  Units 001 and 002 derive the dual equation and residual
fields; unit 003 supplies the envelopes; unit 004 closes the column root;
unit 005 closes the row gain; and unit 006 assembles the three outputs.  The
producer-consumer order is valid, but downstream consumption must wait for a
retry that makes units 004 and 005 self-contained and for this review to be
rerun against the new hash.

## Review Rationale

`REVISE_STEP` is the smallest sound status for attempt 2.  The substantive
normalization and residual arguments are now valid, and the target, metric,
scope, dependencies, and numerical rate remain unchanged.  The only
remaining defect is local artifact contract compliance: two non-atomic
propositions omit their assumption/dependency bases, making their theorem
hypotheses implicit.  A `/proof-sketch` or idea-level reroute is not
warranted.  After those two statements are repaired, a fresh accepted
`proof-step-review` is required before downstream use.
