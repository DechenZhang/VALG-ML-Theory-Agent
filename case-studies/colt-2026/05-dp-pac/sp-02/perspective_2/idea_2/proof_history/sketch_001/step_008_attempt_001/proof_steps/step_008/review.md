# Proof Step Review

## Step Review Identity

- Sketch attempt: `1`
- Step ID: `step_008`
- Unit attempt: `1`
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_008/proof.md`, SHA-256 `87c8fb562a23fa72e30d836a6d949df52c03d0fa642ed5d49a1bf1efd072e739`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_008

## Blocking Issues

1. Location: `proof.md`, line 64, in the exact target display `(EX-c)`. Defect: the opening conditional-expectation delimiter is written `\mathbb E\!left[` rather than `\mathbb E\!\left[`. The missing backslash makes the displayed target malformed LaTeX and renders `left` as mathematical letters rather than a delimiter command, even though the same identity is derived correctly later in equation (7). Downstream effect: the frozen step artifact is not a paper-ready statement of its exact exported target and can propagate an invalid formula into assembly. Smallest repair direction: change only `\!left[` to `\!\left[` in the target display, preserving the claim, proof, dependencies, and all six local units.

## Per-Lemma Audit

### unit_001: The ideal run is ancillary to the hidden designation

- Statement fidelity: The lemma proves the exact ancillarity interface required by the accepted sketch row: conditional on each latent vector, the ideal input/output law does not depend on the hidden designation, so `J` remains uniform after observing the latent vector and ideal output. It does not replace the iid common-experiment source by permutation symmetry.
- Proof validity: Accepted Lemma~\ref{lem:step-006-iid-latents} gives the product latent law and conditional uniformity of `J`; accepted Lemma~\ref{lem:step-007-pool-iid} gives the same product-mixture input law for every designation. Composing that law with the same learner kernel `A(dh|s)` yields the displayed factorization (3). The factorization proves the conditional-expectation identity (1), conditional independence of `J` and `bar H` given `E`, and preservation after conditioning on a positive-probability event measurable in `(E,bar H)`.
- Cited-result and assumption audit: The current `step_006` proof/review hashes are `f4d72880911b9379963068d28103e397067061f6dbdc53ad2448db8f76f99f6b` and `872560c50b01fbab254e716a30ec61a31391ae78634979a2af2712dcca9bb2ee`; the current `step_007` hashes are `2acaf6fc9f7237c8f965c90b929b390dce607df84c86e775af02bca41bf7390b` and `d0df17ccf82f5dc1275dc24cd0bcfc2774383728a87e14eb59cab822e53798b9`. Both reviews are `ACCEPTED` for sketch attempt 1 and unit attempt 1. Their exact exported conditional laws support this unit; no hard-prior value, utility conclusion, or generated event is assumed.
- Rigor checklist: The experiment universe and arm set are finite, and coordinate evaluations are measurable, so the input/output kernel integral and the sigma-fields used in (1) are legitimate. Canonical fibers cover zero-prior-mass latent vectors when a fiberwise statement is desired; all almost-sure conditional-expectation claims are stated with their proper scope. The later event `G` is measurable in `(E,bar H)` and has strictly positive conditional probability on every canonical fiber by unit 003.
- Local adversarial test: If the latent vector were only permuted around a distinguished coordinate rather than completed iid, conditioning on the ordered vector could reveal `J` and invalidate (1). The accepted product completion makes the joint mass factor exactly, so this failure mode is excluded. Deterministic and randomized learners are both covered by the same kernel composition.
- Contribution to target step: This unit legally supplies the conditional uniformity of the hidden designation used by `(EX-c)` and `(AUX)`.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact hidden-arm and mixture-risk identity

- Statement fidelity: The proposition proves the exact pointwise arm-average identity and then the conditional and unconditional exchangeability identities `(EX-c)` and `(EX)`, with no factor of `k`, distribution-shift term, or uniform-per-arm performance assumption.
- Proof validity: For each arm, pushforward by `T_j` converts zero-one risk exactly to `L_{Q_{e_j}}(h circ phi_j)`. Affinity of risk in the data law then gives equation (4) pointwise for every latent vector and hypothesis. Unit 001 makes the conditional mass of each designation exactly `1/k`; summing the measurable arm risks yields equation (7), and total expectation yields `(EX)`.
- Cited-result and assumption audit: The only nonlocal mathematical input is the accepted ancillarity and mixture definition. Each arm risk is a finite average of measurable coordinate evaluations, hence is measurable with respect to `sigma(E,bar H)`. No external exchangeability theorem, properness restriction, PAC conclusion, or independence beyond unit 001 is used.
- Rigor checklist: The proof distinguishes the deterministic pointwise mixture identity from the stochastic conditional-expectation step. It permits arbitrarily nonuniform arm risks, all finite `k >= 1`, arbitrary-output hypotheses, and latent experiments with repeated empirical coordinates. Conditional expectation is bounded and therefore integrable.
- Local adversarial test: Concentrating all error on one arm leaves equation (4) exact and is handled by uniform conditional averaging; correlating `J` with the ideal output would break equation (7), but unit 001 rules out precisely that correlation. The displayed derivation in equation (7) has correct delimiter syntax; the sole malformed duplicate target display is separately identified in Blocking Issue 1.
- Contribution to target step: This unit supplies the zero-residual bridge from ideal mixture risk to ideal hidden-arm risk.
- Verdict: PASS
- Repair direction: None.

### unit_003: PAC conversion on every ideal-mixture fiber

- Statement fidelity: The proposition applies the primitive distribution-free realizable PAC guarantee on every latent fiber and converts its high-probability conclusion to expected mixture risk at most `alpha_0 + beta_0`, exactly as required by the sketch.
- Proof validity: Accepted Proposition~\ref{prop:step-007-realizable} supplies a concept in `C` realizing each `bar Q_e`, and accepted Lemma~\ref{lem:step-007-pool-iid} supplies the exact iid `m`-sample law. Thus the PAC antecedent gives equation (8). For `Z in [0,1]`, inequality (11) is pointwise valid; conditional expectation charges at most `alpha_0` on the good event and one unit on failure, giving equations (9)-(10).
- Cited-result and assumption audit: Assumptions~\ref{assump:unrestricted-private-pac} and \ref{assump:minor-table} are used through their exact primitive and accepted-derived interfaces. The PAC constants are supplied by Assumption~\ref{assump:fixed-parameter-scale}. The event `G` is a derived event whose conditional probability is proved here rather than assumed.
- Rigor checklist: The conversion is fiberwise, fixed-sample, and in zero-one population risk. It takes no union bound over arms and performs no conditional-to-unconditional upgrade beyond averaging the valid fiberwise inequality. Since `beta_0=1/32`, every canonical fiber satisfies `Pr(G|E=e) >= 31/32 > 0`, which justifies the later auxiliary conditioning.
- Local adversarial test: A learner may incur risk one on every PAC-failure outcome; equation (11) charges exactly that worst case. Prior-zero latent vectors remain covered by the canonical experiment law and the distribution-free PAC quantifier.
- Contribution to target step: This unit supplies the `alpha_0 + beta_0` ideal expected-risk term and the positive-probability conditioning event for `(AUX)`.
- Verdict: PASS
- Repair direction: None.

### unit_004: Prior-average risk representation and sole-overflow transfer

- Statement fidelity: The proposition identifies the finite-game prior-average risk with the constructed hidden-arm risk under the accepted outer completion and transfers it to the ideal hidden-arm risk with exactly one `p_ov` residual.
- Proof validity: Expanding the definition of `R_n` gives equation (14). Accepted Lemma~\ref{lem:step-006-iid-latents} places the outer experiment at coordinate `J` while retaining `E ~ Pi^k` independent of `J`; accepted Proposition~\ref{prop:step-006-kernel} identifies the resulting output with `G^con`. Accepted Proposition~\ref{prop:step-007-output-transfer} applies to the same measurable zero-one risk `L_{Q_{E_J}}` and gives the one-sided inequality (15). The restriction identity `bar G = bar H circ phi_J` then gives (13).
- Cited-result and assumption audit: The accepted dependencies supply exactly the outer-completion, kernel, and bounded-loss coupling interfaces used. Their current hashes and accepted statuses match the proof's declarations. No privacy composition, PAC guarantee, exchangeability conclusion, or `(HP)` lower value is used in the transfer itself.
- Rigor checklist: The same random experiment `E_J` indexes the finite-game target, constructed loss, and ideal loss. The loss is measurable and bounded by one, so the pathwise overflow comparison may be averaged without independence between overflow and loss. The residual is the single event probability, not a per-record or per-arm accumulation.
- Local adversarial test: On overflow the constructed output can be unrelated to the ideal output, but bounded loss caps the discrepancy by one; off overflow the accepted diagonal coupling gives equality. Hence adversarial overflow outputs cannot create more than `p_ov` expected loss.
- Contribution to target step: This unit supplies the exact finite-game-to-ideal interface consumed by `(UT)`.
- Verdict: PASS
- Repair direction: None.

### unit_005: Strict prior-average utility below the hard value

- Statement fidelity: The proposition composes the accepted and locally proved interfaces into the exact `(UT)` bound and proves the strict gap below `1/20` required by the accepted sketch.
- Proof validity: Unit 004 gives constructed risk at most ideal hidden-arm risk plus `p_ov`; unit 002 replaces the ideal hidden-arm expectation exactly by mixture risk; unit 003 bounds that risk by `alpha_0 + beta_0`. The arithmetic is exact: `1/128 + 1/32 = 5/128`, `p_ov < 1/1024`, and `5/128 + 1/1024 = 41/1024 < 1/20` because `820 < 1024`.
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-007-overflow} supplies the full uniform overflow bound, and Assumption~\ref{assump:fixed-parameter-scale} supplies the fixed PAC constants. No hidden asymptotic term, threshold theorem, or later contradiction is invoked.
- Rigor checklist: The PAC failure and overflow defect are each charged exactly once. Every expectation uses the same probability space furnished by the dependencies, and no term is multiplied by `m`, `k`, or occupancy. Both strict inequalities are supported by displayed numerical comparisons.
- Local adversarial test: Highly nonuniform arms do not alter the exact average identity; maximal failure-event loss is already covered by `beta_0`; and maximal overflow-event loss is already covered by `p_ov`. Even their worst dependence cannot exceed the additive bound used.
- Contribution to target step: This unit proves the upper side of the later hard-prior contradiction with the exact R2 constants.
- Verdict: PASS
- Repair direction: None.

### unit_006: Conditional hidden-arm certificate and one-arm specialization

- Statement fidelity: The proposition proves `(AUX)` in its exact conditional probability mode and additionally preserves the theorem-facing `k=1` baseline with success probability one, zero overflow, and exact ideal/constructed equality.
- Proof validity: On `G`, unit 002 gives the pointwise average of the nonnegative arm risks at most `alpha_0`. Unit 001 gives conditional uniformity of `J` after `(E,bar H)` is observed. The finite-arm Markov calculation (21) therefore bounds the conditional probability of risk exceeding `8 alpha_0` by `1/8`. Unit 003 makes conditioning on `(E=e,G)` legitimate, and the tower property yields (22), whose complement is `(AUX)`. For `k=1`, the sole risk equals the mixture risk and is at most `alpha_0 < 8 alpha_0`; the accepted boundary proposition gives zero overflow and pathwise equality.
- Cited-result and assumption audit: Markov's inequality is restated in current notation with nonnegativity and positive threshold discharged. The conditional-independence input, exact average identity, good-event probability, fixed positive `alpha_0`, and one-arm boundary all come from named accepted or earlier local results. No generated event is promoted to a primitive assumption.
- Rigor checklist: Each `Y_j` is measurable in `sigma(E,bar H)`. Conditioning on `G`, which is measurable in that sigma-field, cannot bias `J`; remaining learner randomness is correctly averaged after the pointwise conditional bound. The strict exceedance event in (21) complements the desired non-strict success event. The assertion is valid on every canonical latent fiber and hence also `Pi^k`-almost surely.
- Local adversarial test: If all risk were concentrated on one arm, the bad-arm fraction is still at most `1/8` whenever the average is at most `alpha_0`; if `k < 8`, integrality only improves the bound. At `k=1` the bad set is empty. PAC-failure outcomes are excluded only inside this explicitly conditional auxiliary statement and remain fully charged in unconditional `(UT)`.
- Contribution to target step: This unit proves R3 and the exact one-chain baseline without weakening the main utility statement.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No mathematical subclaim is missing from the six-unit map. Ancillarity, kernel composition, and preservation under good-event conditioning are in unit 001. Measurability and the exact arm-mixture equality are in unit 002. Fiberwise realizability, iid sampling, PAC failure, bounded-loss conversion, and positivity of the conditioning event are in unit 003. Outer-risk identification and the single-overflow transfer are in unit 004. Strict utility arithmetic is in unit 005. Conditional Markov, tower-property conversion, and the `k=1` certificate are in unit 006. The malformed opening delimiter in the target display is a notation defect, not a hidden mathematical bridge, and is recorded separately as Blocking Issue 1.

## Target Claim Audit

Mathematically, the proof establishes the exact accepted `step_008` row under only the three named setting assumptions and the current accepted `step_006`/`step_007` outputs. It proves conditional ancillarity, `(EX-c)`, `(EX)`, expected PAC conversion, the exact prior-average representation, the one-residual overflow transfer, strict `(UT)`, and conditional `(AUX)` for all `m,k >= 1`, with arbitrary randomized improper outputs. It does not consume `(HP)` or any conclusion of `step_009`. The target display at line 64 is nevertheless malformed LaTeX, so the frozen artifact cannot be certified until that local syntax defect is repaired.

## Explicit Rate Audit

The step preserves all R2/R3 dependence and mode declarations. Exposed quantities are `m,k,N,epsilon_0,delta_m,n`, the iid latent vector, uniform designation, fixed `alpha_0=1/128`, fixed `beta_0=1/32`, and `p_ov`; no hidden constant or auxiliary tolerance is introduced. `(EX-c)` is conditional on `(E,bar H)`, `(EX)` and `(UT)` are unconditional expectations over all outer, sample, simulation, and learner randomness, and `(AUX)` is conditional on `(E,G)`. The horizon is fixed-sample and the metric is zero-one population risk on the exact empirical experiment laws and their realizable mixture. Every absorption is displayed, including `5/128 + 1/1024 = 41/1024 < 1/20`, and no dependence on `m`, `k`, privacy, confidence, or approximation error is silently dropped. At `k=1`, the exact arm-mixture identity, zero overflow, pathwise coupling, ordinary PAC conversion, and auxiliary success probability one recover the inherited one-chain baseline rather than a weaker residual or stopped statement.

## Notation Surface Audit

The public, appendix-local, and proof-local classifications are complete and consistent with the accepted dependencies. New generated objects `bar H`, `bar G`, and `G` have explicit provenance, while the proof-local arm risks are finite measurable averages. All six non-atomic units have paper-ready theorem-style titles and unique stable labels, and every theorem-style `\ref` used by the proof resolves either to one of those units, a named accepted dependency result, or a stable setting assumption. The target-step assembly uses theorem-style references rather than bare unit IDs. The only failed notation/reference-syntax check is the missing backslash in `\!left[` at line 64; no malformed bare `ref`, duplicate local label, undefined helper, or notation drift was found.

## Target-Step Assembly Audit

The named results jointly imply the exact target. Lemma~\ref{lem:step-008-ancillary} supplies conditional uniformity; Proposition~\ref{prop:step-008-exchangeability} supplies `(EX-c)` and `(EX)`; Proposition~\ref{prop:step-008-pac-expectation} supplies the fiberwise PAC and expectation bounds; Proposition~\ref{prop:step-008-transfer} supplies the finite-game identification and sole overflow residual; Proposition~\ref{prop:step-008-utility} proves strict `(UT)`; and Proposition~\ref{prop:step-008-auxiliary} proves `(AUX)` and the baseline. The assembly neither assumes a later result nor omits a dependency bridge. Its mathematical logic passes, but acceptance remains blocked by the malformed exact target display identified above.

## Review Rationale

`REVISE_STEP` is the smallest valid status. The accepted sketch digest matches the current sketch, both dependency proof/review pairs match their frozen hashes and accepted identities, and an independent line-by-line audit found no dependency, sketch-interface, or mathematical defect in any of the six local units. However, the submitted proof's exact target formula `(EX-c)` contains a malformed LaTeX delimiter at line 64. The proof-step contract does not permit a reviewer to silently repair notation, and an exact exported target must be paper-ready. A one-token producer repair in `step_008`, followed by a fresh independent step review, is sufficient; no dependency or sketch rerun is warranted.
