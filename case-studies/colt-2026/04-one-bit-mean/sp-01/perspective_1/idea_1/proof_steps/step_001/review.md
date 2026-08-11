# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_1/proof_steps/step_001/proof.md`, SHA-256 `dc22a361441e6cdbc4c54537ca39e3cc38b3071069e3f089d9ad758bb17c379b`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The unit states exactly the first-absolute-moment bridge required by the cited localization theorem, under primitive Assumptions~\(\ref{assump:parameter-domain}\) and \(\ref{assump:moment-class}\). It neither narrows the distribution class nor imports localization as an assumption.
- Proof validity: With \(V=|X-\mu|\), Holder with conjugate exponents \(k\) and \(k/(k-1)\) gives \(\mathbb EV\leq(\mathbb EV^k)^{1/k}\). Substitution of \(\mathbb EV^k\leq\sigma^k\) yields \(\mathbb E|X-\mu|\leq\sigma\). Every equality and inequality in the displayed derivation is valid.
- Cited-result and assumption audit: The proof derives Lyapunov's inequality directly, so it does not rely on an uninstantiated standard result. The only inputs are the primitive conditions \(k>1\) and the central \(k\)-moment inequality; no dependency artifact exists for this step.
- Rigor checklist: Quantifiers and moment mode are preserved uniformly over every \(D\in\mathcal D(k,\lambda,\sigma)\). Finiteness follows from the stated \(k\)-moment bound. The argument remains valid for every fixed \(k>1\), including values arbitrarily close to one, and for degenerate laws.
- Local adversarial test: Equality cases and \(X=\mu\) cause no problem. The proof uses an inequality moment assumption rather than silently replacing it by an exact-moment condition.
- Contribution to target step: This unit discharges the sole source moment hypothesis used by Proposition~\(\ref{prop:step-001-source-localization}\).
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: The proposition matches the accepted row's cited-result wrapper: it instantiates the deterministic non-adaptive interval localizer at \(\eta=\delta/4\), translates each Boolean query into a precommitted Borel membership query, handles both source branches, exports \(|I|\leq100\sigma\) and containment probability at least \(1-\eta\), and does not claim that the source outputs a scalar center.
- Proof validity: Independent inspection of the frozen arXiv:2604.07796v2 archive, SHA-256 `d6ef358108465837ecd4d27b6320ea95f5a0146ef62a14d3104125174d82db45`, confirms Section `sec: two-stage`, Theorem 16 / label `thm: alternative localization`, Appendix `appendix: two-stage`, and Lemma `lem: balanced codebook`. The theorem assumes \(\lambda\geq\sigma\), \(\eta\in(0,1/2)\), \(\mu\in[-\lambda,\lambda]\), iid samples, and \(\mathbb E|X-\mu|\leq\sigma\), and returns a deterministic non-adaptive interval with the stated probability and logarithmic cost. The appendix sets \(h=20\sigma\); uses the zero-query branch when \(2\lambda\leq h\); otherwise sets \(N=\lceil2\lambda/h\rceil\), \(\Delta=2\lambda/N\), and \(\ell=\lceil10000(\log N+\log(1/\eta))\rceil\); uses exactly the recorded half-open final-closed bins and clipped bin map; queries \(Q_t(x)=\mathsf c_{b(x),t}\); decodes by minimum Hamming score; and returns the union of at most five adjacent bins. The submitted definitions of \(B_v\), \(C_v\), \(b\), \(Q_t\), \(\mathcal B_t\), \(H_v\), and \(I\) reproduce that construction.
- Cited-result and assumption audit: Assumption~\(\ref{assump:parameter-domain}\) supplies the parameter and confidence domains, Assumption~\(\ref{assump:moment-class}\) supplies the mean range, Lemma~\(\ref{lem:step-001-first-moment}\) supplies the first moment, and Assumption~\(\ref{assump:iid-independent-randomness}\) supplies fresh iid samples and precommitment. The balanced-code lemma applies because the nontrivial branch has \(N\geq2\) and \(\ell\geq10000\log N\). A deterministic codebook exists independently of \(D\), and its finite clipped-cell one-sets are Borel.
- Rigor checklist: The appendix inequalities \(h/2\leq\Delta\leq h\), \(|I|\leq5\Delta\leq100\sigma\), expected Hamming gap greater than \(0.05\ell\), and \(N\exp(-0.00125\ell)\leq\eta\) are quoted with their correct direction and constants. The source bad event uses \(H_j\leq H_{i^*}\), so it covers all far/safe score ties; choosing the least minimizer is therefore a valid deterministic completion rather than a favorable-tie assumption. The proof keeps the analysis-only heaviest safe anchor distinct from the decoder.
- Local adversarial test: At the exact boundary \(2\lambda=20\sigma\), the source takes the zero-query branch, returns \([-\lambda,\lambda]\), and has width \(20\sigma\). In the strict branch, \(N\geq2\), including the smallest case \(N=2\). The first/last clipped cells reproduce the source convention at \(-\lambda\), \(\lambda\), bin endpoints, and both unbounded tails. Decoder ties and boundary truncation of the five-bin union do not invalidate containment or width.
- Contribution to target step: This unit legally produces the always-defined source interval, its containment event, exact appendix width, branchwise raw sample count, and precommitted one-bit object map. It correctly records that the source does not produce \(c\), a recentered \(k\)-moment, a refinement guarantee, or final \(\epsilon\)-accuracy.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The lemma supplies precisely the interval-to-scalar bridge required by the target row, defines the generated event \(\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}\), and retains the unconditional probability budget \(\delta/4\).
- Proof validity: In both source branches, \(I\) is a nonempty bounded interval. For a half-open decoded interval, \(\inf I\), \(\sup I\), and \(c=(\inf I+\sup I)/2\) remain well-defined, and finite decoded-index dependence makes \(c\) measurable. On \(\{\mu\in I\}\), interval geometry gives \(|c-\mu|\leq(\sup I-\inf I)/2=|I|/2\leq50\sigma\). Thus source containment is a subset of \(\mathcal E_{\rm loc}\), yielding probability at least \(1-\delta/4\).
- Cited-result and assumption audit: The only nonprimitive input is Proposition~\(\ref{prop:step-001-source-localization}\), proved earlier in the same step. The event is a derived conclusion, not an admissibility assumption. Midpoint postprocessing changes neither queries nor sample count.
- Rigor checklist: The argument is unconditional over the localization samples, uses the absolute-value metric required by the setting, and is uniform in \(D\). It does not assert midpoint equality with \(\mu\). The source interval and scalar center remain distinct objects connected only by the displayed inequality.
- Local adversarial test: Half-open intervals, endpoint means, and decoded boundary bins all satisfy the infimum/supremum argument. In the trivial branch, \(c=0\) and \(|c-\mu|\leq\lambda\leq10\sigma\), so the exact branch boundary is stronger than the exported \(50\sigma\) event.
- Contribution to target step: This unit produces the actual public-facing center and localization event consumed downstream, and justifies the universal valid choice \(L_k=50\).
- Verdict: PASS
- Repair direction: None.

### unit_004: claim

- Statement fidelity: The claim gives the exact branchwise appendix count and the target additive logarithmic bound, including the zero-query branch and confidence substitution \(\eta=\delta/4\).
- Proof validity: In the nontrivial branch, \(\rho=\lambda/\sigma>10\), so
  \[
  N=\left\lceil\frac{\rho}{10}\right\rceil
  \leq\frac{\rho}{10}+1\leq\rho,
  \]
  and hence \(\log N\leq\log(\lambda/\sigma)\). Since \(\delta<1/2\), \(\log4\leq2\log(1/\delta)\), giving \(\log(4/\delta)\leq3\log(1/\delta)\). Applying \(\lceil x\rceil\leq x+1\) yields exactly the displayed coefficients \(1,10000,30000\). The trivial cost zero is bounded by the same nonnegative expression.
- Cited-result and assumption audit: The raw formula for \(\ell\) comes from the checked appendix through Proposition~\(\ref{prop:step-001-source-localization}\); every simplification is locally displayed. No downstream rate theorem or refinement sample count is imported.
- Rigor checklist: The hidden constant in the resulting big-O bound is universal, hence satisfies the stronger requirement of independence from \(k,\lambda,\sigma,\delta,D\). The calculation is finite-horizon and deterministic, with no asymptotic or conditional interpretation.
- Local adversarial test: At \(\lambda=\sigma\) and throughout \(2\lambda\leq20\sigma\), the exact cost remains zero. Immediately above the branch boundary, \(\rho>10\) makes both \(N\leq\rho\) and \(N\geq2\) valid. The confidence inequality remains valid as \(\delta\uparrow1/2\).
- Contribution to target step: This unit exports the exact source cost and the required additive \(O(1+\log(\lambda/\sigma)+\log(1/\delta))\) interface.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains outside the four-unit map. The moment bridge is `unit_001`; source identity, codebook applicability, query measurability, clipping/bin conventions, deterministic ties, width, and containment are all inside `unit_002`; the interval-to-midpoint event is `unit_003`; and count simplification is `unit_004`. The balanced-code assertion is an exactly restated and discharged cited lemma, not an uncatalogued local lemma. The target assembly invokes only theorem-style named local results. The diagnostic note about `global_proof.md` is not used as mathematical authority.

## Target Claim Audit

The submitted proof establishes the exact accepted `step_001` claim under only the three listed primitive assumptions and with no dependencies. It preflights the exact v2 source at \(\eta=\delta/4\), produces an always-defined scalar \(c\), proves \(\Pr(\mathcal E_{\rm loc})\geq1-\delta/4\) with \(|c-\mu|\leq50\sigma\) on that event, and proves the additive source cost. Quantifiers remain uniform over the unrestricted moment class. Probability mode is unconditional over the localization block, horizon mode is deterministic fixed horizon, and norm mode is absolute value. The proof does not drift into a recentered-moment, refinement, or final PAC claim.

## Explicit Rate Audit

This is a rate-bearing additive localization step. It declares all exposed local variables \((\lambda,\sigma,\delta,\eta,N,\ell,|I|,50\sigma)\), states that the big-O constant is universal, fixes \(k\) without hiding dependence on any problem parameter, and explicitly states unconditional probability, deterministic fixed-horizon, and absolute-value modes. The displayed inequalities justify every ceiling, confidence substitution, and logarithmic simplification. The zero-query baseline at \(2\lambda\leq20\sigma\), including \(\lambda=\sigma\), is preserved exactly. The omission of \(\epsilon\) is legitimate because this row contributes only the localization term; later steps remain responsible for combining it with refinement into the public \(r_k\) bridge.

## Notation Surface Audit

The notation is consistent with `setting.md` and has explicit provenance. The public-facing surface is minimal: \(c\), \(\mathcal E_{\rm loc}\), and \(N_{\rm loc}\). The source interval, bin/code/Hamming objects, and exact source constants are correctly classified as appendix-local, while \(V,\eta,\rho,i,S,i^*\) and the containment event are proof-local. No helper alias hides a boundedness, finiteness, parameter-dependence, or source-applicability obligation. The source interval is not silently conflated with the exported scalar center.

## Target-Step Assembly Audit

Lemma~\(\ref{lem:step-001-first-moment}\) discharges the source moment hypothesis; Proposition~\(\ref{prop:step-001-source-localization}\) supplies the legal precommitted source interval with width and containment; Lemma~\(\ref{lem:step-001-midpoint}\) converts that exact interval to the generated scalar event; and Claim~\(\ref{claim:step-001-cost}\) supplies the branchwise and simplified counts. These named results jointly imply every component of the target row. The assembly introduces no new lemma, assumption, probability conversion, or output and uses no bare unit ID as mathematical authority.

## Review Rationale

Every source hypothesis, convention, and conclusion used by the step matches the frozen v2 theorem and appendix, including the interval-only non-output boundary, exact zero-query/code branches, branch boundary, bins, clipping, Hamming ties, constants, midpoint residual, and sample count. The four local units are self-contained, correctly ordered, and sufficient for the unchanged target interface. No producer rerun is required, so `None` is the smallest retry target.
