# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_001
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_3/proof_steps/step_001/proof.md
- Reviewed proof SHA-256: 061c31df9fd9ebb495de80126984df01e0f75a7e8d711b96fb14c6567499b486
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Dependency step artifacts: None.
- Primary-source preflight: Xin Lyu, Private Learning of Littlestone Classes, Revisited, arXiv:2510.00076v1; frozen submission/main.tex SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Boundary and positive-dimensional entry

- Statement fidelity: The proposition states exactly the accepted boundary split: the d = 0 singleton and zero-sample learner, and 1 <= v <= d on the d >= 1 branch, under only assump:finite-littlestone.
- Proof validity: Two distinct concepts differ at a point and therefore shatter a depth-one Littlestone tree. The contrapositive proves singleton structure at d = 0. The VC-to-Littlestone tree construction proves v <= d, while a depth-one Littlestone tree proves v >= 1 when d >= 1.
- Cited-result and assumption audit: No external result is used beyond the definitions of VC and Littlestone dimension. Nonemptiness of C is primitive. The deterministic length-zero learner uses no data or generated condition.
- Rigor checklist: The only length-zero input has the same deterministic output law, so the learner is (0,0)-DP; uniqueness makes population error exactly zero for every D and target c in C. No positive-branch expression, particularly 1/v, is evaluated at d = v = 0.
- Local adversarial test: The singleton, empty-sample, arbitrary-domain, and d = 1 boundaries pass. Two distinct functions would immediately contradict d = 0.
- Contribution to target step: It supplies exact zero-sample recovery and makes every positive-branch denominator legal.
- Verdict: PASS
- Repair direction: None.

### unit_002: Candidate and allocation legality

- Statement fidelity: The lemma supplies the fixed allocations, all candidate scalar domains, integer and ceiling legality, monotonicity, and n(t) >= v required before teacher minimization.
- Proof validity: The parameter ranges imply g_delta > 0, eta > 0, epsilon_s > 0, a(t) >= v >= 1, Q(t) > e, and positive arguments for every logarithm. Monotonicity propagates correctly through multiplication by t, positive scaling, ceilings, and the definitions of n, p_d, L, B, and tau_SS. The proof does not assume that the teacher feasibility predicate is monotone.
- Cited-result and assumption audit: Only assump:finite-littlestone, assump:approximate-dp-regime, and the prior positive-branch conclusion are used. The AboveThreshold and Sparse Sample allocations are fixed without assuming sensitivity, privacy, or utility.
- Rigor checklist: All alpha, beta, epsilon, and delta allocation domains are checked. Since C_blk >= 1, alpha^(-1) > 4, a(t) >= v, and log Q(t) > 1, the displayed lower bound gives m(t) > 4v and n(t) > 8v >= v. All integer powers and ceilings are legal for integer d,t >= 1.
- Local adversarial test: The derivation remains valid at d = v = 1, t = 2, beta approaching 1/4 from below, epsilon = 1, and arbitrarily small positive alpha, beta, delta, or epsilon. Ceiling flattening does not affect the needed nondecreasing conclusions.
- Contribution to target step: It fixes the exact candidate dictionary and proves n(t) >= v before a candidate is selected.
- Verdict: PASS
- Repair direction: None.

### unit_003: Ceiling-aware teacher-candidate log closure

- Statement fidelity: The lemma proves the accepted ceiling-aware bounds for log bar_k_c and log n(bar_k_c), with constants independent of branch objects and exposed parameters.
- Proof validity: It controls log G using the beta and nested-delta logarithms already present in lambda, applies ceil(x) <= 2x only after proving x >= 1, and expands a, Q, m, and n without circular dependence. The estimates for log(a/v), log Q, and log log Q have the required direction.
- Cited-result and assumption audit: This is a direct scalar derivation from the candidate dictionary. Its only permitted fixed dependence is on universal C_blk; fixed universal c >= 1 remains displayed through 1 + log c.
- Rigor checklist: Every ceiling in bar_k_c and m(bar_k_c) is retained. The proof exposes log(1/alpha), log(1/beta), log(1/epsilon), and the nested delta logarithm. Constants are uniform over d, v, alpha, beta, epsilon, and delta.
- Local adversarial test: Tiny delta is handled through log G = O(lambda), not the false stronger statement G = O(lambda). Tiny alpha and epsilon enter only logarithmically in this closure. At d = v = 1, H_* > 1 and the ceiling inequalities remain legal.
- Contribution to target step: It proves the bar_k and n(bar_k) parts of LogClosure for the exact candidate sample size.
- Verdict: PASS
- Repair direction: None.

### unit_004: Exact essential-list envelope

- Statement fidelity: The lemma exports the exact actual-function list envelope consumed by the accepted half-scale branch and completes the required logarithmic closure for p_d and L.
- Proof validity: Empty classes are handled directly. For nonempty H contained in C, Littlestone-dimension monotonicity and positive-integer p_r(t) discharge Corollary 4.1 Item 1. Since r <= d, p_r(t) <= p_d(t). The exact identity log L(t) = d log n(t) + d log d + 2 d^2 log 2 is correct.
- Cited-result and assumption audit: The frozen source confirms that Corollary 4.1 Item 1 counts actual (p,d)-essential hypotheses and gives exactly p^d 2^(d^2). No support, transfer, DDim-zero, or nonemptiness conclusion from Items 2-4 is imported.
- Rigor checklist: The source convention requires positive integers p,d and LD(H) <= d, all of which are discharged. The identity above also yields log p_d(bar_k_c) = O((1 + log c)d lambda) and log L(bar_k_c) = O((1 + log c)d^2 lambda), with universal constants.
- Local adversarial test: Empty restrictions give empty lists, infinite C creates no cardinality problem, and d = 1 gives a finite exact envelope. Equality is equality of functions on X, not equality only on sample traces.
- Contribution to target step: It supplies exact list legality and the universal log p_d and log L controls needed by B and tau_SS.
- Verdict: PASS
- Repair direction: None.

### unit_005: Exact teacher/noise margin

- Statement fidelity: The proposition bounds exactly tau_AT + B(bar_k_c) + tau_SS(bar_k_c), including the Sparse Sample privacy threshold, effective-domain logarithm, confidence allocations, and the ceiling in B.
- Proof validity: The AboveThreshold scale satisfies eta^(-1) <= 8 c_AT G / epsilon. The B calculation uses epsilon_s = epsilon/8, delta_SS = delta/2, and ceil(x) <= x + 1. The effective domain obeys bar_k_c L(bar_k_c) + 1 <= 2 bar_k_c L(bar_k_c). Each term is then dominated by the displayed (1 + log c)d^2 G lambda^2 / epsilon scale under explicit domain inequalities.
- Cited-result and assumption audit: The frozen source confirms Lemma 3.1's exact condition B >= 10 log(L/delta_s)/epsilon_s and its (2 epsilon_s, delta_s)-DP conclusion under one-list addition, removal, or replacement. This unit consumes only the numerical threshold. It neither assumes the later adjacency premise nor asserts privacy.
- Rigor checklist: The additive ceiling one is absorbed using d, G, lambda, and epsilon^(-1) at least one. All alpha-dependence through n and L, all beta and delta logarithms, and the d^2 list exponent remain visible. A_2 depends only on fixed universal C_blk and c_AT.
- Local adversarial test: The bound survives d = 1, tiny delta, tiny alpha, and a ceiling-dominated B. G remains explicit rather than being incorrectly hidden by lambda.
- Contribution to target step: It proves MarginBound at an arbitrary fixed universal witness multiplier c.
- Verdict: PASS
- Repair direction: None.

### unit_006: Feasible witness, least teacher, and realized dictionary

- Statement fidelity: The proposition proves nonemptiness and true least-member semantics of Teacher, 2 <= k <= bar_k, all realized integer parameters, n_0 >= v, and the leaf-scale entry inequality required by the accepted row.
- Proof validity: Since c/(1 + log c) tends to infinity, a single universal C_teach can be frozen with C_teach > 4 A_2(1 + log C_teach). This resolves rather than suppresses the 1 + log c factor. With H_* > log 256 > 2, the linear score satisfies bar_k/2 > 2 C_4 H_* >= C_4 H_* + 2, which dominates the complete loss bound and proves feasibility.
- Cited-result and assumption audit: Only the margin proposition and earlier scalar lemmas are consumed. C_1 through C_4 are frozen universal numbers after C_teach is chosen; none depends on a sample, class object, list, stage, or exposed parameter.
- Rigor checklist: Well-ordering gives the least feasible integer without requiring an upward-closed feasibility predicate. Failure of the defining weak inequality gives the reverse strict inequality for each integer 2 <= t < k. Candidate legality at k gives n_0 >= v. From n_0 >= 2 and d >= 1, n_0 d >= max(n_0,d + 1).
- Local adversarial test: At d = v = 1, p_0 = n_0 >= 2 and p_1 = 2n_0. Arbitrarily small allowed parameters only enlarge the feasible witness. The construction of bar_k never uses the unknown least member k.
- Contribution to target step: It produces the exact realized tuple used downstream and certifies the nonempty feasible set and public teacher envelope.
- Verdict: PASS
- Repair direction: None.

### unit_007: Total arbitrary-input learner

- Statement fidelity: The proposition instantiates the exact accepted stages r = 0,...,d, threshold classes, and half-scale p_r = 2^r n_0 d, and defines every required arbitrary-input and terminal behavior.
- Proof validity: A data-independent h_0 in C exists by nonemptiness. One uniform random permutation partitions the n_0 = km indexed records into k blocks of size m and is reused at all stages. Empty restrictions map to empty lists; nonempty restrictions use exact essential-function lists. Finite list bounds make every score and Sparse Sample domain well-defined. The first-Above and all-Below cases are exhaustive, with actual-item and perp subcases in the first branch.
- Cited-result and assumption audit: The frozen Algorithm 1 has exact codomain union_i L_i together with perp; when all lists are empty, only perp remains. Corollary 4.1 is used only for list size. The r = d endpoint class is defined directly by the accepted threshold formula. No nonexistent source endpoint theorem or source identity for the half-scale p_r is asserted.
- Rigor checklist: Immediate Above, Above at the last stage, all-Below exhaustion, perp, both fallback paths, empty restrictions, empty essential lists, repeated points, inconsistent labels, and randomized partitioning are total. Every output is a binary function on X, and there is at most one Sparse Sample call.
- Local adversarial test: An immediate false Above with all lists empty returns perp and then h_0; all stages empty and all reports Below terminate at h_0. The construction is defined on nonrealizable labeled inputs. It expressly does not infer list sensitivity, privacy, support, mechanism accuracy, or utility from totality.
- Contribution to target step: It exports the exact total learner skeleton and preserves the branch half-scale convention without fabricating a source-scale identity.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No unlisted independent nontrivial subclaim is used. Boundary recovery, scalar legality and monotonicity, logarithmic closure, list finiteness, loss domination, feasible-set nonemptiness and minimality, and all-input totality each have a named theorem-style local result. Uniform finite permutation, well-ordering of a nonempty subset of the natural numbers, and elementary ceiling and logarithm inequalities are atomic steps within those results. The proof does not smuggle in a generated event, list support, source endpoint theorem, raw-record sensitivity, privacy, utility, or PAC conclusion.

## Target Claim Audit

The proof establishes the exact accepted step_001 claim under only assump:finite-littlestone and assump:approximate-dp-regime, with no dependencies. It proves exact d = 0 zero-sample private recovery; the d >= 1 domain 1 <= v <= d; fixed allocations; legal candidate and realized dictionaries; LogClosure and MarginBound; nonempty least-feasible teacher semantics; k <= bar_k; n_0 >= v; n_0 d >= max(n_0,d + 1); and totality on every labeled input. It neither weakens nor strengthens the row into a privacy, utility, trace, support, or generalization statement reserved for later steps.

## Explicit Rate Audit

- Exposed variables are exactly d, v, alpha, beta, epsilon, and delta. The source-compatible factor G = log(64/(delta beta)) remains explicit, while lambda = Lambda contributes only allowed logarithms.
- Hidden constants C_blk, c_AT, C_teach, A_0, A_1, A_2, and C_1 through C_4 are universal. After the one-time choice of C_teach, 1 + log C_teach is universal and independent of every branch object and exposed parameter.
- The ceiling-aware bounds verify log bar_k = O(lambda), log n(bar_k) = O(lambda), log p_d(bar_k) = O(d lambda), and log L(bar_k) = O(d^2 lambda), with universal constants. No positive power of d or v and no class, list, or event dependence is hidden.
- The deterministic teacher interface is k <= ceil(C_teach d^2 G lambda^2 / epsilon), while tau_AT + B(bar_k) + tau_SS(bar_k) <= C_4 d^2 G lambda^2 / epsilon. All term absorptions, confidence allocations, privacy allocations, and ceiling additions have displayed inequalities and legal domains.
- Probability mode is deterministic scalar closure and total algorithm definition; no later high-probability or privacy composition is claimed. Horizon mode is fixed-sample with d + 1 finite stages, one AboveThreshold process, and at most one Sparse Sample call. The only metric conclusion here is exact population binary 0-1 error zero in the d = 0 branch.
- Baseline invariance is preserved: d = 0 remains exact N = 0 recovery, the positive dictionary is legal at d = v = 1 and v = d, and no parameter is silently fixed. The eventual v = d public-rate specialization remains a downstream step_012 obligation and is not prematurely asserted here.

## Notation Surface Audit

The proof classifies every helper as public-facing, appendix-local, or proof-local. Public-facing objects are the branch algorithm and its downstream-consumed parameter and list interface. Candidate maps, the feasible set, and scalar bounding constants remain appendix-local; H_*, u_delta, R_c, y, and z are eliminated proof-local aliases. Every helper has provenance in the setting, accepted sketch, checked source statement, or a named local result. The conclusion exports k, bar_k, the realized tuple, margin bounds, and the total procedure, not the proof-local bounding dictionary.

## Target-Step Assembly Audit

The assembly cites all seven results by theorem-style names and stable labels. The boundary proposition supplies the branch split; the candidate-legality lemma supplies domains and allocations; the log-closure and list-envelope lemmas supply the exact logarithms; the margin proposition supplies the complete loss bound; the teacher-existence proposition supplies the feasible least teacher and realized tuple; and the totality proposition supplies the exact total learner. These conclusions jointly imply the row verbatim, with no dependency artifact or global diagnostic used as proof authority.

## Review Rationale

ACCEPTED is warranted because all seven local units are valid under the unchanged accepted row, the cited source interfaces match the frozen source, all exposed logarithms and ceilings are discharged with universal constants, the linear teacher score explicitly dominates the complete loss despite the 1 + log c factor, and every boundary and arbitrary-input terminal path is total. No local repair, dependency repair, or sketch-interface change is required, so None is the aligned smallest retry target.
