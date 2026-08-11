# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_6`
- Sketch attempt: 2
- Step ID: `step_007b`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_1/idea_6/proof_steps/step_007b/proof.md`
- Reviewed proof SHA-256: `9d7d3a7a35d518ce0b7efeb8e72493a83247785cdfe518c199d79c603241b960`
- Setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Sketch SHA-256: `c6126ab9b81d7a7cbcae3b9b857923f3fe8e275ed1ba4376fd830270c5ec95e1`
- Sketch-review SHA-256: `524bc3e32fc6d334d4c6c78bf8e347888df2cd4bbbd21bf7c3dc1414c0c9b3a4`
- Accepted dependencies: `step_001` proof `83ce9b561ae357ace3afd0f3be937b154643ab0b4b008b14bd16a6aabf7b9764`, review `4313048f58f570d9427ed2f59c3962b113c076e5a9381592de4e7e77e23e3458`; `step_007` proof `36058dc7e1c1d72d5541422e33b7330038a2d99ebbe03711da8e150b8a62f792`, review `6ca23ff8669d80026d04d3788f1e917f54b71fd00882104d5013cdd13411e8e2`.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_007b

## Blocking Issues

1. **The normalized-output constants do not follow from equations (24)--(26) (unit_003b, lines 496--523).** Let `S = 288 omega + 2 beta`. The displayed bounds give
   `||A_M-I||_rc <= 8 Gamma^2 S + (32q+16rho_0) sum eps_N` and
   `d_M <= 4 Gamma^2 S + (8q+8rho_0) sum eps_N`.
   Equation (25) then contributes `2(1+||A_M-I||) d_M` to the row/column envelope (and `2 d_M`, `3 d_M` to the log/direction envelopes). Thus the displayed estimates yield a static contribution on the order of `16 Gamma^2 S`, not the `8 Gamma^2 S` used in (26); `16*(1.01)^2*288 > 3072`. Likewise, the carried row/column contribution is `48q+32rho_0`, not the asserted `36q+24rho_0`. With `rho_0=4q`, the former is `176q > 136q = 8q+32rho_0`. The claimed `3072 eta` bound and hence the `3456/3888/4096` recurrence are therefore not proved. Repair locally by deriving a sharper cancellation/normalization estimate before taking induced norms (including both row and column orientations), or by recomputing all envelopes and rechecking that the fixed target `4096 eta` still holds.

2. **The rank-free transfer to (24) remains asserted rather than auditable (unit_003b, equations (22)--(24)).** The proof states that the induced Neumann estimate and `Lemma~ref{lem:p1-i6-s007b-carried-gram}` give the coefficients `8 Gamma^2`, `32q+16rho_0`, `4 Gamma^2`, and `8q+8rho_0`, but it does not display the decomposition of `(C_M^cr-J_M)`, the inverse/conjugation multiplication in each induced orientation, or the cancellation needed to obtain those constants. The missing calculation is exactly the bridge from the repaired carried-Gram expansions to the normalized column and product-log bounds. Add the current-notation derivation (or a named local lemma) and discharge the diagonal-similarity and normalization terms with explicit constants; do not rely on the sentence `give, in both orientations`.

3. **The baseline auxiliary statement is inconsistent with the proof-local definition of beta (unit_006, lines 670--690).** In (5), `beta` is the positive numerical upper bound `2(1+q)(1+48omega)^2 t^2 + r t^4`, with `t=tau_r>0` fixed by the setting. At the orthogonal stationary specialization the actual `F_M` and all perpendicular contributions vanish, but this displayed upper bound does not become zero unless the limiting specialization also sets `tau_r=0`. Replace `beta=0` by an explicit statement that the actual contamination is zero (or state the limiting convention for `tau_r`); retain the exact `e^1=0` baseline conclusion.

## Per-Lemma Audit

### unit_001: collective perpendicular pair-Gram ledger

- Statement fidelity: PASS. It retains (F_M=N_M^TN_M) and the exact coherent (r\tau_r^4) term required by the sketch.
- Proof validity: PASS. Orthogonal splitting, entrywise (F_M) control, and both induced orientations support the displayed beta bound.
- Cited-result and assumption audit: PASS. Only accepted `E_sm` and `step_007` outputs are used.
- Rigor checklist: PASS. The finite-sweep numerical specialization is conservative for every (r\ge3).
- Local adversarial test: PASS. Coherent perpendicular columns are charged by (r\tau_r^4), not discarded by a rank-free max bound.
- Contribution to target step: PASS. Supplies the collective ledger consumed by the first inverse.
- Verdict: PASS
- Repair direction: None.

### unit_002: initial normalized cross/pair Grams and inverse branch

- Statement fidelity: PASS for the first U subupdate.
- Proof validity: PASS. The repaired transpose calculation uses the common `40(1+q) omega` bound in both orientations; the `96 omega` and `192 omega+2 beta` bounds and Weyl floor follow with slack.
- Cited-result and assumption audit: PASS. The target Gram floor and selected-entry decomposition are accepted dependencies.
- Rigor checklist: PASS. Positive diagonal scaling and the first `31/32` floor are established before the U solve.
- Local adversarial test: PASS for the shared-perpendicular first entry; the beta reserve is retained.
- Contribution to target step: PASS. Later-subupdate bounds are supplied by units 003a/003b and unit 005.
- Verdict: PASS
- Repair direction: None.

### unit_003a: carried-direction Gram and mixed Hadamard expansion

- Statement fidelity: PASS. It explicitly states the unit-column diagonal cancellation and the mixed V/two-carried W expansions.
- Proof validity: PASS at the displayed coarse constants. The off-diagonal/diagonal split gives both induced orientations and the quadratic (\rho_0) charges.
- Cited-result and assumption audit: PASS. Initial held matrices use the accepted step_007 decomposition; carried matrices are local conditional inputs later discharged chronologically.
- Rigor checklist: PASS. The condition (\varepsilon_N\le\rho_0/3) is used in the product absorption inequality.
- Local adversarial test: PASS. Mixed initial/carried and two-carried terms are exposed rather than hidden in a generic perturbation.
- Contribution to target step: PASS as a Gram-level lemma; its output still needs a valid normalized resolvent transfer.
- Verdict: PASS
- Repair direction: None.

### unit_003b: held-input resolvent and scale-equivariant normalized output

- Statement fidelity: PASS in interface and dependency scope.
- Proof validity: REVISE_STEP. Equations (24)--(26) do not justify the stated static or carried envelope constants after the explicit normalization terms in (25); the rank-free induced-norm transfer is also not derived line by line.
- Cited-result and assumption audit: REVISE_STEP. No dependency is invalid, but the accepted Gram bounds are not visibly translated into the claimed (\mathcal A_M), (d_M), and normalized-output constants.
- Rigor checklist: REVISE_STEP. The missing arithmetic affects row/column norms, direction norms, log-product norms, and the `1/8` gain.
- Local adversarial test: REVISE_STEP. Substituting the displayed A/d bounds into (25) produces the larger coefficients recorded in Blocking Issues 1 and 2.
- Contribution to target step: REVISE_STEP. This unit is the quantitative producer for all V/W floors and the final `4096 eta` entry.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_007b`; add the explicit induced-norm resolvent and normalization calculation, then recompute the recurrence constants.

### unit_004: exact range containment and zero-padding identity

- Statement fidelity: PASS conditional on the current active floor and positive active scales.
- Proof validity: PASS. The block Moore--Penrose calculation is noncircular and gives exact range containment and zero inactive columns.
- Cited-result and assumption audit: PASS. The unfolding identity and zero-column convention are setting facts.
- Rigor checklist: PASS conditional. It is invoked only after each chronological floor is established.
- Local adversarial test: PASS. A remaining held perpendicular component can change coefficients but cannot leave the exact left range of the unfolding.
- Contribution to target step: PASS structurally; its use in unit 005 still depends on the unresolved unit_003b floors.
- Verdict: PASS
- Repair direction: None locally.

### unit_005: chronological first-sweep entry

- Statement fidelity: PASS. It separates scalar envelopes from tuple states and states the U/V/W chronology, zero fields, and final (d_Q) interface.
- Proof validity: REVISE_STEP. The chronological order and numerical floor checks are correctly arranged, but the recurrences invoke the invalid `3072 eta`/`ell_0` conclusion from unit_003b.
- Cited-result and assumption audit: PASS conditional on a repaired unit_003b; no later basin fact is used to establish target-span membership.
- Rigor checklist: REVISE_STEP. The final maximum-to-(d_Q) assembly is structurally clear but lacks a valid quantitative premise.
- Local adversarial test: REVISE_STEP. Any corrected carried gain/static envelope must be propagated through the V and W inequalities and rechecked against `rho_ALS/3`.
- Contribution to target step: REVISE_STEP. It cannot currently certify the completed first-sweep bound.
- Verdict: REVISE_STEP
- Repair direction: Re-run `/proof-step step_007b` after repairing unit_003b; preserve the noncircular chronology.

### unit_006: entry interface and baseline reduction

- Statement fidelity: PASS for the public interfaces and exact stationary conclusion.
- Proof validity: REVISE_STEP. Packaging depends on the unresolved unit_003b recurrence, and the auxiliary `beta=0` assertion is inconsistent with definition (5).
- Cited-result and assumption audit: PASS. No new event or basin assumption is introduced.
- Rigor checklist: REVISE_STEP for the baseline notation and inherited quantitative premise.
- Local adversarial test: PASS for the actual orthogonal stationary state ((F_M=0), (N_M^+=0), (e^1=0)); the numerical beta upper bound must be distinguished from the actual contamination.
- Contribution to target step: REVISE_STEP until the repaired recurrence and baseline wording are accepted.
- Verdict: REVISE_STEP
- Repair direction: Repackage after unit_003b/005 are repaired; state the actual-zero baseline explicitly.

## Hidden Subclaim Scan

The repaired proof now exposes the carried Gram identities, the local range lemma, the chronological U/V/W states, and the single surviving product register. The remaining hidden theorem-critical subclaims are the induced-norm expansion from (18) to (24), the cancellation/normalization arithmetic that would make (25) fit `3072 eta` and `ell_0`, and the resulting recurrence constants. These are local producer claims, not sketch-interface defects.

## Target Claim Audit

The proof establishes the exact perpendicular ledger, repaired initial transpose bounds, noncircular range/zero-padding identity, and the structure of the chronological first sweep. It does not establish the quantitative held-input envelope required for the V/W recurrence and final `norm(e^1)_Q<=4096(omega+beta_perp)` because equations (24)--(26) do not imply the stated constants. The exact sketch-row claim is therefore not proved.

## Explicit Rate Audit

- Exposed variables, deterministic conditional probability mode, one-sweep horizon, and norm modes are declared correctly.
- The rate-bearing constants are not certified: the displayed A/d bounds and normalization inequality yield larger static and carried coefficients than the exported `3072`, `1/8`, `3456`, `3888`, and `4096` chain.
- No dependency or probability conversion issue was found, and the (\beta_perp<10^{-8}\omega) and final numerical comparison are sound once a valid envelope is supplied.
- Baseline reduction preserves the exact zero state, but the proof must distinguish the actual zero perpendicular ledger from the positive bookkeeping upper bound beta.

## Notation Surface Audit

The requested scalar-envelope/chronological-tuple separation and single `s_W^+` register are present. The symbols `beta` and `beta=0` need a local clarification at the baseline, and the A/d-to-normalized-output conversion should be written as a named local calculation so that its public rate does not hide a constant or norm-mode change.

## Target-Step Assembly Audit

Accepted `step_001` and `step_007` plus units 001--003a provide the raw geometry and carried-Gram controls. Unit 004 supplies exact range/zero-padding once a floor exists. The assembly fails at unit 003b's quantitative transfer, so unit 005 cannot certify the later floors or final quotient envelope and unit 006 cannot export `E_parallel_entry`.

## Review Rationale

`REVISE_STEP` is the smallest status. The accepted sketch row, assumptions, dependencies, target objects, chronology, and exact range mechanism remain usable; the defects are confined to the submitted producer arithmetic and one baseline notation statement. A fresh `/proof-step step_007b` should derive the induced row/column resolvent and normalization bounds with explicit constants, propagate the corrected gain through U/V/W, and then reissue this step review before downstream consumption.
