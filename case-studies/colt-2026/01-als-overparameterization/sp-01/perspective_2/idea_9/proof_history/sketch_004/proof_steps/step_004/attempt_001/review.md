# Proof Step Review

## Step Review Identity

- Sketch attempt: 4
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_2/idea_9/proof_steps/step_004/proof.md` (SHA-256 `63da319ea03c2ca1c9b9a5fdd8def702f145a9e67e107046de61a9f32976e142`)
- Binding setting: `perspective_2/idea_9/setting.md` (target-spec `material_partial`)
- Accepted sketch review: `perspective_2/idea_9/proof_sketch_review.md` (Sketch attempt 4, `ACCEPTED`)
- Accepted dependency: `perspective_2/idea_9/proof_steps/step_003/proof.md` (SHA-256 `21f7cdaf7e27fb3bca1407972e43dea186810c82ca6ff9e6ef7ec9fe18bde170`) with `review.md` status `ACCEPTED`

## Step-Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Blocking Issues

1. **Missing outside-span history/source-exclusion bridge (sketch/interface defect; units 003--004, equations (4.2)--(4.5)).** The accepted Step 003 interface supplies the sampled target-frame array `A_I`, its statewise `Theta_I`, and finite accepted tensors, but no bound on the full history tensor `W_hist=-sum_i E_i` in the product spectral norm or on its contractions with mode-orthogonal directions. The angular Hessian and gradient in unit 002 are evaluated against the full current residual, so target-frame entries cannot control the theorem-critical curvature/source term. The required singleton/mixed-support dichotomy therefore has no legal mechanism source under the current step-row interface. Repair the sketch by adding a named pre-landscape generated-output bridge, with a noncircular producer from primitive conditions and accepted prefix outputs, that exports the full spectral/mode-orthogonal bound and its target-frame transfer relation before Step 004.
2. **No capture/curvature scale comparison (sketch/interface defect; unit 004, (4.1) and (4.7)).** The only score lower bound supplied by `Cert` is `s^2 >= 2 ||R_I||_F^2 P^(-D_cap)`. The missing history component can be larger than both this capture scale and the Hessian threshold `N_I(g)P^(-D_gap)/g^3`; the displayed interface-level rank-one completion satisfies every certificate inequality while its directions are orthogonal to the unresolved atom. The repaired sketch must state the exact admissibility/dominance inequalities, including `P,n,r` dependence, before invoking a two-label exchange argument.
3. **Generated-output flow and assumption provenance are incomplete (sketch/interface defect; target assembly and unit 005).** Step 004 is the producer consumed by Step 005 and the abstract prefix induction in Step 009, but no accepted producer supplies the required source-exclusion output before that edge. Promoting it to a local hypothesis would assume a generated invariant that the goal requires the proof to derive. The repair must expose the producer, consumers, and dependency path; it must not hide the bridge in `Theta_I` or add it as a primitive setting assumption.
4. **Subordinate local contract defects in the diagnostic artifact (units 003--005).** The target-frame perturbation proof uses undefined helper names (`a'`, `b'`, `c'`) in its telescoping bound; unit 004 relies on the existence of mode-orthogonal directions without citing `assump:dimension-regime`; unit 005 contains the malformed `omega_{perp,I}le` relation and leaves `c_perp` and the quantification of `g` unspecified. Several proof sentences cite `unit_001` by its audit ID instead of the theorem-style label `Lemma~\\ref{lem:step-004-score}`. These are locally repairable after the sketch interface is repaired, but the producer must rerun Step 004 and receive a fresh review before downstream use.

## Per-Lemma Audit

### unit_001: Exact score, radial root, and capture floor

- Statement fidelity: PASS. The unit proves the exact radial identity for the setting's current residual, the derivative at `t=g^3`, and the capture inequality required by `Cert`; it does not claim a sign for `s` beyond what the certificate supplies.
- Proof validity: PASS. Expanding the squared Frobenius norm and completing the square gives `Delta F = s^2/2-(t-s)^2/2 <= s^2/2`, hence (4.1). The argument is valid for every unit triple and `g>0`.
- Cited-result and assumption audit: PASS. The tensor target and residual are setting-defined, and no external theorem or unproved history bound is used.
- Rigor checklist: PASS. The radial variable, norm of a rank-one unit tensor, quantifiers, and capture scale are explicit; no probability or horizon upgrade is attempted.
- Local adversarial test: PASS. Negative or zero scores cannot satisfy the positive-score certificate, while the exact-root and zero-residual limits satisfy the displayed identity.
- Contribution to target step: PASS. This is the valid scalar input for any later isolation argument, but it supplies no source-exclusion control.
- Verdict: PASS
- Repair direction: None for this unit.

### unit_002: Exact product-sphere gradient and Hessian

- Statement fidelity: PASS. The unit targets the full ambient product-sphere gradient/Hessian for the exact residual and translates the certificate's angular bounds into inequalities for `s`.
- Proof validity: PASS. Great-circle differentiation gives the three mixed second-derivative terms and the sphere-curvature term `-s sum_M ||xi_M||^2`; `H_ang=-g^3 Hess_S s` at fixed `g` has the stated sign. The certificate conversion in (4.3) is correct.
- Cited-result and assumption audit: PASS. The calculation is direct in current notation and uses no strict-saddle citation or hidden trajectory property.
- Rigor checklist: PASS. Tangency, normalization by `N_I(g)`, and the positive `g^3` factor are handled. The inequalities are conditional and do not silently upgrade to an all-prefix claim.
- Local adversarial test: PASS. The formula remains valid for directions outside every target span; that test is precisely what exposes the missing history control in later units.
- Contribution to target step: PASS as a differential interface; it cannot by itself imply singleton isolation.
- Verdict: PASS
- Repair direction: None for this unit.

### unit_003: Target-frame decomposition and unbounded history defect

- Statement fidelity: PASS as a diagnostic proposition. It separates the static nonorthogonality error from the full accepted-history tensor and explicitly states that the Step 003 sampled interface does not export the latter norm.
- Proof validity: REVISE_STEP. The orthogonalization construction and the interface-level `W_perp` observation are sound, but the telescoping estimate invokes undefined proof-local vectors `a'`, `b'`, and `c'` and does not display the missing third-factor norm in the bound. Define those vectors and show the complete Cauchy--Schwarz line in a rerun.
- Cited-result and assumption audit: REVISE_STEP. The Gram square-root fact is restated, but the restriction/orthogonal-complement use should explicitly cite the dimension and Gram assumptions. The accepted Step 003 result is used only for the stated `A_I`/`Theta_I` interface.
- Rigor checklist: PASS for the central obstruction after that notation repair. The proof correctly distinguishes an interface witness from a protocol-reachability claim and does not treat the witness as generated algorithm output.
- Local adversarial test: PASS. A rank-one component orthogonal in all three modes is invisible to every target-frame contraction while having unit tensor spectral norm; this directly tests the residual-to-target interface.
- Contribution to target step: REVISE_SKETCH. The unit establishes why the intended dichotomy cannot be assembled from the currently accepted dependency; a pre-landscape bridge is required.
- Verdict: REVISE_SKETCH
- Repair direction: Add the source-exclusion producer to the sketch and, on the next Step 004 attempt, complete the telescoping/norm definitions and assumption citations.

### unit_004: Invisible rank-one certificate obstruction

- Statement fidelity: PASS as an interface-level obstruction. It does not claim that the transaction protocol has generated the witness; it tests exactly whether the declared conditional interface is sufficient for the advertised certificate-to-atom implication.
- Proof validity: PASS conditional on the stated interface completion. At the orthogonal `d` triple, `s=zeta`, the tangent score Hessian is `-zeta I`, `H_ang=zeta^2 I` at `g^3=zeta`, and `Delta F=zeta^2/2`; (4.7) is exactly the pair of certificate threshold checks. The radius and separation checks are also correct.
- Cited-result and assumption audit: REVISE_STEP. Existence of directions orthogonal to the target and protected spans uses the ambient-dimension assumption and should be stated/cited explicitly. The witness is intentionally not derived from the factor-difference form of `E_i`, so it is valid only as an interface counterexample, as the proof acknowledges.
- Rigor checklist: PASS after that basis citation. The `P`-growth argument correctly shows that fixed positive witness scales eventually exceed the polynomial certificate thresholds; no probability conversion is hidden.
- Local adversarial test: PASS. The candidate is separated from every unresolved atom and has `Sep=0`, so the existing separation gate cannot repair the failure. The exact orthogonal/no-history baseline is separately acknowledged and does not discharge the finite-history interface.
- Contribution to target step: REVISE_SKETCH. This is a decisive obstruction to the singleton/mixed-support conclusion under the current roadmap, not a completed landscape proof.
- Verdict: REVISE_SKETCH
- Repair direction: Add and prove a source-exclusion/capture bridge before Step 004; then rerun the obstruction test and the actual mixed-support exchange proof.

### unit_005: Required source-exclusion/capture bridge for a repaired sketch

- Statement fidelity: REVISE_SKETCH. The unit correctly identifies the smallest missing interface and its needed comparison scales, but it is a repair hypothesis rather than a proved output and is not yet quantified uniformly over the scratch state.
- Proof validity: PASS as a diagnostic repair specification, not as theorem evidence. It is explicitly marked as not consumed by the blocked proof.
- Cited-result and assumption audit: REVISE_STEP. The placeholder `c_perp`, the `g`-dependent minimum, and the malformed `le` token have no complete provenance/quantifier declaration. These must be fixed in the repaired sketch and subsequent producer artifact.
- Rigor checklist: REVISE_SKETCH. The bridge must distinguish the full history spectral defect, its mode-orthogonal part, and the target-frame part, and state whether the bound is uniform in `g` or evaluated only on certificate states.
- Local adversarial test: PASS. The proposed comparisons explicitly stress both the capture and curvature thresholds, which are the scales exposed by unit 004.
- Contribution to target step: REVISE_SKETCH. It records a repair obligation and cannot be exported as the missing generated invariant.
- Verdict: REVISE_SKETCH
- Repair direction: Put a fully quantified producer and consumer interface in `proof_sketch.md`; do not promote this hypothesis to a primitive or theorem-facing assumption.

## Hidden Subclaim Scan

The central hidden-subclaim scan is PASS for the obstruction: the proof does not smuggle the interface witness into the algorithm, and it explicitly distinguishes sampled target-frame contractions from the full residual used by the Hessian. The following local subclaims need repair before any acceptance: the undefined `a'`,`b'`,`c'` norm factors in unit 003, the dimension-based existence of the orthogonal witness in unit 004, and the unquantified constants/variables in unit 005. Bare references to `unit_001` in two proof sentences violate the theorem-style reference discipline and must be replaced by the named lemma label.

## Target Claim Audit

REVISE_SKETCH. The exact target row requires a score decomposition plus a singleton/mixed-support angular landscape dichotomy under the named conditional prefix interface. Units 001--002 establish only the radial and differential identities. Units 003--004 show that, under the interface actually supplied by accepted Step 003, a full-space certificate can be generated by an uncontrolled outside-span history component and therefore need not be near any unresolved atom. The proof correctly stops at `PARTIAL_BLOCKED` rather than claiming the target, but Step 005 and Step 009 cannot consume an isolation/matching output that has no legal producer.

## Explicit Rate Audit

REVISE_SKETCH. The artifact exposes `n,r,k,kappa,rho,Gamma_star,P,nu_real,eta0,e_num,D_cap,D_gap,tau_-,tau_+,m,N_I(g),s_I,g,omega_I,zeta`, fixes one accepted instance and one finite history, and uses deterministic conditional probability, one-state horizon, product-sphere Hessian, spectral, Euclidean, and Frobenius norms. Equations (4.1), (4.4), and (4.7) display the retained scales and no term is silently absorbed. The missing bridge must explicitly compare its `P,n,r` dependence with both `P^(-D_cap/2)` and `P^(-D_gap)`; otherwise the advertised R2 landscape interface and any later public specialization remain unsupported. No probability conversion or public-rate simplification is performed here. The exact `H=0,e_num=0,A_I=0` baseline is checked but does not repair the finite-history branch.

## Notation Surface Audit

REVISE_STEP. Most objects (`s`, `t`, angular contractions, frame matrices, `W_hist`, `omega_I`, and `zeta`) are correctly classified as proof-local diagnostics, and the exact target remains the realized tensor rather than an orthogonalized surrogate. However, the telescoping proof uses undefined `a'`,`b'`,`c'`; unit 005 introduces an unproven `c_perp`, an ambiguous `g` quantifier, and a malformed `\\le`; and two derivations use audit IDs (`unit_001`) as proof authority. These are subordinate local repairs after the sketch interface is changed.

## Target-Step Assembly Audit

REVISE_SKETCH. The accepted dependency path `step_003 -> step_004` is current and valid, and units 001--002 assemble the exact score/calculus interface. The assembly then correctly identifies the unresolved `omega_I` term and gives a concrete interface-level certificate witness, but it cannot derive the intended isolation/mixed-support dichotomy. The missing source-exclusion output must be produced before Step 004 and then consumed by Step 005 and Step 009; adding it only in this step would be a circular generated-invariant assumption. A fresh Step 004 proof and review are required after the sketch repair.

## Review Rationale

The smallest sound status is `REVISE_SKETCH`, not `REVISE_STEP` or
`BLOCKED_BY_DEPENDENCY`. The accepted Step 003 proof and review are current and
correct for the narrower conditional `A_I`/`Theta_I` interface; the failure is
that the accepted sketch assigns Step 004 a theorem-critical full-space
landscape conclusion without assigning a producer for the history component
that acts outside the target frame. The explicit interface-level rank-one
completion passes the displayed certificate thresholds at large allowed `P`,
so this is a genuine exported-interface/source-to-claim defect rather than a
missing line of algebra in the current step. A same-setting repair remains
plausible if a named source-exclusion and capture-scale bridge is added before
Step 004; therefore an idea-level failure is not warranted on this attempt.
The local notation and citation defects are recorded for the mandatory fresh
Step 004 rerun after that sketch repair. Downstream steps must not consume this
blocked artifact.
