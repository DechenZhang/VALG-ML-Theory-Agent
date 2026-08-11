# Proof Step Review

## Step Review Identity

- Sketch attempt: 9
- Step ID: `step_007b`
- Unit attempt: 2
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_007b/proof.md`
- Reviewed proof SHA-256:
  `65768858a4db4580728b0b8b0eab04a4a81a3b495808a9cb4a52a13058f6f052`
- Binding setting SHA-256:
  `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Binding sketch SHA-256:
  `39fa8ed5134725387a788dc84467bee0f4530083192a1cd1845d16ff92075334`
- Binding sketch-review SHA-256:
  `f1e96d74e126f7bede1f8503aaf54fbcdf82663da318e40f53de8ea372e28cd4`
- Accepted dependency artifacts:
  `step_001` proof/review
  `601fe6bc7ef5d060d9ea229fab4f95c3e86d7c903b9686c7cb5a0d3a4a3a0f4a` /
  `3368ac1d6f5c3558baa0212a3c885d5337cb7f738bc4ac87cd2e32fe43d3224a`;
  `step_007` proof/review
  `9f465e8d899ceddb67e48c228a6e9015153f0970fe9cd17bda81cba0b06dd51d` /
  `783d5343c2e16b1ba9d24cf69e2edb04dd6b6e9d8b8d82a19cf037c482153349`;
  `step_007c` proof/review
  `db02db45050074e5f9e05358ff6ddce584ab6c4853a7e143c31867bdbc4a14f6` /
  `0e08f9b32efd3632b722874fabba79b9f23bad789792c2f632d4c9854c7ab081`.
- Review provenance: fresh review of the live unit-attempt-2 proof. No prior
  or archived `step_007b` review was consumed as evidence.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_007b

## Blocking Issues

1. **Location:** unit_001, especially equations (16)--(19), and the uses of
   Lemma~\ref{lem:step-007b-beta} in units 003--005. **Defect:** the local
   lemma map promises an a priori fixed-point envelope `bar beta`, but the
   proof never defines it. Instead it uses the trajectory-dependent
   `beta_FS=max_M beta_perp(M,h_M)` and obtains (17) from the conditional
   one-call estimate (11) before proving the required domains
   `h_M<=2rho_ALS/3`, `Delta_J^M<=1/64`, `d_M<1/8`, and positivity.
   Thus (18)--(19) are circular: the output bounds used to bound
   `beta_FS` are not available until the domains that the resulting bound
   is supposed to prove have already been discharged. **Downstream effect:**
   none of the U/V/W invocations of `E_carry_resolvent` is certified, so
   the chronological constants and final basin entry do not follow.
   **Smallest repair:** define a deterministic fixed point
   `bar beta=(b_0+6548 L_beta omega)/(1-6548 L_beta)`, its
   `bar eta` and staged envelope budgets before the trajectory; validate U,
   then V, then W against those budgets; only afterward define the actual
   `beta_FS` and reapply the already-domain-valid inequalities to recover
   the sharp bounds in terms of `eta_FS=omega+beta_FS`.

2. **Location:** unit_003 equations (27)--(28) and unit_004 equation (34).
   **Defect:** after U and V the proof sets
   `C_N=0, B_N^0=I, E_N=B_N^+-I`, but it never constructs the required
   predecessor comparator `A_N^{0,pred}`, its normalizer
   `nu_N^{0,pred}`, or
   `B_N^0=(I+A_N^{0,pred})D_{nu,N}^{0,pred}` by replacing only the
   carried fields in the predecessor equations while retaining the same
   current `F_N`. The fact that `I` has unit columns when the newly
   generated `F_N=0` does not prove that it is the comparator prescribed
   by the accepted interface. **Downstream effect:** the centered
   same-current normalization identity and the `u_C,u_J` carried-resolvent
   bound are not legally available at V or W. **Smallest repair:** record
   the actual and comparator predecessor solves and both normalizers
   immediately after U and V, prove their same-current-`F_N` identities
   and positivity, and define `C_N=B_N^0-I` and
   `E_N=B_N-B_N^0` from those records before the next call.

3. **Location:** equation (7), equation (14), and the claims
   `h_V=epsilon_U` and
   `h_W=epsilon_U+epsilon_V` in units 004--005. **Defect:** equation (7)
   defines `epsilon_N` as the actual maximum of the two induced norms,
   while (14) redefines the same symbols as deterministic upper envelopes.
   For example, (23) proves only that the actual U error is at most
   `3072eta_FS`; it does not prove equality. The exact chronology is
   therefore actual `h_V=epsilon_U^{act}` and
   `h_W=epsilon_U^{act}+epsilon_V^{act}`, followed by inequalities against
   separately named envelopes. **Downstream effect:** the claimed exact
   held records, the evaluation points in `beta_perp(M,h_M)`, and the final
   identification of the quotient fields are ambiguous. **Smallest repair:**
   separate actual record sizes from `bar epsilon_U,bar epsilon_V,
   bar epsilon_W`, state the exact actual chronology, and prove its staged
   domination without symbol reuse.

4. **Location:** units 003--005, the sentences asserting
   `d_U,d_V,d_W<1/16384` and subsequent positivity. **Defect:**
   `step_007c` makes `d_M<1/8`, positive input scales, positive actual
   and comparator normalizers, and the inverse domain conditional inputs to
   the one-call lemma. Although (10a) is restated, the submitted proof never
   performs its modewise substitution; it refers only to an "accepted
   call-domain calculation." It also does not display the predecessor
   comparator normalizer positivity required at V/W. **Downstream effect:**
   the proof has not discharged every condition before the corresponding
   literal call, as the sketch row requires. **Smallest repair:** after the
   a priori staged envelope is in place, evaluate (10a) in both induced
   orientations for the U, V, and W held budgets, derive the diagonal
   reserve and (11a), and write the positive incoming-scale and actual/
   comparator normalizer chain before each invocation.

## Per-Lemma Audit

### unit_001: entry comparator and noncircular perpendicular envelope

- Statement fidelity: REVISE_STEP. The unit promises the accepted a priori
  fixed-point and staged-domain interface, but no `bar beta` or
  independently validated staged envelope appears in its statement or proof.
- Proof validity: REVISE_STEP. Equations (17)--(19) use a conditional output
  estimate to establish the domains required for that same estimate.
- Cited-result and assumption audit: REVISE_STEP. The accepted
  `E_carry_resolvent` result is conditional; its held-record domains cannot
  be treated as already supplied by the dependency.
- Rigor checklist: REVISE_STEP. The quantifier order for the generated
  `h_M` values and the actual `beta_FS` is circular, and `epsilon_N`
  changes meaning between (7) and (14).
- Local adversarial test: REVISE_STEP. If a generated V or W record were
  outside the conditional domain, (11) would provide no inequality from
  which (17) or (18) could be inferred; scalar rearrangement alone does not
  exclude that branch.
- Contribution to target step: Not established. This unit was the sole
  proposed noncircular producer for all three call domains.
- Verdict: REVISE_STEP
- Repair direction: Introduce the a priori fixed point and carry out a
  finite U-to-V-to-W domain induction, then sharpen to the actual
  `beta_FS`.

### unit_002: literal active range and exact zero padding

- Statement fidelity: PASS. The proposition proves the exact literal
  rank-`k` range and inactive-column conclusion required by the row.
- Proof validity: PASS. For `K=[K_a,0]`, the block Moore--Penrose identity
  gives the displayed zero inactive block, and the exact unfolding factors
  the active output through `G_M`.
- Cited-result and assumption audit: PASS. The proposition uses only the
  setting's literal update, `E_sm`, and its explicitly stated nonsingular
  active-Gram condition.
- Rigor checklist: PASS. The active/inactive dimensions and singular branch
  are covered; no pre-update target-span conclusion is used.
- Local adversarial test: PASS. Arbitrary nonzero perpendicular content in
  an unupdated held mode affects `Z_M` but cannot move the output outside
  `range(G_M)`; inactive columns remain exactly zero.
- Contribution to target step: Supplies exact modewise range entry and
  zero-padding once the corresponding call's nonsingularity has been proved.
- Verdict: PASS
- Repair direction: None.

### unit_003: U-call admissibility, comparator handoff, and range entry

- Statement fidelity: REVISE_STEP. The U range conclusion is on target, but
  the promised same-current predecessor comparator is replaced by the
  unproved identity choice (27).
- Proof validity: REVISE_STEP. The pair-floor arithmetic is valid
  conditional on unit_001, but the `d_U` and positivity domains are
  asserted rather than discharged, and (27)--(28) do not construct
  `A_U^{0,pred},nu_U^{0,pred}`.
- Cited-result and assumption audit: REVISE_STEP. Conditional fields from
  `E_carry_resolvent` are consumed as though the accepted dependency had
  proved them unconditionally.
- Rigor checklist: REVISE_STEP. The actual error and its deterministic bound
  are conflated, and comparator provenance is missing.
- Local adversarial test: REVISE_STEP. For a nonstationary selected entry,
  setting the carried fields to zero in the predecessor equations need not
  make the comparator coefficient solve identically zero; unit-column
  normalization of `I` does not resolve this.
- Contribution to target step: Exact `N_U^+=0` follows once the call is
  legal, but the producer record required by V does not.
- Verdict: REVISE_STEP
- Repair direction: Validate U under the a priori envelope and emit the
  actual/comparator solve and normalizer records before constructing V's held
  input.

### unit_004: V-call admissibility, comparator handoff, and range entry

- Statement fidelity: REVISE_STEP. The numerical V target is correct, but
  the required U predecessor certificate and exact actual-record chronology
  are absent.
- Proof validity: REVISE_STEP. Equations (30)--(33) have valid numerical
  arithmetic as upper-envelope calculations, but (30) is not an exact
  identity with the symbol defined in (7), `d_V` is not derived, and the V
  comparator in (34) repeats the unsupported identity substitution.
- Cited-result and assumption audit: REVISE_STEP. The conditional carried
  interface cannot be invoked without the genuine U comparator record and
  the pre-V domain checks.
- Rigor checklist: REVISE_STEP. Row/column bounds, actual held-record sizes,
  comparator normalizers, and positivity are not assembled in the required
  pre-call order.
- Local adversarial test: REVISE_STEP. A legal U output can be close to the
  target while its prescribed predecessor comparator is not literally
  `I`; the current proof does not control the resulting decomposition.
- Contribution to target step: The conditional `3276eta_FS` arithmetic and
  exact V range mechanism are sound, but the hypotheses needed to use them
  have not been proved.
- Verdict: REVISE_STEP
- Repair direction: Consume a valid U predecessor record, distinguish actual
  and envelope `h_V`, discharge all domains, and then emit the analogous V
  predecessor record.

### unit_005: W-call admissibility and completed first-sweep entry

- Statement fidelity: REVISE_STEP. The desired exact range and
  `4096eta_FS` conclusion are stated, but their required chronological
  inputs are not established.
- Proof validity: REVISE_STEP. Conditional on valid U/V records and domains,
  the constants in (36)--(41) are numerically consistent:
  `6348eta_FS`, the `298eta_FS` pair bound,
  `3500eta_FS`, and
  `4096eta_FS<rho_ALS/3` all have slack. The proof nevertheless depends on
  the circular unit_001 envelope, the two invalid comparator handoffs, and
  an asserted rather than derived `d_W`/positivity check.
- Cited-result and assumption audit: REVISE_STEP. The W call has not been
  shown to satisfy every conditional premise of the accepted one-call
  interface.
- Rigor checklist: REVISE_STEP. The final quotient tuple uses the same
  `E_U,E_V` symbols that were defined through unsupported identity
  comparators, so the assembly does not identify the accepted
  same-current-record fields unambiguously.
- Local adversarial test: PASS for the displayed terminal numerical margin,
  but REVISE_STEP for domain provenance: the final small number cannot
  retroactively justify an earlier conditional call.
- Contribution to target step: Exact range/zero-padding would compose and
  the final numerical margin is adequate, but the proof does not legally
  reach this unit's hypotheses.
- Verdict: REVISE_STEP
- Repair direction: Complete the staged induction and genuine predecessor
  record flow, then rerun the same terminal arithmetic.

### unit_006: exact stationary baseline through the first sweep

- Statement fidelity: PASS. The claim preserves the exact orthogonal
  equal-weight stationary specialization rather than substituting the
  positive bookkeeping envelope.
- Proof validity: PASS. At `H_M=I,B_M=I,N_M=0,s=0`, the literal normal
  equations give `A_M=A_M^0=0`, unit normalizers, stationary factors, and
  zero actual perpendicular and quotient errors in all three calls.
- Cited-result and assumption audit: PASS. The statement is a deterministic
  specialization of the accepted dependencies and the literal update.
- Rigor checklist: PASS. The finite transient upper envelope is kept
  separate from exact stationary equality.
- Local adversarial test: PASS. Merely setting `q_real=0` away from the
  stationary selected state is not used to erase a finite certificate
  transient.
- Contribution to target step: Preserves the required baseline invariance.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The local lemma map names the high-risk beta, domain, comparator, range, and
baseline obligations, so no additional independent unit is required.
However, the promised a priori fixed-point construction is absent from
unit_001, and the modewise `d_M`/normalizer domain discharges are replaced
by broad assertions in units 003--005. These are unproved named obligations,
not harmless atomic steps.

## Target Claim Audit

The proof does not establish the exact sketch-row claim. It proves the
Moore--Penrose range/zero-padding mechanism and the terminal numerical
margin conditionally, but it does not prove the pre-call beta/domain
chronology or the required same-current predecessor comparator handoffs.
No target-span fact is used prematurely, and no change to the target,
assumptions, dependencies, probability mode, or algorithm is needed to
repair the identified defects.

## Explicit Rate Audit

This is rate-bearing. The proof correctly declares `r,q_*,tau_r,omega`,
`rho_ALS`, the beta/eta fields, the finite one-sweep horizon, deterministic
event-conditioned mode, induced row/column and quotient norms, universal
hidden constants, and the orthogonal baseline. The terminal inequalities
`3276/3500/4096` are numerically sound under valid inputs. The exposed rate
is nevertheless unproved because the actual `beta_FS` is bounded
circularly and actual record sizes are conflated with envelope values. The
repair must preserve the actual `eta_FS` conclusion after using the a
priori envelope only to establish domains.

## Notation Surface Audit

`H_M,B_M,N_M,F_M` and the public output events are appropriately
classified. Two blocking notation defects remain: the promised
`bar beta` is absent, and `epsilon_U,epsilon_V,epsilon_W` denote both
actual norm maxima and deterministic upper budgets. In addition,
`B_N^0` is rebound to the identity without the accepted predecessor-solve
provenance. These collisions hide precisely the staged-domain and
same-current-comparator obligations under review.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-007b-range-zero} and
Claim~\ref{claim:step-007b-baseline} pass. The remaining named units do not
jointly imply `E_pair_entry` or `E_parallel_entry`: the call-domain
producer is circular and the V/W carried inputs lack valid comparator
certificates. Once those step-local defects are repaired, the displayed
range chronology and terminal `4096eta_FS<rho_ALS/3` arithmetic can be
reused without changing the sketch.

## Review Rationale

`REVISE_STEP` is the smallest sound status. The setting, accepted
sketch-9 row, and accepted dependencies already expose the fixed-point
envelope, staged U/V/W discharge, same-current predecessor comparator,
two-orientation reserve, exact range, and final margin interfaces. The
submitted proof fails to instantiate those interfaces, but no sketch claim,
dependency list, primitive assumption, algorithm, metric, probability mode,
or output target needs to change. The producer rerun must be followed by a
fresh `/proof-step-review step_007b` before downstream use.
