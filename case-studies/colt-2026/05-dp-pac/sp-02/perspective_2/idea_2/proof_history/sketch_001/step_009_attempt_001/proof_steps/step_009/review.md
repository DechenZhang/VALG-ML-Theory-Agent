# Proof Step Review

## Step Review Identity

- Sketch attempt: `1`
- Step ID: `step_009`
- Unit attempt: `1`
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_009/proof.md`, SHA-256 `bad463eb9997416785d36fdc3cbeb9d51d50f1d51758d3905beacd2ced3564a0`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_009

## Blocking Issues

1. **Unit 003 omits a theorem-facing admissibility condition.** In `proof.md:440-465`, the proposition claims that all four conditions in `(C9.1)` hold but does not state `N >= N_0` (or explicitly restate the four conditions). Its proof uses `N >= N_0` at `proof.md:468-479` to obtain `N >= N_th`; without that condition the proposition is false for admissible-looking `N < N_0`, and unit 004 has no self-contained admissibility interface. Repair unit 003's statement by explicitly assuming `N >= N_0` and displaying the instantiated conditions `N >= N_th`, `n < a_th log^* N`, `0 < epsilon_0 <= 1`, and `0 <= delta_m <= a_delta/(n^2 log(en))` (with `n = ceil(2m/k)+12`).

2. **Unit 003 misidentifies the generated-object producer.** At `proof.md:462-465`, `prop:step-006-exact-dp` is said to "produce" `B_Pi`; the accepted dependency actually defines the kernel in `prop:step-006-kernel`, while `prop:step-006-exact-dp` proves its inherited privacy conditional on that kernel (and `lem:step-006-locality`). This leaves the producer-consumer provenance of the exported competitor incorrect at the local-unit interface. Repair by naming `prop:step-006-kernel` as the producer and `prop:step-006-exact-dp` as the privacy certificate, with their exact hypotheses and conclusions.

3. **Unit 004 is not self-contained about its consumed interfaces.** The theorem statement at `proof.md:532-540` lists only the three setting assumptions, although its proof consumes `prop:step-009-admissibility`, the `(HP)` conclusion from `prop:step-005-hard-prior`, exact privacy from `prop:step-006-exact-dp`, and the unconditional utility bound from `prop:step-008-utility`. The proof is mathematically the right strict contradiction, but the local statement hides these nontrivial dependency inputs, violating the local-unit assumption/dependency-basis contract. Repair the statement to name those prior theorem-style results and state that they apply to the same `Pi`, `B_Pi`, `(n,N,epsilon_0,delta_m)`, and temporary counterassumption.

4. **Unit 005 uses an unlisted and mis-scoped utility dependency.** Its statement at `proof.md:581-597` names `prop:step-008-auxiliary`, but the unconditional expected-risk inequality in `(9.28)` (`proof.md:639-653`) is supplied by `prop:step-008-utility`; `prop:step-008-auxiliary` supplies only the conditional one-arm certificate. The proof also invokes the delta admissibility comparison from unit 003 only by equation numbers. Consequently the baseline unit's stated dependency interface does not discharge the HP-versus-UT contradiction it performs. Repair the statement/proof to cite `prop:step-008-utility` for `(UT)`, retain `prop:step-008-auxiliary` only for the probability-one auxiliary claim, and use the named `prop:step-009-admissibility` result (or restate its exact four-condition conclusion) for the unchanged-`delta_m` HP instantiation.

## Per-Lemma Audit

### unit_001: Universal specialization constants and finite-domain threshold

- Statement fidelity: The unit targets the constants and finite-`N` reserve in the sketch row. It correctly derives `C_Delta`, `c_delta`, `c`, and an integer `N_0 >= N_th` with `log^* N_0 > 26/a_th`.
- Proof validity: The positivity, unboundedness/monotonicity choice, and implication `13 < (a_th/2) log^* N` are valid. No hidden asymptotic step is used.
- Cited-result and assumption audit: The accepted `step_005` interface supplies universal `a_th`, `a_delta`, and `N_th`; the unit uses no learner- or data-dependent quantity. The dependency is named, though the producer wording should be read as exporting constants rather than invoking HP at an unverified parameter instance.
- Rigor checklist: Integer selection, strict inequalities, and parameter independence are correct. The argument remains valid at all allowed privacy endpoints and does not require `m`, `k`, or `N` beyond the later `N >= N_0` use.
- Local adversarial test: For arbitrarily small positive `a_th`, iterated logarithm unboundedness still supplies a finite `N_0`; the strict reserve survives equality at `N=N_0` because the choice is strict.
- Contribution to target step: PASS; this unit fixes the universal constants and strict additive reserve needed by unit 002.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact sample and privacy-denominator arithmetic

- Statement fidelity: The unit matches the sketch's ceiling, logarithm, denominator, and counterassumption obligations and explicitly states `N >= N_0`.
- Proof validity: Since `m,k >= 1`, `ceil(2m/k) <= 2m`, hence `n <= 2m+12 <= 14m <= 15m`. The bound `log(en) <= log(15em) <= (1+log 15) log(em)` is valid because `log(em) >= 1`; multiplying by `n^2 <= 225m^2` gives the stated `C_Delta`. Under `m < (a_th/4) k log^* N`, `ceil(2m/k) < (a_th/2)log^*N+1`, so `n < (a_th/2)log^*N+13 < a_th log^*N`.
- Cited-result and assumption audit: `m,k >= 1` come from the named setting assumptions, and the constants/`N_0` come from unit 001. No privacy or utility conclusion is assumed.
- Rigor checklist: All inequality directions, ceiling strictness, positive logarithm denominators, and dependence on `m` are explicit. The argument works at `m=1`, without a large-sample qualification.
- Local adversarial test: Testing `k=1`, `k >> m`, and `m=1` leaves the bounds valid; the reciprocal comparison is correctly oriented because the larger denominator is on the left of (9.10).
- Contribution to target step: PASS; this unit supplies the exact `n`/`m` and privacy-denominator transfers.
- Verdict: PASS
- Repair direction: None.

### unit_003: Admissible hard prior and unchanged private competitor

- Statement fidelity: The intended conclusion and unchanged scalar `delta_m` are correct, but the statement is not self-contained: it omits `N >= N_0` while its proof relies on that condition, and it refers to `(C9.1)` without displaying the four instantiated conditions. It also assigns kernel production to `prop:step-006-exact-dp` instead of the defining `prop:step-006-kernel`.
- Proof validity: Conditional on the missing `N >= N_0` premise, the arithmetic is correct: (9.15)-(9.16) provide the `N` and `n` conditions, (9.17) gives the epsilon/delta source, and (9.10) yields the correctly oriented reciprocal bound (9.19)-(9.20). The same scalar `delta_m` is passed to HP and exact DP with no relabeling.
- Cited-result and assumption audit: `prop:step-005-hard-prior` is restated with the right four conditions and exact `1/20` value. For the hidden-arm object, the defining dependency must be `prop:step-006-kernel`, followed by the privacy certificate `prop:step-006-exact-dp`; the current sentence reverses that producer identity.
- Rigor checklist: No algebraic, quantifier, or privacy-denominator error remains after the missing premise is made explicit. The current theorem-style interface, however, can be applied outside the HP domain as written.
- Local adversarial test: Choose `N < N_0` but retain the named assumptions and counterassumption; the statement still purports to deliver HP although `N >= N_th` is not established. This is a real interface failure, not merely cosmetic prose.
- Contribution to target step: The intended contribution is the HP instantiation and private competitor, but it is currently uncertifiable until the admissibility and producer interfaces are repaired.
- Verdict: REVISE_STEP
- Repair direction: Add `N >= N_0` and the explicit four HP conditions to the statement; name `prop:step-006-kernel` as the `B_Pi` producer and `prop:step-006-exact-dp` as its exact privacy proof.

### unit_004: Strict hard-prior closure

- Statement fidelity: The displayed target lower bound and quantifiers `k >= 1`, `N >= N_0`, and learner scope match the sketch. The theorem statement nevertheless omits the named prior, privacy, and utility theorem interfaces used in its proof, so its assumption basis is not self-contained under the local-unit contract.
- Proof validity: Once unit 003 is repaired and the named dependencies are admitted, the contradiction is valid: `(HP)` gives `1/20 <= inf <= R_n(B_Pi)`, while `(UT)` gives `R_n(B_Pi) <= 5/128 + e^{-27/2} < 41/1024 < 1/20`. The comparison `820 < 1024` is correct, and negating a real-valued lower bound yields the strict counterassumption used earlier.
- Cited-result and assumption audit: The proof uses the correct exact interfaces from `prop:step-005-hard-prior`, `prop:step-006-exact-dp`, and `prop:step-008-utility`, and invokes `prop:step-009-admissibility`; these must be named in the unit statement rather than left implicit.
- Rigor checklist: Infimum orientation, strictness, probability mode, and universal quantifier order are correct. No dependency or arithmetic defect changes the target after the statement interface is repaired.
- Local adversarial test: A competitor with exactly inherited `(epsilon_0,delta_m)` privacy is enough; no composition or prior-dependent learner is smuggled into the infimum. The strict upper gap remains positive at `epsilon_0=1` and `delta_m=0`.
- Contribution to target step: The unit supplies the main contradiction, but its current theorem statement hides essential accepted inputs.
- Verdict: REVISE_STEP
- Repair direction: Add the named HP, exact-DP, UT, and admissibility propositions to the statement and specify that they refer to the same prior/kernel and unchanged `delta_m`.

### unit_005: Exact one-chain recovery

- Statement fidelity: The `k=1` specialization, `n=2m+12`, `R=m<n`, zero overflow, exact privacy, and no multi-arm residual match the baseline obligation. The statement names the conditional auxiliary result but not the unconditional utility proposition used in its proof.
- Proof validity: The one-arm occupancy and boundary identities are correct, and (9.27) follows from the strict reserve `12 < 13 < (a_th/2)log^*N`. The final bound `5/128 < 1/20` is correct. To make the proof self-contained, the HP availability must be cited through `prop:step-009-admissibility`, and (9.28) through `prop:step-008-utility`; the auxiliary proposition alone does not imply the unconditional expectation bound.
- Cited-result and assumption audit: `prop:step-006-one-arm` and `prop:step-007-boundaries` correctly supply the exact input/coupling boundary. `prop:step-008-auxiliary` supplies probability-one conditional success, not `(UT)`. The missing `prop:step-008-utility` identity is the material dependency mismatch.
- Rigor checklist: Baseline metric, output scope, privacy pair, and fixed-sample mode are preserved. No weaker conditional or stopped conclusion is substituted.
- Local adversarial test: On PAC-failure outcomes the conditional auxiliary statement says nothing, while the unconditional expectation still needs the `beta_0` charge; this is exactly why `(9.28)` cannot be justified from `prop:step-008-auxiliary` alone.
- Contribution to target step: The mathematical baseline recovery is sound after the dependency citation repair, but the current local unit is not review-certifiable.
- Verdict: REVISE_STEP
- Repair direction: Cite `prop:step-008-utility` for unconditional `(UT)`, cite `prop:step-009-admissibility` for HP, and retain the auxiliary proposition only for the conditional probability-one certificate.

## Hidden Subclaim Scan

The five units cover the substantive arithmetic, admissibility transfer, contradiction, and baseline calculations; no additional independent algebraic lemma is needed. The unresolved issues are dependency-interface/provenance defects rather than an omitted mathematical subclaim: unit 003's `N >= N_0` premise and kernel producer are hidden in surrounding prose, unit 004 hides its accepted theorem inputs, and unit 005 conflates the conditional auxiliary result with the unconditional utility result. No unsupported asymptotic absorption, privacy composition, or exchangeability claim appears in the target-step assembly.

## Target Claim Audit

The proof is faithful to the exact sketch-row target. With the stated local interfaces repaired, it establishes universal `c_delta=a_delta/[225(1+log 15)]`, `c=a_th/4`, and an `N_0` satisfying the strict reserve; transfers the unchanged `delta_m` through `n^2 log(en) <= C_Delta m^2 log(em)`; derives `n < a_th log^*N` under the strict negation; and contradicts `(HP)` with `(UT)` for the same prior, kernel, risk, and privacy pair. The quantifier order is correct: dependency constants are fixed before `c_delta,c,N_0`, which are fixed before `k,N,C,X,A,m,epsilon_0,delta_m`. The `k=1` trace is exact (`n=2m+12`, `R=m<n`, zero overflow, same one-chain experiment and privacy interface). Current certification is blocked only by the local statement/dependency defects above, not by target drift.

## Explicit Rate Audit

The step is rate-bearing (R2). Exposed variables are `m,k,N,epsilon_0,delta_m`, `n=ceil(2m/k)+12`, and `log^*N`; fixed quantities are `alpha_0=1/128`, `beta_0=1/32`, the zero-one risk, ordered replacement adjacency, and finite-sample mode. Hidden constants are explicitly restricted to the accepted universal `a_th,a_delta,N_th` and displayed numerical factors. The ceiling, logarithm, reciprocal-denominator, strict sample-size, and `5/128+e^{-27/2}<1/20` inequalities are all displayed and correct; no term is absorbed by prose, no privacy parameter is renamed, and no probability or horizon mode is upgraded. The only rate-contract defect is interface documentation: the local bridge must name the HP/admissibility and unconditional UT producers before it can be consumed as a certified rate specialization.

## Notation Surface Audit

The classifications of `C_Delta`, `c_delta`, `c`, `N_0`, `n`, `Pi`, and `B_Pi` are otherwise economical and their definitions are visible. `L` and `mu` are proof-local, and `R`/`p_ov` are appropriately boundary-local. The `B_Pi` provenance classification is currently wrong in unit 003 because `prop:step-006-exact-dp` is a certificate rather than the kernel producer; correcting that producer label restores the generated-output flow. No notation drift, hidden constant, or unexplained helper object affects the arithmetic.

## Target-Step Assembly Audit

The named dependency chain is mathematically sufficient: `step_005` supplies `(HP)` and universal constants, `step_006` supplies the kernel and exact inherited privacy, `step_007` supplies the one-arm boundary, and `step_008` supplies unconditional `(UT)` and the auxiliary certificate. Unit 001 and unit 002 then provide the deterministic specialization, while unit 004 gives the strict contradiction. However, the current local theorem statements do not expose that chain faithfully: unit 003 assigns the generated kernel to the wrong proposition and omits `N >= N_0`; unit 004 hides its consumed theorem results; and unit 005 uses `prop:step-008-utility` without naming it. Therefore assembly cannot be accepted from this artifact until `/proof-step step_009` repairs those local interfaces and regenerates a fresh review.

## Review Rationale

REVISE_STEP is the smallest sound status. All imported proof/review hashes match the declared accepted dependencies, and the substantive ceiling, logarithm, privacy-denominator, unchanged-`delta_m`, strict HP-versus-UT, explicit-rate, quantifier, and `k=1` calculations pass independent checks. The failures are confined to self-contained local-unit statements and exact producer/consumer citations, which can be repaired within `step_009` without changing its claim, assumptions, dependency list, tool, or output target. No dependency rerun or sketch revision is warranted. After the producer attribution, missing `N >= N_0` premise, and UT/HP citations are repaired, a fresh `/proof-step-review step_009` is required before downstream consumption.
