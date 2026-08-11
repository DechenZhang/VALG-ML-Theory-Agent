# Proof Step Review

## Step Review Identity

- Sketch attempt: `1`
- Step ID: `step_002`
- Unit attempt: `1`
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_002/proof.md`, SHA-256 `f5f4ea55e366c0ce315f9addaa72052f390f5b6d24481214d3f8538e5a8715e7`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Upper-oriented symmetric empirical wrapper

- Statement fidelity: The lemma exports exactly the accepted dependency interface needed by this step: upper-threshold orientation, unchanged full-cube arbitrary outputs, unchanged empirical loss, unchanged `(epsilon,delta)` privacy, and row-permutation invariance for the `M=9n` wrapper. It adds no properness or threshold-output assumption.
- Proof validity: The accepted order-reversal bijection preserves records, coordinate predictions, loss, and replacement adjacency. The wrapper is the uniform finite mixture over `[M]^n`; a row permutation induces a bijection of this index set, so reindexing proves equality of output laws even when the underlying `n`-sample kernel is order sensitive.
- Cited-result and assumption audit: The current accepted `step_001` proof and review hashes match the values recorded in the submission. Their exact available conclusions are finite full-cube restriction, wrapper privacy, zero-residual expected empirical loss, and source-orientation equivalence. Permutation invariance is correctly proved locally rather than attributed to the dependency.
- Rigor checklist: The argument covers arbitrary labeled tuples, repeated wrapper indices, both DP directions, and every row permutation. Sorting an unsorted one-record replacement changes only row order and therefore adds neither a second replacement nor a privacy-composition charge.
- Local adversarial test: For an order-sensitive candidate kernel and a replacement whose inserted point moves across many sorted positions, the selected-row tuple distribution remains unchanged after reindexing all sampled positions. Thus the later sorted samples are legitimate homogeneity inputs while the privacy comparison remains one replacement.
- Contribution to target step: It supplies the exact source-oriented, permutation-symmetric empirical mechanism used by all later units.
- Verdict: PASS
- Repair direction: None.

### unit_002: Universal numerical endpoint gap

- Statement fidelity: The lemma proves, rather than assumes, strict positivity of the even and odd endpoint constants required by the sketch and defines the universal parity-independent `g_gap` before it is used in the mesh or delta threshold.
- Proof validity: The factorial bound gives `e<11/4`. Hence `9-e^2>0` and `71-9e^2>0`, proving `g_*>0` and `g_odd>0`; the displayed upper bounds also give `g_gap<1`. Numerically, the constants are approximately `0.0592633` and `0.0206863`, consistent with the symbolic proof.
- Cited-result and assumption audit: No external theorem or unstated parameter assumption is used. The constants are pure numerical quantities.
- Rigor checklist: Both parity branches, strict inequalities, and the upper bound needed later for the delta check are explicit. No decimal approximation is used as proof evidence.
- Local adversarial test: The weaker odd constant is tested at the smallest admitted odd size through the later `9/80` side bound; it remains strictly positive at `epsilon=1`.
- Contribution to target step: It provides the positive universal source margin and makes the later choices of `gamma`, `a_(delta,end)`, and `C_R` nonvacuous.
- Verdict: PASS
- Repair direction: None.

### unit_003: Finite nearly balanced homogeneity coloring

- Statement fidelity: The proposition gives the exact fixed-template homogeneous-list interface for both parities of `M`, all ranks `0,...,M`, arbitrary output bit vectors, and mesh error at most `gamma`, with the stated finite color count.
- Proof validity: An `(M+1)`-set is colored by the `M+1` quantized deletion marginals. On a monochromatic set, adjoining any queried off-sample point places it in coordinate `r+1`; deleting it recovers exactly the increasing fixed-template sample, so `p_r=c_(r+1)` and the nearest-grid estimate prove the claim.
- Cited-result and assumption audit: Active Alon `def:homog` was independently checked in source SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`: it uses a probability list indexed by off-sample rank and tolerance `1/(100m)`. The proof does not import its even-template restriction; it rederives the odd-compatible coloring in current notation.
- Rigor checklist: The grid has exactly `L+1` values, nearest rounding costs at most `1/(2L)<=gamma`, every deletion sample is threshold realizable because its labels are zeros followed by ones, and the endpoint ranks are literal first and last color coordinates.
- Local adversarial test: The argument remains valid when `H` is sparse, when the queried point lies before every sample point or after every sample point, and when the algorithm outputs an arbitrary oscillating bit vector. It uses no arithmetic successor or monotonicity of predictions.
- Contribution to target step: It produces the finite coloring and the rank-indexed marginal list used by the Ramsey and endpoint units.
- Verdict: PASS
- Repair direction: None.

### unit_004: Finite Ramsey extraction with adjusted color constants

- Statement fidelity: The proposition retains the accepted active-scale lower bound `log_2^(M)(N)/exp(C_R M log(eM))`, states the exact finite denominator first, handles rounding, and separates the finite `N<=M` boundary.
- Proof validity: Active Alon `thm:ramsey` was independently checked at source lines 632--637: if `s>t>=2` and `N>=twr_t(3sq log q)`, every `q`-coloring of `t`-sets has a homogeneous `s`-set. With `t=M+1`, `s=floor(ell_M(N)/(3q_M log_2 q_M))`, and `twr_1(u)=u`, the identity `twr_(M+1)(log_2^(M)N)=N` verifies the size condition. If the floor is too small to invoke Ramsey, an arbitrary `(M+1)`-set gives the claimed conservative bound. The color-denominator estimates then yield the explicit universal `C_R`.
- Cited-result and assumption audit: Active Alon `lem:finiteramsey`/`lem:ramsey` and its coloring proof were checked at source lines 590--653. The active theorem's unqualified logarithm is safely dominated by `log_2 q` if interpreted naturally and agrees if interpreted base two. The duplicate source block begins inside `\ignore{...}` at line 876 and is inactive under the checked header definition.
- Rigor checklist: `q_M` is an integer at least two, the invoked branch has `s>=M+2>t`, tower monotonicity is used in the correct direction, and the floor estimate is valid in both branches. Every hidden constant is reduced to `g_gap` and numerical logarithms.
- Local adversarial test: The proof covers the smallest nonvacuous homogeneous-set size, extremely sparse ordered domains, and the regime where the Ramsey target floor falls below `t+1`. No asymptotic notation is used to bypass a finite failure case.
- Contribution to target step: It supplies a homogeneous set of the active Ramsey size with the adjusted odd-template and mesh-dependent color constants.
- Verdict: PASS
- Repair direction: None.

### unit_005: Parity-uniform side marginals at expected loss one twentieth

- Statement fidelity: The lemma converts the exact expected empirical loss premise into one low zero-side marginal and one high one-side marginal, with `theta_M=1/10` for even `M` and `9/80` for odd `M>=9`.
- Proof validity: The zero-side and one-side error sums are nonnegative and together are at most `M/20`, so each side contains a point with error at most its side average. For `M=2r+1`, `r>=4` gives `(2r+1)/(20r)<=9/80`, with equality at `M=9`, while the larger side has error strictly below `1/10`.
- Cited-result and assumption audit: The only inputs are the accepted exact expected-loss identity transported by unit_001 and local hypothesis (A1). No high-probability accuracy statement or source empirical-learner theorem is substituted for expectation.
- Rigor checklist: Both side sets are nonempty, the expectation is expanded into the correct coordinate-error marginals, and even/odd endpoint constants are explicit.
- Local adversarial test: The worst odd imbalance is exactly `M=9`; larger odd `M` only improves the bound. Arbitrary dependence among output coordinates is irrelevant because only marginal expectations and a finite average are used.
- Contribution to target step: It provides the two in-sample marginal witnesses transferred by privacy in unit_006.
- Verdict: PASS
- Repair direction: None.

### unit_006: Endpoint-uniform homogeneous-list gap

- Statement fidelity: The proposition proves the exact endpoint-uniform positive list gap under the accepted local delta interface, including both parities, `epsilon=1`, ranks `0` and `M`, sparse domains, and arbitrary outputs.
- Proof validity: Removing `x_*=h_(s_-+1)` yields a realizable base sample. Replacing a zero-side point by `(x_*,0)` leaves the deleted query at rank `ell-1`; replacing a one-side point by `(x_*,1)` leaves the deleted query at rank `j`. Each unsorted replacement is one-record adjacent to the base sample, and unit_001 identifies its law with the sorted fixed-template sample. The two DP inequalities therefore give the displayed low and high bounds, and homogeneity adds exactly two mesh errors.
- Cited-result and assumption audit: Active Alon `lem:reduction` and its proof were independently checked at source lines 716--748. It supplies only the mechanism lineage; the submission correctly rederives the expectation, odd-parity, endpoint, sparse-successor, and approximate-DP claims instead of invoking that source claim as a black box.
- Rigor checklist: The ranks satisfy `0<=ell-1<j<=M`; all points in each tuple are distinct; the same unused point may legally receive different labels in two separately realizable neighboring samples; and each comparison uses the correct DP direction. The full function `F_M(u)` is strictly decreasing because `delta<1-theta_M`, so `epsilon=1` is the true worst endpoint.
- Local adversarial test: At even `M`, the raw endpoint gap is `9/(10e)-e/10`; at odd `M`, including `M=9`, it is `71/(80e)-9e/80`. Under (A2), `(1+e^-1)delta<=g_gap/8`, while `2gamma<=g_gap/450`; hence the remaining factor is `1571/1800>3/4`. The construction also works for `ell=1`, `j=M`, nonconsecutive points of `H`, and `delta=0`.
- Contribution to target step: It establishes the signed total rise of at least `3g_gap/4` from a genuine lower rank to a genuine higher rank.
- Verdict: PASS
- Repair direction: None.

### unit_007: Adjacent rise from the endpoint-uniform gap

- Statement fidelity: The proposition exports exactly the adjacent-list margin consumed by `step_003`, including the endpoint increments `p_1-p_0` and `p_M-p_(M-1)`.
- Proof validity: The signed telescoping identity has at most `M` summands. A total rise of at least `3g_gap/4` forces at least one increment to be at least `3g_gap/(4M)`; no monotonicity assumption is needed.
- Cited-result and assumption audit: The only input is the proved unit_006 gap. No cited theorem or later-step conclusion is used.
- Rigor checklist: The index set is nonempty because `r_-<r_+`, and it lies inside `[M]`. Negative or oscillating intermediate increments do not invalidate the averaging argument.
- Local adversarial test: If the entire rise occurs at either one-sided endpoint, the proof returns `i=1` or `i=M` exactly as required.
- Contribution to target step: It supplies the final `Theta(g_gap/M)` signed adjacent rise.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial claim is omitted from the local lemma map. The source-orientation and permutation claims are isolated in unit_001; positivity in unit_002; finite coloring and all ranks in unit_003; Ramsey inversion and rounding in unit_004; expectation-to-side marginals in unit_005; tuple realizability, distinctness, sparse-point replacements, rank calculations, privacy directions, endpoint minimization, and defect domination in unit_006; and signed telescoping in unit_007. The assembly's pullback order is the order transported by `psi`, so the homogeneous-list indexing and adjacent-rise sign are preserved. Global diagnostics are not used as evidence.

## Target Claim Audit

The proof establishes the exact accepted `step_002` claim. Under the accepted `step_001` empirical wrapper, local expected-risk premise (A1), and the explicit local delta condition (A2), it constructs a finite homogeneous coloring for the fixed nearly balanced template, obtains the active Ramsey-scale homogeneous set, proves a universal positive endpoint gap uniformly for `0<epsilon<=1`, and exports an adjacent rise at least `3g_gap/(4M)`. The proof covers even and odd `M=9n`, all ranks `0,...,M`, one-sided endpoints, arbitrary improper outputs, sparse ordered subsets, and the reverse-order pullback to the branch coordinates. The finite `N<=M` boundary is separated and no later hard-prior or binary-search conclusion is assumed.

## Explicit Rate Audit

The step is rate-bearing and correctly exposes `n`, `N`, `M=9n`, `epsilon`, `delta`, loss threshold `1/20`, `gamma`, `q_M`, homogeneous-set size, and adjacent margin. The only hidden quantities are explicitly defined universal numerical constants `g_gap`, `C_g`, and `C_R`, independent of the learner, parity, domain, and privacy parameters. The proof keeps expectation-mode loss, eventwise DP, fixed-sample horizon, and coordinate-marginal output mode distinct. Every absorption is displayed: the odd-side average, monotonicity to `epsilon=1`, the `delta` defect, two mesh defects, and the Ramsey color denominator. The exported condition `delta<=a_(delta,end)/(n^2 log(en))` has the required source scale and no hidden dependence. At `k=1`, this is the same unrestricted one-chain homogeneous-set mechanism after the fixed `9n` wrapper, not a weaker conditional or remainder-only surrogate.

## Notation Surface Audit

All helper objects are defined from setting quantities, the accepted dependency, checked source statements, or named local units, and each is classified as `public-facing`, `appendix-local`, or `proof-local`. The public interface is limited to `M`, `g_gap`, `gamma`, `C_R`, the homogeneous set/list, the endpoint delta constant, and the adjacent index. Proof-only deletion samples, ranks, quantizer, tower inversion variables, and replacement tuples remain local. The pullback order is explicitly declared, avoiding sign drift under the decreasing bijection `psi`.

## Target-Step Assembly Audit

The assembly cites all seven theorem-style local results and the accepted `step_001` dependency. Together they give the exact current-notation chain: private symmetric upper-oriented wrapper; positive universal parity gap; finite homogeneous coloring; active-scale Ramsey extraction; expected-loss side witnesses; two exact one-record endpoint transfers with controlled defects; and an adjacent signed rise. Applying `psi^{-1}` preserves coordinates, marginals, loss, adjacency, list ranks, and the rise sign under the declared pullback order. No unreviewed lemma, properization, surrogate loss, hard prior, or global-diagnostic assertion is needed.

## Review Rationale

`ACCEPTED` is the smallest sound status because every local unit is correctly stated, sourced, and proved, and the seven units jointly establish the unchanged sketch-row interface. The highest-risk points all pass independent checks: the active Alon and Erdos-Rado statements and active/inactive source boundary; the finite Ramsey tower inversion and rounding; expectation-based side marginals; even and odd `epsilon=1` constants; strict positivity after delta and mesh defects; all endpoint ranks; tuple distinctness and permutation invariance; sparse-successor validity; arbitrary-output scope; pullback orientation; universal constant dependence; delta scaling; exact assembly; and preservation of the `k=1` one-chain baseline. No producer, dependency, or sketch repair is required.
