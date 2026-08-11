# Proof Step Review

## Step Review Identity

- Sketch attempt: 4
- Step ID: `step_007c`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_1/idea_6/proof_steps/step_007c/proof.md`
- Reviewed proof SHA-256: `675da83cb423f150af62dae5c69368de5986d0ff1f8fabba82b826edec9ffaa3`
- Binding setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Binding proof-sketch SHA-256: `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`
- Binding proof-sketch-review SHA-256: `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`
- Accepted dependency `step_001` proof/review SHA-256: `7fab685e663df565c7e1ec99484ed86f5393e35aa0398047c23a866c29fc3362` / `2acfd5b7208c925aa28de3a57045bf6c3a0ad25cb3a0512e0e920fce1904a177`
- Accepted dependency `step_007` proof/review SHA-256: `fe4df31bf269900095c2b7079b6683e63b7c17b72f2d62605afb25030aed716f` / `93ba318b5027d6f3a9db95496d25f81845dac5c11863b4dd8cb804377bf9af64`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_007c

## Blocking Issues

1. **`unit_005`, carried normalization reserve.**  The proof states the intended carried cross/pair bounds and then asserts that centered normalization contributes at most `ell_0 h_M`, but it does not display the term-by-term inequalities that turn the carried portions of `Delta_C` and `Delta_J` into the centered row mass, diagonal remainder, quadratic normalization reserve, and product-log bound.  In particular, it explicitly leaves the transposed/column induced-norm calculation unresolved.  Consequently the common coefficient `ell_0=8q_*+32rho_ALS=17/512` is not proved for every allowed conditional held record.  The retry must perform both orientations before absolute values, bound all static-carried and carried-carried normalization terms under `h_M<=2rho_ALS/3`, and show their sum is at most `ell_0 h_M` without a rank or condition-number factor.
2. **`unit_006` and target-step assembly.**  The `3072/3456/3888` chronology is written only as an implication conditional on the unproved `unit_005`; the artifact therefore does not produce `E_carry_resolvent`, and `step_007b` cannot legally consume the V/W carried records.  After repairing `unit_005`, the retry must substitute `h_U=0`, `h_V=epsilon_U`, and `h_W=epsilon_U+epsilon_V`, verify the per-call `h_M`, `d_M`, inverse, and positivity domains, and export the three bounds as conclusions rather than hypothetical values.

## Per-Lemma Audit

### unit_001: perpendicular pair ledger

- Statement fidelity: The unit targets the `E_perp_pair` portion of the sketch row and uses only the accepted `E_quotient` decomposition.
- Proof validity: The orthogonal decomposition gives the three exact perpendicular terms.  The induced row and column estimates follow from the actual residual Gram entries and yield the mixed `t_{M'}^2+t_{M''}^2` charges plus the coherent `r(t_{M'}t_{M''})^2` charge.  The numerical specialization at `t_N<=tau_r` is consistent.
- Cited-result and assumption audit: The target projector decomposition, `G_N^T N_N=0`, coefficient bound, and `t_N<=tau_r` are accepted `step_007` outputs.  No range or future ALS conclusion is imported.
- Rigor checklist: Both induced orientations are covered by the symmetric entrywise ledger; no probability or horizon upgrade occurs.
- Local adversarial test: A shared perpendicular direction produces the retained coherent `r tau_r^4` term rather than being hidden by a max-column estimate.
- Contribution to target step: Produces `E_perp_pair` and separates actual `beta_act,M` from its numerical envelope `beta_perp`.
- Verdict: PASS
- Repair direction: None.

### unit_002: raw held-record interface

- Statement fidelity: The unit states the conditional record required by the accepted sketch, including `B_N=I+C_N+E_N`, `h_M`, both total defect bounds, positivity, `d_M<1/8`, and `h_M<=2rho_ALS/3`.
- Proof validity: This unit is correctly a hypothesis interface rather than a derivation.  Its facts may be consumed only conditionally here and must be verified chronologically by `step_007b`.
- Cited-result and assumption audit: The raw records and carried fields are classified as local conditional hypotheses, not primitive setting assumptions or accepted invariants.  This respects the assumption-provenance contract.
- Rigor checklist: The initial and carried scopes are distinguished; target-span membership is not assumed.
- Local adversarial test: The interface permits nonzero carried error and therefore cannot use the initial `alpha` bound as a carried invariant; the proof correctly says it does not do so.
- Contribution to target step: Supplies the legal conditional inputs for the one-call transfer.
- Verdict: PASS
- Repair direction: None, subject to `unit_005` actually proving the conclusion from this record.

### unit_003: exact solve and scale cancellation

- Statement fidelity: The unit gives the exact amplitude-conjugated solve, normalized direction coordinate, and one common represented-product register required by the sketch.
- Proof validity: Substitution into the exact ALS normal equations gives the displayed `Z_M` identity, and the componentwise product calculation cancels the incoming common register exactly.  The definitions of `A_M`, `nu`, normalized direction, and `s_M^+` are mutually consistent.
- Cited-result and assumption audit: This is a direct current-notation calculation from the setting ALS solve and positive scales; no external theorem or later generated condition is used.
- Rigor checklist: Positivity of the input diagonal is explicit.  Output positivity remains conditional on the later verified `d_M<1/8`, as required.
- Local adversarial test: At the exact orthogonal stationary state the identity gives `A_M=0`, `nu=1`, and `s_M^+=0`, preserving the baseline rather than its positive envelope.
- Contribution to target step: Establishes exact object/target compatibility and prevents accumulation of historical product logs.
- Verdict: PASS
- Repair direction: None.

### unit_004: static centered cancellation and resolvent

- Statement fidelity: The unit addresses the static branch of both induced-norm normalization and the rank-free inverse transfer fixed by the sketch.
- Proof validity: The centered identity removes the first-order diagonal term before row or column absolute values are taken.  The pair floor and `||E_J||_rc<=1/64` justify both Neumann series, and positive diagonal similarity introduces only the stated weight-ratio factor.  The static arithmetic `S_0<=290eta` and `2977eta<3072eta` is consistent.
- Cited-result and assumption audit: The pair floor and realized weight ratio come from accepted `step_001`; the selected-entry and amplitude controls come from accepted `step_007`.  No unlisted generated invariant is used.
- Rigor checklist: The proof records row, column, ambient-column, and product-log outputs and avoids a `sqrt(r)` or hidden condition-number charge.
- Local adversarial test: Applying the identity after transposition gives the same static cancellation; taking absolute values before centering would fail and is not used.
- Contribution to target step: Proves the `3072eta` static part and the resolvent constant `kappa_res<17/16`.
- Verdict: PASS
- Repair direction: None; the retry should retain this static calculation unchanged.

### unit_005: carried cancellation

- Statement fidelity: The intended conclusion matches the carried part of `E_carry_resolvent`, including the exact coefficient `ell_0=17/512` in both induced orientations.
- Proof validity: Not established.  The unit records the desired input and output inequalities but omits the intervening centered-resolvent and quadratic-normalization derivation.
- Cited-result and assumption audit: The conditional inputs are legal, but legality of an assumption does not prove the claimed transfer from those inputs.
- Rigor checklist: The row calculation, transposed column calculation, static-carried cross terms, quadratic reserve, ambient-column norm, and product-log contribution are not separately bounded.
- Local adversarial test: Under a carried record saturating `h_M`, an unknown-sign off-diagonal perturbation can feed the diagonal normalization remainder in either orientation; the current prose supplies no inequality showing that this charge fits inside `ell_0 h_M`.
- Contribution to target step: This is the first missing theorem-facing implication and prevents production of `E_carry_resolvent`.
- Verdict: REVISE_STEP
- Repair direction: Prove the carried centered-resolvent inequalities term by term in row and transposed column orientation, then explicitly absorb the quadratic reserve under `h_M<=2rho_ALS/3` into `ell_0 h_M`.

### unit_006: chronological export

- Statement fidelity: The proposed U/V/W recurrence and constants match the sketch-row consumer interface.
- Proof validity: Conditional only.  The arithmetic is compatible with `ell_0<1/8`, but its premise is precisely the unresolved `unit_005` conclusion.
- Cited-result and assumption audit: The chronology correctly treats each earlier update as a generated input and does not assume future range containment.
- Rigor checklist: The per-call inverse, radius, and positivity checks are not completed as conclusions in this artifact.
- Local adversarial test: Without a proved carried gain, V and W can receive an uncontrolled additive normalization term, so the displayed finite constants do not follow.
- Contribution to target step: Would export the interface consumed by `step_007b`, but currently exports nothing unconditional.
- Verdict: REVISE_STEP
- Repair direction: After `unit_005`, instantiate the recurrence in chronological order and verify every conditional domain before stating the three output bounds.

## Hidden Subclaim Scan

The missing carried reserve is not merely notation: it contains independent centered-resolvent, quadratic-normalization, ambient-column, product-log, and transposed-orientation inequalities.  These obligations are nominally assigned to `unit_005` but are not proved there.  No additional future target-span or basin claim is smuggled into units 001--004.  On retry, the non-atomic repaired units should also be given paper-ready theorem-style titles and stable labels so the target assembly can cite them without relying on bare unit IDs.

## Target Claim Audit

The artifact proves the `E_perp_pair` ledger and the static part of the one-call normalized solve, but it does not prove the exact target claim.  Its own `PARTIAL_BLOCKED` status is correct: the bound
`epsilon_M^+ <= 3072 eta + (17/512) h_M` is unresolved in both induced orientations, so neither `E_carry_resolvent` nor the chronological `3072/3456/3888` interface is produced.  The target's deterministic, conditional-on-record scope and its dependency interface have otherwise been preserved.

## Explicit Rate Audit

The step is deterministic and conditional on the named raw held record.  It correctly exposes `q_*`, `omega`, `beta_perp`, `eta`, `rho_ALS`, `h_M`, the induced row/column and ambient-column norms, and the common log-product norm; it introduces no probability conversion, horizon upgrade, `sqrt(r)` loss, or latent condition number.  The explicit-rate audit nevertheless fails locally because the advertised carried coefficient `ell_0=17/512` is asserted without the term-absorption inequalities needed to prove it.

## Notation Surface Audit

`E_perp_pair` and the eventual `E_carry_resolvent` are the only downstream-facing interfaces.  The matrices `B,C,E,N,F,H_0,J,A`, the normalization `nu`, and the defect aliases are proof-local.  The surface is economical enough for the calculation, but the retry should define the inherited `alpha` at first use and explicitly mark helper objects as proof-local or appendix-local; it must not export the conditional raw-record dictionary as a primitive theorem assumption.

## Target-Step Assembly Audit

Units 001--004 jointly establish the actual perpendicular ledger, exact solve and product cancellation, centered static normalization, and rank-free resolvent.  They do not imply the carried output.  Because units 005--006 are unresolved, the assembly cannot produce `E_carry_resolvent` and cannot authorize any downstream `step_007b` invocation.  A fresh accepted review is required after the producer retry.

## Review Rationale

`REVISE_STEP` is the smallest sound status.  The accepted sketch already fixes the raw conditional record, the exact centered-cancellation mechanism, both induced orientations, the numerical margin, and the consumer chronology; accepted dependencies supply the required static geometry and quotient entry.  The nearest defect is therefore the submitted step's missing algebra, not a dependency flaw or a need to change the sketch interface.  The producer should preserve units 001--004 and repair only the carried reserve and its chronological assembly.
