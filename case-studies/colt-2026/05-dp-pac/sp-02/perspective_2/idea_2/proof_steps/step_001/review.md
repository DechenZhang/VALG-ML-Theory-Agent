# Proof Step Review

## Step Review Identity

- Sketch attempt: `1`
- Step ID: `step_001`
- Unit attempt: `1`
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_001/proof.md`, SHA-256 `047122f7212dc9ba45455487658b03015d6b9d67c8d9789120fe8c734fbb6e2e`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Finite coordinate restriction

- Statement fidelity: The lemma states exactly the arbitrary-output restriction needed by the sketch row: measurable restriction to the full cube `\{0,1\}^N`, preservation of `(epsilon,delta)` privacy, and pointwise preservation of zero-one risk on distributions supported on the threshold domain. It does not impose properness or threshold shape.
- Proof validity: Coordinate measurability makes every singleton fiber of the finite restriction map measurable, hence the map to the finite discrete cube is measurable. Applying both DP inequalities to inverse images proves postprocessing privacy, and equality of coordinate predictions proves the risk identity pointwise.
- Cited-result and assumption audit: No external result is used. Coordinate measurability and the finite-experiment definitions come from `setting.md`; candidate-kernel privacy is correctly classified as a local conditional hypothesis. No stable `assump:*` condition or generated invariant is imported.
- Rigor checklist: Quantifiers cover every adjacent ordered sample, every output event, and every supported labeled distribution. The full-cube codomain handles arbitrary randomized improper outputs. There is no unstated finiteness, representation, or properness assumption.
- Local adversarial test: A hypothesis may behave arbitrarily away from the `N` queried coordinates, but this cannot affect either the pushforward law or any `Q_e` risk. The argument still works for deterministic or randomized kernels and for every replacement-adjacent pair.
- Contribution to target step: It produces the finite kernel to which the secrecy theorem and exact empirical-risk calculation can be applied without changing the candidate's relevant privacy or risk.
- Verdict: PASS
- Repair direction: None.

### unit_002: Private with-replacement empirical wrapper

- Statement fidelity: The proposition proves the exact sketch interface for `M=9n`: iid with-replacement sampling followed by the restricted kernel is `(epsilon,delta)`-DP for every `0<epsilon<=1` and `delta>=0`, including repeated selection of the changed row.
- Proof validity: The corrected Bun et al. theorem was independently checked in the cited source with SHA-256 `ae85c2352f6373357d60166aa88626edcb11337d2a5f4efe5d1c83edf355649e`. Its statement gives `(6 epsilon r/s, exp(6 epsilon r/s)(4r/s)delta)` privacy for an `r`-row mechanism subsampled with replacement from an `s`-row database when `s>=2r` and `epsilon<=1`. Substituting `r=n` and `s=M=9n` gives exactly `(2epsilon/3, (4/9)e^(2epsilon/3)delta)`. The displayed inequalities correctly show both coordinates are dominated by `(epsilon,delta)`.
- Cited-result and assumption audit: Every source hypothesis is restated and discharged in current notation. The source proof explicitly conditions on the changed-row multiplicity `k=0,...,r` and sums its binomial weights, so repeated indices are already covered and no extra group-privacy or composition step is needed. Active Alon `lem:bun` is used only to identify the source proof interface; its strict `epsilon<1` statement is not used for the endpoint `epsilon=1`.
- Rigor checklist: The parameter map is exact, `M=9n>=2n` is verified, DP monotonicity is used in the valid direction, and both boundaries are handled: at `epsilon=1` the factor `(4/9)e^(2/3)` is strictly below one, while at `delta=0` the output delta remains exactly zero.
- Local adversarial test: Outcomes that select the changed database row multiple times do not make the selected `n`-samples adjacent, but the cited secrecy proof is expressly designed for that case. The proposition does not incorrectly apply one-record privacy conditionally on such an outcome.
- Contribution to target step: It supplies the required eventwise privacy certificate for the `9n`-record empirical wrapper with no privacy loss relative to the target parameters.
- Verdict: PASS
- Repair direction: None.

### unit_003: Zero-residual empirical-risk identity

- Statement fidelity: The lemma establishes exactly the required equality between wrapper empirical loss and `R_n(B,(t,U))` for every `t` and every ordered `U in [N]^(9n)`, including repeated row values and repeated sampled indices.
- Proof validity: The empirical distribution `Q_(t,U)` assigns mass by row occurrence, so its zero-one risk is the displayed average over all `M` rows. Iid uniform indices have product law `Q_(t,U)^n`; conditioning on the sampled records and then averaging the kernel output yields `mathcal R_n(B,(t,U))` with equality and no residual.
- Cited-result and assumption audit: No cited theorem is needed. The proof uses only the definitions of `Q_e`, `R_n`, and `tau_t` from `setting.md`, plus the already-defined wrapper. Kernel notation is faithful: `B` is the finite restriction required by the definition of `R_n`.
- Rigor checklist: Multiplicities are counted on both sides, expectation order is finite and therefore legitimate, and the conclusion uses the same zero-one risk and expectation mode as the sketch objective. No concentration, generalization, or population-to-empirical approximation is inserted.
- Local adversarial test: Equal values at different tuple positions and repeated selection of a single position preserve the product law on row occurrences, so neither kind of repetition creates a discrepancy. The identity also holds for arbitrary non-threshold output bit vectors.
- Contribution to target step: It provides the target's exact expected-loss interface, with zero sampling or convention residual.
- Verdict: PASS
- Repair direction: None.

### unit_004: Threshold-convention equivalence

- Statement fidelity: The proposition addresses the accepted sketch's source/branch orientation obligation. It maps the branch lower-oriented `0/1` threshold to the active Alon upper-oriented `-1/+1` threshold while preserving the full arbitrary-output cube.
- Proof validity: With `psi(q)=N+1-q` and `theta=N+1-t`, the equivalence `q<=t` iff `psi(q)>=theta` is exact. The record map is bijective and position preserving, hence preserves replacement adjacency and uniform empirical row laws. The induced hypothesis-cube bijection preserves every zero-one error indicator.
- Cited-result and assumption audit: The active Alon source with SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f` states that increasing balanced threshold samples have negative labels first and positive labels second, matching the translated upper-oriented convention. The proposition does not rely on the ignored duplicate source branch.
- Rigor checklist: The cut index remains in `[N]`, tuple positions and multiplicities are unchanged, and the output translation applies to every bit vector rather than only threshold hypotheses. Thus loss, adjacency, sampling, and arbitrary-output scope all match simultaneously.
- Local adversarial test: Endpoint thresholds `t=1` and `t=N`, repeated domain points, and arbitrary oscillating output vectors remain valid under the bijections. No order reversal changes the empirical weights or the number of replaced records.
- Contribution to target step: It certifies that the constructed wrapper is the exact current-notation interface consumed by the active source proof, rather than a surrogate with reversed labels or restricted outputs.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. Measurable restriction, with-replacement privacy, exact empirical-risk equality, and source-convention compatibility are separated into the four named units. The remaining ingredients in the assembly are elementary consequences proved in place: monotonicity of DP parameters, the explicit numerical bound `(4/9)e^(2/3)<1`, and finite expectation expansion. No dependency artifact, hard prior, homogeneous-set claim, or diagnostic global-proof assertion is used as mathematical evidence.

## Target Claim Audit

The proof establishes the exact accepted sketch-row claim. Starting from any arbitrary-output `(epsilon,delta)`-DP `n`-sample threshold-domain kernel, it constructs a measurable full-cube restriction `B` and a wrapper `W_B` on ordered `M=9n` databases. The wrapper is `(epsilon,delta)`-DP for all `0<epsilon<=1`, including `epsilon=1` and `delta=0`, and for every `e=(t,U)` its expected empirical loss is exactly `R_n(B,e)`. The right-hand kernel in `R_n` is consistently the finite restriction, whose risk equals that of the original arbitrary output on `[N]`. The proof adds no properness, representation, hard-prior, or later-step assumption.

## Explicit Rate Audit

This is an R1 rate-bearing interface. The proof exposes `n`, `N`, `M=9n`, `epsilon`, `delta`, `t`, and `U`; it uses no hidden constants. Fixed quantities are zero-one loss, ordered replacement adjacency, fixed-sample iid with-replacement sampling, and the ratio `M/n=9`. Privacy is eventwise, the loss statement is an exact expectation, the horizon is fixed sample, and the norm/risk mode is `R_n`. The exact source substitution and domination inequalities are displayed, with no dropped term or prose-only absorption. The construction is independent of `k`, so at `k=1` it retains the same one-chain `n`-from-`9n` arbitrary-output empirical bridge rather than a weaker surrogate.

## Notation Surface Audit

The proof classifies all new objects as `public-facing` or `proof-local`. The exported interface is minimal: `M`, the finite kernel `B`, and its wrapper `W_B`. The original kernel `B^arb`, sampling indices, generic database, multiplicity, labeled tuple, and orientation maps remain proof-local. Symbols are defined from setting quantities or the checked source statement, and there is no helper-constant cascade. The shorthand for the empirical loss in the notation notes is unambiguously the already-defined `L_{D_{t,U}}` and causes no notation drift.

## Target-Step Assembly Audit

The assembly cites the four paper-ready named results rather than bare unit IDs. Lemma~\ref{lem:step-001-finite-restriction} supplies the finite arbitrary-output kernel, Proposition~\ref{prop:step-001-private-wrapper} supplies exact target privacy, Lemma~\ref{lem:step-001-risk-identity} supplies the exact loss equality, and Proposition~\ref{prop:step-001-orientation} supplies source-interface fidelity. Together they imply every quantifier and boundary in the target claim, with no missing bridge or dependency.

## Review Rationale

`ACCEPTED` is the smallest sound status because all four local units are self-contained, correctly sourced, and jointly prove the unchanged sketch-row claim. The highest-risk point, repeated-index privacy under with-replacement sampling, is discharged by the independently verified corrected secrecy theorem with the exact `n`-to-`9n` substitution. The arbitrary-output, measurability, orientation, `epsilon=1`, `delta=0`, exact-risk, notation, explicit-rate, and `k=1` baseline interfaces all pass. There is therefore no producer or sketch repair to request, and the smallest retry target is `None`.
