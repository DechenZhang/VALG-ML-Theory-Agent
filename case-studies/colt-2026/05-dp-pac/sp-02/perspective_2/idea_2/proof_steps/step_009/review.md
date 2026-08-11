# Proof Step Review

## Step Review Identity

- Sketch attempt: `1`
- Step ID: `step_009`
- Unit attempt: `2`
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_009/proof.md`, SHA-256 `f40ced11ce3cce72a4fce0851f2a08d6b10ed9363b51c8ed1aa95bd025a0290d`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Universal specialization constants and finite-domain threshold

- Statement fidelity: The proposition has a theorem-style title and label, states the accepted hard-prior constants as its only nonlocal input, defines `C_Delta`, `c_delta`, and `c`, and explicitly asserts the integer `N_0` and strict reserve required by the target row.
- Proof validity: Positivity follows from `a_th,a_delta>0` and `log(15)>0`. Unboundedness of the iterated logarithm supplies a finite integer `N_0` with both required lower bounds, and monotonicity transfers the strict reserve from `N_0` to every `N>=N_0`.
- Cited-result and assumption audit: The only imported facts are the universal `a_th,a_delta,N_th` and their finite-domain hard-prior role from accepted `prop:step-005-hard-prior`; no HP conclusion is used before its admissibility conditions are checked.
- Rigor checklist: The integer choice, strict inequality, parameter independence, and endpoint behavior are explicit. No asymptotic absorption or learner-dependent constant is hidden.
- Local adversarial test: For arbitrarily small positive `a_th`, iterated-log unboundedness still gives a finite threshold; at `N=N_0` the selected strict reserve remains strict.
- Contribution to target step: PASS; this unit fixes the universal constants and finite-domain margin used by the arithmetic and admissibility units.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact sample and privacy-denominator arithmetic

- Statement fidelity: The lemma states the exact ceiling definition, the `n<=15m` and `n^2 log(en)<=C_Delta m^2 log(em)` transfers, the explicit `N>=N_0` regime, and the strict `n<a_th log^*N` consequence of the target negation.
- Proof validity: `ceil(2m/k)<=2m` for `k>=1`, and `2m+12<=14m<=15m` for `m>=1`. Monotonicity gives `log(en)<=log(15em)`, `log(em)>=1` gives the displayed factor `(1+log 15)`, and squaring/multiplication yields the denominator bound. The strict ceiling inequality and the reserve `13<(a_th/2)log^*N` yield `n<a_th log^*N`.
- Cited-result and assumption audit: The named setting assumptions supply `m,k>=1`; `prop:step-009-constants` supplies the public constants and reserve. No HP, privacy, or utility conclusion is assumed in this arithmetic lemma.
- Rigor checklist: Inequality directions, positivity of logarithmic denominators, ceiling strictness, and dependence on `m` are all displayed. The proof covers `m=1` without a large-sample qualification.
- Local adversarial test: The bounds remain valid for `k=1`, `k` much larger than `m`, and `m=1`; the reciprocal comparison needed later has the correct direction because the larger denominator is on the left of the displayed inequality.
- Contribution to target step: PASS; this unit supplies the exact sample-size, rate, and privacy-denominator comparisons.
- Verdict: PASS
- Repair direction: None.

### unit_003: Admissible hard prior and unchanged private competitor

- Statement fidelity: The proposition is self-contained relative to the accepted dependencies. It explicitly assumes `N>=N_0`, names the three setting assumptions and the two earlier local results, and displays all four instantiated hard-prior conditions: `N>=N_th`, `n<a_th log^*N`, `0<epsilon_0<=1`, and `0<=delta_m<=a_delta/[n^2 log(en)]`.
- Proof validity: `N>=N_0` gives the threshold condition; unit 002 gives the strict sample condition; the fixed-parameter assumption gives the epsilon and original `delta_m` bound; and `n^2 log(en)<=C_Delta m^2 log(em)` is correctly reversed under reciprocation to transfer that same scalar `delta_m` to the HP denominator. The prior is then instantiated at `(n,N,epsilon_0,delta_m)`.
- Cited-result and assumption audit: `prop:step-005-hard-prior` is used for the prior and `(HP)`. `prop:step-006-kernel` is correctly identified as the producer of `B_Pi`, while `prop:step-006-exact-dp` is separately identified as the certificate for exact inherited `(epsilon_0,delta_m)`-DP. Their object, parameter, and conclusion mappings are stated before use.
- Rigor checklist: The same `delta_m` is preserved with no relabeling, all denominators are positive, and the prior is selected before the competitor. No privacy composition, group-privacy conversion, or hidden learner restriction is introduced.
- Local adversarial test: Setting `delta_m=0`, `epsilon_0=1`, or `N=N_0` leaves the argument valid. A hypothetical `N<N_0` cannot enter because `N>=N_0` is now an explicit premise, so the HP threshold is not silently assumed.
- Contribution to target step: PASS; this unit establishes the admissible HP instance and the exact-private competitor consumed by the contradiction.
- Verdict: PASS
- Repair direction: None.

### unit_004: Strict hard-prior closure

- Statement fidelity: The proposition states the full setting basis and explicitly names the admissibility result, HP producer, kernel producer, exact-DP certificate, and unconditional utility producer for the same `(n,N,epsilon_0,delta_m)`, prior, and kernel. It preserves the temporary counterassumption as a local contradiction hypothesis and concludes the exact target lower bound.
- Proof validity: The exact-private `B_Pi` is inserted into the HP infimum with the correct orientation, yielding `1/20 <= R_n(B_Pi)`. The accepted UT bound gives `R_n(B_Pi)<=5/128+exp(-27/2)<41/1024<1/20`; the final comparison is numerically strict, so the counterassumption is impossible.
- Cited-result and assumption audit: `prop:step-009-admissibility` discharges all HP conditions, `prop:step-005-hard-prior` supplies the lower bound, `prop:step-006-kernel` and `prop:step-006-exact-dp` supply the same competitor and privacy pair, and `prop:step-008-utility` supplies the unconditional expectation bound. Each is cited in the statement and proof with matching objects.
- Rigor checklist: Infimum orientation, strictness, expectation mode, and universal quantifier order are correct. Constants are fixed before theorem variables, and no conditional utility statement is substituted for the unconditional one.
- Local adversarial test: The contradiction still works at the privacy endpoints and for an arbitrary-output competitor; no properness, composition, or prior-dependent learner is smuggled into the infimum.
- Contribution to target step: PASS; this unit closes the HP-versus-UT contradiction and proves the public rate.
- Verdict: PASS
- Repair direction: None.

### unit_005: Exact one-chain recovery

- Statement fidelity: The proposition states the `k=1` specialization, names the admissibility, one-arm, boundary, unconditional utility, and conditional auxiliary interfaces, and requires the exact baseline data (`n=2m+12`, `R=m<n`, `p_ov=0`, unchanged privacy and risk scopes).
- Proof validity: At `k=1`, rounding is exact, every occupancy is one, `R=m<n`, and overflow is zero. The strict reserve gives `n<a_th log^*N` under the temporary negation; the unchanged `delta_m` comparison supplies HP; and the unconditional UT proposition yields `5/128<1/20`. The conditional auxiliary proposition is used only for its probability-one one-arm certificate, not to justify the unconditional expectation inequality.
- Cited-result and assumption audit: `prop:step-006-one-arm` supplies the exact input-map/privacy specialization, `prop:step-007-boundaries` supplies pathwise equality and zero overflow, `prop:step-008-utility` supplies (UT), and `prop:step-008-auxiliary` is correctly scoped to the conditional certificate. `prop:step-009-admissibility` supplies the four HP conditions for the same `delta_m`.
- Rigor checklist: The baseline preserves the original finite experiment, arbitrary-output scope, zero-one risk, fixed-sample mode, and exact privacy pair. No residual arm, overflow term, stopped event, or weaker surrogate is introduced.
- Local adversarial test: On PAC-failure outcomes the conditional auxiliary result does not provide an expectation bound; the proof correctly relies on unconditional UT for (9.28), so there is no conditional-to-unconditional upgrade hidden in the baseline argument.
- Contribution to target step: PASS; this unit certifies exact unrestricted one-chain recovery with no multi-arm residual.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The local lemma map covers every independent nontrivial obligation: constant selection, finite-threshold reserve, ceiling and logarithm arithmetic, reciprocal privacy-denominator transfer, HP admissibility, kernel provenance and privacy certification, the strict HP-versus-UT contradiction, and the exact `k=1` boundary. The cited-result applications restate source, current notation, instantiated objects, assumptions, conclusions, and discharge locations. No unsupported asymptotic absorption, privacy composition, probability-mode upgrade, exchangeability claim, or hidden generated-event invariant appears in the proof or assembly.

## Target Claim Audit

The proof establishes the exact sketch-row claim. It fixes universal `C_Delta=225(1+log 15)`, `c_delta=a_delta/C_Delta`, `c=a_th/4`, and an `N_0>=N_th` with the strict iterated-log reserve; defines `n=ceil(2m/k)+12`; verifies every HP admissibility condition; transfers the inherited scalar `delta_m`; constructs an exact `(epsilon_0,delta_m)`-private competitor; and contradicts the same-prior HP lower bound with the unconditional UT upper bound. The quantifier order is preserved: accepted universal constants precede public constants, which precede `k,N,C,X,A,m,epsilon_0,delta_m`. The conclusion is in the required fixed-sample expected-risk setting, and the `k=1` trace is exact (`n=2m+12`, `R=m<n`, zero overflow, same one-chain interface).

## Explicit Rate Audit

This is an R2 rate-bearing step. Exposed variables are `m,k,N,epsilon_0,delta_m`, `n=ceil(2m/k)+12`, and `log^*N`; fixed quantities include `alpha_0=1/128`, `beta_0=1/32`, natural-log privacy denominators, base-two iterated logarithm, ordered replacement adjacency, arbitrary outputs, and zero-one risk. Hidden constants are restricted to accepted universal `a_th,a_delta,N_th`; all new numerical factors are displayed. The proof explicitly checks `n<=15m`, `n^2 log(en)<=C_Delta m^2 log(em)`, the reciprocal `delta_m` transfer, `n<a_th log^*N`, and `5/128+exp(-27/2)<1/20`. It records `N>=N_0`, `m,k>=1`, `0<epsilon_0<=1`, and the fixed-parameter delta range, with no omitted confidence, horizon, norm, or auxiliary-tolerance category. The probability mode remains exact DP plus prior/sample expectation; no local conversion is performed. The `k=1` baseline reduction preserves the original experiment and conclusion up to the explicitly displayed universal factor and additive twelve records.

## Notation Surface Audit

Notation is classified and economical. `a_th,a_delta,N_th`, `C_Delta`, `c_delta`, `c`, and `N_0` are public-facing constants with explicit provenance; `n` is the setting-defined sample expression; `L` and `mu` are proof-local abbreviations; `Pi` and `B_Pi` are generated public-facing objects whose producers are explicitly named; and `R` and `p_ov` are appendix-local boundary objects. The kernel provenance is now correctly separated from its exact-DP certificate. No unexplained helper, hidden boundedness claim, symbol drift, or imported paper notation remains.

## Target-Step Assembly Audit

Accepted `step_005` supplies the universal hard-prior constants and `(HP)`, accepted `step_006` supplies the kernel and exact inherited privacy, accepted `step_007` supplies the one-arm boundary, and accepted `step_008` supplies unconditional UT plus the separately scoped auxiliary certificate. Units 001 and 002 derive the public constants and deterministic transfers; unit 003 instantiates the same prior and `delta_m`; unit 004 gives the strict contradiction; and unit 005 verifies the baseline. All assembly references use theorem-style labels and the exact accepted dependency hashes are listed in the proof. These results jointly imply the full target step without an unreviewed bridge or changed dependency interface.

## Review Rationale

`ACCEPTED` is the smallest sound status. The repaired proof is self-contained at every local-unit boundary, its cited dependencies are accepted and correctly mapped, and the independent arithmetic, privacy-denominator, HP/UT strictness, quantifier, rate, and `k=1` audits all pass. The earlier interface defects are resolved: unit 003 states `N>=N_0` and all four HP conditions and assigns kernel production to `prop:step-006-kernel`; unit 004 exposes its HP, exact-DP, and unconditional-UT inputs; and unit 005 cites unconditional `prop:step-008-utility` separately from conditional `prop:step-008-auxiliary`. No sketch, dependency, or further proof-step retry is required.
