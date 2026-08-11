# Technical Survey

## Current Idea Branch

- Perspective: `perspective_3`
- Current idea: `idea_1`, the coding-localization plus precommitted padded-dyadic Rademacher ring multiplexer.
- Setting / goal summary: For every fixed known $k>1$, known $\lambda\geq\sigma>0$, $0<\epsilon\leq c_k\sigma$, and $\delta\in(0,1/2)$, prove the exact unconditional fixed-horizon PAC theorem over the unrestricted class $\mathcal D(k,\lambda,\sigma)$. Every localization and refinement query is fixed before any message, each sample transmits one bit, and the total sample size is at most $C_k r_k(\lambda,\sigma,\epsilon,\delta)$ in all three $k$-regimes.

## Candidate Frameworks

### Framework 1: Coding localization plus padded-ring Rademacher multiplexing

- Source papers: Ivan Lau and Jonathan Scarlett, *Order-Optimal Sequential 1-Bit Mean Estimation in General Tail Regimes*, arXiv:2604.07796v2, Theorem 16 (source label `thm: alternative localization`) and Appendix `appendix: two-stage`; Pedro Abdalla and Junren Chen, *Robust Mean Estimation under Quantization*, arXiv:2601.07074; Gabor Lugosi and Shahar Mendelson, *Sub-Gaussian Mean Estimators*, DOI:10.1214/16-AOS1440.
- Applicability to current branch: The first source gives exactly the precommitted coding-localization block needed here. Direct inspection of the v2 TeX source dated May 25, 2026 verifies that Theorem 16 assumes $\mathbb E|X-\mu|\leq\sigma$, uses deterministic non-adaptive measurable one-bit bin-code queries, returns an interval containing $\mu$ with probability $1-\eta$, and costs $O(\log(\lambda/\sigma)+\log(1/\eta))$ samples. Its appendix gives the explicit interval bound $|I|\leq100\sigma$. The current scalar $c$ is therefore the deterministic midpoint wrapper, giving $|c-\mu|\leq50\sigma$; the source does not itself output a scalar. The bounded-dither and median-of-means sources provide technique lineage only. The ring expectation, alias cancellation, activation ledger, and variance transfer are current-notation direct derivations from `setting.md`, so no external theorem is being asked to supply those novel interfaces.
- Proof roadmap:
  1. Goal: instantiate arXiv:2604.07796v2, Theorem 16, apply the midpoint wrapper, and derive the selected-cell core and recentered $k$-moment. Dependencies: none. Assumptions: `assump:parameter-domain`, `assump:moment-class`, `assump:independent-samples`, `assump:precommitted-protocol`.
  2. Goal: prove padded-grid nesting, the exact disjoint ring telescope, outer containment, Borel boundedness, and the target/non-target activation geometry. Dependencies: item 1 only for the recentered-moment interface. Assumptions: `assump:parameter-domain`, `assump:precommitted-protocol`.
  3. Goal: prove the two uniform-dither identities, target-mask cancellation of every non-target ring, the exact conditional target expectation, and the all-ring pointwise second-moment ledger. Dependencies: items 1-2. Assumptions: `assump:parameter-domain`, `assump:moment-class`, `assump:independent-samples`, `assump:precommitted-protocol`.
  4. Goal: integrate the ledger, retain the exact $Z_S$ dependence (especially one, not two, level factors at $k=2$), control the outer bias, apply fixed median-of-means, and assemble protocol legality, confidence, ceilings, and the three public rates. Dependencies: items 1-3. Assumptions: `assump:parameter-domain`, `assump:moment-class`, `assump:independent-samples`, `assump:precommitted-protocol`.
- Key lemmas / ingredients: source interval-to-midpoint localization wrapper; Lyapunov recentering; half-open dyadic ancestor arithmetic; four-color disjointness; $\mathbb E_U\Delta Y=f/2$ and $\mathbb E_U(\Delta Y)^2=|f|/2$; independent Rademacher orthogonality; exact coordinate-plus-mass identity $(x-m_s)+(m_s-m_0)=x-m_0$; target/non-target activation implication $h_s\leq2|x-m_0|$; geometric charge $\sum h_s^k\lesssim_k|x-m_0|^k$; conditional Chebyshev and Hoeffding amplification.
- Main transfer challenges: The localization source returns an interval rather than the scalar consumed by the path; all same-color non-target rings contribute to the second moment even though their means cancel; and the public rate requires exact handling of $Z_S$, block-size ceilings, localization confidence cost, and unconditional probability conversion. A target-only variance calculation would be invalid, and a per-level moment bound at $k=2$ would risk an erroneous second logarithm.
- Potential repair techniques and supporting references:
  - Technique: expose the interval $I\mapsto c=\operatorname{mid}(I)\mapsto m_0$ residual chain before any refinement claim.
  - Supporting reference: arXiv:2604.07796v2, Theorem 16 and Appendix `appendix: two-stage`.
  - Why it may help: it discharges source convention and object-target compatibility, including the source's known interval-valued non-output boundary.
  - Technique: charge every retained target or alias activation pointwise before integrating.
  - Supporting reference: the definitions in `perspective_3/idea_1/setting.md` and the three verification examples in `perspective_3/idea_1/idea.md`.
  - Why it may help: four-color spacing gives the non-target distance bound, child-padding subtraction gives the target distance bound, and dyadic summation then controls all aliases by one $k$-moment.
  - Technique: prove the median guarantee directly from conditional Chebyshev plus Hoeffding.
  - Supporting reference: Lugosi and Mendelson, DOI:10.1214/16-AOS1440, for median-of-means lineage.
  - Why it may help: the direct current-notation proof needs only the variance output and preserves the exact fixed-horizon $\log(1/\delta)$ dependence without an unverified citation wrapper.
- Disposition: `selected`
- Branch notes: This framework preserves both parent lineages while assigning the novel claim only to direct branch-local geometry and moment derivations. The verified localization source is used only for localization; its location-dependent refinement is not imported. No theorem-critical ring property is inferred from the broad framework name.

### Framework 2: Use the source two-stage refinement after coding localization

- Source papers: Ivan Lau and Jonathan Scarlett, *Order-Optimal Sequential 1-Bit Mean Estimation in General Tail Regimes*, arXiv:2604.07796v2, Section 4.3 and the corollary following Theorem 16.
- Applicability to current branch: It has the desired three-regime rate, but its refinement queries are chosen after the localization interval is decoded. This changes the prescribed zero-transition procedure and violates `assump:precommitted-protocol`.
- Proof roadmap:
  1. Goal: run the non-adaptive coding localization. Dependencies: none. Assumptions: `assump:parameter-domain`, `assump:moment-class`, `assump:independent-samples`, `assump:precommitted-protocol`.
  2. Goal: decode its interval. Dependencies: item 1. Assumptions: the localization output generated by item 1.
  3. Goal: select the source's location-dependent refinement queries. Dependencies: item 2. Assumptions: the decoded interval from item 2 and the source refinement hypotheses; this item conflicts with `assump:precommitted-protocol`.
- Key lemmas / ingredients: coding localization, location-dependent geometric-grid refinement, variance-aware allocation, and median-of-means.
- Main transfer challenges: The third item is an adaptive transition, so decoder-side relabeling cannot make the query transcript precommitted.
- Potential repair techniques and supporting references:
  - Technique: replace the source refinement by the selected padded-ring multiplexer.
  - Supporting reference: `perspective_3/idea_1/idea.md`.
  - Why it may help: only the decoder selects a path; no query depends on the decoded interval.
- Disposition: `rejected`
- Branch notes: Rejected at the algorithm/theorem-contract level. It remains the benchmark and the source of the retained localization component.

### Framework 3: One fixed-range dithered quantizer

- Source papers: Pedro Abdalla and Junren Chen, *Robust Mean Estimation under Quantization*, arXiv:2601.07074, Theorem 3.1.
- Applicability to current branch: It is fully non-adaptive and supplies bounded uniform-dither lineage, but one fixed range must cover both location uncertainty and the unrestricted tail. The resulting range-dependent variance or clipping bias does not yield logarithmic $\lambda/\sigma$ dependence or the target three-regime rates.
- Proof roadmap:
  1. Goal: choose a global clipping/dither range. Dependencies: none. Assumptions: `assump:parameter-domain`, `assump:moment-class`.
  2. Goal: estimate the clipped mean from one-bit dithered samples. Dependencies: item 1. Assumptions: `assump:independent-samples`, `assump:precommitted-protocol`, and the range from item 1.
  3. Goal: balance clipping bias and range-dependent variance. Dependencies: items 1-2. Assumptions: `assump:moment-class` and the estimator output from item 2.
- Key lemmas / ingredients: uniform dithering, clipping bias, and robust aggregation.
- Main transfer challenges: No target-compatible fixed range simultaneously removes polynomial $\lambda$ dependence and controls finite-$k$ tail bias at the required refinement variance.
- Potential repair techniques and supporting references:
  - Technique: distribute dynamic range over the padded dyadic levels with $p_s\propto h_s^{2-k}$.
  - Supporting reference: `perspective_3/idea_1/idea.md`.
  - Why it may help: the resulting importance weight is charged only at scales geometrically comparable with the observed residual.
- Disposition: `rejected`
- Branch notes: Retained only as dither technique lineage; it is not authority for a theorem-critical current-ring conclusion.
