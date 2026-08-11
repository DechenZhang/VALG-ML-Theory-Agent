# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_6`
- Sketch attempt: 4
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Reviewed sketch SHA-256: `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`
- Reviewed sketch-review SHA-256: `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`
- Reviewed proof artifact: `perspective_1/idea_6/proof_steps/step_004/proof.md`
- Reviewed proof SHA-256: `62391b2f34e6527e8ded8946838c309e73f21457879eec1be6649564b4cc69f5`

## Accepted Dependencies

- `step_001` proof SHA-256: `7fab685e663df565c7e1ec99484ed86f5393e35aa0398047c23a866c29fc3362`; review SHA-256: `2acfd5b7208c925aa28de3a57045bf6c3a0ad25cb3a0512e0e920fce1904a177`; review status: `ACCEPTED`.
- `step_003` proof SHA-256: `1eab9835ce7ced429dae7cb80cfdb360a7272eda259d7a7d0a0d601a7c7c2143`; review SHA-256: `ee34b1419f401a25ef0d83ee61cedaf4a68cf110b3a2556d5895abac1ae792be`; review status: `ACCEPTED`.

The dependency conclusions were read in current notation. `step_001` supplies the fixed-instance event `E_sm`, including `q_real <= q_*`, `Gamma <= 1.01`, nonzero realized columns, and the realized Gram controls. `step_003` supplies the proof-only window witnesses and `E_cov` with its conditional one-run probability. Neither dependency supplies a trajectory chart, a sign reorientation, or the local burn arithmetic.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004

## Blocking Issues

1. **Burn/dual index mismatch (proof lines 252-257 and 116-166).** Equation (10) proves `a_(t+1)` from `S_t`, but equation (18) substitutes the bound on `S_(t_b)` to claim `a_(t_b)`. The displayed argument only proves a bound for `a_(t_b+1)`; no bound on `S_(t_b-1)` is proved. Consequently the claimed burn-state membership in the chart and the subsequent certification estimate are not established at the stated time. Repair by either proving the needed `S_(t_b-1)` bound and applying (10) at `t_b-1`, or moving chart entry to `t_b+1` and shifting the certification indices/horizon consistently.

2. **False numerical inequality in the chart self-map (proof lines 226-231).** The claimed middle inequality in (15),
   `4 Gamma (a+q)^2/(1-4 Gamma q(a+q)^2) <= 2(q+2a^2)`, does not follow from `Gamma <= 1.01`. At the allowed endpoint `q=0`, `a=1/512`, `Gamma=1.01`, its two sides are respectively `1.5411376953125e-5` and `1.52587890625e-5`; the left side is larger by a factor `1.01`. A corrected constant or a direct coefficient bound must be displayed, followed by a fresh check that the corrected bound is still below `a_chart`.

3. **Missing raw-to-oriented sign bridge (proof lines 73, 239-250, and 257-263).** The proof orients target correlations and introduces `tilde{J}`, then applies its Banach contraction to the literal proposal residual `zeta`, without proving that the actual simultaneous raw trajectory is recursively represented by that oriented map. Initial mode signs are arbitrary and the output signs are coupled (`sigma_U^(t+1)=sigma_V^t sigma_W^t`, cyclically). The proof must add a theorem-style sign-equivariance lemma, handle the zero-contraction branch, prove recursive reorientation, and prove invariance of absolute ratios and `zeta`. Without this bridge, the fixed-point argument concerns an auxiliary oriented sequence and does not imply `E_cert` for the executed proposal.

4. **Central Lipschitz estimate is asserted rather than derived (proof lines 239-250).** Equation (17) is the theorem-critical bound from which (13) is obtained, but the text only says that a product rule, row-mass bounds, and normalization multiply it into the result. It does not control, in current notation, the variation of the two target denominators, the target-coordinate terms, the two held modes, or the normalization lower bound for a pair of chart states. Supply a complete dimension-free difference calculation (with all factors and the stated `d_infty` metric) and then recheck `L_chart` after the corrected self-map constants.

5. **Horizon constants are not actually selected (proof lines 118-121 and 206-216).** The rate-bearing artifact imposes conditions (4) and (12) but never gives universal `C_burn,C_cert` or proves that `ceil(C log r)` satisfies them for every `r >= 3`. This leaves the advertised finite `O(log r)` horizon unclosed, especially after the required one-step chart-entry correction. State explicit universal choices and verify the smallest-r endpoint and the inclusive evaluation window.

## Per-Lemma Audit

### unit_001: Exact simultaneous old-state ratio recurrences

- Statement fidelity: PASS. The statement matches the accepted sketch row: it uses one old state for all three mode updates and proves exactly the displayed `R` and `S` recurrences under nonzero target correlations and `Gamma R_t < 1`.
- Proof validity: PASS. The target coefficient is lower-bounded before normalization, the direct off-target coefficient is bounded by `Gamma R_t`, and the remaining signed Gram leakage is controlled by the row mass. Summing the direct, target-source, and off-target-source terms gives the stated pair-mass numerator; symmetry supplies the needed column mass. The first raw window gives nonzero target correlations and the strict denominator condition is checked before the normalization.
- Cited-result and assumption audit: PASS. Only the accepted `E_sm` conclusions and a witnessing `E_win` slot from `E_cov` are used. No generated denominator or basin property is imported as an assumption. The proof should name the witness as `E_win(i,j)` explicitly in the unit statement, but this is a notation clarification rather than a recurrence defect.
- Rigor checklist: PASS. Absolute signs, the simultaneous old-state convention, the `Gamma` weight ratio, and the `q=0,Gamma=1` reduction are handled. The finite sums are interchanged only over nonnegative absolute values.
- Local adversarial test: PASS. At `q=0,Gamma=1` the mode ratios reduce to pair products and the recurrences reduce to `R_(t+1) <= R_t^2` and `S_(t+1) <= R_t S_t`; at the maximal allowed `q,Gamma,R_0`, the denominator remains positive.
- Contribution to target step: PASS. This unit supplies the exact recurrence needed by the burn invariant.
- Verdict: PASS
- Repair direction: None for this unit.

### unit_002: Denominator persistence and burn arithmetic

- Statement fidelity: REVISE_STEP. The intended invariant is correct, but the statement and proof do not export the predecessor bound needed by the later `a_t` bridge, and they use an undefined phrase "covered-slot window" instead of a named `E_win(i,j)` witness.
- Proof validity: REVISE_STEP. The rounded `R` table and the affine `S` envelopes through time 10 are numerically consistent, and the denominator interval is valid. The final use of `S_(t_b)` is nevertheless one index too late for equation (10), so the claimed chart-entry time does not follow. The proof also leaves the universal horizon constant implicit.
- Cited-result and assumption audit: PASS with a local interface repair required. `E_sm` and the window event are legitimate accepted inputs; no dependency failure is present. The witness and its quantifier must be restated explicitly in the theorem-style statement.
- Rigor checklist: REVISE_STEP. The interval induction is noncircular through the displayed table, but the predecessor-time bound and the `ceil(C_burn log r)` endpoint check are missing.
- Local adversarial test: REVISE_STEP. Choose `L_burn=10+m` at an `m` transition. The proof's displayed inequalities certify `S_(10+m)` but do not certify `a_(10+m)` via (10); the argument must either use `S_(9+m)`/`S_(10+m-1)` or shift entry.
- Contribution to target step: PARTIAL. It establishes `E_RS` up to the missing predecessor/index interface, but cannot yet establish the chart input at the stated burn time.
- Verdict: REVISE_STEP
- Repair direction: Add the predecessor `S` bound (or shift chart entry by one), make the witness event explicit, and select/prove a universal `C_burn`.

### unit_003: Dual ratio-l1 bridge and ambient conversion

- Statement fidelity: REVISE_STEP. The bridge is the right one, but `a(h)` used in the chart proposition is not separately defined as a function on arbitrary chart states, and the statement's burn conclusion relies on the off-by-one claim from unit_002.
- Proof validity: REVISE_STEP. The exact dual coefficient identity and the stronger `Gamma S_t/D_t` estimate are valid once the realized Gram inverse is explicitly justified from `q_real<1`. The displayed derivation of (18) does not prove `a_(t_b)` because (10) controls the next state, so the ambient chart-entry conclusion is unsupported as written.
- Cited-result and assumption audit: PASS for provenance, pending local repair. `H_M^{-1}` is a derived object from the accepted Gram row bound, not a primitive assumption; the proof should state the inverse bound before using `L_M`.
- Rigor checklist: REVISE_STEP. The projection/unit-vector conversion is plausible and conservative, but the target-orientation and positivity argument should be written for the exact state covered by the repaired index. No stochastic or norm-mode upgrade is otherwise present.
- Local adversarial test: REVISE_STEP. At the first post-burn state, equation (10) can only use the preceding pair mass. A proof that only knows `S_(t_b)` cannot infer the claimed `a_(t_b)` without an additional monotonicity or predecessor estimate.
- Contribution to target step: PARTIAL. It supplies the intended `a_t` interface but not the stated chart-entry time.
- Verdict: REVISE_STEP
- Repair direction: Define `a(h)` explicitly, prove Gram invertibility and the predecessor-time bridge, and reconnect the repaired output to the chart proposition.

### unit_004: Projective chart, fixed point, and certification horizon

- Statement fidelity: REVISE_STEP. The chart and target outputs match the sketch, but the proposition consumes the unsupported burn-state entry and claims a raw `zeta` conclusion without the required sign-equivariance unit.
- Proof validity: REVISE_STEP. The self-map calculation has a false numerical inequality (15). The Lipschitz estimate (17) is a central unproved subclaim, and the fixed-point/certification argument is therefore not established. The closedness comment is also incomplete: strict positive orientation is closed only after explicitly using the ambient cap to imply a positive target correlation.
- Cited-result and assumption audit: REVISE_STEP. Banach's theorem is correctly stated, but its nonempty closed self-map domain and its application to the executed, rather than auxiliary, trajectory depend on the missing burn and sign bridges. No external dependency can discharge these local gaps.
- Rigor checklist: REVISE_STEP. Correct the `Gamma` arithmetic, display the denominator and target-coordinate variation in the Lipschitz proof, bound the initial chart diameter in the displacement estimate, and handle the inclusive stored-state/look-ahead indexing after any chart-entry shift.
- Local adversarial test: REVISE_STEP. The allowed `q=0,Gamma=1.01,a=1/512` endpoint breaks (15); arbitrary initial mode signs break the unproved identification of `tilde{J}` iterates with the literal raw iterates even though the projective residual is sign-invariant once proved.
- Contribution to target step: BLOCKED locally. Until these repairs are made, `E_chart` and `E_cert` do not follow, so the next certificate step cannot consume this output.
- Verdict: REVISE_STEP
- Repair direction: Repair units 002-004 in the same `/proof-step step_004` rerun: add the sign lemma, fix the self-map constant, give the full Lipschitz calculation, and align the finite certification indices/horizon.

## Hidden Subclaim Scan

FAIL. The proof contains independent claims absent from the local lemma map: (i) arbitrary raw mode signs can be recursively reoriented into the positive chart while preserving the literal Jacobi trajectory and `zeta`; (ii) the strict orientation condition makes the chart closed; (iii) equation (17)'s dimension-free Lipschitz bound; and (iv) the burn-state index conversion from `S_(t_b)` to `a_(t_b)`. The first and fourth are theorem-critical for connecting the auxiliary chart to the executed proposal. They must be named and proved, not left in the sentence introducing `tilde{J}` or in the horizon paragraph.

## Target Claim Audit

PARTIAL. Unit 001 establishes the exact simultaneous `R,S` recurrences and the first-update denominator mechanism. The rounded burn table establishes a persistent denominator and eventual small `S`, but the stated `a_(L_burn)`/chart entry is off by one. The chart self-map has a false endpoint inequality, and the Lipschitz/fixed-point argument is not fully derived. Because the raw-to-oriented bridge is absent, the finite `zeta <= tau_r` claim is not proved for the algorithm's stored state. Thus the exact target interface `E_RS,E_chart,E_chart_l1,E_cert` is not yet assembled, although all repairs are local to this step and do not require changing the accepted sketch row.

## Explicit Rate Audit

REVISE_STEP. The proof correctly keeps the conditional-on-`E_sm`/`E_cov` pathwise probability mode, fixed finite horizon, and the requested ratio, dual-l1, Euclidean, and projective-residual norm modes. It also retains the `q_real` forcing instead of silently dropping it. However, the exposed horizon variables are not specialized to explicit universal `C_burn,C_cert`; the predecessor-time correction changes the certification count; and the term absorption in (15) is numerically false at an allowed endpoint. A repaired artifact must state the fixed quantities and probability mode again, give universal constants with the `r=3` check, display the corrected self-map inequality, and state whether certification starts at `L_burn` or `L_burn+1`.

Baseline reduction otherwise passes: with `q_real=0` and `Gamma=1`, unit 001 gives the exact pair-product map and the target fixed point has zero projective residual. The local repairs must preserve that exact specialization rather than replace it by a positive residual floor.

## Notation Surface Audit

REVISE_STEP. `g_{Mell}`, `H_M`, `L_M`, and `a_t` are reasonable proof-local/appendix-local objects, and the exported surface is intended to be only `E_RS`, `E_chart`, `E_chart_l1`, and `E_cert`. Before acceptance, define `a(h)` independently of a trajectory index, classify the dual inverse as a derived chart object, and replace "covered window slot" with an explicit witness `E_win(i,j)` supplied by `E_cov`. The local labels are theorem-style in intent, but the doubled `\\label` spellings and the malformed `|...|leq` token should be normalized in the producer rerun.

## Target-Step Assembly Audit

REVISE_STEP. The accepted dependency outputs are sufficient inputs for unit 001 and the finite recurrence table, and there is no dependency blocker. They do not prove the missing sign, chart-Lipschitz, or predecessor-time claims. As written, the named local units therefore do not jointly imply the exact `E_chart` and `E_cert` outputs, and the final paragraph overstates the consequence of the chart fixed point. Reassemble only after the repaired local units are named and the stored-state versus look-ahead index is explicit.

## Review Rationale

`REVISE_STEP` is the smallest correct status. The failure is local to the submitted step proof: the accepted setting, sketch interface, and dependency conclusions can support the intended result, but the current artifact has a falsified numerical inequality, an off-by-one burn bridge, and an omitted raw-to-oriented/sign and Lipschitz derivation. These do not require changing the sketch claim, assumptions, dependency list, theorem mode, or baseline. Retry `/proof-step step_004`; a fresh accepted `/proof-step-review step_004` is required before downstream consumption.
