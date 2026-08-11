# Proof Step Review

## Step Review Identity

- Sketch attempt: `1`
- Step ID: `step_004`
- Unit attempt: `1`
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_004/proof.md`, SHA-256 `90bcb3550fc7f15c62252762740e611e09e658d937708fe4e2e2bc9b6159ad4e`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Finite quantitative choice of product size and search depth

- Statement fidelity: The lemma makes the accepted sketch choices explicit with `eta=a_0/M`, `T=ceil(b_T M^2 log^2(eM))`, and `D=ceil(2 eta^(-2) log(6T))`. It proves the three interfaces actually consumed later: correct-path failure below `1/3`, `D=O(M^2 log(eM))`, and the strict counting inequality `T log 2>D+log 2`, together with the exact `M=9n` translations.
- Proof validity: The constant `b_T` exists because its linear term dominates the logarithmic dependence in `c_D(b)`. The bound on `log(6T)` correctly absorbs the ceiling and the two logarithmic factors into `log(eM)`, after which `b_D=c_D(b_T)` bounds `D`. The defining strict inequality for `b_T` gives `T log 2>D+log 2`. Since `D>=2 eta^(-2)log(6T)`, one has `2D eta^2>=4log(6T)`, so `T exp(-2D eta^2)<=1/(1296T^3)<1/3`.
- Cited-result and assumption audit: No external theorem is used in this unit. The only nonprimitive input is the accepted universal constant `a_0>0` from `step_003`; `M>=9` follows from `M=9n`, `n>=1`. All other constants are defined before use.
- Rigor checklist: Ceilings, strict inequalities, logarithm bases, and the `+1` in the `D` bound are retained. The final substitutions use `log(9en)<= (1+log 9)log(en)` with `log(en)>=1`, so no dependence on `n`, `epsilon`, or `delta` is hidden.
- Local adversarial test: At the smallest allowed `M=9`, `L_M>=L_0>1` and every displayed denominator is positive. An arbitrarily small accepted margin only enlarges the universal constants; it does not invalidate existence or strictness.
- Contribution to target step: It supplies the finite concentration, product-leakage, likelihood, and counting budgets used by units 003, 004, 005, and 008.
- Verdict: PASS
- Repair direction: None.

### unit_002: Depth-`T` search tree with unqueried leaf representatives

- Statement fidelity: The lemma provides the exact finite combinatorial object required by the binary argument: `2^T` nonempty disjoint leaf intervals and one representative per leaf whose `T` path queries are all off diagonal.
- Proof validity: The recurrence `s_u=1+2s_(u-1)` is the exact minimum interval size for a full subtree with `u` remaining queries. Under `K>2^(T+1)`, integrality gives more than `s_T=2^(T+1)-1` points. Choosing an internal query with enough points on both sides and removing it from both children preserves consecutive, disjoint child intervals and yields a full depth-`T` tree.
- Cited-result and assumption audit: This is a direct finite construction using only the accepted ordered block `J=[K]` and the integer `T` from unit_001. It does not invoke the source binary lemma as authority.
- Rigor checklist: Root-to-leaf paths contain exactly one query per internal level, child intervals exclude all ancestor queries, and every representative lies in its terminal interval. Hence the diagonal coordinate is never queried. Empty sides cannot occur because the size recurrence reserves a nonempty subtree on both sides.
- Local adversarial test: The endpoint case just above the assumed cardinality threshold still has enough points for all leaves. Extra interval points do not merge leaves or create overlapping routing events.
- Contribution to target step: It makes the adaptive search finite and supplies the disjoint leaves and off-diagonal query condition needed for the accepted margin and product-DP arguments.
- Verdict: PASS
- Repair direction: None.

### unit_003: Correct adaptive path from fixed-coordinate concentration

- Statement fidelity: The proposition proves the exact correct-leaf probability for each representative law, with the single-valued rule `widehat b(z)=1{widehat p(z)>=r}` and without assuming independence among coordinates of one output vector.
- Proof validity: For a fixed representative, its ideal path and `T` query coordinates are deterministic. If a query lies below the representative, (C7) gives mean at most `r-eta` and a wrong bit is an upper-tail event; if it lies above, the mean is at least `r+eta` and a wrong bit is a lower-tail event. Hoeffding applies because the `D` vectors are iid, and a union bound over the fixed ideal path gives failure at most `T exp(-2D eta^2)`. On the resulting good event, induction forces the adaptive router to follow that path.
- Cited-result and assumption audit: Hoeffding is restated in current notation, with independence discharged only across the product draws. The accepted `step_003` margin is used only at off-diagonal coordinates guaranteed by unit_002.
- Rigor checklist: The routing direction matches the accepted inequalities: a high bit routes to the lower-index child and a low bit to the higher-index child. The strict/weak tie conventions are compatible with the two Hoeffding inclusions, and arbitrary within-vector coordinate dependence is harmless.
- Local adversarial test: A wrong earlier observation may change all later adaptive probes, but the proof does not union-bound over random probes; it controls the deterministic ideal probes and proves that their simultaneous correctness prevents any divergence. This closes the adaptive-path issue.
- Contribution to target step: It gives `P_x^D(E_x)>=2/3` for one designated event per leaf representative.
- Verdict: PASS
- Repair direction: None.

### unit_004: Product-private disjoint-leaf contradiction

- Statement fidelity: The proposition proves the accepted binary-search obstruction uniformly for `0<epsilon<=1`, with the exact additive condition `D delta<=1/6`, one fixed reference law, and all `2^T` disjoint leaf events.
- Proof validity: The audited active Alon `lem:prod` states that pairwise two-sided `(epsilon,delta)` indistinguishability implies two-sided `(D epsilon,D delta)` indistinguishability of iid products. Applied in the direction
  `P_(x_lambda)^D(E_lambda)<=e^(D epsilon)P_y^D(E_lambda)+D delta`, it yields
  `P_y^D(E_lambda)>=e^(-D epsilon)(P_(x_lambda)^D(E_lambda)-D delta)`. Combining `2/3`, `1/6`, and `epsilon<=1` gives the valid lower bound `(1/2)e^(-D)`. The same `P_y^D` measures every pairwise disjoint leaf event, so their total mass is at least `2^(T-1)e^(-D)>1`, contradicting probability mass one.
- Cited-result and assumption audit: Active `lem:prod` and its appendix proof were checked in source SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`; its finite-domain hypotheses match the current common cube. If the fixed reference index equals one representative, the required comparison is trivially valid for that leaf, while all distinct pairs use the accepted `step_003` privacy conclusion.
- Rigor checklist: The additive defect is subtracted before multiplication by `e^(-D epsilon)`, the exponent direction is correct, and no geometric delta factor or second composition is introduced. The strict relation `T log 2>D+log 2` is exactly equivalent to `2^(T-1)e^(-D)>1`.
- Local adversarial test: At `epsilon=1` the likelihood lower bound is weakest and remains sufficient; at `delta=0` the leakage vanishes. Since the router is deterministic and total, one product sample reaches exactly one leaf, so the events cannot overlap.
- Contribution to target step: It proves the exact family-size upper bound `K<=2^(T+1)`.
- Verdict: PASS
- Repair direction: None.

### unit_005: Explicit homogeneous-set upper bound

- Statement fidelity: The proposition translates the exact moving-family identity `K=|H|-M+1` and unit_004 into the required current-notation homogeneous-set bound, retaining the additive `M-1` before simplifying it.
- Proof validity: From `K<=2^(T+1)`, one gets `|H|<=M-1+2^(T+1)`. Since `T>=M^2>=M`, the additive term is smaller than `2^(T+1)`, giving `|H|<=2^(T+2)`. The ceiling bound on `T` then yields the displayed exponential with the explicit universal `C_B=(b_T+3)log 2`.
- Cited-result and assumption audit: The active `lem:lbhomog` is used only as mechanism lineage. The mathematical conclusion follows from accepted `step_003` and units 001--004 under the unchanged local small-risk, endpoint-delta, and product-delta conditions.
- Rigor checklist: The proof uses the exact same `M`, `H`, and `J` as the accepted dependencies, and no asymptotic notation hides the `M-1`, the ceiling in `T`, or an output-shape assumption.
- Local adversarial test: The smallest `M=9` and the smallest permitted family both satisfy the inequalities. If the tree contradiction is not triggered, its exact complement already gives the asserted cardinality bound.
- Contribution to target step: It supplies the upper side of the Ramsey cardinality comparison.
- Verdict: PASS
- Repair direction: None.

### unit_006: Same-object Ramsey upper/lower comparison

- Statement fidelity: The proposition combines the accepted Ramsey lower bound and unit_005 on the identical homogeneous set, producing the exact finite inequality that unit_007 inverts.
- Proof validity: Multiplying the lower bound by its positive denominator gives an exponent `C_B M^2 log^2(eM)+C_R M log(eM)`. The elementary inequality `M log(eM)<=M^2 log^2(eM)` for `M>=9` yields (40) with `C_0=C_B+C_R`.
- Cited-result and assumption audit: The finite Erdos-Rado theorem and active Alon homogeneous-set statements were already instantiated and accepted in `step_002`; this unit consumes that current-notation result rather than an asymptotic source shorthand. Both bounds concern the same wrapper, order, template, sample size, and set `H`.
- Rigor checklist: The color denominator remains visible through `C_R`, and neither an additive `M` term nor a different homogeneous set is substituted during comparison. The positivity and finite-domain entry conditions are stated.
- Local adversarial test: Even when the Ramsey lower bound is below one, the later application separately ensures `log_2^(M)N>1`; no invalid logarithm or sign reversal occurs in the actual target regime.
- Contribution to target step: It establishes `log_2^(M)N<=exp(C_0 M^2 log^2(eM))` with universal `C_0`.
- Verdict: PASS
- Repair direction: None.

### unit_007: Finite inversion to a uniform iterated-log lower bound

- Statement fidelity: The lemma derives a uniform `M>=b_0 log^*N` conclusion from the exact comparison, while explicitly isolating every bounded-`M` exception in the definition of `N_emp`.
- Proof validity: For large `M`, the defining inequalities for `M_0` give `log_2(E_M)<=2^M` and hence `log^*(E_M)<=2+log^*(M)<=M`. For the finite set `9<=M<M_0`, `R_fin` records the exact maximum of `M+log^*(E_M)`, and `N_emp` is chosen with larger iterated logarithm. If `M<log^*N`, the exact recursion
  `log^*N=M+log^*(log_2^(M)N)` applies. Combining it with (40) rules out the finite cases and gives `log^*N<=2M` in the remaining cases, hence the stated weaker constant `b_0=1/4` with strict slack.
- Cited-result and assumption audit: No global diagnostic or external lower-bound theorem is used. The eventual dominance of `2^M` over `M^2 log^2(eM)` and the elementary sublinearity of `log^*M` justify existence of `M_0`; all remaining exceptions are finite and explicitly absorbed into `N_emp`.
- Rigor checklist: Natural and base-two logarithms are converted by the factor `1/log 2`; monotonicity is applied only to positive arguments; the hypothesis `M<log^*N` guarantees `log_2^(M)N>1` and validates the exact recursion. The contradiction for bounded `M` uses the strict choice `log^*(N_emp)>R_fin`.
- Local adversarial test: Fixed `M` with arbitrarily large `N` is excluded by `N_emp`; growing `M` is covered by the large-`M` estimate. No unquantified small-`N` or small-`M` case remains.
- Contribution to target step: It converts the finite Ramsey comparison into the universal iterated-log obstruction with explicit `b_0,N_emp`.
- Verdict: PASS
- Repair direction: None.

### unit_008: Universal one-arm threshold obstruction

- Statement fidelity: The proposition exports exactly the sketch-row conclusion: universal `a_th,a_delta,N_th` and an algorithm-wise experiment with risk at least `1/20`, before minimax and without a hard prior.
- Proof validity: The choice `a_delta<=a_(delta,end)` discharges the accepted endpoint condition. With `C_9=81(1+log 9)`, unit_001 gives
  `D delta<=b_D C_9 a_delta<=1/6`. The strict premise `n<a_th log^*N` and `M=9n`, with `a_th=b_0/9`, give `M<b_0 log^*N<log^*N`, which also ensures `N>=M+1` and `log_2^(M)N>1`. Units 005--007 then imply the contradictory inequality `M>=b_0 log^*N`, discharging the strict small-risk premise and yielding an experiment with risk at least `1/20`.
- Cited-result and assumption audit: The only inputs are primitive finite-game definitions and the current accepted `step_001`--`step_003` proof/review pairs, whose recorded hashes match the current artifacts. No `assump:*` condition, prior, minimax result, properness premise, or global diagnostic is used as evidence.
- Rigor checklist: The `M=9n` translation, logarithmic comparison, endpoint `epsilon=1`, pure-DP boundary `delta=0`, strict inequalities, and small-`N` exclusion `N>=N_th=N_emp` are all explicit. Constants depend only on earlier universal numerical constants.
- Local adversarial test: At `n=1`, `M=9` is admitted; at `epsilon=1` both endpoint and likelihood estimates remain valid; at `delta=0` all additive privacy defects disappear. Arbitrary oscillating output vectors remain allowed because every argument uses only coordinate marginals and finite events.
- Contribution to target step: It completes (T1)--(T3) and supplies the learner-by-learner finite-game lower value consumed by `step_005`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the eight-unit map. Quantitative `D,T` selection and ceilings are in unit_001; full finite tree construction, nonempty leaves, and diagonal exclusion in unit_002; the adaptive-to-fixed-path reduction and concentration in unit_003; product-DP direction, additive-delta subtraction, reference-law mass, leaf disjointness, and strict counting in unit_004; exact family-to-homogeneous-set counting in unit_005; same-object Ramsey comparison in unit_006; finite and asymptotic iterated-log inversion in unit_007; and all endpoint, scale, and constant translations in unit_008. Measurability of routing events and monotonicity of `log^*` are elementary consequences on finite spaces, not hidden theorem-critical bridges. Global proof diagnostics are explicitly non-evidentiary and were not used in this review.

## Target Claim Audit

The proof establishes the exact accepted `step_004` claim. For every arbitrary-output full-cube `(epsilon,delta)`-DP kernel satisfying `N>=N_th`, `n<a_th log^*N`, `0<epsilon<=1`, and `delta<=a_delta/(n^2 log(en))`, negating the desired finite-game lower value activates the accepted wrapper, homogeneous-set, and moving-family interfaces. The eight named units then give a finite binary contradiction, an exact homogeneous-set upper/lower comparison, and a strict iterated-log contradiction. The conclusion is algorithm-wise `max_e R_n(B,e)>=1/20`; it neither assumes nor constructs a prior and does not alter the sketch dependencies, output target, probability mode, or arbitrary-output scope.

## Explicit Rate Audit

This is an R1 rate-bearing step and satisfies the explicit-rate contract. Exposed variables are `n,N,M=9n,epsilon,delta`, the fixed loss threshold, `eta`, `D`, `T`, `|H|`, `|J|`, and `a_th,a_delta,N_th`. Hidden constants depend only on the proved universal numerical margin and the explicitly defined universal Ramsey/binary constants, never on the learner, domain, privacy parameters, experiment, or later direct-sum objects. The probability mode is expected empirical risk plus eventwise DP and iid-product probability; the horizon is fixed and finite (`D` draws, `T` probes); the norm mode is zero-one risk and coordinate marginals. Every absorption is displayed, including ceilings, `D delta`, the `M=9n` logarithmic comparison, cardinality terms, and finite `M` cases. The step preserves the one-chain `k=1` baseline because it contains no `k`-dependent weakening or average-case replacement.

## Notation Surface Audit

All new objects have visible provenance and scope classifications. The public-facing export is limited to the algorithm-wise lower value and `a_th,a_delta,N_th`; accepted `H,J,r,(P_x),a_0,eta` retain their dependency provenance. `D,T`, tree nodes, empirical bits, path and leaf events, the reference law, exponent constants, and finite inversion helpers remain appendix- or proof-local. No one-off alias hides a rate, privacy defect, finite boundary, or target implication, and the step exports no unnecessary helper dictionary downstream.

## Target-Step Assembly Audit

The assembly cites the eight paper-ready named results and the three current accepted dependencies. Their interfaces compose without a missing bridge: accepted small risk produces the same homogeneous set and family; units 001--004 bound the exact block size; unit_005 bounds that same homogeneous set; unit_006 compares it with the accepted Ramsey lower bound; unit_007 performs the finite log-star inversion; and unit_008 translates back through `M=9n` and discharges both delta conditions. All cited Alon/Ramsey statements are either fully instantiated (`lem:prod`) or used only as lineage while the current branch proves the needed statement locally (`lem:binary`, `lem:lbhomog`, finite comparison). The exact target follows with no bare unit-ID authority, unreviewed lemma, hard-prior assumption, or global-diagnostic evidence.

## Review Rationale

`ACCEPTED` is the smallest sound status. Every local unit is self-contained relative to the current accepted dependencies, and the eight units jointly prove the unchanged sketch-row interface. The highest-risk obligations all pass: finite `D,T` existence and strictness; adaptive correct-path concentration; the product-DP inequality in the correct direction; additive `D delta` accounting and its `1/6` budget; disjoint leaf events under one reference law; exact finite tree and homogeneous-set counting; same-object Ramsey comparison; rigorous log-star inversion with bounded cases absorbed into `N_emp`; `M=9n` translation; universal constant provenance; `epsilon=1`, `delta=0`, small-`M`, small-`N`, and arbitrary-output boundaries; explicit rates; and named-result assembly. No step, dependency, or sketch repair is required, so the smallest retry target is `None`.
