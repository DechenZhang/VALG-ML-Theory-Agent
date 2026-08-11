# Proof Step Review

## Step Review Identity

- Sketch attempt: 6
- Step ID: step_004
- Unit attempt: 3
- Reviewed proof artifact: perspective_2/idea_9/proof_steps/step_004/proof.md, SHA-256 4baef373466ed1e251a9d0e29b047d7c320bb15def83d91d9cf37b68eef2a80f
- Binding setting: perspective_2/idea_9/setting.md, target-spec material_partial
- Accepted dependencies: step_001 proof SHA-256 a9a87b0f289746498c40b438117c47dc6b1307679defdbc29852d97a66241cfc and review SHA-256 1cd56c69834fcba45d787657c9fae1009cb82f70c6c535fd12b3d132eb8b7907; step_002 proof SHA-256 7c3b7ea474bab76e407f4c616317f1b6662f23ea9c7cf90532eff6a84e55442a and review SHA-256 c9bd95cd8d9c431a191fc926b11bccb2c34b108dbdbf29f27c37034bccc1244a; step_003 proof SHA-256 a5134704a33ba09b398d5eb946d7cc352a0110283c33f7ebdba73f75e3295902 and review SHA-256 ca56a019738cdb860b815dadf913f2022d2e56dbb8fd8a357c88b262cd5971ac; step_003b proof SHA-256 148e25ae2da025d8d8b3373382caff6738bdd4d03f55b69df1320652935fc1a7 and review SHA-256 8b9b81fbc502158e197edece0db919b760d17de19656ecd6ffac8c8173426e2b

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004

## Blocking Issues

1. **The quantitative root-activation/support trichotomy is still not proved (unit_003, especially lines 371--478).** Equations (18)--(19), the frame/history derivative bounds, and the purported exhaustive case split are asserted in prose rather than derived. More decisively, the high-score calculation is false at its stated scale: from \(|S|>\tau_{\min}/(256r)\) and \(\gamma\le\tau_{\min}/(10^6r)\), one obtains only \(8\gamma/|S|<2048/10^6\), not the claimed \(1/(32r)\) uniformly in \(r\) in (24). Consequently (24) does not force three-mode common support, the sign argument following it has no valid threshold margin, and the inference that a unique common-support label has all three coordinates at least \(1/2\) is unsupported. The low-score sentence invoking a "largest singular vector" supplies neither a tangent nor a calculation; at a direction fully outside all three source spans the diagonal score Hessian is zero, so the claimed positive score-Hessian lower bound is not even the correct exclusion mechanism. This repeats the prior within-span activation blocker and prevents any isolation output.

2. **The exchange tangents do not yield the curvature exported by unit_004 (unit_003 lines 397--473; unit_004 lines 497--519).** The two-mode exchange statement assumes only \(|x_{p,M}|,|x_{p,N}|\le3/4\), under which its displayed leading numerator \(1-x_{p,M}^2-x_{p,N}^2\) can be negative. The common-support tangent calculation does not prove that one product-one sign triple makes all three mixed contractions favorable, and it omits the normalized other-label and perturbation terms. Even taking the submitted bounds at face value, unit_003 obtains only \(\tau_{\min}/(256r)\) in (21c) and \(\tau_{\min}/(128r)\) in (27), whereas unit_004 silently strengthens these to \(\tau_{\min}/(256\sqrt r)\) in (23). For \(r>1\) that stronger conclusion does not follow. The proposition also invokes the two-mode tangent for the generic exchange branch although the common-support branch defines a different three-mode tangent, and the lemma's formal requirement \(p\ne q\) conflicts with its one-label boundary. Thus no certified exchange branch has a proved positive score-Hessian direction, so the negative-loss-curvature contradiction is unavailable.

3. **The singleton score assembly is invalid (unit_004 lines 520--529).** The inequality
   \[
   s_I\ge \tau_p|a_pb_pc_p|-|s_I-S|-\omega
   \]
   discards \(\sum_{j\ne p}\tau_j a_jb_jc_j\) from \(S\) without a sign or magnitude bound. Neither \(|s_I-S|\le\omega\) nor the singleton label's positive product controls that omitted sum. A valid proof must first derive a sign-safe lower bound for \(S\) from the coordinate stationarity equations and then transfer it to \(s_I\). Without that bridge, the claimed \(s_I\ge\tau_{\min}/16\) and the advertised isolation margin are not established.

4. **The certificate-scale lemma remains circular as written (unit_002 lines 205--251).** The proof uses \(g^3\ge c_R\tau_{\min}P^{-D_{\rm cap}/2}\) to establish (10), but that lower bound comes from radial comparability (11), which is stated as a consequence after (10). Capture first gives a lower bound on \(s\), not on \(g^3\). This can be repaired locally by using (8)--(9) to show \(R_0e_{\rm num}\ll s\), deriving (11) directly from the radial certificate, and only then proving (10), but the submitted order is not a proof.

## Per-Lemma Audit

### unit_001: Exact score and differential transfer

- Statement fidelity: PASS. The unit states the exact residual, score, capture, radial, gradient, Hessian, and same-target projection identities required by the sketch row.
- Proof validity: PASS. The Frobenius expansion and fixed-radius product-sphere differentiation have the correct signs, and the accepted historical-record package legally supplies \(U_I\) and \(E_i\).
- Cited-result and assumption audit: PASS. Lemma~\ref{lem:p2-i9-s6-step003b-compatibility} supplies exactly (6)--(7); no source-normal condition or current label is treated as primitive.
- Rigor checklist: PASS. The one-prefix conditional quantifiers, product-one sign convention, and projection scope are consistent.
- Local adversarial test: PASS. Empty history, arbitrary full-space directions, and the exact zero-defect branch preserve all identities.
- Contribution to target step: PASS. It supplies calculus and transfer, but no activation conclusion.
- Verdict: PASS
- Repair direction: None.

### unit_002: Certificate scale and explicit exponent bridge

- Statement fidelity: PASS. The raw versus E_lb-qualified source-normal split matches the accepted dependency and sketch.
- Proof validity: REVISE_STEP. Capture correctly gives (8), but the proof uses a lower bound on \(g^3\) before deriving the radial comparison that supplies it.
- Cited-result and assumption audit: PASS. The weight floor, residual reserve, and SE-raw/SE-lb interfaces are current accepted outputs.
- Rigor checklist: REVISE_STEP. Reorder the argument and retain the exact fixed exponent and threshold comparison.
- Local adversarial test: PASS after reordering. Very small initial \(g\), E_lb complement, and the exact branch can then be handled without circularity.
- Contribution to target step: Partial. The scale interface is usable only after the local ordering repair.
- Verdict: REVISE_STEP
- Repair direction: Derive radial comparability before every use of the resulting \(g^3\) lower bound.

### unit_003: Root activation and support trichotomy

- Statement fidelity: PASS in intent. It attempts to select a root before consuming a root-indexed ledger entry and names the required low-score, common-support, and straddling branches.
- Proof validity: REVISE_STEP. The support case split, sign control, tangent construction, and curvature margins are not derived; (24) is quantitatively false and the low-score singular-vector claim is absent.
- Cited-result and assumption audit: REVISE_STEP. The accepted dependencies supply the raw frame, history, and source-normal controls, but the submitted proof packages their score/gradient/Hessian effects into unproved constants \(C_{\rm fr}\) and \(C_{\rm hist}\). These independent perturbation estimates must be stated and proved before the trichotomy uses them.
- Rigor checklist: REVISE_STEP. The proof must handle all mode permutations, signs, threshold equalities, source-perpendicular states, \(|U_I|=1\), and every normalization with a consistent \(r\)-scale.
- Local adversarial test: FAIL. The stated high-score bounds do not imply (24), coordinates at the two-mode upper threshold can make the proposed leading term nonpositive, and a fully source-perpendicular state contradicts the claimed low-score positive-Hessian mechanism.
- Contribution to target step: Missing. This is the sole producer of exhaustive singleton-or-exchange coverage.
- Verdict: REVISE_STEP
- Repair direction: Prove a self-contained approximate diagonal-tensor strict-saddle lemma, including the flat/source-perpendicular branch, then perturb it using separately derived frame, history, and B_perp bounds.

### unit_004: Exchange curvature and certificate dichotomy

- Statement fidelity: PASS conditional on a valid unit_003. It targets the observable Hessian contradiction and unresolved singleton output fixed by the sketch.
- Proof validity: REVISE_STEP. The exchange margin is stronger than either preceding bound, the wrong tangent is invoked for one branch, and the singleton score inequality drops uncontrolled labels.
- Cited-result and assumption audit: PASS for the identities \(\operatorname{Hess}f=-g^3\operatorname{Hess}s\) and the normalized certificate lower bound. The failure is the missing local antecedent, not a dependency flaw.
- Rigor checklist: REVISE_STEP. Assemble tangent-specific bounds at one consistent scale and obtain the positive singleton score from stationarity rather than term deletion.
- Local adversarial test: REVISE_STEP. A genuinely positive score-Hessian direction would contradict Cert, but the artifact has not produced one for every non-singleton state.
- Contribution to target step: Missing until unit_003 and the singleton assembly are valid.
- Verdict: REVISE_STEP
- Repair direction: Reassemble only from a proved trichotomy and display the exact singleton score bridge.

## Hidden Subclaim Scan

REVISE_STEP. Hidden independent claims include the injective, gradient, and Hessian bounds for the orthonormal-frame remainder; the derivative bounds for the full accepted-history tensor; the coordinate equations and source-perpendicular relation; the low-score flat-or-positive-curvature alternative; the exhaustive support/sign split; product-one sign feasibility for the common-support tangent; normalized other-label control; and the singleton lower-score bridge. The proof's final note also calls this a unit-attempt-2 artifact despite the identity recording unit attempt 3, and the scalar score symbol \(S\) reuses the setting's array symbol \(S\). These identity/notation defects do not create the main mathematical failure, but they must be corrected in any current artifact.

## Target Claim Audit

REVISE_STEP. Unit_001 proves the exact current-residual calculus and unit_002 has a locally repairable ordering issue. Units 003--004 do not prove the singleton/mixed-support dichotomy, isolation margin, or exchange curvature. The accepted source-normal bridge is present and correctly consumed, so this is not a recurrence, source-exclusion, or dependency failure. The target assumptions, one-prefix scope, metric, and probability branch have not drifted.

## Explicit Rate Audit

REVISE_STEP. The artifact declares the relevant structural, numerical, residual, radius, probability, horizon, and norm variables and correctly confines SE-lb to E_lb. It does not preserve a valid common \(r\)-scale through activation and exchange: (24) has a false uniform comparison, unit_003 exports order \(1/r\) while unit_004 consumes order \(1/\sqrt r\), and the frame/history/tangent defects are not displayed against either margin. No probability conversion or baseline weakening is attempted.

## Notation Surface Audit

REVISE_STEP. The proof-local orthonormal frame is plausible, but \(M_M\) and the source-perpendicular components in (19) are not defined; \(x_{j,M}\) changes meaning relative to unit_001; scalar \(S\) collides with the setting-defined lifted source array; equation labels (21a)--(21b) are reused; and \(C_{\rm fr},C_{\rm hist}\) hide unproved bounds. The step should export only the isolation interface and keep the frame dictionary proof-local with complete provenance.

## Target-Step Assembly Audit

REVISE_STEP. The accepted dependencies jointly supply the exact realized frame, conditional envelope, prior records, residual reserve, source-normal exclusion, and raw/branch-qualified differential transfer before this step. Unit_001 consumes them legally. The chain stops at the unproved within-span strict-saddle lemma, so unit_004 cannot export an unresolved singleton and step_005 or the prefix induction may not consume this artifact.

## Review Rationale

The controlled status is REVISE_STEP because every identified defect lies inside the direct product-sphere activation/exchange derivation assigned to the unchanged step_004 row; no accepted dependency is false and this attempt does not demonstrate that the sketch needs a new interface. The smallest artifact-level producer target is therefore /proof-step step_004, followed by a fresh review before downstream use.

This is nevertheless the same within-span root-activation/exchange blocker recorded for the preceding local attempt: the new prose and formulas do not supply a valid exhaustive strict-saddle calculation, and they introduce explicit false or inconsistent scale comparisons. That repeated-failure fact should be consumed by the controller's user-directed routing decision rather than treated as evidence that the source-normal blocker has returned or automatically spending another local retry.
