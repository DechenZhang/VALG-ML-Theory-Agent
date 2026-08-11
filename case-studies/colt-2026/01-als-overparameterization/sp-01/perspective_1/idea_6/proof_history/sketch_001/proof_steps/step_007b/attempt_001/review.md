# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_007b`
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_007b/proof.md`
- Frozen SHA-256:
  `7c3cccba4a62dfb3749e9cb21606e07bc9bfc75f3cc8628d47c665c900cfb998`
- Accepted sketch SHA-256:
  `97ca4a325c425bd2abf3ea13d6f68be96a3d7bd182f1d939a69127a44ff97bf3`
- Accepted dependencies:
  - `perspective_1/idea_6/proof_steps/step_001/proof.md`, frozen SHA-256
    `d8a566c9d56d59699fc65dcc5cd79db0cea9ed2a73df7d703b2bc17aa25f407c`,
    with accepted review SHA-256
    `c4e9cd72ff31b4cbd021aa2f1674ccfa19dbf8cf070e6c46545558dd8ab50750`.
  - `perspective_1/idea_6/proof_steps/step_007/proof.md`, frozen SHA-256
    `c7dc1d783acce52a45c365db3ea52e56c13669c078069314f7d1eba55961e31f`,
    with accepted review SHA-256
    `f8ead8e11f427f561aca5cc7dd35601582560ef7fc1d5fac6a47052aa3968337`.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

`/proof-step step_007b`

## Blocking Issues

1. **The induced row/column resolvent estimate is not proved
   (unit 003, equations (25)--(28)).**  Equation (26) establishes only
   `||J_AB^{-1}||_2<=32/31`, but the next line uses this as though it bounded
   the induced row and column `l1` norms needed for `||.||_rc`.  In general a
   spectral inverse bound incurs a `sqrt(r)` loss in those norms, so the
   displayed `8 Gamma^2` estimate does not follow as written.  This is locally
   repairable: first use
   `||J_AB-I||_rc<=q_*^2+192 omega+2 beta_perp<1` and an induced-norm Neumann
   argument to prove a rank-free `||J_AB^{-1}||_rc` bound, then redo (26)--(28).
   The repair must also state the conversion from the left-relative matrix
   `D^{-1}Z-I` to the column-relative coefficient used when normalizing
   `G_M Z(:,j)`; the latter introduces an explicit, harmless `Gamma` diagonal
   similarity but cannot be left implicit.  Finally, the claim
   `||R^{-2}-I||_infty<=4||alpha||_infty` should be discharged from the actual
   bound `||alpha||_infty<=128 omega`, since `|alpha|<1/2` alone does not imply
   that constant.

2. **The second- and third-subupdate normalized Gram bounds and `31/32`
   floors are asserted, not derived (units 002 and 004, equations
   (14), (21), and (31)).**  Equations (12)--(21) concern the first U solve,
   where both held directions are the selected entry.  At the V and W solves,
   one and then two held factors are newly produced target-span outputs.
   Lemma~`step-007b-sequential` never defines their mode-specific normalized
   cross and pair Grams, never writes their exact deviations from `J_0`, and
   never displays the inequalities showing the accepted `96 omega` and
   `192 omega+2 beta_perp` fresh budgets plus carried-output effects preserve
   the required inverse floors.  Its informal statement that every linear
   term contains an off-diagonal target-Gram entry is not an auditable
   expansion.  The repaired step must write the V and W held designs and
   their normalized cross/pair Grams explicitly, retain the remaining W
   perpendicular term at V, prove the advertised deviations in both row and
   column orientation, and establish each inverse before its solve is used.

3. **The chronological amplitude/common-product calculation needed for
   (29)--(35) is missing (unit 004).**  The proof defines neither the exact
   map `mathcal T_{M|A,B}` in (31) nor the mode-specific held amplitude
   diagonals after the U and V solves.  It alternates between saying that
   equal-norm balancing occurs only after the completed sweep and saying that
   the common represented-product field is overwritten after each current
   solve.  Those statements do not by themselves prove that the normalized
   intermediate representatives are quotient-equivalent to the literal
   cyclic ALS states.  Moreover, (31) displays the coefficient
   `q_*+4e_max`, while the following prose calls it a shorthand for the
   different factor `4{q_*+4(48 omega+e_max)}`; neither factor is obtained
   from a displayed normal-equation calculation.  Consequently the `1/8`
   carried gain, the recurrences `3072/3456/3888`, the final common product
   register, and the `4096 eta` `d_Q` assembly are unproved.  The local repair
   should track the exact held amplitude product at U, V, and W (or introduce
   canonical product-preserving intermediate representatives and prove block
   scale equivariance), show cancellation of incoming held scales, define the
   solved direction/product envelopes in the setting's `d_Q` fields, and
   derive the numerical recurrence line by line.  This is a producer-proof
   defect, not a sketch defect: the accepted sketch already requires
   mode-specific held diagonals, the same recurrence, and one completed
   common-register output.

## Per-Lemma Audit

### unit_001: collective perpendicular pair-Gram identity

- Statement fidelity: PASS.  The unit proves the exact
  `bar P_M^T bar P_M=H_M^par+F_M` decomposition and targets the sketch's
  collective perpendicular ledger rather than replacing it by independent
  column radii.
- Proof validity: PASS.  `G_M^T N_M=0` removes the cross terms; induced
  submultiplicativity bounds `H_M^par`; entrywise Cauchy--Schwarz gives
  `max|F_M(i,j)|<=tau_r^2`; and summing the coherent
  `F_{M'} circ F_{M''}` term gives exactly the required `r tau_r^4` charge.
- Cited-result and assumption audit: PASS.  The projector decomposition and
  row/column budgets are accepted `step_007` outputs, while the realized Gram
  bound is an accepted `step_001` output.  No later basin fact is used.
- Rigor checklist: PASS.  Both induced orientations are covered, all fields
  are same-state objects, and the numerical comparison
  `beta_perp<10^{-8} omega` is conservative for every `r>=3`.
- Local adversarial test: PASS.  Fully coherent perpendicular columns produce
  the retained `r tau_r^4` contribution rather than a false rank-free term.
- Contribution to target step: PASS.  Supplies the valid first-sweep
  perpendicular source needed by every later pair audit.
- Verdict: PASS
- Repair direction: None.

### unit_002: cross/pair deviations and ordinary inverse branch

- Statement fidelity: REVISE_STEP.  The first-entry statement matches the
  target, but the claimed extension to the second and third subupdates is
  deferred to unit 004 and is not proved there.
- Proof validity: REVISE_STEP.  For the first U solve, expansions (16) and
  (18)--(20) correctly use the accepted asymmetric `7 omega`/`33 omega`
  coefficient bounds and yield conservative `96 omega` and
  `192 omega+2 beta_perp` budgets.  Symmetry and
  `||Delta_p||_2<=sqrt(||Delta_p||_row,1||Delta_p||_col,1)` then give the
  `31/32` normalized floor.  No analogous V/W calculation appears.
- Cited-result and assumption audit: PASS for the first solve.  `E_sm` and
  the accepted `step_007` decomposition are correctly restated and used.
- Rigor checklist: REVISE_STEP.  The future-subupdate sentence is a forward
  reference to an absent derivation, so its quantifier over all three solves
  is unsupported.
- Local adversarial test: REVISE_STEP.  A newly solved held direction has a
  larger `O(3000 eta)` coefficient envelope than the raw `48 omega` entry;
  its effect is small only after the claimed off-diagonal cancellation is
  actually demonstrated.
- Contribution to target step: REVISE_STEP.  Certifies the initial U inverse
  but not all three required inverse branches.
- Verdict: REVISE_STEP
- Repair direction: Add the explicit normalized V/W Gram expansions and
  floors within the unchanged unit/step interface.

### unit_003: exact active solve and coefficient resolvent

- Statement fidelity: PASS.  Formula (22) is the exact initial active
  normal-equation output after retaining the diagonal weight/amplitude
  factors, and it targets the intended relative coefficient transfer.
- Proof validity: REVISE_STEP.  Equations (24) and (22) are correct, but the
  rate bound (23) uses a spectral inverse estimate as an induced `rc` estimate
  and does not explicitly translate left-relative coefficients to normalized
  columns.  The stated `R^{-2}` Lipschitz justification also uses an
  insufficient `|alpha|<1/2` premise, although the available much smaller
  `128 omega` bound readily repairs it.
- Cited-result and assumption audit: PASS.  All weights, amplitudes, and Gram
  objects come from the setting or accepted dependencies; there is no hidden
  generated condition number.
- Rigor checklist: REVISE_STEP.  Norm modes cannot be interchanged without a
  rank-free induced inverse argument and the appropriate diagonal
  similarities.
- Local adversarial test: REVISE_STEP.  A dense inverse can have bounded
  spectral norm but induced row norm of order `sqrt(r)`, breaking the claimed
  rank-independent `3000 eta` bound under the proof as written.
- Contribution to target step: REVISE_STEP.  The exact solve/range identity is
  available, but the quantitative coefficient interface consumed by the
  chronology is not yet certified.
- Verdict: REVISE_STEP
- Repair direction: Prove the induced Neumann inverse bound, correct the
  relative-coefficient normalization, and recompute the displayed constant.

### unit_004: chronological held-output recurrence and canonical rebalance

- Statement fidelity: REVISE_STEP.  The intended `3072/3456/3888` envelopes
  and single final product register match the sketch, but `e_U,e_V,e_W` and
  the intermediate quotient representatives are not defined precisely enough
  to be checked against the setting's `d_Q` fields.
- Proof validity: REVISE_STEP.  The asserted transform (31), its coefficient,
  diagonal cancellation, scale cancellation, normalization factor, and
  common-product overwrite are not derived from exact U/V/W normal equations.
  Thus neither the `1/8` gain nor recurrence (29) follows.
- Cited-result and assumption audit: REVISE_STEP.  No external citation is
  misused, but target-span membership generated by the preceding solve is
  consumed before the corresponding exact intermediate representative and
  held-scale identity are established.
- Rigor checklist: REVISE_STEP.  The proof omits the mode-specific amplitude
  matrices, the precise map domain/codomain, both induced norm orientations,
  and the calculation producing the final `s_W` rather than historical
  product records.
- Local adversarial test: REVISE_STEP.  Arbitrary product-one rescaling of the
  post-U literal factors changes the two held raw amplitudes seen by the V
  normal equation.  The final quotient output is invariant only after exact
  block-scale equivariance is shown; prose about absorbing diagonal terms
  does not establish that invariance.
- Contribution to target step: REVISE_STEP.  This is the missing bridge from
  the valid initial solve to the claimed completed first-sweep quotient state.
- Verdict: REVISE_STEP
- Repair direction: Supply exact chronological held designs, product-
  preserving intermediate representatives, scale cancellation, and the
  line-by-line small-gain/normalization arithmetic.

### unit_005: exact range containment and zero-padding equivalence

- Statement fidelity: PASS.  The unit proves both requested exact statements:
  active outputs lie in the realized target span and inactive columns remain
  exactly zero under the rank-`k` Moore--Penrose update.
- Proof validity: PASS conditional on each active inverse floor.  The unfolding
  has left factor `G_M`, and the block identity for `[K_a,0]` gives precisely
  `[X_M^+,0]`.  Sequentially this forces `N_U^+=0`, then `N_V^+=0`, then
  `N_W^+=0`.
- Cited-result and assumption audit: PASS.  The argument is direct
  finite-dimensional algebra and uses the setting's literal zero-column
  convention.
- Rigor checklist: PASS.  It does not project the algorithmic update or invoke
  a singular active branch.
- Local adversarial test: PASS.  A remaining held perpendicular field can
  perturb the coefficient matrix but cannot leave `range(G_M)` because the
  tensor unfolding's left range is exact.
- Contribution to target step: PASS, once units 002--004 certify all active
  inverse branches.
- Verdict: PASS
- Repair direction: None locally; its chronological use waits on the repaired
  inverse audit.

### unit_006: entry interfaces and baseline

- Statement fidelity: PASS.  The named public outputs, final `4096 eta`
  target, zero-padding state, and stationary baseline are exactly the sketch
  row's requested interface.
- Proof validity: REVISE_STEP.  The numerical comparison (36) and orthogonal
  stationary specialization are correct, but packaging (30) into the
  setting's final `d_Q` state relies on the unproved unit-004 chronology and
  common-product calculation.
- Cited-result and assumption audit: PASS.  No extra probability event,
  arbitrary basin condition, or baseline assumption is introduced.
- Rigor checklist: REVISE_STEP.  The definition of `E_parallel_entry` cannot
  certify `e^1` until every final direction coordinate and the one surviving
  product register have been constructed from the literal sweep.
- Local adversarial test: PASS for the exact orthogonal equal-weight
  stationary representative; REVISE_STEP for a finite nonstationary entry,
  where held amplitudes and normalization matter.
- Contribution to target step: REVISE_STEP.  The rate comparison is ready but
  its quantitative premise has not been proved.
- Verdict: REVISE_STEP
- Repair direction: Repackage only after repaired units 003--004 establish the
  full final quotient state.

## Hidden Subclaim Scan

The exact first-entry projector and perpendicular Gram statements are fully
represented in the local map.  The following independent nontrivial claims
are hidden inside unit-004 prose rather than proved with auditable statements:
the precise carried-output transform `mathcal T_{M|A,B}`, cancellation of a
new held direction's diagonal component in both cross and pair Grams, a
rank-free induced inverse bound, block-scale equivariance under mode-specific
held amplitudes, conversion from coefficient error to unit-direction error,
and the update of the single represented-product register.  These claims are
all already anticipated by the accepted step row, so they should be exposed
and proved in the repaired `step_007b`; no new sketch bridge is required.

## Target Claim Audit

The proof establishes the exact `F_M` decomposition, the mixed
`tau_r^2`/`r tau_r^4` charge, the first U normalized cross/pair deviations and
floor, the exact U normal equation, unfolding-range containment, rank-`k`
zero-padding equivalence, sequential zero forcing conditional on the remaining
inverses, and the exact stationary baseline.  It does not yet establish the
V/W normalized Gram deviations and floors or the literal-to-quotient
chronology yielding `||e^1||_Q<=4096(omega+beta_perp)`.  Therefore the exact
target claim is incomplete under the submitted derivation.

## Explicit Rate Audit

- Exposed variables and fixed quantities are correctly listed: `r`, `q_*`,
  `tau_r=q_*^2/(10^4r)`, `omega=q_*^2+r tau_r`, `beta_perp`, `Gamma`, and
  `rho_ALS=1/1024`.
- The valid perpendicular calculation has numerical hidden constants only and
  correctly preserves the coherent `r tau_r^4` term.
- The submitted resolvent/chronology does not yet prove that its hidden
  constants are rank-independent, because the spectral-to-induced inverse
  substitution could introduce `sqrt(r)`.
- Probability mode remains deterministic conditional on accepted upstream
  events, and the scope is one finite U/V/W sweep; no probability conversion
  or horizon accumulation is at issue.
- Norm modes are correctly named but not consistently connected: the
  `rc` coefficient estimate, normalized direction matrices, ambient column
  error, and common log-product field require explicit conversion before the
  setting's `d_Q` conclusion follows.
- The inequalities for `beta_perp<10^{-8}omega` and
  `4096(omega+beta_perp)<rho_ALS/3` are numerically sound.  The latter cannot
  be consumed until the repaired chronological recurrence proves its premise.
- The orthogonal equal-weight stationary baseline is preserved exactly.

## Notation Surface Audit

`F_M`, `J_0`, `C_AB`, `J_AB`, `Delta_c`, `Delta_p`, `D`, `R`, and `eta` are
economical proof/appendix-local objects, while `E_pair_entry` and
`E_parallel_entry` are the correct minimal public outputs.  The undefined
`mathcal T_{M|A,B}` and ambiguous envelopes `e_U,e_V,e_W` are not acceptable
notation surfaces: the retry should define them from the literal held factors
or replace them with exact mode-specific normalized Gram and quotient-state
formulas.  It must distinguish the setting's full refreshed states from a
single solved-block envelope and identify the sole surviving common product
coordinate.

## Target-Step Assembly Audit

Accepted `step_001` supplies realized pair conditioning and accepted
`step_007` supplies the selected projector/amplitude interface.  Unit 001 then
validly supplies the perpendicular ledger, the first part of unit 002 supplies
the initial normalized inverse, unit 003 supplies the exact initial solve
identity, and unit 005 supplies exact range/zero-padding structure.  Those
pieces do not jointly imply the final public interface because the induced
resolvent rate and chronological V/W assembly are missing.  Unit 006 therefore
cannot yet package `E_pair_entry` for all three subupdates or
`E_parallel_entry` for the completed quotient state.

## Review Rationale

`REVISE_STEP` is the smallest correct route.  The accepted sketch already
fixes the exact collective contamination, mode-specific held-amplitude
transfer, sequential `3072/3456/4096` objective, exact range entry, and one
common final product register.  The submitted proof has valid mechanism
sources and does not expose a false target or missing dependency; it omits the
rank-free induced resolvent justification and the exact algebra implementing
those accepted obligations.  A fresh `step_007b` proof can repair these local
derivations without changing the setting, sketch claim, assumptions,
dependencies, output target, rates, or baseline.  The repaired producer still
requires a fresh accepted `/proof-step-review step_007b` before downstream
use.
