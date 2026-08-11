# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_5/proof_steps/step_004/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: realized dual coordinates

- Statement fidelity: PASS. The lemma uses only the accepted attempt-2 `E_sm` output and states the exact Gram spectral interval, dual identity, norm bounds, and span property needed by the later chart units.
- Proof validity: PASS. Gershgorin applies to the symmetric unit-diagonal realized Gram with row mass `q<1`; `L_M^T G_M=I`, `L_M^T L_M=H_M^{-1}`, and every normalized contraction remains in `span(G_M)`. The normalization factor is handled only after the span identity is established.
- Cited-result and assumption audit: PASS. Proposition~\ref{prop:step-001-event} is the current accepted dependency (unit attempt 2), and its exact static conclusions are restated. No trajectory or chart fact is imported as an assumption.
- Rigor checklist: PASS. The operator-norm and inverse bounds preserve the declared `q_real` dependence and do not introduce a rank or scale factor.
- Local adversarial test: PASS. At `q=q_*` the lower spectral floor is positive; at `q=0` the dual is the ordinary orthogonal coordinate map. Zero contractions are not hidden in this lemma and are handled by the recurrence unit.
- Contribution to target step: Supplies the legal dual-coordinate and span interface for `a_t`, chart entry, and the normalized map.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact old-state Jacobi recurrences and first activation

- Statement fidelity: PASS. The proposition targets the exact simultaneous old-state recurrences in the accepted sketch, the first-update nonzero condition, and the orthogonal equal-weight map. All three mode updates use the same old state.
- Proof validity: PASS. The coefficient expansion `x_U=U c` is exact. The window supplies a nonzero target coefficient at `t=0`; the target-coordinate lower bound (11) then maintains a nonzero denominator whenever `Gamma R_t<1`. The off-target estimate (12) is valid with the row-mass refinement: if `x=Gamma R_t<1`, `h=|H_{ell j}|`, and `q_ell` is the ell-th row mass, then the numerator divided by `|c_j|` is at most `h+x[1+q_ell-h] <= x+q`. This justifies the displayed `D_t` despite the compressed prose. The summed estimate (14) correctly keeps the direct, target-leakage, and off-target-leakage terms as `Gamma S_t`, `q`, and `Gamma q S_t`; bounding one new ratio and summing the other gives (7) without cyclic reuse.
- Cited-result and assumption audit: PASS. The accepted `E_sm` and `E_cov` outputs are the only dependencies; the window witness is used for initial ratios, while all later denominator and recurrence facts are derived locally. No cross-slot or probability assertion is added.
- Rigor checklist: PASS. Absolute ratios handle all sign choices, the denominator is explicitly lower bounded before division, and `q=0,Gamma=1` reduces exactly to `(BC,AC,AB)` and the stated `R,S` bounds.
- Local adversarial test: PASS. The extremal `R_0=19/20`, `Gamma=1.01`, and `q=q_*` values leave `Gamma R_0<1`; multiple off-target coefficients and a saturated Gram row are covered by the refined row-mass calculation.
- Contribution to target step: Produces the exact recurrence mechanism and first-update activation needed for the invariant.
- Verdict: PASS
- Repair direction: None.

### unit_003: denominator persistence and finite burn ledger

- Statement fidelity: PASS. The invariant states denominator persistence, the `R_10` numerical reduction, both `S_{t_b-1}` and `S_{t_b}` bounds, and the explicit burn condition required by the sketch.
- Proof validity: PASS. The worst-case map is monotone on the declared interval, and (19) proves the induction denominator before reusing the recurrence. The rational envelope recurrences for `bar R_t`, `A_t`, and `B_t` preserve the `r`-dependent initial mass. The displayed outward-rounded table agrees with direct evaluation; (23)-(25) give a finite affine budget and establish both burn-time `S` bounds.
- Cited-result and assumption audit: PASS. The recurrence proposition is an accepted local predecessor and `E_sm,E_cov` are accepted dependencies. The invariant does not assume chart membership, certification, or nonzero contractions beyond what (11) proves.
- Rigor checklist: PASS. The fixed numerical values `q_*=1/4096` and `gamma_*=1.01` are used consistently, `m>=2` is checked for `r>=3`, and the universal choices `C_burn>=16` imply (16) for every allowed `r`.
- Local adversarial test: PASS. At `r=3` the ceiling and burn lower bound still leave the required post-ten steps; at the maximal leakage and weight ratio the denominator exceeds `31/32` and the affine forcing remains below `q_*/16`.
- Contribution to target step: Establishes the noncircular `E_RS` denominator and finite-horizon pair-mass interface.
- Verdict: PASS
- Repair direction: None.

### unit_004: dual-l1 bridge and derived chart entry

- Statement fidelity: PASS. The lemma defines and bounds the exact dual off-mass `a_t`, derives the stated recurrence, and exports the `a_{t_b}` and ambient `chi_chart` entry rather than assuming a basin.
- Proof validity: PASS. Applying `L_U^T` to the normalized old-state contraction gives `c/||Uc||`; (11) supplies the denominator and the pair sum supplies the numerator. The use of `S_{t_b-1}` is aligned with the first state after `L_burn` commits. The span decomposition and unit-norm reverse-triangle argument yield (30), and the sign of the target dual coefficient follows from positive target orientation and the small off-mass.
- Cited-result and assumption audit: PASS. Only the accepted recurrence/invariant and the dual lemma are consumed. The state is in the factor span because it has undergone at least one update; no initial span or target-distance fact is assumed.
- Rigor checklist: PASS. The numerical bound `a_{t_b}<1/1024` and `2a_{t_b}+4q_*<1/128` are valid at the worst allowed constants, and the `a_t` quantity is an l1 mass with no hidden `sqrt(r)` conversion.
- Local adversarial test: PASS. The argument remains valid for a finite `q=0` transient (nonzero off-mass is retained) and for the maximal allowed Gram row mass; exact stationary components give zero off-mass.
- Contribution to target step: Produces `E_chart_l1` and the derived entry point for the closed target chart.
- Verdict: PASS
- Repair direction: None.

### unit_005: closed target chart, self-map, and contraction norms

- Statement fidelity: PASS. The proposition defines the named `a_chart=1/512`, `chi_chart=1/128` chart and proves self-mapping, nonzero target-positive contractions, and the `31/32` to `33/32` contraction-norm bounds.
- Proof validity: PASS. The off-target primal mass estimate (36), target correlation lower bound (37), coefficient mass estimate (38), and spectral comparison yield (39)-(40). The output dual mass bound (41)-(42) is below the chart threshold, and the ambient conversion (30) closes the second chart constraint. The target coefficient dominates its Gram leakage, so the target-positive representative is well-defined; the omitted factor in the leakage estimate is dominated by the displayed chart constants and does not change the strict positivity margin.
- Cited-result and assumption audit: PASS. The only external input is the accepted realized-geometry proposition; all chart membership and contraction-norm facts are derived in this unit.
- Rigor checklist: PASS. Weight imbalance is exposed through `Gamma`, all denominators have a positive source, and the self-map constants have strict numerical slack (`0.00050355...<1/1024`, lower and upper norm multipliers well inside `31/32,33/32`).
- Local adversarial test: PASS. The exact component vector belongs to the chart; at the boundary `a=a_chart`, `q=q_*`, and `Gamma=1.01`, the self-map and positivity inequalities remain strict. The `q=0` case retains the stationary component and does not erase finite transients.
- Contribution to target step: Supplies the closed, target-compatible chart and positive contraction-norm source required before Banach contraction.
- Verdict: PASS
- Repair direction: None.

### unit_006: normalized-map derivative, contraction, and fixed point

- Statement fidelity: PASS. The proposition targets the simultaneous normalized-map Lipschitz constant, completeness of the chart, and the unique target-positive/projective fixed point.
- Proof validity: PASS. The derivative expansion (45) separates the target directional term from the off-target spectral terms. Tangent and chord estimates (46)-(50) correctly use the ambient chart radius and realized Gram spectral norms. The normalized-vector inequality and the lower norm from unit_005 give (51); its constant is below the declared `16(q_*+a_chart+chi_chart)=41/256<1/4`. The strict positivity constraint is redundant inside the ambient ball, so the chart is a nonempty complete closed subset and Banach's theorem applies.
- Cited-result and assumption audit: PASS. Banach's theorem and the normalized-vector inequality are stated in current notation and their hypotheses are discharged locally. No external ALS or future-step result is used.
- Rigor checklist: PASS. The chord argument avoids assuming spherical-chart convexity, the two input-mode differences are both included in the max metric, normalization denominators are bounded uniformly, and signs are fixed by the target-positive chart.
- Local adversarial test: PASS. Endpoint chord pairs, tangent directions, the maximal `q_*` leakage, and independent mode sign changes all preserve the displayed bound; the projective representative is continuous on the positive chart.
- Contribution to target step: Produces `E_chart`, the fixed point, and the geometric contraction source for certification.
- Verdict: PASS
- Repair direction: None.

### unit_007: finite-horizon certification and zero branch

- Statement fidelity: PASS. The proposition matches the setting's evaluation window, stored-state convention, `tau_r`, and explicit `L_cert` threshold, and handles zero contractions.
- Proof validity: PASS. Modewise sign equivariance maps every covered trajectory to the target-positive chart without changing `zeta`. Banach successive-displacement decay gives (52), and (53) implies `4^{-L_cert}<=tau_r/16`, hence the final evaluated state has `zeta<tau_r`. The procedure evaluates through `t_b+L_cert` before any look-ahead commit, so the first qualifying stored state is available within the declared window.
- Cited-result and assumption audit: PASS. Chart entry, self-map, and contraction are named local predecessors; the zero branch is derived from (11) before the chart and (33) inside it, while paths outside the interface are correctly marked unsuccessful rather than assumed valid.
- Rigor checklist: PASS. The proof distinguishes stored states from look-ahead images, preserves the projective residual under signs, and checks a universal `C_cert>=32` against the smallest allowed `r=3`.
- Local adversarial test: PASS. A finite orthogonal transient may have positive displacement, an exact stationary state has `zeta=0`, and a zero contraction cannot occur on a covered path under the proved denominator bounds.
- Contribution to target step: Produces `E_cert` with the required finite-horizon threshold and boundary behavior.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The local map covers the independent dual-geometry, recurrence, invariant, dual-l1/ambient transfer, chart self-map, normalized-map contraction, fixed-point, and certification claims. The compressed off-target estimate (12) follows from the explicit row-mass decomposition recorded in the unit-002 audit above, and the chart target-positivity estimate has strict slack under the declared constants; neither is an unlisted assumption. No proof text uses a generated denominator, chart, basin, or certification event before its producer. There is no hidden cyclic reuse of a newly updated mode, no `r^2` conversion, and no unreviewed cited theorem.

## Target Claim Audit

The proof establishes the exact attempt-8 `step_004` claim for every covered target-slot witness on the fixed event `E_sm` intersect `E_cov`: the same-old-state `R,S` recurrences are displayed with the accepted `q_real` and `Gamma`; the denominator condition is activated at the first update and maintained inductively; `R,S` and the dual-l1 mass have the declared finite burn bounds; the chart with `chi_chart=1/128` is entered and is a self-map with `L_chart<1/4`; and the stored state reaches `zeta<=tau_r` within `L_burn+L_cert`. The exact orthogonal equal-weight map and stationary zero-residual boundary are preserved. Quantifiers, conditional probability mode, target metric, and stored-state versus look-ahead convention match `setting.md` and the accepted sketch. No stronger theorem premise or changed output target is introduced.

## Explicit Rate Audit

- Exposed variables: `r`, `q_real`, `Gamma`, `q_*`, `R_t`, `S_t`, `a_t`, `tau_r=q_*^2/(10^4r)`, `L_burn`, `L_cert`, `a_chart`, `chi_chart`, and `L_chart`.
- Hidden constants: only the fixed universal numerical constants and chart thresholds; no dependence on `n`, `k`, `kappa_0`, `rho`, the base triple, proposal tape, confidence parameters, `epsilon`, or an unlisted condition number is hidden.
- Fixed quantities and modes: first fix the realized instance on `E_sm`, then a proposal realization on `E_cov`; all conclusions are deterministic and uniform over covered target-slot witnesses. The horizon is the declared finite proposal window, and norms are target-relative ratios, dual l1 mass, modewise Euclidean/projective distance, and contraction Euclidean norm.
- Technical conditions and auxiliary choices: `r>=3`, `C_burn>=16`, `C_cert>=32`, (16), (31), and (53) are explicit. The proof preserves `r tau_r` only through the finite proposal recurrence and introduces no confidence factor.
- Term absorption: (19), (22)-(25), (27), (39)-(42), (44), (50)-(51), and (53)-(54) display the denominator, burn, chart, contraction, and certification inequalities. Persistent `q_real` forcing is retained rather than silently absorbed into zero.
- Probability conversion: none is newly performed; the accepted instance-side `E_sm` and conditional one-run `E_cov` modes are preserved.
- Rate-specialization contribution: the step supplies logarithmic burn and certification horizons and the explicit `tau_r` threshold for downstream runtime and certificate accounting.
- Baseline reduction: at `q_real=0,Gamma=1`, the exact componentwise squaring map and `R,S` reductions hold; finite transient displacement is retained and the exact stationary representative has zero displacement.

## Notation Surface Audit

The exported interfaces are only `E_RS`, `E_chart`, `E_chart_l1`, and `E_cert`. `q`, `gamma_*`, `R_*`, `t_b`, and `tau_r` are explicitly defined appendix-local aliases; `H_M`, `L_M`, dual coefficients, the scalar envelope, `C_j`, and the fixed point are scoped local objects with visible provenance. No setting symbol is rebound, no look-ahead pair matrix is introduced, and no generated chart or denominator is exported as a primitive assumption. The target-positive sign convention is explicitly separated from the algorithmic raw state.

## Target-Step Assembly Audit

The named results form a valid acyclic assembly: accepted `E_sm` and `E_cov` give the static geometry and initial window; `prop:step-004-recurrence` gives activation and the exact recurrences; `inv:step-004-burn` gives denominator persistence and burn; `lem:step-004-entry` gives dual-l1 and ambient chart entry; `prop:step-004-chart` proves self-mapping and norm floors; `prop:step-004-contraction` proves the normalized-map Lipschitz bound and fixed point; and `prop:step-004-certification` proves the stored-state threshold and zero branch. The assembly cites theorem-style labels, preserves the accepted dependency interfaces, and establishes exactly the four declared outputs.

## Review Rationale

ACCEPTED is the smallest sound status. All seven local units are self-contained relative to the accepted setting, sketch row, and dependency conclusions; the recurrence and chart mechanisms are proved before their generated outputs are consumed; and the finite-horizon, probability, norm, sign, and baseline contracts are preserved. The only terse estimates are elementary consequences of the explicitly stated row-mass and chart inequalities, with numerical slack verified at the extremal constants. No local repair, sketch change, or dependency rerun is required.
