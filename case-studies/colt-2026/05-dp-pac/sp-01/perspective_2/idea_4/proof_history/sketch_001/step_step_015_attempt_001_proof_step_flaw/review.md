# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_015`
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_015/proof.md`
- Reviewed proof SHA-256: `db98cdf01c034c742d9c7df0898d227e60a5d796c4211b7b7c26704b5abcce38`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs: `step_002` `880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f` / `090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5`; `step_003` `092c5ba976f43a4b7d1bf746aba05c1caa0d49f2bd3de55a254f58dc6e4c4a7f` / `5ba08c887b44fc901e74bd3bc2793a06e3accf2a7d999f62532ec042c211eb87`; `step_004` `dde324f382fb084af67f773a97140eb205597d15f7ab9d83e13605bf62b80cc8` / `254e4b8ef32bae1676cfb9512e4987bfdf81b629c38b193d4787dcf192b82fa0`.
- Independently checked primary source: Xin Lyu, arXiv:2510.00076v1, `submission/main.tex`, SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: It states exactly the old arm's required `d=0` no-data branch under the two relevant primitive assumptions.
- Proof validity: Littlestone dimension zero and nonemptiness force the quotient class to be a singleton; the Dirac law is a kernel, is data-independent, and has zero decoded risk by the accepted factorization and risk identities.
- Cited-result and assumption audit: Accepted `step_002` supplies precisely dimension preservation, factorization, and risk transfer. No positive-dimensional mechanism or generated condition is invoked.
- Rigor checklist: The unique empty input, improper-output codomain, raw pullback, privacy mode, and zero-risk quantifiers are all covered.
- Local adversarial test: Multiple syntactic names cannot survive because `C` is a set of functions; any two distinct functions would give a depth-one Littlestone tree.
- Contribution to target step: Closes the exact null branch and its baseline invariance obligation.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: It defines every old-arm scalar independently of the VC-sensitive arm, including confidence/privacy shares, block size, stage scales, list cap, Sparse Sample threshold, and both noise tolerances.
- Proof validity: Positivity, finiteness, integrality, ceiling handling, and monotonic stage list bounds follow directly from the parameter regime and Lyu's leaf/essential-list cap.
- Cited-result and assumption audit: Lyu Definition 4.2, Lemma 4.1, and Corollary 4.1 support the `p^d 2^{d^2}` cap. Lyu Algorithm 1 and Lemma 3.1 use exactly `B >= 10 log(L/delta)/epsilon` and yield `(2 epsilon,delta)` privacy.
- Rigor checklist: The `d>=1`, `t>=2`, `0<delta<1`, and ceiling boundaries make all logarithms, powers, and integer parameters legal.
- Local adversarial test: `d=1`, `t=2`, delta near one, and an infinite concept class still give finite lists and a positive failure-symbol weight.
- Contribution to target step: Supplies the primitive-to-derived scalar interface for all later old-arm units.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: It proves the noncircular, ceiling-aware logarithmic and mechanism-defect envelope required before selecting the actual teacher count.
- Proof validity: The bounds on `log t_C`, `a_o`, `log Q_o`, `m_o`, and `log L_o` retain every exposed parameter; the displayed estimates for `B_o`, `tau_SS,o`, and `tau_AT,o` correctly isolate the nonlogarithmic privacy charge.
- Cited-result and assumption audit: The only source constant is the universal constant hidden by Lyu Lemma 3.2 in its `K=1` AboveThreshold case. All other estimates are local scalar algebra.
- Rigor checklist: The ceiling remainder is controlled because the unrounded block expression exceeds one. Hidden constants depend only on fixed universal constants.
- Local adversarial test: Tiny delta, tiny epsilon, large `d`, and large candidate `C` change only the displayed teacher scale and allowed logarithmic envelope.
- Contribution to target step: Provides a feasible witness bound without presuming feasibility of the least teacher.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: It fixes the least feasible old teacher, proves its existence from an explicit witness, and exports the exact mechanism margin and irreducibility-scale lower bound.
- Proof validity: The choice `C_teach,o=(16A_o)^2` leaves a positive quarter of the teacher scale after all three defects; that quarter exceeds the additive slack. Integer well-ordering then gives the least feasible teacher and all ceiling-aware bounds.
- Cited-result and assumption audit: It consumes only units 002-003. No random event, source success claim, or VC-arm output enters the feasibility proof.
- Rigor checklist: Both inequalities in (4.6) are checked, including `p_o,0=n_o d>=max{n_o,d+1}` for every `d>=1`.
- Local adversarial test: The smallest legal `d=1`, `k=2` boundary does not make a denominator vanish; an actually infeasible `2` simply causes minimization to choose a larger integer.
- Contribution to target step: Noncircularly produces the exact public old tuple consumed by the procedure.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: It totalizes every old source path while preserving the exact restriction, decomposition, list, AboveThreshold, and Sparse Sample behavior on valid paths.
- Proof validity: Countably many local quotient states permit fixed identical-state choices; every nonempty restriction has a valid optimal decomposition, every exact essential set is finite, and all empty/invalid/exhausted/failure paths terminate at the fixed default.
- Cited-result and assumption audit: Lyu's decomposition-existence and essential-list results supply only pointwise mathematical objects. Countable-domain measurability is not assumed here and is correctly deferred to unit 006.
- Rigor checklist: Empty restrictions, over-cap or malformed source objects, empty unions, no Above report, `perp`, and invalid transcripts are explicitly total. The finite Sparse Sample normalizer is positive.
- Local adversarial test: An arbitrary nonrealizable input may empty one or every restriction, and a fallback value may also occur in a list; status-based totalization remains unambiguous.
- Contribution to target step: Produces an all-input old pointwise law and block-local lists before kernel, privacy, or utility use.
- Verdict: PASS
- Repair direction: None.

### unit_006: proposition

- Statement fidelity: It exports the exact old quotient kernel, raw pullback, common output codomain, and decoder-risk interface required by the sketch row.
- Proof validity: Every quotient input is an atom of a countable discrete space, so the independently totalized pointwise laws promote to a kernel; composition with measurable `T_N` gives the raw kernel.
- Cited-result and assumption audit: Accepted `step_002` and `step_003` claims are current and hash-matched. Their promotion and pullback statements explicitly cover separately supplied totalized old-Lyu laws.
- Rigor checklist: Arbitrary labels, duplicate records, varying finite supports, fallback, and improper `H_C` outputs remain in the domain and codomain.
- Local adversarial test: Countably infinite `Q_C`, all-fallback inputs, and two raw neighbors collapsing to the same quotient input preserve the kernel and exact risk identity.
- Contribution to target step: Establishes the measurable common interface before either DP or PAC is claimed.
- Verdict: PASS
- Repair direction: None.

### unit_007: lemma

- Statement fidelity: It deliberately uses the coarse exponent `d`, not `v`, and proves the exact finite trace multiplicity required for the old arm.
- Proof validity: Xor with the fixed label vector bijects prediction and error traces; Sauer--Shelah with `VC(bar C)=v<=d` and `n_o>=d` yields `(en_o/d)^d`.
- Cited-result and assumption audit: Dimension preservation is supplied by accepted `step_002`; Sauer--Shelah is fully restated with its premises.
- Rigor checklist: Infinite classes, repeated quotient points, and indexed tuples are handled; repetitions can only reduce trace count.
- Local adversarial test: At `d=1` and at `v<d`, the deliberately coarser count remains valid without introducing another class-size parameter.
- Contribution to target step: Supplies the old `d`-trace factor that leads to the `d^3/alpha` block scale.
- Verdict: PASS
- Repair direction: None.

### unit_008: lemma

- Statement fidelity: It proves both fixed-trace branches under without-replacement sampling, including the mean-zero and exact branch-boundary cases.
- Proof validity: Lyu Proposition 2 gives the high-mean exponent with its factor two and denominator three. Maclaurin's inequality gives the Bernoulli mgf domination for a uniform subset, and KL optimization plus the displayed elementary bound gives the near-zero exponent.
- Cited-result and assumption audit: The frozen source has the harmless printed `k`/`t` typo but exactly the probability inequality used. The source result is not applied to the near-zero branch.
- Rigor checklist: The strict high branch and closed low branch partition all means; `mu=0` is separated before KL differentiation.
- Local adversarial test: `mu=0`, `mu=gamma_o/3`, and `mu=1` all satisfy the asserted event and exponent conventions without a false relative-error claim at zero.
- Contribution to target step: Supplies the two concentration mechanisms needed for source inclusion.
- Verdict: PASS
- Repair direction: None.

### unit_009: proposition

- Statement fidelity: It defines the exact simultaneous old event and charges its failure to `beta/4` independently of every VC-arm event.
- Proof validity: A finite union over blocks and coarse traces gives (9.2). Equations (9.5)-(9.9) correctly solve `n_o=k_o m_o`, retain the ceiling, and make the negative exponent dominate trace and confidence logarithms.
- Cited-result and assumption audit: Only units 004, 007, and 008 are consumed. Conditional block independence is never asserted; only each block's marginal uniform-without-replacement law is used.
- Rigor checklist: The constants satisfy `2^20/3600>C_5+2`; integration over the master sample converts the uniform conditional bound to the unconditional charge.
- Local adversarial test: Dependent blocks conditional on the master sample, duplicate records, `d=1`, and a ceiling-dominated block size do not alter the finite-union argument.
- Contribution to target step: Produces the old source-good event and its independent confidence ledger entry.
- Verdict: PASS
- Repair direction: None.

### unit_010: lemma

- Statement fidelity: It states the omitted endpoint, exact restriction index shift, half-scale identity, and cross-teacher inclusion required by the accepted sketch.
- Proof validity: The two displayed constant inequalities are correct for every `d>=1`; the low-error and high-error clauses of the generated event then separately imply `H_{i_*}^{r+1} subseteq H_i^r`.
- Cited-result and assumption audit: No literal equality with Lyu's printed stage lists is claimed. The source's Lemma 4.3 is uniform in `p`, and the exact current pair is `p_{r+1}=2p_r`.
- Rigor checklist: The transition range is exactly `0<=r<d`, so `r+1<=d` in the low-error use of `rho^d`.
- Local adversarial test: The first transition at `d=1`, empirical mean zero, and the branch boundary `gamma_o/3` satisfy the stated inclusions.
- Contribution to target step: Supplies source-convention compatibility for every DDim transition.
- Verdict: PASS
- Repair direction: None.

### unit_011: lemma

- Statement fidelity: It produces exact essential-SOA lists, source leaf witnesses, and both irreducibility scales for each nonempty old restriction.
- Proof validity: Lyu Definition 4.2, the existence claim, Lemma 4.1, Definition 4.3, and Corollary 4.1 imply the finite cap and witness. The scale is at least `p_o,0`, and irreducibility is monotone down to `n_o` and `d+1`.
- Cited-result and assumption audit: Every cited source statement was checked in the frozen v1 source. Empty restrictions are explicitly excluded from nonempty-class uses.
- Rigor checklist: Leaf dimensions satisfy `0<=t<=d`, and extending a shorter point tuple verifies the downward irreducibility implication.
- Local adversarial test: A zero-dimensional leaf, an infinite parent class, and duplicate essential occurrences retain a finite set of actual `H_C` functions and the required scales.
- Contribution to target step: Supplies legal source lists, exact SOA identities, and the empirical-contradiction resource.
- Verdict: PASS
- Repair direction: None.

### unit_012: proposition

- Statement fidelity: It proves the integer DDim potential drop and existence of an actual score-`k_o` stage without importing a source success event.
- Proof validity: Realizability keeps all restrictions nonempty. Under exact inclusion and doubling, Lyu Lemma 4.3 gives nonincrease; equality would make one next-stage SOA essential to every current teacher, contradicting score below `k_o`. Corollary 4.1 Item 4 supplies common support at DDim zero.
- Cited-result and assumption audit: The universal quantifier over arbitrary optimal current decompositions needed for essentiality is present in Lyu Lemma 4.3 and is used correctly.
- Rigor checklist: `M_o,r` is integer-valued in `[0,d]`; exactly `d` possible transitions suffice to force a common stage among `d+1` stages.
- Local adversarial test: Initial `M_o,0=0`, first-drop, last-stage success, singleton restrictions, and `d=1` all satisfy the potential argument.
- Contribution to target step: Produces the noncircular common-score mechanism source.
- Verdict: PASS
- Repair direction: None.

### unit_013: lemma

- Statement fidelity: It gives the exact AboveThreshold noise event, detection guarantee, selected-stage score, and earlier-Below bound.
- Proof validity: Lyu Algorithm 2 adds one `Lap(1/eta_o)` draw to each query and compares to the fixed threshold. A union bound over at most `d+1` draws gives (13.1); the score-`k_o` stage and teacher margin force a first legal Above, and the same noise bound gives (13.2)-(13.3).
- Cited-result and assumption audit: The stopped-at-first-Above process is the `K=1` prefix/postprocessing case of Lyu Lemma 3.2. No noisy-threshold convention is incorrectly imported.
- Rigor checklist: Earlier and selected stages are treated under different one-sided noise inequalities, and the strict margin ensures `tau_AT,o<k_o/2`.
- Local adversarial test: Empty early lists, a false-positive early stage, immediate true success, and success only at stage `d` all remain legal.
- Contribution to target step: Converts deterministic common support into a selected stage with enough score for Sparse Sample.
- Verdict: PASS
- Repair direction: None.

### unit_014: proposition

- Statement fidelity: It proves directly from the exact Sparse Sample law that the selected output is an actual list item rather than the failure symbol.
- Proof validity: Lyu Algorithm 1 assigns weights `exp(epsilon_SS,o score)`. Comparing the failure weight to one maximum-score item's weight and using the teacher margin gives exactly the bound in (14.1).
- Cited-result and assumption audit: The proof does not use the source's commented-out utility claim. The finite effective domain and source list cap are locally discharged.
- Rigor checklist: Conditioning on selected lists is legitimate; the output support is their finite union plus `perp`, and unused additive slack only strengthens the inequality.
- Local adversarial test: A singleton union, all lists sharing one item, maximal union size, and `B_o` near the selected score all satisfy the weight-ratio calculation.
- Contribution to target step: Produces an actual old quotient-function output and the third confidence share.
- Verdict: PASS
- Repair direction: None.

### unit_015: lemma

- Statement fidelity: It proves block-list locality, sensitivity one, and the conditional one-list adjacency required for all-input privacy, including different neighboring stopping paths.
- Proof validity: Under a fixed partition, one record replacement changes only one local block state. Every other list is identical at every stage, pointwise occurrence counts change by at most one, and so does their maximum.
- Cited-result and assumption audit: The conclusion follows from the locally totalized block functions; no utility event, realizability assumption, or source privacy conclusion is presumed.
- Rigor checklist: Adaptive composition conditions on the same first-transcript value, hence on the same selected stage; it does not require neighboring executions to realize the same transcript or stopping stage.
- Local adversarial test: Replacement into or out of an empty list, sanitized invalid lists, no-success versus success paths, and all-empty tuples preserve the claimed sensitivity and conditional adjacency.
- Contribution to target step: Supplies the exact data-to-mechanism privacy interface on arbitrary inputs.
- Verdict: PASS
- Repair direction: None.

### unit_016: proposition

- Statement fidelity: It proves event-free quotient privacy and transfers it to every raw replace-one input.
- Proof validity: The `K=1` Lyu AboveThreshold bound costs at most `(epsilon/4,delta/2)` under the chosen `eta_o`; Lyu Lemma 3.1 costs `(epsilon/4,delta/2)` for the conditionally selected list tuple. Adaptive composition yields `(epsilon/2,delta)`, which is safely weakened to the target `(epsilon,delta)`.
- Cited-result and assumption audit: Query sensitivity and one-list replacement are supplied by unit 015; the list cap and `B_o` threshold are supplied by units 002 and 011. Accepted `step_002` supplies equal-or-neighbor raw transport.
- Rigor checklist: Constant second-stage kernels on no-success paths, differing stopping paths, postprocessing to fallback, and mixing over common data-independent partitions are covered.
- Local adversarial test: Arbitrary nonrealizable labels, a changed record in any block, immediate/no success, `perp`, exhaustion, and same-cell raw replacement all remain within the all-input DP proof.
- Contribution to target step: Establishes the raw learner's complete privacy interface without consuming utility.
- Verdict: PASS
- Repair direction: None.

### unit_017: proposition

- Statement fidelity: It proves exact SOA identity, fixed improper-family membership, and the required master empirical certificate on the old core event.
- Proof validity: Every leaf member has producer-block error at most `gamma_o`; the two clauses of `E_good,o` give master error below `2 gamma_o`. If the leaf SOA had larger error, restriction by all its labels on the master points would be empty, contradicting `n_o`-irreducibility exactly as in Lyu Theorem 3's valid proof argument.
- Cited-result and assumption audit: Lyu Lemma 4.2 supplies only `LD(hat C_{d+1})<=d`. The malformed Theorem 3 output display and its unsupported probability-one amplification sentence are explicitly excluded.
- Rigor checklist: The selected output may be improper; the empirical argument uses the same actual quotient function throughout and tolerates repeated sample points.
- Local adversarial test: A zero-dimensional leaf, empirical mean zero, an infinite parent class, and `d=1` all leave the irreducibility contradiction valid.
- Contribution to target step: Produces the exact empirical certificate needed for producer-block reconstruction.
- Verdict: PASS
- Repair direction: None.

### unit_018: proposition

- Statement fidelity: It independently instantiates the occurrence-mark construction for the old transcript and proves exact projection to the released old law.
- Proof validity: On every actual path, exact Sparse Sample support from the totalized procedure makes the occurrence set nonempty; on nonactual paths mark zero is used. The measurable finite weights form a probability vector, integration gives a marked law, and finite-section summation gives exact projection.
- Cited-result and assumption audit: Accepted `step_003` supplies countable promotion and finite-list/status measurability; accepted `step_004` supplies the fully proved finite-mark construction. Although unit 014 states the high-probability actual-output event, all-path occurrence nonemptiness used here comes from unit 005's exact support definition, so no utility condition is smuggled into the kernel.
- Rigor checklist: Marking occurs before internal-state integration; paths with the same terminal output but different occurrence sets keep distinct weights. The pair is not claimed private or released.
- Local adversarial test: One, all, or no producer occurrence; repeated positions; a fallback value equal to an actual candidate; and different partitions all preserve projection.
- Contribution to target step: Supplies the analysis-only producer coordinate with zero released-output residual.
- Verdict: PASS
- Repair direction: None.

### unit_019: lemma

- Statement fidelity: It proves producer-local finite reconstruction, the exact complement empirical-error factor, and the pathwise inclusion needed before conditioning.
- Proof validity: Each all-stage list union is a measurable function only of its producer block and has size at most `(d+1)L_o`. On the core, full-sample error at most `alpha/8` gives complement error at most `k_o alpha/[8(k_o-1)]<=alpha/4`.
- Cited-result and assumption audit: Units 005, 017, and 018 provide respectively locality, empirical error, and occurrence membership. No independence of an adaptively selected output is assumed.
- Rigor checklist: The bad-output event is first included in a finite union over realized producer candidates; only later units condition on producer data.
- Local adversarial test: `k_o=2`, immediate or late selection, multiple producer marks, and duplicate candidates satisfy the factor-two and finite-union bounds.
- Contribution to target step: Converts adaptive output error into finitely many fixed-candidate complement events.
- Verdict: PASS
- Repair direction: None.

### unit_020: lemma

- Statement fidelity: It gives the required one-sided iid complement tail for each fixed producer-local candidate of population error above `alpha`.
- Proof validity: Conditional on a fixed partition and producer block, the candidate is fixed and the disjoint complement records remain iid. The Bernoulli lower-tail bound with `theta=3/4` yields the exponent `9 alpha M/32`.
- Cited-result and assumption audit: The standard Chernoff fact is restated with its exact probability mode and hypotheses; unit 019 discharges producer locality.
- Rigor checklist: The strict condition `p>alpha` is used only to weaken the exponent and to include the `alpha/4` event in the `p/4` event.
- Local adversarial test: Population risk arbitrarily close to `alpha`, `k_o=2`, and a data-dependent candidate fixed after conditioning all preserve the asserted bound.
- Contribution to target step: Supplies the population-error tail used in the finite reconstruction union.
- Verdict: PASS
- Repair direction: None.

### unit_021: proposition

- Statement fidelity: It proves the unconditional quotient and raw `(alpha,beta)` PAC guarantee with four explicitly separated confidence charges.
- Proof validity: Equations (21.2)-(21.6) make the holdout exponent dominate `k_o(d+1)L_o/beta_gen,o`. Summing the pathwise marked inclusion before producer conditioning, then applying unit 020 candidate by candidate, yields the core bad-risk bound. The three remaining failures sum with it to exactly `beta`.
- Cited-result and assumption audit: Accepted iid pushforward, exact risk transfer, and marked projection are used at their exact interfaces. No generic VC generalization theorem or uncountable supremum is invoked.
- Rigor checklist: Partition randomness, producer conditioning, mechanism randomness, mark randomness, and projection are handled in the correct order. The `E_SS,o` conditional failure bound is integrated only on `E_good,o cap E_AT,o`.
- Local adversarial test: Countably infinite quotient, infinite concept class, `k_o=2`, fallback mark zero, and repeated records retain finite reconstruction and exact confidence accounting.
- Contribution to target step: Establishes the old arm's complete realizable population guarantee independently of the VC arm.
- Verdict: PASS
- Repair direction: None.

### unit_022: proposition

- Statement fidelity: It eliminates every old auxiliary and proves the exact `R_old` arm with universal hidden dependence and no additional positive power of `d`.
- Proof validity: Monotonicity transfers the explicit witness envelopes to the least teacher. The resulting bounds `k_o=O(d^2 log(1/(delta beta)) Lambda^2/epsilon)` and `m_o=O(d^3 Lambda^4/alpha)` multiply to the displayed `d^5` rate, with ceilings retained.
- Cited-result and assumption audit: The rate uses only the local scalar producer and the setting definitions of `Lambda` and `R_old`; no source tilde notation is treated as proof.
- Rigor checklist: `log(64/(delta beta))<=4 log(1/(delta beta))` holds in the full parameter regime. Hidden constants depend only on fixed universal source/current constants.
- Local adversarial test: `d=1`, tiny delta/epsilon, beta near `1/4`, and ceiling-dominated scalar values introduce only allowed `Lambda` powers.
- Contribution to target step: Exports the normalized `K_old Lambda^6 R_old` bound for later arm comparison.
- Verdict: PASS
- Repair direction: None.

### unit_023: proposition

- Statement fidelity: It audits all requested null, first-positive, class-cardinality, improper-output, fallback, ceiling, confidence, and delta-schedule boundaries.
- Proof validity: Each item follows from a named prior result; multiplying the finite-parameter rate by delta gives the stated sufficient old-arm schedule without conflating it with the VC-arm schedule.
- Cited-result and assumption audit: Only accepted/local completed arm conclusions are consumed. No new assumption or asymptotic mode is introduced.
- Rigor checklist: Fixed positive delta remains valid for the finite theorem; `N_old delta->0` is asserted only under its displayed sufficient sequence condition.
- Local adversarial test: `d=0`, `d=1`, finite and infinite `C`, `v=d`, improper output, and fixed versus vanishing delta all follow the correct branch.
- Contribution to target step: Closes the explicit boundary and baseline-reduction obligations for the old arm.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the 23-unit map. Scalar existence and ceilings are localized in units 002-004; totality and kernels in units 005-006; trace counting, both without-replacement tails, and the fixed point in units 007-009; source indexing, essential lists, and DDim descent in units 010-012; mechanism utility and all-input privacy in units 013-016; exact SOA utility and marked finite reconstruction in units 017-021; and rate/boundary specialization in units 022-023. The standard Sauer--Shelah, Maclaurin, Bernoulli Chernoff, composition, and postprocessing facts are restated before use. The proof does not use `proof_history` or the global diagnostic as evidence.

## Target Claim Audit

The submitted proof establishes the exact accepted `step_015` row. It constructs an old-arm pointwise procedure and measurable quotient/raw kernels on the same `H_C`, `T_N`, and decoder interface as the other arms; proves privacy for every raw neighboring labeled pair independently of realizability; proves unconditional distribution-free realizable PAC utility; constructs an unreleased marked lift with exact projection; and proves `N_old<=K_old Lambda^6 R_old`. The quantifiers cover arbitrary `D`, arbitrary `c in C`, finite and infinite `C`, improper outputs, and all totalized paths. The old event, lists, selected stage, empirical certificate, privacy proof, PAC proof, and rate are produced independently and do not consume any VC-arm success output.

## Explicit Rate Audit

The rate exposes `d,alpha,beta,epsilon,delta`; `v` is used only through the valid coarse inequality `v<=d`, and `|C|` is absent. `K_old` and the logarithmic exponent are universal and may not depend on the class, distribution, sample, decomposition, list, event, mark, or stopping stage. The probability mode is all-input approximate DP plus unconditional high-probability realizable PAC; the horizon is fixed sample; and the norm is population zero-one error under the exact quotient/raw identity. Teacher feasibility (3.3)-(4.8), trace closure (9.5)-(9.9), finite reconstruction (21.2)-(21.6), and rate elimination (22.2)-(22.4) display every absorption inequality. The polynomial multiplication is exactly `d^2 * d^3=d^5`; all remaining factors are displayed privacy/confidence terms or powers of `Lambda`. The exact `d=0` recovery and old `d^5` baseline are preserved, and fixed-delta validity is not confused with an optional vanishing-delta sequence.

## Notation Surface Audit

The public-facing export is limited to the old quotient kernel, its raw pullback, the marked lift/projection, `N_old`, and the DP/PAC/rate tuple. The scalar dictionary and generated events/lists are correctly classified appendix-local; temporary logarithmic constants, KL variables, occurrence weights, and sampling variables are proof-local. Every helper has provenance in primitive setting quantities, accepted dependencies, a checked source constant, or a named local unit. All 23 non-atomic units have paper-ready theorem-style titles and unique labels. A scan found no duplicate labels, bare `ref`/`label`/`cite` fragments, odd dollar delimiters, or malformed command fragments.

## Target-Step Assembly Audit

The assembly cites named propositions and lemmas rather than unit IDs or subsection prose. Units 001-006 give exact branch activation, tuple totality, and common kernels; units 007-014 give independent old utility through an actual selected function; units 015-016 give event-free raw privacy; units 017-021 give exact empirical identity, marked finite reconstruction, and population PAC utility; and units 022-023 give the explicit rate and boundary audit. Together with the exact accepted dependency interfaces and the independently checked source statements, these results imply every component of the target tuple with no missing bridge or changed sketch interface.

## Review Rationale

`ACCEPTED` is the smallest sound status. The proof matches the accepted old-arm interface, discharges every source convention and source hypothesis locally, and survives the requested boundary, stopping-path, conditioning, confidence, and explicit-rate stress tests. No accepted dependency is flawed, no new bridge or dependency is needed, and no local repair remains; therefore the smallest retry target is `None`.
