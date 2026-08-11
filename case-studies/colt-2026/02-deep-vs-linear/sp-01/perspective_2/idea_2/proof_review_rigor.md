# Rigor Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

None

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Rigor Audit

- Mathematical derivations: PASS. The live assembly proves the exact conditional claim in `setting.md`. The boundary reduction, sampled-label measurability and unseen-bit argument, finite-target averaging, Sauer--Shelah induction, binomial estimate, numerical constant calculation, iid amplification, finite union bound, direct-sum score identity, and final dimension comparison all follow from the stated assumptions and named prior results. In particular, the repaired update in `latex_template/5_appendix.tex` is
  \[
  U(\theta,x,y)=\theta-\eta\nabla^{\mathrm{src}}_\theta
  \ell\!\left(yf_\theta(x)\right),
  \]
  exactly matching the setting and accepted `step_002` source derivation.
- Statement self-containedness: PASS. `1_intro.tex` gives the setting and three numbered assumptions with the stable labels from `setting.md`; `2_preliminary.tex` introduces only the VC and tie-preservation notation needed to read the theorem; and `3_main.tex` states a concise reader-facing theorem under those assumptions. The appendix uses only paper-facing lemma, proposition, and corollary statements with explicit assumption or named-result dependencies. No derived invariant is promoted to an unconditional theorem assumption.
- Main theorem constants and notation: PASS. The public bound is exactly
  \(\operatorname{dc}(\mathcal H)\leq 7TSd\). The numerical constant is explicit, the exposed variables are \(S,T,d\), and the theorem states that there is no hidden dependence on \(n,\mathcal H,L,(n_i),S,\eta,T,\varepsilon,d\), or \(\mathcal P\). All helper quantities \(N,M,v,r\) remain proof-local or appendix-local.
- Derivation-over-notation: PASS. The appendix displays the sigma-fields and update induction, risk identity and tower calculation, Sauer--Shelah restriction decomposition, binomial weighting, ceiling payment, product and union probabilities, and blockwise inner-product expansion. Helper notation does not replace any boundedness, finiteness, probability, constant, or implication proof.
- Explicit-rate contract: PASS. The main result is deterministic, nonasymptotic, fixed-horizon, and exact full-domain tie-resolved representation. Every simplification is displayed, including
  \[
  \frac12\left(1-\frac1{2T}\right)^T\geq\frac14>\varepsilon,
  \qquad
  r\leq 5Tn+2\leq 7TS,
  \qquad
  rd\leq 7TSd.
  \]
  The public polynomial corollary states its separate explicit hypothesis \(d\leq p(S,T)\) and contains the self-contained bridge
  \(7TSp(S,T)-7TSd=7TS(p(S,T)-d)\geq0\). No term, confidence conversion, or parameter dependence is absorbed only in prose.
- Appendix full derivations: PASS. I compared all 17 accepted source local units and all five accepted target-step assemblies against the live 1,102-line appendix. The appendix preserves every theorem-critical definition, displayed equation, conditioning argument, induction and case split, constant calculation, assumption discharge, boundary check, probability conversion, and final assembly implication. Omitted source material is workflow metadata, provenance narration, or duplicate audit prose, not proof-obligation content.
- Quantifiers and constants: PASS. The architecture, step size, and horizon remain fixed before the witness distribution and target in the VC contradiction. The auxiliary random labeling is eliminated by finite selection before universal SGD success is invoked. One law \(\mathcal P\) is fixed before all targets, one tuple is fixed only after simultaneous positive-probability coverage is proved, and only the block index and separator depend on the target. The ceiling residual and all numerical constants are explicitly paid.
- Probability or convergence modes: PASS. Expected SGD risk is used only to derive the deterministic VC ceiling. Per-target probability at least \(1/2\) is amplified under one product law, the complete finite union cost is bounded by \(1/2<1\), and positive probability is converted only to deterministic existence. There is no expectation-to-high-probability, conditional-to-unconditional, pointwise-to-uniform, or finite-horizon-to-all-time upgrade.
- Boundary cases: PASS. The proof separately handles \(\mathcal H=\varnothing\), \(d=0\), \(L=1\), \(T=1\), \(v=0\), \(v=N\), \(n=1\), \(S=n\), \(|\mathcal H|=1\), \(r=1\), repeated samples, and zero aggregate or feature scores. The exact empty-class and zero-dimensional baselines are preserved.
- Hidden subclaims: PASS. No independent lemma is introduced in assembly. The exact learner-information argument, event measurability, finite averaging, combinatorial recursion, probability calculations, and direct-sum closure all appear in named results with proofs. The live TeX contains no theorem-critical external citation, unresolved reference, forbidden workflow scaffold, malformed command fragment, or uninstantiated placeholder; the fresh compile log has no LaTeX error, undefined reference, or undefined citation.

Verdict alignment: `PASS` has `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`.
