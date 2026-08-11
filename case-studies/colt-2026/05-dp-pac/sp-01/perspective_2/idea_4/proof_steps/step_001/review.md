# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 2
- Review attempt: 2
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_001/proof.md`
- Reviewed proof SHA-256: `0cd51e748813399f1c1e80bc659200d37f96aa013c97e75eda2adeaf74c5d530`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Accepted proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Accepted proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Dependency artifacts: None.
- Frozen source verified: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `submission/main.tex`, SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Step-Review Status

`ACCEPTED`

## Smallest Retry Target

`None`

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: The proposition states the exact `d = 0` branch required by the sketch row, under the named primitive finite-Littlestone assumption, with `N = 0`, quotient output, raw replacement privacy, and zero population error.
- Proof validity: Two distinct concepts would shatter a depth-one Littlestone tree, so nonempty `C` with `d = 0` is a singleton. The induced `bar C` is a singleton, the singleton-input Dirac law is a Markov kernel, the only `N = 0` neighbor comparison has identical laws, and decoding the unique quotient concept reproduces the unique target pointwise.
- Cited-result and assumption audit: No external result is used. The proof uses only `assump:finite-littlestone` and setting-defined quotient/decoder objects; it invokes no positive-branch parameter, event, or source mechanism.
- Rigor checklist: Quantifiers over `D` and `c`, the `N = 0` input space, the `(0,0)`-DP mode, and population zero-one error are explicit. The proof remains valid when the unique concept is nonconstant on `X`; only uniqueness is needed.
- Local adversarial test: The singleton class, empty data set, arbitrary distribution, arbitrary quotient fibers, and every allowed positive `(epsilon, delta)` preserve the conclusion.
- Contribution to target step: It closes the exact null-dimensional baseline without activating or weakening the positive-dimensional construction.
- Verdict: `PASS`
- Repair direction: None.

### unit_006: lemma

- Statement fidelity: The lemma supplies exactly the previously missing premise `LD(H) <= d` for every `H` contained in `bar C`, including every later source restriction, without importing `step_002` or adding an assumption.
- Proof validity: A finite quotient-labeled tree shattered by `H` is pulled back node occurrence by node occurrence through arbitrary nonempty quotient fibers. For each path, a realizing `bar h_b` in `H` has a raw preimage `c_b` in `C`, and quotient factorization makes `c_b` realize the corresponding raw tree. Thus every shattered depth is at most `LD(C) = d`.
- Cited-result and assumption audit: No external theorem is used. The only primitive premise is `assump:finite-littlestone`; quotient fibers and `c = bar c composed with kappa` are setting-defined, not generated invariants.
- Rigor checklist: The proof explicitly handles the empty class, finite representative choice, repeated quotient labels, coincident representatives in a common fiber, and the impossibility of collisions across distinct fibers. A quotient label recurring on one path with conflicting edge labels could not have been realized in the original shattered quotient tree.
- Local adversarial test: Repeated labels at different nodes, arbitrary fiber cardinalities, different representatives from one fiber, representative reuse, empty `H`, and `d = 1` all pass. The finite choices create no global or measurable selector.
- Contribution to target step: It locally discharges the class-dimension hypothesis required by Lyu Definition 4.2 and Corollary 4.1 before their list bound is used.
- Verdict: `PASS`
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: The lemma defines the exact accepted positive-branch dictionary for every candidate integer `t >= 2`, proves `1 <= v <= d`, and gives only conditional source-side list and privacy calibrations, matching the sketch row.
- Proof validity: VC shattering gives a fixed-order Littlestone tree, while `d >= 1` gives a VC-shattered singleton. Every logarithm, denominator, ceiling, integer parameter, list cap, and tolerance is then in its claimed domain. The result labeled `lem:step-001-quotient-ld` supplies `LD(H_i^r) <= d`, and `p_r(t), d` are positive integers. Hence the Lyu list bound applies exactly to nonempty restrictions; empty restrictions bypass it and receive the empty list.
- Cited-result and assumption audit: The frozen source confirms that Lyu Definition 4.2 requires positive integers `p,d` and `LD(H) <= d`; Definition 4.3 defines essential hypotheses through every optimal decomposition; and Corollary 4.1 Item 1 gives at most `p^d 2^(d^2)` essential hypotheses. Algorithm 1 uses weights `exp(epsilon_s s(u))`, includes `perp` with score `B`, and Lemma 3.1 gives `(2 epsilon_s, delta_s)`-DP when `B >= 10 log(L/delta_s)/epsilon_s`. Algorithm 2 uses independent `Lap(1/eta)` query noise, and Lemma 3.2 gives the stated conditional privacy form for sensitivity-one queries. Every premise consumed here is restated and discharged; query sensitivity and raw adjacency are expressly deferred.
- Rigor checklist: The source exponent has no spurious factor `1/2`; the failure-symbol support point is retained; `B(t)` retains its ceiling; and the two confidence equalities in (2.7) follow by direct substitution. Source-valid lists contain actual functions in `H_C`, not empirical trace representatives.
- Local adversarial test: The cases `d = v = 1`, `t = 2`, an empty restriction, an empty essential set, an integer ceiling boundary, `delta` near one, and arbitrarily small positive `delta` preserve legality and all stated conditional boundaries.
- Contribution to target step: It makes the candidate tuple legal and closes the exact Lyu hypotheses needed for the list cap and mechanism allocations.
- Verdict: `PASS`
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The lemma gives the requested explicit, ceiling-aware envelope for a fully defined public candidate `t_C` before feasibility is assumed, including the complete teacher defect.
- Proof validity: The bounds `log ell <= 3 Lambda`, `log R_T <= 8 Lambda`, and `C R_T <= t_C <= 2 C R_T` control `log t_C`. Direct expansion then controls `a,Q,m,n,L`, including the exact identity `log L(t_C) = 2 d^2 log 2 + d log n(t_C) + d log d`. The retained ceilings in `m` and `B`, the Sparse Sample effective-domain term, and the AboveThreshold noise term are explicitly dominated by `A_def (1 + log C) R_T`.
- Cited-result and assumption audit: No new external result is invoked. All inequalities use only the primitive parameter ranges and the dictionary established by the result labeled `lem:step-001-calibration`.
- Rigor checklist: The proof does not drop additive ceiling remainders, assume candidate feasibility, or hide constant dependence. `A_log` and `A_def` depend only on the fixed universal `C_blk` and `c_AT`. The conservative displayed constants are valid for `d,v >= 1`, `Lambda >= 1`, and `ell > 5`.
- Local adversarial test: The smallest positive dimension, `C = 1`, ceiling-dominated `m`, `v = 1`, `v = d`, `epsilon = 1`, `beta` near `1/4`, and moderate or tiny `delta` leave the bounds valid.
- Contribution to target step: It removes the apparent `t,m,n,L,B` circularity and supplies the quantitative input for the public teacher witness.
- Verdict: `PASS`
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition proves the accepted explicit witness `bar k`, the exact teacher margin, the least feasible integer `k`, its public bound, and the realized tuple with all ceilings retained.
- Proof validity: With `C_teach = 2^12 A_def^2`, the inequality `A_def (1 + log C_teach) <= C_teach/4` makes the defect at `bar k` at most `C_teach R_T/4`; a second quarter pays the additive margin `2`. Thus the feasible set is nonempty before its minimum is taken. Well-ordering gives `2 <= k <= bar k`, the ceiling gives `bar k <= 2 C_teach R_T`, and `n_0 >= 2`, `d >= 1` give `p_0 = n_0 d >= max{n_0,d+1}`.
- Cited-result and assumption audit: This is a direct scalar consequence of the result labeled `lem:step-001-envelope`; it uses no event, generated list, source-success claim, or hidden monotonicity assumption.
- Rigor checklist: Feasibility is checked at a completely defined candidate. Monotonicity of the feasible set is neither asserted nor needed. The minimum is taken only after nonemptiness is proved, and the final tuple is deterministic and public.
- Local adversarial test: A nonmonotone feasible set, odd `k`, `k = 2`, `d = 1`, the ceiling in `bar k`, and a large universal defect constant are all covered by the witness argument.
- Contribution to target step: It establishes the noncircular teacher envelope and exposes the required `d^2/epsilon` dependence.
- Verdict: `PASS`
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: The proposition totalizes precisely the pointwise quotient procedure fixed by the setting and sketch, preserves exact source-valid successful paths, and exports no premature measurability, privacy, or utility conclusion.
- Proof validity: Parameters, tie breaking, decompositions and list orderings on valid states, the common partition rule, stage scores, stopped AboveThreshold transcript, Sparse Sample law, and default output are fixed before sampling. Empty or invalid local states map to empty lists; all-empty stages have score zero; and no-success, invalid-transcript, `perp`, out-of-support, and residual terminal paths return `bar c_0`. For finite capped lists the Sparse Sample normalizer is positive and finite, so every path has a defined output in `H_C`.
- Cited-result and assumption audit: The source mechanism laws and list cap were already restated and checked in the cited-result section and the result labeled `lem:step-001-calibration`. Exact source-list identity is used only on its stated local-validity branch; invalid or unavailable objects are totalized rather than assumed. Kernel measurability, list locality, sensitivity, DP, and PAC success remain later derived interfaces.
- Rigor checklist: The table covers empty restrictions, empty unions, oversized/nonfinite/non-`H_C` lists, false-positive stages, no legal stage, source failures, `perp`, and stage exhaustion. The same data-independent partition is reused at all `d+1` stages, and identical local states receive identical choices. Exact source-valid successful paths are unchanged.
- Local adversarial test: All lists empty, one invalid list, a false positive on an empty union, Sparse Sample returning `perp`, an invalid transcript, a normal actual-item output, and an unclassified terminal path all yield a defined `H_C`-valued result.
- Contribution to target step: It supplies the total pre-sampling procedure consumed by later kernel, privacy, and utility steps without treating a generated success condition as primitive.
- Verdict: `PASS`
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. The quotient-tree transfer is isolated as the result labeled `lem:step-001-quotient-ld`; the dimension range and source calibrations, coupled envelope, feasible witness, and totalization each have their own named result. Calculations within the envelope are components of its single scalar-domination claim, and the totalization table exposes every path case.

The proof does not use a bare unit ID, subsection title, prior review, or global diagnostic as mathematical authority. The target assembly uses theorem-style named references, and every cited Lyu result consumed by this step is restated in current notation with assumptions and convention limits.

## Target Claim Audit

The six named results jointly establish the exact accepted `step_001` row: the `d = 0` branch; positive-branch allocations and legal dictionary; exact list cap and conditional mechanism calibrations; noncircular witness and least teacher count; teacher margin and `d^2/epsilon` envelope; and a total pointwise quotient procedure with every failure path fixed in advance.

The proof uses only the two row-authorized primitive assumptions, has no dependency artifacts, and does not strengthen the theorem regime or alter quantifier order. It correctly defers quotient-kernel measurability, raw record-to-list locality, query sensitivity, positive-branch DP, mechanism success, and PAC utility.

## Explicit Rate Audit

The step is rate-bearing through the teacher envelope. It exposes `d,v,alpha,beta,epsilon,delta` and proves

`k <= 2 C_teach d^2 log(64/(delta beta)) Lambda^2 / epsilon`.

All hidden constants are universal: their only stated inputs are fixed universal `C_blk` and universal source constant `c_AT`. There is no hidden dependence on the class, domain, distribution, sample, decomposition, list, event, or output. The mode is deterministic parameter feasibility at a fixed sample horizon; no positive-branch probability or population-risk conclusion is made. The exact horizon is `N = 0` for `d = 0` and `N = k m(k)` for `d >= 1`.

Ceiling and absorption obligations are explicit in (3.3), (3.5), (4.9), and (4.10), including the final ceiling bound. The four confidence shares sum to `beta`, while the two source-side privacy reservations retain their conditional interfaces. The construction is valid for every fixed `0 < delta < 1`; the asymptotic `N delta -> 0` convention is correctly deferred to the later rate specialization. The exact `d = 0` baseline is recovered, and no premature `v = d` or final `R_VC` claim is made.

## Notation Surface Audit

The notation surface is controlled and classified. Setting-defined objects retain their meanings. The candidate dictionary and realized tuple are the minimal public-facing outputs needed downstream; `ell,R_T,C_teach` and the quotient-LD bound are appendix-local; and `u_C,A_log,A_def,t_C`, representative choices, the source-failure token, and the totalization table are proof-local. Every constant and helper has explicit provenance, and no alias hides a boundedness, finiteness, source-hypothesis, or rate obligation.

## Target-Step Assembly Audit

The proposition labeled `prop:step-001-zero` closes the null branch. The lemma labeled `lem:step-001-quotient-ld` supplies the missing source class premise. The lemma labeled `lem:step-001-calibration` then establishes the dictionary and source-side caps; `lem:step-001-envelope` controls the fully defined candidate tuple; `prop:step-001-teacher` proves feasibility, takes the least teacher count, and fixes the public tuple; and `prop:step-001-totalization` turns that tuple into the total pointwise procedure. Their conclusions match without an unstated bridge and imply the exact target-step interface.

## Review Rationale

`ACCEPTED` is the smallest sound status because attempt 2 repairs the sole supplied prior blocker inside the unchanged sketch row: the lemma labeled `lem:step-001-quotient-ld` proves `LD(H_i^r) <= d` before Lyu Corollary 4.1 is applied. The frozen source statement, every source hypothesis, quotient-label boundary case, scalar and ceiling calculation, teacher-margin closure, totalization path, rate mode, delta mode, and theorem-style assembly reference pass a fresh six-unit audit. No step, sketch, or dependency repair remains, so the smallest retry target is `None`.
