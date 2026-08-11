# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_6`
- Sketch attempt: 9
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Reviewed sketch SHA-256: `39fa8ed5134725387a788dc84467bee0f4530083192a1cd1845d16ff92075334`
- Reviewed sketch-review SHA-256: `f1e96d74e126f7bede1f8503aaf54fbcdf82663da318e40f53de8ea372e28cd4`
- Reviewed proof artifact: `perspective_1/idea_6/proof_steps/step_004/proof.md`
- Reviewed proof SHA-256: `acb7aa8bb00dc36f86a173b202b7e49f09e42c48044f5ab8f336e7ea8ad1014e`

## Accepted Dependencies

- `step_001` proof SHA-256: `601fe6bc7ef5d060d9ea229fab4f95c3e86d7c903b9686c7cb5a0d3a4a3a0f4a`; review SHA-256: `3368ac1d6f5c3558baa0212a3c885d5337cb7f738bc4ac87cd2e32fe43d3224a`; review status: `ACCEPTED`.
- `step_003` proof SHA-256: `af2d4024dbc1c3d225e8b33931297dc1990fa9267ecdf704215c8dbe9a9340de`; review SHA-256: `c846957a4b1ec9bf2606a3baa258030dcb30bc079a3e0303eeb72651fb8e48cb`; review status: `ACCEPTED`.
- Accepted global diagnostic SHA-256: `a4d5f9953eedd3eced7248328b79839083bbda8a9c246b506a018d529d8f7ffd`; review SHA-256: `1354d398c8555f0864d2b9067a510851296afa22be648290ba363849bae6f2b8`.

The dependency conclusions were read in current notation before this review. `step_001` supplies the realized unit-column Gram row bounds, `q_real<=q_*`, `Gamma<=1.01`, and nondegeneracy on `E_sm`. `step_003` supplies the proof-only window witnesses, all-target event `E_cov`, and its conditional probability/label-erasure interface.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None.

## Per-Lemma Audit

### unit_001: Same-old-state Jacobi ratio recurrences

- Statement fidelity: PASS. The lemma proves exactly the two accepted sketch recurrences for the simultaneous old-state map, under nonzero target correlations and `Gamma R_t<1`.
- Proof validity: PASS. The target coefficient is lower-bounded before normalization; the direct competing coefficient and the complete off-diagonal Gram leakage give the individual ratio bound. Summing direct, target-column, and off-target-column leakage gives the companion l1 bound, and cycling the modes gives the displayed `S` recurrence without mixing committed and held states.
- Assumption/dependency audit: PASS. Only the accepted `E_sm` conclusions are used. Generated denominators are proved positive rather than assumed; symmetry supplies both row and column Gram mass.
- Rigor/adversarial checks: PASS. Absolute coefficient signs are retained, the `q=0,Gamma=1` specialization gives exact pair-product squaring, and the strict denominator condition is checked before every normalization.
- Verdict: PASS.

### unit_002: Finite burn-in and denominator closure

- Statement fidelity: PASS. The proposition supplies `E_RS`, finite denominator persistence, `R_10`, and the two consecutive burn-state `S` bounds required by the sketch.
- Proof validity: PASS. The window event gives `R_0<=19/20` and `S_0<=rR_0`; the upward-rounded scalar envelope proves `R_10<=6.0e-8`, after which the `S` affine recurrence has explicit coefficients below `1/4000` and `6.0e-8`.
- Horizon audit: PASS. The small-`r` endpoint in (20) is valid: at `r=3`, `m_r=2`, so `10+m_r=12<=13 log 3`; the displayed bound and its monotone improvement justify `C_burn>=13`. The `S` iteration uses `m_r` exactly as defined and covers both `t_b-1` and `t_b`.
- Assumption/adversarial checks: PASS. Persistent nonzero `q` forcing is retained in `B_t`; the maximal `q,Gamma,R_0` denominator still exceeds `31/32`; no trajectory invariant is promoted to an input assumption.
- Verdict: PASS.

### unit_003: Dual-l1 bridge and projective-chart entry

- Statement fidelity: PASS. The lemma defines the accepted target dual and the l1 mass `a_t`, proves the bridge from `S_t`, and exports the `a_{L_burn}<=1/1024` and ambient chart-entry bounds.
- Proof validity: PASS. The realized Gram is invertible by its proved row/column mass, post-first-update states lie in the target span, and the dual coefficient normalization is bounded by the recurrence denominator. The unit-norm decomposition proves the target coefficient has the correct sign and gives the `2a` ambient conversion without a hidden `sqrt(r)` factor.
- Assumption/dependency audit: PASS. Burn bounds and the Gram dual are inherited from named accepted results; no selected-state or later ALS condition is used.
- Verdict: PASS.

### unit_006: Modewise sign equivariance and raw-to-oriented trajectory

- Statement fidelity: PASS. This added unit supplies the previously missing bridge: the three cyclic output signs, zero-contraction preservation, recursive target-positive reorientation, and invariance of absolute ratios and `zeta`.
- Proof validity: PASS. Trilinearity and oddness of normalization give `rho_U=sigma_V sigma_W`, `rho_V=sigma_U sigma_W`, and `rho_W=sigma_U sigma_V`. The recursive sign choice makes each reoriented raw iterate exactly the oriented-map iterate; the minimizer substitution proves projective-residual invariance.
- Assumption/dependency audit: PASS. The positive-output condition is explicitly conditional in the lemma and is discharged by the strict target-term margin from unit_001/unit_002 during burn and by (37a) in the chart. The zero branch is handled rather than silently normalized.
- Adversarial check: PASS. Independent flips of one, two, or all three mode inputs produce exactly the cyclic pair-product output flips and leave all absolute ratios and `zeta` unchanged.
- Verdict: PASS.

### unit_004: Invariant contractive projective chart

- Statement fidelity: PASS. The proposition proves the exact `a_chart=1/512`, `chi_chart=1/128` chart, self-map, dimension-free Lipschitz constant, contraction-norm interval, and unique projective fixed point.
- Proof validity: PASS. The dual Gram expansion gives the target and off-target correlation bounds; the Hadamard coefficient estimate and normalization floor establish the self-map. Equation (37a) verifies that the coefficient-positive vector is the target-positive representative of the literal output. The ratio difference estimate, Hadamard difference, and normalization inequality yield `L_chart<0.034<1/4`; the explicit lower/upper contraction norms exclude the zero branch throughout the chart.
- Banach/closedness audit: PASS. The ambient cap forces a strict positive target correlation, making the oriented chart closed and complete. Banach's hypotheses are discharged before the fixed-point conclusion is used.
- Baseline/adversarial checks: PASS. The endpoint `a=a_chart,q=q_*` retains slack, and the `q=0,Gamma=1` map has the exact stationary target fixed point.
- Verdict: PASS.

### unit_005: Finite certification and same-state storage interface

- Statement fidelity: PASS. The proposition proves certification within the inclusive `[L_burn,L_burn+L_cert]` window, stores the evaluated state rather than its look-ahead, and exports the same-old-state nonzero-look-ahead interface for covered and arbitrary stored slots.
- Proof validity: PASS. The sign lemma identifies the literal proposal path with the contracted chart path, Banach successive-displacement decay gives (49), and the endpoint arithmetic in (47)--(51) reaches `zeta<=tau_r` before the final inclusive evaluation is exhausted.
- Procedural/dependency audit: PASS. All three look-aheads are evaluated from one old state; a zero contraction causes the setting-defined unsuccessful branch. The proof does not import active-ALS or `Refresh_s` objects into the proposal chain.
- Adversarial checks: PASS. The exact fixed point has zero displacement, arbitrary raw mode signs are covered by unit_006, and covered chart contractions have the quantitative norm floor from (31).
- Verdict: PASS.

## Hidden Subclaim Scan

No independent nontrivial subclaim remains hidden. The sign-equivariance/raw-trajectory bridge is explicitly named and proved in `unit_006`; recurrence algebra, numerical closure, dual entry, chart self-mapping, Lipschitz contraction, fixed-point existence, horizon arithmetic, and stored-state semantics each have matching theorem-style local units. The accepted dependency conclusions are restated in current notation before use, and no target label is supplied to the executed algorithm.

## Target Claim Audit

The fresh proof establishes the exact sketch-9 `step_004` interface under `E_sm`, the accepted window/coverage conclusions, and the primitive rank/horizon definitions: the simultaneous `R,S` recurrences; noncircular denominator persistence; finite burn bounds; the target-dual l1 variable and chart entry; the named closed chart, self-map, contraction, norm floors, and unique projective fixed point; and `zeta<=tau_r` within the declared `O(log r)` certification window. It also preserves the stored-state versus look-ahead distinction and the pathwise independence from later quotient refreshes.

## Explicit Rate Audit

- Exposed quantities are `r`, `q_real`, `Gamma`, `R_t`, `S_t`, `a_t`, the chart radii, `L_chart`, `tau_r`, `L_burn`, and `L_cert`.
- The proof fixes the realized tensor and then a window witness, keeps the conditional probability mode inherited from `E_cov`, and adds no confidence loss or asymptotic upgrade.
- Structural forcing from `q_real` and weight imbalance is retained in every displayed recurrence. The table after (14), the affine bounds in (17)--(19), the chart normalization floor, and the certification endpoint provide explicit absorption inequalities.
- Universal constants are independent of `n`, `r`, the base triple, smoothing parameters, confidence levels, accuracy, target/slot labels, and later ALS coordinates. The small-`r` checks for both horizon choices pass.

## Notation And Assumption Notes

- `q=q_real`, `F`, `m_r`, and the scalar envelope are proof-local; `H_M`, `L_M`, `a_t`, the chart radii, and `E_RS/E_chart/E_chart_l1/E_cert` are the minimal generated interfaces consumed downstream.
- Mode signs, oriented iterates, and signed ratio vectors are proof-local and are derived from the setting's trilinear map; they are not primitive sign or basin assumptions.
- The target-oriented labels used in the proof are analytical indices only. The accepted step-003 label-erasure conclusion and the procedural definition ensure no target label enters proposal, certification, or clustering decisions.
- No active-ALS coordinate, represented-product register, or `Refresh_s` value is introduced before this step's output boundary.

## Target-Step Assembly Audit

The accepted `step_001` event and `step_003` coverage witness feed unit_001 and unit_002. Unit_003 produces the dual/chart entry; unit_006 makes the chart map a statement about the literal raw trajectory; unit_004 supplies self-mapping, contraction, and fixed-point outputs; and unit_005 converts that contraction into the exact finite certification and same-state storage interface. These named units jointly imply every field of the accepted sketch row without changing assumptions, dependencies, rates, probability mode, or baseline behavior.

## Review Rationale

`ACCEPTED` is the smallest correct status. The previously identified raw-to-oriented sign gap is explicitly repaired by `unit_006` and the positivity margin (37a), all local units pass their derivational and adversarial audits, the dependency SHAs and accepted reviews are current, and no blocker or downstream interface change remains. A fresh proof-step review is not required before consuming this frozen artifact.
