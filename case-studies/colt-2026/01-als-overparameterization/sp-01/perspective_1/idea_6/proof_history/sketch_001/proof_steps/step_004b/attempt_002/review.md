# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004b`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_1/idea_6/proof_steps/step_004b/proof.md`
- Frozen SHA-256: `a9f47d666d50dc5b030593624c5032a1007ffdb255f75afa451b840b275e0f90`
- Accepted dependency: `perspective_1/idea_6/proof_steps/step_004/proof.md`, SHA-256 `3c94965198445dfdeb99ea5e46539168f7f3f2f18f0b33a4c3a05d623672f24e`, with matching `Step-Review Status = ACCEPTED`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004b

## Blocking Issues

1. **The singleton theorem statement weakens the sketch's componentwise score interface.** The accepted sketch requires, for a singleton core `I={j}`, the exact bounds `s_- lambda_j <= |theta_a| <= s_+ lambda_j`. The theorem statement in `unit_006`, lines 433--436, states only `s_- lambda_min <= |theta_a| <= s_+ lambda_max`. Lines 477--479 display the required `lambda_j` interval inside the proof body, but the proof-step contract requires the exact exported conclusion in the named local result's statement; a stronger claim recoverable only from proof prose is not a valid downstream interface. State and assemble the componentwise interval explicitly in Proposition `[prop:step-004b-singleton]`.

2. **The multi-support `160 eta_0` score charge is asserted without a derivation from the proved profile bounds.** In `unit_007`, lines 507--530, the proof writes the ideal core term and then lists four charges `72+24+16+48=160`, but gives no inequalities deriving those charges from `|y_i Z-1|<72 eta_0`, `|rho_M,i|<=73 eta_0`, the three Gram insertions, scalar normalizations, and outside mass. The stated rho bound alone permits a three-factor first-order deviation larger than `160 eta_0`; a sharper square-root/profile calculation may close the desired constant, but it is not displayed. Consequently (26), `s_mix`, and the theorem-critical multi-support rejection gap consumed by `step_005` are not proved. Add the explicit product, Gram, scalar, cross, and outside inequalities (or use an equivalent named alpha/pair-product lemma) and verify their sum is at most `160 eta_0` at the declared endpoint.

## Per-Lemma Audit

### unit_001: raw same-state right-sign equation

- Statement fidelity: PASS. The exact same-state pair matrix, right-sided signs, and per-column `d_M tau_r` residual match `E_cert_eq`.
- Proof validity: PASS. Multilinearity and the accepted projective certificate give the displayed identity and residual norm directly.
- Cited-result and assumption audit: PASS. Only the accepted `step_004` stored-state interface and setting tensor are used.
- Rigor checklist: PASS. Nonzero contractions, dimensions, signs, and the stored-state/look-ahead distinction are explicit.
- Local adversarial test: Arbitrary contraction signs are retained; a stationary orthogonal state has zero residual and a finite transient keeps its certificate charge.
- Contribution to target step: Valid raw `E_cert_eq` producer.
- Verdict: PASS
- Repair direction: None.

### unit_002: dual decomposition and coefficient-vector expansion

- Statement fidelity: PASS. It supplies the dual coefficients, norm margins, contraction scale, and vector-level Gram expansion required by the sketch.
- Proof validity: PASS. Projection geometry, accepted Gram/Khatri--Rao bounds, and Cauchy--Schwarz justify (2)--(4) with the displayed constants.
- Cited-result and assumption audit: PASS. The accepted `E_sm` fields are restated in current notation; no generated support fact is assumed.
- Rigor checklist: PASS. Every denominator is positive and no hidden rank factor enters `eta_G`.
- Local adversarial test: The `q_*`, `Gamma=1.01`, and non-LOW endpoints retain the `0.69` and `1.03` margins.
- Contribution to target step: Valid input to the normalized defect ledger.
- Verdict: PASS
- Repair direction: None.

### unit_003: three-way defect split and normalized relation

- Statement fidelity: PASS. It exposes the exact normalized equation and the independent `eta_G`, `eta_N`, and `eta_C` reserves.
- Proof validity: PASS. Applying the realized dual and dividing by the proved coefficient norms gives (5); the reciprocal identity and the single finite-support l2-to-l1 conversion are correct.
- Cited-result and assumption audit: PASS. Inputs are accepted geometry and units 001--002 only.
- Rigor checklist: PASS. Unknown residual signs and support size at most `r` are retained explicitly.
- Local adversarial test: At full support, the certificate contribution is exactly bounded by `2 sqrt(r) tau_r`, not an invalid `O(tau_r)` l1 term.
- Contribution to target step: Valid scale-free coordinate source.
- Verdict: PASS
- Repair direction: None.

### unit_004: independent outside-mass bridge

- Statement fidelity: PASS. The new unit produces outside mass before any core profile, repairing the attempt-1 dependency cycle.
- Proof validity: PASS. The disjoint low-mode partition, companion inequalities (11), l2 product estimates (12)--(13), and positive numerical margin give `t<10 eta_0` noncircularly.
- Cited-result and assumption audit: PASS. It uses only the normalized coordinate equation and non-LOW local branch; no profile, label, or selected representative is imported.
- Rigor checklist: PASS. Tie assignment, empty core, all modes, and finite residual norms are covered.
- Local adversarial test: At `a0=0.69/1.01` and `vartheta=1/8`, the closure denominator remains above `0.165`, so the defect cannot select the large branch.
- Contribution to target step: Supplies the valid outside-mass producer for singleton, multi-support, and straddling consumers.
- Verdict: PASS
- Repair direction: None.

### unit_005: retained-floor ratios and weighted profile

- Statement fidelity: PASS. It states legal retained denominators and the required `144 eta_0` profile after the independent outside bridge.
- Proof validity: PASS. The ratio cancellation, `68 eta_0` pair-profile bound, weighted average identity, and `71/72 eta_0` reciprocal calculation are valid; the attempt-1 false `169<144` arithmetic is removed.
- Cited-result and assumption audit: PASS. The outside mass is supplied by the preceding named lemma, not a future multi-support conclusion.
- Rigor checklist: PASS. Empty cores are never divided by and all retained coordinates have a quantitative positive floor.
- Local adversarial test: The worst-case reciprocal factor remains below `71 eta_0`, and the outside correction is below `0.051 eta_0`.
- Contribution to target step: Valid no-label weighted profile.
- Verdict: PASS
- Repair direction: None.

### unit_006: singleton core and its tails

- Statement fidelity: REVISE_STEP. Tail and direction conclusions match, but the theorem statement exports only global min/max score bounds rather than the required componentwise `lambda_j` interval.
- Proof validity: PASS for the aggregate tail bridge. Equation (23) removes the attempt-1 companion/root gap, and lines 452--479 provide sufficient estimates for the componentwise score interval.
- Cited-result and assumption audit: PASS. Only the named outside/profile lemmas and accepted geometry are consumed.
- Rigor checklist: The l1/l2 tails and target coordinate margin are explicit; the exact score conclusion must be moved into the theorem statement and assembly without weakening.
- Local adversarial test: Unequal weights distinguish `lambda_j` from `lambda_min` and `lambda_max`; this is why the statement-level weakening is material even though `Gamma<=1.01`.
- Contribution to target step: Singleton tails are valid, but the formal score interface is not yet exportable.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_004b`; state `s_- lambda_j <= |theta_a| <= s_+ lambda_j` in the named proposition and preserve it in the ledger.

### unit_007: multi-support core and weighted tail score

- Statement fidelity: PASS as a target statement: it contains the required tail, profile, support-size, and `s_mix` conclusions.
- Proof validity: REVISE_STEP. The tail bound and pre-existing profile are valid, but the four numerical charges at lines 520--525 are conclusions rather than derived inequalities. The submitted text does not establish that their sum controls the ideal profile product plus Gram/scalar/cross/outside terms.
- Cited-result and assumption audit: PASS. No future result or target label is imported; the defect is local derivational completeness.
- Rigor checklist: The quantifiers and support-size dependence are clear, but the theorem-critical constant `160` and term absorption need a displayed calculation.
- Local adversarial test: Using only the stated `|rho_M,i|<=73 eta_0`, three positive rho factors have a first-order envelope near `219 eta_0`; the proof must invoke and display the sharper square-root/coupling relation it intends to use.
- Contribution to target step: The multi-support rejection score is not certified until the `160 eta_0` bridge is proved.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_004b`; add explicit inequalities for each listed charge and verify the endpoint sum.

### unit_008: empty-core and threshold-straddling closure

- Statement fidelity: PASS. It covers empty cores, straddling indices, ties, LOW conversion, and the required no-label scope.
- Proof validity: PASS. `I=empty` contradicts the independently proved unit norms, and any straddling index in `O` contradicts the simultaneous `10 eta_0` coordinate cap.
- Cited-result and assumption audit: PASS. The only generated input is the already-proved outside-mass lemma.
- Rigor checklist: PASS. All three low-mode assignments and equality at the threshold are addressed.
- Local adversarial test: Distributed low coordinates across modes cannot evade the global outside coordinate bound.
- Contribution to target step: Valid exhaustive support-boundary closure.
- Verdict: PASS
- Repair direction: None.

### unit_009: global no-label threshold/tail ledger

- Statement fidelity: REVISE_STEP because it exports the score interfaces of units 006--007 as accepted fields.
- Proof validity: REVISE_STEP. The support partition and producer order are acyclic, but the assembly consumes the weakened singleton statement and unproved multi-score constant.
- Cited-result and assumption audit: PASS for label erasure and dependency order.
- Rigor checklist: The residual is charged once and the finite-support mode is preserved; score-field closure remains open.
- Local adversarial test: A multi-core slot cannot yet be compared to the observable `0.85` filter without the proved `s_mix` constant.
- Contribution to target step: Most of `E_cert_tail` is established, but its score fields are not fully certified.
- Verdict: REVISE_STEP
- Repair direction: `/proof-step step_004b`; assemble only the repaired componentwise singleton interval and proved multi-score bridge.

### unit_010: proof-only barred post-score equation

- Statement fidelity: PASS. It is explicitly conditional on the later common score sign and matches the proof-only barred convention.
- Proof validity: PASS. The column sign product converts the raw equation exactly and preserves the initialized rank-one term.
- Cited-result and assumption audit: PASS. No barred object is used in the unconditional ledger.
- Rigor checklist: PASS. Negative scores, product-one orientation, and residual norms are handled.
- Local adversarial test: Independent mode signs reduce to the correct pair-product signs.
- Contribution to target step: Valid conditional barred interface.
- Verdict: PASS
- Repair direction: None.

### unit_011: scope, baseline, and producer-consumer closure

- Statement fidelity: PASS. It states the finite-horizon, same-state, pre-cluster scope and orthogonal stationary baseline.
- Proof validity: PASS. The producer chain is noncircular and the q-zero stationary residual vanishes exactly.
- Cited-result and assumption audit: PASS. No later ALS or `Refresh_s` object is used as evidence.
- Rigor checklist: PASS. A finite certificate tolerance is not substituted for the exact baseline conclusion.
- Local adversarial test: Transient residuals remain charged while stationary residuals vanish.
- Contribution to target step: Valid scope and baseline metadata.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

Attempt 2 now exposes the outside-mass, reciprocal-profile, aggregate singleton, and empty/straddling bridges as named units. The remaining hidden independent calculation is the `160 eta_0` multi-support score expansion in `unit_007`: the four listed charges are not derived from the displayed profile and Gram equations. The exact componentwise singleton interval is derived in proof prose but absent from the named proposition statement, so it is not a valid formal export.

## Target Claim Audit

The proof establishes the exact same-state raw equation, the three defect classes, noncircular outside mass, retained profile, singleton tails, multi-support tail score, empty/straddling exhaustion, barred convention, and finite/baseline scope. It does not yet establish the exact score portion of `E_cert_tail`: the singleton named result is weaker than the sketch's `lambda_j` interface, and the multi-support `lambda_max(1/sqrt(m)+160 eta_0)` estimate lacks its derivation. Quantifiers, conditional probability mode, and no-label scope otherwise match sketch attempt 1.

## Explicit Rate Audit

The exposed structural variables, finite certificate scale, hidden-constant exclusions, conditional/pathwise probability mode, fixed-state horizon, and Euclidean/l1 norm modes are stated correctly. The `eta_C=2 sqrt(r) tau_r`, `10 eta_0` outside mass, and `72/144 eta_0` profile absorptions are valid. The public score constants `s_-`, `s_+`, and `s_mix` cannot yet be accepted for downstream filtering because of Blocking Issues 1--2. Baseline reduction remains exact.

## Notation Surface Audit

The public `E_cert_eq`/`E_cert_tail` surfaces and proof-local dual, support, ratio, and sign objects are generally economical. During the retry, define the singleton `T_M` in the theorem statement, normalize the coordinate-defect alias `e_M` versus `h_M`, and update the stale `prop:step-004b-barred` mention to the current lemma label. These notation cleanups are local and do not change the routing decision.

## Target-Step Assembly Audit

The repaired ordering `E_cert -> raw equation -> outside mass -> profile -> support cases -> E_cert_tail` is acyclic. Nevertheless, accepted local results do not yet jointly imply the exact target because `unit_006` does not formally export the componentwise singleton score interval and `unit_007` does not derive the multi-support score constant. The barred and scope units cannot repair those missing score interfaces.

## Review Rationale

`REVISE_STEP` is the smallest sound status. Attempt 2 successfully repairs all four attempt-1 blockers, and units 001--005, 008, 010, and 011 can be preserved. The remaining work is local: promote the already-derived `lambda_j` singleton interval into the named proposition and supply the explicit finite arithmetic proving the `160 eta_0` multi-support score bridge. No sketch claim, dependency, primitive assumption, theorem scope, metric, or output target needs to change, so `/proof-step step_004b` is sufficient.
