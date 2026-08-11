# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_001
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_4/proof_steps/step_001/proof.md
- Reviewed proof SHA-256: 280842020301d2d8b7c96893ec89fdb05fdb7c03eae3a8f4de94956016c30901
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4
- Accepted proof-sketch SHA-256: cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7
- Accepted proof-sketch-review SHA-256: 302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789
- Dependency step artifacts: None.
- Primary-source preflight: Xin Lyu, Private Learning of Littlestone Classes, Revisited, arXiv:2510.00076v1; independently checked frozen submission/main.tex SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_001

## Blocking Issues

1. Location: Cited Result Applications, Lyu Corollary 4.1 / ListCap, and unit_002. Defect: the frozen source defines a (p,d)-decomposition only for positive integers p,d and a class H with LD(H) <= d. The proof checks positivity and integrality of p_r(t), but it does not restate or discharge the class-dimension premise for its current object H_i^r contained in bar C. In this branch LD(bar C) = d is explicitly a derived quotient interface, not a primitive assumption, and step_001 has no accepted dependency supplying it. The assertion that Corollary 4.1 gives ListCap for the current quotient restrictions is therefore not locally certified. The theorem-style statement of unit_002 also refers to ListCap from surrounding prose instead of stating the required class condition and exact conditional conclusion itself. Downstream effect: the scalar L(t), B(t), and teacher-envelope calculations are algebraically valid, but the review cannot certify that L(t) bounds the intended actual quotient lists or that cap-based sanitization leaves every intended source-valid path unchanged. The exact source-mapped tuple and target assembly are consequently incomplete. Smallest repair direction: add a named local result, or an explicit proof inside a revised named unit, deriving LD(H_i^r) <= d from the quotient definitions; then restate Corollary 4.1 with all source hypotheses and a self-contained conditional conclusion before applying it. This is a local source-assumption discharge under the unchanged row and requires neither a new sketch dependency nor a changed output target.

## Per-Lemma Audit

### unit_001: Exact zero-dimensional law

- Statement fidelity: The proposition exactly supplies the accepted d = 0 singleton, no-data, kernel, privacy, and risk baseline under Assumption assump:finite-littlestone.
- Proof validity: Two distinct concepts would realize both branches of a depth-one Littlestone tree, so nonempty C with d = 0 is a singleton and so is bar C. The Dirac law on the sole input in Z_X^0 is a Markov kernel; the only replace-one comparison is the empty input with itself. Pointwise decoding equals the unique target, so the error event is empty for every D.
- Cited-result and assumption audit: No external theorem is used. The argument uses only nonemptiness and d = 0; it does not invoke a positive-branch parameter, quotient-kernel theorem, good event, or optional small-delta schedule.
- Rigor checklist: A Dirac probability measure is defined on (H_C,H_C-sigma) without requiring its singleton to be a measurable event. Sample size zero, replace-one adjacency, arbitrary D, and all allowed positive learning/privacy parameters are handled exactly.
- Local adversarial test: The arbitrary-domain and singleton boundaries pass; any second distinct function forces d >= 1. No expression involving 1/v, k, or a positive-branch logarithm is evaluated.
- Contribution to target step: It proves exact N = 0, zero-risk, (0,0)-DP baseline recovery.
- Verdict: PASS
- Repair direction: None.

### unit_002: Legal positive-branch dictionary and source calibration

- Statement fidelity: The unit correctly targets 1 <= v <= d, the candidate dictionary, and the source-side calibrations, but its list-cap conclusion is not self-contained and omits a required source hypothesis for the current quotient class.
- Proof validity: The direct dimension inequalities for raw C are correct. For d >= 1 and t >= 2, g_delta > log 4 > 1; eta, epsilon_SS, and a(t) are positive; Q(t) > e; and m,n,p_r,L are positive finite integers. Since L >= 2, 0 < delta_SS < 1/2, and 0 < beta_* < 1/16, every logarithm and ceiling in B, tau_AT, and tau_SS has a positive finite argument. Both identities in (2.7) are exact substitutions.
- Cited-result and assumption audit: The frozen source has the exact labels coro: essential hypotheses, algo:private sample, lemma: privacy of sparse sampling, algo: abovethreshold, and lemma: privacy of abovethreshold. Corollary 4.1 Item 1 gives p^d 2^(d^2) actual essential hypotheses, but only for a valid source (p,d) object; the missing premise is Blocking Issue 1. Algorithm 1 uses weights exp(epsilon_s score), gives the failure symbol score B, and Lemma 3.1 gives (2 epsilon_s,delta_s)-DP under one-list addition, removal, or replacement when B >= 10 log(L/delta_s)/epsilon_s. The instantiated ceiling and (epsilon/4,delta/2) allocation are exact. Algorithm 2 uses independent Laplace(1/eta) query noise, and Lemma 3.2 gives eta O(sqrt(K log(1/delta_a)) + log(1/delta_a)); fixing a universal c_AT for stopped K = 1 makes the displayed allocation at most (epsilon/4,delta/2), conditional only on the deliberately deferred sensitivity-one premise.
- Rigor checklist: No raw adjacency, mechanism success, privacy composition, kernel property, or generated event is assumed. The failed check is the source class/object premise for ListCap and its omission from the theorem-style unit statement.
- Local adversarial test: The scalar dictionary remains legal at d = v = 1, t = 2, beta approaching 1/4, epsilon = 1, delta approaching 1, and arbitrarily small positive parameters. Treating an arbitrary H_i^r contained in bar C as a source (p,d) class without the missing dimension bridge does not pass citation preflight.
- Contribution to target step: It supplies every scalar calibration, but not yet the certified actual quotient essential-list cap.
- Verdict: REVISE_STEP
- Repair direction: Discharge and state LD(H_i^r) <= d before ListCap; retain the current exact Sparse Sample and AboveThreshold mappings.

### unit_003: Ceiling-aware candidate envelope

- Statement fidelity: The lemma gives the accepted noncircular public-candidate envelope for t_C, m(t_C), n(t_C), Q(t_C), L(t_C), and the complete deterministic teacher defect.
- Proof validity: The complete inequality chain checks out. From ell > log 256 > 5 one has R_T > 5, so t_C >= 2 and C R_T <= t_C <= 2 C R_T. The nested-delta term in Lambda yields ell <= 7 exp(Lambda), log ell <= 3 Lambda, and log R_T <= 8 Lambda. Equations (3.9)-(3.13) then give coefficients 9, 20, 29 + log(1+C_blk), 38 + log(1+C_blk), and 41 + log(1+C_blk), all below A_log. The exact identity log L = 2 d^2 log 2 + d log n + d log d retains both list-envelope powers. The ceiling inequalities use C R_T >= 1 and the unrounded block expression d^2 alpha^(-1) a log Q > 1, so no ceiling is dropped illegally.
- Cited-result and assumption audit: This unit is an elementary scalar derivation once L(t) is defined. Its numerical inequalities do not need the unresolved actual-list application from unit_002.
- Rigor checklist: Equations (3.14)-(3.16) separately retain the +1 in B, the t L + 1 effective-domain term, every alpha/beta/delta/epsilon logarithm, and the AboveThreshold source constant. The coefficients 161 A_log, 24 A_log, and 32 c_AT are all dominated by A_def = 256(A_log + c_AT + 1).
- Local adversarial test: The bounds survive d = v = 1, C = 1, ceiling-dominated m, delta approaching 1, and arbitrarily small positive parameters. Tiny delta is handled through log ell = O(Lambda), not the false assertion ell = O(Lambda).
- Contribution to target step: It removes the apparent t,m,n,Q,L,B circularity and exposes the complete defect at scale d^2 ell Lambda^2 / epsilon.
- Verdict: PASS
- Repair direction: None.

### unit_004: Finite public teacher witness and least feasible count

- Statement fidelity: The proposition exactly supplies one finite public witness, nonempty least-feasible semantics, the strict teacher margin, the realized tuple, and the exposed d^2/epsilon dependence.
- Proof validity: C_teach = 2^12 A_def^2 is finite and independent of d,v,alpha,beta,epsilon,delta. For A_def >= 1, 1 + log C_teach <= 15 A_def, hence A_def(1 + log C_teach) <= C_teach/4. Since C_teach R_T/4 > 2 and bar k/2 >= C_teach R_T/2, the exact inequality bar k/2 - tau_AT >= B(bar k) + tau_SS(bar k) + 2 follows with the required additive margin. Well-ordering gives the least feasible integer without assuming feasibility is monotone. The final ceiling bound and p_0 = n_0 d >= max(n_0,d+1) are correct.
- Cited-result and assumption audit: Only the preceding scalar envelope is used. C_blk and the frozen big-O witness c_AT are universal source/calibration constants; A_log, A_def, and C_teach are explicit formulas in them and have no data-, class-, event-, or parameter-dependent choice.
- Rigor checklist: The candidate tuple is defined for every t >= 2 before feasibility, bar k is proved feasible before taking the minimum, and all integer ceilings are retained. The construction is valid for each fixed 0 < delta < 1.
- Local adversarial test: The cases d = v = 1, k = 2, ceiling-dominated blocks, and arbitrarily small positive privacy/confidence parameters do not break feasibility; they only enlarge the public witness scale.
- Contribution to target step: It produces 2 <= k <= bar k <= 2 C_teach d^2 ell Lambda^2 / epsilon and the exact realized m,n_0,N,p_r,L,B dictionary.
- Verdict: PASS
- Repair direction: None.

### unit_005: Pre-sampling totalization of the quotient procedure

- Statement fidelity: The proposition addresses every failure class named by the accepted row while expressly deferring positive-branch measurability, privacy, and utility.
- Proof validity: Fixed choices and tie breaking are made before sampling. Empty restrictions, undefined or invalid source routines, malformed/nonfinite/oversized lists, empty stage unions, invalid or exhausted AboveThreshold transcripts, actual Sparse Sample items, the failure symbol, outside-support returns, invalid normalization, residual mechanism failures, and unclassified terminal states all have defined actions. Sanitized finite lists make the occurrence maximum and Sparse Sample normalizer finite; every terminal fallback is bar c_0 in H_C. The partition is data independent and reused across exactly d + 1 stages.
- Cited-result and assumption audit: The exact Sparse Sample support is the actual finite union plus the failure symbol, as checked in the frozen source. The proof does not infer a kernel, list sensitivity, raw adjacency, DP, a good event, or PAC utility. Its promise that cap-valid source paths are unchanged is pointwise correct, but certifying that the intended quotient source lists are cap-valid remains downstream of Blocking Issue 1.
- Rigor checklist: Immediate success, late success, all-empty lists, no-success exhaustion, malformed states/transcripts, failure-symbol output, and every fallback are covered without conditioning on a good event. Identical local states receive identical choices. The pointwise construction does not assume the later countable-input measurability theorem.
- Local adversarial test: All lists empty gives score zero and either continued reports or default output; a false Above followed by the failure symbol returns the default; a legal actual item is returned unchanged; every otherwise malformed path terminates. No path lacks an output.
- Contribution to target step: It supplies the total procedure skeleton, subject only to the unresolved certification that the actual intended source lists meet the claimed cap.
- Verdict: PASS
- Repair direction: None beyond Blocking Issue 1.

## Hidden Subclaim Scan

The quotient-object dimension premise needed by ListCap is an independent nontrivial subclaim absent from the local lemma map; it is the blocking hidden subclaim above. No other hidden independent claim was found. The Dirac-kernel check, elementary ceiling/logarithm inequalities, well-ordering of the feasible integer set, finite Sparse Sample normalization, fixed deterministic choices, and finite uniform partition are proved within named units or are atomic facts. The proof does not smuggle in a good event, generated list existence, query sensitivity, raw one-list locality, mechanism success, measurable positive-branch kernel, positive-branch privacy, or PAC utility.

## Target Claim Audit

The proof is faithful to the accepted step_001 row and uses no dependency artifact. It proves the exact d = 0 result, every positive scalar domain, the public candidate envelope, one parameter-independent finite C_teach, noncircular least-feasible semantics, the strict teacher margin, the d^2/epsilon teacher dependence, and complete pointwise fallback behavior. It does not overclaim later DP/PAC conclusions. The exact target remains uncertified because the actual-list source cap in the intended quotient object has an undischarged source hypothesis.

## Explicit Rate Audit

- Exposed variables are exactly d,v,alpha,beta,epsilon,delta. The bound k <= 2 C_teach d^2 log(64/(delta beta)) Lambda^2 / epsilon exposes the requested d^2/epsilon factor.
- C_blk and c_AT are fixed universal constants. A_log, A_def, and C_teach are explicit finite formulas in them and cannot depend on X,Sigma,C,D,c,d,v, any learning/privacy parameter, any list, sample, partition, event, state, transcript, or output.
- All finite-parameter claims hold for arbitrary fixed 0 < delta < 1. The proof does not use N delta -> 0; it correctly reserves that condition for the optional later asymptotic source-facing comparison.
- Probability mode is deterministic parameter closure and totalization, except for the exact deterministic d = 0 PAC result. Horizon mode is N = 0 at d = 0 and fixed N = k m(k) on the positive branch. The only completed risk mode is population binary zero-one error at d = 0.
- Equations (3.3), (3.5), (4.9), and (4.10) display every absorption and ceiling threshold. The four confidence shares sum to beta; source privacy reservations are explicitly conditional on their later sensitivity/adjacency discharge and are not composed here.
- Baseline reduction passes: d = 0 is exact no-data recovery, arbitrary finite delta is separated from scheduled delta, and the eventual v = d sample-rate comparison is correctly left to the later rate bridge.

## Notation Surface Audit

The setting-defined, public-facing, appendix-local, and proof-local classifications are explicit and consistent. Candidate maps and the realized tuple are derived from primitive parameters; ell, R_T, and C_teach package the witness proof; u_C, A_log, A_def, and t_C are eliminated proof-local bookkeeping. The notation hides neither a ceiling nor a rate term. The only provenance defect is mathematical rather than notational: ListCap lacks the required current-object dimension producer.

## Target-Step Assembly Audit

The assembly uses theorem-style names and stable labels for all five units. unit_001, unit_003, unit_004, and the pointwise part of unit_005 supply their stated interfaces. Because unit_002 has not discharged Corollary 4.1's class premise, the assembly cannot infer that scalar L is the exact cap for the intended quotient lists or that totalization preserves those intended valid paths. No dependency or global diagnostic can fill that local gap.

## Review Rationale

REVISE_STEP is the smallest sound status. The boundary proof, all scalar inequalities, universal-constant construction, noncircular teacher witness, exact margin, rate dependence, arbitrary-delta validity, and exhaustive totalization are valid under the unchanged row. The sole blocker is a locally repairable cited-result/object-mapping discharge and its missing named subclaim. The accepted claim, dependencies, mechanism, and output target need not change, so /proof-sketch would be unnecessarily broad; there is no dependency step to retry.
