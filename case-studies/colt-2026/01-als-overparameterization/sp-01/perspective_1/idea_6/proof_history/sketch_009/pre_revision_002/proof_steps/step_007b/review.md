# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_6`
- Sketch attempt: 9
- Step ID: `step_007b`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_6/proof_steps/step_007b/proof.md`
- Reviewed proof SHA-256: `23f484671029bfa57618e1af09e5dec6de30425a8017b5022edc9aa2e0e1b804`
- Binding setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Binding sketch SHA-256: `39fa8ed5134725387a788dc84467bee0f4530083192a1cd1845d16ff92075334`
- Binding sketch-review SHA-256: `f1e96d74e126f7bede1f8503aaf54fbcdf82663da318e40f53de8ea372e28cd4`
- Accepted dependencies read at their pinned hashes: `step_001` proof/review `601fe6bc7ef5d060d9ea229fab4f95c3e86d7c903b9686c7cb5a0d3a4a3a0f4a` / `3368ac1d6f5c3558baa0212a3c885d5337cb7f738bc4ac87cd2e32fe43d3224a`; `step_007` proof/review `9f465e8d899ceddb67e48c228a6e9015153f0970fe9cd17bda81cba0b06dd51d` / `783d5343c2e16b1ba9d24cf69e2edb04dd6b6e9d8b8d82a19cf037c482153349`; `step_007c` proof/review `db02db45050074e5f9e05358ff6ddce584ab6c4853a7e143c31867bdbc4a14f6` / `0e08f9b32efd3632b722874fabba79b9f23bad789792c2f632d4c9854c7ab081`.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_007b

## Blocking Issues

1. **The beta bootstrap is still circular on its call domain** (`proof.md:207-233`). The affine ledger (16) is stated only for `0 <= h <= 2rho_ALS/3`. The proof obtains (17) by applying the conditional one-call bound (11), whose hypotheses include that same `h` domain (as well as the diagonal reserve), and then applies (16) to derive (18)-(19). The later inequalities (30) and (36) establish the domain only after (19) has been solved. No first-exit/continuation argument or staged U-then-V-then-W induction supplies the missing initial domain. Consequently `beta_FS < 2*10^(-8)omega` and `eta_FS < 1.001q_*^2` are not established before the first call, so the subsequent margin checks cannot be invoked. Repair locally by defining an a priori scalar envelope (or a genuine minimal fixed point) and proving each call's domain before applying its conditional output, or by adding an explicit first-exit argument.

2. **The post-predecessor comparator required by `E_carry_resolvent` is not constructed** (`proof.md:311-323, 374-380, 428-430`). The accepted sketch/dependency interface requires, for a carried mode, a predecessor certificate of the form `B_N^0=(I+A_N^{0,pred})D_{nu,N}^{0,pred}` obtained by zeroing only the carried `E_N` while retaining the current `N_N`/`F_N`, together with its same-current normalization identity. After the U and V solves the proof instead declares `C_U=0, B_U^0=I` and `C_V=0, B_V^0=I`, and proves only `diag((B^+)^T H B^+)=diag(H)=1`. It never defines `A_N^{0,pred}` or `nu_N^{0,pred}`, nor proves that `I` is that predecessor comparator. Thus the centered cancellation and the `Delta_C/Delta_J` bounds of the carried interface are not discharged for the V/W calls. Add the actual predecessor solve/normalizer certificates (or prove, under the unchanged interface, that the identity comparator is exactly the required zero-`E_N` construction) before setting the carried `E_N` budgets.

3. **The diagonal normalization reserve is asserted rather than discharged before each conditional call** (`proof.md:151-163, 302-308, 361-366, 411-415`). The restated one-call interface lists a reserve below `1/8` as a hypothesis, and the accepted dependency explicitly assigns `d_M<1/8` to this consumer. The proof checks `h_M` and `Delta_J`, then says that the accepted calculation gives `d_U,d_V,d_W<1/16384`; it does not define the reserve quantitatively or derive it from the current `S_0`, `Delta_C`, and carried terms before invoking (11). The claimed `nu_{M,j}^2>1/2` and output positivity therefore rest on an unverified premise. Show the row/column diagonal-reserve inequality and its numerical substitution separately at U, V, and W (after the repaired beta/comparator induction), then invoke the one-call interface.

## Per-Lemma Audit

### unit_001: entry comparator and noncircular perpendicular envelope

- Statement fidelity: PASS. The statement targets the entry records, the common `beta_FS` envelope, and the exact `epsilon_U/epsilon_V/epsilon_W` chronology in the accepted sketch row.
- Proof validity: REVISE_STEP. Equations (16)-(19) use a bound restricted to `h <= 2rho_ALS/3` before that restriction is proved; (17) also invokes the conditional one-call estimate before its V/W hypotheses are discharged.
- Cited-result and assumption audit: REVISE_STEP. The accepted ledger is correctly identified, but its domain and the one-call domain are not discharged noncircularly. The same-current initial identity (13) is valid for the initial held records.
- Rigor checklist: REVISE_STEP. The scalar rearrangement in (19) is arithmetically correct conditional on (18), but (18) has no valid antecedent at this point.
- Local adversarial test: REVISE_STEP. A hypothetical first call whose carried budget exits `2rho_ALS/3` is not excluded by the written argument; the proof has no first-exit contradiction or monotone envelope to rule it out.
- Contribution to target step: PARTIAL. It gives the intended scalar inequality conditional on the missing domain induction, but does not yet produce the pre-call `eta_FS` bound.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_007b`; add a noncircular scalar envelope/first-exit or staged chronology proof.

### unit_002: literal active range and exact zero padding

- Statement fidelity: PASS. The proposition matches the exact Moore--Penrose rank-`k` update and states both inactive zero preservation and active `range(G_M)` output.
- Proof validity: PASS conditional on the stated active Gram nonsingularity. The block-diagonal pseudoinverse calculation and unfolding multiplication are valid, and no projection is introduced.
- Cited-result and assumption audit: PASS. The active floor and positive scale conditions are supplied by the surrounding chronological units when those units are valid; the proposition itself does not assume future target-span membership.
- Rigor checklist: PASS. The inactive block is exactly zero and the active output is an explicit `G_M Z_M` product.
- Local adversarial test: PASS. A nonzero held perpendicular component can alter `Z_M` but cannot move the exact left range of `T_(M)`; singularity is the only required branch condition.
- Contribution to target step: PASS as a conditional range/zero-padding lemma.
- Verdict: PASS
- Repair direction: None locally; its chronological use remains conditional on units 001, 003, and 004.

### unit_003: U-call admissibility, comparator handoff, and exact range entry

- Statement fidelity: PASS. It names the U-call floor, positivity, output envelope, exact range update, and comparator handoff required by the sketch row.
- Proof validity: REVISE_STEP. The `31/32` floor arithmetic is sound conditional on the accepted raw interface, but the one-call hypotheses (especially the diagonal reserve) are not shown before (11). The handoff in (27) is only a unit-diagonal identity, not the required predecessor comparator construction.
- Cited-result and assumption audit: REVISE_STEP. The proof invokes the accepted carried-resolvent output while treating its call-domain reserve as if it were already proved. It also omits the `A_U^{0,pred},nu_U^{0,pred}` objects required by that interface.
- Rigor checklist: REVISE_STEP. Positivity of `nu_U` and the exact output envelope depend on the unverified reserve and beta-domain premises.
- Local adversarial test: REVISE_STEP. An admissible `B_U^+` with nontrivial static predecessor error need not have `I` as the zero-`E_U` predecessor comparator; the proof does not rule out this mismatch.
- Contribution to target step: PARTIAL. The exact range mechanism is valid once the ordinary branch is established, but the quantitative U certificate is not currently discharged.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_007b`; construct the predecessor comparator and prove the diagonal reserve before invoking the call interface.

### unit_004: V-call admissibility, comparator handoff, and exact range entry

- Statement fidelity: PASS. The stated `h_V=epsilon_U`, constants, range conclusion, and pre-W certificate align with the sketch row.
- Proof validity: REVISE_STEP. The numerical substitutions (30)-(33) are correct conditional on the beta bound and U output, but those inputs are not established by unit 001, and the reserve/normalizer premise remains asserted. Equation (34) repeats the unsupported identity comparator handoff.
- Cited-result and assumption audit: REVISE_STEP. The V call consumes `E_carry_resolvent` without a proved predecessor comparator for U and without a pre-call `d_V` discharge.
- Rigor checklist: REVISE_STEP. The chronology is ordered correctly, but a conditional implication cannot certify the V update until all its hypotheses are proved.
- Local adversarial test: REVISE_STEP. A carried U record with the same unit-column diagonal but a different predecessor comparator is not excluded by (27); its centered cancellation may differ from the one used in the interface.
- Contribution to target step: PARTIAL. The h-budget arithmetic is usable after units 001 and 003 are repaired.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_007b`; consume a freshly emitted U predecessor certificate and discharge the V domain before (11).

### unit_005: W-call admissibility and completed first-sweep entry

- Statement fidelity: PASS. It targets the exact three zero-perpendicular conclusions and the `4096eta_FS` basin margin.
- Proof validity: REVISE_STEP. The arithmetic in (36)-(41) is consistent conditional on the earlier envelopes, but W's conditional call hypotheses, beta domain, and predecessor comparator certificates are not established in the submitted proof.
- Cited-result and assumption audit: REVISE_STEP. The statement depends on units 001, 003, and 004, each of which currently leaves a required interface premise unresolved.
- Rigor checklist: REVISE_STEP. The final maximum-to-quotient assembly is valid only after the W output bound has been legally obtained.
- Local adversarial test: REVISE_STEP. The proof does not exclude an uncharged carried normalization term at W if the U/V comparator certificates are not the accepted same-record objects.
- Contribution to target step: PARTIAL. The final numerical margin itself passes once the preceding domains are valid.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_007b`; re-run the W chronology after repairing the producer handoffs and beta/reserve induction.

### unit_006: exact stationary baseline through the first sweep

- Statement fidelity: PASS. The claim preserves the exact orthogonal equal-weight stationary conclusion required by the setting and sketch.
- Proof validity: PASS. At the stationary specialization the actual `F_M`, perpendicular contamination, comparator error, direction error, and product-register update are all zero; the proof correctly distinguishes this actual value from the positive bookkeeping envelope.
- Cited-result and assumption audit: PASS. The limiting deterministic specialization is explicitly separated from the positive-smoothing event and uses only the exact range identity and normal equations.
- Rigor checklist: PASS. No positive error floor is substituted for the zero baseline.
- Local adversarial test: PASS. The claim is limited to the stationary representative; it does not incorrectly erase a finite nonstationary certificate's `tau_r` terms.
- Contribution to target step: PASS for baseline invariance, independent of the unresolved quantitative chronology.
- Verdict: PASS
- Repair direction: None locally.

## Hidden Subclaim Scan

REVISE_STEP. In addition to the named units, the proof relies on three unproved theorem-critical bridges: (i) a noncircular existence/domain argument for the implicit `beta_FS` envelope, (ii) equality between the identity handoffs in (27)/(34) and the predecessor zero-`E_N` comparator required by `E_carry_resolvent`, and (iii) a quantitative pre-call diagonal-reserve bound. These are not supplied by the local lemma map or by an explicitly restated accepted dependency conclusion.

## Target Claim Audit

REVISE_STEP. The proof has the exact target objects, chronology, range mechanism, zero-padding argument, and correct conditional arithmetic for `3072/3276/3500/4096`. It does not yet prove the exact target claim because the beta envelope and all one-call hypotheses are not established before U/V/W, and the carried comparator handoff is not linked to the accepted predecessor-certificate interface. No target-span fact is assumed prematurely in Proposition~\ref{prop:step-007b-range-zero}; the failure is quantitative/interface-local.

## Explicit Rate Audit

REVISE_STEP. The exposed variables, pathwise probability mode, one-sweep horizon, and norm modes are stated. The final constants are arithmetically sound conditional on the call interfaces. However, the rate-bearing beta simplification uses (16) outside a proved domain, and the diagonal-reserve and comparator terms are not explicitly absorbed before the output rate (11) is applied. The missing inequalities affect the `3072`, `3276`, `3500`, and `4096` chain and must be displayed in the producer rerun.

## Notation Surface Audit

REVISE_STEP. The public/private classification is mostly clear, and `F_N` is consistently kept current. The phrase “diagonal coefficient reserve” in (11) is not defined as a formula, and the proof never introduces the required predecessor objects `A_N^{0,pred}` and `D_{nu,N}^{0,pred}` despite consuming that interface. Define those objects and the reserve explicitly, or prove the identity comparator is the exact specialized construction.

## Target-Step Assembly Audit

REVISE_STEP. Accepted `step_001`, `step_007`, and `step_007c` supply the static geometry, entry decomposition, pair ledger, and conditional one-call tool. Proposition~\ref{prop:step-007b-range-zero} supplies exact range/zero padding once a call is legal. The submitted local units do not jointly discharge the one-call hypotheses or emit the required predecessor comparator before V and W, so they cannot yet assemble `E_pair_entry` and `E_parallel_entry` for downstream consumption.

## Review Rationale

`REVISE_STEP` is the smallest status. The defects are confined to the submitted step proof: the accepted setting, sketch row, dependency list, exact range mechanism, and baseline conclusion remain usable. A producer rerun should add a staged or first-exit beta bootstrap, explicitly emit the same-current predecessor comparator and normalization after each exact predecessor solve, and prove the diagonal reserve before each conditional call. After that repair, a fresh accepted `/proof-step-review step_007b` is required before downstream use.
