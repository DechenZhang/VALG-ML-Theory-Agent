# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_015
- Unit attempt: 2
- Review attempt: 2
- Reviewed proof artifact: perspective_2/idea_4/proof_steps/step_015/proof.md
- Reviewed proof SHA-256: bcb840332dff8fe4f0c2028744e46eff951fb4e7aa6e47f74fd4c3bcfdc7d492
- Binding setting artifact: perspective_2/idea_4/setting.md
- Binding setting SHA-256: a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4
- Binding proof-sketch artifact: perspective_2/idea_4/proof_sketch.md
- Binding proof-sketch SHA-256: cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7
- Binding proof-sketch-review artifact: perspective_2/idea_4/proof_sketch_review.md
- Binding proof-sketch-review SHA-256: 302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789
- Accepted dependency step_002 proof SHA-256: 880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f
- Accepted dependency step_002 review SHA-256: 090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5
- Accepted dependency step_003 proof SHA-256: 092c5ba976f43a4b7d1bf746aba05c1caa0d49f2bd3de55a254f58dc6e4c4a7f
- Accepted dependency step_003 review SHA-256: 5ba08c887b44fc901e74bd3bc2793a06e3accf2a7d999f62532ec042c211eb87
- Accepted dependency step_004 proof SHA-256: dde324f382fb084af67f773a97140eb205597d15f7ab9d83e13605bf62b80cc8
- Accepted dependency step_004 review SHA-256: 254e4b8ef32bae1676cfb9512e4987bfdf81b629c38b193d4787dcf192b82fa0

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: The exact old-arm singleton statement matches the \(d=0\) branch of the setting and the accepted sketch, including \(N_{\mathrm{old}}=0\), the quotient and raw kernels, zero risk, and privacy.
- Proof validity: Accepted Littlestone-dimension preservation makes \(\bar C\) a nonempty singleton. The Dirac law on the unique empty input is a kernel and is \((0,0)\)-DP, while accepted factorization and exact risk transfer give zero decoded error.
- Cited-result and assumption audit: Only Assumptions~\ref{assump:finite-littlestone} and \ref{assump:countable-evaluation-quotient} and accepted step_002 conclusions are used. No positive-branch source statement or generated event is imported.
- Rigor checklist: The quotient itself need not be a singleton; only the induced concept class must be. The proof correctly covers every \(D,c\) without needing a limiting condition on \(\delta\).
- Local adversarial test: A singleton concept class with multiple quotient cells still produces its unique factored target and has zero decoded risk.
- Contribution to target step: It closes the exact no-data baseline independently of all positive-dimensional machinery.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: The scalar dictionary defines every old-arm allocation, block size, stage scale, list cap, mechanism threshold, and noise tolerance before observing data, under exactly the positive-dimensional primitive regime.
- Proof validity: All logarithms and reciprocals are legal because \(d\ge1\), \(t\ge2\), \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), and \(0<\delta<1\). Ceilings give integer positive sizes, and monotonicity in the stage index gives the stated uniform list cap.
- Cited-result and assumption audit: The only source input is the locally restated Lyu leaf/list bound and Sparse Sample threshold interface. Their current objects and parameter instantiations are explicit.
- Rigor checklist: Finiteness, positivity, integrality, source list size, and the privacy threshold are all proved without assuming teacher feasibility.
- Local adversarial test: The definitions remain legal at \(d=1\), \(t=2\), \(\alpha,\beta\uparrow1/4\), \(\varepsilon=1\), and \(\delta\uparrow1\).
- Contribution to target step: It supplies the independent old-arm scalar objects used by every later positive-branch unit.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The envelope has the exact role assigned by the sketch: bound the candidate teacher, block, list, and three mechanism-defect scales without assuming that a feasible teacher already exists.
- Proof validity: The bounds on \(\log t_C\), \(a_{\mathrm o}(t_C)\), \(\log Q_{\mathrm o}(t_C)\), \(m_{\mathrm o}(t_C)\), and \(\log L_{\mathrm o}(t_C)\) follow from the displayed definitions with the ceiling retained. Equations (3.12)-(3.14) expose every \(1/\varepsilon\) and \(\log(1/\delta)\) contribution before comparing them with \(R_{\mathrm T,o}\).
- Cited-result and assumption audit: No new theorem is invoked. The constants \(A_{\mathrm o}\), \(c_{\mathrm{AT}}\), and \(C_{\mathrm o}\) have universal provenance.
- Rigor checklist: The proof does not hide dependence on \(d,\alpha,\beta,\varepsilon,\delta\); \(\ell\), \(\Lambda\), the ceiling remainder, and the nonlogarithmic privacy charge are all handled with the correct signs.
- Local adversarial test: Very small \(\delta\), very small \(\varepsilon\), and ceiling-dominated expressions only increase the displayed universal envelope and do not create circularity.
- Contribution to target step: It supplies the quantitative witness needed to prove existence of the least feasible teacher count.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition fixes the least feasible old teacher and exports exactly the source margin, stage tuple, sample count, and initial irreducibility scales required downstream.
- Proof validity: With \(C_{\mathrm{teach,o}}=(16A_{\mathrm o})^2\), the inequality \(\log C\le\sqrt C\) gives \(A_{\mathrm o}(1+\log C)\le C/4\). The teacher half-scale leaves another \(C R_{\mathrm T,o}/4>2\), proving feasibility; well-ordering then gives the least integer. The ceiling and \(p_{\mathrm o,0}\) inequalities are valid.
- Cited-result and assumption audit: It uses only units 002-003 and their explicitly defined universal constants. No random or generated condition enters the minimization.
- Rigor checklist: The proof checks nonemptiness of the feasible set before taking its minimum and keeps all ceilings in the actual tuple.
- Local adversarial test: At \(d=1\) and \(k_{\mathrm o}=2\), \(p_{\mathrm o,0}=n_{\mathrm o}\ge2=d+1\); no denominator or scale degenerates.
- Contribution to target step: It makes the old procedure and all later margins noncircular.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: The totalization covers every source-valid and invalid path on arbitrary labeled quotient inputs and exports an \(H_C\)-valued pointwise law without adding a utility premise.
- Proof validity: Restrictions and fixed decomposition/list choices are block-local; valid lists are finite and capped. Empty or invalid objects are sanitized locally, the stage score is total, and every no-success, failure-symbol, exhausted, or residual path terminates at \(\bar c_0\).
- Cited-result and assumption audit: The checked decomposition existence and essential-list interfaces are restated before use. The construction uses the locally proved old tuple, not a VC-arm parameter or event.
- Rigor checklist: The source-valid Sparse Sample normalizer is finite and positive, actual union outputs remain unchanged, and arbitrary nonrealizable inputs are retained.
- Local adversarial test: All-empty lists, an over-cap list, an invalid local object, a false or absent threshold success, and a failure symbol all lead to the fixed total fallback.
- Contribution to target step: It creates the complete pointwise old algorithm needed for kernel promotion and all-input privacy.
- Verdict: PASS
- Repair direction: None.

### unit_006: proposition

- Statement fidelity: The proposition exports the exact quotient kernel, raw pullback, full \(H_C\) codomain, and zero-residual decoded-risk interface demanded by the target.
- Proof validity: The total pointwise laws are indexed by a countable-discrete quotient input, so accepted countable promotion gives a kernel. Accepted measurability of \(T_{N_{\mathrm o}}\) gives the raw pullback, and accepted risk transfer applies to every proper or improper output.
- Cited-result and assumption audit: The mathematical dependency claims come only from accepted steps 002-003 and unit 005. No step outside the declared dependency list is consumed.
- Rigor checklist: Data-dependent lists and fallback values require no raw-space selector; the output and metric are exactly those in the setting.
- Local adversarial test: Countably infinite \(Q_C\), duplicate records, arbitrary labels, and an improper SOA output all remain within the accepted kernel and risk interfaces.
- Contribution to target step: It establishes the common measurable arm interface before privacy or PAC is asserted.
- Verdict: PASS
- Repair direction: None.

### unit_007: lemma

- Statement fidelity: The lemma deliberately uses the coarse exponent \(d\), rather than \(v\), and proves the finite trace multiplicity required for the old arm on the actual old sample.
- Proof validity: Xor by the fixed label vector bijects prediction and error traces. Accepted \(\operatorname{VC}(\bar C)=v\le d\), together with the actual old tuple's \(n_{\mathrm o}\ge d\), permits Sauer--Shelah and yields \((en_{\mathrm o}/d)^d\).
- Cited-result and assumption audit: Sauer--Shelah is restated in current notation with all premises discharged; the only accepted structural inputs are from step_002.
- Rigor checklist: Repeated quotient points can only reduce trace count, and neither \(|C|\) nor a VC-sensitive event is introduced.
- Local adversarial test: Infinite \(\bar C\), repeated indexed points, \(v<d\), and \(v=d\) all satisfy the same coarse bound.
- Contribution to target step: It supplies the finite multiplicity used by the independent old trace union.
- Verdict: PASS
- Repair direction: None.

### unit_008: lemma

- Statement fidelity: The unit proves both required fixed-trace branches, with the high-mean Lyu tail used only in its valid regime and the near-zero branch proved locally, including \(\mu=0\) and the boundary \(\mu=\gamma_{\mathrm o}/3\).
- Proof validity: For (C6), \(m=0\) and \(m=1\) are equalities, \(N=1\) leaves only those cases, and the argument for \(N\ge2,\ 2\le m\le N\) includes \(m=N\). Pairwise averaging preserves \(a+b\) and increases \(ab\) by \((a-b)^2/4\), while the coefficient \(e_{m-2}(z)\) is nonnegative, so \(e_m\) cannot decrease.
- Cited-result and assumption audit: The only external concentration input is the fully restated Lyu Proposition 2 for the high branch. Equation (C6) is no longer attributed to Maclaurin or any unverifiable citation; it is proved inline.
- Rigor checklist: Repeatedly averaging a maximum and minimum preserves the common mean and decreases \(V_s\) by half the squared range. Since \(V_s\) converges, the range tends to zero; every coordinate therefore converges to the common mean. Polynomial continuity gives \(e_m(w)\le\binom Nm\bar w^m\), including zero coordinates and \(m=N\).
- Local adversarial test: The live without-replacement instantiation has \(N=n_{\mathrm o}=k_{\mathrm o}m_{\mathrm o}\), \(m=m_{\mathrm o}\), and \(1\le m<N\), while the proof also covers \(m=0,1,N\) and \(N=1\). With \(w_j=e^{\lambda x_j}\), uniform subset sampling gives the exact elementary-symmetric mgf and no block-independence assumption.
- Contribution to target step: The proved mgf yields the upper KL tail; the derivative in \(\mu\), \(\log(1-u)\) lower bound, and \(\log(3/2)\ge2/5\) have the correct directions and give the displayed \(\gamma_{\mathrm o}/30\) exponent.
- Verdict: PASS
- Repair direction: None.

### unit_009: proposition

- Statement fidelity: The generated old good event has the exact two-branch definition, conditions only on the master sample for the partition analysis, and is charged to the old arm's own \(\beta/4\) share.
- Proof validity: A finite union over \(k_{\mathrm o}\) blocks and the coarse trace family gives (9.2) without asserting conditional independence. Equations (9.5)-(9.9) retain the ceiling, close \(n_{\mathrm o}=k_{\mathrm o}m_{\mathrm o}\), and make the negative exponent dominate the trace, block, and confidence logarithms.
- Cited-result and assumption audit: It consumes only units 004, 007, and 008. No new-arm trace count, event, or fixed point is used.
- Rigor checklist: The high/low cases are disjoint and exhaustive, equality is assigned to the low case, and the low exponent is explicitly shown stronger than the common exponent.
- Local adversarial test: \(\mu=0\), \(\mu=\gamma_{\mathrm o}/3\), dependent partition blocks conditional on the master sample, and ceiling-dominated \(m_{\mathrm o}\) all preserve the bound.
- Contribution to target step: It produces the old source-inclusion event with a complete confidence charge.
- Verdict: PASS
- Repair direction: None.

### unit_010: lemma

- Statement fidelity: The source/current endpoint, half-scale map, and cross-block inclusion match the accepted sketch interface exactly, including the formerly omitted \(d+1\) source endpoint.
- Proof validity: The identities in (10.2) are direct substitutions and preserve \(p_{\mathrm o,r+1}=2p_{\mathrm o,r}\). Bernoulli's inequality gives \(\rho^d\ge1/2\), and direct multiplication verifies \(((1+\xi_d)/(1-\xi_d))\rho\le1\).
- Cited-result and assumption audit: Only the generated old good event is consumed; both concentration branches used in the inclusion were proved in unit 008.
- Rigor checklist: In the low branch, \(\gamma_{\mathrm o}/2\le\rho^d\gamma_{\mathrm o}\le\rho^{r+1}\gamma_{\mathrm o}\). In the high branch, lower control on block \(i_*\) and upper control on block \(i\) have the correct ratio and direction.
- Local adversarial test: At \(d=1,r=0\), \(\rho=1/2\) and both constant inequalities hold with the exact endpoint present.
- Contribution to target step: It discharges the class inclusion and factor-two hypotheses for the source decomposition lemma.
- Verdict: PASS
- Repair direction: None.

### unit_011: lemma

- Statement fidelity: The unit exports the exact finite essential-SOA lists, source list cap, maximum-leaf witness, and both irreducibility scales required by the old arm.
- Proof validity: Every nonempty restriction is a subclass of \(\bar C\), so the checked decomposition and essential-hypothesis results apply. The scale \(p_{\mathrm o,r}2^{d-t}\) is at least \(p_{\mathrm o,0}\), and the tuple gives \(p_{\mathrm o,0}\ge\max\{n_{\mathrm o},d+1\}\).
- Cited-result and assumption audit: The Lyu decomposition, leaf, and essential-hypothesis statements are restated with current objects, inclusion, scale pairing, and nonempty-class boundaries discharged.
- Rigor checklist: Empty restrictions are never passed to a nonempty-class theorem. The monotonicity from \(q\)- to \(q'\)-irreducibility follows by extending a shorter point sequence and comparing nested restrictions.
- Local adversarial test: Infinite restrictions still yield finite essential lists through the finite decomposition leaf bound; \(t=0,d\), \(r=0,d\), and empty restrictions are covered.
- Contribution to target step: It supplies actual source functions and the irreducibility needed for descent and the empirical contradiction.
- Verdict: PASS
- Repair direction: None.

### unit_012: proposition

- Statement fidelity: The DDim recurrence and score-\(k_{\mathrm o}\) conclusion exactly implement the finite-potential mechanism in the accepted sketch.
- Proof validity: Realizability makes every restriction nonempty. Source inclusion and exact doubling give \(M_{\mathrm o,r+1}\le M_{\mathrm o,r}\); equality would export the same next-stage leaf SOA into every current essential list, contradicting \(q_{\mathrm o,r}<k_{\mathrm o}\). Integer-valued DDim then gives a unit drop.
- Cited-result and assumption audit: The equality clause and DDim-zero support are precisely the checked Lyu interfaces already restated; no mechanism-noise or success event is imported.
- Rigor checklist: If \(M_{\mathrm o,r}=0\), the checked zero-DDim support puts the common realizable target in every list. Starting from \(0\le M_{\mathrm o,0}\le d\), at most \(d\) strict drops force a score-\(k_{\mathrm o}\) stage.
- Local adversarial test: Initial DDim zero, initial positive DDim, \(d=1\), and success only at stage \(d\) all follow the same finite argument.
- Contribution to target step: It produces the source-side common item before AboveThreshold utility is invoked.
- Verdict: PASS
- Repair direction: None.

### unit_013: lemma

- Statement fidelity: The unit charges the old AboveThreshold noise event and proves selection of a legal stage with the exact score margin required by Sparse Sample.
- Proof validity: The Laplace tail and a finite union over at most \(d+1\) noises give \(\beta_{\mathrm{AT,o}}\). A Below report implies \(q<k_{\mathrm o}/2+\tau_{\mathrm{AT,o}}<k_{\mathrm o}\), while the score-\(k_{\mathrm o}\) stage must report Above on the bounded-noise event. The selected Above report yields the lower score bound.
- Cited-result and assumption audit: The source mechanism convention and noise scale are restated, and units 004 and 012 discharge the margin and common-stage premises.
- Rigor checklist: No equality of stopping stages across neighboring inputs is used, and no no-success fallback is treated as a utility output.
- Local adversarial test: Immediate success, all earlier Below reports, selection only at the last stage, and maximally adverse bounded noise all retain (13.2)-(13.3).
- Contribution to target step: It exports a selected list tuple whose best actual score dominates the failure-symbol scale.
- Verdict: PASS
- Repair direction: None.

### unit_014: proposition

- Statement fidelity: The proposition proves actual union-item output, rather than assuming source utility or silently treating the failure symbol as an item.
- Proof validity: The selected item has score at least \(B_{\mathrm o}+\tau_{\mathrm{SS,o}}+2\). Comparing its exponential weight with the failure-symbol weight gives the stated conditional probability, and the definition of \(\tau_{\mathrm{SS,o}}\) gives the exact \(\beta_{\mathrm{SS,o}}/(k_{\mathrm o}L_{\mathrm o}+1)\) value.
- Cited-result and assumption audit: The list cap and selected-stage margin come only from units 011 and 013; the probability calculation is direct from the restated Sparse Sample law.
- Rigor checklist: The finite effective union, positive normalizer, failure symbol, and unused positive slack are all explicit.
- Local adversarial test: A singleton effective union, maximum-size union, and a selected item occurring in one or every block all satisfy the same weight comparison.
- Contribution to target step: It proves the actual-output support needed by the SOA and occurrence-mark units.
- Verdict: PASS
- Repair direction: None.

### unit_015: lemma

- Statement fidelity: The locality statement is all-input and event-free, as required for source privacy, and covers every stage and every transcript-selected legal Sparse Sample call.
- Proof validity: Under a fixed public partition, one changed quotient record affects only one block-local state and list coordinate. Every occurrence count changes by at most one, so the maximum score has sensitivity one in both directions. Conditioning on a fixed first transcript chooses the same stage index for the conditional second kernel and preserves one-list adjacency.
- Cited-result and assumption audit: Only the total deterministic block-local construction in unit 005 is used; realizability and utility events are absent.
- Rigor checklist: Empty lists, sanitizer changes, and different stopping behavior are included, and the proof does not assume neighboring executions have the same realized transcript.
- Local adversarial test: Replacing a record into or out of an empty list, changing the maximizing item, and equal quotient inputs all preserve the sensitivity and one-list bounds.
- Contribution to target step: It discharges the exact adjacency premises of both private mechanisms.
- Verdict: PASS
- Repair direction: None.

### unit_016: proposition

- Statement fidelity: The proposition establishes all-input quotient privacy and transfers it to every raw replace-one pair, with no realizability or good-event condition.
- Proof validity: The calibration in (2.4) makes AboveThreshold \((\varepsilon/4,\delta/2)\)-DP; (C4), the list cap, threshold, and locality make Sparse Sample \((\varepsilon/4,\delta/2)\)-DP. Adaptive composition gives \((\varepsilon/2,\delta)\), which is validly weakened to \((\varepsilon,\delta)\).
- Cited-result and assumption audit: The two Lyu privacy statements and adaptive composition/postprocessing are restated with their current parameters and every hypothesis discharged. Accepted step_002 supplies only equal-or-neighbor raw transport.
- Rigor checklist: Mixing over common data-independent partition randomness is legal, and fallback is terminal postprocessing of the private transcript.
- Local adversarial test: Nonrealizable labels, equal quotient neighbors, different stopping stages, no success, failure-symbol output, and sanitized lists are all covered.
- Contribution to target step: It proves the exact raw privacy mode exported by the old arm.
- Verdict: PASS
- Repair direction: None.

### unit_017: proposition

- Statement fidelity: The unit proves the actual SOA identity, fixed improper-family membership, both irreducibility scales, and the \(\alpha/8\) master empirical certificate on the old core.
- Proof validity: Essentiality supplies a maximum-leaf witness and exact SOA function. The good event bounds every leaf member's master error by less than \(2\gamma_{\mathrm o}\). If the SOA exceeded that error, the SOA-labeled master restriction would be empty, contradicting \(n_{\mathrm o}\)-irreducibility.
- Cited-result and assumption audit: The fixed SOA-family result is restated and used only for membership and Littlestone dimension. The empirical contradiction is rederived rather than taken from the malformed source display or its unsupported amplification sentence.
- Rigor checklist: The low-mean and high-mean branches both apply to every \(g\in\mathcal G\); \(1/(1-\xi_d)\le5/4\) has the correct direction. Improper output is explicitly permitted.
- Local adversarial test: Repeated master points, low global error, high-branch relative control, and a leaf SOA outside \(\bar C\) do not affect the contradiction.
- Contribution to target step: It creates the deterministic empirical certificate consumed by finite producer reconstruction.
- Verdict: PASS
- Repair direction: None.

### unit_018: proposition

- Statement fidelity: The old mark is instantiated from the old transcript and all-stage old lists, projects exactly to the released old law, and is never claimed private as a released pair.
- Proof validity: On actual paths the Sparse Sample support makes the finite occurrence set nonempty; on nonactual paths all mass is assigned to mark zero. The measurable weights are nonnegative and sum to one, integration gives a marked probability kernel, and summation over the finite mark coordinate gives exact projection.
- Cited-result and assumption audit: Accepted step_003 supplies transcript/event measurability and countable promotion; accepted step_004 supplies the finite-mark construction. The premises are checked anew for the old lists rather than borrowing a VC-arm marked law.
- Rigor checklist: Distinct producer blocks, not repeated positions or stages, determine marks. Actual output equal in value to \(\bar c_0\) is distinguished from fallback status.
- Local adversarial test: One occurrence, all occurrences, repeated within-block occurrences, actual \(\bar c_0\), and nonactual fallback all preserve the weight sum and projection.
- Contribution to target step: It provides the analysis-only producer coordinate without changing output, risk, or privacy.
- Verdict: PASS
- Repair direction: None.

### unit_019: lemma

- Statement fidelity: The producer-local candidate union, size cap, complement certificate, and pathwise inclusion are exactly the finite reconstruction interface required by the sketch.
- Proof validity: Each producer's all-stage union depends only on its block and has at most \((d+1)L_{\mathrm o}\) distinct candidates. A positive mark gives pathwise membership. Full-sample error at most \(\alpha/8\) implies complement error at most \(k_{\mathrm o}\alpha/[8(k_{\mathrm o}-1)]\le\alpha/4\).
- Cited-result and assumption audit: Only the locally proved SOA certificate and old marked lift are used; no selected-output independence or uncountable uniform bound is assumed.
- Rigor checklist: The inclusion is established before conditioning on the mark or producer block and retains the population-error condition candidate by candidate.
- Local adversarial test: \(k_{\mathrm o}=2\), duplicate candidates across stages, immediate or last-stage output, and a mark shared by multiple producers all preserve the inclusion.
- Contribution to target step: It reduces adaptive bad-output analysis to a finite family fixed by one producer block.
- Verdict: PASS
- Repair direction: None.

### unit_020: lemma

- Statement fidelity: The unit gives the exact fixed-candidate complement tail under iid realizable sampling and proves the Bernoulli interface (C7) inline rather than invoking an uncited Chernoff theorem.
- Proof validity: Conditioning on the producer block fixes \(h\), while the complement remains \(M=(k_{\mathrm o}-1)m_{\mathrm o}\) independent Bernoulli trials of mean \(p\). Since \(p>\alpha\), the \(\alpha/4\) event is contained in the \(p/4\) event.
- Cited-result and assumption audit: No named Bernoulli Chernoff result is used. Exponential Markov, the Bernoulli mgf, and the scalar logarithmic inequalities are displayed and checked locally.
- Rigor checklist: If \(M=0\) or \(p=0\), both sides of (C7) equal one. For \(M\ge1\) and \(0<p\le1\), \(0<\theta<1\) makes \(\lambda=-\log(1-\theta)>0\) and \(0\le p\theta<1\), so every logarithm is legal. The decreasing exponential reverses the event in the correct direction, and \(\log(1-p\theta)\le-p\theta\) produces a negative exponent.
- Local adversarial test: The derivative \(g'(\theta)=-\log(1-\theta)-\theta\ge0\) follows from \(u'(\theta)=\theta/(1-\theta)\ge0\), so \(\theta+(1-\theta)\log(1-\theta)\ge\theta^2/2\). This remains valid for \(p=1\) and as \(\theta\uparrow1\).
- Contribution to target step: Taking \(\theta=3/4\) gives \(\exp(-9pM/32)\le\exp(-9\alpha M/32)\), exactly the exponent consumed by the PAC ledger.
- Verdict: PASS
- Repair direction: None.

### unit_021: proposition

- Statement fidelity: The proposition proves the unconditional, distribution-free realizable PAC guarantee for the released raw old learner and uses exactly four old-arm confidence shares.
- Proof validity: Equations (21.2)-(21.6) make the holdout exponent dominate \(k_{\mathrm o}(d+1)L_{\mathrm o}/\beta_{\mathrm{gen,o}}\). Summing the pathwise marked inclusion before conditioning permits a finite union over block-local candidates, to which unit 020 applies.
- Cited-result and assumption audit: Accepted iid pushforward and risk transfer are the only dependency claims used at the end. The good, mechanism, mark, SOA, reconstruction, and lower-tail inputs are all local old-arm results.
- Rigor checklist: The analysis never conditions on an adaptive output as though it were independent, never takes an uncountable supremum, and projects away the mark exactly. The four failures sum to \(\beta\).
- Local adversarial test: Countably infinite \(H_C\), repeated candidates, \(k_{\mathrm o}=2\), and outputs occurring in multiple producer lists remain controlled by finite marked multiplicity.
- Contribution to target step: It exports the exact unconditional \((\alpha,\beta)\)-PAC probability mode on raw data.
- Verdict: PASS
- Repair direction: None.

### unit_022: proposition

- Statement fidelity: The explicit-rate proposition proves the accepted \(R_{\mathrm{old}}\) target with \(q_{\mathrm{old}}=6\) and no hidden positive power of \(d\).
- Proof validity: Monotonicity and the feasible witness give \(k_{\mathrm o}=O(d^2\log(1/(\delta\beta))\Lambda^2/\varepsilon)\). The retained ceiling gives \(m_{\mathrm o}=O(d^3\Lambda^4/\alpha)\). Multiplication yields the displayed \(d^5\) first term, and \(\log(64/(\delta\beta))\le4\log(1/(\delta\beta))\) is valid because \(\delta\beta<1/4\).
- Cited-result and assumption audit: Only the locally proved teacher envelope is used. The constants depend solely on fixed universal source/numerical constants and not on any problem, sample, event, or generated object.
- Rigor checklist: The nonnegative second term in \(R_{\mathrm{old}}\) is not dropped from the target; it simply is not needed to upper-bound this construction. All confidence and privacy dependence remains exposed.
- Local adversarial test: \(d=1\), tiny \(\varepsilon\), tiny \(\delta\), and ceiling-dominated block size preserve the same universal \(\Lambda^6R_{\mathrm{old}}\) envelope.
- Contribution to target step: It supplies the complete normalized old-arm rate for downstream comparison.
- Verdict: PASS
- Repair direction: None.

### unit_023: proposition

- Statement fidelity: The boundary proposition preserves every accepted old-arm baseline and keeps finite-parameter validity separate from an optional asymptotic \(N_{\mathrm{old}}\delta\) conclusion.
- Proof validity: Unit 001 gives exact \(d=0\) recovery; direct substitution verifies \(d=1\). The trace/list controls do not depend on \(|C|\), the output space permits improper hypotheses, and multiplying the rate inequality by \(\delta\) proves the stated sufficient schedule implication.
- Cited-result and assumption audit: It assembles only the named local zero, DP, PAC, and rate propositions. It does not claim that the setting's distinct VC-arm schedule implies the old-arm schedule.
- Rigor checklist: Finite and infinite \(C\), \(v=d\), all fallback paths, every ceiling, all four confidence shares, fixed \(0<\delta<1\), and scheduled \(\delta\) are separately addressed.
- Local adversarial test: At \(v=d\) the old dictionary remains exactly \(d^5\); at fixed positive \(\delta\) the kernel/DP/PAC/rate theorem remains valid even when no \(N\delta\to0\) statement is available.
- Contribution to target step: It closes the baseline-reduction and conditional source-scope obligations without weakening the old arm.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the 23-unit map. In particular, the pairwise smoothing monotonicity, variance decrease, convergence to the common mean, endpoint cases, elementary-symmetric limit, and without-replacement mgf are all inside unit_008. The exponential-Markov event direction, Bernoulli mgf, logarithm domain/sign, scalar derivative argument, degenerate cases, and \(\theta=3/4\) specialization are all inside unit_020. Scalar feasibility, trace fixed-point closure, source/current translation, DDim termination, list locality, adaptive composition, SOA contradiction, mark projection, producer conditioning, finite multiplicity, rate elimination, and \(\delta\)-schedule separation each have their own named unit. The proof contains references only to accepted dependency Steps 002-004 and the current Step 015; no VC-arm proof step, event, list, success output, privacy conclusion, PAC conclusion, or rate is used.

## Target Claim Audit

The proof establishes the exact accepted step_015 row. For \(d=0\) it gives the no-data singleton law. For \(d\ge1\) it independently defines and totalizes the old-Lyu quotient procedure, promotes it to the same \(H_C\)-valued quotient and raw kernels, constructs an analysis-only marked lift with exact projection, proves all-input raw \((\varepsilon,\delta)\)-DP, proves an unconditional realizable population-error failure probability at most \(\beta\) uniformly over every \(D,c\), and proves
\[
N_{\mathrm{old}}\le K_{\mathrm{old}}\Lambda^6
R_{\mathrm{old}}(d,\alpha,\beta,\varepsilon,\delta).
\]
All 23 local statements remain present and contribute to this assembly. Quantifiers, output space, raw adjacency, improperness allowance, fixed-sample horizon, population zero-one-risk norm, confidence mode, finite/countable quotient scope, and conditional source scope match the setting. The proof does not take the three-arm minimum or claim a VC-sensitive improvement.

## Explicit Rate Audit

The exposed old-arm variables are \(d,\alpha,\beta,\varepsilon,\delta\); \(v\) enters only through the accepted inequality \(v\le d\) used for the deliberately coarse trace count, and \(|C|\) is absent. The hidden constants and exponent \(6\) are universal and may not depend on the class, domain, distribution, target, sample, partition, decomposition, list, event, transcript, mark, support, or output. The probability mode is all-input raw DP plus unconditional high-probability realizable PAC; the horizon is the fixed sample \(N_{\mathrm{old}}\); the norm is exact decoded population zero-one error. Teacher feasibility, trace closure, finite marked multiplicity, probability conversion, ceiling control, and term absorption are all displayed. The rate exposes the product of a \(d^2\log(1/(\delta\beta))/\varepsilon\) teacher scale and a \(d^3/\alpha\) block scale, hiding only \(\Lambda^6\). Exact \(d=0\), \(d=1\), \(v=d\), finite/infinite-class, improper-output, fixed-\(\delta\), and separately scheduled-\(\delta\) reductions are preserved.

## Notation Surface Audit

The proof classifies \(K_C^{\mathrm{old\text{-}Lyu}}\), its raw pullback, the marked lift, and \(N_{\mathrm{old}}\) as the minimal public-facing outputs. The old scalar dictionary and generated events/lists are appendix-local; the smoothing variables for (C6), Bernoulli tilt variables for (C7), and rate constants are proof-local. Every helper is defined before use and has primitive, accepted-dependency, checked-source, or earlier-local-unit provenance. The newly added smoothing and exponential-Markov notation does not escape its unit or enlarge the theorem interface. No one-off alias hides a boundedness, finiteness, probability, constant-dependence, or rate obligation.

## Target-Step Assembly Audit

The assembly uses theorem-style names and labels for all 23 units. Accepted step_002 supplies only quotient factorization, dimensions, record transport, iid pushforward, and exact risk; accepted step_003 supplies only kernel/event promotion and raw pullback; accepted step_004 supplies only the finite occurrence lift/projection pattern. All old parameters, total paths, traces, tails, good event, source inclusions/lists, common stage, mechanism success, locality, privacy, empirical certificate, old mark, producer reconstruction, Bernoulli lower tail, PAC ledger, rate, and boundary statements are proved locally. Units 008 and 020 now provide the inline derivations needed for (C6) and (C7), so the assembly contains no unverifiable standard-fact interface. These accepted dependencies, checked and restated source results, and the 23 local results jointly imply the exact target without a new dependency, hidden bridge, probability-mode upgrade, baseline weakening, or VC-arm import.

## Review Rationale

ACCEPTED is the smallest sound status. The frozen proof and every binding artifact match their expected SHA-256 identities. A fresh line-by-line audit of all 23 units finds the exact step claim proved under only the four primitive assumptions, accepted Steps 002-004, and locally checked source interfaces. The producer-attempt-2 repairs close both prior citation gaps: (C6) is proved by boundary-complete pairwise max/min smoothing and then instantiated as the without-replacement mgf, while (C7) is proved by sign-correct exponential Markov with all degenerate cases and the exact \(\theta=3/4\) constant. No material local, dependency, sketch-interface, rate, probability, notation, hidden-subclaim, assembly, baseline, or conditional-scope defect remains, so no retry is required.
