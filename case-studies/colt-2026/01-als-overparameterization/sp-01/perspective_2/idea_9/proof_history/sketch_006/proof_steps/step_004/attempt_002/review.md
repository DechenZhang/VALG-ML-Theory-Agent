# Proof Step Review

## Step Review Identity

- Sketch attempt: 6
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_2/idea_9/proof_steps/step_004/proof.md` (controller-supplied SHA-256 `f589d52cc6d857d577c4e79876882a7cb217d5ba7377cd58d26653b0fa5b3457`; filesystem recomputation at review time `9896d30220f933dcf6b5af235298d3e10c546b4170f1e1bea13da02bf33b2f35`)
- Binding setting: `perspective_2/idea_9/setting.md`, target-spec `material_partial`
- Accepted sketch review: `perspective_2/idea_9/proof_sketch_review.md`, sketch attempt 6, SHA-256 `0333e1da5da4014de163f34435be48d00e539de71efc317ffd5bc63aaa88af0f`
- Accepted dependencies: `step_001` (proof SHA-256 `a9a87b0f289746498c40b438117c47dc6b1307679defdbc29852d97a66241cfc`, review SHA-256 `1cd56c69834fcba45d787657c9fae1009cb82f70c6c535fd12b3d132eb8b7907`), `step_002` (proof SHA-256 `7c3b7ea474bab76e407f4c616317f1b6662f23ea9c7cf90532eff6a84e55442a`, review SHA-256 `c9bd95cd8d9c431a191fc926b11bccb2c34b108dbdbf29f27c37034bccc1244a`), `step_003` (proof SHA-256 `a5134704a33ba09b398d5eb946d7cc352a0110283c33f7ebdba73f75e3295902`, review SHA-256 `ca56a019738cdb860b815dadf913f2022d2e56dbb8fd8a357c88b262cd5971ac`), and `step_003b` (proof SHA-256 `148e25ae2da025d8d8b3373382caff6738bdd4d03f55b69df1320652935fc1a7`, review SHA-256 `8b9b81fbc502158e197edece0db919b760d17de19656ecd6ffac8c8173426e2b`), all reviewed as `ACCEPTED`.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004

## Blocking Issues

1. **Root activation and support coverage are missing (lines 280--319, unit_004).** The target row requires every certified full-space scratch state to yield either an isolated unresolved label or a mixed-support state to which the exchange lemma applies. The artifact only states this as Claim~\ref{claim:p2-i9-s6-step004-activation}; it does not choose a root, prove a lower bound on its target-frame mass, or handle the low-score, one-mode-straddling, and sign-straddling alternatives. The capture inequality alone gives only (7), and no displayed argument converts it into the common-support threshold (10) or the singleton isolation margin. A fresh proof-step attempt must supply a self-contained mass/support lemma, select the root before consuming its root-indexed `Theta_I` entries, and then close both branches. This is a local omission under the unchanged step-row interface, so the retry target is this step.
2. **The conditional exchange lemma is not quantitatively discharged (lines 218--278, unit_003).** Its hypotheses (10)--(11) and the transferred-gradient bound are never derived for a certificate. The proof introduces `x_{j,M}` although the coordinates were named `a_j,b_j,c_j`, and the residual vectors `r_{j,M}` and the frame remainder bound are asserted rather than obtained from the accepted `Theta_I`, `B_hist,F`, `B_perp`, and `(SE-raw)` interfaces. The rerun must define the chart coordinates and constants, derive the coordinate stationarity equations with all static/history/normal terms, and verify the numerical margin uniformly before invoking the tangent direction.
3. **The rate comparison in unit_002 is only asserted.** The sentence at lines 204--208 hides the exponent inequality needed for `R_0 e_num <= s_I/4` and hence for (7). The rerun must display the dependence on `D_stat` and `D_cap` (and the radius/polynomial bounds), while retaining `(SE-raw)` off `E_lb`; no threshold enlargement may substitute for the displayed admissibility check.
4. **Local provenance/notation must be made theorem-ready.** Unit_001 uses the decomposition through `E_i`, `U_I`, and the matching injection, while the local hypothesis at lines 73--76 says that no matching output is assumed. The accepted `step_003b` historical-record interface can discharge this, but it must be cited explicitly in the unit statement. Likewise, the column notation `\widehat m_{p,M}`, the source-frame coordinates, and `C_{\rm fr}` need definitions and fixed-constant provenance. These are repair obligations within the same step, not new assumptions.

## Per-Lemma Audit

### unit_001: Exact score and differential transfer

- Statement fidelity: PASS for the score, radial identity, capture identity, and projection transfer claimed by the row. The residual decomposition is valid only with the historical matching-record package supplied by `step_003b`; that basis must be stated in the theorem-style statement.
- Proof validity: PASS. Expanding the exact Frobenius square gives (3), and fixed-radius product-sphere differentiation gives (4). The accepted `step_003b` compatibility supplies (5)--(6).
- Cited-result and assumption audit: PASS conditional on explicitly importing the accepted historical-record hypothesis; no external theorem is used.
- Rigor checklist: PASS for the displayed identities and signs. The current statement should resolve the apparent conflict between “no matching output is assumed” and the use of `E_i`/`U_I`.
- Local adversarial test: PASS. The identities hold at the empty prefix, at zero history, and for arbitrary full-space directions; the projection is analysis-only.
- Contribution to target step: PASS. This unit supplies a sound scalar/differential interface but does not imply label activation.
- Verdict: PASS
- Repair direction: State the accepted historical-record dependency explicitly.

### unit_002: Certificate scale and branch audit

- Statement fidelity: PASS. It targets the exact certificate-to-score/radial scale and preserves the unconditional versus `E_lb`-qualified split.
- Proof validity: REVISE_STEP. The contradiction argument for `g^3` and the final radial bound are plausible, but the required `D_stat` versus `D_cap` inequality is hidden in “fixed enlargement.”
- Cited-result and assumption audit: PASS for the use of `Cert` and accepted `(SE-raw)/(SE-lb)`; no lower bound on `nu_real` is used outside `E_lb`.
- Rigor checklist: REVISE_STEP. Display the polynomial bounds and quantifiers that make `R_0 e_num <= s_I/4` uniform, including the radius guard and boundary `s_I>0`.
- Local adversarial test: PASS after that display: the exact-root and `E_lb^c` branches retain all raw terms, while `E_lb` is used only for (9).
- Contribution to target step: PASS as a partial scale interface; it cannot repair the missing support argument.
- Verdict: REVISE_STEP
- Repair direction: Add the explicit exponent/threshold calculation.

### unit_003: Two-label exchange curvature

- Statement fidelity: PASS only conditionally on the common-support hypothesis (10) and the stated error margins. This is the intended mixed-support sublemma, not the missing coverage result.
- Proof validity: REVISE_STEP. The diagonal-frame Hessian calculation is sketched, but coordinate names are inconsistent (`x` versus `a,b,c`), the sign choice and formula (14) are not fully derived, and the residual equations/bounds are asserted without a current-notation calculation.
- Cited-result and assumption audit: REVISE_STEP. The orthonormalized columns, frame-remainder norm, and transferred-gradient error need explicit definitions and discharge from `step_001`, `step_003`, and `step_003b`; no theorem may be imported through the phrase “small angular-gradient assumption.”
- Rigor checklist: REVISE_STEP. Verify normalization of the concatenated tangent, all `sqrt(r)` factors, weight dependence, and the strict negative-loss-curvature comparison against `P^{-D_gap}`.
- Local adversarial test: PASS as far as the stated hypothesis goes: same-sign two-label support gives a candidate exchange direction. The unhandled opposite-sign/straddling cases belong to unit_004.
- Contribution to target step: Partial. It would rule out the mixed branch once its hypotheses are proved.
- Verdict: REVISE_STEP
- Repair direction: Complete the current-notation exchange calculation and derive its margins from accepted interfaces.

### unit_004: Root-activation coverage

- Statement fidelity: FAIL. This is a restatement of the missing theorem-critical implication, not a proved local claim.
- Proof validity: REVISE_STEP. Equations (16) identify the right stationarity shape, but no root-selection rule, mass lower bound, sign-consistent support argument, or low-score/straddling case analysis is provided.
- Cited-result and assumption audit: REVISE_STEP. `Theta_{I;p,.,.}` is available for every unresolved `p` from `step_003`; selecting `p` must be proved before using its entries, rather than treated as a generated assumption. The accepted `step_003b` source-normal bridge controls the outside-span part but does not by itself prove target-frame support.
- Rigor checklist: REVISE_STEP. The rerun must keep all quantifiers over unresolved labels and all branches of `Cert`, and must show the isolation margin needed by the exact target row.
- Local adversarial test: FAIL for coverage. A low-score or straddling-support state is not excluded by the present text; no counterexample to the repaired full interface is established, but the proof has not ruled one out.
- Contribution to target step: Missing. Without this unit, the target dichotomy and downstream matching producer do not follow.
- Verdict: REVISE_STEP
- Repair direction: Prove the activation/mass lemma inside `step_004`; escalate to `/proof-sketch` only if the direct lemma cannot be established under the accepted interfaces.

## Hidden Subclaim Scan

The score/radial identities and projection transfer are explicit. The proof
silently relies on several independent claims not present as local units:
selection of an unresolved root from the target-frame coordinates, a lower
support/mass estimate from capture and stationarity, conversion of small
angular gradient to the coordinate equations used in (14), and the uniform
static/history/normal margin in (11). These are exactly the obligations that
must be added to the fresh step proof. The current text does not smuggle in a
source-normal assumption; it openly leaves unit_004 unresolved.

## Target Claim Audit

REVISE_STEP. Unit_001 establishes the exact score, radial, capture, gradient,
and Hessian transfer. Unit_002 preserves the raw and `E_lb`-qualified source-
normal comparisons. Unit_003 is a conditional exchange calculation. However,
unit_004 is unproved, so the exact singleton/mixed-support dichotomy,
isolation margin, and downstream label-facing output are absent. The claim,
assumptions, metric, and probability mode otherwise match sketch attempt 6;
no target weakening or primitive-assumption change is requested.

## Explicit Rate Audit

The proof exposes `n,r,k,kappa,rho,Gamma_star,P,nu_real,eta_0,e_num,
D_stat,D_cap,D_gap,tau_min,tau_max,R_0,g,B_hist,F,B_perp,N_I(g)` and uses a
deterministic one-prefix conditional statement on `E_inst`, with `(SE-lb)`
additionally conditioned on `E_lb`. Norms are product-sphere Hessian
quadratic forms, tensor Frobenius norms, and factor Euclidean norms. The raw
terms are not silently absorbed, which is correct. The missing rate work is
the explicit exponent check behind (7), the uniform comparison of the
exchange error in (11) with the Hessian gap, and the support threshold in
(10). No probability or horizon upgrade is attempted, and the exact
`H=e_num=0` baseline reduces correctly but does not prove the finite branch.

## Notation Surface Audit

`t`, `s_I`, `R_I^parallel`, and the exchange tangent are appropriately
proof-local; `B_perp`, `Theta_I`, and the residual interfaces are inherited
public objects. The rerun must define `widehat m`, `x_{j,M}`, `r_{j,M}`,
`C_fr`, and every chart change, and must avoid relying on unit IDs or prose
such as “the small angular-gradient assumption” as mathematical authority.
The accepted historical-record package should be cited with a theorem-style
label in unit_001.

## Target-Step Assembly Audit

Accepted `step_001`--`step_003b` jointly provide the realized frame, the
statewise `Theta_I`, the full-history source-normal bound, the residual
reserve, and the raw/branch-qualified differential transfer. These inputs
are sufficient for a local activation/support derivation under the accepted
sketch row. The current assembly stops before that derivation, so it cannot
export isolation or feed `step_005`, `step_009`, or later consumers. A fresh
accepted review of the repaired `step_004` is required before downstream use.

## Review Rationale

The smallest controlled status is `REVISE_STEP`, with retry target
`/proof-step step_004`. The current artifact is honest about being partial,
but it leaves its central unit as a claim and does not prove the hypotheses
of its exchange lemma. Sketch attempt 6 explicitly assigns certificate
matching and the singleton/mixed-support dichotomy to this step and already
provides the new `step_003b` source-normal/capture bridge; adding a new
producer or changing the theorem contract is not yet necessary. The fresh
attempt should select the root before using root-indexed `Theta`, handle
low-score and straddling support, and discharge every quantitative margin.

This is **not the same repeated blocker as sketch attempt 4**. The earlier
failure was an absent outside-span history/source-exclusion interface and an
uncontrolled invisible rank-one residual. Accepted `step_003b` now derives
the triangular normal recurrence, `B_perp`, `(Res)`, `(SE-raw)`, and
`(SE-lb)`, so that source-flow obstruction is closed. The present failure is
a new within-span target-frame support/root-activation proof gap. Therefore
the controller should not route `IDEA_FAIL` on this review; it should retry
step 004 and only reconsider sketch/idea routing if a repaired local proof
demonstrates that the target-frame activation claim is false under the fixed
setting.
