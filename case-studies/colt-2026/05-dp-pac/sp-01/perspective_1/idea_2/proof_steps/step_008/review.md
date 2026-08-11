# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_008/proof.md`, SHA-256 `c635279729b9d3217edaf06918c024801499e36a4d77164a94eee2a6e803bb6c`
- Accepted sketch review: `perspective_1/idea_2/proof_sketch_review.md`, status `ACCEPTED`
- Accepted dependency: `step_001`, proof SHA-256 `5efff885caeacf39dcde5df5acea7c32a79361abb684dc938d7d8a6402a2b6df`, review SHA-256 `c18029b15ee3f6506a7208dc17480c56ad4ce36fa48c8de2ba5e9b6137bca02c`, status `ACCEPTED`
- Repair context only: the archived attempt-1 review is `REVISE_STEP` and is not used as current proof evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: uniform fixed-database resampling preserves expected loss exactly

- Statement fidelity: The lemma states the exact expected-risk-to-expected-empirical-loss bridge assigned by the accepted `step_008` row. It is conditional only on the local contradiction hypothesis \(\mathcal R_m(B;C_{\mathrm f})\le1/8\), which is discharged in `unit_005`.
- Proof validity: For a realizable database, the row-counting distribution \(P_Z\) makes population 0-1 risk equal empirical loss pointwise, including multiplicities. Independent uniform indices give the ordered with-replacement sample exactly the law \((P_Z)_c^m\), so taking expectation over resampling and learner randomness gives the claimed \(1/8\) bound without a tail or independence shortcut.
- Cited-result and assumption audit: No external result is needed. The target and distribution are from the factor setting; no utility claim is made for nonrealizable databases, while the wrapper remains defined there for the later privacy argument. The local conditional hypothesis is not exported as a primitive assumption.
- Rigor checklist: Repeated rows, sequence-sensitive learners, improper outputs, and the exact expectation mode are covered. The identity is pointwise in the output hypothesis and therefore needs no interchange beyond finite averaging.
- Local adversarial test: Duplicate instances and arbitrary output hypotheses leave (8.1) valid because realizability fixes the repeated labels. Nonrealizable inputs affect only privacy, not this lemma's utility premise.
- Contribution to target step: Supplies the exact expected empirical-loss premise consumed by the ALMM wrapper.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact privacy of the even ninefold wrapper

- Statement fidelity: The lemma uses the least even \(N\ge9m\), preserves fixed-size replacement adjacency, and exports the all-input \((0.1,\delta)\)-DP interface required by `unit_003`.
- Proof validity: Bun--Nissim--Stemmer--Vadhan, Lemma 5.9 is correctly instantiated with \(\epsilon=0.1\), input size \(m\), and \(N=2\lceil9m/2\rceil\), giving \((6(0.1)m/N,\exp(6(0.1)m/N)(4m/N)\delta)\)-DP. Since \(m/N\le1/9\), the epsilon is at most \(1/15<0.1\) and the delta factor is at most \(\exp(1/15)(4/9)<1\). The ceiling gives \(9m\le N\le9m+1\le10m\).
- Cited-result and assumption audit: The source uses with-replacement sampling and fixed-size replacement adjacency, exactly matching the branch. The factor learner is private on arbitrary, including nonrealizable, labeled inputs, as required by the source lemma. Privacy monotonicity correctly handles a learner with epsilon below \(0.1\).
- Rigor checklist: Duplicate selections are covered by the cited secrecy calculation; no group-privacy shortcut is used. The argument applies to every adjacent pair, not only realizable pairs, and deterministic output restriction is valid postprocessing.
- Local adversarial test: Odd and even \(m\), repeated selection of the changed row, nonrealizable databases, and the smaller-epsilon boundary all satisfy the displayed bounds.
- Contribution to target step: Supplies the exact privacy premise on the even empirical database used by ALMM.
- Verdict: PASS
- Repair direction: None.

### unit_003: ALMM threshold lower bound from expected empirical loss

- Statement fidelity: The proposition targets the exact current-notation expected-loss interface: even \(N\ge72\), arbitrary binary outputs, replacement DP on all labeled inputs, expected empirical loss at most \(1/8\) on every realizable threshold database, and the conclusion \(N\ge b_0\log_2^*T\). It does not substitute ALMM's weaker PAC corollary.
- Proof validity: The endpoint calculation from (8.7) uses only expected empirical loss. With \(\bar\delta=c_0/(N^2\log N)\), \(c_0=10^{-4}\), the two privacy comparisons are explicitly valid: \((3/4-\bar\delta)e^{-0.1}>(3/4-10^{-4})(9/10)>2/3\) and \(e^{0.1}/4+\bar\delta<5/18+10^{-4}<1/3\). Thus the source reduction yields \(p_i-p_{i-1}\ge1/(4N)\), with the correct indices.
- Corrected midpoint audit: The proof uses \(r=(p_i+p_{i-1})/2\), the midpoint of the actual jump, rather than the active source's printed \((p_{i+1}+p_i)/2\). For \(\eta_N=1/(100N)\), the left and right marginals are separated from this midpoint by
  \[
  \frac{1}{8N}-\frac{1}{100N}=\frac{23}{200N}>\frac{1}{10N}.
  \]
  This is the exact separation consumed by the binary-search construction. Moving one fixed-label row through the intervening interval preserves one-row replacement adjacency for every pair of constructed databases.
- Privacy-constant audit: For every admitted \(N\ge72\), \(T_{\rm bin}=10^3N^2\log^2N-1\) satisfies \(\log T_{\rm bin}\le\log1000+2\log N+2\log\log N\le5\log N\). With \(D=\lceil10^2N^2\log T_{\rm bin}\rceil\),
  \[
  D\bar\delta
  \le(100N^2\log T_{\rm bin}+1)\frac{10^{-4}}{N^2\log N}
  \le501\cdot10^{-4}=0.0501<\frac16.
  \]
  The inequality is uniform over the full admitted range, including \(N=72\); the ceiling term is retained. The same \(c_0\) is below the \(10^{-3}\) endpoint threshold, so all other source privacy comparisons are also discharged. The invalid printed \(10^{-3}\) coefficient is not used.
- Cited-result and assumption audit: ALMM `lem:ramsey`, `lem:reduction`, `lem:AtoP`, and `lem:binary` are used in their current threshold-domain notation, with arbitrary randomized outputs and replacement adjacency. The proof maps the expected-loss premise to the sole utility inequality in `lem:reduction`, then uses the corrected source construction and basic product composition. The binary-search events have probability at least \(1-T_{\rm bin}e^{-2D/(100N^2)}\ge1-1/T_{\rm bin}\ge2/3\); product privacy gives the displayed lower event mass, and the disjoint-event sum contradicts probability one under the source parameter choice. ALMM's Ramsey conclusion is then translated with only a universal log-star constant \(C_0\), yielding \(b_0=(2+C_0/72)^{-1}>0\).
- Rigor checklist: The proof preserves the expectation mode, does not invoke properness or an empirical-loss tail event, and retains the source's arbitrary-output and all-input privacy scope. The endpoint, midpoint, product-privacy, Hoeffding, and exponential comparisons are displayed rather than absorbed by prose. The fixed log-base translation is isolated in \(C_0\).
- Local adversarial test: The boundary \(N=72\), balanced even databases, arbitrary labels on nonrealizable privacy inputs, repeated source rows, and an arbitrary improper output all remain covered. The active source's off-by-one midpoint and insufficient delta coefficient are both explicitly repaired; no hidden properness or success event is used.
- Contribution to target step: Establishes the theorem-critical expected-risk threshold wrapper with universal \(b_0,c_0\) under the unchanged sketch interface.
- Verdict: PASS
- Repair direction: None.

### unit_004: finite Shelah threshold witness and exact factor/source map

- Statement fidelity: The lemma uses the accepted dependency conclusion \(d=\operatorname{LD}(C_{\mathrm f})\ge1\), sets the exact finite witness size \(T=\lfloor\log_2d\rfloor\), and exports the required all-input source mechanism.
- Proof validity: ALMM `thm:shelah` supplies fixed distinct witness points and concepts with the threshold pattern. The rowwise map \(\psi(x,y)=(x,(y+1)/2)\) is a bijection on every source row, including arbitrary nonrealizable labels; \(\phi(h)(x_b)=2h(x_b)-1\) is deterministic output postprocessing. The complete mechanism \(A_{\rm src}=\phi\circ\widetilde B_N\circ\psi^{\otimes N}\) is explicitly defined.
- Cited-result and assumption audit: The witness is fixed before the learner, lies in the factor domain, and the factor's arbitrary output is restricted only after the mechanism runs. The source threshold orientation/reversal is a fixed relabeling, not a properness assumption.
- Rigor checklist: If source databases differ in one arbitrary row, injectivity of \(\psi\) makes their images differ in exactly one factor row, so the factor DP inequality applies to \(\phi^{-1}(E)\) for every source-output event. On every realizable threshold database, the displayed termwise identity gives exact source/factor empirical loss equality, including repeated rows. The \(T=0\) regime is not falsely invoked; the active assembly has \(T\ge2\).
- Local adversarial test: Nonrealizable neighboring source databases, reversed threshold orientation, improper factor hypotheses, arbitrary output events, and repeated threshold points are all handled by the explicit map and identity.
- Contribution to target step: Discharges the source-domain, output-space, adjacency, and loss interfaces needed by `unit_003`.
- Verdict: PASS
- Repair direction: None.

### unit_005: current-notation unrestricted factor risk floor

- Statement fidelity: The proposition has the exact candidate-wise quantifiers, \(m\ge8\), \(\delta\le c_\delta/[m^2\log(m+1)]\), strict subcritical inequality, unrestricted improper learner scope, and strict worst-case expected-risk conclusion.
- Proof validity: The denominator bridge is explicit: \(N\le10m\), \(\log N\le2\log(m+1)\), and \(N^2\log N\le200m^2\log(m+1)\). Thus \(c_\delta=c_0/200\) implies the ALMM wrapper delta condition. In the active regime, \(r=\log_2^*d>8\), \(T=\lfloor\log_2d\rfloor\ge2\), and the three-log calculation gives \(\log_2^*T\ge r-3\ge r/2\). Combining \(N\ge b_0\log_2^*T\) with \(N\le10m\) contradicts \(m<a_{\mathrm L}r\) for \(a_{\mathrm L}=\min\{1,b_0/20\}\).
- Cited-result and assumption audit: Only the accepted `step_001` conclusion \(d_i\ge1\) and the four named local results are consumed. The contradiction hypothesis is discharged and no generated event, prior, properness condition, or finite-cardinality condition is exported.
- Rigor checklist: The proof handles \(m=8\), odd/even rounding, \(d=1\) (where the strict active premise is impossible), smaller epsilon by privacy monotonicity, and strictness of the supremum conclusion. The candidate-wise delta scope is preserved.
- Local adversarial test: At the denominator boundary the inequalities remain inclusive as stated; at the strict sample boundary the contradiction is strict. The one-factor and inactive-small-\(d\) regimes do not receive an unsupported ALMM claim.
- Contribution to target step: Assembles the source wrapper into the exact factor lower floor consumed by `step_009`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. The expected-loss conversion, privacy amplification, corrected ALMM jump/midpoint calculation, binary-search privacy calculation, finite threshold embedding, rowwise adjacency transfer, loss identity, denominator translation, and log-star arithmetic are all exposed in the five declared local units. The target assembly cites theorem-style labels and does not rely on subsection names, bare unit IDs, or the archived attempt-1 review as mathematical authority.

## Target Claim Audit

The proof establishes exactly the accepted `step_008` row: for every factor with finite Littlestone dimension and VC dimension one, every integer \(m\ge8\), every \(0<\delta\le c_\delta/[m^2\log(m+1)]\), and every unrestricted \((0.1,\delta)\)-DP learner, the strict subcritical regime \(m<a_{\mathrm L}\log_2^*d\) forces worst-case expected distributional 0-1 risk greater than \(1/8\). The proof does not strengthen or weaken the target, change adjacency, add a probability mode, impose properness, or claim a uniform-in-\(m\) delta schedule.

## Explicit Rate Audit

The exposed variables are exactly \(d,m,\delta\), with fixed \(\varepsilon=0.1\), expected distributional 0-1 risk, fixed-sample candidate scope, and universal hidden constants only. The proof declares all fixed conventions and auxiliary quantities, retains the ceiling in \(D\), verifies endpoint and product privacy inequalities, gives the explicit \(23/(200N)\) separation, proves the uniform \(D\bar\delta<1/6\) bound, and displays the \(200\) denominator and \(20\) sample-factor translations. There is no confidence conversion, horizon-uniform upgrade, norm change, hidden factor-cardinality dependence, or dropped rate category. The one-factor baseline and inactive \(d=1\) boundary are preserved.

## Notation Surface Audit

Setting objects \(d,m,\delta\) and risk are public-facing. The constants \(a_{\mathrm L},c_\delta\) are the minimal exported interface. \(b_0,c_0,N,T,r\), the probability list, the binary-search quantities, \(Z,P_Z,U,\widetilde B_N\), and the maps \(\psi,\phi,A_{\rm src}\) are explicitly classified as appendix-local or proof-local and are defined from setting quantities, accepted dependencies, or checked cited results. The two uses of the local alias \(r\) are scoped to separate units and do not alter any exported symbol.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-008-resampling} supplies expected empirical loss, Lemma~\ref{lem:step-008-privacy} supplies all-input replacement privacy, Proposition~\ref{prop:step-008-almm-expected} supplies the corrected threshold lower inequality, and Lemma~\ref{lem:step-008-threshold-map} supplies the finite source domain, complete input/output map, and exact loss transfer. Proposition~\ref{prop:step-008-factor-floor} performs the explicit delta, parity, log-star, and strict-contrapositive arithmetic. These named results jointly imply the exact target claim and export no step-009 prior or product-level conclusion.

## Review Rationale

`ACCEPTED` is warranted. The attempt-2 proof repairs both attempt-1 blockers under the unchanged sketch row: it centers the ALMM construction at \((p_i+p_{i-1})/2\), derives the displayed \(23/(200N)\) margin, chooses \(c_0=10^{-4}\), and verifies \(D\bar\delta<1/6\) uniformly for every admitted \(N\ge72\). It also defines the complete rowwise \(\psi\)-input, \(\phi\)-output, and \(A_{\rm src}\) mechanism on arbitrary source databases and proves the exact realizable loss identity. All dependencies are accepted and current, every local unit passes the per-unit audit, and no sketch or dependency change is required. The smallest retry target is therefore `None`.
