# Proof Step Review

## Step Review Identity

- Sketch attempt: 6
- Step ID: `step_004`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_2/idea_9/proof_steps/step_004/proof.md`, SHA-256 `8a155857fdb65cc63598c50b6b95779023c6c4668b2fb5ce00f2b15edfc76bbf`
- Binding setting: `perspective_2/idea_9/setting.md`, SHA-256 `27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2`, target-spec `material_partial`
- Accepted sketch review: `perspective_2/idea_9/proof_sketch_review.md`, sketch attempt 6, SHA-256 `0333e1da5da4014de163f34435be48d00e539de71efc317ffd5bc63aaa88af0f`
- Accepted dependencies: `step_003` proof SHA-256 `a5134704a33ba09b398d5eb946d7cc352a0110283c33f7ebdba73f75e3295902`, review SHA-256 `ca56a019738cdb860b815dadf913f2022d2e56dbb8fd8a357c88b262cd5971ac`; `step_003b` proof SHA-256 `148e25ae2da025d8d8b3373382caff6738bdd4d03f55b69df1320652935fc1a7`, review SHA-256 `8b9b81fbc502158e197edece0db919b760d17de19656ecd6ffac8c8173426e2b`; both reviews have status `ACCEPTED`.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004

## Blocking Issues

1. **The root-activation/support trichotomy is still asserted rather than proved (unit 003, lines 375--422).** The phrases “the source-support part ... gives,” “force either,” “direct substitution,” and “this exhausts” omit the actual case inequalities needed to pass from (18) to (20), (21a), or (21b). In particular, six coordinate lower bounds of size `(8 sqrt(r))^(-1)` do not by themselves yield the stated `tau_min/(64 sqrt(r))` exchange margin, because the normalizing denominators in (21b) can be imbalanced and must be audited mode by mode. Likewise, the sign-straddling claim at lines 415--420 invokes a discrepancy of order `tau_min/sqrt(r)`, although products of two threshold coordinates are only of order `tau_min/r`. A rerun must state and prove a complete quantitative trichotomy, with constants strong enough at every threshold.
2. **The low-score and one-mode-straddling branches have no valid displayed closure (unit 003, lines 379--400).** Equation (19) uses undefined perpendicular components and `max{S,gamma}` rather than a sign-safe `max{|S|,gamma}` relation. The claimed implication `||a||_2,||b||_2,||c||_2 >= 1/2` is supported only by an unnamed Hessian restriction; no tangent is constructed and the diagonal `-S` term is not accounted for. When one of the other coordinates exceeds `3/4`, the proof changes to “the largest entry in that third mode” without proving that the newly selected label retains the remaining-mode lower bound required by (21a). The `|U_I|=1` boundary is also missed because the exchange alternative formally requires `p != q`, although its two-mode tangent uses no `q`.
3. **The exchange-curvature margin is not derived from the proposed tangents (units 003--004, lines 340--422 and 441--450).** For (21b), the proof does not show that one product-one sign triple can make all retained mixed contractions have the required sign, nor does it expand the normalized tangent coefficients and bound the other-label terms. Equation (23) is then asserted from “pair/triple Gram bounds and (16)” without a current-notation calculation or an explicit defect budget for the frame, accepted-history, and source-normal terms. These are the same within-span activation/exchange obligations left open by unit attempt 1, not consequences of the accepted source-normal bridge.
4. **Two subordinate quantitative assembly steps are invalid as written.** At lines 210--242, the lower bound on `g^3` used to prove (10) is obtained only after the radial comparability (11), while (11) is presented as a consequence of (10); the argument can likely be reordered by first proving `R_0 e_num <= s/4`, but the submitted derivation is circular. At lines 464--469, `s_I >= tau_p |a_p b_p c_p|-|s_I-S|-omega` drops all other labels in `S`; it does not follow from `|s_I-S| <= omega`. The repair must instead use one of the coordinate equations in (18) to lower-bound `S` and then transfer from `S` to `s_I`.

## Per-Lemma Audit

### unit_001: Exact score and differential transfer

- Statement fidelity: PASS. The unit states the exact score, radial, gradient, Hessian, and accepted projection-transfer identities required by the target row.
- Proof validity: PASS. The residual decomposition uses the explicitly named historical-record hypothesis; the Frobenius expansion and fixed-radius product-sphere differentiation have the correct signs.
- Cited-result and assumption audit: PASS. The accepted `step_003b` compatibility lemma supplies precisely (6)--(7), and no target label or generated source-normal fact is treated as primitive.
- Rigor checklist: PASS. Quantifiers are one-prefix conditional, all factors are unit directions, and the projection remains analysis-only.
- Local adversarial test: PASS. Empty history, arbitrary full-space directions, and the exact zero-defect branch preserve every identity.
- Contribution to target step: PASS. This gives a sound score and differential interface but does not establish support activation.
- Verdict: PASS
- Repair direction: None.

### unit_002: Certificate scale and explicit exponent bridge

- Statement fidelity: PASS. The intended raw versus `E_lb`-qualified split matches the accepted sketch and `step_003b` interface.
- Proof validity: REVISE_STEP. Capture gives (8), and the displayed exponent has enough slack, but the proof uses the lower bound on `g^3` before deriving the radial comparability that supplies it.
- Cited-result and assumption audit: PASS. `tau_min`, `(Res)`, `N_I(g)`, `(SE-raw)`, and `(SE-lb)` are current accepted dependency outputs; no new lower-tail assumption is introduced.
- Rigor checklist: REVISE_STEP. Reorder the proof: derive `R_0 e_num <= s/4` directly from (8), use the radial certificate to obtain (11), and only then use the resulting `g^3` lower bound in (10).
- Local adversarial test: PASS after that repair. The boundary `s>0`, very small `g`, and the raw `E_lb^c` branch can then be checked without circularity.
- Contribution to target step: PASS after a local derivation repair.
- Verdict: REVISE_STEP
- Repair direction: Repair the proof ordering without changing the exponent interface or branch split.

### unit_003: Root activation and support trichotomy

- Statement fidelity: PASS in intent. The root is selected from all unresolved coordinate arrays before any root-indexed `Theta_I` entry is used, which repairs the noncircular-selection defect from unit attempt 1.
- Proof validity: REVISE_STEP. The frame/history comparison, equations (18)--(19), low-score tangent, common-support tangent, threshold case split, sign consistency, and exchange lower bound are not proved with the displayed algebra. The threshold arithmetic noted in Blocking Issue 1 prevents accepting the claimed margin as a routine omission.
- Cited-result and assumption audit: REVISE_STEP. The accepted dependencies supply enough raw controls for a local attempt, but the frame remainder and accepted-history gradient/Hessian bounds are independent nontrivial subclaims stated only in prose. They need named local statements or complete derivations.
- Rigor checklist: REVISE_STEP. Define `M_M` and the perpendicular components, use a sign-safe denominator in (19), handle `|U_I|=1`, prove all mode permutations and sign cases, and track every normalization and `r` factor.
- Local adversarial test: FAIL. At the threshold `(8 sqrt(r))^(-1)`, the proof's claimed `tau_min/(16 sqrt(r))` sign discrepancy is not implied; and the common-support tangent has not been shown to retain a uniform positive Hessian contribution under imbalanced coordinates.
- Contribution to target step: Missing. This unit is the sole producer of the singleton-or-exchange coverage needed by unit 004.
- Verdict: REVISE_STEP
- Repair direction: Supply a self-contained quantitative diagonal-tensor strict-saddle lemma, then perturb it by the separately displayed frame/history/normal defects.

### unit_004: Exchange curvature and certificate dichotomy

- Statement fidelity: PASS conditional on a valid unit-003 trichotomy. It targets exactly the observable Hessian contradiction and unresolved singleton output in the sketch row.
- Proof validity: REVISE_STEP. Equation (23) is not implied by the submitted unit-003 proof, and the singleton score inequality at lines 468--469 is invalid because it discards the other-label part of `S`.
- Cited-result and assumption audit: PASS for the Hessian sign conversion and certificate lower bound. No external landscape theorem is silently imported.
- Rigor checklist: REVISE_STEP. Derive (23) tangent by tangent with a complete error budget, and use (18), rather than deletion of other labels, to prove the positive singleton score margin.
- Local adversarial test: REVISE_STEP. A true positive score-Hessian direction would contradict the certificate immediately, but the proof has not shown that every non-singleton branch supplies one.
- Contribution to target step: Missing until unit 003 and the singleton assembly are repaired.
- Verdict: REVISE_STEP
- Repair direction: Reassemble from the repaired activation lemma and explicitly derive both the exchange contradiction and singleton lower bound.

## Hidden Subclaim Scan

REVISE_STEP. Independent claims hidden in unit-003 prose include the injective/gradient/Hessian norm of the orthonormal-frame remainder, derivative bounds for the full accepted-history tensor, the outside-source coordinate relation (19), the low-score source-mass lemma, the exhaustive support/sign case split, simultaneous sign feasibility for (21b), and the uniform exchange-margin calculation. Each is theorem-critical and must be proved in a named local unit or as a complete derivation before unit 004 consumes it.

The root is now selected before any root-indexed `Theta_I` use, so no hidden generated label is assumed. The historical record, `(Res)`, `B_perp`, `(SE-raw)`, and branch-qualified `(SE-lb)` all have legal accepted producers.

## Target Claim Audit

REVISE_STEP. Units 001--002 provide the exact current-residual calculus and, after a local ordering repair, the required certificate scales. The submitted unit 003 does not prove the exhaustive singleton/mixed-support dichotomy, and unit 004 therefore cannot export the isolation margin. The target, assumptions, probability mode, metric, and dependencies have not drifted; the defect remains inside the proof assigned to the current sketch row.

## Explicit Rate Audit

REVISE_STEP. The artifact declares the relevant structural, numerical, residual, radius, horizon, probability, and norm variables, preserves raw `B_perp` off `E_lb`, and states allowed hidden-constant dependence. The missing rate work is the exact `r`-dependent support threshold, the normalized exchange-tangent margin, and the full perturbation budget leading to (23). In particular, terms of scale `tau_min/r` cannot be compared using only the weaker displayed `gamma <= tau_min/(200 sqrt(r))`. No public probability conversion or baseline weakening occurs here.

## Notation Surface Audit

REVISE_STEP. The source-frame coordinates and exchange directions are appropriately proof-local, but `M_M`, `u_{perp,A}`, `v_{perp,B}`, and `w_{perp,C}` are undefined; `max{S,gamma}` is not sign-safe; and `C_fr`/`C_hist` package unproved operator, gradient, and Hessian bounds. The rerun should expose those bounds directly and export only the unresolved-root isolation interface.

## Target-Step Assembly Audit

REVISE_STEP. The current accepted dependency chain supplies the realized frame, conditional target-frame envelope, complete historical record, positive residual reserve, full source-normal control, and raw/branch-qualified transfer before this step. Thus the archived sketch-4 invisible outside-span witness is excluded and the earlier source-exclusion/output-flow blocker does not recur. The failure is the repeated within-source-span activation/exchange derivation inside `step_004`: the submitted local units do not jointly imply the exact row claim, so `step_005` and the prefix induction may not consume this proof.

## Review Rationale

The smallest artifact repair is `REVISE_STEP` with producer target `/proof-step step_004`. Attempt 2 genuinely repairs root-selection provenance and retains the accepted `step_003b` source-normal bridge, so neither `BLOCKED_BY_DEPENDENCY` nor a return to `/proof-sketch` is justified by the current evidence. However, the same within-span activation/support obligation rejected in unit attempt 1 remains unresolved: it has been renamed as a trichotomy but not proved, and its displayed threshold arithmetic and final singleton assembly contain concrete errors. A fresh proof must provide the full diagonal strict-saddle calculation and perturbation budget before downstream use. This repeated local blocker is distinct from the earlier sketch-4 source-exclusion blocker; any controller-level escalation based on repeated failed local attempts should use that distinction.
