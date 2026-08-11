# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_009/proof.md`, SHA-256 `9cadb1485953eae6d118c757325df547b47ef7dcdf8293c6b7048b6f1766fa7e`
- Accepted sketch review: `perspective_1/idea_2/proof_sketch_review.md`, status `ACCEPTED`
- Accepted dependency: `step_008`, proof SHA-256 `c635279729b9d3217edaf06918c024801499e36a4d77164a94eee2a6e803bb6c`, review SHA-256 `82f84395d042fffd880229a35e6d17969990515b9255c0ccce7626a2b4af5cc7`, status `ACCEPTED`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: finite realizable threshold-task universe

- Statement fidelity: The lemma states the exact finite-task restriction required by the accepted `step_009` row. It keeps the accepted `step_008` witness, the exact budget (m), the even wrapper size (N=2\lceil9m/2\rceil), realizable factor tasks, and expected population risk; it neither assumes a prior nor narrows the later learner class.
- Proof validity: The weak-composition set \(\mathcal Q_{N,T}\) is finite and records every multiplicity vector of an ordered realizable (N)-row threshold database. Because the wrapper samples rows independently with replacement, both its ordered (m)-sample law and its empirical loss depend on the original database only through this count vector. Equations (9.8)--(9.10) are finite sums and give exact distributional risk, affine and continuous in the kernel, with no empirical-to-population residual.
- Cited-result and assumption audit: Assumption~\ref{assump:vc-one-factors} supplies the factor, while the accepted Lemma~\ref{lem:step-008-threshold-map} supplies fixed distinct witness points and fixed factor concepts before any learner. The strict active conditions invoke only the accepted constants and imply (T\ge2). No ambient finite-cardinality, ordering, or properness condition is introduced.
- Rigor checklist: Zero coordinates of (q), repeated rows, arbitrary row order, and sequence-sensitive kernels are covered. The exact cardinality in (9.6) is the standard count of weak compositions, and every task remains a pair in (C_{\mathrm f}\times\mathcal P(X_{\mathrm f})).
- Local adversarial test: Databases with all (N) rows at one witness point, databases with many repeated rows, and infinite ambient (X_{\mathrm f}) or (C_{\mathrm f}) still map to one element of \(\Theta\) and retain the exact risk identity.
- Contribution to target step: Supplies a learner-independent finite adversary action set containing every task needed by the accepted threshold lower wrapper.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact compact polytope of unrestricted private kernels

- Statement fidelity: The proposition constructs exactly the all-input replacement-((0.1,\delta))-DP learner action set required by the sketch. It includes every labeled witness database, including nonrealizable ones, every output event, both adjacency orientations, and arbitrary witness-label vectors rather than only proper threshold outputs.
- Proof validity: Stochasticity and the finitely many inequalities (9.11) define a nonempty closed convex bounded finite-dimensional polytope. Restriction of a full learner is deterministic output postprocessing, so all-event privacy and the task losses are preserved by (9.13)--(9.15). Conversely, the rowwise retraction sends one full-input replacement to zero or one witness-input replacement, and the finite-support hypotheses (h_v) extend every witness vector. Taking the preimage (E_F) of each full-output event proves all-input DP for (B_K); on every task support the retraction is the identity, giving the exact equality (9.18).
- Cited-result and assumption audit: Only Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range}, plus the previously fixed witness, are used. Approximate DP is checked directly rather than inferred from privacy on realizable inputs. Privacy monotonicity from \(\varepsilon\le0.1\) to (0.1) is valid.
- Rigor checklist: The construction handles nonrealizable labels, inputs outside the witness, arbitrary improper hypotheses, all output events, and equality or adjacency after retraction. The finite output restriction does not change risk because every (D_q) is supported on the witness.
- Local adversarial test: Replacing an outside-witness row by another outside-witness row can make the retracted inputs equal or one-replacement adjacent, never farther apart. Conflicting labels at the same witness point remain legal privacy inputs. A vector not realized by any concept is still a legal improper output and has a full extension.
- Contribution to target step: Makes the finite game exact in both directions, so compactness is obtained without omitting privacy constraints or imposing properness.
- Verdict: PASS
- Repair direction: None.

### unit_003: strict finite-task floor for every private kernel

- Statement fidelity: The proposition proves the exact strict (>1/8) maximum-loss floor on the fixed finite task set under the accepted `step_008` strict subcritical and delta conditions. It does not cite the dependency's worst-case conclusion as though that conclusion already supplied a finite task universe or a prior.
- Proof validity: If one (K\in\mathscr K) had loss at most (1/8) on every task, its exact extension (B_K) would give expected empirical loss at most (1/8) on every realizable (N)-row threshold database. The accepted resampling identity, all-input privacy wrapper, and threshold input/output map apply to this same mechanism. The inherited bounds (9m\le N\le10m), (N\ge72), (\delta\le c_0/(N^2\log N)), and \(\log_2^*T\ge\tfrac12\log_2^*d\) then yield (m\ge a_{\mathrm L}\log_2^*d), contradicting the strict active premise.
- Cited-result and assumption audit: Every dependency result is restated in current notation with its role and known nonoutput. The proof consumes the accepted `step_008` proof/review pair at the pinned hashes and uses no global diagnostic as authority. The temporary all-task upper bound (9.20) is a local contradiction hypothesis and is discharged.
- Rigor checklist: The proof preserves expected distributional (0)-(1) risk, all-input replacement privacy, arbitrary output vectors, equality at the delta boundary, and the strict sample inequality. The wrapper's parity and denominator constants are retained explicitly.
- Local adversarial test: At (m=8), (N=72) and the logarithms and denominator bridge remain valid. Small (d) cannot enter the active regime; infinite ambient factors and improper outputs remain covered by the finite restriction/extension maps.
- Contribution to target step: Supplies the pointwise strict finite-game gap from which compact minimax can produce a single learner-independent prior.
- Verdict: PASS
- Repair direction: None.

### unit_004: strict finite minimax and learner-independent hard prior

- Statement fidelity: The lemma reverses the exact quantifiers required by the sketch, from a hard task for each kernel to one finite prior hard for every kernel, while retaining the same factor budget, privacy class, risk, and strict (1/8) threshold.
- Proof validity: The maximum-payoff function (g) is continuous on compact \(\mathscr K\), so it has a minimizer. Applying the pointwise strict floor at that minimizer gives an attained value \(\alpha>1/8\); this correctly rules out loss of strictness along a minimizing sequence. The affine risk-vector image \(\mathscr R\) is compact and convex. For each (s<\alpha), its positive distance from the lower orthant yields the nonnegative normal (w=r^*-u^*\), and (9.33)--(9.35) give one simplex vector whose payoff is uniformly greater than (s). Compactness of the finite simplex and passage to (s\uparrow\alpha) give one limiting prior with payoff at least \(\alpha>1/8\) for every kernel. The reverse inequality in (9.37) follows because every convex average is bounded by the maximum coordinate.
- Cited-result and assumption audit: No external minimax theorem is used without proof. Compactness, convexity, affinity, and the strict finite floor are supplied by the preceding named local results; the separator and limiting prior are generated here rather than assumed.
- Rigor checklist: The closest pair exists despite the lower orthant being unbounded because \(\mathscr R\) is compact and coordinatewise projection gives the nearest lower-orthant point. The separator is nonzero and nonnegative, normalization is legal, the subsequence is common to all kernels, and finite-dimensional continuity justifies the limit.
- Local adversarial test: A sequence of kernels whose maximal risk approaches (1/8) cannot occur because compact attainment would produce a kernel violating the strict floor. Vanishing coordinates of (w) cause no problem, and no factor-uniform positive margin beyond \(\alpha_i-1/8>0\) is required downstream.
- Contribution to target step: Produces a finitely supported prior selected from the complete kernel polytope before, and independently of, every later learner.
- Verdict: PASS
- Repair direction: None.

### unit_005: all-factor finite prior family with exact quantifier order

- Statement fidelity: The proposition exports exactly one finite prior for every factor at the candidate budgets. Active factors satisfying all three accepted `step_008` conditions receive the strict hard prior; every other factor receives only a fixed realizable point mass, with no hardness claim.
- Proof validity: For an active factor, restriction sends every eligible unrestricted learner (B) to a kernel (K_B\in\mathscr K), and (9.15) transfers the minimax payoff back to exact expected factor risk. Thus (9.40) gives (\exists\nu_i\,\forall B) with a strict (>1/8) floor, including learners chosen after seeing the public prior. For an inactive factor, nonconstancy supplies fixed (c_i^\circ\) and (x_i^\circ\), and the Dirac distribution at (x_i^\circ) forms a realizable one-task prior. The finite factor index from the binding setting makes the simultaneous family and its finite product well defined.
- Cited-result and assumption audit: Active hardness uses only the accepted `step_008` constants and the preceding local results; baseline completion uses only primitive factor nonemptiness. A downstream ((\varepsilon,\delta))-DP learner with \(\varepsilon\le0.1\) is eligible by monotonicity. No generated hard-set membership, downstream learner, or product sample is assumed.
- Rigor checklist: The exact (m_i), \(\delta\), expectation mode, and distributional risk are retained. Factors failing the strict sample inequality, the delta inequality, or the floor condition receive no unsupported conclusion. Simultaneous selection over finitely many factors does not change any per-factor quantifier.
- Local adversarial test: The inactive (d_i=1) regime, equality in the delta bound, a single active factor, no active factor, infinite ambient factor classes, and a learner parameterized by all public priors are all handled by the stated branches.
- Contribution to target step: Exports only the all-factor family \((\nu_i)_{i=1}^k\), with hardness precisely on active factors, for consumption by `step_012` and `step_013`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. Finite-task coverage, weak-composition finiteness, all-event polytope compactness, the two restriction/extension directions, preservation of exact risk, the inherited strict finite floor, compact attainment, nonnegative separation, the simplex limit, simultaneous finite-factor selection, and inactive-factor realizability all occur in named local units. The proof does not use a theorem title, subsection, bare local-unit ID, or `global_proof.md` as mathematical authority.

## Target Claim Audit

The proof establishes the exact accepted `step_009` claim. For every factor and exact budget satisfying the strict `step_008` interface, it fixes a finite law on realizable pairs before any learner and proves prior-average expected distributional (0)-(1) risk strictly greater than (1/8) for every unrestricted improper eligible learner. Every remaining factor receives a finite realizable point-mass law and no hardness assertion. The quantifier order is learner independent, the privacy constraints hold on all labeled inputs, and no ambient cardinality, properness, high-probability, empirical-risk, or uniform-in-candidate condition is added.

## Assumption Provenance Audit

The factor properties and privacy range are primitive setting conditions. The threshold witness, constants (a_{\mathrm L},c_\delta,b_0,c_0), wrapper bounds, and strict source interface are accepted `step_008` outputs. The finite tasks, kernel polytope, extension learner, game value, separator, priors, and inactive point masses are generated and proved in this step. The only local conditional hypothesis is (9.20), which is discharged by contradiction. No generated task, margin, privacy certificate, or learner-dependent choice is promoted to a theorem-facing assumption.

## Explicit Rate Audit

The exposed quantities are exactly (d_i,m_i,\delta), fixed privacy epsilon (0.1), and expected factor risk. Hidden constants are the accepted universal `step_008` constants and fixed conventions only; no dependence on a factor, learner, candidate, ambient cardinality, or later simulator is hidden. The proof is fixed-budget and candidate-wise, uses expectation over task, sample, and learner randomness, and keeps exact distributional (0)-(1) risk. Equations (9.22)--(9.26) retain the accepted denominator, parity, and log-star bridges. Minimax introduces no rate or threshold loss because the attained value satisfies \(\alpha_i>1/8\). The one-factor active baseline is preserved, while inactive factors are honestly routed to the separate VC mechanism rather than assigned a false ALMM floor.

## Notation Surface Audit

The proof correctly classifies \(\nu_i\) as the sole new public-facing object. The witness size, task set, kernel polytope, and attained value are appendix-local; payoff, retraction, extensions, risk-vector image, closest points, separator, and approximating priors are proof-local. Every helper is defined from setting quantities, accepted dependency objects, or a named local derivation. The five non-atomic units have paper-ready theorem-style titles and stable labels, and all assembly references use those labels. No unnecessary helper dictionary is exported downstream.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-009-finite-tasks} supplies the exact finite task universe. Proposition~\ref{prop:step-009-kernel-polytope} supplies the complete compact private learner set and exact maps to and from unrestricted learners. Proposition~\ref{prop:step-009-finite-floor} supplies the strict finite-game floor from the accepted dependency. Lemma~\ref{lem:step-009-strict-minimax} produces one finite learner-independent hard prior without losing strictness. Proposition~\ref{prop:step-009-all-factor-priors} transfers that prior to every eligible learner and completes inactive factors by realizable point masses. These named results jointly imply the exact target and export only the interface consumed by the accepted later steps.

## Review Rationale

`ACCEPTED` is warranted because all five local units are valid under the binding setting, accepted sketch, and pinned `step_008` dependency. The proof closes the central finite-game issue rather than merely invoking worst-case hardness: it covers every empirical threshold task used by the dependency, enforces approximate DP on all finite labeled inputs, proves exact restriction and extension for improper outputs, obtains an attained game value strictly above (1/8), and separates it into a prior fixed before every learner. Inactive factors are completed without an unsupported hardness claim, and the final assembly preserves the exact risk, privacy, budget, and quantifier interfaces. No retry is required.
