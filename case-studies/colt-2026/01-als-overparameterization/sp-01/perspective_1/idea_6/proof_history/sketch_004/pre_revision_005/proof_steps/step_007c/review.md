# Proof Step Review

## Step Review Identity

- Sketch attempt: 4
- Step ID: `step_007c`
- Unit attempt: 3
- Reviewed proof artifact: `perspective_1/idea_6/proof_steps/step_007c/proof.md`
- Reviewed proof SHA-256: `9a6240897f48c43b7f2e039055ef8b676e23904b3a6f56004b13cc01b94041ea`
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

1. **`unit_005`, the claimed `2u_C+u_J` transfer is not derived.**  The proof states (43), `||R_C||_{row,1}<=u_C` and `||R_J||_{row,1}<=u_J`, after naming groups of Hadamard terms, but it does not expand their diagonal and off-diagonal sums or show the constants `2q_*+8rho_ALS` and `4q_*+16rho_ALS`.  The transposed calculation is dismissed as “literally the same,” with no column-sum inequalities.  Moreover, the proof introduces the extra convention that every held record is either static (`E_N=0`) or carried with `C_N=0`; the accepted sketch/`unit_002` exports the mixed decomposition `B_N=I+C_N+E_N` and does not state this exclusivity.  Either prove the chronological records satisfy the exclusive convention from the allowed inputs, or bound the general mixed record required by the sketch.
2. **Normalization/resolvent and `ell_0` are still only asserted.**  No displayed formula bounds `A_M-A_M^0`, the terms `(I+A_M^0)(D_\nu-D_{\nu^0})`, or the diagonal-similarity factors in both induced orientations.  The sentence that reciprocal weight factors “cancel” does not establish the claimed replacement of `2\kappa_res u_C+\kappa_res u_J` by `2u_C+u_J`.  The ambient-column norm and the product-log increment are likewise asserted from the induced-norm bound.  The inequality for `2d_{M,carry}^2+q_*d_{M,carry}` is quoted without the intermediate substitution and does not account explicitly for the static/carry cross terms.  Therefore `ell_0=8q_*+32rho_ALS=17/512` is not proved in either orientation, and the carried output interface remains blocked.
3. **`unit_006` does not discharge all chronological domains.**  The arithmetic recurrence for `3456eta` and `3888eta` is valid if unit_005 is available, but the inverse-margin, `d_M`, `Delta_J`, and positivity claims are summarized as “the same estimates” rather than proved at U, V, and W.  Since the carried gain is unresolved, these values are conditional and cannot be exported to `step_007b`.

## Per-Lemma Audit

### unit_001: perpendicular pair ledger

- Statement fidelity: Matches the `E_perp_pair` target and uses the accepted `E_quotient` decomposition.
- Proof validity: The exact three-term perpendicular Gram expansion and the mixed/coherent `b_perp` charges are valid for the static selected-entry records; the `r tau_r^4` term is retained.
- Cited-result and assumption audit: `G_N^T N_N=0`, the coefficient bound, and `t_N<=tau_r` are accepted `step_007` outputs; no future range fact is consumed.
- Rigor checklist: Row and column estimates are symmetric for this ledger and no probability or horizon conversion is hidden.
- Local adversarial test: Shared perpendicular components are covered by the explicit coherent term.
- Contribution to target step: Produces the actual `beta_act,M` ledger and numerical `beta_perp` envelope.
- Verdict: PASS
- Repair direction: None.

### unit_002: raw held-record interface

- Statement fidelity: States the conditional cross/pair, carried-field, scale, `d_M`, and `h_M` inputs from the accepted sketch.
- Proof validity: Correctly treats these as local conditional hypotheses to be discharged chronologically by `step_007b`, not as primitive assumptions.
- Cited-result and assumption audit: Provenance is explicit; target-span membership is not silently assumed.
- Rigor checklist: Initial and carried records are distinguished, but no exclusive `C_N=0` convention is present in this unit.
- Local adversarial test: A mixed `C_N+E_N` record is allowed by the stated interface, so unit_005 cannot silently discard its cross terms.
- Contribution to target step: Supplies the legal one-call input interface.
- Verdict: PASS
- Repair direction: Preserve this general interface and justify any narrower chronological specialization in the repaired unit.

### unit_003: exact solve and scale cancellation

- Statement fidelity: Matches the exact normalized ALS solve and one common represented-product register.
- Proof validity: The displayed normal-equation identity and componentwise scale cancellation are consistent with the setting's exact ALS equations.
- Cited-result and assumption audit: Direct current-notation algebra; positive input scales are conditional and not imported as primitive facts.
- Rigor checklist: The orthogonal baseline gives `A_M=0`, `nu=1`, and zero new product log.
- Local adversarial test: Historical `s` cannot accumulate through the shown product identity.
- Contribution to target step: Establishes the exact solve interface used by the resolvent calculation.
- Verdict: PASS
- Repair direction: None.

### unit_004: static centered cancellation and resolvent

- Statement fidelity: Matches the static part of the sketch row, including both induced orientations and the rank-free Neumann factor.
- Proof validity: The centered identity, pair-floor Neumann bounds, and static `2977eta<3072eta` arithmetic are unchanged and adequate under the accepted static inputs.
- Cited-result and assumption audit: Realized Gram/weight controls come from accepted dependencies; no future generated invariant is used.
- Rigor checklist: The static calculation keeps the row/column and ambient-column outputs separate and avoids a hidden `sqrt(r)` factor.
- Local adversarial test: Transposition preserves the static cancellation; the exact orthogonal stationary state is preserved.
- Contribution to target step: Supplies the static `3072eta` component and `kappa_res`.
- Verdict: PASS
- Repair direction: None, aside from retaining explicit labels in a repaired paper-facing version.

### unit_005: carried cancellation

- Statement fidelity: Targets the correct carried interface and names both orientations.
- Proof validity: REVISE_STEP.  Equation (43), the `A-A^0` transfer, the claimed diagonal-similarity cancellation, and the normalization reserve are not derived with sufficient inequalities.
- Cited-result and assumption audit: The new exclusive static/carried record convention is not an accepted dependency conclusion or a unit_002 hypothesis; its chronological derivation is missing.
- Rigor checklist: The quadratic term, static/carry cross terms, ambient-column conversion, and log bound are all high-risk rate-bearing subclaims with only prose-level support.
- Local adversarial test: An adversarial-sign off-diagonal carried field can affect the diagonal normalization through `H E`; without the displayed two-orientation sums, the claimed gain cannot be certified.
- Contribution to target step: This unresolved unit is the sole producer of the carried `ell_0` gain.
- Verdict: REVISE_STEP
- Repair direction: Expand the mixed Hadamard products and the resolvent/normalization difference in row and transposed-column form, prove the exclusive convention if retained, and show every residual is absorbed into `2u_C+u_J`.

### unit_006: chronological export

- Statement fidelity: The U/V/W order and target constants match the accepted sketch row.
- Proof validity: The recurrence arithmetic is conditional on unit_005; domain and positivity checks are not fully displayed.
- Cited-result and assumption audit: Range updates are generated outputs from the consumer chronology, not primitive assumptions, but the proof does not show all of their required interfaces here.
- Rigor checklist: `h_U=0`, `h_V=epsilon_U`, and `h_W=epsilon_U+epsilon_V` are correctly ordered; the claimed numerical margins need explicit substitutions.
- Local adversarial test: Without a proved carried gain, V/W can inherit an uncontrolled normalization increment.
- Contribution to target step: Would export the chronological `E_carry_resolvent`, but currently only conditionally.
- Verdict: REVISE_STEP
- Repair direction: After unit_005 is accepted, discharge `h_M`, `d_M`, `Delta_J`, inverse, and positive-scale conditions separately at U, V, and W.

## Hidden Subclaim Scan

The proof moves from named groups of terms to (43), from (43) to the sharp `2u_C+u_J` bound, and from that bound to the ambient-column and log interfaces without naming local lemmas for those implications.  These are independent theorem-critical subclaims, not routine notation.  The exclusive static/carried convention is another unproved interface restriction.  No hidden issue appears in the static ledger or exact scale identity.

## Target Claim Audit

The artifact's declared `COMPLETE` status is inconsistent with the proof.  `E_perp_pair` and the static solve/resolvent are established, but the exact conditional target
`epsilon_M^+ <= 3072 eta + (17/512) h_M`
is not established in both induced orientations.  Consequently `E_carry_resolvent` and the chronological `3072/3456/3888` outputs are not currently available to `step_007b`.

## Explicit Rate Audit

The deterministic conditional scope and exposed variables (`q_*`, `omega`, `beta_perp`, `eta`, `rho_ALS`, `h_M`, row/column norms, ambient-column norm, and product log) are identified.  No probability or horizon upgrade and no `sqrt(r)` term are introduced.  However, the explicit carried coefficient and all term absorptions required for it are not displayed, so the rate interface fails locally.

## Notation Surface Audit

The public outputs are only `E_perp_pair` and `E_carry_resolvent`; the remaining matrices are proof-local.  `A_M^0`, the exclusive record convention, and the provenance of `d_{M,carry}` need explicit definitions/conditions in the repaired unit.  The repaired artifact should add theorem-style labels rather than cite bare unit IDs.

## Target-Step Assembly Audit

Units 001--004 support the static ledger and exact solve.  Units 005--006 do not yet jointly imply the carried interface, so the assembly cannot authorize downstream `step_007b` consumption.  A fresh accepted review is required after the local producer repair.

## Review Rationale

REVISE_STEP is the smallest sound status.  The accepted sketch and dependency artifacts provide the intended raw interface and static mechanism; the failure is in the submitted step's missing algebra and unsupported narrowing of the carried record.  The sketch can remain unchanged if the producer proves the chronological specialization or handles the general mixed record.  No dependency rerun or sketch revision is required at this point.
