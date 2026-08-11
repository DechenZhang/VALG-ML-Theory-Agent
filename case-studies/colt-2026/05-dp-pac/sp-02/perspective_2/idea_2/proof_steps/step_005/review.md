# Proof Step Review

## Step Review Identity

- Sketch attempt: `1`
- Step ID: `step_005`
- Unit attempt: `1`
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_005/proof.md`, SHA-256 `ef7343576f23d59e14f2a29da1d7d9461608590f23332b1707a46f4b77f01b3a`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Compact convex polytope of finite private kernels

- Statement fidelity: The proposition constructs exactly the learner strategy set required by the accepted sketch row: stochastic kernels on every ordered labeled `n`-sample, with output the full binary cube and with both eventwise `(epsilon,delta)`-DP inequalities imposed for every replacement-adjacent pair and every output event. It does not restrict inputs to realizable samples or outputs to thresholds.
- Proof validity: The four underlying sets are finite, so the kernel is a finite Euclidean array and the family of eventwise constraints is finite. The input-independent all-zero kernel proves nonemptiness. Row stochasticity gives coordinate bounds in `[0,1]`; row sums, nonnegativity, and every privacy constraint are closed affine equalities or halfspaces, hence their intersection is closed and bounded and therefore compact. The direct convex-combination calculation preserves row stochasticity and combines the additive defects as `lambda delta+(1-lambda)delta=delta`, proving convexity with no privacy loss. A bounded finite intersection of affine halfspaces and hyperplanes is indeed a polytope.
- Cited-result and assumption audit: Finite-dimensional Heine-Borel is restated before use and its closedness and boundedness hypotheses are discharged locally. The unit uses only the primitive finite spaces, fixed scalar privacy parameters, and the setting's ordered replacement adjacency; no theorem-facing `assump:*` condition, prior, generated event, or later learner is assumed.
- Rigor checklist: The ambient dimension and all relevant cardinalities are correct. The audit includes the full power set of the finite output cube, not merely singleton events. The constant kernel remains admissible at `delta=0` and `epsilon=1`; identical samples allowed by the "at most one record" convention also satisfy the displayed inequalities. All labeled input samples, including nonrealizable ones, remain in the privacy domain.
- Local adversarial test: For an arbitrary event containing the constant output, both event probabilities are one and `1<=e^epsilon+delta`; otherwise both are zero. Under convexification, an attempted `2delta` leakage does not arise because the same fixed mixing weights sum to one. No boundary or degenerate kernel makes the strategy set empty.
- Contribution to target step: This unit supplies a nonempty compact convex finite-dimensional learner set on which finite minimax and all required attainment arguments are legal.
- Verdict: PASS
- Repair direction: None.

### unit_002: Affine finite risk and exact arbitrary-output restriction

- Statement fidelity: The proposition proves both interfaces assigned to it: every exact finite-experiment risk is continuous affine in the kernel, and arbitrary measurable hypothesis outputs have exactly the same attainable entire risk vectors as full-cube kernels. The conclusion preserves the original privacy parameters, experiment universe, multiplicities, zero-one risk, and improper-output scope.
- Proof validity: Equations (12)--(15) expand `Q_e`, its ordered product law, the exact loss of a cube vector, and the kernel risk as a finite linear form. The restriction map is measurable because every singleton prediction vector is a finite intersection of measurable coordinate events and every cube event is a finite union of singletons. Pulling an arbitrary output event back through this map proves both DP directions with unchanged `epsilon,delta`, and the loss identity holds simultaneously for every experiment because each `Q_e` is supported on `[N]`. Conversely, every full-cube kernel is itself an admissible arbitrary binary-hypothesis kernel. These two maps prove equality of attainable risk vectors, and hence equality of the prior-average infimum with the compact finite-game minimum.
- Cited-result and assumption audit: The accepted dependency chain supplies the arbitrary-output/full-coordinate interface, while the current unit also verifies its measurable postprocessing and exact risk identity directly from the setting. The current `step_004` proof/review pair is accepted at the recorded hashes and exports hardness for the same full-cube competitor class. No properness theorem, representation assumption, approximation result, or unproved discretization is invoked.
- Rigor checklist: Repeated entries of `U` retain their multiplicities in the exact empirical law. Randomized outputs and arbitrary dependence among prediction coordinates are represented by the full vector law. The same pushforward kernel works for all `e`, so the argument proves equality of the whole risk vector rather than only a prior-specific scalar equality. Compactness and continuity justify `min` rather than an unsupported `inf` on the finite side.
- Local adversarial test: An output may oscillate arbitrarily across `[N]`, use a generic measurable representation, or be randomized with fully correlated coordinates; restriction still records its complete prediction vector and preserves all eventwise privacy inequalities. Predictions away from `[N]` are irrelevant to every `Q_e`, and in the setting's threshold-domain formulation the identity cube realization gives the converse exactly.
- Contribution to target step: This unit supplies the continuous bilinear payoff for minimax and transfers the resulting finite-game lower bound back to every arbitrary-output DP kernel without residual loss.
- Verdict: PASS
- Repair direction: None.

### unit_003: Correctly oriented finite minimax with attainment

- Statement fidelity: The proposition states the exact required orientation, with the learner minimizing and the experiment prior maximizing:
  `min_K max_e r_e(K) = max_Pi min_K E_Pi[r_e(K)]`. It also explicitly establishes the learner-side minimum, every fixed-prior inner minimum, and the outer prior maximum.
- Proof validity: The experiment simplex and the kernel polytope are nonempty compact convex finite-dimensional sets, and `Phi(K,Pi)` is continuous and affine in each argument. The fully restated minimax theorem therefore applies. For fixed `K`, maximizing the linear payoff over the experiment simplex is exactly maximizing `r_e(K)` over the finite experiment set, attained by a point mass, so substitution gives the displayed orientation. The maximum of finitely many continuous risks attains its minimum on the kernel polytope; each fixed-prior payoff attains its minimum; and the bound `|g(Pi)-g(Pi')|<=||Pi-Pi'||_1` proves continuity and attainment of the outer maximum.
- Cited-result and assumption audit: The finite-dimensional von Neumann minimax theorem is restated in current notation, including compactness, convexity, continuity, and affinity hypotheses, and every hypothesis is discharged by units 001--002 and the elementary simplex audit. No measurable-selection, asymptotic compactness, or infinite-dimensional theorem is used.
- Rigor checklist: The proof does not reverse `min` and `max`, replace an attained extremum by an unjustified supremum, or minimize over a learner-dependent subset. The Lipschitz estimate uses only `0<=r_e(K)<=1` and is uniform over the entire kernel set. Nonuniqueness of optimizing kernels or priors does not affect existence or the value identity.
- Local adversarial test: Although the learner set contains uncountably many randomized kernels, it is compact in a finite-dimensional space, so the finite-game theorem still applies. Extreme deterministic kernels need not be optimal, but their presence is not assumed; convex randomized kernels are fully included. At `delta=0` and `epsilon=1`, the same compactness and bilinearity arguments remain valid.
- Contribution to target step: This unit performs the only legal quantifier reversal and provides an actually attained maximizing prior on the exact experiment simplex.
- Verdict: PASS
- Repair direction: None.

### unit_004: Attained learner-independent hard prior

- Statement fidelity: Under exactly the accepted `step_004` admissibility conditions, the proposition produces `Pi_(n,N,epsilon,delta)` in `Delta(E_(n,N))` and proves the arbitrary-output `(HP)` inequality with the unchanged value `1/20`. It also states the permitted parameter dependence and excludes dependence on any candidate or later hidden-arm learner.
- Proof validity: Accepted Proposition~\ref{prop:step-004-hardness} gives `max_e r_e(K)>=1/20` for every kernel in the full compact strategy set. Minimizing this pointwise inequality preserves the constant. Unit 003 transfers that lower value by equality to the attained outer prior maximum, and unit 002 converts the resulting finite-kernel minimum to the arbitrary-output infimum exactly. The selected probability vector is indexed only by `E_(n,N)`; allowing some coordinates to have zero mass is precisely the meaning of membership in its simplex and does not enlarge the support universe.
- Cited-result and assumption audit: The accepted dependency proof has SHA-256 `90bcb3550fc7f15c62252762740e611e09e658d937708fe4e2e2bc9b6159ad4e`, and its accepted review has SHA-256 `eb6de6b30abc4981b0fc8ab70a297d2bb559b74c193e426f8dde2f4486b87fd9`; both match the current files. Its exact exported conclusion is learner-by-learner full-cube hardness under (T1), with no prior. All other inputs are named results proved in the current step.
- Rigor checklist: The constant is not weakened, the expected-risk probability mode is unchanged, and no auxiliary experiment, limiting distribution, altered database size, or privacy relaxation is introduced. The prior may depend on `n,N,epsilon,delta` and universal dependency constants, but not on `K`, `B`, the PAC learner `A`, a hidden arm, or any learner randomness.
- Local adversarial test: Selecting a separate hard experiment after seeing each learner would be circular and unusable downstream; the proof avoids this by first fixing the full risk game and then selecting one maximizer of its lower-envelope value. Pure DP, endpoint `epsilon=1`, deterministic competitors, and arbitrary randomized competitors all remain in the same game. The support statement remains correct even if the maximizing prior is a point mass.
- Contribution to target step: This unit establishes the exact hard-prior output consumed by later hidden-arm steps and certifies its learner independence and producer-before-consumer provenance.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the four-unit map. Full eventwise privacy geometry, nonemptiness, compactness, convexity, and the polytope claim are in unit 001. Exact risk expansion, restriction measurability, privacy postprocessing, simultaneous risk-vector preservation, converse realization, and equality of infima are in unit 002. The minimax theorem application, simplex-to-point-mass reduction, orientation, and all attainment claims are in unit 003. Dependency transfer, exact support, learner independence, and noncircular production are in unit 004. Elementary finite-set measurability and the inequality comparing minima under a uniform sup bound do not conceal a new theorem-critical bridge.

## Target Claim Audit

The submitted proof establishes the exact accepted `step_005` sketch-row claim. For every `N>=N_th`, `n<a_th log^*N`, `0<epsilon<=1`, and `0<=delta<=a_delta/(n^2 log(en))`, it constructs an attained prior depending only on `n,N,epsilon,delta` such that the infimum over every arbitrary-output `(epsilon,delta)`-DP threshold-domain kernel is at least `1/20`. Quantifiers, ordered-sample privacy scope, experiment support, expectation mode, improper-output scope, and universal constants all match the setting and accepted dependency. The proof neither strengthens the learner assumptions nor weakens `(HP)`.

## Explicit Rate Audit

This is the R1 quantifier-bridge step and satisfies the explicit-rate contract. Exposed variables are `n,N,epsilon,delta`, the exact finite cardinalities, the dependency constants `a_th,a_delta,N_th`, and the fixed value `1/20`. No new hidden constant or auxiliary tolerance is introduced. The mode is fixed-sample expected zero-one risk, jointly over the prior, iid experiment sample, and learner randomness; privacy is deterministic eventwise comparison on adjacent inputs. There is no horizon, convergence, confidence, norm, or probability conversion. The exact chain from pointwise `max_e r_e(K)>=1/20` through minimax contains no term absorption or loss. Because the step contains no arm parameter and preserves the unrestricted full-cube game, it also preserves the inherited one-chain `Omega(log^*N)` baseline for downstream `k=1` specialization.

## Notation Surface Audit

Every helper object has visible provenance and an appropriate surface classification. The finite alphabets, sample space, cube, kernel polytope, exact losses, and restriction map remain appendix-local; convexity witnesses, the payoff, and its lower-envelope function remain proof-local. The only new public-facing output is `Pi_(n,N,epsilon,delta)` in the already public experiment simplex, together with the unchanged dependency constants and `(HP)` value. The notation keeps the full function cube distinct from the threshold class, preserves tuple multiplicities in `U`, and introduces no opaque helper dictionary or unproved bounded quantity.

## Target-Step Assembly Audit

The assembly uses only the four paper-ready named propositions and the current accepted `step_004` conclusion. Proposition~\ref{prop:step-005-dp-polytope} supplies the complete compact convex learner set; Proposition~\ref{prop:step-005-risk-restriction} supplies the exact affine payoff and arbitrary-output equivalence; Proposition~\ref{prop:step-005-minimax} supplies the correctly oriented equality and attainment; and Proposition~\ref{prop:step-005-hard-prior} combines these with Proposition~\ref{prop:step-004-hardness}. These interfaces jointly imply `(HP)` without a missing lemma, bare unit-ID authority, hidden learner-dependent choice, or use of the global diagnostic as proof evidence.

## Review Rationale

`ACCEPTED` is the smallest sound status. The proof matches the accepted sketch and current dependency artifacts, and every high-risk local obligation passes: the full eventwise-DP kernel set is nonempty, compact, convex, and polyhedral on all labeled inputs; arbitrary outputs restrict measurably with exact privacy and entire-risk-vector preservation; finite minimax has the required `min-max = max-min` orientation and all needed extrema are attained; the value `1/20` and exact experiment universe are unchanged; and the maximizing prior is produced only after learner-by-learner hardness and is independent of every later learner. No step, dependency, or sketch repair is required, so the smallest retry target is `None`.
